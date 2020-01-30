{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE UndecidableInstances      #-}
{-# LANGUAGE BlockArguments            #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE MultiWayIf                #-}
{-# LANGUAGE DataKinds                 #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE ScopedTypeVariables       #-}
{-# LANGUAGE TypeFamilies              #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE ConstraintKinds           #-}

module Poker.HandFilter
  ( mkDummyAction
  , item
  , defState
  , ErrorSum (..)
  , accumulate
  , playerAction
  , mkDummyPA
  , pFold, pBet, pAnyRaise
  , satisfyBetBetweenPotSizeRelative
  , evalBovadaParser, runBovadaParser, runStateBovadaParser, evalAccBovadaParser
  )
  where

import Poker.Base
import Poker.Game.Bovada
import Poker.Game.Internal

import Control.Lens hiding (Fold)

import Control.Monad.Writer.Lazy
import Control.Monad.State.Lazy hiding (state)
import Control.Monad.Except

import Data.Proxy
import Data.List.Index

import Text.Megaparsec

type Parser m = ( MonadWriter [PlayerAction] m
                , MonadParsec FilterError [Action] m
                , BovadaGame m )

-- FIXME MAKE THIS SO THAT THE RESULT TYPES (PACKAGE, ACC, ETC) ARE
-- SUM-CONSTRUCTORS: SumResult (a, [PA], GS) | Result a | AccResult [PA]
-- Or have it be SumResult ResultSum
data ErrorSum a = SumResult a
                | SumFilterE (ParseErrorBundle [Action] FilterError)
                | SumGameE GameErrorBundle
  deriving (Show, Eq)

mapResult :: ((a, [PlayerAction], GameState) -> b) -> ErrorSum (a, [PlayerAction], GameState) -> ErrorSum b
mapResult f (SumResult a) = SumResult (f a)
mapResult _ (SumFilterE e) = SumFilterE e
mapResult _ (SumGameE e) = SumGameE e

-- type aliases for fundamental monads
type ParserT m = ParsecT FilterError [Action] m
type AccumulatorT m = WriterT [PlayerAction] m
type BovadaStateT m = StateT GameState m
type BovadaErrorT m = ExceptT GameErrorBundle m

-- MyMonad monad transformers
type MyMonad a =
  (AccumulatorT
  (BovadaStateT
  (ParserT
  (BovadaErrorT Identity))))
  a

-- toErrorSum converts the nested Either returned by running MyMonad into
-- the ErrorSum datatype
toErrorSum
  :: Either
       GameErrorBundle
       (Either
         (ParseErrorBundle [Action] FilterError)
         ((a, [PlayerAction]), GameState)
       )
  -> ErrorSum (a, [PlayerAction], GameState)
toErrorSum = \case
  Left gameE -> SumGameE gameE
  Right (Left parseE) -> SumFilterE parseE
  Right (Right ((res, acc), state)) -> SumResult (res, acc, state)

runBovadaParser
  :: MyMonad a
  -> [Action]
  -> GameState
  -> ErrorSum (a, [PlayerAction], GameState)
runBovadaParser m acts initialState =
  toErrorSum
  . runIdentity
  . runExceptT
  . (\p -> runParserT p "" acts)
  . flip runStateT initialState
  $ runWriterT m

accBovadaParser
  :: MyMonad a
  -> [Action]
  -> GameState
  -> ErrorSum [PlayerAction]
accBovadaParser m acts state = mapResult getAcc $ runBovadaParser m acts state
  where getAcc (a, b, c) = b

evalBovadaParser
  :: MyMonad a
  -> [Action]
  -> GameState
  -> ErrorSum a
evalBovadaParser m acts state = mapResult getRes $ runBovadaParser m acts state
  where getRes (a, b, c) = a

runStateBovadaParser
  :: MyMonad a
  -> [Action]
  -> GameState
  -> ErrorSum GameState
runStateBovadaParser m acts state = mapResult getRes $ runBovadaParser m acts state
  where getRes (a, b, c) = c

evalAccBovadaParser
  :: MyMonad a
  -> [Action]
  -> GameState
  -> ErrorSum (a, [PlayerAction])
evalAccBovadaParser m acts state = mapResult getRes $ runBovadaParser m acts state
  where getRes (a, b, c) = (a, b)

data FilterError = GenericError
                 | CustomFilterError String
  deriving (Show, Read)

-- THESE INSTANCES ARE A BIG OLD FIXME
-- SHOULD PROBABLY CONSULT SUBREDDIT/DISCORD FOR THIS ON
instance Eq FilterError where
  GenericError == GenericError = True
  (CustomFilterError str1) == (CustomFilterError str2) = str1 == str2
  _ == _ = False

instance Ord FilterError where
  compare _ _ = EQ
  _ > _ = False

newtype Stake = Stake Float deriving (Read, Show)

-- Monadic action to alter state board with a deal action
-- Take a deal data type and return a board
-- Returns Nothing if the Deal is illegal
addDealToBoard :: DealerAction -> Board -> Maybe Board
addDealToBoard PlayerDeal board@InitialTable   = Just $ PreFlopBoard board
addDealToBoard (FlopDeal cs) board@(PreFlopBoard _)   = Just $ FlopBoard cs board
addDealToBoard (TurnDeal card) board@(FlopBoard _ _)  = Just $ TurnBoard card board
addDealToBoard (RiverDeal card) board@(TurnBoard _ _) = Just $ RiverBoard card board
addDealToBoard _ _                                    = Nothing

class Accumulable a where
  accumulate :: a -> a

instance Parser m => Accumulable (m PlayerAction) where
  accumulate p = p >>= \res -> tell [res] >> return res

instance Parser m => Accumulable (m [PlayerAction]) where
  accumulate p = p >>= \res -> tell res >>return res

instance Stream [Action] where
  type Token [Action] = Action

  type Tokens [Action] = [Action]
  tokenToChunk Proxy = pure
  tokensToChunk Proxy = id
  chunkToTokens Proxy = id
  chunkLength Proxy = length
  chunkEmpty Proxy = null
  take1_ [] = Nothing
  take1_ (t:ts) = Just (t, ts)
  takeN_ n s
    | n <= 0    = Just ([], s)
    | null s    = Nothing
    | otherwise = Just (splitAt n s)
  takeWhile_ = span
  showTokens Proxy = show
  reachOffset = undefined
  -- NOTE Do not eta-reduce these (breaks inlining)
  -- reachOffset o pst =
  --   reachOffset' splitAt foldl' id id ('\n','\t') o pst
  -- reachOffsetNoLine o pst =
  --   reachOffsetNoLine' splitAt foldl' ('\n', '\t') o pst

mkDummyAction :: PlayerActionValue -> Action
mkDummyAction v = MkPlayerAction $ PlayerAction UTG v Hero

mkDummyPA :: PlayerActionValue -> PlayerAction
mkDummyPA v = PlayerAction UTG v Hero

item :: Parser m => m Action
item = do
  a <- anySingle
  emulateAction a
  return a

satisfyPAValue :: Parser m => PlayerActionValue -> m PlayerAction
satisfyPAValue actVal = item >>= \case
  MkPlayerAction playerAct
    | action playerAct == actVal -> return playerAct
  -- _ -> parseError
  _ -> customFailure $ CustomFilterError "expected player action" -- FIXME

satisfyPAPred :: Parser m => (PlayerAction -> Bool) -> m PlayerAction
satisfyPAPred pred = playerAction >>= \act ->
  case pred act of
    True -> return act
    False -> customFailure $ CustomFilterError "predicate failed" -- FIXME

satisfyPAIndex :: Parser m => ActionIndex -> m PlayerAction
satisfyPAIndex actionIndex = satisfyPAPred (inIndex actionIndex . action)

satisfyPositionPA :: Parser m => Position -> m PlayerAction
satisfyPositionPA posPred = playerAction >>= \playerAct ->
    if position playerAct == posPred
    then return playerAct
    else customFailure $ CustomFilterError "expected player action" -- FIXME

dealerAction :: Parser m => m DealerAction
dealerAction = item >>= \case
  MkDealerAction dealerAct -> return dealerAct
  _                -> customFailure $ CustomFilterError "expected dealer action"

tableAction :: Parser m => m TableAction
tableAction = item >>= \case
  MkTableAction tableAct -> return tableAct
  _                -> customFailure $ CustomFilterError "expected dealer action"

-- Parser that matches a PlayerAction Action
playerAction :: Parser m => m PlayerAction
playerAction = item >>= \case
  MkPlayerAction playerAct -> return playerAct
  otherAct                        -> customFailure . CustomFilterError $ "expected player action; found:" <> show otherAct

-- Function that finds the next non-useless Player Action
nextPlayerAction :: Parser m => m PlayerAction
nextPlayerAction = item >>= \case
  MkPlayerAction a -> return a
  -- TODO DECIDE WHETHER THIS SHOULD FAIL ON NON-PLAYER ACTIONS
  _ -> nextPlayerAction -- FIXME

pFold :: Parser m => m PlayerAction
pFold = satisfyPAIndex FoldIndex

pBet :: Parser m => m PlayerAction
pBet = satisfyPAIndex AnyBetIndex

pCall :: Parser m => m PlayerAction
pCall = satisfyPAIndex AnyCallIndex

pAnyRaise :: Parser m => m PlayerAction
pAnyRaise = satisfyPAIndex AnyRaiseOrRaiseAIIndex

pPosOpenRaiseOpps pos = many ((try . accumulate) (satisfyPositionPA pos) <|> try pFold)

anyOpenRaise :: Parser m => m [PlayerAction]
anyOpenRaise = do
  folds <-  many (try . accumulate $ pFold)
  optional (accumulate nextPlayerAction) >>= return . maybe folds ((folds ++) . pure)

satisfyBetBetweenPotSizeRelative :: Parser m => Double -> Double -> m PlayerAction
satisfyBetBetweenPotSizeRelative lower upper = do
  playerAct <- playerAction
  betPotPercentage <- toPotSizeRelative . findBet . action $ playerAct
  if lower <= betPotPercentage && betPotPercentage <= upper
    then return playerAct
    else customFailure $ CustomFilterError "did not satisfy relative pot bounds" -- FIXME

foldA pos = PlayerAction pos Fold Hero
betA pos = PlayerAction pos (Bet 10) Hero
raiseA pos = PlayerAction pos (Raise 10 (-1)) Hero
callA pos = PlayerAction pos (Call 10) Hero

test1 = fmap toAction [ foldA UTG
                      , callA UTG1
                      , foldA UTG2
                      , raiseA BU
                      , foldA SB
                      , foldA BB
                      , callA UTG1
                      ]

-- actionsToCombos :: [Action] -> Hand -> [(Combo, Action)]
-- actionsToCombos actions hand = do
--     act <- actions
--    return . flip (,) act $ findPositionHolding hand (position act)

-- findCombos :: Parser [Action] -> Hand -> [(Combo, Action)]
-- findCombos actionF hand = do
--     let res = fromMaybe [] $ runParse (opps actionF) (actions hand)
--     let combos = actionsToCombos res hand
--     combos

-- buildRange :: Parser [Action] -> [Hand] -> ShapedRangeC
-- buildRange actionP hands =
--     let actions = concatMap (findCombos actionP) (hands)
--         actionvals = map (\(c,a) -> (c, action a)) actions
--         range = foldr (\(c, a) r -> addComboToCollection 1 a c r) def actionvals in
--         range

-- type ComboAction = (Combo, Action)

-- addComboActionToRangeC :: ComboAction -> ShapedRangeC -> ShapedRangeC
-- addComboActionToRangeC (c,a) ranC =
--     addComboToCollection 1 (action a) c ranC

--getHands =  parseFiles ["test_files/bovada-example.txt"]
-- -- main = do
--     -- allHands <-getHands
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

-- --    return ()

-- deriveJSON defaultOptions ''Filter
