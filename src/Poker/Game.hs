{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE StandaloneDeriving #-}

module Poker.Game
  (
    runIxState
  , emptyTable
  , iget
  )
where

import Prelude hiding ((>>=), (>>), return)

import Poker.Base hiding (players, Player(..))
import Poker.GameBase
import Control.Monad.Indexed.State
import Control.Applicative
import Data.Maybe
import Data.Map (Map)
import System.Random
import System.Random.Shuffle
import System.IO.Unsafe
import qualified Data.Map as Map

import Debug.Trace

(>>=) :: Transition i j a -> (a -> Transition j k b) -> Transition i k b
(>>=) = (>>=)
(>>) :: Transition i j a -> Transition j k b -> Transition i k b
(>>) = (>>)
return = return


-- -- -- SHOULD BE INITIAL -- FIX ME!!
-- -- initialiseDealerIO :: IO (Game PreFlop ())
-- -- initialiseDealerIO = do
-- --   newStdGen >>= \gen ->
-- --     return . initialiseDealer $ gen

-- dealRiver :: Transition Turn River ()
-- dealRiver = do
--   imodify dealGo
--   where
--     dealGo state =
--       let restBoard = _board state
--           (river', dealer') = splitAt 1 $ _dealer state
--       in state{_board=_board state ++ river'}

 -- dealTurn :: Transition Flop Turn ()
 -- dealTurn = do
 --   state <- iget
 --   let restBoard = _board state
 --   let (turn', dealer') = splitAt 1 $ _dealer state
 --   iput state{_board=TurnBoard (head turn') restBoard}

dealFlop :: Transition PreFlop Flop ()
dealFlop = imodify dealGo
  where
    toTuple3 [a,b,c] = (a, b, c)
    dealGo :: GameState PreFlop -> GameState Flop
    dealGo state = 
      let restBoard = _board state
          (flop', dealer') = splitAt 3 $ _dealer state
      in state{_board=FlopBoard (toTuple3 flop') restBoard, _dealer=dealer'}

-- transitionToPreFlop :: Transition Initial PreFlop ()
-- transitionToPreFlop = imodify alterGo
--   where
--     alterGo state = state{_dealer=_dealer state}

-- dealBoard :: Int -> Game ()
-- dealBoard cardNum = do
--   state <- get
--   let currBoard = _board state
--   let (board', dealer') = splitAt cardNum $ _dealer state
--   put state{_board=currBoard++board',_dealer=dealer'}

testPlayer = Player
             { name = Just "santi"
             , _holding =  Nothing
             , stack = Just 25
             }

initTable :: Transition Initial PreFlop ()
initTable = do
  initialiseDealer
  dealHands
  imodify goPreFlop
  where
    goPreFlop :: GameState 'Initial -> GameState 'PreFlop
    goPreFlop state = state{_board=PreFlopBoard $ _board state}

-- testGame :: Transition Initial PreFlop ()
-- testGame = do
--  imodify _
--  imodify $ snd . runIxState initTable
--  -- iput . snd $ ((flip runIxState) <*> imodify sitPlayers <*> iget)
--  -- initTable
--   where
--     sitPlayers state = snd . flip runIxState state $ do
--       sitPlayer testPlayer
--       sitPlayer testPlayer{name=Just "not santi"}
--       dealHands
      
testMain gen = do
  initialiseGen gen
  initTable
