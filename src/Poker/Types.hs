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
  , GameType (..)
  , IsAction (..)
  ) where

import Control.Lens
import Data.Aeson.TH (defaultOptions, deriveJSON)
import Data.Data
import Data.Text.Prettyprint.Doc
import Data.Map (Map)
import GHC.Generics
import Test.Tasty.QuickCheck
import Test.QuickCheck.Arbitrary.Generic

data GameType = Zone | Cash

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
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

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
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

data Action
  = MkPlayerAction PlayerAction
  | MkDealerAction DealerAction
  | MkTableAction TableAction
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

data Position = UTG | UTG1 | UTG2 | BU | SB | BB
  deriving (Read, Show, Enum, Eq, Ord, Data, Typeable, Generic)

data TableAction
  = TableAction Position TableActionValue
  | UnknownAction
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

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
  deriving (Read, Show, Ord, Eq, Data, Typeable, Generic)

-- TODO Fix the below to become the above
data DealerAction
  = PlayerDeal
  | FlopDeal (Card, Card, Card)
  | TurnDeal Card
  | RiverDeal Card
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

data IsHero = Hero | Villain
  deriving (Read, Show, Eq, Ord, Data, Typeable, Generic)

data IxRange
  = AnyRn
  | BetweenRn Double Double
  | AboveRn Double
  | BelowRn Double
  deriving (Show, Eq, Ord, Data, Typeable, Generic)

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
  deriving (Show, Eq, Ord, Data, Typeable, Generic)

                 -- | SitOutIndex
                 -- | DealerActionIndex DealerAction
                 -- | ShowdownIndex
                 -- | ResultIndex
                 -- | AnyBetOrAllInIndex
                 -- | AnyRaiseOrRaiseAIIndex

data Suit = Club | Diamond | Heart | Spade
  deriving (Enum, Eq, Ord, Data, Typeable, Generic)

data Rank = Two | Three | Four
          | Five | Six | Seven | Eight | Nine | Ten
          | Jack | Queen | King | Ace
    deriving (Enum, Eq, Ord, Data, Typeable, Generic)

data Card
  = Card
      { rank :: Rank,
        suit :: Suit
      }
  deriving (Eq, Data, Typeable, Generic)

data Network = Bovada | PokerStars | Unknown
  deriving (Read, Show, Enum, Eq, Ord)

data Holding
  = Holdem Card Card
  deriving (Show, Eq, Ord)

data ShapedHand = ShapedHand (Rank, Rank) Shape
  deriving (Read, Eq, Ord)

data Shape = Offsuit | Suited | Pair
  deriving (Read, Eq, Ord, Enum)

data Player
  = Player
      { _name :: Maybe String,
        _playerPosition :: Maybe Position,
        _playerHolding :: Maybe Holding,
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

instance Show Shape where
  show = \case
    Offsuit -> "o"
    Pair -> ""
    Suited -> "s"

instance Show ShapedHand where
  show (ShapedHand (r1, r2) shp) = show r1 ++ show r2 ++ show shp

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
    (rank_, rest) <- reads cs
    (suit_, remainder) <- reads rest
    return (Card rank_ suit_, remainder)

instance Show Card where
  show Card{rank=r, suit=s} = show r ++ show s

instance Ord Card where
  compare c1 c2 = compare (rank c1, suit c1) (rank c2, suit c2)

instance Enum Card where
      toEnum n | n <= 51 = let (v,s) = n`divMod`4 in Card (toEnum v) (toEnum s)
               | otherwise = error ""
      fromEnum c = fromEnum (rank c) * 4 + fromEnum (suit c)

instance Read Holding where
  readsPrec _ cs = do
    (c1, rest) <- reads cs
    (c2, remainder) <- reads rest
    if c1 == c2
      then error "Exception: no parse; both cards are the same"
      else return (Holdem c1 c2, remainder)

instance Pretty Shape where
  pretty Offsuit = pretty "o"
  pretty Suited = pretty "s"
  pretty Pair = pretty ""

makeLenses ''Player
makeLenses ''Hand

deriveJSON defaultOptions ''DealerAction
deriveJSON defaultOptions ''PlayerActionValue
deriveJSON defaultOptions ''IxRange
deriveJSON defaultOptions ''ActionIx
deriveJSON defaultOptions ''Card
deriveJSON defaultOptions ''Rank
deriveJSON defaultOptions ''Suit
deriveJSON defaultOptions ''Position

instance Arbitrary Rank where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary Suit where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary Card where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary IsHero where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary Position where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary Action where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary PlayerActionValue where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary TableActionValue where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary PlayerAction where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary DealerAction where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary TableAction where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary ActionIx where
  arbitrary = genericArbitrary
  shrink = genericShrink

instance Arbitrary IxRange where
  arbitrary = genericArbitrary
  shrink = genericShrink
