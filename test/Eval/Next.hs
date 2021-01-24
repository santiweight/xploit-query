module Eval.Next where

import Poker.Base
import Poker.Parse.Base
import Poker.Filter.Eval.Base
import "poker-base" Poker.Base
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Internal hiding (runQuery)
import qualified Poker.Filter.Eval.Internal as I
import Poker.Filter.Eval.Types
import Poker.Game.Bovada
import Poker.Range (Range (..))
import Poker.Filter.Parser.Parser (parseQuery)
import System.Directory
import System.FilePath.Posix
import Data.Map (Map)
import Control.Monad

-- TODO test
handsPrefix :: String
handsPrefix = "test_files/small/"

loadHand :: Int -> IO (Hand Double)
loadHand = fmap (head . fromRight) . parseFile . (handsPrefix <>) . show

loadHandFile :: FilePath -> IO (Hand Double)
loadHandFile = fmap (head . fromRight) . parseFile

loadQuery :: String -> IO (EvalQuery Double)
loadQuery path = do
  pure . forget . parseQuery =<< readFile path

expectSuccess :: Map String (Map Holding [BetAction Double]) -> Either
                    a (Map String (Map Holding [BetAction Double])) -> Bool
expectSuccess expected actual = fromRight actual == expected

genCases :: EvalQuery Double -> FilePath -> IO ()
genCases query outputPath = do
  let testFilesPrefix = "test_files/small"
  fileSuffixes <- listDirectory testFilesPrefix
  fileSuffixesWithHands <- forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure (fileSuffix, hand)
  forM_ fileSuffixesWithHands $ \(suffix, hand) -> do
    let result = runQuery query hand
    writeFile (outputPath </> (suffix <> ".out")) $ show result

  -- let outPrefix = "test/Eval/next_cases/"
  -- writeFile ""
  -- (queries, rest)<- partition (".xpl" `isSuffixOf`) files
  -- (queries, rest)<- partition (".out" `isSuffixOf`) files



  -- names <- listDirectory dirPath
  -- let paths = map (dirPath </>) names
  -- (dirPaths, filePaths) <- partitionM doesDirectoryExist paths
  -- state' <- foldM transition state filePaths -- process current dir
  -- foldM go state' (filter validDir dirPaths) -- process subdirs

doGolden :: String -> IO ()
doGolden name = do
  query <- loadQuery $ "test/Eval" </> name </> "query"
  genCases query $ "test/Eval" </> name </> "out"

unit_next = do
  doGolden "next"
  mapM_ doGolden
    [ "next"
    , "limp"
    , "flop"
    , "fold"
    , "open_utg"
    , "open_utg_no_do"
    , "open_utg_then_next"
    , "open_utg_utg1"
    , "open_utg_utg1_fail_where"
    , "fold_utg_with_where"
    , "headsup"
    ]
  -- query <- loadQuery "test/Eval/next_cases/next.xpl"
  -- genCases query "test/Eval/next_cases/out"

  -- query <- loadQuery "test/Eval/open_utg/open.xpl"
  -- genCases query "test/Eval/open_utg/out"

  -- query <- loadQuery "test/Eval/open_utg_then_next/open_then_next.xpl"
  -- genCases query "test/Eval/open_utg_then_next/out"

  -- query <- loadQuery "test/Eval/open_utg_utg1/open_utg_utg1.xpl"
  -- genCases query "test/Eval/open_utg_utg1/out"

  -- query <- loadQuery "test/Eval/open_utg_utg1_fail_where/open_utg_utg1_fail_where.xpl"
  -- genCases query "test/Eval/open_utg_utg1_fail_where/out"

  -- query <- loadQuery "test/Eval/fold_utg_with_where/fold_utg_with_where.xpl"
  -- genCases query "test/Eval/fold_utg_with_where/out"
  -- print $ expectSuccess
  -- print $ runQuery query hand

fromRight (Right r) = r