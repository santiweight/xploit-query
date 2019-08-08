{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DuplicateRecordFields #-}

module Range
    ( Range(..)
    , newRange
    , newRangeC
    , addActionsToRangeC
    , RangeCollection(..)
    , combineRanges2
    , combineRanges
    , shapeToCombos
    -- , shapeToCombos
    ) where

import Poker
import Data.Map (Map)
import Data.List
import qualified Data.Map as Map
import Control.Lens
import Control.Lens.TH


-- data GenericRange a = GenericRange { _range :: Map Combo a
--                                    , _combos :: Int
--                                    }

-- type Range = GenericRange Int
-- type FreqRange = GenericRange Double

data Range = Range { _range :: Map Combo Int
                   , _combos :: Int
                   }

data ShapedRange = ShapedRange { _rangeS :: Map ShapedHand (Map Combo Range)
                               , _total_combosS :: Int }

data ShapedRangeCollection = ShapedRangeCollection { _rangesS :: Map ActionValue ShapedRange
                                                   , _total_combosS :: Int
                                                   , _total_rangeS :: Range }

data FreqRange = FreqRange { _freq_range :: Map Combo Double
                           , _freq_combos :: Int }
    deriving (Show)

data FreqRangeCollection = FreqRangeCollection { _rangesF :: Map ActionValue FreqRange
                                               , _total_combosF :: Int
                                               , _total_rangeF :: Range
                                               }
    deriving (Show)


data RangeCollection = RangeCollection { _ranges :: Map ActionValue Range
                                       , _total_combos :: Int
                                       , _total_range :: Range
                                       }
    deriving (Show)

-- data GenericRangeCollection a = GenericRangeCollection { _ranges :: Map ActionValue Range
--                                                        , _total_combos :: Int
--                                                        , _total_range :: Range
--                                                        }

-- $(makeLenses ''GenericRange)
-- $(makeLenses ''GenericRangeCollection)

-- type RangeCollection = GenericRangeCollection Int
-- type FreqRangeCollection = GenericRangeCollection Double

newRange = Range Map.empty 0
newRangeC = RangeCollection { _ranges=Map.empty
                            , _total_combos=0
                            , _total_range=newRange }

instance Show Range where
    show range =
        let rangemap = Map.toList $ _range range
            rangelist = intercalate "," $ map (\(c,i) -> show c ++ ":" ++ show i)  rangemap in
            rangelist ++ " | combinations = " ++ show (_combos range)

rangeToFreqRange :: RangeCollection -> FreqRangeCollection
rangeToFreqRange rangeC =
    let combofreq = _total_range rangeC in
            FreqRangeCollection { _rangesF = Map.fromList $ do
                    (action, range) <- Map.toList $ _ranges rangeC
                    let combomap = FreqRange { _freq_range = Map.fromList $ do
                                                    (combo, freq) <- Map.toList $ _range range
                                                    return (combo, (fromIntegral freq) / (fromIntegral $ Map.findWithDefault 0 combo (_range combofreq)))
                                          , _freq_combos = _combos range }
                    return (action, combomap)

                            , _total_combosF = _total_combos rangeC
                            , _total_rangeF = _total_range rangeC }




incrementCount :: Maybe Int -> Maybe Int
incrementCount count = case count of
    Nothing -> return 1
    Just x -> return $ x + 1

addComboToRange :: Range -> Combo -> Range
addComboToRange range combo = range { _range=Map.alter incrementCount combo (_range range)
                                    , _combos=_combos range + 1}

-- addComboToMaybeRange :: Maybe Range -> Combo -> Maybe Range
-- addComboToMaybeRange range combo =
--     case range of
--         Nothing -> Just Range { _range=Map.alter incrementCount combo Map.empty
--                          , _combos=1 }
--         Just r -> Just r { _range=Map.alter incrementCount combo (_range r)
--                         , _combos=_combos r + 1 }

addActionToRangeC :: RangeCollection -> (Combo, ActionValue) -> RangeCollection
addActionToRangeC rangeC (combo, action) =
    let range = Map.findWithDefault newRange action (_ranges rangeC)
        newrange = Map.insert action (addComboToRange range combo) (_ranges rangeC)
        in rangeC { _ranges=newrange
                  , _total_combos=_total_combos rangeC+1
                  , _total_range=addComboToRange (_total_range rangeC) combo}

addActionsToRangeC :: RangeCollection -> [(Combo,ActionValue)] -> RangeCollection
addActionsToRangeC rangeC (ca:cas) =
    let newrange = addActionToRangeC rangeC ca in
        addActionsToRangeC newrange cas
addActionsToRangeC rangeC [] = rangeC

-- data R

-- type

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

combineRanges2 range1 range2 =
    let newrange = Map.unionWith (+) (_range range1) (_range range2) in
        newRange { _range=newrange
                 , _combos=_combos range1 + _combos range2 }

combineRanges ranges =
    let newrange = Map.unionsWith (+) (map _range ranges)
        newcombos = sum (map _combos ranges) in
        newRange { _range=newrange
                 , _combos=newcombos }