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

