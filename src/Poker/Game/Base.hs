{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RecordWildCards #-}
module Poker.Game.Base
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
  , mkTestPlayer, mkTestAction
  , defState, defPlayer
  , handToState
  ) where

import Poker.Base hiding (_playerMap, _seatMap, prettyShow)

import Control.Lens hiding (Fold)

import qualified Data.Map as M
import           Data.Map (Map)

import Control.Monad.IO.Class

{- Data Declarations -}

data Board where
  RiverBoard :: Card -> Board -> Board
  TurnBoard :: Card -> Board -> Board
  FlopBoard :: (Card, Card, Card) -> Board -> Board
  PreFlopBoard :: Board -> Board
  InitialTable :: Board

newtype Stake = Stake { getStake :: Double }
  deriving (Read, Show)

instance Show Board where
  show InitialTable = "InitialBoard"
  show (PreFlopBoard _) = "PreFlop"
  show (FlopBoard (c1, c2, c3) _) = "Flop is: " ++ show c1 ++ show c2 ++ show c3
  show (TurnBoard card flop) = "Turn is: " ++ show card ++ show flop
  show (RiverBoard card flop) = "River is: " ++ show card ++ show flop

data GameError = PlayerNotFound
               | SeatNotFound Position
               | NegativePlayerStack
               | IncorrectDeal DealerActionValue Board
               | WrongPlayerActed { _expectedPosition :: Position
                                  , _actualPosition :: Position
                                  }
               | NoPlayersInQueue
  deriving (Show)

data GameErrorBundle = GameErrorBundle { _bundleError :: GameError
                                       , _bundleState :: GameState }
  deriving (Show)

data GameState = GameState { _gameID :: Int
                           , _stateNetwork :: Network
                           , _stateStakes :: Stake
                           , _pastActions :: [Action]
                           , _futureActions :: [Action]
                           , _playerMap :: Map Seat Player
                           , _seatMap :: Map Position Seat
                           , _potSize :: Double
                           , _stateBoard :: Board
                           , _toActQueue :: [Position]
                           , _stateHandText :: String
                           }
  deriving (Show)

{- Lenses -}
makeLenses ''GameState

{- Testing helpers -}

defState = GameState { _gameID = 1
                     , _stateNetwork = Bovada
                     , _stateStakes = Stake 0.25
                     , _futureActions = [ mkTestAction (Fold)
                                        , (mkTestAction (Call 0.5)) { position = UTG1 }
                                        ]
                     , _pastActions = []
                     , _playerMap = M.fromList $
                                    [ (1, mkTestPlayer UTG "AhAd" 1)
                                    , (2, mkTestPlayer UTG1 "Ac4c" 2)
                                    , (3, mkTestPlayer UTG2 "KdTh" 3)
                                    , (4, mkTestPlayer BU "7h7d" 4)
                                    , (5, mkTestPlayer SB "6sTc" 5)
                                    , (6, mkTestPlayer BB "Jh5s" 6)
                                    ]
                     , _seatMap = M.fromList $
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
                     }

mkTestAction v = PlayerAction UTG v Hero

defPlayer = Player { _name = Nothing
                   , _playerPosition = Nothing
                   , _playerHolding = Nothing
                   , _stack = 25
                   , _seat = 1
                   }

mkTestPlayer pos holding seat = defPlayer { _playerPosition = Just pos
                                          , _playerHolding = Just $ read holding
                                          , _seat = seat
                                          }

handToState :: Hand -> GameState
handToState Hand {..} = GameState { _gameID        = handID
                                  , _stateNetwork  = network
                                  , _stateStakes   = Stake stakes
                                  , _pastActions   = []
                                  , _futureActions = actions
                                  , _playerMap     = _handPlayerMap
                                  , _seatMap       = _handSeatMap
                                  , _potSize       = 0
                                  , _stateBoard    = InitialTable
                                  , _toActQueue    = sortPreflop listPosition
                                  , _stateHandText = _handText
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
    (fmap showPlayer $ M.elems _playerMap) ++
    [ show _toActQueue
    , "Pot size is " <> show _potSize
    , showBoard _stateBoard
    ]
    where
      showPlayer Player {..} =
        let posStr = maybe "Sat Out" show _playerPosition
            holdingStr = maybe "No Hand" show _playerHolding
        in concat [ "Seat ", show _seat, ", ", posStr, ": ", show _stack ]
      showBoard = \case
          InitialTable -> "INITIAL"
          PreFlopBoard _ -> "PREFLOP"
          FlopBoard (c1, c2, c3) _ -> "FLOP" +-+ go _stateBoard
          TurnBoard card rest -> "TURN" +-+ go _stateBoard
          RiverBoard card rest -> "RIVER" +-+ go _stateBoard
        where
          go = \case
            InitialTable -> ""
            FlopBoard (c1, c2, c3) _ -> show c1 +-+ show c2 +-+ show c3
            TurnBoard card rest -> show card +-+ go rest
            RiverBoard card rest -> show card +-+ go rest

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
