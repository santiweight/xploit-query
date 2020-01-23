{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE BlockArguments            #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE MultiWayIf                #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE ConstraintKinds           #-}
{-# LANGUAGE TupleSections           #-}
{-# LANGUAGE ScopedTypeVariables           #-}

module Poker.Game.Bovada
  (
  ) where

import Poker.Base hiding (_seatMap, prettyShow)
import Poker.Game.Base

import Poker.Parse (testHands)

import Control.Lens hiding (Fold)

import Control.Monad.Writer.Lazy
import Control.Monad.State.Lazy
import Control.Monad.Reader
import Control.Monad.Except (MonadError, throwError, catchError)
import Control.Monad.Loops

import Control.Error.Safe
import Control.Error.Operator
import Control.Error.Util

import Data.Either.Utils
import Data.List (sort)
import qualified Data.List as List
import Data.Maybe

import Data.Map (Map)
import Data.Map as M

import Debug.Trace

-- Minimum Constraints for a BovadaGame
-- MonadState allows for tracking the game state
-- MonadError allows for GameError exceptions
type BovadaGame m = ( MonadState GameState m
                    , MonadError GameErrorBundle m)

{- Basic BovadaGame Actions -}

-- Increase state pot size
increasePot :: BovadaGame m => Double -> m ()
increasePot amount = potSize += amount

-- Reduce state pot size
decreasePot :: BovadaGame m => Double -> m ()
decreasePot amount = potSize -= amount

-- Increase stack size at a seat position
increaseStack :: BovadaGame m => Seat -> Double -> m ()
increaseStack seat amount = do
  playerStack <- maybeToErrorBundle PlayerNotFound
                 =<< preuse (seatStackOptic seat)
  mErrorAssert (playerStack - amount > 0) NegativePlayerStack
  seatStackOptic seat -= amount

-- Decrease stack size at a seat position
decreaseStack :: BovadaGame m => Seat -> Double -> m ()
decreaseStack seat amount = do
  playerStack <- maybeToErrorBundle PlayerNotFound
                 =<< preuse (seatStackOptic seat)
  mErrorAssert (playerStack - amount > 0) NegativePlayerStack
  seatStackOptic seat -= amount

-- Get the seat number from a position
getSeat :: BovadaGame m => Position -> m Seat
getSeat pos = maybeToErrorBundle (SeatNotFound pos) . M.lookup pos
                  =<< _seatMap <$> get

-- Not a big deal but this implementation of the player queue
-- means that every rotation takes 6 steps since snoc is O(n)
-- Ensures that the position removed from queue is the one in the queue currently
rotateNextActor :: BovadaGame m => Position -> m ()
rotateNextActor pos = do
  (toAct, rest) <- maybeToErrorBundle NoPlayersInQueue
                   =<< uncons <$> use toActQueue
  mErrorAssert (pos == toAct) $ WrongPlayerActed toAct pos
  toActQueue .= snoc rest toAct

-- Ensures that the next actor is the one acting
-- Removes the next actor instead of put it at the back of the queue
removeNextActor :: BovadaGame m => Position -> m ()
removeNextActor pos = do
  (toAct, rest) <- maybeToErrorBundle NoPlayersInQueue
                   =<< uncons <$> use toActQueue
  mErrorAssert (pos == toAct) $ WrongPlayerActed toAct pos
  toActQueue .= rest

{- BovadaGame Actions -}

-- Monadic action to alter state board with a deal action
addDealToState :: BovadaGame m => DealerActionValue -> m ()
addDealToState deal = do
          board <- use stateBoard
          case addDealToBoard deal board of
            Nothing    -> throwBundleError $ IncorrectDeal deal board
            Just board -> stateBoard .= board
  where
    -- Take a deal data type and return a board
    -- Returns Nothing if the Deal is illegal
    addDealToBoard :: DealerActionValue -> Board -> Maybe Board
    addDealToBoard (PlayerDeal) board@InitialTable   = Just $ PreFlopBoard board
    addDealToBoard (FlopDeal cs) board@(PreFlopBoard _)   = Just $ FlopBoard cs board
    addDealToBoard (TurnDeal card) board@(FlopBoard _ _)  = Just $ TurnBoard card board
    addDealToBoard (RiverDeal card) board@(TurnBoard _ _) = Just $ RiverBoard card board
    addDealToBoard _ _                                    = Nothing

-- Monadic action to execute an Action datatype on the given state
emulateAction :: BovadaGame m => Action -> m ()
emulateAction action = case action of
        PlayerAction pos actVal hero -> do
          let betSize = findBet actVal
          increasePot betSize
          seat <- getSeat pos
          decreaseStack seat betSize
          case actVal of
            Call _         -> rotateNextActor pos
            Raise _ _      -> rotateNextActor pos
            AllInRaise _ _ -> removeNextActor pos
            Bet _          -> rotateNextActor pos
            AllIn _        -> removeNextActor pos
            Fold -> removeNextActor pos
            FoldTimeout -> removeNextActor pos
            Check -> rotateNextActor pos
            CheckTimeOut -> rotateNextActor pos
            OtherAction -> return () -- TODO
        DealerAction deal -> do
          addDealToState deal
          use stateBoard >>= \case
            InitialTable -> toActQueue %= sortPreflop
            PreFlopBoard _ -> toActQueue %= sortPreflop
            _ -> toActQueue %= sortPostflop
        TableAction pos actVal -> handleTableAction pos actVal
        UnknownAction -> return () -- TODO
  where
    findBet = \case
      Call amount        -> amount
      Raise amount to      -> amount
      AllInRaise amount to -> amount
      Bet amount         -> amount
      AllIn amount       -> amount
      _ -> 0
    handleTableAction :: BovadaGame m => Position -> TableActionValue -> m ()
    handleTableAction pos val =
      case val of
        Post postSize   -> do
          increasePot postSize
          seat <- getSeat pos
          decreaseStack seat postSize
        Enter         -> return () -- Not sure what this should be
        Leave         -> do
          seat <- maybeToErrorBundle (SeatNotFound pos)
                  =<< use (seatMap . at pos)
          -- seatMap %= M.delete pos
          -- playerMap %= M.delete seat
          -- toActQueue %= List.delete pos
          return ()
        SitOut        -> do
          seat <- maybeToErrorBundle (SeatNotFound pos)
                  =<< use (seatMap . at pos)
          seatMap    %= M.delete pos
          playerMap  %= M.delete seat
          toActQueue %= List.delete pos
          return ()
        SitDown       -> return ()
        Showdown _ _  -> return ()
        Muck _ _      -> return ()
        Rejoin        -> return ()
        Return amount -> do
          decreasePot amount
          seat <- getSeat pos
          increaseStack seat amount
        Result amount -> return () -- TODO

-- tryAssert for MonadError
mErrorAssert :: BovadaGame m => Bool -> GameError -> m ()
mErrorAssert b e = if b
                   then return ()
                   else throwBundleError e

throwBundleError :: BovadaGame m => GameError -> m ()
throwBundleError e = do
  state <- get
  throwError $ GameErrorBundle e state

maybeToErrorBundle :: BovadaGame m => GameError -> Maybe a -> m a
maybeToErrorBundle e mb = do
  case mb of
    Just a -> return a
    Nothing -> do
      state <- get
      throwError (GameErrorBundle e state)

-- Traversal Optic to access seat's stack from player map
-- Goes through lookup's Just
seatStackOptic seat = playerMap . at seat . _Just . stack

{- Testing and Printing methods -}

infixr 4 +-+
(+-+) :: String -> String -> String
"" +-+ s = s
s +-+ "" = s
s +-+ t | last s == ' ' = s ++ t
        | head t == ' ' = s ++ t
s +-+ t = s ++ " " ++ t

-- -- A MonadIO action to act on a game state input
-- -- Prints every action and resulting game state
-- testEmulateAction :: (BovadaGame m, MonadIO m) => m ()
-- testEmulateAction = do
--   liftIO $ putStrLn "Starting State:"
--   prettyPrint =<< get
--   acts <- use $ futureActions
--   forM_ acts $ \act -> do
--     emulateAction act
--     liftIO . putStrLn $ "Processed Action:"
--     liftIO . putStrLn $ "\t" <> show act
--     prettyPrint =<< get

runGameIO :: (BovadaGame m, MonadIO m) => m ()
runGameIO = do
  -- TODO refactor to untilM
  flip untilM_ (List.null <$> use futureActions) $ do
    act <- head <$> use futureActions -- `catchError` errorHandler
    emulateAction act
    liftIO getLine
    liftIO . putStrLn $ "Processed Action:"
    liftIO . putStrLn $ "\t" <> show act
    prettyPrint =<< get
    futureActions %= tail
  -- where
  --   errorHandler e = do
  --     liftIO . putStrLn $ "Game Failed"
  --     prettyPrint e
      -- throwError e

-- testBovadaGame
--   :: MonadIO m  =>
--      StateT GameState (ExceptT e m) a -> m (Either e String)
testBovadaGame actionM state = do
  res <- runExceptT (runStateT actionM state)
  case res of
    Left e -> do
      putStrLn "Game Failed"
      prettyPrint e
    Right (succ, state') -> do
      putStrLn "*** Game completed without error ***"
      prettyPrint state'
      putStr $ view stateHandText state'

main = do
  putStrLn "Which hand number would you like to test?"
  num <- read <$> getLine
  state <- fromJust . preview (ix num) <$> testHands
  testBovadaGame runGameIO (handToState state)
  -- indexedHands <- zip [1..] <$> testHands

  -- forM_  indexedHands $ \(idNum, hand) -> do
  --   print idNum
  --   print hand
  --   getLine
  --   return ()