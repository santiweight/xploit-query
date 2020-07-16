{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RecordWildCards #-}
module Poker.Game.Internal
  ( Board (..)
  , GameState (..)
    , gameID
    , stateNetwork
    , playerMap
    , stateStakes
    , futureActions
    , pastActions
    , stateBoard
    , potSize
    , toActQueue
    , seatMap
    , stateHandText
  , GameError (..)
  , GameErrorBundle (..)
  , Stake (..)
  , Pretty (..)
  , fromBundleError
  , mkTestPlayer, mkTestAction
  , defState, defPlayer
  ) where

import "poker-base" Poker.Base

import Control.Lens hiding (Fold)

import qualified Data.Map as Map
import Data.List

import Control.Monad.IO.Class

{- Data Declarations -}

fromBundleError :: GameErrorBundle -> GameError
fromBundleError = _bundleError

defState :: GameState
defState = GameState { _gameID = 1
                     , _stateNetwork = Bovada
                     , _stateStakes = Stake 0.25
                     , _futureActions = [ mkTestAction UTG (Fold)
                                        , mkTestAction UTG1 (Call 0.5)
                                        ]
                     , _pastActions = []
                     , _playerMap = Map.fromList $
                                    [ (1, mkTestPlayer UTG "AhAd" 1)
                                    , (2, mkTestPlayer UTG1 "Ac4c" 2)
                                    , (3, mkTestPlayer UTG2 "KdTh" 3)
                                    , (4, mkTestPlayer BU "7h7d" 4)
                                    , (5, mkTestPlayer SB "6sTc" 5)
                                    , (6, mkTestPlayer BB "Jh5s" 6)
                                    ]
                     , _seatMap = Map.fromList $
                                  [ (UTG, 1)
                                  , (UTG1, 2)
                                  , (UTG2, 3)
                                  , (BU, 4)
                                  , (SB, 5)
                                  , (BB, 6)
                                  ]
                     , _potSize = 0
                     , _stateBoard = InitialTable
                     , _toActQueue = [ UTG
                                     , UTG1
                                     , UTG2
                                     , BU
                                     , SB
                                     , BB
                                     ]
                     , _stateHandText = ""
                     , _activeBet = Nothing
                     , _streetInvestments = Map.empty
                     }

mkTestAction :: Position -> BetAction -> Action
mkTestAction p v = toAction $ PlayerAction p v Hero

defPlayer :: Player
defPlayer = Player { _name = Nothing
                   , _playerPosition = Nothing
                   , _playerHolding = Nothing
                   , _stack = 25
                   , _seat = 1
                   }

mkTestPlayer :: Position -> String -> Seat -> Player
mkTestPlayer pos holding seat_ = defPlayer { _playerPosition = Just pos
                                          , _playerHolding = Just $ read holding
                                          , _seat = seat_
                                          }

infixr 4 +-+
(+-+) :: String -> String -> String
"" +-+ s = s
s +-+ "" = s
s +-+ t | last s == ' ' = s ++ t
        | head t == ' ' = s ++ t
s +-+ t = s ++ " " ++ t

{- Pretty Class -}

class Pretty a where
  prettyShow :: a -> String
  -- Pretty show as a MonadIO print
  prettyPrint :: MonadIO m => a -> m ()

-- Pretty show method for a game state
instance Pretty GameState where
  -- prettyShow :: GameState -> String
  prettyShow GameState {..} = unlines $
    [ concat [ "GameID ", show _gameID, " | ", show _stateNetwork ]
    , concat [ "Stakes: ", show $ getStake _stateStakes ]
    ] ++
    (fmap showPlayer $ Map.elems _playerMap) ++
    [ show _toActQueue
    , "Pot size is " <> show _potSize
    , showBoard _stateBoard
    ]
    where
      showPlayer Player {..} =
        let posStr = maybe "Sat Out" show _playerPosition
            _ = maybe "No Hand" show _playerHolding
        in concat [ "Seat ", show _seat, ", ", posStr, ": ", show _stack ]
      showBoard = \case
          InitialTable -> "INITIAL"
          PreFlopBoard rest -> showBoard rest +-+ "PREFLOP"
          FlopBoard (c1, c2, c3) rest -> showBoard rest +-+ "FLOP" +-+ show c1 +-+ show c2 +-+ show c3
          TurnBoard card rest -> showBoard rest +-+ "TURN" +-+ show card
          RiverBoard card rest -> showBoard rest +-+ "RIVER" +-+ show card

  -- TODO Make this an IO action instead of MonadIO
  -- prettyPrint :: MonadIO m => GameState -> m ()
  prettyPrint = liftIO . putStrLn . prettyShow


instance Pretty GameErrorBundle where
  prettyShow (GameErrorBundle e state) = unlines $
    [ "Encountered error: " <> show e
    , "While executing: " <> (show . head . view futureActions $ state)
    , "State prior to error:"
    , prettyShow state
    , ""
    , "Hand text was: "
    , view stateHandText state
    ]
  prettyPrint = liftIO . putStr . prettyShow

instance Pretty a => Pretty [a] where
  prettyShow = intercalate "," . fmap prettyShow
  prettyPrint = liftIO . putStr . prettyShow
