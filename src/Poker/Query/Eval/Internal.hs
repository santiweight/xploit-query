{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE UndecidableInstances #-}

{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Query.Eval.Internal where
import           Data.Functor.Foldable          ( Recursive(..)

                                                , cata
                                                )

import           Control.Applicative            ( (<|>)
                                                , empty
                                                )
import           Control.Lens                   ( _Just )
import qualified Control.Lens                  as L
import           Control.Lens.At                ( at )
import           Control.Lens.Combinators       ( _head
                                                , non

                                                )
import           Control.Lens.Getter            ( (^.) )
import qualified Control.Monad.State           as S
import           Control.Monad.Writer.Strict    ( (>=>)
                                                , First
                                                )
import qualified Data.Map                      as Map
import           Poker.Query.Eval.AST.Base     ( (%~)
                                                , type (:~:)(Refl)
                                                , Decision(Proved, Refuted)
                                                , Expr
                                                , ExprF(..)
                                                , FilterPred
                                                , Lit(..)
                                                , Prog(Prog)
                                                , QVal(..)
                                                , SingQVal
                                                  ( SAction
                                                  , SBool
                                                  , SDouble
                                                  , SFun

                                                  , SIx
                                                  , SPosition
                                                  , SQuery
                                                  , SString
                                                  )
                                                , Stmt
                                                , StmtF(Bind, Let, Raw, Where)
                                                , Var(V, _var)
                                                )
import           Poker.Query.Eval.Query        ( Query(..) )
import           Poker.Query.Eval.Types        ( EvalEnv
                                                , EvalErr(FailErr)
                                                , EvalQuery
                                                )
import           Polysemy                       ( Member
                                                , MemberWithError
                                                , Members
                                                , Sem
                                                , interpret
                                                )
import qualified Polysemy                      as Poly
import           Polysemy.Error                 ( Error
                                                , fromEither
                                                , runError
                                                , throw
                                                )
import           Polysemy.Fail                  ( Fail
                                                , failToError
                                                )
import qualified Polysemy.NonDet               as Poly

import qualified Polysemy.State                as Poly
import           Polysemy.State                 ( State
                                                , get
                                                , gets
                                                , modify
                                                , put
                                                )
import           Prelude                 hiding ( pred )
import           Data.Tuple                     ( swap )
import           Poker.Query.Eval.Lib
import Poker
import Poker.Game.Types
import Poker.Game.Emulate
import Data.Text.Prettyprint.Doc
import Control.Monad.State.Lazy (StateT)
import Data.Maybe (fromJust)

type GameConstraints g = (Pretty g, IsBet g, Show g)

type Constraints g r
  = ( Members '[Fail, State (EvalState g), Error (GameError g), Error EvalErr, Poly.NonDet] r
    , GameConstraints g
    )

type TreeQuery b a = Sem (State (EvalEnv b (SemTypes b)) : SemTypes b) a

type SemTypes g
  = '[Query g, Fail, Error EvalErr, State (EvalState g), Error (GameError g), Poly.NonDet]

runQuerySem
  :: GameConstraints g
  => Sem (State (EvalEnv g (SemTypes g)) ': SemTypes g) a
  -> EvalState g
  -> [Either (GameError g) (Either EvalErr a, EvalState g)]
runQuerySem query evalState =
  Poly.run
    . Poly.runNonDet @[]
    . runError
    . fmap swap
    . Poly.runState evalState
    . runError
    . failToError FailErr
    . runQuery
    . Poly.evalState
        (queryEnv :: IsBet g
          => EvalEnv
               g
               '[Query g, Fail, Error EvalErr, State (EvalState g), Error (GameError g), Poly.NonDet]
        )
    $ query -- Poly.runState evalState . failToError FailErr . runQuery @g @r $ query

assign :: Member (State (EvalEnv g r1)) r2 => String -> QVal g r1 -> Sem r2 ()
assign varName = modify . Map.insert (V varName)

evalLit :: Lit g -> QVal g r
evalLit = \case
  NumL    doub -> Val SDouble doub
  BoolL   bool -> Val SBool bool
  StringL str  -> Val SString str
  PosL    pos  -> Val SPosition pos
  IxL     ix   -> Val SIx ix

getPred :: forall g r. IsBet g => QVal g r -> Maybe (FilterPred g)
getPred = \case
  Val SPosition v  -> Just (predicate @g v)
  Val SIx       ix -> Just (predicate ix)
  -- Val SIsHero   v  -> Just $ pred v
  _                -> Nothing

runQuery :: forall g r a . Constraints g r => Sem (Query g ': r) a -> Sem r a
runQuery = interpret $ \case
  Next -> do
    as <- view @(EvalState g) nextActions
    processUntilNextPAct as >>= \case
      Nothing                     -> empty
      Just (nextPA, nextActions') -> do
        (%=) @(EvalState g) @r nextActions (const nextActions')
        pure nextPA
  -- NextThat ix -> do
  --   as <- view @(EvalState g) nextActions
  --   processUntilNextPAct as >>= \case
  --     Nothing                     -> empty
  --     Just (nextPA, nextActions') -> do
  --       guard
  --       (%=) @(EvalState g) @r nextActions (const nextActions')
  --       pure nextPA
  NextDeal -> do
    as     <- view @(EvalState g) nextActions
    nextDA <- processUntilNextDealAct as
    case nextDA of
      Nothing                     -> empty
      Just (nextDa, nextActions') -> do
        nextActions .= nextActions'
        pure nextDa
  Stop         -> empty
  GetPot   -> view (handState . potSize)
  GetStack pos -> do
    stackMay <- preuse @(EvalState g) (handState . posToStack . at pos . _Just )
    maybe (throwWithState @g PlayerNotFound) pure stackMay
  GetNextToAct -> maybe (throwWithState @g @r NoPlayersInQueue) pure
    =<< preuse @(EvalState g) (handState . toActQueue . _head)
  GetHolding pos -> do
    holdingMay :: Maybe Hole <- (preuse @(EvalState g) @r) $ getter pos
    maybe (throwWithState @g PlayerNotFound) pure holdingMay
   where
    getter :: Position -> L.Getting (First Hole) (EvalState g) Hole -- Position -> L.Lens (EvalState g) (First Holding) (EvalEnv g r) Holding
    getter p = holdings . L.ix p -- (handState . to (atPosition pos) . _Just . playerHolding . _Just)
  Board    -> view @(EvalState g) (handState . street)
  GetState -> view handState
  (Accumulate rangeName (PlayerAction pos act)) -> do
    playerHoldingMay <- view @(EvalState g) (holdings.at pos)
    holding <- maybe holdingNotFoundError pure playerHoldingMay
    (accRanges . at rangeName . non Map.empty . at holding . non []) %= (act :)
   where
    holdingNotFoundError = throwWithState @g @r $ CustomError "Holding not found error"
  _ -> error "incomplete    "

preuse :: forall s r a . Member (State s) r => L.Getting (First a) s a -> Sem r (Maybe a)
preuse = view . L.pre

view :: MemberWithError (State s) r => L.Getting a s a -> Sem r a
view l = L.getConst <$> gets (l L.Const)

(%=) :: forall s r a b . MemberWithError (State s) r => L.ASetter s s a b -> (a -> b) -> Sem r ()
l %= f = modify @s (l L.%~ f)

(.=) :: forall s r a . MemberWithError (State s) r => L.ASetter' s a -> a -> Sem r ()
l .= f = l %= const f

atPosition :: Position -> GameState g -> Maybe (Stack g)
atPosition pos state_ = state_ ^. posToStack . at pos

throwWithState :: forall g r a . Constraints g r => GameError g -> Sem r a
throwWithState = throw @(GameError g)

actualEmulateAction :: forall g. (IsBet g, Pretty g) => Action g -> StateT (EvalState g) (Either (GameError g)) ()
actualEmulateAction a = do
  L.zoom handState $ emulateAction a
  emulateQuery a
  pure ()
  where
    emulateQuery (MkPlayerAction (PlayerAction _ ba)) = case ba of
      Call _ -> pure ()
      Raise _ _ -> activeBetType L.%= Just . succ . fromJust
      AllInRaise _ _ -> activeBetType L.%= Just . succ . fromJust
      Bet _ -> activeBetType L..= Just OneB
      AllIn _ -> pure ()
      Fold -> pure ()
      Check -> pure ()
    emulateQuery (MkDealerAction da) = case da of
      PlayerDeal -> pure ()
      _ -> activeBetType L..= Nothing
    emulateQuery (MkPostAction _) = activeBetType L.%= Just . succ . fromJust

processUntilNextDealAct
  :: forall g r . Constraints g r => [Action g] -> Sem r (Maybe (DealerAction, [Action g]))
processUntilNextDealAct []       = pure Nothing
processUntilNextDealAct (a : as) = do
  runBovadaInSem @(GameError g) @(EvalState g) $ actualEmulateAction a
  case a of
    MkPlayerAction _  -> processUntilNextDealAct as
    MkDealerAction da -> pure $ Just (da, as)
    MkPostAction _ -> processUntilNextDealAct as
processUntilNextPAct
  :: forall g r
   . (GameConstraints g, Members '[Poly.NonDet , Error (GameError g), State (EvalState g)] r)
  => [Action g]
  -> Sem r (Maybe (PlayerAction g, [Action g]))
processUntilNextPAct []       = pure Nothing
processUntilNextPAct (a : as) = do
  let emulator :: S.StateT (EvalState g) (Either (GameError g)) () =
        actualEmulateAction a
  state <- get @(EvalState g)
  let res = run emulator state
  fromEither res >>= put
  case a of
    MkPlayerAction pa -> pure $ Just (pa, as)
    MkDealerAction _  -> empty
    -- TODO handle post?
    MkPostAction _ -> processUntilNextPAct as

runBovadaInSem
  :: forall e s r a . (Members '[Error e, State s] r) => S.StateT s (Either e) a -> Sem r ()
runBovadaInSem m = do
  state <- get @s
  let res = run m state
  fromEither @e res >>= put @s

run :: S.StateT s (Either e) a -> s -> Either e s
run = S.execStateT

evalStmts :: (Member (Query g) r, Constraints g r) => [Stmt g] -> Sem (State (EvalEnv g r) ': r) ()
evalStmts []       = pure ()
evalStmts (x : xs) = case x of
  Bind varName mExpr -> do
    Val (SQuery mTy) mon <- compileExpr mExpr
    val                  <- Val mTy <$> Poly.raise mon
    assign (_var varName) val
    evalStmts xs
  Where expr -> do
    Val SBool bool <- compileExpr expr
    if bool then evalStmts xs else pure ()
  Let var bodyExpr -> do
    compileExpr bodyExpr >>= \case
      Val (SQuery singleton) val -> modify . Map.insert var . Val singleton =<< Poly.raise val
      Val other              val -> modify . Map.insert var $ Val other val
    evalStmts xs
  Raw expr -> compileExpr expr >>= \case
    Val (SQuery _) q -> Poly.raise q >> evalStmts xs -- Val mTy <$> embed q
    _                -> throw $ FailErr "Evaluated bad Raw statement"

compileQuery
  :: (Member (Query g) r, Constraints g r) => EvalQuery g -> Sem (State (EvalEnv g r) ': r) ()
compileQuery (Prog quals) = evalStmts quals

compileExpr
  :: (Member (Query g) r, Constraints g r) => Expr g -> Sem (State (EvalEnv g r) ': r) (QVal g r)
compileExpr = cataM evalAlg
 where
  evalAlg
    :: forall g r
     . (Members '[Query g, Error EvalErr, Poly.NonDet] r, Show g, IsBet g)
    => ExprF g (QVal g r)
    -> Sem (State (EvalEnv g r)': r) (QVal g r)
  evalAlg = \case
    IsF val | Just predFun <- getPred val -> pure $ Val (SAction `SFun` SBool) predFun
    LitF lit -> pure $ evalLit lit
    VarF var -> do
      state <- get @(EvalEnv g r) -- :: Member (State EvalEnv) r => Sem r EvalEnv
      let varVal = L.view (at var) state
      maybe (throw . FailErr $ "Bad var: " <> show var) return varVal
    AppF fun                        arg                          -> pure $ applyFun fun arg
    AndF (Val SBool           left) (Val SBool            right) -> pure . Val SBool $ left && right
    OrF  (Val (SQuery leftTy) left) (Val (SQuery rightTy) right) -> case leftTy %~ rightTy of
      Proved  Refl -> pure $ Val (SQuery leftTy) (left <|> right)
      Refuted _    -> error "type mismatch in or application"
    ParenF expr -> pure expr
    other       -> error $ "unmatchable error node: " ++ show other
  -- cataM :: (Traversable (Base t), Monad m, Recursive t) => (Base t c -> m c) -> t -> m c
  cataM = cata . (sequence >=>)

applyFun :: Show g => QVal g r -> QVal g r -> QVal g r
applyFun (Val (SFun singArg singRes) funVal) (Val valSing valArg) = case singArg %~ valSing of
  Proved Refl -> Val singRes (funVal valArg)
  Refuted _ ->
    error
      $  "type mismatch in function application:\n\
        \   expected: "
      ++ show singArg
      ++ "\n\
             \   but instead found: "
      ++ show valSing
applyFun first second =
  error
    $  "bad types in function application:\n\
    \    fun type: "
    ++ show first
    ++ "\n\
         \    arg type: "
    ++ show second