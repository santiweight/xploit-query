module HandFilter
    (
    ) where

import Poker
import Control.Monad

-- data FilterError = NoHands

type FilterState a = (a, Hand)

data FilterResult a = HandResult Hand
                    | ActionsResult a Hand

-- data Filter a b = Filter { handfilter :: FilterResult a -> FilterState b }
newtype ActionFilter = ActionFilter { actionfilter :: ([Int], Hand) -> ([Int], Hand) }
-- type HandFilter a = \resType -> Filter (\(HandResult h) -> (
-- type ActionFilter a = Filter Action



isBovada hand = network hand == Bovada

-- getHand :: Filter Hand Hand
-- getHand = Filter $ \(HandResult hand) -> (hand, hand)

-- flopActionsF :: Filter Hand [Action]
-- flopActionsF = Filter $ \(HandResult hand) -> (flopActions hand, hand)

-- openOppF :: Filter [Action] [Action]
-- openOppF = Filter $ \(ActionsResult actions h) -> (findOpenOpps actions, h)
--     where
--         findOpenOpps (a:as) = case isRaise a of
--                                     True -> [a]
--                                     False -> a : findOpenOpps as
--         isRaise (Action _ a) = case a of
--             Raise _ _ -> True
--             AllInRaise _ _ -> True
--             otherwise -> False

-- -- passiveActionF = Filter $

-- bind :: Filter a b -> (b -> Filter b c) -> Filter a c
-- bind f fn = \(aRes, hand) -> handfilter f aRes
