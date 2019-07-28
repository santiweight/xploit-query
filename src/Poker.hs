module Poker
    ( Hand(..)
    , Player(..)
    , Deck
    , Action(..)
    , Card, rank, suit
    , Suit
    , Rank
    , Position
    , Network(..)
    , Holding
    , def
    , str_to_position_map, str_to_rank_map, str_to_suit_map, str_to_raise_action_map
    , str_to_bet_action_map, str_to_action_map
    ) where

import Data.Default
import Data.Map (Map)
import qualified Data.Map as Map

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

data Action = Call Double
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
     deriving (Read, Show, Enum, Eq, Ord)

data Rank = Two | Three | Four
     | Five | Six | Seven | Eight | Nine | Ten
     | Jack | Queen | King | Ace
    deriving (Read, Show, Enum, Eq, Ord)

data Card = Card {rank :: Rank,
                  suit :: Suit}
    deriving (Read, Show, Eq)

instance Default Card where
  def = Card Two Club

instance Ord Card where
      compare c1 c2 = compare (rank c1, suit c1) (rank c2, suit c2)

instance Enum Card where
      toEnum n  = let (v,s) = n`divMod`4 in Card (toEnum v) (toEnum s)
      fromEnum c = fromEnum (rank c) * 4 + fromEnum (suit c)

data Position = UTG | UTG_1 | UTG_2 | BU | SB | BB
    deriving (Read, Show, Enum, Eq, Ord)

data Network = Bovada | PokerStars | Unknown
    deriving (Read, Show, Enum, Eq, Ord)

data Holding = Holding [Card]
    deriving (Read, Show, Eq, Ord)

-- instance Default Player where
--   def = Player Nothing Nothing Nothing Nothing

data Player = Player {
    name :: Maybe String,
    position :: Maybe Position,
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
    players :: Map Position Player,
    stakes :: Double,
    preflopActions :: [(Position, Action)],
    flopActions :: [(Position, Action)],
    turnActions :: [(Position, Action)],
    riverActions :: [(Position, Action)],
    riverStreet :: [Card],
    flopStreet :: [Card],
    turnStreet :: [Card]
    }
    deriving Show

-- instance Default Hand where
--   def = Hand Nothing Unknown Map.empty Nothing [] [] [] [] [] [] []

type Deck = [Card]

deck::Deck
deck = [Card val su | val <- [Two .. Ace], su <- [Club .. Spade]]


