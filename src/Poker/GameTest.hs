module Poker.GameTest where

import Poker.Game
import System.Random

import qualified Data.Map as Map

main :: IO ()
main = do
  gen <- newStdGen
  let emptyTable = GameState
               { _seats = Map.fromList []
               , _stakes = 0.25
               , _pot = 0
               , _board = InitialTable
               , _dealer = []
               , _generator = gen
               }
  state <- runIxStateT (getNumPlayers) emptyTable
  -- state' <- runIxState initialiseDealer state
  putStrLn . show $ state
  putStrLn "done"
