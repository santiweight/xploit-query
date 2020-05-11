{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Query
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
  )
where

import Control.Monad.Free
import Control.Monad.Free.TH
import Data.Map
import Poker.Base
import Poker.Game.Internal
import Prelude

data QueryF a
  = Next (PlayerAction -> a)
  | NextThat ActionIx (PlayerAction -> a)
  | GetPotSize (Double -> a)
  | StackSizes (Map Position Double -> a)
  | Hands (Map Position Hand -> a)
  | Board (Board -> a)
  | ToAct ([Position] -> a)
  | Accumulate String PlayerAction a
  | Stop a
  deriving (Functor)

type Query = Free QueryF

$(makeFree ''QueryF)
