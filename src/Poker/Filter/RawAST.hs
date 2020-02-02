{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE RankNTypes #-}

module Poker.Filter.RawAST where

import Poker.Base
import qualified Data.Map as M
import           Control.Monad.State.Lazy
import           Control.Comonad.Cofree

type NumLit = forall a. Num a => a

type Var = String

data ExprF a = IsF a
    | AndF a a
    | VarF Var
    | NumLitF NumLit
    | PosLitF Position
    | ActionIxF ActionIndex
    | PredF a

deriving instance Show a => Show (ExprF a)
deriving instance Functor ExprF
deriving instance Foldable ExprF
deriving instance Traversable ExprF
deriving instance Eq a => Eq (ExprF a)
deriving instance Ord a => Ord (ExprF a)

newtype Fix f = Fx (f (Fix f))

type Expr = Fix ExprF

data Type = TLambda Type Type
          | TVar Int
          | TNumber
          | TString

deriving instance Show Type

data Constraint = EqualityConstraint Type Type
    deriving Show

data TypeResult = TypeResult {
    constraints :: [Constraint],
    assumptions :: M.Map String [Type]
}

deriving instance Show TypeResult

instance Semigroup TypeResult where
    a <> b = TypeResult {
                             constraints = constraints a `mappend` constraints b,
                             assumptions = assumptions a `mappend` assumptions b
                           }

instance Monoid TypeResult where
    mempty = TypeResult {
               constraints = mempty,
               assumptions = mempty
             }
    mappend = (<>)

data TypeState t m = TypeState {
      varId :: Int,
      memo :: M.Map t m
    }

type TypeCheck t = State (TypeState t (Type, TypeResult)) (Type, TypeResult)

freshVarId :: State (TypeState t m) Type
freshVarId = do
  v <- gets varId
  modify $ \s -> s { varId = succ v }
  return $ TVar v

memoizedTC :: Ord c => (c -> TypeCheck c) -> c -> TypeCheck c
memoizedTC f c = gets memo >>= maybe memoize return . M.lookup c where
    memoize = do
      r <- f c
      modify $ \s -> s { memo = M.insert c r $ memo s }
      return r

cofreeMu :: Functor f => Fix f -> Cofree f ()
cofreeMu (Fx f) = () :< fmap cofreeMu f
