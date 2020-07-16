{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Query
  ( Query,
    QueryF (..),
    next,
    nextThat,
    getPotSize,
    stackSizes,
    hands,
    board,
    toAct,
    accumulate,
    stop,
    getHolding,
    getNextToAct,
    getStack
  )
where

import Control.Monad.Free
import Control.Monad.Free.TH
import Control.Monad.Trans.Free (FreeT)
import Data.Map
import "poker-base" Poker.Base
import Prelude

data QueryF a
  = Next (PlayerAction -> a)
  | NextThat ActionIx (PlayerAction -> a)
  | GetPotSize (Double -> a)
  | StackSizes (Map Position Double -> a)
  | GetStack Position (Double -> a)
  | GetHolding Position (Holding -> a)
  | GetNextToAct (Position -> a)
  | Hands (Map Position Hand -> a)
  | Board (Board -> a)
  | ToAct ([Position] -> a)
  | Accumulate String PlayerAction a
  | Stop
  deriving (Functor)

type Query = FreeT QueryF []

$(makeFree ''QueryF)
