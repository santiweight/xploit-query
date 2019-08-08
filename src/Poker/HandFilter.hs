{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Poker.HandFilter
    ( buildRange
    , rfiOpp
    , rfiOppPos
    , nextRaise
    , accumulator
    , rfi
    ) where

import Poker.Base
import Poker.Parse
import Poker.Range

import Control.Lens hiding (Fold)
import Control.Monad
import Control.Monad.Loops
import Control.Applicative

import Text.Megaparsec (manyTill, (<?>))

import Data.Map (Map)
import Data.Map as Map hiding (foldr, map, filter, fold, take)

import System.TimeIt
import Debug.Trace

data FilterError = Error
-- type FilterState a = Either FilterError (a, [Action])
type FilterState b = (b, [Action])

type FilterResult a = Either FilterError (FilterState a)

newtype Parser a b = Parser { parse :: a -> [FilterState b] }
-- newtype ActionFilter a = ActionFilter { parse :: [Action] -> [FilterState a] }
type ActionFilter = Parser [Action]

foldUTG = PlayerAction UTG Fold
defAction2 = PlayerAction BU Fold
raiseBU = PlayerAction BU (Raise 2 1)
raiseUTG = PlayerAction UTG (Raise 2 1)
defAction4 = PlayerAction UTG (Call 1)
dealerAction = DealerAction (FlopDeal [])

-- try :: ActionFilter a -> ActionFilter a

openBU = [foldUTG, raiseBU]
openUTG = [foldUTG, raiseUTG]
foldActions = [foldUTG,foldUTG,foldUTG,foldUTG, dealerAction]
testActions = [foldUTG, defAction2, raiseBU, defAction4]
realHand = [defAction2, dealerAction, defAction2, raiseBU]

testList = [foldActions, testActions, realHand, openBU, openUTG]

isBovada hand = network hand == Bovada

getAction :: ActionFilter Action
getAction = do
    action <- item
    case action of
        PlayerAction _ Leave  -> getAction
        PlayerAction _ Enter  -> getAction
        PlayerAction _ SitOut -> getAction
        DealerAction _ -> failure
        otherwise -> return action

getMaybeAction :: ActionFilter (Maybe Action)
getMaybeAction = Parser $ \actions ->
    -- trace ("\n actions:\n    " ++ show actions) $ do
    case actions of
        [] -> [(Nothing, [])]
        (a:as) -> case a of
            PlayerAction _ Leave  -> parse getMaybeAction as
            PlayerAction _ Enter  -> parse getMaybeAction as
            PlayerAction _ SitOut -> parse getMaybeAction as
            DealerAction _ -> [(Nothing, as)]
            otherwise -> [(Just a, as)]

item :: ActionFilter Action
item = Parser $ \actions ->
    case actions of
        [] -> []
        (a:as) -> [(a, as)]

-- isRaiseF = ActionFilter $ \actions ->
--     case handfilter raise actions

lookAhead :: ActionFilter a -> ActionFilter Bool
lookAhead filt = Parser $ \actions ->
    case parse filt actions of
        [] -> [(False, actions)]
        otherwise -> [(True, actions)]

-- -- try :: ActionFilter a -> ActionFilter Bool
-- try filt = Parser $ \actions ->
--     case parse filt actions of
--         [] -> [([], actions)]
--         res -> res

satisfy :: (Action -> Bool) -> ActionFilter Action
satisfy p = getAction >>= \c ->
  if p c
  then unit c
  else (Parser (\cs -> []))

satisfyNext :: (Action -> Bool) -> ActionFilter Action
satisfyNext p = item >>= \c ->
  if p c
  then unit c
  else (Parser (\cs -> []))


-- check f = \c ->
--   if f c
--   then return c
--   else failure


fold = satisfy ((Fold ==) . action)

raise = satisfy isRaise
isRaise a = case a of
    (PlayerAction{action=Raise _ _}) -> True
    (PlayerAction{action=AllInRaise _ _}) -> True
    otherwise -> False
isRaiseValue a = case a of
    (Raise _ _) -> True
    (AllInRaise _ _) -> True
    otherwise -> False

isBet a = case a of
    (PlayerAction{action=Bet _}) -> True
    (PlayerAction{action=AllIn _}) -> True
    otherwise -> False
bet = satisfy isBet

call = satisfy isCall
isCall = (\a -> case a of
        (PlayerAction{action=Call _}) -> True
        otherwise -> False)
check = satisfy (\a -> case a of
        (PlayerAction{action=Check}) -> True
        (PlayerAction{action=CheckTimeOut}) -> True
        otherwise -> False)

dealer = satisfyNext isDealer
isDealer = (\a -> case a of
        (DealerAction _ ) -> True
        otherwise -> False)

-- block filt = Parser $ (\actions ->
--     case parse filt actions of
--         [] -> [([], action)]
--         res -> )

nextRaise ps = do
    -- FIX ME CHECK SHOULD COME BEFORE
    actions <- (untilM  getAction $ lookAhead (getAction >>= (\a ->
        case isRaise a || isCall a || isDealer a of
            True -> return True
            False -> failure)))
    action <- raise
    guard $ (isRaise action)
    guard $ any id (map (\p -> isPosition p action) ps)
    return action

rfiOppPos :: [Position] -> ActionFilter [Action]
rfiOppPos poss = do
    actions <- (untilM  getAction (lookAhead (raise <|> call)))
    rfiaction <- getAction
    return $ filter (isPositions poss) $ rfiaction : actions

rfiOpp :: ActionFilter [Action]
rfiOpp = do
    actions <- (untilM  getAction (lookAhead (raise <|> call)))
    rfiaction <- getAction
    return $ rfiaction : actions

rfi :: ActionFilter (Maybe Action, [Action])
rfi = do
    actions <- many fold
    -- actions <- (untilM  getAction (lookAhead (raise <|> call <|> dealer)))
    -- trace (show "actions:" ++ show actions) $ do
    rfiaction <- getMaybeAction
    case rfiaction of
        Nothing -> return $ (Nothing, actions)
        Just act -> return $ (Just act, act : actions)

accumulator :: ActionFilter (Maybe Action, [Action]) -> ActionFilter [Action]
accumulator actionF = Parser $ \as ->
    case parse actionF as of
        [] -> []
        [((_, actions), rest)] -> [(actions, rest)]



-- isPosition :: ActionFilter [Action]
isPositions poss a =
     let checks = map (\pos -> (position a == pos)) poss in
         or checks


-- until :: ActionFilter [Action] -> ActionFilter [Action] -> ActionFilter [Action]
-- until filt1 filt2 = \actions ->
--     case runFilter filt2 actions of
--         [] -> filt1 <* until filt1 filt2
--         [(res, as)] -> [(res,as)]

runFilter actionF actions =
    case parse actionF actions of
        -- ls -> ls
        [] -> []
        [(res, _)] -> res
        -- ls  -> trace ("\n\n" ++ show ls) $ error "Full input not parsed"

bind :: ActionFilter a -> (a -> ActionFilter b) -> ActionFilter b
bind f fn = Parser $ \actions -> concatMap (\(act, as') -> parse (fn act) as') $ parse f actions

unit :: a -> ActionFilter a
unit a = Parser $ \actions -> [(a,actions)]

instance Functor ActionFilter where
    fmap f (Parser filt) = Parser $ \actions -> [(f a, b) | (a, b) <- filt actions]

instance Applicative ActionFilter where
    pure = return
    (Parser filt1) <*> (Parser filt2) = Parser $
        \actions -> [(f a, as2) | (f, s1) <- filt1 actions, (a, as2) <- filt2 s1]

instance Monad ActionFilter where
    return = unit
    (>>=)  = bind

instance MonadPlus ActionFilter where
  mzero = failure
  mplus = combine

instance Alternative ActionFilter where
  empty = mzero
  (<|>) = option

combine :: ActionFilter a -> ActionFilter a -> ActionFilter a
combine p q = Parser (\s -> parse p s ++ parse q s)

failure :: ActionFilter a
failure = Parser (\cs -> [])

option :: ActionFilter a -> ActionFilter a -> ActionFilter a
option  p q = Parser $ \s ->
  case parse p s of
    []     -> parse q s
    res    -> res

actionsToCombos :: [Action] -> Hand -> [(Combo, Action)]
actionsToCombos actions hand = do
    act <- actions
    -- trace (show act ++ show hand) $ do
    let maybeHolding = Map.lookup (position act) $ players hand
    case maybeHolding of
        -- Just [] -> error "No Holding found"
        Just comb -> return (comb, act)
        otherwise -> error "Position has no holding"
    -- case maybePlayer of
    --     Just p -> return $ holding p
    --     otherwise ->
    --         trace (show maybePlayer) $do
    --             error "Looked for player but there was none"

actionToCombo :: Action -> Hand -> (Combo, Action)
actionToCombo action hand = do
    let maybeHolding = Map.lookup (position action) $ players hand
    case maybeHolding of
        -- Just [] -> error "No Holding found"
        Just comb -> (comb, action)
        otherwise -> error "Position has no holding"

findCombos :: ActionFilter [Action] -> Hand -> [(Combo, Action)]
findCombos actionF hand = do
    let res = runFilter actionF (actions hand)
    let combos = actionsToCombos res hand
    combos

findCombo :: ActionFilter Action -> Hand -> [(Combo, Action)]
findCombo actionF hand = do
    (res, _) <- parse actionF (actions hand)
    let combo = actionToCombo res hand
    return combo

isPosition pos act = pos == position act

buildRange :: ActionFilter [Action] -> [Hand] -> ShapedRangeC
buildRange actionP hands =
    let actions = concatMap (findCombos actionP) (hands)
        actionvals = map (\(c,a) -> (c, action a)) actions
        range = foldr (\(c, a) r -> addComboToCollection 1 a c r) def actionvals in
        range

type ComboAction = (Combo, Action)

addComboActionToRangeC :: ComboAction -> ShapedRangeC -> ShapedRangeC
addComboActionToRangeC (c,a) ranC =
    addComboToCollection 1 (action a) c ranC

-- buildRangeN :: ActionFilter Action -> [Hand] -> ShapedRangeC
-- buildRangeN (c, a) =
--     let actionval = (c, action a)
--         range = foldr (\(c, a) r -> addComboToCollection 1 a c r) def actionvals in
--         range

getHands =  parseFiles ["test_files/bovada-example.txt"]
main = do
    allHands <- getHands
    let hands = take 1000 allHands
    let res = map (\h -> findCombo (nextRaise listPosition) h) hands
    putStrLn . show $ map actions hands
    putStrLn . show $ res
-- main = do
--     hands <- parseDirectory "test_files/Imported Hands/"
--     -- hands <- parseFiles ["bovada-example.txt"]
--     -- trace (show $ length hands) $ do
--     -- let res = concatMap (runFilter rfiOpp) (map actions $ hands)
--     -- let res = concatMap (findCombos rfiOpp) (hands)
--     -- let folds = filter (\(a,c) -> action a == Fold) res
--     -- let raises = filter (\(a,c) -> isRaise a) res
--     -- let res1 = filter (not . null) res
--     -- putStrLn $ show $ map (\(a,c) -> c) folds
--     -- putStrLn $ show $ map (\(a,c) -> c) raises

--     -- let range = addActions res newRange
--     -- timeIt $ putStrLn $ show range
--     -- let range = buildRange rfiOpp (take 100 hands)
--     -- let raiserange = findActionRange range isRaiseValue
--     -- timeIt $ putStrLn $ show $ (range ^. total_range . count)
--     -- timeIt $ putStrLn $ show range
--     let res = concatMap (parse (nextRaise [UTG, UTG_1]). actions) (take 100 hands)
--     trace (show res) $ do
--     -- let range = buildRangeN res
--     -- timeIt $ putStrLn $ show $ countCombo range
--     -- timeIt $ putStrLn $ show $ countCombo Range{_range=raiserange}
--     -- let res = map (\c -> addCombo c range) res

--     return ()