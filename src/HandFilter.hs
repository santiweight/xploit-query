{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
module HandFilter
    (
    ) where

import Poker
import PokerParse

import Control.Monad
-- import Control.Monad.HT as M
import Control.Monad.Loops
import Control.Applicative

import Text.Megaparsec (manyTill)

import Data.Map (Map)
import Data.Map as Map (lookup, insertWithKey, empty, adjust, alter, insert, findWithDefault)

import System.TimeIt

import Debug.Trace

data FilterError
-- type FilterState a = Either FilterError (a, [Action])
type FilterState a = (a, [Action])

newtype Parser a b = Parser { parse :: a -> [FilterState b] }
-- newtype ActionFilter a = ActionFilter { parse :: [Action] -> [FilterState a] }
type ActionFilter = Parser [Action]

defAction = PlayerAction UTG Fold
defAction2 = PlayerAction UTG Fold
defAction3 = PlayerAction UTG (Raise 2 1)
defAction4 = PlayerAction UTG (Call 1)

-- try :: ActionFilter a -> ActionFilter a

testActions = [defAction, defAction2, defAction3, defAction4]

isBovada hand = network hand == Bovada

nextPlayerAction :: ActionFilter Action
nextPlayerAction = do
    action <- item
    case action of
        PlayerAction _ Leave  -> getAction
        PlayerAction _ Enter  -> getAction
        PlayerAction _ SitOut -> getAction
        otherwise -> return action

getAction = nextPlayerAction

item :: ActionFilter Action
item = Parser $ \actions ->
    case actions of
        [] -> []
        (a:as) -> [(a, as)]

openOpp = many getAction <* (raise <|> call)

-- isRaiseF = ActionFilter $ \actions ->
--     case handfilter raise actions

lookAhead :: ActionFilter a -> ActionFilter Bool
lookAhead filt = Parser $ \actions ->
    case parse filt actions of
        [] -> [(False, actions)]
        otherwise -> [(True, actions)]

satisfy :: (Action -> Bool) -> ActionFilter Action
satisfy p = getAction >>= \c ->
  if p c
  then unit c
  else (Parser (\cs -> []))

fold = satisfy ((Fold ==) . action)
raise = satisfy isRaise
isRaise a = case a of
    (PlayerAction{action=Raise _ _}) -> True
    (PlayerAction{action=AllInRaise _ _}) -> True
    otherwise -> False
call = satisfy (\a -> case a of
        (PlayerAction{action=Call _}) -> True
        otherwise -> False)
check = satisfy (\a -> case a of
        (PlayerAction{action=Check}) -> True
        (PlayerAction{action=CheckTimeOut}) -> True
        otherwise -> False)

rfiOppF :: ActionFilter [Action]
rfiOppF = do
    actions <- (untilM  getAction (lookAhead (raise <|> call)))
    rfiaction <- raise
    many item
    return $ actions ++ [rfiaction]


-- until :: ActionFilter [Action] -> ActionFilter [Action] -> ActionFilter [Action]
-- until filt1 filt2 = \actions ->
--     case runFilter filt2 actions of
--         [] -> filt1 <* until filt1 filt2
--         [(res, as)] -> [(res,as)]

runFilter actionF actions =
    case parse actionF actions of
        -- ls -> ls
        [(res, [])] -> res
        [] -> []
        ls  -> trace ("\n\n" ++ show ls) $ error "Full input not parsed"

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

actionsToCombos :: [Action] -> Hand -> [(Action, Combo)]
actionsToCombos actions hand = do
    act <- actions
    -- trace (show act ++ show hand) $ do
    let maybeHolding = Map.lookup (position act) $ players hand
    case maybeHolding of
        -- Just [] -> error "No Holding found"
        Just comb -> return (act, comb)
        otherwise -> error "Position has no holding"
    -- case maybePlayer of
    --     Just p -> return $ holding p
    --     otherwise ->
    --         trace (show maybePlayer) $do
    --             error "Looked for player but there was none"

findCombos :: ActionFilter [Action] -> Hand -> [(Action, Combo)]
findCombos actionF hand = do
    let res = runFilter rfiOppF (actions hand)
    let combos = actionsToCombos res hand
    combos

data Range = Range { range :: Map Combo (Map ActionValue Int)
                   , combo_num :: Int
                   , actionTotalFreqs :: Map ActionValue Int
                   }
    deriving (Read, Show)

newRange = Range Map.empty 0 Map.empty

-- addComboToRange combo range = do


-- appendActionToCombo key (n:ns) old_acts = n:appendActionToCombo key ns old_acts
-- appendActionToCombo key [] old_acts = old_acts

addCount :: ActionValue -> Int -> Int -> Int
addCount a num old_count  = num + old_count

incCount :: Num a => Maybe a -> Maybe a
incCount count = case count of
    Nothing -> Just 1
    Just x -> return $ x+1

addAction actionArg comb rangerec =
    let newfreqs = Map.alter incCount (action actionArg) (actionTotalFreqs rangerec)
        newfreqsrange = rangerec { actionTotalFreqs=newfreqs}
        combomap = Map.findWithDefault Map.empty comb (range newfreqsrange)
        newcombofreqs = Map.alter incCount (action actionArg) combomap in
        newfreqsrange { range=Map.insert comb newcombofreqs (range newfreqsrange)
                      , combo_num=combo_num newfreqsrange + 1}
        -- newcombofreqs = Map.insertWithKey addCount (action actionArg) 1 (


addActions ((a,c):as) range = addActions as (addAction a c range)
addActions [] range = range

main = do
    -- hands <- parseDirectory "Imported Hands/"
    hands <- parseFiles ["bovada-example.txt"]
    -- trace (show $ length hands) $ do
    -- let res = concatMap (runFilter rfiOppF) (map actions $ hands)
    let res = concatMap (findCombos rfiOppF) (hands)
    let folds = filter (\(a,c) -> action a == Fold) res
    let raises = filter (\(a,c) -> isRaise a) res
    -- let res1 = filter (not . null) res
    -- putStrLn $ show $ map (\(a,c) -> c) folds
    -- putStrLn $ show $ map (\(a,c) -> c) raises

    let range = newRange
    let range1 = addActions res range
    timeIt $ putStrLn $ show range1
    putStrLn $ show $ combo_num range1
    -- let res = map (\c -> addCombo c range) res

    return ()
