module Eval.Next where

import           Poker.Base
import           Poker.Parse.Base
import           Poker.Filter.Eval.Base
import "poker-base" Poker.Base
import           Poker.Filter.Eval.AST.Base
import           Poker.Filter.Eval.Internal
                                         hiding ( runQuery )
import qualified Poker.Filter.Eval.Internal    as I
import           Poker.Filter.Eval.Types
import           Poker.Game.Bovada
import           Poker.Range                    ( Range(..) )
import           Poker.Filter.Parser.Parser     ( parseQuery )
import           System.Directory
import           System.FilePath.Posix
import           Data.Map                       ( Map )
import           Control.Monad
import           Algebra.Lattice.Ordered        ( Ordered(Ordered, getOrdered) )
import           Data.Bifunctor                 ( Bifunctor(second, first, bimap) )
import           Data.Functor.Foldable          ( Fix(Fix)
                                                , Recursive(cata)
                                                )
import Data.Functor ((<&>))

-- TODO test
handsPrefix :: String
handsPrefix = "test_files/small/"

loadHand :: Int -> IO (Hand BetSize)
loadHand = fmap (head . fromRight) . parseFile . (handsPrefix <>) . show

loadHandFile :: FilePath -> IO (Hand BetSize)
loadHandFile = fmap (head . fromRight) . parseFile

loadQuery :: String -> IO (EvalQuery Double)
loadQuery path = do
  forget . parseQuery <$> readFile path

expectSuccess
  :: Map String (Map Holding [BetAction BetSize])
  -> Either a (Map String (Map Holding [BetAction BetSize]))
  -> Bool
expectSuccess expected actual = fromRight actual == expected


testHands :: IO [(FilePath, Hand BetSize)]
testHands = do
  let testFilesPrefix = "test_files/small"
  fileSuffixes          <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure (fileSuffix, hand)

genCases :: EvalQuery Double -> FilePath -> IO ()
genCases query outputPath = do
  hands <- testHands
  forM_ hands $ \(suffix, hand) -> do
    let result = runQuery @BetSize mapNums hand
    let
      resultNoOrdered :: [ Either
              (Either (GameErrorBundle BetSize) EvalErr)
              (Map String (Map Holding [BetAction BetSize]))
          ]
        = result
    writeFile (outputPath </> (suffix <> ".out")) $ show resultNoOrdered
 where
  mapNums = fmap (cata (Fix . foo)) <$> query
  foo :: ExprF Double b -> ExprF BetSize b
  foo = first mkBetSize

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

unit_foo = do
  let bets = [(UTG, Call $ ExactlyRn 0.25)]
  res <- testHands <&> fmap (\hand -> runIxBetsAsQuery (snd hand) bets)
  print res



unit_next :: IO ()
unit_next = do
  doGolden "next"
  mapM_
    doGolden
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
