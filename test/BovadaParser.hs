module BovadaParser where

import Text.Megaparsec ( errorBundlePretty )
import Poker.Parse.Base ( parseFile )

unit_test1 :: IO ()
unit_test1 = parseFile "test/resources/testHands/test1.txt" >>= \case
  Left e -> error $ errorBundlePretty e
  Right _ -> pure ()