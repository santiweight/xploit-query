{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Poker.Filter.Eval.AST.Types where

import Data.Text
import Data.Void (Void)
import Poker.Base
import Poker.Filter.Eval.Query
import Prelude

data SingQVal a where
  SDouble :: SingQVal Double
  SBool :: SingQVal Bool
  SString :: SingQVal String
  SQuery :: SingQVal a -> SingQVal (Query a)
  SIx :: SingQVal ActionIx
  SIsHero :: SingQVal IsHero
  SIxRn :: SingQVal IxRange
  SFun :: SingQVal a -> SingQVal b -> SingQVal (a -> b)
  SAction :: SingQVal PlayerAction
  SPosition :: SingQVal Position
  SList :: SingQVal a -> SingQVal [a]
  -- SPredable :: Pred a => SingQVal a
  -- SPredable :: SingQVal FilterPred
  SPoly :: SingQVal a
  SUnit :: SingQVal ()

data QVal where
  Val :: SingQVal a -> a -> QVal

deriving instance Show (SingQVal a)

instance Show QVal where
  show (Val SAction actVal) = "(QVal: " ++ show actVal ++ ")"
  show (Val (SList sTy) listVal) = "(QVal: [" ++ unpack (intercalate "," (pack <$> fmap (show . Val sTy) listVal)) ++ "])"
  show (Val sing _) = "Val of type " ++ show sing

type FilterPred = PlayerAction -> Bool

newtype TVar = TVar Text

data Typ
  = VarTy TVar
  | LitTy
  | FunTy Typ Typ
  | ParseMTy Typ

data Scheme = Forall [TVar] Typ

(%~) :: SingQVal a -> SingQVal b -> Decision (a :~: b)
SPosition %~ SPosition = Proved Refl
SAction %~ SAction = Proved Refl
SBool %~ SBool = Proved Refl
SString %~ SString = Proved Refl
SQuery a %~ SQuery b = case a %~ b of
                          Proved Refl -> Proved Refl
                          Refuted _ -> Refuted $ \case {}
_ %~ _ = Refuted $ \case {} -- FIXME

data (:~:) :: k -> k -> * where
  Refl :: a :~: a

data Decision a = Proved a | Refuted (a -> Void)

-- | Var reference
newtype Var = V { _var :: String }
  deriving (Show, Eq, Ord)

