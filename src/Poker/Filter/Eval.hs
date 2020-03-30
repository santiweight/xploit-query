{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE StandaloneDeriving #-}
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
  , testPA
  , evalQuery
  , Q.next
  , retract
  , iter
  , foldFree
  , S.runState
  , runMaybeT
  , runEval
  , evalExpr
  ) where

import Prelude hiding (pred)
import Poker.Filter.AST (Lit(..), ExprF(..), Expr, Stmt, StmtF(..), Predicate(..))
import qualified Poker.Filter.AST as AST
import Control.Monad.Fail
import Poker.Base
import Data.Text
import Data.Singletons
import qualified Data.Map as Map


import           Data.Functor.Foldable          ( cata
                                                , Fix
                                                , Fix(..)
                                                , Recursive
                                                , Base
                                                )
import           Data.Functor.Identity          ( Identity
                                                , runIdentity
                                                )
import           Data.Void
import           Data.Kind                      ( Constraint )
import           Data.Map.Strict                ( Map )
import           Data.Function                  ( (&) )
import           Data.Typeable                  ( cast )
-- import           Control.Monad.State.Strict     ( StateT
--                                                 , get
--                                                 , modify
--                                                 , runStateT
--                                                 , evalStateT
--                                                 , MonadState(..)
--                                                 )
import           Control.Monad.Except           ( ExceptT(..)
                                                , MonadError(..)
                                                , throwError
                                                , runExceptT
                                                )
import           Control.Monad                  ( (>=>)
                                                , void
                                                , mzero
                                                )
import           Control.Monad.Trans.Class      ( lift )
import           Control.Monad.Trans.Maybe      ( MaybeT, runMaybeT )
import           Control.Lens.At                ( at )
import           Control.Lens.Combinators       ( view )
import           Control.Lens.Operators         ( (.~)
                                                , (?~)
                                                )
import           Control.Arrow                  ( (>>>) )
import Poker.Filter.Base
import Poker.Filter.Types
import Polysemy
import Polysemy.State
import Polysemy.KVStore
import Polysemy.Fail
import Polysemy.Error
import qualified Control.Monad.State as S

import Data.Data (Typeable)
import           Data.Bool.HT                   ( ifThenElse )
import           Text.Megaparsec                ( failure )
import Poker.Game.Internal (Board)

import Poker.Filter.Query (Query(..), QueryF(..))
import qualified Poker.Filter.Query as Q
import Poker.Filter.Types

import Control.Monad.Free

-- evalLit :: Lit -> QVal a
-- evalLit = \case
--     NumLit doub -> Val SDouble doub
    -- BoolLit bool -> Val SBool bool
    -- StringLit str -> Val SString str

data Fresh f m a where
    Fresh :: Fresh f m f

makeSem ''Fresh

getPred :: QVal -> Maybe FilterPred
getPred = \case
    Val SPosition val -> Just (pred val)
    _ -> Nothing

type PredConstraint a = Predicate a

-- type EvalT a = StateT EvalEnv (ExceptT EvalErr MyMonad) a

-- type MonadEval m = ( MonadState EvalEnv m
--                    , MonadError EvalErr m
--                    , Parser m )

class MonadParser m where

-- eval :: Eval a -> Either EvalErr a
-- eval = fromSum . (\m -> evalBovadaParser m [] defState) . runExceptT . flip evalStateT Map.empty
--     where
--         fromSum = \case
--             SumResult a -> a
--             _ -> error ""

testPA :: PlayerAction
testPA = PlayerAction UTG Fold Hero

-- runQuery :: [PlayerAction] -> Query PlayerAction -> Maybe PlayerAction
-- runQuery (p:ps) Next = Just p
-- runQuery _ = Nothing

runStatefulQuery :: [PlayerAction] -> Query a -> Maybe a
runStatefulQuery ps = flip S.evalState ps . runMaybeT . foldFree runQuery

runQuery :: QueryF a -> MaybeT (S.State [PlayerAction]) a
runQuery (Next ct) =
    S.get >>= \case
        [] -> mzero
        (x:xs) -> do
            S.put xs
            return . ct $ x
runQuery _ = error ""
-- consoleIO (GetLine cb) = do
--   s <- Prelude.getLine
--   pure (cb s)

-- -- KeyValue in IO via Redis.
-- keyValIO :: KeyValF ~> IO
-- keyValIO (GetKey k cb) = do
--   r <- Redis.lookupKey k
--   pure (cb r)
-- keyValIO (PutKey k v n) = do
--   Redis.putKeyVal k v
--   pure n

cataM :: (Traversable (Base t), Monad m, Recursive t) => (Base t c -> m c) -> t -> m c
cataM = cata . (sequence >=>)

-- pattern Stoppp = Free (Stop $ Pure ())

assign :: Member (State EvalEnv) r => String -> QVal -> Sem r ()
assign varName = modify . Map.insert (Var varName)

queryEnv :: EvalEnv
-- queryEnv = Map.fromList [(Var "next", Val ((SAction `SFun` SPoly) `SFun` SPoly) Next)]
queryEnv = Map.fromList [(Var "next", Val (SQuery SAction) Q.next)]

-- runEval :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r => Stmt -> Sem r a
runEval :: Sem (Error EvalErr ': State EvalEnv ': Fail ': Embed Query ': '[]) a -> Query (Either String (Either EvalErr a))
runEval = unwrapQuery . runFail . evalState queryEnv . runError

unwrapQuery :: Sem '[Embed Query] a -> Query a
unwrapQuery = runM

evalStmt :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r => Stmt -> Sem r ()
evalStmt = \case
    Bind varName mExpr -> do
        Val (SQuery mTy) mon <- evalExpr mExpr
        assign (_var varName) =<< (Val mTy <$> embed mon)
    Where expr -> do
        Val SBool bool <- evalExpr expr
        ifThenElse bool (pure ()) (embed $ Free $ Stop (Pure())) :: Member (Embed Query) r => Sem r ()
    Let var bodyExpr -> modify . Map.insert var =<< evalExpr bodyExpr
    Raw expr -> do
        Val (SQuery _) p <- evalExpr expr
        () <$ embed p

type EvalQuery = AST.Query (StmtF Var Expr) Expr

evalQuery :: Members '[Fail, Embed Query, State EvalEnv, Error EvalErr] r => EvalQuery -> Sem r QVal
evalQuery (AST.Query quals ret) = do
    mapM_ evalStmt quals
    evalExpr ret

evalExpr
    :: Members '[Embed Query, State EvalEnv, Error EvalErr] r => Expr -> Sem r QVal
evalExpr = cataM evalAlg
  where
    evalAlg
        :: Members '[Embed Query, State EvalEnv, Error EvalErr] r
        => ExprF QVal
        -> Sem r QVal
    evalAlg = \case
        IsF val | let Just predFun = getPred val ->
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
    evalLit = \case
        NumLit  num  -> Val SDouble num
        BoolLit bool -> Val SBool bool
        PosLit  pos  -> Val SPosition pos
        StringLit str -> Val SString str

-- evalStmt :: Stmt -> EvalT ()
-- evalStmt = \case
--     Bind var mExpr -> do
--         Val (SParser SBool) mon <- evalExpr mExpr
--         x <- lift . lift $ mon
--         return ()
--     Where expr -> do
--         Val SBool bool <- evalExpr expr
--         ifThenElse bool (lift . lift $ pure ()) (lift . lift $ mempty)
--     _ -> error ""
--     where
--         getMonad :: (MonadEval m, Parser p) => QVal -> m (p a)
--         getMonad (Val (SParser tyRefl) m) = return m
--         getMonad _ = throwError EvalErr

-- evalExpr :: Parser m => Expr -> EvalT QVal
-- evalExpr = cataM evalAlg
--     where
--         evalAlg :: ExprF QVal -> EvalT QVal
--         evalAlg = \case
--             IsF val
--                 | let Just predFun = getPred val -> pure $ Val (SAction `SFun` SBool) predFun
--             LitF lit -> pure $ evalLit lit
--             VarF var -> get >>=
--                 (view (at var) >>> maybe (throwLookupError var) return)
--             AppF fun arg -> return $ applyFun fun arg
--             _ -> return $ Val SDouble 1
--         evalLit = \case
--             NumLit num -> Val SDouble num
--             BoolLit bool -> Val SBool bool
--             PosLit pos -> Val SPosition pos
--             _ -> error "not good"
--         throwLookupError var = throwError $ EnvLookupErr var

-- evalQual :: Qual Expr -> Eval ()
-- evalQual = \case
--     Let var expr -> modify . (at var ?~) =<< evalExpr expr
--     Where expr -> evalExpr expr >>= \case
--                     Val SBool val -> pure ()
--                     _ -> error "found non-bool in where"
--     -- Where expr ->

-- andTest :: Fix ExprF
-- andTest = Fix $ And (Fix $ BoolLit False) (Fix $ BoolLit True)

-- posTest :: Fix ExprF
-- posTest = Fix $ IsF (Fix . LitF . PosLit $ UTG)

applyFun :: QVal -> QVal -> QVal
applyFun (Val (SFun singArg singRes) funVal) (Val valSing valArg) =
    case singArg %~ valSing of
        Proved Refl -> Val singRes (funVal valArg)
        Refuted _ -> error $ "type mismatch in function application:\n\
                             \   expected: " ++ show singArg ++ "\n\
                             \   but instead found: " ++ show valSing
applyFun first second = error $ "bad types in function application:\n\
                                \    fun type: " ++ show first ++ "\n\
                                \    arg type: " ++ show second

-- eval :: Expr -> a
-- eval = \case
--     Lit lit -> evalLit lit
-- where
--     evalLit = \case
--         NumLit num -> Val SDouble num