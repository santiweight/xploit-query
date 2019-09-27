{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Poker.HandFilter
  ( manyTillPlus
  , satisfyIndex
  , satisfyNotIndex
  , Parser(..)
  , (<|>)
  , extract
  , lookAhead
  , item
  , bet
  , raise
  , rfi
  , opps
  , parseTest
  , runParse
  , restAcc
  , getRestActions
  , buildRange
  , actionItem
  )
  where

import Poker.Base
import Poker.Parse
import Poker.Range

import Control.Lens hiding (Fold)
import Control.Monad
import Control.Monad.Loops
import Control.Applicative
import Data.Maybe

import Text.Megaparsec (manyTill, (<?>))

import Data.Map (Map)
import Data.Map as Map hiding (foldr, map, filter, fold, take)

import System.TimeIt
import Debug.Trace

{- type and newtype declarations -}

type FilterState a = (a, [Action], [Action])
                        -- { _result :: a
                        -- , _rest :: [Action]
                        -- , _accumulator :: [Action]}

newtype Parser b = Parser { parse :: ([Action], [Action]) -> Maybe (FilterState b) }

type ActionFilter = Parser [Action]

idParser = Parser $ \(actions, acc) -> Just ((), actions, acc)

{- instance functions and declarations -}

bind :: Parser a -> (a -> Parser b) -> Parser b
bind f fn = Parser $ \(actions, acc) ->
                       case  parse f (actions, acc) of
                         Nothing -> Nothing
                         Just (res, actions', acc') -> parse (fn res) (actions', acc')

unit :: a -> Parser a
unit a = Parser $ \(actions, acc) -> Just (a, actions, acc)

failure :: Parser a
failure = Parser $ const Nothing

option :: Parser a -> Parser a -> Parser a
option p q = Parser $ \s ->
                        case parse p s of
                          Nothing -> parse q s
                          Just res -> Just res

instance Functor Parser where
    fmap f (Parser filt) = Parser $ \actions -> do
      (a, actions, acc) <- filt actions
      return (f a, actions, acc)

instance Applicative Parser where
    pure = return
    (Parser filt1) <*> (Parser filt2) = Parser $
        \actions -> do
          (f, actions, acc) <- filt1 actions
          (a, actions2, acc2) <- filt2 (actions, acc)
          return (f a, actions2, acc2)

instance Monad Parser where
    return = unit
    (>>=)  = bind

instance MonadPlus Parser where
  mzero = failure
  mplus = option

instance Alternative Parser where
  empty = mzero
  (<|>) = option

-- combine :: Parser a -> Parser a -> Parser a
-- combine p q = Parser $ \s -> 
--                         let (_, acts, acc) = parse p s
--                             (r, acts', acc') = parse q s in
--                         Just (r, acts', acc++acc')


{- Utilities -}

parseTest :: Parser a -> [Action] -> [Action]
parseTest p as =
   fst3 <$> parse (do p; extract) (as, []) &
    fromMaybe []
  where fst3 = (\(as, _, _) -> as)

runParse :: Parser a -> [Action] -> Maybe a
runParse p as =
  fst3 <$> parse p (as, [])
  where
    fst3 = (\(as, _, _) -> as)

restAcc p = do
  p
  liftM2 (,) getRestActions extract

item :: Parser Action
item = Parser $ \(actions, acc) ->
    case actions of
        [] -> Nothing
        (a:as) -> return (a, as, a:acc)
        -- (a:as) -> case a of
          -- (PlayerAction _ Leave) -> parse item (as, acc)
          -- (PlayerAction _ SitOut) -> parse item (as, acc)
          -- otherwise -> return (a, as, a:acc)

actionItem :: Parser Action
actionItem = Parser $ \(actions, acc) ->
  case recGetAction actions of
    Just (res, rs) -> return (res, rs, res : acc)
    Nothing -> Nothing
  where
    recGetAction actions = case actions of
                    [] -> Nothing
                    (act:as) -> case ActionValueIndex . action $ act of
                      a
                        | a == LeaveIndex -> recGetAction as
                        | a == SitOutIndex -> recGetAction as
                        | otherwise -> Just (act, as)

ignoring :: Parser a -> Parser a
ignoring p = Parser $ \(actions, acc) -> do
  (res, actions', _) <- parse p (actions, acc)
  return (res, actions', acc)

extract :: Parser [Action]
extract = Parser $ \(actions, acc) ->
  Just (acc, actions, [])

opps p = do
  p
  extract

getRestActions :: Parser [Action]
getRestActions = Parser $ \(actions, acc) ->
  Just (actions , actions, acc)

killTree = Parser $ \(actions, acc) ->
  Just ((), [], acc)

satisfy p = actionItem >>= \act ->
  if p (ActionValueIndex . action $ act)
    then unit act
    else failure


satisfyNotIndex i = item >>= \act ->
  if (ActionValueIndex . action $ act) /= i
    then unit act
    else failure

satisfyIndex i = actionItem >>= \act ->
  if (ActionValueIndex . action $ act) == i
    then unit act
    else failure

satisfyIndexOf is = foldr ((<|>) . satisfyIndex) failure is

-- getMaybeAction :: ActionFilter (Maybe Action)
-- getMaybeAction = Parser $ \actions ->
--     -- trace ("\n actions:\n    " ++ show actions) $ do
--     case actions of
--         [] -> [(Nothing, [])]
--         (a:as) -> case a of
--             PlayerAction _ Leave  -> parse getMaybeAction as
--             PlayerAction _ Enter  -> parse getMaybeAction as
--             PlayerAction _ SitOut -> parse getMaybeAction as
--             DealerAction _ -> [(Nothing, as)]
--             otherwise -> [(Just a, as)]

lookAhead filt = Parser $ \(actions, acc) ->
    case parse filt (actions, acc) of
      Nothing -> Nothing
      Just (res, _, _) -> Just (res, actions, acc)

manyTillPlus body check = do
  res <- manyTill body (lookAhead check)
  res_end <- check
  return $ res_end : res

-- -- try :: ActionFilter a -> ActionFilter Bool
-- try filt = Parser $ \actions ->
--     case parse filt actions of
--         Nothing -> [([], actions)]
--         res -> res

fold = satisfyIndex FoldIndex
raise = satisfyIndex AnyRaiseIndex
bet = satisfyIndexOf [AnyRaiseIndex, AnyCallIndex]
call = satisfyIndex AnyCallIndex
check = satisfyIndex CheckIndex
leave = satisfyIndex LeaveIndex
-- rfi = manyTillPlus fold (satisfyNotIndex FoldIndex)

rfi = do
  res <- many (fold <|> leave)
  res_end <- actionItem
  if (ActionValueIndex $ action res_end) == AnyRaiseIndex
    then return ()
    else killTree

dealer = do
  act <- item
  case act of
    (DealerAction d) -> return $ DealerAction d
    otherwise -> failure

-- block filt = Parser $ (\actions ->
--     case parse filt actions of
--         [] -> [([], action)]
--         res -> )

-- nextCall ps = do
--     -- FIX ME CHECK SHOULD COME BEFORE
--     actions <- (whileM $ lookAhead (fold)) $ getAction
--     firstAction <- getMaybeAction
--     case firstAction of
--         Just action -> case isCall action of
--                 True -> return (Just action, action:actions)
--                 False -> return (Nothing, action:actions)
--         Nothing -> return (Nothing, actions)

-- nextRaise ps = do
--     -- FIX ME CHECK SHOULD COME BEFORE
--     actions <- (whileM $ lookAhead (fold)) $ getAction
--     firstAction <- getMaybeAction
--     case firstAction of
--         Just action -> case isRaise action of
--                 True -> return (Just action, action:actions)
--                 False -> return (Nothing, action:actions)
--         Nothing -> return (Nothing, actions)

-- rfiOppPos :: [Position] -> ActionFilter [Action]
-- rfiOppPos poss = do
--     actions <- (untilM  getAction (lookAhead (raise <|> call)))
--     rfiaction <- getAction
--     return $ filter (isPositions poss) $ rfiaction : actions

-- rfiOpp :: ActionFilter [Action]
-- rfiOpp = do
--     actions <- (untilM  getAction (lookAhead (raise <|> call)))
--     rfiaction <- getAction
--     return $ rfiaction : actions

-- rfi :: ActionFilter (Maybe Action, [Action])
-- rfi = do
--     actions <- many fold
--     rfiaction <- getMaybeAction
--     case rfiaction of
--         Nothing -> return $ (Nothing, actions)
--         Just act -> return $ (Just act, act : actions)
--         -- THIS LOGIC INCLUDES CALLS AS RAISES

-- accumulator :: ActionFilter (Maybe Action, [Action]) -> ActionFilter [Action]
-- accumulator actionF = Parser $ \as ->
--     case parse actionF as of
--         [] -> []
--         [((_, actions), rest)] -> [(actions, rest)]



-- -- isPosition :: ActionFilter [Action]
-- isPositions poss a =
--      let checks = map (\pos -> (position a == pos)) poss in
--          or checks


-- -- until :: ActionFilter [Action] -> ActionFilter [Action] -> ActionFilter [Action]
-- -- until filt1 filt2 = \actions ->
-- --     case runFilter filt2 actions of
-- --         [] -> filt1 <* until filt1 filt2
-- --         [(res, as)] -> [(res,as)]

-- runFilter actionF actions =
--     case parse actionF actions of
--         -- ls -> ls
--         [] -> []
--         [(res, _)] -> res
--         -- ls  -> trace ("\n\n" ++ show ls) $ error "Full input not parsed"

actionsToCombos :: [Action] -> Hand -> [(Combo, Action)]
actionsToCombos actions hand = do
    act <- actions
    let maybeHolding = Map.lookup (position act) $ players hand
    case maybeHolding of
        Just comb -> return (comb, act)
  
--         otherwise -> error "Position has no holding"

-- actionToCombo :: Action -> Hand -> (Combo, Action)
-- actionToCombo action hand = do
--     let maybeHolding = Map.lookup (position action) $ players hand
--     case maybeHolding of
--         -- Just [] -> error "No Holding found"
--         Just comb -> (comb, action)
--         otherwise -> error "Position has no holding"

findCombos :: Parser [Action] -> Hand -> [(Combo, Action)]
findCombos actionF hand = do
    let res = fromMaybe [] $ runParse (opps actionF) (actions hand)
    let combos = actionsToCombos res hand
    combos

-- findCombo :: ActionFilter Action -> Hand -> [(Combo, Action)]
-- findCombo actionF hand = do
--     (res, _) <- parse actionF (actions hand)
--     let combo = actionToCombo res hand
--     return combo

-- isPosition pos act = pos == position act

buildRange :: Parser [Action] -> [Hand] -> ShapedRangeC
buildRange actionP hands =
    let actions = concatMap (findCombos actionP) (hands)
        actionvals = map (\(c,a) -> (c, action a)) actions
        range = foldr (\(c, a) r -> addComboToCollection 1 a c r) def actionvals in
        range

-- type ComboAction = (Combo, Action)

-- addComboActionToRangeC :: ComboAction -> ShapedRangeC -> ShapedRangeC
-- addComboActionToRangeC (c,a) ranC =
--     addComboToCollection 1 (action a) c ranC

-- getHands =  parseFiles ["test_files/bovada-example.txt"]
-- -- main = do
--     -- allHands <- getHands
--     -- let hands = take 1000 allHands
--     -- let res = map (\h -> findCombo (nextRaise listPosition) h) hands
--     -- putStrLn . show $ map actions hands
--     -- putStrLn . show $ res
-- --
-- -- main = do
-- --     hands <- parseDirectory "test_files/Imported Hands/"
-- --     -- hands <- parseFiles ["bovada-example.txt"]
-- --     -- trace (show $ length hands) $ do
-- --     -- let res = concatMap (runFilter rfiOpp) (map actions $ hands)
-- --     -- let res = concatMap (findCombos rfiOpp) (hands)
-- --     -- let folds = filter (\(a,c) -> action a == Fold) res
-- --     -- let raises = filter (\(a,c) -> isRaise a) res
-- --     -- let res1 = filter (not . null) res
-- --     -- putStrLn $ show $ map (\(a,c) -> c) folds
-- --     -- putStrLn $ show $ map (\(a,c) -> c) raises

-- --     -- let range = addActions res newRange
-- --     -- timeIt $ putStrLn $ show range
-- --     -- let range = buildRange rfiOpp (take 100 hands)
-- --     -- let raiserange = findActionRange range isRaiseValue
-- --     -- timeIt $ putStrLn $ show $ (range ^. total_range . count)
-- --     -- timeIt $ putStrLn $ show range
-- --     let res = concatMap (parse (nextRaise [UTG, UTG_1]). actions) (take 100 hands)
-- --     trace (show res) $ do
-- --     -- let range = buildRangeN res
-- --     -- timeIt $ putStrLn $ show $ countCombo range
-- --     -- timeIt $ putStrLn $ show $ countCombo Range{_range=raiserange}
-- --     -- let res = map (\c -> addCombo c range) res

-- --     return ()
