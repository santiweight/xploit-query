{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE FunctionalDependencies, FlexibleInstances #-}
{-# LANGUAGE TypeSynonymInstances, RankNTypes, TypeFamilies, TemplateHaskell #-}

module Poker.Filter.AST
  ( ParserADT (..)
  , ExprF(..)
  , Ann
  , Anned(..)
  , Anned_(..)
  , Annotation(..)
  , Query(..)
  , Cofree(..)
  , Stmt
  , forget
  , Pos(..)
  , Located(..)
  , Region(..)
  , Fix(..)
  , Expr
  , Pred(..)
  , Predicate(..)
  , Stmt
  , StmtF(..)
  , Lit(..)
  , HasLoc(..)
  )
where

import Data.Generics.Uniplate.Data
import           Data.Generics.SYB              ( mkT
                                                , everywhere
                                                )
import Data.Data
import Data.Maybe
import Poker.Base
import Poker.Filter.Base
import Poker.Filter.Types
import           Data.Functor.Foldable          ( Fix(..)
                                                , ListF(..)
                                                , cata
                                                )
import Control.Comonad.Cofree
import           Control.Comonad                ( extract )
import           Control.Comonad.Trans.Cofree   ( tailF )
import           Control.Lens.Combinators       ( both )
import Text.Show.Deriving
import Data.Eq.Deriving
import Data.Bifunctor

class Predicate a where
  pred :: a -> (PlayerAction -> Bool)

instance Predicate Position where
  pred pos = (pos ==) . position

instance Predicate (PlayerAction -> Bool) where
  pred = id

data Pred =
  forall a. (Predicate a, Show a) => Pred a

deriving instance Show Pred

data StmtF varTy a = Bind varTy a
                | Raw a
               | Let varTy a
               | Where a
  deriving (Functor, Show)

instance Bifunctor StmtF where
  -- bimap :: StmtF a b ->
  bimap left right = \case
                Bind l r -> Bind (left l) (right r)
                Raw r -> Raw $ right r
                Let l r -> Let (left l) (right r)
                Where r -> Where $ right r

type Stmt = StmtF Var Expr

data Query stmt head = Query [stmt] head
  deriving Show

instance Bifunctor Query where
  bimap left right (Query stmts head) = Query (left <$> stmts) (right head)

type Stmts a = Cofree (ListF Stmt) a

data Lit =
  NumLit Double
  | PosLit Position
  | BoolLit Bool
  | StringLit String
  deriving (Show, Eq, Data, Typeable)

data ExprF a =
  AndF a a
  | IsF a
  | LitF Lit
  | AppF a a
  | VarF Var
  | PRE QVal
  deriving (Show, Functor, Foldable, Traversable)


data Pos = Pos { _line :: Int , _column :: Int }
  deriving (Show)

newtype Annotation = MkAnn { region :: Region }
  deriving (Show)

class HasLoc a where
  getRegion :: a -> Region

instance HasLoc (Located a) where
  getRegion = locRegion

instance HasLoc Annotation where
  getRegion = region

instance Functor f => HasLoc (Anned f) where
  getRegion = region . extract

data Located a = Show a => Loc { locRegion :: Region , val :: a }

deriving instance Show (Located a)

data Region = Region { startPos :: Pos, endPos :: Pos }
  deriving Show

type Expr = Fix ExprF

type Ann f ann = Cofree f ann

type Anned f = Ann f Annotation

type Anned_ a = Ann (K a) Annotation

-- ann :: Functor f => Ann f -> Annotation
-- ann = extract

data ParserADT = FoldP
               | AnyCallP
               | AnyRaiseP
  deriving Show

unAnn :: Functor f => Ann f a -> Fix f
unAnn = cata (Fix . tailF)

$(deriveShow1 ''ExprF)
-- $(deriveEq1 ''ExprF)

forget :: Anned_ (Query (Anned_ (StmtF (Anned_ Var) (Anned ExprF))) (Anned ExprF)) -> Query (StmtF Var Expr) Expr
forget = bimap (bimap forgetK unAnn . forgetK) unAnn . forgetK
-- forget = _ . forgetK
  where
    forgetK = cata unK . unAnn

-- -- Ann (K [Ann (K (StmtF Var Expr)) Annotation]) Annotation -> [StmtF Var Expr]
-- forget :: Anned_ [Anned_ (StmtF (Anned_ Var) (Anned ExprF))] -> [StmtF (Anned_ Var) (Anned ExprF)]
-- forget = fmap bimap . fmap forgetK . forgetK
--   where
--     forgetK = cata unK . unAnn