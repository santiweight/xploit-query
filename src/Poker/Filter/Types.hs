{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UnicodeSyntax #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE LiberalTypeSynonyms #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ConstraintKinds #-}

module Poker.Filter.Types
  ( SingQVal(..)
  , (%~)
  , QVal(..)
  , (:~:)(..)
  , FilterPred
  , Decision(..)
  , Var(..)
  , K(..)
  , EvalEnv(..)
  , EvalErr(..)
  )
  where

import Prelude
import Poker.Filter.Base
import Poker.Base
import Data.Text
import Text.Show.Deriving
import Data.Data (Data(..), Typeable(..))
import           Data.Kind                      ( Constraint )
import           Data.Void                      ( Void )
import           Data.Map.Lazy                  ( Map )
import           Polysemy
import Polysemy.Fail
import Polysemy.State
import Polysemy.Error
import Poker.Filter.Query

type EvalEnv = Map Var QVal

data EvalErr = EnvLookupErr Var
             | EvalErr
    deriving Show

newtype Var = Var { _var :: String }
    deriving (Show, Eq, Data, Typeable, Ord)

newtype K a b = K { unK :: a }
    deriving (Functor, Show)

data SingQVal a where
    SDouble :: SingQVal Double
    SBool :: SingQVal Bool
    SString :: SingQVal String
    SQuery :: SingQVal a -> SingQVal (Query a)
    SIndex :: SingQVal ActionIndex
    SFun :: SingQVal a -> SingQVal b -> SingQVal (a -> b)
    SAction :: SingQVal PlayerAction
    SPosition :: SingQVal Position
    SList :: SingQVal a -> SingQVal [a]
    SPredable :: SingQVal FilterPred
    SPoly :: SingQVal a

data Range = Any
            | Between Double Double
            | Above Double
            | Below Double

data PlayerActionTy = SFold
    | SBet
    | SAllIn
    | SAny

data PlayerIx = MkPlayerIx PlayerActionTy Range

data ActionIx =
    TableIx
    | PlayerIx PlayerIx

class Ix a where
    ix :: a -> ActionIx

instance Ix PlayerIx where ix = PlayerIx
-- instance Ix TableIx where ix = TableIx

indexEnv :: [(Text, ActionIx)]
indexEnv = [ ("table", TableIx)
           , ("player", ix anyPlayerAct)]
    where
        anyPlayerAct = MkPlayerIx SAny Any

data QVal where
    Val :: SingQVal a -> a -> QVal

deriving instance Show (SingQVal a)
instance Show QVal where
    show (Val SAction actVal) = "(QVal: " ++ show actVal ++ ")"
    show (Val sing a) = "Val of type " ++ show sing


type FilterPred = PlayerAction -> Bool

newtype TVar = TVar Text

data Typ = VarTy TVar
         | LitTy
         | FunTy Typ Typ
         | ParseMTy Typ

data Scheme = Forall [TVar] Typ

pattern (:→) :: Typ -> Typ -> Typ
pattern (:→) ty1 ty2 = FunTy ty1 ty2

(⇾) :: Typ -> Typ -> Typ
(⇾) = FunTy

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