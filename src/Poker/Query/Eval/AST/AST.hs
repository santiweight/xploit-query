{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE CPP #-}
module Poker.Query.Eval.AST.AST where

import           Control.Comonad                ( extract )
import           Control.Comonad.Cofree         ( Cofree
                                                , hoistCofree
                                                )
import           Control.Comonad.Trans.Cofree   ( tailF )
import           Data.Bifunctor                 ( Bifunctor(..) )
-- import Data.Fix (Fix(..), cata)
import           Data.Bifunctor.TH              ( deriveBifunctor )
import           Data.Data                      ( Data
                                                , Typeable
                                                )
-- import           Data.Fix                hiding ( cata )
#if MIN_VERSION_recursion_schemes(5,2,0)
import Data.Fix hiding (cata)
import Data.Functor.Foldable
#else
import           Data.Functor.Foldable
#endif
import           Poker
import           Poker.Query.ActionIx
import           Poker.Query.Eval.AST.Types
import           Text.Show.Deriving             ( deriveShow1 )

-- | The lit type enumerates the four basic types.
data Lit g
  = NumL Double
  | PosL Position
  | BoolL Bool
  | StringL String
  | IxL (ActionIx g)
  deriving (Show, Eq, Data, Typeable, Functor)

-- | ExprF a is the base functor for the Expr type
-- Likely we'll want a non-lexical AST rep since this one includes Paren
-- and is not polymorphic in Var rep.
--
-- AndF is currently not useful TODO deprecate
-- OrF likewise not useful TODO deprecate
-- ParenF is just a lexical node
-- IsF is a node for the Pred class that marshals core types to
-- predicates over PlayerActions e.g.
--
-- >> (eval $ IsF (LitF $ PosL UTG)) utgAct
--  True
--
-- AppF is function application
-- VarF is a variable reference
data ExprF g a
  = AndF a a
  | OrF a a
  | ParenF a -- (a)
  | IsF a
  | LitF (Lit g) -- Bool | Number | Position
  | AppF a a -- Function Application : f(x)
  | VarF Var -- variable : var <- binding
  deriving (Show, Functor, Foldable, Traversable)

$(deriveBifunctor ''ExprF)
-- | Knot-tied ExprF
type Expr g = Fix (ExprF g)

type instance Base (Expr g) = ExprF g

-- | Easier-to-use patterns that wrap a member of ExprF in Fix for you
pattern Is :: Expr g -> Expr g
pattern Is a = Fix (IsF a)

pattern Lit :: Lit g -> Expr g
pattern Lit a = Fix (LitF a)

pattern App :: Expr g -> Expr g -> Expr g
pattern App f a = Fix (AppF f a)

pattern Var :: String -> Expr g
pattern Var v = Fix (VarF (V v))

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

-- | A program is a list of stmts
newtype Prog stmt = Prog [stmt]
  deriving (Show, Functor)

-- | Position information mapping to code locations. Indexing
-- begins at 0,0
data Pos = Pos
  { _line   :: Int
  , _column :: Int
  }
  deriving Show

-- | SrcSpan information
data Region = Region
  { startPos :: Pos
  , endPos   :: Pos
  }
  deriving Show

-- | Annotation that contains source information
newtype Annotation = MkAnn { region :: Region }
  deriving (Show)

data Located a = Show a => Loc
  { locRegion :: Region
  , unLoc     :: a
  }
deriving instance Show (Located a)

-- | Constant functor
newtype K a b = K {unK :: a}
  deriving (Functor, Show)

-- | Stmt as used during eval
type Stmt g = StmtF Var (Expr g)

-- | Type alias for Cofree where the annotation is specialised to Annotation
type Anned f = Cofree f Annotation

-- | Type Alias for Cofree (since Ann ~ Cofree)
type Ann = Cofree

type Anned_ a = Ann (K a) Annotation

instance Bifunctor StmtF where
  bimap left right = \case
    Bind l r -> Bind (left l) (right r)
    Raw r    -> Raw $ right r
    Let l r  -> Let (left l) (right r)
    Where r  -> Where $ right r

-- | Convenience class for getting the region associated with a
-- DataType
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

mapBetType
  :: (g -> h)
  -> Anned_ (Prog (Anned_ (StmtF (Anned_ Var) (Anned (ExprF g)))))
  -> Anned_ (Prog (Anned_ (StmtF (Anned_ Var) (Anned (ExprF h)))))
mapBetType f = hoistCofree
  (K . fmap (hoistCofree (K . second (hoistCofree $ first f) . unK)) . unK)

-- | Helper to forget annotations from the parsed tree
forget
  :: Anned_ (Prog (Anned_ (StmtF (Anned_ Var) (Anned (ExprF g)))))
  -> Prog (StmtF Var (Expr g))
forget = fmap (bimap forgetK unAnn . forgetK) . forgetK
 where
  forgetK :: Anned_ a -> a
#if MIN_VERSION_recursion_schemes(5,2,0)
  forgetK = unK . unFix . unAnn
#else
  forgetK = unK . unfix . unAnn
#endif

$(deriveShow1 ''ExprF)
$(deriveShow1 ''K)
