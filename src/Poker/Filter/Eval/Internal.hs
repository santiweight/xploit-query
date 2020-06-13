{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Internal where

import Control.Applicative ((<|>))
import Control.Lens.At (at)
import Control.Lens.Combinators (use, view)
import Control.Lens.Operators ((.=))
import qualified Control.Lens.Operators as L
import Control.Lens.TH (makeLenses)
import qualified Control.Monad.State as S
import Control.Monad.Trans.Free (hoistFreeT, iterT)
import Control.Monad.Trans.Reader (ReaderT, runReaderT)
import Control.Monad.Writer.Strict
import Data.Functor.Foldable
  ( Base,
    Recursive,
    cata,
  )
import qualified Data.Map as Map
import Poker.Base (Action (..), ActionIx (..), IsHero (..), Player (..), PlayerAction (..), Position, atPosition, inIndex)
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Lib
import Poker.Filter.Eval.Query
  ( Query,
    QueryF (..),
  )
import Poker.Filter.Eval.Types
import Poker.Game.Bovada
import Poker.Game.Internal (playerMap, seatMap)
import Polysemy
import Polysemy.Error
import Polysemy.Fail
import Polysemy.State
import Prelude hiding (pred)

data EvalState
  = EvalState
      { _futureActions :: [Action],
        _accRanges :: ActionRange,
        _handState :: GameState
      }

makeLenses 'EvalState

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

execSem ::
  ( t ->
    Sem '[Fail, Error EvalErr, State EvalEnv, Embed Query] a
  ) ->
  t ->
  [Action] ->
  GameState ->
  [(Either EvalErr a, EvalState)]
execSem handler queryExpr acts gameState = runStatefulQuery state gameState (runEval $ handler queryExpr)
  where
    state :: EvalState
    state = EvalState acts Map.empty gameState

runStatefulQuery ::
  EvalState ->
  GameState ->
  Query a ->
  [(a, EvalState)]
runStatefulQuery state gameState =
  flip S.runStateT state
    . flip runReaderT gameState
    . iterT alg
    . hoistFreeT hoist
  where
    hoist :: [a] -> ReaderT GameState (S.StateT EvalState []) a
    hoist = lift . lift
    -- hoist [] = lift . lift $ []
    -- hoist xs = lift . lift $ xs
    alg :: QueryF (ReaderT GameState (S.StateT EvalState []) a) -> ReaderT GameState (S.StateT EvalState []) a
    alg (Next ct) = do
      getNextAction <$> use futureActions >>= \case
        Just (nextPa, futureActions') -> do
          futureActions .= futureActions'
          ct $ nextPa
        Nothing -> mzero
    alg (Stop _) = mzero
    alg (Accumulate _ accAct cont) = do
      seatNum <- maybe seatNotFoundError id <$> view (seatMap . at (position accAct))
      -- playerMay :: Maybe Player <- view (playerMap . at seatNum)
      -- playerMay <- view (playerMap . at seatNum)
      playerHo <- (_playerHolding =<<) <$> view (playerMap . at seatNum)
      let holding = maybe holdingNotFoundError id playerHo
      (accRanges . at holding) L.%= Just . maybe [action accAct] (action accAct :)
      cont
      where
        seatNotFoundError = error "Illegal State: act taken by non-existent player"
        holdingNotFoundError = error "Illegal State: holding not found for acting player"
    alg _ = error ""
    getNextAction :: [Action] -> Maybe (PlayerAction, [Action])
    getNextAction [] = Nothing
    getNextAction (x : xs) = case x of
      MkPlayerAction pa -> Just (pa, xs)
      MkDealerAction _ -> getNextAction xs -- Nothing
      MkTableAction _ -> getNextAction xs

runEval ::
  Sem [Fail, Error EvalErr, State EvalEnv, Embed Query] a ->
  Query (Either EvalErr a)
runEval =
  unwrapQuery
    . evalState queryEnv
    . runError
    . failToEmbed @Query

unwrapQuery :: Sem '[Embed Query] a -> Query a
unwrapQuery = runM

evalStmts ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  [Stmt] ->
  Sem r ()
evalStmts [] = pure ()
evalStmts (x : xs) = case x of
  Bind varName mExpr -> do
    Val (SQuery mTy) mon <- compileExpr mExpr
    val <- (Val mTy <$> embed mon)
    assign (_var varName) val
    evalStmts xs
  Where expr -> do
    Val SBool bool <- compileExpr expr
    if bool then evalStmts xs else pure ()
  Let var bodyExpr -> do
    modify . Map.insert var =<< compileExpr bodyExpr
    evalStmts xs
  Raw expr -> compileExpr expr >>= \case
    Val (SQuery _) q -> embed q >> evalStmts xs -- Val mTy <$> embed q
    _ -> throw EvalErr

compileQuery ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  EvalQuery ->
  Sem r ()
compileQuery (Prog quals) = evalStmts quals

compileExpr ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  Expr ->
  Sem r QVal
compileExpr = cataM evalAlg
  where
    evalAlg ::
      Members '[Embed Query, State EvalEnv, Error EvalErr] r =>
      ExprF QVal ->
      Sem r QVal
    evalAlg = \case
      IsF val
        | let Just predFun = getPred val ->
          pure $ Val (SAction `SFun` SBool) predFun
      LitF lit -> pure $ evalLit lit
      VarF var -> do
        state <- get @EvalEnv -- :: Member (State EvalEnv) r => Sem r EvalEnv
        let varVal = view (at var) state
        maybe (throw EvalErr) return varVal
      AppF fun arg -> pure $ applyFun fun arg
      AndF (Val SBool left) (Val SBool right) -> pure . Val SBool $ left && right
      OrF (Val (SQuery leftTy) left) (Val (SQuery rightTy) right) ->
        case leftTy %~ rightTy of
          Proved Refl -> (pure $ Val (SQuery leftTy) (left <|> right))
          Refuted _ -> error "type mismatch in or application"
      ParenF expr -> pure expr
      other -> error $ "unmatchable error node: " ++ show other
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
