module Eval.Next where

import           Poker
import           Poker.Query.Eval.Base
import Poker
import           Poker.Query.Eval.AST.Base
import           Poker.Query.Eval.Internal
                                         hiding ( runQuery )
import qualified Poker.Query.Eval.Internal    as I
import           Poker.Query.Eval.Types
import           Poker.Range                    ( Range(..) )
import           System.Directory
import           System.FilePath.Posix
import           Data.Map                       ( Map )
import           Control.Monad
import           Algebra.Lattice.Ordered        ( Ordered(Ordered, getOrdered) )
import           Data.Bifunctor                 ( Bifunctor(second, first, bimap) )
import           Data.Functor.Foldable          ( Recursive(cata), embed
                                                )
import Data.Functor ((<&>))
import Poker.Game.Types
import Poker.History.Types
import Text.Megaparsec
import Data.Text (Text)
import Data.Void (Void)
import qualified Data.Text.IO as T
import Poker.History.Parse.Bovada
import Money (toSomeDiscrete, discrete)

-- TODO test
handsPrefix :: String
handsPrefix = "test_files/small/"

parseFile
  :: FilePath -> IO (Either (ParseErrorBundle Text Void) [History Bovada SomeBetSize])
parseFile f = do
  file <- T.readFile f
  return . parseString $ file

parseString
  :: Text -> Either (ParseErrorBundle Text Void) [History Bovada SomeBetSize]
parseString = parse pHands []

loadHand :: Int -> IO (History Bovada SomeBetSize)
loadHand = fmap (head . fromRight) . parseFile . (handsPrefix <>) . show

loadHandFile :: FilePath -> IO (History Bovada SomeBetSize)
loadHandFile = fmap (head . fromRight) . parseFile

-- loadQuery :: String -> IO (EvalQuery Double)
-- loadQuery path = do
--   forget . parseQuery <$> readFile path

expectSuccess
  :: Map String (Map Hand [BetAction (Amount "USD")])
  -> Either a (Map String (Map Hand [BetAction (Amount "USD")]))
  -> Bool
expectSuccess expected actual = fromRight actual == expected


-- testHands :: IO [(FilePath, History Bovada (Amount "USD"))]
-- testHands = do
--   let testFilesPrefix = "test_files/small"
--   fileSuffixes          <- listDirectory testFilesPrefix
--   forM fileSuffixes $ \fileSuffix -> do
--     hand <- loadHandFile (testFilesPrefix </> fileSuffix)
--     pure (fileSuffix, fmap (\(SomeBetSize USD v) -> Amount (discrete $ toInteger (v * 100))) hand)

-- genCases :: EvalQuery (Amount "USD") -> FilePath -> IO ()
-- genCases query outputPath = do
--   hands <- testHands
--   forM_ hands $ \(suffix, hand) -> do
--     let result = runQuery @(Amount "USD") mapNums hand
--     let
--       resultNoOrdered :: [ Either
--               (Either (GameErrorBundle (Amount "USD")) EvalErr)
--               (Map String (Map Hand [BetAction (Amount "USD")]))
--           ]
--         = result
--     writeFile (outputPath </> (suffix <> ".out")) $ show resultNoOrdered
--  where
--   mapNums = fmap (cata (embed . foo)) <$> query
--   foo :: ExprF a b -> ExprF a b
--   foo = id

  -- let outPrefix = "test/Eval/next_cases/"
  -- writeFile ""
  -- (queries, rest)<- partition (".xpl" `isSuffixOf`) files
  -- (queries, rest)<- partition (".out" `isSuffixOf`) files



  -- names <- listDirectory dirPath
  -- let paths = map (dirPath </>) names
  -- (dirPaths, filePaths) <- partitionM doesDirectoryExist paths
  -- state' <- foldM transition state filePaths -- process current dir
  -- foldM go state' (filter validDir dirPaths) -- process subdirs

-- doGolden :: String -> IO ()
-- doGolden name = do
--   query <- loadQuery $ "test/Eval" </> name </> "query"
--   genCases (Amount @"USD" <$> query) $ "test/Eval" </> name </> "out"

-- unit_foo = do
--   let bets = [(UTG, Call $ ExactlyRn 0.25)]
--   res <- testHands <&> fmap (\hand -> runIxBetsAsQuery (snd hand) bets)
--   print res



-- unit_next :: IO ()
-- unit_next = do
--   doGolden "next"
--   mapM_
--     doGolden
--     [ "next"
--     , "limp"
--     , "flop"
--     , "fold"
--     , "open_utg"
--     , "open_utg_no_do"
--     , "open_utg_then_next"
--     , "open_utg_utg1"
--     , "open_utg_utg1_fail_where"
--     , "fold_utg_with_where"
--     , "headsup"
--     ]
--   -- query <- loadQuery "test/Eval/next_cases/next.xpl"
--   -- genCases query "test/Eval/next_cases/out"

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
