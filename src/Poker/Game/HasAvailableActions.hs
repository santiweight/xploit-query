{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE ViewPatterns #-}
module Poker.Game.HasAvailableActions where

import Control.Monad.State
import Poker.Game.Types (GameState(GameState))
import Poker.Types (Position)
import Poker.Types (IxRange(..))
import Poker.Game.Internal
import Control.Lens ( use, _Just, preuse )
import Poker.Game.Internal (streetInvestments)
import Poker.Base
import Poker.Game.Internal (stateStakes)
import Control.Lens.At (At(at))
import Control.Lens.Combinators (non)
import Poker.Game.Bovada
import Control.Monad.Except (MonadError)
import Poker.Game.Bovada (getSeatStack)

class HasAvailableActions b where
  getAvailableActions :: (MonadState (GameState b) m, MonadError (GameErrorBundle b) m) => m (Maybe (Position, [BetAction (IxRange b)]))

instance HasAvailableActions BetSize where
  getAvailableActions :: (MonadState (GameState BetSize) m, MonadError (GameErrorBundle BetSize) m) => m (Maybe (Position, [BetAction (IxRange BetSize)]))
  getAvailableActions =
    use toActQueue >>= \case
    []             -> pure Nothing
    (toActPos : _) -> do
      seatStack :: BetSize <- getSeatStack =<< getSeat toActPos undefined
      streetInv :: BetSize <- use $ streetInvestments . at toActPos . non 0
      stake :: BetSize             <- getStake <$> use stateStakes
      preuse (activeBet . _Just . amountFaced) >>= \case
        Nothing -> pure $ Just
          ( toActPos
          , [ Check
            , AllIn $ ExactlyRn seatStack
            , Bet (BetweenRn stake (seatStack - (1 / 100)))
            ]
          ) -- [AllIn seatStack, Bet (getPossibleBet seatStack), Check, CheckTimeOut]
        Just ((+ negate streetInv) -> amountFaced) ->
          pure . Just . (toActPos, ) $ if amountFaced == 0
            then
              [ Check
              , Raise (ExactlyRn 0) (BetweenRn (amountFaced * 2) seatStack)
              ]
            else
              case seatStack `compare` amountFaced of
              LT -> [AllIn $ ExactlyRn seatStack, Fold]
              EQ -> [AllIn $ ExactlyRn seatStack, Fold]
              GT -> if seatStack <= amountFaced * 2
                then
                  [ AllInRaise (ExactlyRn 0) (ExactlyRn (seatStack + streetInv))
                  , Call $ ExactlyRn amountFaced
                  , Fold
                  ]
                else
                  [ Raise (ExactlyRn 0)
                          (BetweenRn (amountFaced * 2) (seatStack - 0.01))
                  , AllInRaise (ExactlyRn 0) (ExactlyRn (seatStack + streetInv))
                  , Call $ ExactlyRn amountFaced
                  , Fold
                  ]