{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE TemplateHaskell #-}

module Poker.Data
  ( OneHot (..)
  )
where

import qualified Data.Map as Map
import Control.Lens hiding (Fold)
-- import Poker.HandFilter
import Data.Text.Lazy.IO as I
import Data.Map (Map)
import Poker.Base
import Poker.Parse.Base

import Data.Aeson.Text (encodeToLazyText)
import Control.Monad.Reader

type Config a = Reader ConfigEnv a

data HandEncoding = HandEncoding { _includeShape :: Bool
                                 , _rankEncodingHand :: EncodingType
                                 , _suitEncodingHand :: EncodingType
                                 }

data ConfigEnv = ConfigEnv { _betEncoding :: EncodingType
                           , _rankEncoding :: EncodingType
                           , _suitEncoding :: EncodingType
                           , _handEncoding :: HandEncoding
                           , _shapeEncoding :: EncodingType
                           , _actionEncoding :: ActionEncoding
                           }

data EncodingType = EncodeOneHot
                  | EncodeContinuous

data ActionEncoding = ActionSimpleEncoding
                    | ActionBucketEncoding
                      { _checkBuckets :: [ActionIx]
                      , _betBuckets :: [ActionIx]
                      , _raiseBuckets :: [ActionIx]
                      , _foldBuckets :: [ActionIx]
                      , _callBuckets :: [ActionIx]
                      }

makeLenses ''ConfigEnv

newtype Continuous = MkContinuous [Double]

{- OneHot Class and Instances -}

class OneHot a where
  -- Takes type a and encodes it as one-hot array
  toOneHot :: a -> [Double]

instance OneHot Suit where
  -- Creates a one-hot encoding of a shape
  -- pair    -> [1,0,0]
  -- suited  -> [0,1,0]
  -- offsuit -> [0,0,1]
  toOneHot suit = createOneHot (length listSuit) $ fromEnum suit

instance OneHot Rank where
  -- Similar to the OneHot Rank instance
  toOneHot rank = createOneHot (length listRank) $ fromEnum rank

instance OneHot Shape where
  -- Similar to the OneHot Rank instance
  toOneHot rank = createOneHot (length listShape) $ fromEnum rank

instance OneHot Card where
  -- Encoding of Card type is the concatenation of the encodings for the cards
  -- rank and suit
  toOneHot (Card r s) = toOneHot r <> toOneHot s

{- Encodable Class and Instances -}

class Encodable a where
  -- generic function to encode data to a vector based on config settings
  encode :: a -> Config [Double]

instance Encodable a => Encodable [a] where
  -- Encoding of a list of Encodable types
  -- encode :: Encodable a => [a] -> Config [Double]
  encode list = fmap concat . sequence $ (encode <$> list)

instance Encodable Rank where
  -- Queries the Reader to encode Rank appropriately
  encode rank =
    _rankEncoding <$> ask >>= \case
      EncodeOneHot -> return $ createOneHot (length listRank) $ fromEnum rank
      EncodeContinuous -> return . pure . fromIntegral . fromEnum $ rank

instance Encodable Suit where
  -- Queries the Reader to encode Suit appropriately
  encode suit =
    _suitEncoding <$> ask >>= \case
      EncodeOneHot -> return $ createOneHot (length listSuit) $ fromEnum suit
      EncodeContinuous -> return . pure . fromIntegral . fromEnum $ suit

instance Encodable Shape where
  -- Queries the Reader to encode Shape appropriately
  encode shape =
    _shapeEncoding <$> ask >>= \case
      EncodeOneHot -> return $ createOneHot (length listShape) $ fromEnum shape
      EncodeContinuous -> return . pure . fromIntegral . fromEnum $ shape

instance Encodable Card where
  -- Card encoding is the concatenation of the Rank and Suit encodings
  encode (Card rank suit) = (<>) <$> encode rank <*> encode suit

instance Encodable Combo where
  encode comb@(HoldEm (c1, c2)) = do
    incShape <- _includeShape . _handEncoding <$> ask
    case incShape of
      True -> fmap concat $ sequence [encode c1, encode c2, encode (getShape comb)]
      False -> (<>) <$> encode c1 <*> encode c2

instance Encodable ActionValue where
  encode val =
    (_actionEncoding <$> ask) >>= \case
      ActionSimpleEncoding -> return . ((<>) <$> getActionInt <*> getBetValues) $ val
      _ -> error "Bucket action encoding unimplemented"
    where
      getBetValues FoldTimeout = [0, 0]
      getBetValues Fold = [0, 0]
      getBetValues Check = [0, 0]
      getBetValues CheckTimeOut = [0, 0]
      getBetValues (Bet b) = [b, 0]
      getBetValues (AllIn b) = [b, 0]
      getBetValues (Raise f t) = [f, t]
      getBetValues (AllInRaise f t) = [f, t]
      getBetValues OtherAction = error "Found \"OtherAction ActionValue type\""
      -- TODO maybe treat all-ins as different
      getActionInt FoldTimeout = [0]
      getActionInt Fold = [0]
      getActionInt Check = [1]
      getActionInt CheckTimeOut = [1]
      getActionInt (Bet _) = [2]
      getActionInt (AllIn _) = [2]
      getActionInt (Raise _ _) = [3]
      getActionInt (AllInRaise _ _) = [3]
      getActionInt OtherAction = error "Found \"OtherAction ActionValue type\""

-- Method that takes a size and index and encodes a one-hot array with that index set to 1.0
createOneHot :: Int -> Int -> [Double]
createOneHot size index = take size (repeat 0) &
                          (element index) .~ 1

getShape comb@(HoldEm (c1, c2)) | rank c1 == rank c2 = Pair
                                | suit c1 == suit c2 = Suited
                                | otherwise          = Offsuit

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

-- -- Make everything a one-hot encoding, from ranks to shape
-- holdingToOneHot :: Combo -> [Double]
-- holdingToOneHot comb@(HoldEm (c1,c2)) = fromIntegral <$> ranks ++ shape
--   where
--     ranks = holdingOneHotRanks comb :: [Int]
--     shape = holdingOneHotShape comb :: [Int]
--     -- Creates a one-hot encoding of the shape but not of the hand itself
--     holdingToOneHotShape :: Combo -> [Double]
--     holdingToOneHotShape comb@(HoldEm (c1,c2)) = fromIntegral <$> ranks ++ shape
--       where
--         ranks = fromEnum . rank <$> [c1, c2]
--         -- shape = [p, s, o]
--         shape = holdingOneHotShape comb
--     -- One hot encode the ranks of two cards
--     holdingOneHotRanks :: Combo -> [Int]
--     holdingOneHotRanks (HoldEm (c1, c2)) = concatMap (oneHotRank . fromEnum . rank) [c1,c2]
--       where
--         oneHotRank :: Int -> [Int]
--         oneHotRank r = replicate 13 0 & element r .~ 1

config = ConfigEnv { _betEncoding = EncodeOneHot
                   , _actionEncoding = ActionSimpleEncoding
                   , _rankEncoding = EncodeOneHot
                   , _suitEncoding = EncodeOneHot
                   , _handEncoding = HandEncoding True EncodeOneHot EncodeOneHot
                   , _shapeEncoding = EncodeOneHot}

-- Generic data point creation for a hand
-- Currently switchind the data type by hand
-- TODO make this generic
-- TODO currently unsafe version here with no errors for incorrect data length
handToUTGDataPoint :: Hand -> Config (Maybe [Double])
handToUTGDataPoint hand =
  --  TODO currently naively augmenting hand - abstract
  let posMap = seatMapToPositionMap . _playerMap $ hand
  in case getStacks hand of
          Left _ -> return Nothing
          Right stacks -> do
            holdingData <- encode $ getHolding UTG posMap
            let res = holdingData ++ stacks
            return $ Just res -- unchecked for length or anything similar

-- handToAllDataPoints :: Hand -> IsHero -> [[Double]]
-- handToAllDataPoints hand chooseHero =
--   -- let handActions = filter (\act -> isPlayerAction act || isDealerAction act) $ actions hand
--   let handActions = filter ((||) <$> isPlayerAction <*> isDealerAction) $ actions hand
--       result = take 80 $ repeat []
--   in []
--   -- go prevActs (a:as) = if chooseHero == isHero a
--   --                         then
--   where
--     -- mkDealerVector :: [Card] -> [Double]
--     actionsToVector _ _ [] = []
--     actionsToVector ind vec actions@(a:as) = case a of
--       DealerAction act ->
--         let ind' = (ind `mod` 20 + 1) * 20
--             vec' = vec & element ind .~ actionToVector act
--             in []
--       act@(PlayerAction _ _ _) ->
--         let res = (vec, a)
--             vec' = vec & element ind .~ actionToVector act
--             in res : actionsToVector (ind+1) vec' as

mkPlayerActionVector :: ActionValue -> [Double]
mkPlayerActionVector action = case action of
    Fold -> go 0 0
    FoldTimeout -> go 0 0
    Bet amount -> go 1 amount
    Raise _ amount -> go 2 amount
    AllIn amount -> go 3 amount
    AllInRaise _ amount -> go 4 amount
  where
    encodeAction = createOneHot 6
    go ind amount = encodeAction ind ++ [amount]

-- categorisePlayerActionVector :: ActionValue -> [Double]
-- categorisePlayerActionVector actionVal =
--   case actionVal of
--     Fold -> encodeAction 0
--     Bet amount -> oneHot amount
--   where
--     encodeAction = createOneHot 4

mkDealerVector :: DealerActionValue -> Config [Double]
mkDealerVector (FlopDeal cards) =
  case length cards of
    3 -> encode cards
    len -> error $ "expected 3 flop cards, found " <> show len
mkDealerVector (TurnDeal cards) =
  case length cards of
    1 -> encode cards
    len -> error $ "expected 3 flop cards, found " <> show len
mkDealerVector (RiverDeal cards) =
  case length cards of
    1 -> encode cards
    len -> error $ "expected 3 flop cards, found " <> show len

-- splitActionsAtDeals (a:as) =
--   case a of
--     DealerAction dealerAct ->

-- splitActionsAtDeals :: [Action] -> ([OneHot], [OneHot], [OneHot], [OneHot])
-- splitActionsAtDeals (a:as) =
--   case a of
--     PlayerAction

type ActionVec = [Double]

data HandData = HandData
                { _handHoldings :: [Double]
                , _preflopActions :: [ActionVec]
                , _flopActions :: [ActionVec]
                , _turnActions :: [ActionVec]
                , _riverActions :: [ActionVec]
                , _flopCards :: [Double]
                , _turnCards :: [Double]
                , _riverCards :: [Double]
                }

mkHandData = HandData
             { _handHoldings = []
             , _preflopActions = []
             , _flopActions = []
             , _turnActions = []
             , _riverActions = []
             , _flopCards = []
             , _turnCards = []
             , _riverCards = []
             }


-- handToUTGDataPointAugNaive :: Hand -> [[Double]]
-- handToUTGDataPointAugNaive hand =
--   --  TODO currently naively augmenting hand - abstract
--   let posMap = seatMapToPositionMap . _playerMap $ hand
--   in case getStacks hand of
--           Left _ -> []
--           Right stacks ->
--             let holdingData = fmap encode . augmentHandNaive $ getHolding UTG posMap
--                 res = zipWith (++) holdingData $ repeat stacks
--             in res -- unchecked for length or anything similar

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

-- -- main :: IO ()
-- main = do
--   -- result <- catMaybes . fmap handToUTGDataPoint <$> test_hands
--   return ()
--   result <- testHands
--   -- let x_y = concatMap (\hand -> zipWith (++) (handToUTGDataPointAugNaive hand) $ repeat [fromIntegral . fromEnum . isUTGRaise $ hand]) $ result
--   -- let x_y = concatMap (\hand -> map (\h -> (handToUTGDataPoint h, fromEnum $ isUTGRaise h)) $ (augmentHandNaive hand)) $ result
--   -- let func [] = []
--   --     func ((m, val):xs) = case m of
--   --       Nothing -> func xs
--   --       Just x -> (x, val) : func xs
--   -- L.writeFile "test.json" $ encode $ x_y
--   I.writeFile "test.json" (encodeToLazyText x_y)
--   return x_y

-- I.writeFile "myfile.json" (encodeToLazyText meowmers)
