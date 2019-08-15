module Poker.HandFilterTree
        ( HandFilterTree(..)
        , FilterTree(..)
        , TreeAction(..)
        )
        where

import Poker.HandFilter
import Poker.Base
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Map.Lens
import Data.Function
import Data.Maybe
import Control.Lens
import Data.Text as T hiding (foldl)

data FilterTree = EmptyNode | FilterNode
                                    { _filt :: (ActionFilter (Maybe Action, [Action]))
                                    , _left :: FilterTree
                                    , _right :: FilterTree }
test = return (Nothing, []) :: ActionFilter (Maybe Action, [Action])

-- Int, Int <-> maxHeight, currentDepth
toGridCoordinates :: FilterTree -> (Int, Int) -> ([(ActionFilter (Maybe Action, [Action]), (Int, Int))], Int)
toGridCoordinates EmptyNode (h, d) = ([], h)
toGridCoordinates (FilterNode filt node1 node2) (h, d) =
    let (res, newdepth) =
         case toGridCoordinates node1 (h,d+1) of
            ([], _) -> toGridCoordinates node2 (h+1, d)
            (res1, newH) ->
                case toGridCoordinates node2 (newH+1,d) of
                    ([], _) -> (res1, newH)
                    (res2, finalH) -> (res1++res2, finalH) in ((filt, (h,d)) : res, newdepth)

data HandFilterTree = Dead | Node { _decision :: ActionFilter (Maybe Action, [Action])
                               , _range :: Map ActionIndex (Map Combo Int)
                               , _andDecision :: HandFilterTree
                               , _orDecision :: HandFilterTree
                               }



instance Show (HandFilterTree) where
    show (Node _ range _ _) = show range
    show (Dead) = ""


runTree :: HandFilterTree -> Hand -> [Action] -> HandFilterTree
runTree node@Node { _decision=decision
                   , _range=range
                   , _andDecision=andDecision
                   , _orDecision=orDecision
                   } hand actions =
    case parse decision actions of
            [((Nothing, opps), rest)] ->
                let combos = actionsToCombos opps hand
                    newrange = foldl (\ran (c, a) -> ran & (at (toIndex a)) . non Map.empty %~ addCombo 1 c) range combos
                    orTree = runTree orDecision hand actions
                in
                node { _range = newrange
                     , _orDecision = orTree}
            [((Just act, opps), rest)] ->
                let combos = actionsToCombos opps hand
                    newrange = foldl (\ran (c, a) -> ran & (at (toIndex a)) . non Map.empty %~ addCombo 1 c) range combos
                    orTree = runTree orDecision hand actions
                    andTree = runTree andDecision hand rest
                in
                node { _range = newrange
                     , _andDecision=andDecision
                     , _orDecision = orTree}
            otherwise ->
                let orTree = runTree orDecision hand actions in
                    node { _orDecision = orTree}
runTree Dead _ _ = Dead

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
