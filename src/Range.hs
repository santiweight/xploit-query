{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}

module Range
    ( Range(..)
    , newRange
    , newRangeC
    , addActionsToRangeC
    , RangeCollection(..)
    -- , shapeToCombos
    ) where

import Poker
import Data.Map (Map)
import Data.List
import qualified Data.Map as Map
import Control.Lens
import Control.Lens.TH

data Range = Range { _range :: Map Combo Int
                   , _combos :: Int
                   }

$(makeLenses ''Range)

data RangeCollection = RangeCollection { _ranges :: Map ActionValue Range
                                       , _total_combos :: Int
                                       , _total_range :: Range
                                       }
    deriving (Show)

newRange = Range Map.empty 0
newRangeC = RangeCollection { _ranges=Map.empty
                            , _total_combos=0
                            , _total_range=newRange }

instance Show Range where
    show range =
        let rangemap = Map.toList $ _range range
            rangelist = intercalate "," $ map (\(c,i) -> show c ++ ":" ++ show i)  rangemap in
            rangelist ++ " | combinations = " ++ show (_combos range)

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
