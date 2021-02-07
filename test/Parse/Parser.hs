{-# LANGUAGE ViewPatterns #-}
module Parse.Parser where

import Poker.Base
import Poker.Parse.Base (parseFile)
import Data.Either (fromRight)
import Control.Monad (void, (<=<))
import System.Directory (getCurrentDirectory)
import System.FilePath ((</>))
import Data.Functor ((<&>))
import Text.Regex.Posix
import Test.Tasty.HUnit (assertBool)

testHandsPath :: IO FilePath
testHandsPath = getCurrentDirectory <&> (</> "test/resources/testHands/test.txt")

testHands :: IO [Hand Double]
testHands = do
    either (error . show) id <$> (parseFile =<< testHandsPath)

unit_parseHands :: IO ()
unit_parseHands = do
    handFileContents <- readFile =<< testHandsPath
    let handTexts :: [MatchArray] = matchAll (makeRegex ("\r\n\r\n\r\n" :: String) :: Regex) handFileContents
    let numHandsExpected = length handTexts
    numHandsFound <- (length $!) <$> testHands
    assertHandsParsed numHandsExpected numHandsFound
    where
        assertHandsParsed ((+1)-> exp)  found =
            let message = "could not parse every hand: Expected " ++
                          show exp ++ " but found " ++ show found
            in assertBool message (exp ==  found)
