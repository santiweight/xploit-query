{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}


module Poker.Filter.Eval.Query where

import Control.Monad.Free ( liftF, MonadFree )
import Control.Monad.Free.TH ( makeFree )
import Control.Monad.Trans.Free (FreeT)
import Data.Map ( Map )
import Poker.Base
    ( ActionIx,
      Holding,
      Board,
      DealerAction,
      Hand,
      PlayerAction,
      Position )
import Poker.Game.Types ( GameState )
import Prelude
import Control.Monad.Reader.Class ( MonadReader(ask, local) )

data QueryF a
  = Next (PlayerAction -> a)
  | NextDeal (DealerAction -> a)
  | NextThat ActionIx (PlayerAction -> a)
  | GetPotSize (Double -> a)
  | GetState (GameState -> a)
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

instance {-# Overlapping #-}
         Monad m => MonadReader GameState (FreeT QueryF m) where
  ask = getState
  local = undefined -- FIXME