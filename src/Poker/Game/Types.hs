{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PolyKinds #-}

module Poker.Game.Types where

import           Control.Lens                   ( makeLenses
                                                , makePrisms
                                                )
import           Data.Map                       ( Map )
import           Poker.Base                     (Stake, PotSize,  Action
                                                , BetAction
                                                , Board
                                                , DealerAction
                                                , Holding
                                                , Network
                                                , Player
                                                , Position
                                                , Seat
                                                )

newtype BigBlinds = BigBlinds Double deriving (Show, Eq, Ord)

deriving instance Num BigBlinds

data GameType = Game

data GameState g = GameState
  { _potSize             :: PotSize g
  , _stateBoard          :: Board
  , _stateNetwork        :: Network
  , _stateStakes         :: Stake
  , _gameID              :: Int
  , _stateHandText       :: String
  , _aggressor           :: Maybe Position
  , _lastStreetAggressor :: Maybe Position
                           -- The following data members should stay in GameState
  , _toActQueue          :: [Position]
  , _pastActions         :: [Action g]
  , _futureActions       :: [Action g]
  , _playerMap           :: Map Seat (Player g)
  , _seatMap             :: Map Position Seat
  , _streetInvestments   :: Map Position g
  , _activeBet           :: Maybe (ActionFaced g)
  }
deriving instance Show a => Show (GameState a)
deriving instance Eq a => Eq (GameState a)
deriving instance Functor GameState

data ActionFaced t = ActionFaced
  { _betType     :: BetType
  , _amountFaced :: t
  }
  deriving (Show, Read, Ord, Eq, Functor)

data BetType = PostB | OneB | TwoB | ThreeB | FourB
             | FiveB | SixBet | SevenBet | EightBet
             | NineBet | TenBet | ElevenBet | TwelveBet
             | ThirtBet | FourtB | FiftBet | SixtBet
             | SeventBet | EighttB | NinetBet
  deriving (Show, Read, Ord, Eq, Enum)

data GameError g = PlayerNotFound
               | SeatNotFound Position (Action g)
               | NegativePlayerStack (Action g)
               | IncorrectDeal DealerAction Board
               | NegativePotSize
               | WrongPlayerActed { _expectedPosition :: Position
                                  , _actualPosition :: Position
                                  }
               | NoPlayersInQueue
               | CustomError String
  deriving (Show, Eq, Functor)

data GameErrorBundle g = GameErrorBundle
  { _bundleError :: GameError g
  , _bundleState :: GameState g
  }

deriving instance Show a => Show (GameErrorBundle a)
deriving instance Eq a => Eq (GameErrorBundle a)
deriving instance Functor GameErrorBundle

data EvalState t = EvalState
  { _nextActions :: [Action t]
  , _accRanges   :: Map String (ActionRange t)
  , _handState   :: GameState t
  }

type ActionRange t = Map Holding [BetAction t]

makeLenses 'EvalState
makeLenses ''GameError
makeLenses ''ActionFaced
makePrisms ''GameError
makeLenses ''GameErrorBundle
makeLenses ''GameState
