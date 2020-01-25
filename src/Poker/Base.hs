{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE LambdaCase #-}

-- BIG IMPORTANT TODO GET RID OF EQ INSTANCE FOR INDEX

module Poker.Base
    (
      Hand(..)
    , Action(..)
    , isPlayerAction, isDealerAction
    , IsHero(..)
    , Combo(..)
    , TableActionValue(..)
    , Shape(..)
    , ShapedHand(..)
    , newCombo
    , Player(..), stack
    , Deck
    , prettyShow
    , ActionValue(..)
    , Seat
    , findPositionHolding
    , DealerActionValue(..)
    , Card(..)
    , toIndex
    , Suit(..)
    , Rank(..)
    , ActionIndex(..)
    , Position(..)
    , Network(..)
    , Holding(..)
    , inIndex
    , allShapedHands, allCombos
    , listPosition, listRank, listSuit, listShape , listCard
    , sortPostflop, sortPreflop
    ) where

import Poker.Types

import Data.List (sort)
import qualified Data.Map as M

import Control.Monad (guard)

strToPosition :: String -> Position
strToPosition = \case
  "Big Blind"   -> BB
  "Small Blind" -> SB
  "Dealer"      -> BU
  "UTG"         -> UTG
  "UTG+1"       -> UTG1
  "UTG+2"       -> UTG2

strToActionValue = M.fromList [("Raises", Raise)
                              , ("All-in(raise)", AllInRaise)]

isPlayerAction :: Action -> Bool
isPlayerAction act = case act of
  PlayerAction _ _ _ -> True
  otherwise          -> False

isDealerAction :: Action -> Bool
isDealerAction act = case act of
  DealerAction _ -> True
  otherwise -> False

toIndex action = ActionValueIndex action
inIndex :: ActionIndex -> ActionValue -> Bool
inIndex (AnyCallIndex)  (Call bet) = True
inIndex (CallIndex i)  (Call bet) = bet== i
inIndex (CallGreater i)  (Call bet) = bet >= i
inIndex (CallLess i)  (Call bet) = bet <= i
inIndex (CallBetween iMin iMax)  (Call bet) = bet >= iMin && bet <= iMax
inIndex (BetIndex i)  (Bet bet) = bet == i
inIndex (BetGreater i)  (Bet bet) = bet >= i
inIndex (BetLess i)  (Bet bet) = bet <= i
inIndex (BetBetween iMin iMax)  (Bet bet) = bet >= iMin && bet <= iMax
inIndex (AnyRaiseIndex)  (Raise _ bet) = True
inIndex (RaiseIndex i)  (Raise _ bet) = bet== i
inIndex (RaiseGreater i)  (Raise _ bet) = bet >= i
inIndex (RaiseLess i)  (Raise _ bet) = bet <= i
inIndex (RaiseBetween iMin iMax)  (Raise _ bet) = bet >= iMin && bet <= iMax
inIndex (RaiseIndex i)  (AllInRaise _ bet) = bet== i
inIndex (RaiseGreater i)  (AllInRaise _ bet) = bet >= i
inIndex (RaiseLess i)  (AllInRaise _ bet) = bet <= i
inIndex (RaiseBetween iMin iMax)  (AllInRaise _ bet) = bet >= iMin && bet <= iMax
inIndex (AnyAllInRaiseIndex)  (AllInRaise _ bet) = True
inIndex (AllInRaiseIndex i)  (AllInRaise _ bet) = bet== i
inIndex (AllInRaiseGreater i)  (AllInRaise _ bet) = bet >= i
inIndex (AllInRaiseLess i)  (AllInRaise _ bet) = bet <= i
inIndex (AllInRaiseBetween iMin iMax)  (AllInRaise _ bet) = bet >= iMin && bet <= iMax
inIndex AnyBetIndex  (Bet bet) = True
inIndex AnyRaiseOrRaiseAIIndex (Raise _ _) = True
inIndex AnyRaiseOrRaiseAIIndex (AllInRaise _ _) = True
inIndex AnyBetOrAllInIndex (Bet _) = True
inIndex AnyBetOrAllInIndex (AllIn _) = True
inIndex FoldIndex  Fold = True
inIndex FoldIndex  FoldTimeout = True
inIndex CheckIndex  Check = True
inIndex CheckIndex  CheckTimeOut = True
inIndex AnyIndex _ = True
inIndex _ _ = False

-- Sort a list of positions according to preflop ordering
sortPreflop :: [Position] -> [Position]
sortPreflop = fmap toEnum . sort . fmap fromEnum

-- Sort a list of positions acccording to postflop ordering
sortPostflop :: [Position] -> [Position]
sortPostflop = fmap (toEnum . fromPostFlopOrder)
               . sort
               . fmap (toPostFlopOrder . fromEnum)
  where
    fromPostFlopOrder = flip mod 6 . (+ 4)
    toPostFlopOrder   = flip mod 6 . (+ 2)

listCard :: [Card]
listCard = reverse (take 52 (enumFrom (toEnum 0)))

listRank :: [Rank]
listRank = listEnum

listSuit :: [Suit]
listSuit = listEnum

listPosition :: [Position]
listPosition = listEnum :: [Position]

listShape :: [Shape]
listShape = listEnum :: [Shape]

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

newCombo (card1:card2:[]) | card1 == card2 = error $ "Cards in combo must be different" ++ show card1 ++ show card2 
                          | otherwise      = case card1 > card2 of
                                               True  -> HoldEm (card1, card2)
                                               False -> HoldEm (card2, card1)

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

-- this kinda feels like a mess but might be totally correct?
findPositionHolding :: Hand -> Position -> Combo
findPositionHolding hand pos = do
  case M.lookup pos (_handSeatMap hand) of
    Nothing -> error "player given card but no seat"
    Just seat -> case M.lookup seat (_handPlayerMap hand) of
      Nothing -> error "player given position but no such player exists"
      Just player -> case _playerHolding player of
        Nothing -> error "player given position but no holding"
        Just holding -> holding

indent :: String -> String
indent = unlines . map ('\t' :) . lines

prettyShow hand = unlines $
    [ show . network $ hand
    , show . stakes $ hand
    , indent <$> unlines $ show <$> (actions hand)
    ]

-- instance Default Hand where
--   -- def = Hand (-1) Unknown 0.25 M.empty []
--   def = Hand
--             { hand_id=1234
--             , network=Bovada
--             , stakes=0.05
--             , _playerMap=M.fromList [ (UTG, read "Th8h")
--                                       , (UTG1, read "6h4h")
--                                       , (UTG2, read "Ks8s")
--                                       , (BU, read "AcJs")
--                                       , (SB, read "Ad9d")
--                                       , (BB, read "Kd5d")
--                                ]
--             , actions=[ PlayerAction UTG1 Leave
--                       , PlayerAction UTG2 Leave
--                       , PlayerAction UTG $ Call 1.0
--                       , PlayerAction UTG1 Fold
--                       , PlayerAction UTG2 Fold
--                       , PlayerAction BU $ Raise 4.4 4.4
--                       , PlayerAction SB Fold
--                       , PlayerAction SB Leave
--                       , PlayerAction BB Fold
--                       , PlayerAction BB Leave
--                       , PlayerAction UTG $ Call 3.4]
--             }

deck :: Deck
deck = [Card val su | val <- [Two .. Ace], su <- [Club .. Spade]]

