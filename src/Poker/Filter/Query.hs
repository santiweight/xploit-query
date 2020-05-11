{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

module Poker.Filter.Query
    ( Query(..)
    , QueryF(..)
    , next
    , nextThat
    , stop
    )
    where

import Prelude
import Poker.Base
import Data.Map
import Poker.Game.Internal
import           Control.Monad.Free.TH
import Control.Monad.Free
import Text.Show.Deriving
import Data.Eq.Deriving
import Polysemy

data QueryF a =
    Next  (PlayerAction -> a)
    | NextThat ActionIx (PlayerAction -> a)
    | PotSize (Double -> a)
    | StackSizes (Map Position Double -> a)
    | Hands (Map Position Hand -> a)
    | Board (Board -> a)
    | ToAct ([Position] -> a)
    | Accumulate String PlayerAction a
    | Stop a
    deriving (Functor)

type Query = Free QueryF

$(makeFree ''QueryF)
