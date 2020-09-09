{-# LANGUAGE RecordWildCards #-}

module Poker.Game.Types where

import Poker.Base
    ( Holding,
      Stake(Stake),
      Board(InitialTable),
      Hand(..),
      Player,
      Action,
      DealerAction,
      BetAction,
      Network,
      Seat,
      Position,
      listPosition,
      sortPreflop )
import qualified Data.Map as Map
import Data.Map (Map)
import Control.Lens ( makePrisms, makeLenses )
import GHC.Generics ( Generic )

handToState :: Hand -> GameState
handToState Hand {..} = GameState { _gameID              = _handID
                                  , _stateNetwork        = _handNetwork
                                  , _stateStakes         = Stake _handStakes
                                  , _pastActions         = []
                                  , _futureActions       = _handActions
                                  , _aggressor           = Nothing
                                  , _lastStreetAggressor = Nothing
                                  , _playerMap           = _handPlayerMap
                                  , _seatMap             = _handSeatMap
                                  , _potSize             = 0
                                  , _stateBoard          = InitialTable
                                  , _toActQueue          = sortPreflop listPosition
                                  , _stateHandText       = _handText
                                  , _streetInvestments   = Map.empty
                                  , _activeBet           = Nothing
                                  }

data GameState = GameState { _potSize :: Double
                           , _stateBoard :: Board
                           , _stateNetwork :: Network
                           , _stateStakes :: Stake
                           , _gameID :: Int
                           , _stateHandText :: String
                           , _aggressor :: Maybe Position
                           , _lastStreetAggressor :: Maybe Position
                           -- The following data members should stay in GameState
                           , _toActQueue :: [Position]
                           , _pastActions :: [Action]
                           , _futureActions :: [Action]
                           , _playerMap :: Map Seat Player
                           , _seatMap :: Map Position Seat
                           , _streetInvestments :: Map Position Double
                           , _activeBet :: Maybe ActionFaced
                           }
  deriving (Show, Eq, Ord, Generic)

data ActionFaced
  = ActionFaced
      { _betType :: BetType,
        _amountFaced :: Double
      }
  deriving (Show, Read, Ord, Eq, Generic)

data BetType = PostB | OneB | TwoB | ThreeB | FourB
             | FiveB | SixBet | SevenBet | EightBet
             | NineBet | TenBet | ElevenBet | TwelveBet
             | ThirtBet | FourtB | FiftBet | SixtBet
             | SeventBet | EighttB | NinetBet
  deriving (Show, Read, Ord, Eq, Enum, Generic)

data GameError = PlayerNotFound
               | SeatNotFound Position
               | NegativePlayerStack
               | IncorrectDeal DealerAction Board
               | NegativePotSize
               | WrongPlayerActed { _expectedPosition :: Position
                                  , _actualPosition :: Position
                                  }
               | NoPlayersInQueue
               | CustomError String
  deriving (Show, Eq, Ord, Generic)

data GameErrorBundle = GameErrorBundle { _bundleError :: GameError
                                       , _bundleState :: GameState }
  deriving (Show, Eq, Ord, Generic)

data EvalState
  = EvalState
      { _nextActions :: [Action],
        _accRanges :: Map String ActionRange,
        _handState :: GameState
      }

type ActionRange = Map Holding [BetAction]

makeLenses 'EvalState
makeLenses ''GameError
makeLenses ''ActionFaced
makePrisms ''GameError
makeLenses ''GameErrorBundle
makeLenses ''GameState