{-# LANGUAGE RecordWildCards #-}
module Poker.HandFilterTree
        ( FilterTree(..)
        , TreeAction(..)
        , runTree
        , resetTree
        )
        where

import Poker.HandFilter
import Poker.Base
import Data.Default
import Poker.Range hiding (_range)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Map.Lens
import Data.Function
import Data.Maybe
import Control.Lens
import Data.Text as T hiding (foldl, map, foldr)

data FilterTree = EmptyNode | FilterNode
                                    { _filt :: (ActionFilter (Maybe Action, [Action]))
                                    , _filterrange :: ShapedRangeC
                                    -- , _range :: Map ActionIndex (Map Combo Int)
                                    , _left :: FilterTree
                                    , _right :: FilterTree }

instance Show FilterTree where
    show EmptyNode = "empty"
    show FilterNode
            { _filt=filt
            , _filterrange=range
            , _left=left
            , _right=right
            } = show range ++ "and: " ++ show left ++ "or: " ++ show right
test = return (Nothing, []) :: ActionFilter (Maybe Action, [Action])

instance Default FilterTree where
    def = FilterNode rfi def EmptyNode EmptyNode

-- Int, Int <-> maxHeight, currentDepth
toGridCoordinates :: FilterTree -> (Int, Int) -> ([(ActionFilter (Maybe Action, [Action]), (Int, Int))], Int)
toGridCoordinates EmptyNode (h, d) = ([], h)
toGridCoordinates (FilterNode filt _ node1 node2) (h, d) =
    let (res, newdepth) =
         case toGridCoordinates node1 (h,d+1) of
            ([], _) -> toGridCoordinates node2 (h+1, d)
            (res1, newH) ->
                case toGridCoordinates node2 (newH+1,d) of
                    ([], _) -> (res1, newH)
                    (res2, finalH) -> (res1++res2, finalH) in ((filt, (h,d)) : res, newdepth)

runTree :: FilterTree -> (Hand, [Action]) -> FilterTree
runTree node@FilterNode { _filt=decision
                  , _filterrange=range
                  , _left=left
                  , _right=right
                  } (hand, actions) =
    case parse decision actions of
            [((Nothing, opps), rest)] ->
                let combos = actionsToCombos opps hand
                    -- actionvals = map (\(c,a) -> (c, action a)) combos
                    -- newrange = foldl (\ran (c, a) -> ran & (at (toIndex a)) . non Map.empty %~ addCombo 1 c) range combos
                    newrange = foldr (\(c, a) r -> addComboToCollection 1 a c r) range combos
                    orTree = runTree right (hand, actions)
                in
                node { _filterrange = newrange
                     , _right = orTree}
            [((Just act, opps), rest)] ->
                let combos = actionsToCombos opps hand
                    newrange = foldr (\(c, a) r -> addComboToCollection 1 a c r) range combos
                    -- newrange = foldl (\ran (c, a) -> ran & (at (toIndex a)) . non Map.empty %~ addCombo 1 c) range combos
                    orTree = runTree right (hand, actions)
                    andTree = runTree left (hand, rest)
                in
                node { _filterrange = newrange
                     , _left=andTree
                     , _right = orTree}
            otherwise ->
                let orTree = runTree right (hand, actions) in
                    node { _right = orTree}
runTree EmptyNode _ = EmptyNode

resetTree node@FilterNode{..} =
    let left = resetTree _left
        right = resetTree _right in
            node { _left=left
                 , _right=right
                 , _filterrange=def }
resetTree EmptyNode = EmptyNode

addCombo :: Int -> Combo -> Map Combo Int -> Map Combo Int
addCombo n comb ran = ran
    & (at comb) %~ (inc1) -- here

inc1 :: Maybe Int -> Maybe Int
inc1 mayNum = return $ fromMaybe 0 mayNum & (1 +)

actionsToCombos :: [Action] -> Hand -> [(Combo, ActionValue)]
actionsToCombos actions hand = do
    act <- actions
    let maybeHolding = Map.lookup (position act) $ players hand
    case maybeHolding of
        Just comb -> return (comb, action act)
        otherwise -> error "Position has no holding"

data TreeAction = Add (ActionFilter (Maybe Action, [Action]))
                | Remove
                | Replace (ActionFilter (Maybe Action, [Action]))
