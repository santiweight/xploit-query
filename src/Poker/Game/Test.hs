module Poker.GameTest where

import Poker.Base
import Poker.Game
import System.Random

import Control.Monad.Indexed.State
import Control.Monad.Indexed

import qualified Data.Map as Map

u >>> w = u >>>= const w

main :: IO ()
main = do
  gen <- newStdGen
  let emptyTable = GameState
               { _seats = Map.fromList []
               , _stakes = 0.25
               , _pot = Pot 25 []
               , _board = InitialTable
               , _preFlopActions = []
               , _flopActions = []
               , _turnActions = []
               , _riverActions = []
               , _playerTurn = UTG
               , _dealer = []
               , _generator = gen
               }
  let state = runIxStateT (initTable >>> dealFlop) emptyTable
  -- state' <- runIxState initialiseDealer state
  putStrLn . show $ state
  putStrLn "done"