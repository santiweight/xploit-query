module Eval.Next where

import           Control.Monad
import           Data.Either.Combinators        ( rightToMaybe
                                                )
import           Data.Functor.Foldable          ( Recursive(cata)
                                                , embed
                                                )
import           Data.Map                       ( Map )
import           Data.Maybe
import           Data.Text                      ( Text )
import qualified Data.Text.IO                  as T
import           Data.Void                      ( Void )
import           Money                          ( discrete

                                                )
import           Poker
import           Poker.Game.Types
import           Poker.History.Bovada.Parser
import           Poker.History.Types
import           Poker.Query.Eval.Base
import           Poker.Query.Eval.Types
import           System.Directory
import           System.FilePath.Posix
import           Text.Megaparsec
import Poker.History.Bovada.Model

-- TODO test
handsPrefix :: String
handsPrefix = "test_files/small/"

parseFile
  :: FilePath
  -> IO (Either (ParseErrorBundle Text Void) [History SomeBetSize])
parseFile f = do
  file <- T.readFile f
  return . parseString $ file

parseString
  :: Text -> Either (ParseErrorBundle Text Void) [History SomeBetSize]
parseString = parse pHands []

loadHand :: Int -> IO (History SomeBetSize)
loadHand = fmap (head . fromJust . rightToMaybe) . parseFile . (handsPrefix <>) . show

loadHandFile :: FilePath -> IO (History SomeBetSize)
loadHandFile = fmap (head . fromJust . rightToMaybe) . parseFile

-- loadQuery :: String -> IO (EvalQuery Double)
-- loadQuery path = do
--   forget . parseQuery <$> readFile path

expectSuccess
  :: Map String (Map Hand [BetAction (Amount "USD")])
  -> Either a (Map String (Map Hand [BetAction (Amount "USD")]))
  -> Bool
expectSuccess expected' actual = fromJust (rightToMaybe  actual) == expected'


testHands :: IO [(FilePath, History (Amount "USD"))]
testHands = do
  let testFilesPrefix = "example-handhistories/Bovada"
  print =<< getCurrentDirectory
  fileSuffixes <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure
      ( fileSuffix
      , fmap (\(SomeBetSize USD v) -> unsafeMkAmount (discrete $ truncate (v * 100)))
             hand
      )

genCases :: EvalQuery (Amount "USD") -> FilePath -> IO ()
genCases query outputPath = do
  hands <- testHands
  forM_ hands $ \(suffix, hand) -> do
    let result = runQuery @(Amount "USD") mapNums hand
    let
      resultNoOrdered :: [ Either
              (Either (GameError (Amount "USD")) EvalErr)
              (Map String (Map Hand [BetAction (Amount "USD")]))
          ]
        = result
    writeFile (outputPath </> (suffix <> ".out")) $ show resultNoOrdered
 where
  mapNums = fmap (cata embed) <$> query

matchedHandsNum :: Int
matchedHandsNum = 10
