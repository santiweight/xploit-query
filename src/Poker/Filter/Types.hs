{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Types
  ( SingQVal(..)
  , (%~)
  , QVal (..)
  , (:~:) (..)
  , FilterPred
  , Decision (..)
  , Typ (..)
  , TVar (..)
  , Scheme (..)
  )
  where

import Data.Text
import Data.Void (Void)
import Poker.Base
import Poker.Filter.Query
import Prelude

data SingQVal a where
  SDouble :: SingQVal Double
  SBool :: SingQVal Bool
  SString :: SingQVal String
  SQuery :: SingQVal a -> SingQVal (Query a)
  SIndex :: SingQVal ActionIx
  SFun :: SingQVal a -> SingQVal b -> SingQVal (a -> b)
  SAction :: SingQVal PlayerAction
  SPosition :: SingQVal Position
  SList :: SingQVal a -> SingQVal [a]
  SPredable :: SingQVal FilterPred
  SPoly :: SingQVal a
  SIx :: SingQVal ActionIx
  SUnit :: SingQVal ()

data QVal where
  Val :: SingQVal a -> a -> QVal

deriving instance Show (SingQVal a)

instance Show QVal where
  show (Val SAction actVal) = "(QVal: " ++ show actVal ++ ")"
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
_ %~ _ = Refuted $ \case {} -- FIXME

data (:~:) :: k -> k -> * where
  Refl :: a :~: a

data Decision a = Proved a | Refuted (a -> Void)
