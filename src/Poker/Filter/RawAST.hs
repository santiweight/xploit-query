{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE RankNTypes #-}

module Poker.Filter.RawAST where

import Control.Lens.TH

import Control.Monad

import Poker.Base
import qualified Data.Map as M
import           Data.Functor.Foldable hiding (fold)
import           Data.Set                       ( Set )
import qualified Data.Set as S
import           Data.Foldable                  ( fold )
import           Control.Monad.State.Lazy
import           Control.Monad.Except
import           Control.Lens.Operators         ( (+=) )
import           Control.Lens.Lens              ( (<+=)
                                                , (<<+=)
                                                )

type NumLit = forall a. Num a => a

type Var = String

newtype Unique = Unique {_count :: Int}

makeLenses 'Unique

data Lit where
   NumLit :: Double -> Lit
   PosLit :: Position -> Lit
   IxLit :: ActionIndex -> Lit
   deriving (Show, Eq, Ord)

data BinOp = And | Or
  deriving (Show, Eq, Ord)

data TypeError
  = UnificationFail Type Type
  | InfiniteType TVar Type
  | UnboundVariable String

newtype Program = Program [Expr]

data ExprF a =
    VarF Var
    | IsF a
    | LetF Var a a
    | AppF a a
    | OpF BinOp a a
    | LitF Lit
    | ActionIxF ActionIndex
    | ListF [a]
    | PredF a


deriving instance Show a => Show (ExprF a)
deriving instance Functor ExprF
deriving instance Foldable ExprF
deriving instance Traversable ExprF
deriving instance Eq a => Eq (ExprF a)
deriving instance Ord a => Ord (ExprF a)

type Expr = Fix ExprF

newtype TVar = TV String
  deriving (Show, Eq, Ord)

data Type
  = TVar TVar
  | TCon String
  | TArr Type Type
  deriving (Show, Eq, Ord)

typeInt, typeBool :: Type
typeInt  = TCon "Int"
typeBool = TCon "Bool"

data Scheme = Forall [TVar] Type

newtype TypeEnv = TypeEnv { _env :: M.Map Var Scheme }

extend :: TypeEnv -> (Var, Scheme) -> TypeEnv
extend (TypeEnv env) (x, sig) = TypeEnv $ M.insert x sig env

restrict :: TypeEnv -> Var -> TypeEnv
restrict (TypeEnv env) var = TypeEnv $ M.delete var env

initUnique :: Unique
initUnique = Unique 0

type Infer a = ExceptT TypeError (State Unique) a

closeOver :: (Subst, Type) -> Scheme
closeOver = undefined

runInfer :: Infer (Subst, Type) -> Either TypeError Scheme
runInfer m = case evalState (runExceptT m) initUnique of
  Left err  -> Left err
  Right res -> Right $ closeOver res

freeVars :: Expr -> Set Var
freeVars = cata algFreeVars
  where
    algFreeVars :: Base Expr (Set Var) -> Set Var
    algFreeVars = \case
                VarF v -> S.singleton v
                IsF vs -> vs
                LetF name vsLet vsExpr -> S.delete name $ vsLet <> vsExpr
                AppF vs1 vs2 -> vs1 <> vs2
                OpF _ vs1 vs2 -> vs1 <> vs2
                LitF _ -> S.empty
                ActionIxF _ -> S.empty
                ListF vs -> fold vs
                PredF vs -> vs

type Subst = M.Map TVar Type

nullSubst :: Subst
nullSubst = M.empty

composeSubst :: Subst -> Subst -> Subst
composeSubst s1 s2 = M.map (apply s1) s2 `M.union` s2

class Substitutable a where
  apply :: Subst -> a -> a
  ftv   :: a -> S.Set TVar

instance Substitutable Type where
  apply s t@(TVar var) = M.findWithDefault t var s
  apply _ t@(TCon _) = t
  apply s (TArr argTy resTy) = TArr (apply s argTy) (apply s resTy)

  ftv (TVar var) = S.singleton var
  ftv (TCon _) = S.empty
  ftv (TArr l r) = ftv l <> ftv r

instance Substitutable Scheme where
  apply s (Forall as t) = Forall as $ apply s' t
    where s' = foldr M.delete s as

  ftv (Forall as t) = ftv t `S.difference` S.fromList as

instance Substitutable a => Substitutable [a] where
  apply s = fmap (apply s)

  ftv = foldMap ftv

instance Substitutable TypeEnv where
  apply s (TypeEnv env) = TypeEnv $ M.map (apply s) env

  ftv (TypeEnv env) = foldMap ftv env

letters :: [String]
letters = [1..] >>= flip replicateM ['a'..'z']

fresh :: Infer Type
fresh = TVar . TV . (letters !!) <$> (count <<+= 1)
  -- oldCount <- count <<+= 1
  -- return $ TVar $ TV (letters !! oldCount)

occursCheck :: Substitutable a => TVar -> a -> Bool
occursCheck var subable = var `S.member` ftv subable

unify :: Type -> Type -> Infer Subst
unify (l `TArr` r) (l' `TArr` r') = do
  sl <- unify l l'
  sr <- unify (apply sl r) (apply sl r')
  return $ composeSubst sl sr
unify (TCon a) (TCon b) | a == b = return nullSubst
unify (TVar a) t = if occursCheck a t
                   then throwError $ InfiniteType a t
                   else return $ M.singleton a t
unify t (TVar b) = if occursCheck b t
                   then throwError $ InfiniteType b t
                   else return $ M.singleton b t
unify t1 t2 = throwError $ UnificationFail t1 t2

-- Get new variable names for each quantifying variables in the scheme
instantiate ::  Scheme -> Infer Type
instantiate (Forall as t) = do
  as' <- mapM (const fresh) as
  let s = M.fromList $ zip as as'
  return $ apply s t

generalise :: TypeEnv -> Type -> Scheme
generalise env t = Forall as t
  where as = S.toList $ ftv t `S.difference` ftv env

infer :: TypeEnv -> Expr -> Infer (Subst, Type)
infer env (unfix -> expr) = case expr of {}
  

infer' :: TypeEnv -> ExprF (Fix ExprF) -> Infer (Subst, Type)
infer' env expr = undefined

--           | TNumber
--           | TString

-- deriving instance Show Type

-- data Constraint = EqualityConstraint Type Type
--     deriving Show

-- data TypeResult = TypeResult {
--     constraints :: [Constraint],
--     assumptions :: M.Map String [Type]
-- }

-- deriving instance Show TypeResult

-- instance Semigroup TypeResult where
--     a <> b = TypeResult {
--                              constraints = constraints a `mappend` constraints b,
--                              assumptions = assumptions a `mappend` assumptions b
--                            }

-- instance Monoid TypeResult where
--     mempty = TypeResult {
--                constraints = mempty,
--                assumptions = mempty
--              }
--     mappend = (<>)

-- data TypeState t m = TypeState {
--       varId :: Int,
--       memo :: M.Map t m
--     }

-- type TypeCheck t = State (TypeState t (Type, TypeResult)) (Type, TypeResult)

-- freshVarId :: State (TypeState t m) Type
-- freshVarId = do
--   v <- gets varId
--   modify $ \s -> s { varId = succ v }
--   return $ TVar v

-- memoizedTC :: Ord c => (c -> TypeCheck c) -> c -> TypeCheck c
-- memoizedTC f c = gets memo >>= maybe memoize return . M.lookup c where
--     memoize = do
--       r <- f c
--       modify $ \s -> s { memo = M.insert c r $ memo s }
--       return r

-- cofreeMu :: Functor f => Fix f -> Cofree f ()
-- cofreeMu (Fx f) = () :< fmap cofreeMu f
