{-# LANGUAGE TemplateHaskell #-}

module Poker.Base
    (
      Hand(..)
    , Action(..)
    , Combo(..)
    , Shape(..)
    , ShapedHand(..)
    , newCombo
    , Player(..)
    , Deck
    , ActionValue(..)
    , DealerActionValue(..)
    , Card(..)
    , toIndex
    , Suit(..)
    , Rank(..)
    , ActionIndex(..)
    , Position(..)
    , Network(..)
    , Holding
    , def
    , allCards
    , str_to_position_map, str_to_rank_map, str_to_suit_map, str_to_raise_action_map
    , str_to_bet_action_map, str_to_action_map
    , allShapedHands
    , listPosition, listRank, listSuit
    ) where

import Data.Default
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad
-- import qualified Data.Stream
-- import Data.Stream (Stream)
import Text.Megaparsec

import Data.Aeson.TH (deriveJSON, defaultOptions)

str_to_position_map :: Map [Char] Position
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
    deriving (Read, Show, Eq)

instance Ord DealerActionValue where
  (FlopDeal _) <= (TurnDeal _) = True
  (TurnDeal _) <= (RiverDeal _) = True

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

data ActionIndex =
                   ActionValueIndex ActionValue
                 | CheckIndex
                 | FoldIndex
                 | AnyRaiseIndex
                 | RaiseIndex Double
                 | RaiseBetween Double Double
                 | RaiseGreater Double
                 | RaiseLess Double
                 | AnyAllInRaiseIndex
                 | AllInRaiseIndex Double
                 | AllInRaiseBetween Double Double
                 | AllInRaiseGreater Double
                 | AllInRaiseLess Double
                 | BetIndex Double
                 | BetGreater Double
                 | BetLess Double
                 | BetBetween Double Double
                 | AnyCallIndex
                 | CallIndex Double
                 | CallGreater Double
                 | CallLess Double
                 | CallBetween Double Double
                 | LeaveIndex
                 | SitOutIndex
                 | DealerActionIndex DealerActionValue
                 | ShowdownIndex
                 | ResultIndex
    deriving (Show, Ord)


toIndex action = ActionValueIndex action

instance Eq ActionIndex where
    (ActionValueIndex (Call bet)) == (AnyCallIndex) = True
    (ActionValueIndex (Call bet)) == (CallIndex i) = bet== i
    (ActionValueIndex (Call bet)) == (CallGreater i) = bet >= i
    (ActionValueIndex (Call bet)) == (CallLess i) = bet <= i
    (ActionValueIndex (Call bet)) == (CallBetween iMin iMax) = bet >= iMin && bet <= iMax
    (ActionValueIndex (Bet bet)) == (BetIndex i) = bet== i
    (ActionValueIndex (Bet bet)) == (BetGreater i) = bet >= i
    (ActionValueIndex (Bet bet)) == (BetLess i) = bet <= i
    (ActionValueIndex (Bet bet)) == (BetBetween iMin iMax) = bet >= iMin && bet <= iMax
    (ActionValueIndex (Raise _ bet)) == (AnyRaiseIndex) = True
    (ActionValueIndex (Raise _ bet)) == (RaiseIndex i) = bet== i
    (ActionValueIndex (Raise _ bet)) == (RaiseGreater i) = bet >= i
    (ActionValueIndex (Raise _ bet)) == (RaiseLess i) = bet <= i
    (ActionValueIndex (Raise _ bet)) == (RaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
    (ActionValueIndex (AllInRaise _ bet)) == (RaiseIndex i) = bet== i
    (ActionValueIndex (AllInRaise _ bet)) == (RaiseGreater i) = bet >= i
    (ActionValueIndex (AllInRaise _ bet)) == (RaiseLess i) = bet <= i
    (ActionValueIndex (AllInRaise _ bet)) == (RaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
    (ActionValueIndex (AllInRaise _ bet)) == (AnyAllInRaiseIndex) = True
    (ActionValueIndex (AllInRaise _ bet)) == (AllInRaiseIndex i) = bet== i
    (ActionValueIndex (AllInRaise _ bet)) == (AllInRaiseGreater i) = bet >= i
    (ActionValueIndex (AllInRaise _ bet)) == (AllInRaiseLess i) = bet <= i
    (ActionValueIndex (AllInRaise _ bet)) == (AllInRaiseBetween iMin iMax) = bet >= iMin && bet <= iMax
    (ActionValueIndex Fold) == FoldIndex = True
    (ActionValueIndex FoldTimeout) == FoldIndex = True
    (ActionValueIndex Check) == CheckIndex = True
    (ActionValueIndex CheckTimeOut) == CheckIndex = True
    (ActionValueIndex Leave) == LeaveIndex = True
    (ActionValueIndex SitOut) == SitOutIndex = True
    (ActionValueIndex (Showdown _ _)) == ShowdownIndex = True
    (ActionValueIndex (Result _)) == ResultIndex = True
    _ == _ = False



data Suit = Club | Diamond | Heart | Spade
     deriving (Enum, Eq, Ord)

instance Show Suit where
    show Club    = "c"
    show Diamond = "d"
    show Heart   = "h"
    show Spade   = "s"

instance Read Suit where
    readsPrec _ ('c': cs) = return (Club, cs)
    readsPrec _ ('d': cs) = return (Diamond, cs)
    readsPrec _ ('h': cs) = return (Heart, cs)
    readsPrec _ ('s': cs) = return (Spade, cs)
    readsPrec _ str = error $ "Expected Suit string; instead found: " ++ str

data Rank = Two | Three | Four
     | Five | Six | Seven | Eight | Nine | Ten
     | Jack | Queen | King | Ace
    deriving (Enum, Eq, Ord)

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

instance Read Rank where
    readsPrec _ ('2':cs) = return (Two, cs)
    readsPrec _ ('3':cs) = return (Three, cs)
    readsPrec _ ('4':cs) = return (Four, cs)
    readsPrec _ ('5':cs) = return (Five, cs)
    readsPrec _ ('6':cs) = return (Six, cs)
    readsPrec _ ('7':cs) = return (Seven, cs)
    readsPrec _ ('8':cs) = return (Eight, cs)
    readsPrec _ ('9':cs) = return (Nine, cs)
    readsPrec _ ('T':cs) = return (Ten, cs)
    readsPrec _ ('J':cs) = return (Jack, cs)
    readsPrec _ ('Q':cs) = return (Queen, cs)
    readsPrec _ ('K':cs) = return (King, cs)
    readsPrec _ ('A':cs) = return (Ace, cs)
    readsPrec _ str = error $ "Expected Rank string; instead found: " ++ str

data Card = Card {rank :: Rank,
                  suit :: Suit}
    deriving (Eq)

instance Read Card where
    readsPrec _ cs = do
        (rank, rest) <- readsPrec 0 cs
        (suit, remainder) <- readsPrec 0 rest
        return (Card rank suit, remainder)




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
    deriving (Eq, Ord)

instance Read Combo where
    readsPrec _ cs = do
        (c1, rest) <- readsPrec 0 cs
        (c2, remainder) <- readsPrec 0 rest
        if c1 == c2
          then error "Exception: no parse; both cards are the same"
          else return $ (HoldEm (c1,c2), remainder)





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
    deriving (Read)

indent :: String -> String
indent = unlines . map ('\t' :) . lines

instance Show Hand where
  show hand = unlines $
    [ show . network $ hand
    , show . stakes $ hand
    , indent <$> unlines $ show <$> (filter ((flip (/=) $ LeaveIndex) . ActionValueIndex . action) $ actions hand)
    ]
    -- (show . network $ hand)
    -- ++ show stakes

instance Default Hand where
  -- def = Hand (-1) Unknown 0.25 Map.empty []
  def = Hand
            { hand_id=1234
            , network=Bovada
            , stakes=0.05
            , players=Map.fromList [ (UTG, read "Th8h")
                               , (UTG_1, read "6h4h")
                               , (UTG_2, read "Ks8s")
                               , (BU, read "AcJs")
                               , (SB, read "Ad9d")
                               , (BB, read "Kd5d")
                               ]
            , actions=[ PlayerAction UTG_1 Leave
                      , PlayerAction UTG_2 Leave
                      , PlayerAction UTG $ Call 1.0
                      , PlayerAction UTG_1 Fold
                      , PlayerAction UTG_2 Fold
                      , PlayerAction BU $ Raise 4.4 4.4
                      , PlayerAction SB Fold
                      , PlayerAction SB Leave
                      , PlayerAction BB Fold
                      , PlayerAction BB Leave
                      , PlayerAction UTG $ Call 3.4]
            }

type Deck = [Card]

deck::Deck
deck = [Card val su | val <- [Two .. Ace], su <- [Club .. Spade]]

deriveJSON defaultOptions ''DealerActionValue
deriveJSON defaultOptions ''ActionValue
deriveJSON defaultOptions ''ActionIndex
deriveJSON defaultOptions ''Card
deriveJSON defaultOptions ''Rank
deriveJSON defaultOptions ''Suit
