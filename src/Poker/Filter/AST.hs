{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DeriveFunctor #-}

module Poker.Filter.AST
  ( ParserADT (..)
  )
where

import Poker.Base
import Poker.Filter.Base

class Predicate a where
  pred :: a -> (PlayerAction -> Bool)

instance Predicate Position where
  pred pos = (pos ==) . position

instance Predicate (PlayerAction -> Bool) where
  pred = id

-- data Pred where
--   Pred :: (Show a, Predicate a) => a -> Pred

data Pred = 
  forall a. (Predicate a, Show a) => Pred a

deriving instance Show Pred

data ExprF a = And Pred Pred
  deriving (Show, Functor)

newtype Fix f = Fx (f (Fix f))

deriving instance Show (f (Fix f)) => Show (Fix f)

type Expr = Fix ExprF

data ParserADT = FoldP
               | AnyCallP
               | AnyRaiseP
  deriving Show
