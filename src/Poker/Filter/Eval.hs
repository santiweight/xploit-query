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
    , retract
    , iter
    , foldFree
    , EvalQuery
    , S.runState
    , runMaybeT
    , runEval
    , accQuery
    , accExpr
    , evalExpr
    , runExpr
    , compileExpr
    , compileQuery
    )
where

import Control.Lens.At (at)
import Control.Lens.Combinators (view)
import Control.Monad.Free
import qualified Control.Monad.State as S
import Control.Monad.Trans.Maybe
  ( MaybeT,
    runMaybeT,
  )
import Control.Monad.Trans.Reader (ReaderT, runReaderT)
import Control.Monad.Writer.Strict
import Data.Bool.HT (ifThenElse)
import Data.Functor.Foldable
  ( Base,
    Recursive,
    cata,
  )
import Data.Functor.Identity (runIdentity)
import qualified Data.Map as Map
import Data.Map.Lazy (Map)
import Poker.Base
import Poker.Game.Bovada
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
import Polysemy
import Polysemy.Error
import Polysemy.Fail
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

accQuery :: EvalQuery -> [PlayerAction] -> GameState-> [PlayerAction]
accQuery st gameState = snd . runQuery st gameState

accExpr :: EvalQuery -> [PlayerAction] -> GameState-> [PlayerAction]
accExpr st gameState = snd . runQuery st gameState

evalQuery ::
  EvalQuery ->
  [PlayerAction] ->
    GameState ->
  Maybe (Either EvalErr QVal)
evalQuery st gameState = fst . runQuery st gameState

evalExpr :: Expr -> [PlayerAction] -> GameState -> Maybe (Either EvalErr QVal)
-- evalExpr expr st gameState = fst $ runExpr expr st gameState
evalExpr expr ps state = fst $ runExpr expr ps state

runQuery ::
  EvalQuery ->
  [PlayerAction] ->
  GameState ->
  (Maybe (Either EvalErr QVal), [PlayerAction])
runQuery query state gameState = execSem compileQuery query state gameState

runExpr :: Expr
              -> [PlayerAction] -> GameState -> (Maybe (Either EvalErr QVal), [PlayerAction])
runExpr expr state gameState = execSem compileExpr expr state gameState

execSem ::
  ( t ->
    Sem '[Fail, Error EvalErr, State EvalEnv, Embed Query] a
  ) ->
  t ->
  [PlayerAction] ->
  GameState ->
  (Maybe (Either EvalErr a), [PlayerAction])
execSem handler queryExpr state gameState = runStatefulQuery state gameState (runEval $ handler queryExpr)

runStatefulQuery :: [PlayerAction] -> GameState
                      -> Free QueryF a -> (Maybe a, [PlayerAction])
runStatefulQuery ps gameState = runIdentity . runWriterT . flip S.evalStateT ps . runMaybeT . flip runReaderT gameState . foldFree runQueryFree

runQueryFree :: QueryF a -> ReaderT GameState (MaybeT (S.StateT [PlayerAction] (Writer [PlayerAction]))) a
runQueryFree (Next ct) = S.get >>= \case
    []       -> mzero
    (x : xs) -> do
        S.put xs
        return . ct $ x
runQueryFree (Stop _) = mzero
runQueryFree (Accumulate _ accAct cont) = cont <$ tell [accAct]
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
      (V "acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) Q.accumulate)
    ]
-- runEval :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r => Stmt -> Sem r a
runEval
    :: Sem (Fail ': Error EvalErr ': State EvalEnv ': Embed Query ': '[]) a
    -> Query (Either EvalErr a)
runEval = unwrapQuery . evalState queryEnv . runError . failToError consumeFail
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
        assign (_var varName) =<< (Val mTy <$> embed mon)
        pure $ Val SUnit ()
    Where expr -> do
        Val SBool bool <- compileExpr expr
        ifThenElse bool (pure ()) (embed $ Free $ Stop (Pure ())) :: Member
                (Embed Query)
                r
            => Sem r ()
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
      PRE val -> pure val
      _ -> error "Error during eval"

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