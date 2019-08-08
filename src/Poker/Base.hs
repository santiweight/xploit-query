module Poker.Base
    (
      Hand(..)
    , Combo(..)
    , Shape(..)
    , ShapedHand(..)
    , newCombo
    , Player(..)
    , Deck
    , Action(..)
    , ActionValue(..)
    , DealerActionValue(..)
    , Card(..)
    , Suit(..)
    , Rank(..)
    , Position(..)
    , Network(..)
    , Holding
    , def
    , str_to_position_map, str_to_rank_map, str_to_suit_map, str_to_raise_action_map
    , str_to_bet_action_map, str_to_action_map
    , allShapedHands
    , listPosition, listRank, listSuit
    ) where

import Data.Default
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad

str_to_position_map = Map.fromList [ ("Big Blind", BB)
             , ("Small Blind", SB)
             , ("Dealer", BU)
             , ("UTG", UTG)
             , ("UTG+1", UTG_1)
             , ("UTG+2", UTG_2)
             ]

str_to_rank_map = Map.fromList [('2', Two),
 ('3', Three),
 ('4', Four),
 ('5', Five),
 ('6', Six),
 ('7', Seven),
 ('8', Eight),
 ('9', Nine),
 ('T', Ten),
 ('J', Jack),
 ('Q', Queen),
 ('K', King),
 ('A', Ace)]

str_to_suit_map = Map.fromList [('c', Club),
    ('h', Heart),
    ('s', Spade),
    ('d', Diamond)]

str_to_action_map = Map.fromList [("Folds", Fold)
    , ("Checks (timeout)", Check)
    , ("Checks (disconnect)", Check)
    , ("Checks", Check)
    , ("Leave(Auto)", Leave)
    , ("Enter(Auto)", Enter)
    , ("Seat sit out", Enter)
    , ("Folds (timeout)", FoldTimeout)
    , ("Folds (disconnect)", FoldTimeout)
    , ("Folds (auth)", FoldTimeout)
    ]

str_to_bet_action_map = Map.fromList
    [ ("Calls", Call)
    , ("Bets", Bet)
    , ("Posts", Post)
    , ("Posts dead chip", PostDead)
    , ("All-in", AllIn)
    , ("Return uncalled portion of bet", Return)
    , ("Table deposit", Deposit)
    , ("Hand result", Result)
    , ("Hand result-Side pot", Result)
    ]

str_to_raise_action_map = Map.fromList [("Raises", Raise)
                                       , ("All-in(raise)", AllInRaise)]

data Action = PlayerAction {position::Position, action::ActionValue}
            -- | PlayerTableAction TableAction
            | DealerAction DealerActionValue
    deriving (Read, Show)

data DealerActionValue = FlopDeal [Card]
                       | TurnDeal [Card]
                       | RiverDeal [Card]
    deriving (Read, Show)

instance Eq Action where
    action1 == action2 = action action1 == action action2

data ActionValue = Call Double
            | Raise {amt_from :: Double,
                     amt_to :: Double}
            | AllInRaise {amt_from :: Double,
                          amt_to :: Double}
            | Deposit Double
            | Bet Double
            | AllIn Double
            | Return Double
            | Result Double
            | Fold | FoldTimeout
            | Check | CheckTimeOut
            | Post Double | PostDead Double
            | Leave
            | Enter
            | SitOut
            | Showdown [Card] String
            deriving (Read, Show, Eq, Ord)


data Suit = Club | Diamond | Heart | Spade
     deriving (Enum, Eq, Ord)

instance Show Suit where
    show Club    = "c"
    show Diamond = "d"
    show Heart   = "h"
    show Spade   = "s"

instance Read Suit where
    readsPrec _ "c" = return (Club, "")
    readsPrec _ "d" = return (Diamond, "")
    readsPrec _ "h" = return (Heart, "")
    readsPrec _ "s" = return (Spade, "")
    readsPrec _ str = error $ "Expected Suit string; instead found: " ++ str

data Rank = Two | Three | Four
     | Five | Six | Seven | Eight | Nine | Ten
     | Jack | Queen | King | Ace
    deriving (Read, Enum, Eq, Ord)

instance Show Rank where
    show Two   = "2"
    show Three = "3"
    show Four  = "4"
    show Five  = "5"
    show Six   = "6"
    show Seven = "7"
    show Eight = "8"
    show Nine  = "9"
    show Ten   = "T"
    show Jack  = "J"
    show Queen = "Q"
    show King  = "K"
    show Ace   = "A"

data Card = Card {rank :: Rank,
                  suit :: Suit}
    deriving (Read, Eq)

instance Show Card where
    show Card{rank=r, suit=s} = show r ++ show s

instance Default Card where
    def = Card Two Club

instance Ord Card where
      compare c1 c2 = compare (rank c1, suit c1) (rank c2, suit c2)

instance Enum Card where
      toEnum n | n <= 51 = let (v,s) = n`divMod`4 in Card (toEnum v) (toEnum s)
               | otherwise = error ""
      fromEnum c = fromEnum (rank c) * 4 + fromEnum (suit c)

data Position = UTG | UTG_1 | UTG_2 | BU | SB | BB
    deriving (Read, Show, Enum, Eq, Ord)

data Network = Bovada | PokerStars | Unknown
    deriving (Read, Show, Enum, Eq, Ord)

data Holding = Holding [Card]
             | Holdem Card Card
    deriving (Read, Eq, Ord)

instance Show Holding where
    show (Holdem card1 card2) = show card1 ++ show card2

-- instance Default Player where
--   def = Player Nothing Nothing Nothing Nothing

allCards :: [Card]
allCards = reverse (take 52 (enumFrom (toEnum 0)))

listRank = listEnum :: [Rank]
listSuit = listEnum :: [Suit]
listPosition = listEnum :: [Position]

allCombos :: [Combo]
allCombos = reverse $ do
    rank1 <- listRank
    rank2 <- drop (fromEnum rank1) listRank
    suit1 <- listEnum
    suit2 <- case rank1 == rank2 of
                False  -> listSuit
                True -> drop (fromEnum suit1) listSuit
    guard (not $ rank1 == rank2 && suit1 == suit2)
    return $ newCombo [(Card rank1 suit1), (Card rank2 suit2)]

listEnum :: (Enum a) => [a]
listEnum = enumFrom (toEnum 0)

-- generateAllCombos (r:rs) (s:ss) = map (Holdem (Card r s) r ) ss
-- map (map Card (map (Card r) allSuits) allRanksdownfromr)

data Combo = HoldEm (Card, Card)
    deriving (Read, Eq, Ord)

instance Default Combo where
    def = HoldEm (Card Ace Heart, Card Ace Diamond)

instance Show Combo where
    show (HoldEm (card1, card2)) = show card1 ++ show card2

newCombo (card1:card2:[]) | card1 == card2 = error "Cards in combo must be different"
                     | otherwise      = case card1 > card2 of
                                                True  -> HoldEm (card1, card2)
                                                False -> HoldEm (card2, card1)

data ShapedHand = ShapedHand (Rank, Rank) Shape
    deriving (Read, Eq, Ord)

instance Default ShapedHand where
    def = ShapedHand (Ace, Ace) Pair

instance Show ShapedHand where
    show (ShapedHand (r1,r2) shape) = show r1 ++ show r2 ++ show shape

newShapedHand (rank1, rank2) shape
    | rank1 == rank2 && shape /= Pair = error $ "Pair must be shaped pair, not " ++ show shape
    | rank1 /= rank2 && shape == Pair = error "Non-pair cannot have shape Pair"
    | otherwise      = case rank1 > rank2 of
                            True  -> ShapedHand (rank1, rank2) shape
                            False -> ShapedHand (rank2, rank1) shape

allShapedHands = reverse $ do
    rank1 <- listRank
    rank2 <- listRank
    return $ newShapedHand (rank1, rank2) $ case compare rank1 rank2 of
        GT -> Suited
        EQ -> Pair
        LT -> Offsuit

data Shape = Offsuit | Suited | Pair | AllSuit
    deriving (Read, Eq, Ord)

instance Show Shape where
    show Offsuit = "o"
    show Suited  = "s"
    show Pair    = ""
    show AllSuit = ""

data Player = Player {
    name :: Maybe String,
    playerPosition :: Maybe Position,
    holding :: Maybe String,
    stack :: Maybe Float,
    seat :: Maybe Int
    }
    deriving Show

instance Default Player where
  def = Player Nothing Nothing Nothing Nothing Nothing

-- instance Default Hand where
--   def = Nothing Nothing Nothing

data Hand = Hand {
    hand_id :: Int,
    network :: Network,
    stakes :: Double,
    players :: Map Position Combo,
    actions :: [Action]
    }
    deriving Show

instance Default Hand where
  def = Hand (-1) Unknown 0.25 Map.empty []

type Deck = [Card]

deck::Deck
deck = [Card val su | val <- [Two .. Ace], su <- [Club .. Spade]]

