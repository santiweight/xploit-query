{-# LANGUAGE LambdaCase #-}
module Poker.Data
  ()
where

import qualified Data.Map as Map

import Control.Lens hiding (Fold)
import Poker.HandFilter
import Data.Text.Lazy.IO as I
import Data.Map (Map)
import Poker.Base
import Poker.Parse

import Data.Aeson.Text (encodeToLazyText)



-- Takes a seat map and generates the appropriate Position map by traversing
-- Player posiitons
-- Players will be lost if they are not active at the table
seatMapToPositionMap :: Map Seat Player -> Map Position Player
seatMapToPositionMap seatMap =
  let go player newMap = case playerPosition player of
        Nothing -> newMap
        Just pos -> Map.insert pos player newMap
  in Map.foldr go Map.empty seatMap

-- Checks if the table has 6 players
-- TODO make this generic across table sizes
isFullTable :: Map Position Player -> Bool
isFullTable = (== 6) . length . Map.elems

-- Extract the stacks as a list of stacks from the Player map
posMapToStackList :: Map Position Player -> [Double]
posMapToStackList = map stack . Map.elems

-- Placeholder Table Errors
-- TODO implement a legitimate error system
data HandError = NonFullTable
               | IncorrectDataSize String
               deriving Show

-- Finds all the stacks at a Hand's table
-- Checks for errors first
getStacks :: Hand -> Either HandError [Double]
getStacks hand =
  let posMap = seatMapToPositionMap . _playerMap $ hand
  in case isFullTable posMap of
    False -> Left NonFullTable
    True -> Right $ posMapToStackList posMap

-- Takes a position and finds the player at that position
-- TODO either implement this is in the maybe monad or find
-- better invariants to preserve the correctness of this function
getHolding :: Position -> Map Position Player -> Combo
getHolding pos posMap = case Map.lookup  pos posMap of
                          Nothing -> error "non-existent position requested"
                          Just player -> case _playerHolding player of
                            -- TODO perhaps the logic for players with/without holding should be separated
                            -- in the data structures so it's less unsafe
                            Nothing -> error "player should have holding but doesn't"
                            Just holding -> holding


getUTGHolding = getHolding UTG


-- Augment a head ignoring any kind of context
augmentHandNaive :: Combo -> [Combo]
augmentHandNaive (HoldEm ((Card r1 s1), (Card r2 s2)))
  | s1 == s2 = concat . replicate 3 $ [ HoldEm ((Card r1 suit'), (Card r2 suit')) | suit' <- listSuit ]
  | r1 == r2 = concat . replicate 2 $ [ HoldEm ((Card r1 suit1'), (Card r2 suit2')) |
                 suit1' <- listSuit,
                 suit2' <- enumFrom suit1',
                 suit1' /= suit2' ]
  | otherwise = [ HoldEm ((Card r1 suit1'), (Card r2 suit2')) |
                  suit1' <- listSuit,
                  suit2' <- listSuit,
                  (suit1' /= suit2') ]
  where
    notSuited (HoldEm (Card _ s1, Card _ s2)) = s1 /= s2

-- -- Augment a head ignoring any kind of context
-- augmentHandNaive :: Combo -> [Combo]
-- augmentHandNaive (HoldEm ((Card r1 s1), (Card r2 s2)))
--   | s1 == s2 = [ HoldEm ((Card r1 suit'), (Card r2 suit')) | suit' <- listSuit ]
--   | r1 == r2 = [ HoldEm ((Card r1 suit1'), (Card r2 suit2')) |
--                  suit1' <- listSuit,
--                  suit2' <- enumFrom suit1',
--                  suit1' /= suit2' ]
--   | otherwise = [ HoldEm ((Card r1 suit1'), (Card r2 suit2')) |
--                   suit1' <- listSuit,
--                   suit2' <- listSuit,
--                   (suit1' /= suit2') ]
--   where
--     notSuited (HoldEm (Card _ s1, Card _ s2)) = s1 /= s2


-- Creates a simple vector from the card
-- This is a simple enumeration vector with no one-hot encoding
-- TODO start using vectors for speed
holdingToSimpleVector :: Combo -> [Double]
holdingToSimpleVector (HoldEm (c1,c2)) = concatMap cardToVector [c1,c2]
  where
    -- TODO make this safe with fixed length lists and vector
    cardToVector :: Card -> [Double]
    cardToVector c@(Card r s)= -- trace (show c) $
      fromIntegral <$> [fromEnum r, fromEnum s]

-- Creates a one-hot encoding of a shape
-- pair    -> [1,0,0]
-- suited  -> [0,1,0]
-- offsuit -> [0,0,1]
holdingOneHotShape :: Combo -> [Int]
holdingOneHotShape comb@(HoldEm (c1,c2)) | rank c1 == rank c2 = [1, 0, 0]
                                         | suit c1 == suit c2 = [0, 1, 0]
                                         | otherwise          = [0, 0, 1]

-- One hot encode the ranks of two cards
holdingOneHotRanks :: Combo -> [Int]
holdingOneHotRanks (HoldEm (c1, c2)) = concatMap (oneHotRank . fromEnum . rank) [c1,c2]
  where
    oneHotRank :: Int -> [Int]
    oneHotRank r = replicate 13 0 & element r .~ 1

-- Make everything a one-hot encoding, from ranks to shape
holdingToOneHotEverything :: Combo -> [Double]
holdingToOneHotEverything comb@(HoldEm (c1,c2)) = fromIntegral <$> ranks ++ shape
  where
    ranks = holdingOneHotRanks comb :: [Int]
    shape = holdingOneHotShape comb :: [Int]

-- Creates a one-hot encoding of the shape but not of the hand itself
holdingToOneHotShape :: Combo -> [Double]
holdingToOneHotShape comb@(HoldEm (c1,c2)) = fromIntegral <$> ranks ++ shape
  where
    ranks = fromEnum . rank <$> [c1, c2]
    -- shape = [p, s, o]
    shape = holdingOneHotShape comb

  
-- Generic data point creation for a hand
-- Currently switchind the data type by hand
-- TODO make this generic
-- TODO currently unsafe version here with no errors for incorrect data length
handToUTGDataPoint :: Hand -> Maybe [Double]
handToUTGDataPoint hand =
  --  TODO currently naively augmenting hand - abstract
  let posMap = seatMapToPositionMap . _playerMap $ hand
  in case getStacks hand of
          Left _ -> Nothing
          Right stacks -> let holdingData = holdingToOneHotEverything $ getHolding UTG posMap
                              res = holdingData ++ stacks
                          in Just res -- unchecked for length or anything similar

handToAllDataPoints :: Hand -> IsHero -> [[Double]]
handToAllDataPoints hand chooseHero =
  let handActions = filter isPlayerAction $ actions hand
  in []
  -- go prevActs (a:as) = if chooseHero == isHero a
  --                         then
  where
    encodeAction = mkOneHot 6
    mkActionVector :: Int -> Double -> [Double]
    mkActionVector ind amount = (encodeAction ind) ++ [amount]
    actionToDataPoint action = case action of
      Fold -> mkActionVector 0 0
      FoldTimeout -> mkActionVector 0 0
      Bet amount -> mkActionVector 1 amount
      Raise _ amount -> mkActionVector 2 amount
      AllIn amount -> mkActionVector 3 amount
      AllInRaise _ amount -> mkActionVector 4 amount

mkOneHot :: Num a => Int -> Int -> [a]
mkOneHot size index = take size (repeat 0) &
  (element index) .~ 1

-- data ActionValue = Call Double
--             | Raise {amt_from :: Double,
--                      amt_to :: Double}
--             | AllInRaise {amt_from :: Double,
--                           amt_to :: Double}
--             | Bet Double
--             | AllIn Double
--             | Return Double
--             | Result Double
--             | Fold | FoldTimeout
--             | Check | CheckTimeOut
--             | OtherAction
--             deriving (Read, Show, Eq, Ord)

-- data Action = PlayerAction { position::Position
--                            , action::ActionValue
--                            , isHero :: IsHero }
--             -- | PlayerTableAction TableAction
--             | DealerAction DealerActionValue
--             | TableAction
--     deriving (Read, Show)

handToUTGDataPointAugNaive :: Hand -> [[Double]]
handToUTGDataPointAugNaive hand =
  --  TODO currently naively augmenting hand - abstract
  let posMap = seatMapToPositionMap . _playerMap $ hand
  in case getStacks hand of
          Left _ -> []
          Right stacks ->
            let holdingData = fmap holdingToOneHotEverything . augmentHandNaive $ getHolding UTG posMap
                res = zipWith (++) holdingData $ repeat stacks
            in res -- unchecked for length or anything similar

-- Check if Hand had UTG raise
isUTGRaise :: Hand -> Bool
isUTGRaise hand =
  let res = parseHand raise hand
  in case res of
    Just (_, rest, _) -> rest /= []
    Nothing -> False

-- handToUTGDataPoint :: Hand -> Either HandError [Double]
  -- handToUTGDataPoint hand =
--   let posMap = seatMapToPositionMap . _playerMap $ hand
--   in do
--     stacks <- getStacks hand
--     let holdingData = holdingToNumVector $ getHolding UTG posMap
--     let res = holdingData ++ stacks
--     case (length res == 6 + 4) of
--       True -> return $ res
--       False -> Left $ IncorrectDataSize $ "Found data of size " ++ show (length res)

-- test = do
--   putStrLn =<< prettyShow . head <$> test_hands
--   putStrLn =<< show . head <$> test_hands
--   putStrLn =<< show . handToUTGDataPoint . head <$> test_hands
--   handToUTGDataPoint . head <$> test_hands >>= \case
--     Right res -> return res
--     Left _ -> error "error"

-- main :: IO ()
main = do
  -- result <- catMaybes . fmap handToUTGDataPoint <$> test_hands
  return ()
  result <- testHands

  let x_y = concatMap (\hand -> zipWith (++) (handToUTGDataPointAugNaive hand) $ repeat [fromIntegral . fromEnum . isUTGRaise $ hand]) $ result
  -- let x_y = concatMap (\hand -> map (\h -> (handToUTGDataPoint h, fromEnum $ isUTGRaise h)) $ (augmentHandNaive hand)) $ result
  -- let func [] = []
  --     func ((m, val):xs) = case m of
  --       Nothing -> func xs
  --       Just x -> (x, val) : func xs
  -- L.writeFile "test.json" $ encode $ x_y
  I.writeFile "test.json" (encodeToLazyText x_y)
  return x_y

-- I.writeFile "myfile.json" (encodeToLazyText meowmers)
