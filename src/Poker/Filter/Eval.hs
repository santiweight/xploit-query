{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE LiberalTypeSynonyms #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}


module Poker.Filter.Eval
    ( runQuery
    , runStatefulQuery
    , evalQuery
    -- , retract
    -- , iter
    -- , foldFree
    , EvalQuery
    , ActionRange
    , S.runState
    , runMaybeT
    , runEval
    , accQuery
    , accExpr
    , evalExpr
    , runExpr
    , compileExpr
    , compileQuery
    , open
    )
where

-- import Control.Monad.Free

import Control.Applicative ((<|>), many, some)
import Control.Arrow ((>>>))
import Control.Lens.At (at)
import Control.Lens.Combinators (_1, _2, _Just, non, over, re, review, use, view)
import Control.Lens.Operators ((.=), (<>=))
import qualified Control.Lens.Operators as L
import Control.Monad.Free (foldFree)
import Control.Monad.Reader (Reader, reader)
import qualified Control.Monad.State as S
import Control.Monad.Trans.Free (Free, FreeT, foldFreeT, hoistFreeT, iterT, joinFreeT, transFreeT)
import Control.Monad.Trans.Maybe
  ( MaybeT,
    runMaybeT,
  )
import Control.Monad.Trans.Reader (ReaderT, runReaderT)
import Control.Monad.Writer.Strict
import Data.Bifunctor (first)
import Data.Bool.HT (ifThenElse)
import Data.Functor.Foldable
  ( Base,
    Recursive,
    cata,
  )
import Data.Functor.Identity (Identity, runIdentity)
import qualified Data.Map as Map
import Data.Map.Lazy (Map)
import Debug.Trace
import Poker.Base (ActionIx (..), Holding (..), IxRange (..), Player (..), PlayerAction (..), PlayerActionValue (..), Position (..), atPosition, inIndex, playerHolding)
import Poker.Filter.AST
  ( Expr,
    ExprF (..),
    Lit (..),
    Predicate (..),
    Stmt,
    StmtF (..),
  )
import qualified Poker.Filter.AST as AST
import Poker.Filter.AST (Var (..))
import Poker.Filter.Query
  ( Query,
    QueryF (..),
  )
import qualified Poker.Filter.Query as Q
import Poker.Filter.Types
import Poker.Game.Bovada
import Poker.Game.Internal (playerMap, seatMap)
import Polysemy
import Polysemy.Error
import Polysemy.Fail
import Polysemy.NonDet (NonDet (..), runNonDetMaybe)
import Polysemy.State
import Prelude hiding (pred)

type EvalEnv = Map Var QVal

data EvalErr
  = EnvLookupErr Var
  | TypeMismatchDuringEval String
  | EvalErr
  deriving (Show, Eq)


evalLit :: Lit -> QVal
evalLit = \case
    NumL    doub -> Val SDouble doub
    BoolL   bool -> Val SBool bool
    StringL str  -> Val SString str
    PosL    pos  -> Val SPosition pos
    IxL     ix   -> Val SIx ix

getPred :: QVal -> Maybe FilterPred
getPred = \case
  Val SPosition val -> Just (pred val)
  Val SIx ix -> Just (pred ix)
  _ -> Nothing

accQuery :: EvalQuery -> [PlayerAction] -> GameState -> [ActionRange]
accQuery st gameState = fmap (snd . snd) . runQuery st gameState

accExpr :: EvalQuery -> [PlayerAction] -> GameState-> [ActionRange]
accExpr st gameState = fmap (snd . snd) . runQuery st gameState

evalQuery ::
  EvalQuery ->
  [PlayerAction] ->
    GameState ->
  [Either EvalErr QVal]
evalQuery st gameState = fmap fst . runQuery st gameState

evalExpr :: Expr -> [PlayerAction] -> GameState -> [Either EvalErr QVal]
-- evalExpr expr st gameState = fst $ runExpr expr st gameState
evalExpr expr ps state = fmap fst $ runExpr expr ps state

runQuery ::
  EvalQuery ->
  [PlayerAction] ->
  GameState ->
  [(Either EvalErr QVal, ([PlayerAction], ActionRange))]
runQuery query state gameState = execSem compileQuery query state gameState

runExpr :: Expr
              -> [PlayerAction] -> GameState -> [(Either EvalErr QVal, ([PlayerAction], ActionRange))]
runExpr expr state gameState = execSem compileExpr expr state gameState

execSem ::
  ( t ->
    Sem '[Fail, Error EvalErr, State EvalEnv, Embed Query] a
  ) ->
  t ->
  [PlayerAction] ->
  GameState ->
  [(Either EvalErr a, ([PlayerAction], ActionRange))]
execSem handler queryExpr state gameState = runStatefulQuery (state, Map.empty) gameState (runEval $ handler queryExpr)
  where
    joinMaybes = \case
      Just (Right Nothing) -> Nothing
      Just (Right (Just other)) -> Just $ Right other
      Just (Left other) -> Just $ Left other
      Nothing -> Nothing

-- test :: Query a -> [Free QueryF a] -- ReaderT GameState (MaybeT (S.State ([PlayerAction], ActionRange))) a
-- test query = joinFreeT query

runStatefulQuery ::
  ([PlayerAction], ActionRange) ->
  GameState ->
  Query a ->
  [(a, ([PlayerAction], ActionRange))]
runStatefulQuery ps gameState =
  flip S.runStateT ps
    . flip runReaderT gameState
    . iterT alg
    . hoistFreeT hoist
  where
    hoist :: [a] -> ReaderT GameState (S.StateT ([PlayerAction], ActionRange) []) a
    hoist [] = lift . lift $ []
    hoist xs = lift . lift $ xs
    alg :: QueryF (ReaderT GameState (S.StateT ([PlayerAction], ActionRange) []) a) -> ReaderT GameState (S.StateT ([PlayerAction], ActionRange) []) a
    alg (Next ct) = do
      fst <$> S.get >>= \case
        [] -> mzero
        (x : xs) -> do
            _1 .= xs
            ct $ x
    alg (Stop _) = mzero
    alg (Accumulate _ accAct cont) = do
      seatNum <- maybe seatNotFoundError id <$> view (seatMap . at (position accAct))
      -- playerMay :: Maybe Player <- view (playerMap . at seatNum)
      -- playerMay <- view (playerMap . at seatNum)
      playerHo <- (_playerHolding =<<) <$> view (playerMap . at seatNum)
      let holding = maybe holdingNotFoundError id playerHo
      (_2 . at holding) L.%= Just . maybe [action accAct] (action accAct :)
      cont
      where
        seatNotFoundError = error "Illegal State: act taken by non-existent player"
        holdingNotFoundError = error "Illegal State: holding not found for acting player"
    alg _ = error ""
-- type RangeState = Map String RangeState
type ActionRange = Map Holding [PlayerActionValue]

runQueryFree :: QueryF a -> ReaderT GameState (MaybeT (S.StateT ([PlayerAction], ActionRange) Identity)) a
runQueryFree (Next ct) = fst <$> S.get >>= \case
    []       -> mzero
    (x : xs) -> do
        _1 .= xs
        return . ct $ x
runQueryFree (Stop _) = mzero
runQueryFree (Accumulate _ accAct cont) = do
  seatNum <- maybe seatNotFoundError id <$> view (seatMap . at (position accAct))
  -- playerMay :: Maybe Player <- view (playerMap . at seatNum)
  -- playerMay <- view (playerMap . at seatNum)
  playerHo <- (_playerHolding =<<) <$> view (playerMap . at seatNum)
  let holding = maybe holdingNotFoundError id playerHo
  (_2 . at holding) L.%= Just . maybe [action accAct] (action accAct :)
  return cont
    where
    seatNotFoundError = error "Illegal State: act taken by non-existent player"
    holdingNotFoundError = error "Illegal State: holding not found for acting player"
runQueryFree _ = error ""


cataM ::
  (Traversable (Base t), Monad m, Recursive t) =>
  (Base t c -> m c) ->
  t ->
  m c
cataM = cata . (sequence >=>)
-- pattern Stoppp = Free (Stop $ Pure ())

assign :: Member (State EvalEnv) r => String -> QVal -> Sem r ()
assign varName = modify . Map.insert (V varName)

queryEnv :: EvalEnv
-- queryEnv = Map.fromList [(Var "next", Val ((SAction `SFun` SPoly) `SFun` SPoly) Next)]
queryEnv =
  Map.fromList
    [ (V "next", Val (SQuery SAction) Q.next),
      (V "acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) Q.accumulate),
      (V "many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
      (V "some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some),
      (V "open", Val (SPosition `SFun` SQuery SAction) open)
    ]

open :: Position -> Query PlayerAction
open pos = many (mfilter (inIndex FoldIx . action) Q.next)
        *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action)<*> (atPosition pos)

-- runEval :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r => Stmt -> Sem r a
runEval
    :: Sem [Fail, Error EvalErr, State EvalEnv, Embed Query] a
    -> Query (Either EvalErr a)
runEval = unwrapQuery
        . evalState queryEnv
        . runError
        . failToEmbed @Query
  where consumeFail str = TypeMismatchDuringEval str

unwrapQuery :: Sem '[Embed Query] a -> Query a
unwrapQuery = runM

evalStmt
    :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r
    => Stmt
    -> Sem r QVal
evalStmt = \case
    Bind varName mExpr -> do
        Val (SQuery mTy) mon <- compileExpr mExpr
        val <- (Val mTy <$> embed mon)
        assign (_var varName) val
        pure $ Val SUnit ()
    Where expr -> do
        Val SBool bool <- compileExpr expr
        embed @Query $ guard bool
        -- ifThenElse bool (pure ()) (embed . _ $ Free $ Stop (Pure ())) :: Member
        --         (Embed Query)
        --         r
        --     => Sem r ()
        pure $ Val SUnit ()
    Let var bodyExpr -> do
      modify . Map.insert var =<< compileExpr bodyExpr
      pure $ Val SUnit ()
    Raw expr         -> compileExpr expr >>= \case
                            Val (SQuery mTy) q -> Val mTy <$> embed q
                            _ -> throw EvalErr

type EvalQuery = AST.Query (StmtF Var Expr) Expr

compileQuery ::
  Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r =>
  EvalQuery ->
  Sem r QVal
compileQuery (AST.Query quals ret) = do
  mapM_ evalStmt quals
  compileExpr ret

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
        state <- get :: Member (State EvalEnv) r => Sem r EvalEnv
        let varVal = view (at var) state
        maybe (throw EvalErr) return varVal
      AppF fun arg -> pure $ applyFun fun arg
      AndF (Val SBool left) (Val SBool right) -> pure . Val SBool $ left && right
      OrF (Val (SQuery leftTy) left) (Val (SQuery rightTy) right) ->
        case leftTy %~ rightTy of
          Proved Refl -> (pure $ Val (SQuery leftTy) (left <|> right))
          Refuted _ -> error "type mismatch in or application"
      ParenF expr -> pure expr
      PRE val -> pure val
      other -> error $ "unmatchable error node: " ++ show other

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
-- eval :: Expr -> a
-- eval = \case
--     Lit lit -> evalLit lit
-- where
--     evalLit = \case
--         NumLit num -> Val SDouble num
