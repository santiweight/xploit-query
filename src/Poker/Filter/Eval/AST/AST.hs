{-# LANGUAGE FlexibleInstances #-}
module Poker.Filter.Eval.AST.AST where

import Control.Comonad (extract)
import Control.Comonad.Cofree
import Control.Comonad.Trans.Cofree (tailF)
import Data.Bifunctor
import Data.Data
import Data.Functor.Foldable
  ( Fix (..),
    cata,
  )
import Poker.Base
import Poker.Filter.Eval.AST.Types (Var (..))
import Text.Show.Deriving

-- | The lit type enumerates the four basic types.
data Lit
  = NumL Double
  | PosL Position
  | BoolL Bool
  | StringL String
  | IxL ActionIx
  deriving (Show, Eq, Data, Typeable)

-- | ExprF a is the base functor for the Expr type
-- PRE is a term used for evaluation. This node should
-- never be compiled to but is instead used during the
-- pre-computation compilation step.
data ExprF a
  = AndF a a
  | OrF a a
  | ParenF a
  | IsF a
  | LitF Lit
  | AppF a a
  | VarF Var
  deriving (Show, Functor, Foldable, Traversable)

-- | Easier-to-use patterns that wrap a member of ExprF in Fix for you
pattern Is :: Fix ExprF -> Fix ExprF
pattern Is a = Fix (IsF a)

pattern Lit :: Lit -> Fix ExprF
pattern Lit a = Fix (LitF a)

pattern App :: Fix ExprF -> Fix ExprF -> Fix ExprF
pattern App f a = Fix (AppF f a)

pattern Var :: String -> Fix ExprF
pattern Var v = Fix (VarF (V v))


-- | Alias for Var
var :: String -> Fix ExprF
var = Fix . VarF . V

-- | Knot-tied ExprF
type Expr = Fix ExprF

-- | The type of a statement in the query
--   * Bind is a monadic bind
--   * Raw is any expression
--   * Where is a monadic guard that takes a bool
--   * Let is a simple variable binding
--
-- TODO implement a type check that only monadic effects are used in Raw statements
-- TODO likewise ensure effectful computations cannot be bound in lets
-- TODO have the same syntax for let/bind
data StmtF varTy a
  = Bind varTy a
  | Raw a
  | Let varTy a
  | Where a
  deriving (Functor, Show)

-- | Temporary: A query is a list of stmts followed by a returned expression
data Prog stmt = Prog [stmt]
  deriving (Show, Functor)

-- | Position information mapping to code locations. Indexing
-- begins at 0,0
data Pos = Pos { _line :: Int , _column :: Int }
  deriving (Show)

-- | SrcSpan information
data Region = Region { startPos :: Pos, endPos :: Pos }
  deriving Show

-- | Annotation that contains source information
newtype Annotation = MkAnn { region :: Region }
  deriving (Show)

data Located a = Show a => Loc { locRegion :: Region , unLoc :: a }
deriving instance Show (Located a)

-- | Constant functor
newtype K a b = K {unK :: a}
  deriving (Functor, Show)

-- | Stmt as used during eval
type Stmt = StmtF Var Expr

type Anned f = Cofree f Annotation

type Ann = Cofree

type Anned_ a = Ann (K a) Annotation

instance Bifunctor StmtF where
  bimap left right = \case
    Bind l r -> Bind (left l) (right r)
    Raw r -> Raw $ right r
    Let l r -> Let (left l) (right r)
    Where r -> Where $ right r

-- instance Bifunctor Query where
--   bimap left right (Query stmts qHead) = Query (left <$> stmts) (right qHead)

class HasLoc a where
  getRegion :: a -> Region

instance HasLoc (Located a) where
  getRegion = locRegion

instance HasLoc Annotation where
  getRegion = region

instance Functor f => HasLoc (Anned f) where
  getRegion = region . extract

-- | Convert an annotated Base Functor to its fixed point
unAnn :: Functor f => Ann f a -> Fix f
unAnn = cata (Fix . tailF)

-- | Helper to forget annotations from the parsed tree
forget :: Anned_ (Prog (Anned_ (StmtF (Anned_ Var) (Anned ExprF)))) -> Prog (StmtF Var Expr)
forget = fmap (bimap forgetK unAnn . forgetK) . forgetK
  where
    forgetK = cata unK . unAnn

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

$(deriveShow1 ''ExprF)
$(deriveShow1 ''K)