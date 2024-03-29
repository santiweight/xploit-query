{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Poker.Query.Eval.AST.Types where

import Data.Text ( Text, intercalate, pack, unpack )
import Poker
import Prelude
import Polysemy ( Sem )
import Poker.Game.Types (DealerAction, PlayerAction)
import Poker.Query.ActionIx
import Data.Void (Void)

data SingQVal g a r where
  SDouble :: SingQVal g r Double
  SBool :: SingQVal g r Bool
  SString :: SingQVal g r String
  SQuery :: SingQVal g r a -> SingQVal g r (Sem r a)
  SIx :: SingQVal g r (ActionIx g)
  SIsHero :: SingQVal g r IsHero
  SIxRn :: SingQVal g r (IxRange g)
  SFun :: SingQVal g r a -> SingQVal g r b -> SingQVal g r (a -> b)
  SAction :: SingQVal g r (PlayerAction g)
  SDealAction :: SingQVal g r DealerAction
  SPosition :: SingQVal g r Position
  SList :: SingQVal g r a -> SingQVal g r [a]
  -- SPredable :: Pred a => SingQVal a
  -- SPredable :: SingQVal FilterPred
  SPoly :: SingQVal g r a
  SUnit :: SingQVal g r ()

newtype QDouble = QDouble Double

-- genSingletons [''QDouble]

-- data SingDouble where
--   SDouble :: Sing SDouble

-- type instance Sing = SDouble

deriving instance Show (SingQVal game r a)

foo :: String
foo = show (SBool @Double)

data QVal g r where
  Val :: SingQVal g r a -> a -> QVal g r


instance Show g => Show (QVal g r) where
  show (Val SAction actVal) = "(QVal: " ++ show actVal ++ ")"
  show (Val (SList sTy) listVal) = "(QVal: [" ++ unpack (intercalate "," (pack <$> fmap (show . Val sTy) listVal)) ++ "])"
  show (Val s _) = "Val of type " ++ show s

type FilterPred g = PlayerAction g -> Bool

newtype TVar = TVar Text

data Typ
  = VarTy TVar
  | LitTy
  | FunTy Typ Typ
  | ParseMTy Typ

data Scheme = Forall [TVar] Typ

(%~) :: SingQVal game r a -> SingQVal game r b -> Decision (a :~: b)
SPosition %~ SPosition = Proved Refl
SAction %~ SAction = Proved Refl
SBool %~ SBool = Proved Refl
SString %~ SString = Proved Refl
SQuery a %~ SQuery b = case a %~ b of
                          Proved Refl -> Proved Refl
                          Refuted _ -> Refuted $ (\case Refl -> undefined) -- FIXME
_ %~ _ = Refuted $ (\case Refl -> undefined) -- FIXME

data (:~:) :: k -> k -> * where
  Refl :: a :~: a

data Decision a = Proved a | Refuted (a -> Void)

-- | Var reference
newtype Var = V { _var :: String }
  deriving (Show, Eq, Ord)

