{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoImplicitPrelude #-}


module Poker.Filter.Eval.Query where

import           Data.Map
import           Poker.Base
import           Poker.Game.Types
import           Prelude
import           Polysemy

data Query g m a where
  Next ::Query g m (PlayerAction g)
  NextDeal ::Query g m DealerAction
  NextThat ::ActionIx g -> Query g m (PlayerAction g)
  GetPotSize ::Query g m (PotSize g)
  GetState ::Query g m (GameState g)
  StackSizes ::Query g m (Map Position Double -> a)
  GetStack ::Position -> Query g m g
  GetHolding ::Position -> Query g m Holding
  GetNextToAct ::Query g m Position
  Hands ::Query g m (Map Position (Hand g))
  Board ::Query g m Board
  ToAct ::Query g m [Position]
  Accumulate ::String -> PlayerAction g -> Query g m ()
  Stop ::Query g m ()

$(makeSem ''Query)
