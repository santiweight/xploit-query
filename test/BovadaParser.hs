module BovadaParser where

import Text.Megaparsec
import Poker.Parse.Base
import System.IO.Unsafe

unit_test1 :: IO ()
unit_test1 = parseFile "test/resources/testHands/test1.txt" >>= \case
  Left e -> error $ errorBundlePretty e
  Right res -> pure ()