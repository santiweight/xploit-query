module Poker.Data
  ()
where

import Poker.Game
import Poker.Parse
import Data.Aeson

main = do
  hand <- head <$> test_hands
  putStrLn $ show hand
  putStrLn "hi"

