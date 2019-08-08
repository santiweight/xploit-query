{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DuplicateRecordFields #-}
-- {-# LANGUAGE FlexibleContexts #-}
-- {-# LANGUAGE MultiParamTypeClasses #-}

module Poker.Range
    ( Range(..), range, count
    , RangeCollection(..), ranges, total_range, total_shapedrange
    , CountRange(..)
    , FreqRange(..)
    , ShapedRangeC(..)
    , addComboToCollection
    , rangeToFreqRange
    , shapeToCombos
    ) where

import Poker.Base
import Data.Map (Map, (!))
import Data.List
import qualified Data.Map as Map
import Control.Lens
import Control.Lens.TH
import Control.Lens.Iso
import Data.Default
import Data.Map.Lens
import Data.Maybe

data Range a b = Range { _range :: Map a b
                       , _count :: Int
                       }
    deriving (Read, Eq)

data RangeCollection a = RangeCollection { _ranges :: Map ActionValue a
                                         , _total_range :: CountRange
                                         , _total_shapedrange :: ShapedCountRange }
                                         -- , _total_count :: Int }
    deriving (Show, Eq)

instance Default (Range a b) where
    def = Range { _range = Map.empty :: Map a b
                       , _count = 0 }

instance Default (RangeCollection a) where
    def = RangeCollection Map.empty def def

type Freq = Double
type Count = Int
type FreqRange = Range Combo Freq
type CountRange = Range Combo Count
type ShapedCountRange = Range ShapedHand Count
type ShapedRange = Range ShapedHand (CountRange)
type FreqShapedRange = Range ShapedHand (FreqRange)
-- type RangeCollection a = Range ActionValue a
type ShapedRangeC = RangeCollection ShapedRange
type FreqShapedRangeC = RangeCollection FreqShapedRange

instance (Show a, Show b) => Show (Range a b) where
    show ran =
        let rangemap = Map.toList $ _range ran
            rangelist = intercalate "," $ map (\(c,i) -> show c ++ ":" ++ show i)  rangemap in
            "[" ++ rangelist ++ "|" ++ show (_count ran) ++ "]"

$(makeLenses ''Range)
$(makeLenses ''RangeCollection)

inc :: Count -> Maybe Count -> Maybe Count
inc n mayNum = return $ fromMaybe 0 mayNum & (n +)

addCombo :: Count -> Combo -> CountRange -> CountRange
addCombo n comb ran = ran
    & count %~ (+ n)
    & range . (at comb) %~ (inc n)

comboToShaped (HoldEm (c1, c2)) =
    if rank c1 == rank c2
        then ShapedHand (rank c1, rank c2) Pair
        else if suit c1 == suit c2
            then ShapedHand (rank c1, rank c2) Suited
            else ShapedHand (rank c1, rank c2) Offsuit

addComboToShaped n comb ran =
    let shaped_hand = comboToShaped comb in
    ran & range . at shaped_hand . non def %~ addCombo n comb
        & count +~ n

addShaped n comb ran =
    let shaped_hand = comboToShaped comb in
    ran & range . at shaped_hand %~ inc n
        & count +~ n

addComboToCollection n act comb ranC =
    ranC & ranges . at act . non def %~ addComboToShaped n comb
         & total_range %~ addCombo n comb
         & total_shapedrange %~ addShaped n comb
         -- & total_count %~ (n +)

shapeToCombos :: ShapedHand -> [Combo]
shapeToCombos (ShapedHand (r1, r2) shape) =
    case shape of
        Pair -> do
            s1 <- listSuit
            s2 <- drop (fromEnum s1+1) listSuit
            return $ newCombo [Card r1 s1, Card r2 s2]
        Offsuit -> do
            s1 <- listSuit
            s2 <- filter (s1 ==) listSuit
            return $ newCombo [Card r1 s1, Card r2 s2]
        Suited -> do
            suit <- listSuit
            return $ newCombo [Card r1 suit, Card r2 suit]

rangeToFreqRange :: ShapedRangeC -> FreqShapedRangeC
rangeToFreqRange ranC =
    let cc = ranC ^. total_range . range
        total_count = ranC ^. total_range . count
        new_ranges = Map.map (fn2 cc) $ ranC ^. ranges
        -- new_shapedrange = Map.map fn (ranC^.total_shapedrange.range)
        -- in RangeCollection new_ranges (ranC^.total_range) new_shapedrange
        in RangeCollection new_ranges (ranC^.total_range) (ranC^.total_shapedrange)
    where
        fn2 cc shaped_range = shaped_range & range .~ Map.map (fn3 cc) (shaped_range^.range)
        fn3 cc count_range = count_range{_range =
            Map.mapWithKey (\c n -> (fromIntegral n) / (fromIntegral (cc ! c))) (count_range^.range)}