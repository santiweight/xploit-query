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
import Data.Map as Map (lookup)
-- import Text.Parsec.Combinator (try)

import Debug.Trace

data FilterError
-- type FilterState a = Either FilterError (a, [Action])
type FilterState a = (a, [Action])

newtype ActionFilter a = ActionFilter { actionfilter :: [Action] -> [FilterState a] }

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
item = ActionFilter $ \actions ->
    case actions of
        [] -> []
        (a:as) -> [(a, as)]

openOpp = many getAction <* (raise <|> call)

-- isRaiseF = ActionFilter $ \actions ->
--     case handfilter raise actions

lookAhead :: ActionFilter a -> ActionFilter Bool
lookAhead filt = ActionFilter $ \actions ->
    case actionfilter filt actions of
        [] -> [(False, actions)]
        otherwise -> [(True, actions)]

satisfy :: (Action -> Bool) -> ActionFilter Action
satisfy p = getAction >>= \c ->
  if p c
  then unit c
  else (ActionFilter (\cs -> []))

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
    actions <- (untilM  getAction (lookAhead raise))
    rfiaction <- raise
    many item
    return $ actions ++ [rfiaction]


-- until :: ActionFilter [Action] -> ActionFilter [Action] -> ActionFilter [Action]
-- until filt1 filt2 = \actions ->
--     case runFilter filt2 actions of
--         [] -> filt1 <* until filt1 filt2
--         [(res, as)] -> [(res,as)]

runFilter actionF actions =
    case actionfilter actionF actions of
        -- ls -> ls
        [(res, [])] -> res
        [] -> []
        ls  -> trace ("\n\n" ++ show ls) $ error "Full input not parsed"

bind :: ActionFilter a -> (a -> ActionFilter b) -> ActionFilter b
bind f fn = ActionFilter $ \actions -> concatMap (\(act, as') -> actionfilter (fn act) as') $ actionfilter f actions

unit :: a -> ActionFilter a
unit a = ActionFilter $ \actions -> [(a,actions)]

instance Functor ActionFilter where
    fmap f (ActionFilter filt) = ActionFilter $ \actions -> [(f a, b) | (a, b) <- filt actions]

instance Applicative ActionFilter where
    pure = return
    (ActionFilter filt1) <*> (ActionFilter filt2) = ActionFilter $
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
combine p q = ActionFilter (\s -> actionfilter p s ++ actionfilter q s)

failure :: ActionFilter a
failure = ActionFilter (\cs -> [])

option :: ActionFilter a -> ActionFilter a -> ActionFilter a
option  p q = ActionFilter $ \s ->
  case actionfilter p s of
    []     -> actionfilter q s
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

main = do
    hands <- parseDirectory "Imported Hands/"
    -- hands <- parseFiles ["bovada-example.txt"]
    -- let res = concatMap (runFilter rfiOppF) (map actions $ hands)
    let res = concatMap (findCombos rfiOppF) (hands)
    let folds = filter (\(a,c) -> action a == Fold) res
    let raises = filter (\(a,c) -> isRaise a) res
    -- let res1 = filter (not . null) res
    putStrLn $ show $ map (\(a,c) -> c) folds
    putStrLn $ show $ map (\(a,c) -> c) raises
    return ()
