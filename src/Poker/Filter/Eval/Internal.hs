{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Poker.Filter.Eval.Internal where

import Control.Applicative ((<|>), empty)
import Control.Lens (_Just)
import qualified Control.Lens as L
import Control.Lens.At (at)
import Control.Lens.Combinators (_head, non, preuse, to, use, view, zoom)
import Control.Lens.Getter ((^.))
import Control.Lens.Operators ((.=))
import Control.Monad.Except (throwError)
import qualified Control.Monad.State as S
import Control.Monad.Trans.Except (ExceptT (..), runExceptT)
import Control.Monad.Trans.Free (hoistFreeT, iterT)
import Control.Comonad.Trans.Cofree (runCofree, CofreeF(..))
import qualified Control.Comonad.Cofree as Cofree
import Control.Monad.Writer.Strict
    ( MonadTrans(lift), (>=>) )
import Data.Functor.Foldable
  ( Base,
    Recursive,
    cata,
  )
import qualified Data.Map as Map
import Poker.Base
    ( ActionIx,
      Player(_playerHolding),
      Action(..),
      DealerAction,
      PlayerAction(PlayerAction, isHero, action),
      Seat,
      IsHero,
      Position,
      playerHolding,
      stack,
      inIndex,
      atPosition )
import Poker.Filter.Eval.AST.Base
    (unK, K (K), Anned_, Annotation, Anned,  Var(V, _var),
      Decision(Refuted, Proved),
      type (:~:)(Refl),
      FilterPred,
      QVal(..),
      SingQVal(SFun, SDouble, SString, SPosition, SIx, SIsHero, SAction,
               SBool, SQuery),
      (%~),
      Stmt,
      Prog(Prog),
      StmtF(Raw, Bind, Where, Let),
      Expr,
      ExprF(..),
      Lit(..) )
import Poker.Filter.Eval.Lib ( queryEnv )
import Poker.Filter.Eval.Query
  ( Query,
    QueryF (..),
  )
import Poker.Filter.Eval.Types
    (EvalErr(FailErr, EnvLookupErr), EvalQuery, EvalEnv )
import Poker.Game.Bovada
    ( EvalState(EvalState),
      GameErrorBundle(GameErrorBundle),
      GameError(CustomError, NoPlayersInQueue, PlayerNotFound,
                SeatNotFound),
      GameState,
      accRanges,
      handState,
      nextActions,
      playerMap,
      potSize,
      seatMap,
      stateBoard,
      toActQueue,
      BovadaGame,
      emulateAction )
import Polysemy ( embed, runM, Embed, Members, Sem, Member )
import Polysemy.Error ( runError, throw, Error )
import Polysemy.Fail ( failToError, Fail )
import Polysemy.State ( evalState, get, modify, State )
import Prelude hiding (pred)
import Data.Functor ((<&>))

assign :: Member (State EvalEnv) r => String -> QVal -> Sem r ()
assign varName = modify . Map.insert (V varName)

evalLit :: Lit -> QVal
evalLit = \case
  NumL doub -> Val SDouble doub
  BoolL bool -> Val SBool bool
  StringL str -> Val SString str
  PosL pos -> Val SPosition pos
  IxL ix -> Val SIx ix

getPred :: QVal -> Maybe FilterPred
getPred = \case
  Val SPosition v -> Just (pred v)
  Val SIx ix -> Just (pred ix)
  Val SIsHero v -> Just $ pred v
  _ -> Nothing

runQuery :: EvalQuery
              -> [Action]
              -> GameState
              -> [Either GameErrorBundle (Either EvalErr (), EvalState)]
runQuery = execSem compileQuery

-- execSem ::
--   ( t ->
--     Sem '[Fail, Error EvalErr, State EvalEnv, Embed Query] a
--   ) ->
--   t ->
--   [Action] ->
--   GameState ->
--   [(Either EvalErr a, EvalState)]
execSem ::
  (t -> Sem '[State EvalEnv, Fail, Error EvalErr, Embed Query] a) ->
  t ->
  [Action] ->
  GameState ->
  [Either GameErrorBundle (Either EvalErr a, EvalState)]
execSem handler queryExpr acts gameState = runStatefulQuery state (runEval $ handler queryExpr)
  where
    state :: EvalState
    state = EvalState acts Map.empty gameState

-- runStatefulQuery ::
--   EvalState ->
--   GameState ->
--   Query a ->
--   [Either GameErrorBundle (a, EvalState)]
runStatefulQuery ::
  EvalState ->
  Query a ->
  [Either GameErrorBundle (a, EvalState)]
runStatefulQuery state =
  runExceptT
    . flip S.runStateT state
    . iterT alg
    . hoistFreeT hoist
  where
    hoist :: [a] -> (S.StateT EvalState (ExceptT GameErrorBundle [])) a
    hoist = lift . lift
    alg :: QueryF ((S.StateT EvalState (ExceptT GameErrorBundle [])) a) -> (S.StateT EvalState (ExceptT GameErrorBundle [])) a
    alg (Next ct) = do
      as <- use nextActions
      nextPA <- zoom handState $ processUntilNextPAct as
      case nextPA of
        Just (nextPa, nextActions') -> do
          nextActions .= nextActions'
          ct nextPa
        Nothing -> hoist empty
    alg (NextDeal ct) = do
      as <- use nextActions
      nextDA <- zoom handState $ processUntilNextDealAct as
      case nextDA of
        Just (nextDa, nextActions') -> do
          nextActions .= nextActions'
          ct nextDa
        Nothing -> hoist empty
    alg Stop = hoist empty
    alg (GetPotSize cont) =
      cont =<< use (handState . potSize)
    alg (GetStack pos cont) = do
      seatNumMay <- use (handState . seatMap . at pos)
      seatNum <- maybe (throwWithState PlayerNotFound) pure seatNumMay
      stackMay <- preuse (handState . playerMap . at seatNum . _Just . stack)
      playerStack <- maybe (throwWithState PlayerNotFound) pure stackMay
      cont playerStack
    alg (GetNextToAct cont) =
      cont =<< maybe (throwWithState NoPlayersInQueue) pure
        =<< preuse (handState . toActQueue . _head)
    alg (GetHolding pos cont) = do
      holdingMay <- preuse (handState.to (atPosition pos)._Just.playerHolding._Just)
      cont =<< maybe (throwWithState PlayerNotFound) pure holdingMay
    alg (Board cont) = cont =<< use (handState . stateBoard)
    alg (GetState ct) = use handState >>= ct
    alg (Accumulate rangeName (PlayerAction pos act _) cont) = do
      seatNumMay <- use (handState . seatMap . at pos)
      seatNum <- maybe seatNotFoundError pure seatNumMay
      seatPlayerMay <- use (handState . playerMap . at seatNum)
      let playerHoldingMay = _playerHolding =<< seatPlayerMay
      holding <- maybe holdingNotFoundError pure playerHoldingMay
      accRanges . at rangeName
        . non Map.empty
        . at holding
        . non []
        L.%= (act :)
      cont
      where
        seatNotFoundError = throwWithState $ SeatNotFound pos
        holdingNotFoundError = throwWithState $ CustomError "Holding not found error"
    alg _ = error "incomplete alg"
    atPosition :: Position -> GameState -> Maybe Player
    atPosition pos state_ = do
      playerSeat :: Seat <- state_ ^. seatMap . at pos
      player :: Player <- state_ ^. playerMap . at playerSeat
      pure player
    throwWithState err = throwError =<< GameErrorBundle err <$> use handState
    processUntilNextDealAct :: BovadaGame m => [Action] -> m (Maybe (DealerAction, [Action]))
    processUntilNextDealAct [] = pure Nothing
    processUntilNextDealAct (a : as) = do
      emulateAction a
      case a of
        MkPlayerAction _ -> pure Nothing
        MkDealerAction da -> pure $ Just (da, as)
        MkTableAction _ -> processUntilNextDealAct as
    processUntilNextPAct :: BovadaGame m => [Action] -> m (Maybe (PlayerAction, [Action]))
    processUntilNextPAct [] = pure Nothing
    processUntilNextPAct (a : as) = do
      emulateAction a
      case a of
        MkPlayerAction pa -> pure $ Just (pa, as)
        MkDealerAction _ -> processUntilNextPAct as -- Nothing
        MkTableAction _ -> processUntilNextPAct as

runEval ::
  -- Sem [Fail, State EvalEnv, Embed Query, Error EvalErr] a ->
  Sem [State EvalEnv, Fail, Error EvalErr, Embed Query] a ->
  Query (Either EvalErr a)
runEval =
  runM
    . runError
    . failToError FailErr
    . evalState queryEnv

unwrapQuery :: Sem '[Embed Query] a -> Query a
unwrapQuery = runM

evalStmts ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  [Anned_ (StmtF (Anned_ Var) (Anned ExprF))] ->
  Sem r ()
evalStmts [] = pure ()
evalStmts (x : xs) =
    let _ann Cofree.:< (K stmt) = x in
    case stmt of
    Bind varName mExpr -> do
      Val (SQuery mTy) mon <- compileExpr mExpr
      val <- (Val mTy <$> embed mon)
      assign (getVar varName) val
      evalStmts xs
    Where expr -> do
      Val SBool bool <- compileExpr expr
      if bool then evalStmts xs else pure ()
    Let var bodyExpr -> do
      compileExpr bodyExpr >>= \case
        Val (SQuery singleton) val ->
          assign (getVar var) . Val singleton =<< embed val
        Val other val -> assign (getVar var) $ Val other val
      evalStmts xs
    Raw expr -> compileExpr expr >>= \case
      Val (SQuery _) q -> embed q >> evalStmts xs -- Val mTy <$> embed q
      _ -> throw $ FailErr "Evaluated bad Raw statement"
  where
    getVar :: Anned_ Var -> String
    getVar = _var . unK . Cofree.unwrap

compileQuery ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  EvalQuery ->
  Sem r ()
compileQuery (_ Cofree.:< (K (Prog quals))) = evalStmts quals

compileExpr ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  Anned ExprF ->
  Sem r QVal
compileExpr = cataM evalAlg
  where
    evalAlg ::
      Members '[Embed Query, State EvalEnv, Error EvalErr] r =>
      Base (Anned ExprF) QVal ->
      Sem r QVal
    evalAlg (ann :< children) = case children of
      IsF val
        | let Just predFun = getPred val ->
          pure $ Val (SAction `SFun` SBool) predFun
      LitF lit -> pure $ evalLit lit
      VarF var -> do
        -- state <- get @EvalEnv -- :: Member (State EvalEnv) r => Sem r EvalEnv
        -- let varVal = view (at var) state
        varVal :: Maybe QVal <- view (at var) <$> (get @EvalEnv) -- :: Member (State EvalEnv) r => Sem r EvalEnv
        maybe (couldNotFindVarErr ann var) return varVal
      AppF fun arg -> pure $ applyFun fun arg
      AndF (Val SBool left) (Val SBool right) -> pure . Val SBool $ left && right
      OrF (Val (SQuery leftTy) left) (Val (SQuery rightTy) right) ->
        case leftTy %~ rightTy of
          Proved Refl -> (pure $ Val (SQuery leftTy) (left <|> right))
          Refuted _ -> error "type mismatch in or application"
      ParenF expr -> pure expr
      other -> error $ "unmatchable error node: " ++ show other
    couldNotFindVarErr :: Member (Error EvalErr) r => Annotation -> Var -> Sem r a
    couldNotFindVarErr ann v = throw @EvalErr $ EnvLookupErr v ann
    cataM ::
      (Traversable (Base t), Monad m, Recursive t) =>
      (Base t c -> m c) ->
      t ->
      m c
    cataM = cata . (sequence >=>)

applyFun :: QVal -> QVal -> QVal
applyFun (Val (SFun singArg singRes) funVal) (Val valSing valArg) =
  case singArg %~ valSing of
    Proved Refl -> Val singRes (funVal valArg)
    Refuted _ ->
      error $
        "type mismatch in function application:\n\
        \   expected: "
          ++ show singArg
          ++ "\n\
             \   but instead found: "
          ++ show valSing
applyFun first second =
  error $
    "bad types in function application:\n\
    \    fun type: "
      ++ show first
      ++ "\n\
         \    arg type: "
      ++ show second

-- | A class for those values that can be converted to a predicate
-- on player actions.
class Predicate a where
  pred :: a -> (PlayerAction -> Bool)

instance Predicate Position where
  pred = atPosition

instance Predicate (PlayerAction -> Bool) where
  pred = id

instance Predicate ActionIx where
  pred ix = inIndex ix . action

instance Predicate IsHero where
  pred ih = (ih ==) . isHero
