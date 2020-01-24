{-# LANGUAGE TypeSynonymInstances      #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE BlockArguments            #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE MultiWayIf                #-}
{-# LANGUAGE DataKinds                 #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE RecordWildCards           #-}
{-# LANGUAGE ScopedTypeVariables       #-}
{-# LANGUAGE TypeFamilies              #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE ConstraintKinds           #-}

module Poker.HandFilter
  -- ( manyTillPlus
  -- , satisfyIndex
  -- , satisfyNotIndex
  -- , Parser(..)
  -- , (<|>)
  -- , extractOpps
  -- , lookAhead
  -- , actionsToCombos
  -- , item
  -- , bet
  -- -- , parseHand
  -- , raise
  -- , rfi
  -- , opps
  -- , parseTest
  -- , runParse
  -- , restAcc
  -- ,getRestActions
  -- , buildRange
  -- , actionItem
  -- , root
  -- , many
  -- , call
  -- , callfi
  -- , fold, leave
  -- , fullParse
  -- , Filter(..)
  -- )
  where

import Poker.Base
import Poker.Game.Bovada
import Poker.Game.Internal

import Control.Lens hiding (Fold)

import Control.Monad.Writer.Lazy
import Control.Monad.State.Lazy hiding (state)

import Data.Proxy

import Text.Megaparsec

type Parser m = ( MonadWriter [Action] m
                , MonadParsec () [Action] m
                , BovadaGame m )

data FilterError = GenericError

newtype Stake = Stake Float deriving (Read, Show)

-- Monadic action to alter state board with a deal action
-- Take a deal data type and return a board
-- Returns Nothing if the Deal is illegal
addDealToBoard :: DealerActionValue -> Board -> Maybe Board
addDealToBoard (PlayerDeal) board@InitialTable   = Just $ PreFlopBoard board
addDealToBoard (FlopDeal cs) board@(PreFlopBoard _)   = Just $ FlopBoard cs board
addDealToBoard (TurnDeal card) board@(FlopBoard _ _)  = Just $ TurnBoard card board
addDealToBoard (RiverDeal card) board@(TurnBoard _ _) = Just $ RiverBoard card board
addDealToBoard _ _                                    = Nothing

-- simpleTest :: Parser m => m a -> [Action] -> GameState -> (Either (ParseErrorBundle [Action] ()) [Action])
-- simpleTest p str state = p &
--   runIdentity
--   . (\pT -> runParserT pT "" str)
--   . execWriterT
--   . (flip runStateT) state

testState p s state = p &
  runIdentity
  . (\pT -> runParserT pT "" s)
  . runWriterT
  . fmap snd . (flip runStateT) state

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
  -- NOTE Do not eta-reduce these (breaks inlining)
  -- reachOffset o pst =
  --   reachOffset' splitAt foldl' id id ('\n','\t') o pst
  -- reachOffsetNoLine o pst =
  --   reachOffsetNoLine' splitAt foldl' ('\n', '\t') o pst

mkTestAction :: ActionValue -> Action
mkTestAction v = PlayerAction UTG v Hero

item :: Parser m => m Action
item = do
  a <- anySingle
  emulateAction a
  return a

satisfyActionValue :: Parser m => ActionValue -> m Action
satisfyActionValue actVal = satisfy $
  (&&) <$> isPlayerAction <*> (actVal ==) . action

satisfyPosition :: Parser m => Position -> m Action
satisfyPosition pos = satisfy $
  (&&) <$> isPlayerAction <*> (pos ==) . position

satisfyStreetDeal :: Parser m => m Action
satisfyStreetDeal = satisfy $ \case
  DealerAction _ -> True
  _ -> False

-- Parser that matches a PlayerAction Action
playerAction :: Parser m => m Action
playerAction = satisfy isPlayerAction

-- Function that finds the next non-useless Player Action
nextActionItem :: Parser m => m Action
nextActionItem = do
  a <- item
  case isPlayerAction a of
    True ->return a
    False -> nextActionItem

accumulate :: Parser m => m Action -> m Action
accumulate p = p >>= \res -> tell [res] >>return res

-- satisfyBetRelativeToPotSize :: Double -> Double -> m Action
-- satisfyBetRelativeToPotSize lower upper = do
--   pot <- use potSize
--   let lower' = lower / pot
--   let upper' = upper / pot
--   betSize <- findBet <$> nextActionItem
--   guard (betSize >= lower' && betSize <= upper') <?> "Bet in range"



{- type and newtype declarations -}

-- TODO make this a maybee type - remove tupality and start error type
-- result, rest, acc



-- data FState = FState { _remaining :: [Action]
--                      , _accumulator :: [Action] }

-- -- data FFail = FFail { _pMatched :: [Action] }

-- data FilterResult a = FFail { _failOpps :: [Action] }
--                     | FSucc { _pResult :: a
--                             , _pState :: FState
--                             }

-- -- Parser type
-- newtype Parser a = Parser { parse :: FState -> FilterResult a }

-- -- Data type for filters - represent a matchable structure that checks
-- -- for if a hand is valid
-- data Filter = Filter
--               { _filterPos :: [Position]
--               , _filterIndices :: [ActionIndex]
--               }
--   deriving Show

-- {- Instance functions and Declarations -}

-- -- Monadic bind operator for parser
-- bind :: Parser a -> (a -> Parser b) -> Parser b
-- bind p fn = Parser $ \input@(FState rem acc) ->
--                        case parse p input of
--                          FFail failOpps -> FFail failOpps
--                          FSucc res state -> parse (fn res) state

-- unit :: a -> Parser a
-- unit = Parser . FSucc

-- failure :: Parser a
-- failure = Parser $ \(FState rem acc) -> (FFail acc)

-- parserOption :: Parser a -> Parser a -> Parser a
-- parserOption p q = Parser $ \s ->
--                         case parse p s of
--                           FFail _ -> parse q s
--                           res -> res

-- instance Functor Parser where
--     fmap f (Parser filt) = Parser $ \state ->
--       case filt state of
--         FSucc a state -> FSucc (f a) state
--         FFail opps -> FFail opps

-- instance Applicative Parser where
--     pure =return
--     p <*> q = Parser $ \state ->
--       case parse p state of
--         -- unsure what this should be in case of early fail
--         FFail opps -> FFail []
--         FSucc f state' -> case parse q state' of
--           FFail opps' -> FFail opps'
--           FSucc a state'' -> FSucc (f a) state''

-- instance Monad Parser where
--    return = unit
--     (>>=)  = bind

-- instance MonadPlus Parser where
--   mzero = failure
--   mplus = parserOption

-- instance Alternative Parser where
--   empty = mzero
--   (<|>) = parserOption

-- {- Basic Parsers -}

-- item :: Parser Action
-- item = Parser $ \case
--   FState (x:xs) acc -> FSucc x (FState xs (acc ++ [x]))
--   FState [] acc -> FFail acc

-- -- lookAhead takes the parser and makes it act without consuming input
-- -- fails when the argument parser fails
-- lookAhead :: Parser a -> Parser a
-- lookAhead p = Parser $ \state ->
--   case parse p state of
--     FFail _ ->
--   res <- p


-- -- Function that finds the next non-useless action
-- actionItem :: Parser Action
-- actionItem = ignoring item >>= \a ->
--   case action a of
--     a' | inIndex LeaveIndex a' -> actionItem
--        | inIndex SitOutIndex a' -> actionItem
--        | inIndex ShowdownIndex a' -> actionItem
--        | inIndex ResultIndex a' -> actionItem
--        | otherwise -> addOpp a >>return a




-- -- {- Basic functionality - running parsers and simple parser combinators -}

-- -- -- test parser command - TODO Pick between test parser and prettyParse
-- -- testParser :: Show a => Parser a -> Hand -> IO ()
-- -- testParser p h = do
-- --   putStrLn "Hand was:"
-- --   print h
-- --   case fullParse p $ actions h of
-- --     Just (res, rest, opps) -> do
-- --       putStrLn "Result:"
-- --       putStrLn . indent . show $ res
-- --       putStrLn ""
-- --       putStrLn "Rest Actions:"
-- --       putStrLn . indent . unlines . fmap show $ rest
-- --       putStrLn ""
-- --       putStrLn "Opportunities to Act:"
-- --       putStrLn . indent . unlines . fmap show $ opps
-- --     Nothing ->
-- --       putStrLn "parser failed"

-- -- -- -- pretty print parser test
-- -- -- prettyParse :: Show a => Parser a -> [Action] -> IO (Maybe (FilterState a))
-- -- -- prettyParse p actions = do
-- -- --   case parse p (actions, []) of
-- -- --     Just res@(res1, res2, res3) -> do
-- -- --       putStrLn ("Actions:\n\t\t\t" ++ show actions)
-- -- --       putStrLn ("Result was:\n\t\t\t" ++ show res1)
-- -- --       putStrLn ("Rest was:\n\t\t\t" ++ show res2)
-- -- --       putStrLn ("Accumulator was:\n\t\t\t" ++ show res3 <> "\n\n\n")
-- -- --      return $ Just res
-- -- --     res -> print "Error when parsing" >>return res

-- -- -- TODO why do I have 5 test parse functions
-- -- fullParse p as = parse p (as, [])

-- -- parseTest :: Parser a -> [Action] -> [Action]
-- -- parseTest p as =
-- --    fst3 <$> parse (do p; extractOpps) (as, []) &
-- --     fromMaybe []
-- --   where fst3 = (\(as, _, _) -> as)

-- -- runParse :: Parser a -> [Action] -> Maybe a
-- -- runParse p as =
-- --   fst3 <$> parse p (as, [])
-- --   where
-- --     fst3 = (\(as, _, _) -> as)

-- -- -- parseHand :: Parser a -> Hand -> Maybe (FilterState a)
-- -- -- parseHand p hand = parse p (actions hand, [])

-- -- restAcc p = p >> liftM2 (,)getRestActions extractOpps

-- -- opps p = p >> extractOpps

-- -- findOpps :: ActionIndex -> Parser ()
-- -- findOpps index = do
-- --   res <- many fold
-- --   res_end <- lookAhead actionItem
-- --   case inIndex index (action $ res_end) of
-- --     True -> const () <$> actionItem
-- --     False -> const () <$> (actionItem >> killTree)

-- -- -- Check if an action matches against a provided filter
-- -- checkFilter :: Filter -> Action -> Bool
-- -- checkFilter filt action' = (or $ (==) (position action') <$> _filterPos filt)
-- --                        && (or $ (flip inIndex) (action action') <$> (_filterIndices filt))

-- --getOpps = Parser $ \(actions, acc) ->return (acc, actions, acc)

-- -- setOpps newOpps = Parser $ \(actions, acc) ->
-- --                     return ((), actions, newOpps)

-- --modifyOpps :: ([Action] -> [Action]) -> Parser ()
-- --modifyOpps f = do
-- --   opps <-getOpps
-- --   setOpps $ f opps

-- -- addOpp :: Action -> Parser ()
-- -- addOpp action =modifyOpps (action :)

-- -- extractOpps :: Parser [Action]
-- -- extractOpps = Parser $ \(actions, acc) ->
-- --   Just (acc, actions, [])

-- -- checkPosition :: Position -> Action -> Bool
-- -- checkPosition pos = (==) pos . position

-- -- posAction :: Position -> Parser Action
-- -- posAction pos = mfilter (checkPosition pos) actionItem

-- -- hands = unsafePerformIO $ take 20 <$> testHands

-- -- {- Basic functions -}

-- -- killTree = Parser $ \(actions, acc) ->
-- --   Just ((), [], acc)

-- -- satisfy :: (ActionValue -> Bool) -> Parser Action
-- -- satisfy p = item >>= \act ->
-- --   if p (action $ act)
-- --     then unit act
-- --     else failure

-- -- satisfyNotIndex ind = item >>= \act ->
-- --   if not $ inIndex ind (action $ act)
-- --     then unit act
-- --     else failure

-- -- satisfyIndex index = actionItem >>= \act ->
-- --   if inIndex index (action $ act)
-- --     thenreturn $ Just act
-- --     else killTree >>return Nothing

-- -- satisfyFilter :: Filter -> Parser (Maybe Action)
-- -- satisfyFilter filt = actionItem >>= \act ->
-- --   if checkFilter filt act
-- --     thenreturn $ Just act
-- --     else killTree >>return Nothing

-- -- -- Takes a list of ActionIndex and tries to match against each one
-- -- -- Unsure if these semantics are correct. I think this should be
-- -- -- failing on Nothingreturns
-- -- satisfyIndexList :: [ActionIndex] -> Parser (Maybe Action)
-- -- satisfyIndexList is = foldr ((<|>) . satisfyIndex) failure is


-- -- -- Matches a parser whilst preserving the accumulator prior to matching
-- -- ignoring :: Parser a -> Parser a
-- -- ignoring p = Parser $ \(actions, acc) -> do
-- --   (res, actions', _) <- parse p (actions, acc)
-- --  return (res, actions', acc)

-- -- -- TODO RENAME
-- -- -- First filter is a filter to be ignored
-- -- -- Second filter is a filter to be matched on
-- -- -- If we find a matching position, then we will either file or match,
-- -- -- whilst adding an opportunity either way
-- -- -- If not, we check that the action is ignorable and potentially move on
-- -- matchIgnoreMatchFilters :: Filter -> Filter -> Parser ()
-- -- matchIgnoreMatchFilters ignoreF matchF = do
-- --   (do action' <- choice $ map posAction $ _filterPos matchF
-- --       case or $ map (\ind -> inIndex ind (action action')) $ _filterIndices matchF of
-- --         True ->return ()
-- --         False -> killTree )
-- --     <|> (do action <- ignoring actionItem
-- --             guard $ checkFilter ignoreF action
-- --             matchIgnoreMatchFilters ignoreF matchF)

-- -- firstIn :: Filter -> Parser ()
-- -- firstIn = matchFilter [FoldIndex]

-- -- notPositions :: [Position] -> [Position]
-- -- notPositions ps = foldl (\res pos -> filter (pos /=) res) listPosition ps

-- -- -- Abstracts one level of matchIgnoreMatchFilters
-- -- matchFilter :: [ActionIndex] -> Filter -> Parser ()
-- -- matchFilter ignoreIndices filtMatch =
-- --   let ignorePos = notPositions $ _filterPos filtMatch
-- --       filtIgnore = Filter {_filterPos=ignorePos, _filterIndices=ignoreIndices}
-- --   in matchIgnoreMatchFilters filtIgnore filtMatch

-- -- -- Matches the next action with the correct position
-- -- nextPosAction :: Position -> Parser Action
-- -- nextPosAction = skipManyTill actionItem . posAction


-- -- indent :: String -> String
-- -- indent = unlines . map ('\t' :) . lines

-- -- {- Utilities -}
-- -- -- rfi = do
-- -- --   res <- many (fold <|> (ignoring leave))
-- -- --   res_end <- lookAhead item
-- -- --   case isPlayerAction res_end of
-- -- --     True ->
-- -- --       if (ActionValueIndex $ action res_end) == AnyRaiseIndex
-- -- --         then const () <$> item
-- -- --         else item >> killTree
-- -- --     False ->
-- -- --       const () <$> ignoring item



-- -- -- Pull out the actions from the Parser state
-- --getRestActions :: Parser [Action]
-- --getRestActions = Parser $ \(actions, acc) ->return (actions , actions, acc)

-- -- -- Mark this parser as no longer matching, whilst maintaining the matching actions
-- -- -- Useful for when you found opportunities but no matching final action

-- -- --getMaybeAction :: ActionFilter (Maybe Action)
-- -- --getMaybeAction = Parser $ \actions ->
-- -- --     -- trace ("\n actions:\n    " ++ show actions) $ do
-- -- --     case actions of
-- -- --         [] -> [(Nothing, [])]
-- -- --         (a:as) -> case a of
-- -- --             PlayerAction _ Leave  -> parsegetMaybeAction as
-- -- --             PlayerAction _ Enter  -> parsegetMaybeAction as
-- -- --             PlayerAction _ SitOut -> parsegetMaybeAction as
-- -- --             DealerAction _ -> [(Nothing, as)]
-- -- --             otherwise -> [(Just a, as)]

-- -- -- lookAheadMaybe :: Parser a -> Parser (Maybe a)
-- -- -- lookAheadMaybe filt = Parser $ \(actions, acc) ->
-- -- --     case parse filt (actions, acc) of
-- -- --       Nothing -> Just (Nothing, actions, acc)
-- -- --       Just (res, _, _) -> Just (Just res, actions, acc)

-- -- -- lookAhead that doesn't fail but instead remains in the active monad
-- -- lookAheadMaybe :: Parser a -> Parser (Maybe a)
-- -- lookAheadMaybe = optional . lookAhead

-- -- -- Takes a filter andreturns the match without consuming input or matching opportunities
-- -- lookAhead filt = Parser $ \(actions, acc) ->
-- --     case parse filt (actions, acc) of
-- --       Nothing -> Nothing
-- --       Just (res, _, _) -> Just (res, actions, acc)

-- -- -- special root node parser that just shows every available combo
-- -- -- It would be cool to have root do something useful like show database
-- -- -- statics. Also this function is heavily untested
-- -- root = do action <- lookAhead actionItem
-- --           addOpp action

-- -- manyTillPlus body check = do
-- --   res <- manyTill body (lookAhead check)
-- --   res_end <- check
-- --  return $ res_end : res

-- -- -- -- try :: ActionFilter a -> ActionFilter Bool
-- -- -- try filt = Parser $ \actions ->
-- -- --     case parse filt actions of
-- -- --         Nothing -> [([], actions)]
-- -- --         res -> res

-- -- fold = satisfyIndex FoldIndex
-- -- raise = satisfyIndex AnyRaiseIndex
-- -- bet = satisfyIndexList [AnyRaiseIndex, AnyCallIndex]
-- -- call = satisfyIndex AnyCallIndex
-- -- check = satisfyIndex CheckIndex
-- -- leave = satisfy $ (\x -> inIndex LeaveIndex x)

-- -- rfi :: [Position] -> Parser ()
-- -- rfi ps = matchFilter [FoldIndex] raiseFilter
-- --   where
-- --     raiseFilter = Filter ps [AnyRaiseIndex]

-- -- callfi :: [Position] -> Parser ()
-- -- callfi ps = matchFilter [FoldIndex] raiseFilter
-- --   where
-- --     raiseFilter = Filter ps [AnyCallIndex]

-- -- dealer = do
-- --   act <- item
-- --   case act of
-- --     (DealerAction d) ->return $ DealerAction d
-- --     otherwise -> failure

-- -- actionsToCombos :: [Action] -> Hand -> [(Combo, Action)]
-- -- actionsToCombos actions hand = do
-- --     act <- actions
-- --    return . flip (,) act $ findPositionHolding hand (position act)

-- -- findCombos :: Parser [Action] -> Hand -> [(Combo, Action)]
-- -- findCombos actionF hand = do
-- --     let res = fromMaybe [] $ runParse (opps actionF) (actions hand)
-- --     let combos = actionsToCombos res hand
-- --     combos

-- -- buildRange :: Parser [Action] -> [Hand] -> ShapedRangeC
-- -- buildRange actionP hands =
-- --     let actions = concatMap (findCombos actionP) (hands)
-- --         actionvals = map (\(c,a) -> (c, action a)) actions
-- --         range = foldr (\(c, a) r -> addComboToCollection 1 a c r) def actionvals in
-- --         range

-- -- -- type ComboAction = (Combo, Action)

-- -- -- addComboActionToRangeC :: ComboAction -> ShapedRangeC -> ShapedRangeC
-- -- -- addComboActionToRangeC (c,a) ranC =
-- -- --     addComboToCollection 1 (action a) c ranC

-- -- --getHands =  parseFiles ["test_files/bovada-example.txt"]
-- -- -- -- main = do
-- -- --     -- allHands <-getHands
-- -- --     -- let hands = take 1000 allHands
-- -- --     -- let res = map (\h -> findCombo (nextRaise listPosition) h) hands
-- -- --     -- putStrLn . show $ map actions hands
-- -- --     -- putStrLn . show $ res
-- -- -- --
-- -- -- -- main = do
-- -- -- --     hands <- parseDirectory "test_files/Imported Hands/"
-- -- -- --     -- hands <- parseFiles ["bovada-example.txt"]
-- -- -- --     -- trace (show $ length hands) $ do
-- -- -- --     -- let res = concatMap (runFilter rfiOpp) (map actions $ hands)
-- -- -- --     -- let res = concatMap (findCombos rfiOpp) (hands)
-- -- -- --     -- let folds = filter (\(a,c) -> action a == Fold) res
-- -- -- --     -- let raises = filter (\(a,c) -> isRaise a) res
-- -- -- --     -- let res1 = filter (not . null) res
-- -- -- --     -- putStrLn $ show $ map (\(a,c) -> c) folds
-- -- -- --     -- putStrLn $ show $ map (\(a,c) -> c) raises

-- -- -- --     -- let range = addActions res newRange
-- -- -- --     -- timeIt $ putStrLn $ show range
-- -- -- --     -- let range = buildRange rfiOpp (take 100 hands)
-- -- -- --     -- let raiserange = findActionRange range isRaiseValue
-- -- -- --     -- timeIt $ putStrLn $ show $ (range ^. total_range . count)
-- -- -- --     -- timeIt $ putStrLn $ show range
-- -- -- --     let res = concatMap (parse (nextRaise [UTG, UTG_1]). actions) (take 100 hands)
-- -- -- --     trace (show res) $ do
-- -- -- --     -- let range = buildRangeN res
-- -- -- --     -- timeIt $ putStrLn $ show $ countCombo range
-- -- -- --     -- timeIt $ putStrLn $ show $ countCombo Range{_range=raiserange}
-- -- -- --     -- let res = map (\c -> addCombo c range) res

-- -- -- --    return ()

-- -- deriveJSON defaultOptions ''Filter
