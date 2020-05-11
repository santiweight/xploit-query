{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Types
  ( SingQVal(..)
  , (%~)
  , QVal (..)
  , (:~:) (..)
  , FilterPred
  , Decision (..)
  , Var (..)
  , K (..)
  , EvalEnv
  , EvalErr (..)
  )
  where

import Data.Data (Data (..), Typeable)
import Data.Kind (Constraint)
import Data.Map.Lazy (Map)
import Data.Text
import Data.Void (Void)
import Poker.Base
import Poker.Filter.Query
import Text.Show.Deriving
import Prelude

type EvalEnv = Map Var QVal

data EvalErr
  = EnvLookupErr Var
  | EvalErr
  deriving (Show)

newtype Var = Var {_var :: String}
  deriving (Show, Eq, Data, Typeable, Ord)

newtype K a b = K {unK :: a}
  deriving (Functor, Show)

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

class Ix a where
  ix :: a -> ActionIx

data QVal where
  Val :: SingQVal a -> a -> QVal

deriving instance Show (SingQVal a)

instance Show QVal where
  show (Val SAction actVal) = "(QVal: " ++ show actVal ++ ")"
  show (Val sing a) = "Val of type " ++ show sing

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
_ %~ _ = Refuted $ \case {}

data (:~:) :: k -> k -> * where
  Refl :: a :~: a

data Satisfy (c :: * -> Constraint) where
  Satisfied :: c a => a -> Satisfy c

data Decision a = Proved a | Refuted (a -> Void)

$(deriveShow1 ''K)