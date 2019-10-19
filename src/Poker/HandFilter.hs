{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}

module Poker.HandFilter
  ( manyTillPlus
  , satisfyIndex
  , satisfyNotIndex
  , Parser(..)
  , (<|>)
  , extractOpps
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
  , root
  , many
  , call
  , fold, leave
  , fullParse
  )
  where

import Poker.Base
import Poker.Parse
import Poker.Range

import Control.Lens hiding (Fold)
import Control.Monad
import Control.Monad.Loops
import Control.Applicative (Applicative, Alternative, liftA2)
import Control.Monad.Combinators
import Data.Maybe

import Text.Megaparsec (manyTill, (<?>))

import Data.Map (Map)
import Data.Map as Map hiding (foldl, foldr, map, filter, fold, take)

import System.TimeIt
import Debug.Trace

import System.IO.Unsafe

{- type and newtype declarations -}

-- TODO make this a maybee type - remove tupality and start error type
type FilterState a = (a, [Action], [Action])

-- Parser type
newtype Parser b = Parser { parse :: ([Action], [Action]) -> Maybe (FilterState b) }

-- Data type for filters - represent a matchable structure that checks
-- for if a hand is valid
data Filter = Filter
              { _filterPos :: [Position]
              , _filterIndices :: [ActionIndex]
              }

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

parserOption :: Parser a -> Parser a -> Parser a
parserOption p q = Parser $ \s ->
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
  mplus = parserOption

instance Alternative Parser where
  empty = mzero
  (<|>) = parserOption

{- Basic functionality - running parsers and simple parser combinators -}

-- test parser command - TODO Pick between test parser and prettyParse
testParser :: Show a => Parser a -> Hand -> IO ()
testParser p h = do
  putStrLn "Hand was:"
  print h
  case fullParse p $ actions h of
    Just (res, rest, opps) -> do
      putStrLn "Result:"
      putStrLn . indent . show $ res
      putStrLn ""
      putStrLn "Rest Actions:"
      putStrLn . indent . unlines . fmap show $ rest
      putStrLn ""
      putStrLn "Opportunities to Act:"
      putStrLn . indent . unlines . fmap show $ opps
    Nothing ->
      putStrLn "parser failed"

-- pretty print parser test
prettyParse :: Show a => Parser a -> [Action] -> IO (Maybe (FilterState a))
prettyParse p actions = do
  case parse p (actions, []) of
    Just res@(res1, res2, res3) -> do
      putStrLn ("Actions:\n\t\t\t" ++ show actions)
      putStrLn ("Result was:\n\t\t\t" ++ show res1)
      putStrLn ("Rest was:\n\t\t\t" ++ show res2)
      putStrLn ("Accumulator was:\n\t\t\t" ++ show res3 <> "\n\n\n")
      return $ Just res
    res -> print "Error when parsing" >> return res

-- Check if an action matches against a provided filter
checkFilter :: Filter -> Action -> Bool
checkFilter filt action = (or $ (==) (position action) <$> _filterPos filt)
                       && (or $ flip checkIndex action <$> _filterIndices filt)

getOpps = Parser $ \(actions, acc) -> return (acc, actions, acc)

setOpps newOpps = Parser $ \(actions, acc) ->
                     return ((), actions, newOpps)

modifyOpps :: ([Action] -> [Action]) -> Parser ()
modifyOpps f = do
  opps <- getOpps
  setOpps $ f opps

addOpp :: Action -> Parser ()
addOpp action = modifyOpps (action :)

extractOpps :: Parser [Action]
extractOpps = Parser $ \(actions, acc) ->
  Just (acc, actions, [])

checkPosition :: Position -> Action -> Bool
checkPosition pos = (==) pos . position

posAction :: Position -> Parser Action
posAction pos = mfilter (checkPosition pos) actionItem

hands = unsafePerformIO $ take 20 <$> test_hands

{- Basic functions -}

item :: Parser Action
item = Parser $ \(actions, acc) ->
    case actions of
        [] -> Nothing
        (a:as) -> return (a, as, a:acc)
        -- (a:as) -> case a of
          -- (PlayerAction _ Leave) -> parse item (as, acc)
          -- (PlayerAction _ SitOut) -> parse item (as, acc)
          -- otherwise -> return (a, as, a:acc)

-- Function that finds the next non-useless action
actionItem :: Parser Action
actionItem = ignoring item >>= \a ->
  case ActionValueIndex $ action a of
    a' | a' == LeaveIndex -> actionItem
       | a' == SitOutIndex -> actionItem
       | a' == ShowdownIndex -> actionItem
       | a' == ResultIndex -> actionItem
       | otherwise -> addOpp a >> return a

-- Matches a parser whilst preserving the accumulator prior to matching
ignoring :: Parser a -> Parser a
ignoring p = Parser $ \(actions, acc) -> do
  (res, actions', _) <- parse p (actions, acc)
  return (res, actions', acc)

-- TODO RENAME
-- First filter is a filter to be ignored
-- Second filter is a filter to be matched on
-- If we find a matching position, then we will either file or match,
-- whilst adding an opportunity either way
-- If not, we check that the action is ignorable and potentially move on
matchIgnoreMatchFilters :: Filter -> Filter -> Parser ()
matchIgnoreMatchFilters ignoreF matchF = do
  (do action <- choice $ map posAction $ _filterPos matchF
      case or $ map (\ind -> checkIndex ind action) $ _filterIndices matchF of
        True -> return ()
        False -> killTree )
    <|> (do action <- ignoring actionItem
            guard $ checkFilter ignoreF action
            matchIgnoreMatchFilters ignoreF matchF)

firstIn :: Filter -> Parser ()
firstIn = matchFilter [FoldIndex]

notPositions :: [Position] -> [Position]
notPositions ps = foldl (\res pos -> filter (pos /=) res) listPosition ps

-- Abstracts one level of matchIgnoreMatchFilters
matchFilter :: [ActionIndex] -> Filter -> Parser ()
matchFilter ignoreIndices filtMatch =
  let ignorePos = notPositions $ _filterPos filtMatch
      filtIgnore = Filter {_filterPos=ignorePos, _filterIndices=ignoreIndices}
  in matchIgnoreMatchFilters filtIgnore filtMatch

-- Matches the next action with the correct position
nextPosAction :: Position -> Parser Action
nextPosAction = skipManyTill actionItem . posAction


indent :: String -> String
indent = unlines . map ('\t' :) . lines

-- combine :: Parser a -> Parser a -> Parser a
-- combine p q = Parser $ \s -> 
--                         let (_, acts, acc) = parse p s
--                             (r, acts', acc') = parse q s in
--                         Just (r, acts', acc++acc')


{- Utilities -}
fullParse p as = parse p (as, [])

parseTest :: Parser a -> [Action] -> [Action]
parseTest p as =
   fst3 <$> parse (do p; extractOpps) (as, []) &
    fromMaybe []
  where fst3 = (\(as, _, _) -> as)

runParse :: Parser a -> [Action] -> Maybe a
runParse p as =
  fst3 <$> parse p (as, [])
  where
    fst3 = (\(as, _, _) -> as)

restAcc p = p >> liftM2 (,) getRestActions extractOpps

opps p = p >> extractOpps

findOpps :: ActionIndex -> Parser ()
findOpps index = do
  res <- many fold
  res_end <- lookAhead actionItem
  case (ActionValueIndex . action $ res_end) == index of
    True -> const () <$> actionItem
    False -> const () <$> (actionItem >> killTree)

-- rfi = do
--   res <- many (fold <|> (ignoring leave))
--   res_end <- lookAhead item
--   case isPlayerAction res_end of
--     True ->
--       if (ActionValueIndex $ action res_end) == AnyRaiseIndex
--         then const () <$> item
--         else item >> killTree
--     False ->
--       const () <$> ignoring item



-- Pull out the actions from the Parser state
getRestActions :: Parser [Action]
getRestActions = Parser $ \(actions, acc) -> return (actions , actions, acc)

-- Mark this parser as no longer matching, whilst maintaining the matching actions
-- Useful for when you found opportunities but no matching final action
killTree = Parser $ \(actions, acc) ->
  Just ((), [], acc)

satisfy p = item >>= \act ->
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

-- Takes a list of ActionIndex and tries to match against each one
satisfyIndexList :: [ActionIndex] -> Parser Action
satisfyIndexList is = foldr ((<|>) . satisfyIndex) failure is

-- This naming issue needs to be fixed
getAction = actionItem

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

-- lookAheadMaybe :: Parser a -> Parser (Maybe a)
-- lookAheadMaybe filt = Parser $ \(actions, acc) ->
--     case parse filt (actions, acc) of
--       Nothing -> Just (Nothing, actions, acc)
--       Just (res, _, _) -> Just (Just res, actions, acc)

-- lookAhead that doesn't fail but instead remains in the active monad
lookAheadMaybe :: Parser a -> Parser (Maybe a)
lookAheadMaybe = optional . lookAhead

-- Takes a filter and returns the match without consuming input or matching opportunities
lookAhead filt = Parser $ \(actions, acc) ->
    case parse filt (actions, acc) of
      Nothing -> Nothing
      Just (res, _, _) -> Just (res, actions, acc)

root = Parser $ \(actions, acc) ->
     case parse actionItem (actions, []) of
       Nothing -> Just ((), actions, acc)
       Just (res, actions', acc') -> Just ((), actions, acc')

manyTillPlus body check = do
  res <- manyTill body (lookAhead check)
  res_end <- check
  return $ res_end : res

-- -- try :: ActionFilter a -> ActionFilter Bool
-- try filt = Parser $ \actions ->
--     case parse filt actions of
--         Nothing -> [([], actions)]
--         res -> res

isPlayerAction :: Action -> Bool
isPlayerAction act = case act of
    (PlayerAction _ (Post _)) -> False
    (PlayerAction _ (PostDead _)) -> False
    (PlayerAction _ Leave) -> False
    (PlayerAction _ Enter) -> False
    (PlayerAction _ SitOut) -> False
    (PlayerAction _ (Showdown _ _)) -> False
    (DealerAction _) -> False
    otherwise -> True

fold = satisfyIndex FoldIndex
raise = satisfyIndex AnyRaiseIndex
bet = satisfyIndexList [AnyRaiseIndex, AnyCallIndex]
call = satisfyIndex AnyCallIndex
check = satisfyIndex CheckIndex
leave = satisfy $ (\x -> (==) x LeaveIndex)
-- rfi = manyTillPlus fold (satisfyNotIndex FoldIndex)

-- Find opportunities to raise from a certain position
-- Will no match if any of prior actions are not folds
rfi :: [Position] -> Parser ()
rfi ps = matchFilter [FoldIndex] raiseFilter
  where
    raiseFilter = Filter ps [AnyRaiseIndex]

-- rfi = do
--   res <- many (fold <|> (ignoring leave))
--   -- res <- many (fold <|> (ignoring leave))
--   -- unsafePerformIO $ putStrLn . show $ res
--   lookAheadMaybe actionItem >>= \case
--     Just res_end ->
--       case isPlayerAction res_end of
--         True ->
--           if (ActionValueIndex $ action res_end) == AnyRaiseIndex
--             then const () <$> item
--             else killTree
--         False -> killTree
--     Nothing -> killTree


dealer = do
  act <- item
  case act of
    (DealerAction d) -> return $ DealerAction d
    otherwise -> failure

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
