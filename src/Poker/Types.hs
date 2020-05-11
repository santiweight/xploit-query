module Poker.Types
  ( Action (..)
  , TableActionValue (..)
  , DealerAction (..)
  , TableAction (..)
  , PlayerActionValue (..)
  , PlayerAction (..)
  , IsHero (..)
  , Card (..)
  , Rank (..)
  , Suit (..)
  , Shape (..)
  , Combo (..)
  , Position (..)
  , Hand (..)
    , handID
    , handNetwork
    , handStakes
    , handPlayerMap
    , handSeatMap
    , handActions
    , handText
  , Deck
  , ActionIx (..)
  , IxRange (..)
  , Player (..)
    , name
    , playerPosition
    , playerHolding
    , stack
    , seat
  , Holding (..)
  , ShapedHand (..)
  , Network (..)
  , Seat
  , IsAction (..)
  ) where

import Control.Lens
import Data.Aeson.TH (defaultOptions, deriveJSON)
import Data.Data
import Data.Map (Map)

data PlayerActionValue
  = Call Double
  | Raise
      { amountRaised :: Double,
        raisedTo :: Double
      }
  | AllInRaise
      { amountRaisedAI :: Double,
        raisedAITo :: Double
      }
  | Bet Double
  | AllIn Double
  | Fold
  | FoldTimeout
  | Check
  | CheckTimeOut
  | OtherAction -- TODO remove
  deriving (Read, Show, Eq, Ord)

class IsAction a where
  toAction :: a -> Action

instance IsAction PlayerAction where
  toAction = MkPlayerAction

instance IsAction TableAction where
  toAction = MkTableAction

instance IsAction DealerAction where
  toAction = MkDealerAction

data PlayerAction
  = PlayerAction
      { position :: Position,
        action :: PlayerActionValue,
        isHero :: IsHero
      }
  deriving (Read, Show, Eq, Ord)


data Action
  = MkPlayerAction PlayerAction
  | MkDealerAction DealerAction
  | MkTableAction TableAction
  deriving (Read, Show, Eq, Ord)

data Position = UTG | UTG1 | UTG2 | BU | SB | BB
  deriving (Read, Show, Enum, Eq, Ord, Data, Typeable)

data TableAction
  = TableAction Position TableActionValue
  | UnknownAction
  deriving (Read, Show, Eq, Ord)

data TableActionValue
  = Post Double
  | PostDead Double
  | Leave
  | Deposit Double
  | Enter
  | SitOut
  | SitDown
  | Showdown [Card] String
  | Muck [Card] String
  | Rejoin
  | Return Double
  | Result Double
  deriving (Read, Show, Ord, Eq)

-- TODO Fix the below to become the above
data DealerAction
  = PlayerDeal
  | FlopDeal (Card, Card, Card)
  | TurnDeal Card
  | RiverDeal Card
  deriving (Read, Show, Eq, Ord)

data IsHero = Hero | Villain
  deriving (Read, Show, Eq, Ord)

data IxRange
  = AnyRn
  | BetweenRn Double Double
  | AboveRn Double
  | BelowRn Double
  deriving (Show, Eq, Ord)

data ActionIx
  = AnyIx
  | RaiseIx IxRange
  | AllInIx IxRange
  | BetIx IxRange
  | RaiseOrAllInIx IxRange
  | CheckIx
  | CallIx
  | FoldIx
  | LeaveIx
  deriving (Show, Eq, Ord)

                 -- | SitOutIndex
                 -- | DealerActionIndex DealerAction
                 -- | ShowdownIndex
                 -- | ResultIndex
                 -- | AnyBetOrAllInIndex
                 -- | AnyRaiseOrRaiseAIIndex

data Suit = Club | Diamond | Heart | Spade
  deriving (Enum, Eq, Ord)

data Rank = Two | Three | Four
          | Five | Six | Seven | Eight | Nine | Ten
          | Jack | Queen | King | Ace
    deriving (Enum, Eq, Ord)

data Card
  = Card
      { rank :: Rank,
        suit :: Suit
      }
  deriving (Eq)

data Network = Bovada | PokerStars | Unknown
  deriving (Read, Show, Enum, Eq, Ord)

data Holding
  = Holdem Card Card
  deriving (Read, Eq, Ord)

newtype Combo = HoldEm (Card, Card)
  deriving (Eq, Ord)

data ShapedHand = ShapedHand (Rank, Rank) Shape
  deriving (Show, Read, Eq, Ord)

data Shape = Offsuit | Suited | Pair
  deriving (Read, Eq, Ord, Enum)

data Player
  = Player
      { _name :: Maybe String,
        _playerPosition :: Maybe Position,
        _playerHolding :: Maybe Combo,
        _stack :: Double,
        _seat :: Seat
      }
  deriving (Show, Eq)

data Hand
  = Hand
      { _handID :: Int,
        _handNetwork :: Network,
        _handStakes :: Double,
        _handPlayerMap :: Map Seat Player,
        _handSeatMap :: Map Position Seat,
        _handActions :: [Action],
        _handText :: String
      }
  deriving (Show)

type Seat = Int -- Constrain to 1<->9

type Deck = [Card]

{- Instances -}

instance Show Suit where
  show Club = "c"
  show Diamond = "d"
  show Heart = "h"
  show Spade = "s"

instance Read Suit where
  readsPrec _ ('c' : cs) = return (Club, cs)
  readsPrec _ ('d' : cs) = return (Diamond, cs)
  readsPrec _ ('h' : cs) = return (Heart, cs)
  readsPrec _ ('s' : cs) = return (Spade, cs)
  readsPrec _ str = error $ "Expected Suit string; instead found: " ++ str

instance Show Rank where
  show Two = "2"
  show Three = "3"
  show Four = "4"
  show Five = "5"
  show Six = "6"
  show Seven = "7"
  show Eight = "8"
  show Nine = "9"
  show Ten = "T"
  show Jack = "J"
  show Queen = "Q"
  show King = "K"
  show Ace = "A"

instance Read Rank where
  readsPrec _ ('2' : cs) = return (Two, cs)
  readsPrec _ ('3' : cs) = return (Three, cs)
  readsPrec _ ('4' : cs) = return (Four, cs)
  readsPrec _ ('5' : cs) = return (Five, cs)
  readsPrec _ ('6' : cs) = return (Six, cs)
  readsPrec _ ('7' : cs) = return (Seven, cs)
  readsPrec _ ('8' : cs) = return (Eight, cs)
  readsPrec _ ('9' : cs) = return (Nine, cs)
  readsPrec _ ('T' : cs) = return (Ten, cs)
  readsPrec _ ('J' : cs) = return (Jack, cs)
  readsPrec _ ('Q' : cs) = return (Queen, cs)
  readsPrec _ ('K' : cs) = return (King, cs)
  readsPrec _ ('A' : cs) = return (Ace, cs)
  readsPrec _ str = error $ "Expected Rank string; instead found: " ++ str

instance Read Card where
  readsPrec _ cs = do
    (rank, rest) <- reads cs
    (suit, remainder) <- reads rest
    return (Card rank suit, remainder)

instance Show Card where
  show Card{rank=r, suit=s} = show r ++ show s

instance Ord Card where
  compare c1 c2 = compare (rank c1, suit c1) (rank c2, suit c2)

instance Enum Card where
      toEnum n | n <= 51 = let (v,s) = n`divMod`4 in Card (toEnum v) (toEnum s)
               | otherwise = error ""
      fromEnum c = fromEnum (rank c) * 4 + fromEnum (suit c)

instance Show Holding where
  show (Holdem card1 card2) = show card1 ++ show card2

instance Show Combo where
  show (HoldEm (card1, card2)) = show card1 ++ show card2

instance Read Combo where
  readsPrec _ cs = do
    (c1, rest) <- reads cs
    (c2, remainder) <- reads rest
    if c1 == c2
      then error "Exception: no parse; both cards are the same"
      else return (HoldEm (c1, c2), remainder)

instance Show Shape where
  show Offsuit = "o"
  show Suited = "s"
  show Pair = ""

{- Lenses -}

makeLenses ''Player
makeLenses ''Hand

{- JSON Derivations -}

deriveJSON defaultOptions ''DealerAction
deriveJSON defaultOptions ''PlayerActionValue
deriveJSON defaultOptions ''IxRange
deriveJSON defaultOptions ''ActionIx
deriveJSON defaultOptions ''Card
deriveJSON defaultOptions ''Rank
deriveJSON defaultOptions ''Suit
deriveJSON defaultOptions ''Position
