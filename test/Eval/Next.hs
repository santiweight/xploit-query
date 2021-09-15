module Eval.Next where

import           Algebra.Lattice.Ordered        ( Ordered(Ordered, getOrdered) )
import           Control.Monad
import           Data.Bifunctor                 ( Bifunctor
                                                  ( bimap
                                                  , first
                                                  , second
                                                  )
                                                )
import           Data.Either.Combinators        ( leftToMaybe, rightToMaybe )
import           Data.Functor                   ( (<&>) )
import           Data.Functor.Foldable          ( Recursive(cata)
                                                , embed
                                                )
import           Data.Map                       ( Map )
import           Data.Text                      ( Text )
import qualified Data.Text.IO                  as T
import           Data.Void                      ( Void )
import           Money                          ( discrete
                                                , toSomeDiscrete
                                                )
import           Poker
import           Poker
import           Poker.Game.Types
import           Poker.History.Parse.Bovada
import           Poker.History.Types
import           Poker.Query.Eval.AST.Base
import           Poker.Query.Eval.Base
import           Poker.Query.Eval.Internal
                                         hiding ( runQuery )
import qualified Poker.Query.Eval.Internal     as I
import           Poker.Query.Eval.Query
import           Poker.Query.Eval.Types
import           Poker.Range                    ( Range(..) )
import           Prettyprinter
import           System.Directory
import           System.FilePath.Posix
import           Text.Megaparsec
import GHC.Exts (the)

-- TODO test
handsPrefix :: String
handsPrefix = "test_files/small/"

parseFile
  :: FilePath
  -> IO (Either (ParseErrorBundle Text Void) [History Bovada SomeBetSize])
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


testHands :: IO [(FilePath, History Bovada (Amount "USD"))]
testHands = do
  let testFilesPrefix = "example-handhistories/Bovada"
  print =<< getCurrentDirectory
  fileSuffixes <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure
      ( fileSuffix
      , fmap (\(SomeBetSize USD v) -> Amount (discrete $ truncate (v * 100)))
             hand
      )

-- >>> import System.IO.Unsafe
-- >>> count . blah . head . fmap snd $ unsafePerformIO testHands
-- Just (PlayerAction {_pos = UTG, _action = Call (Amount {_unAmount = Discrete "USD" 100%1 5})})
blah
  :: forall b
   . (Pretty b, IsBet b)
  => History Bovada b
  -> [Maybe (PlayerAction b)]
blah hand = fmap ((>>= rightToMaybe) . fmap fst . rightToMaybe) $ runSem @b (toEvalState hand) $ do
  next @b

genCases :: EvalQuery (Amount "USD") -> FilePath -> IO ()
genCases query outputPath = do
  hands <- testHands
  forM_ hands $ \(suffix, hand) -> do
    let result = runQuery @(Amount "USD") mapNums hand
    let
      resultNoOrdered :: [ Either
              (Either (GameErrorBundle (Amount "USD")) EvalErr)
              (Map String (Map Hand [BetAction (Amount "USD")]))
          ]
        = result
    writeFile (outputPath </> (suffix <> ".out")) $ show resultNoOrdered
 where
  mapNums = fmap (cata (embed . foo)) <$> query
  foo :: ExprF a b -> ExprF a b
  foo = id

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
