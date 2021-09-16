module Eval.Next where

import           Algebra.Lattice.Ordered        ( Ordered(Ordered, getOrdered) )
import           Control.Monad
import           Data.Bifunctor                 ( Bifunctor
                                                  ( bimap
                                                  , first
                                                  , second
                                                  )
                                                )
import           Data.Either.Combinators        ( leftToMaybe
                                                , rightToMaybe
                                                )
import           Data.Functor                   ( (<&>) )
import           Data.Functor.Foldable          ( Recursive(cata)
                                                , embed
                                                )
import           Data.Map                       ( Map )
import qualified Data.Map.Strict               as Map
import           Data.Maybe
import           Data.Monoid
import           Data.Text                      ( Text )
import qualified Data.Text.IO                  as T
import           Data.Void                      ( Void )
import           GHC.Exts                       ( the )
import           Money                          ( discrete
                                                , toSomeDiscrete
                                                )
import           Poker
import           Poker
import           Poker.Game.Types
import           Poker.History.Parse.Bovada
import           Poker.History.Types
import           Poker.Query.ActionIx
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
loadHand = fmap (head . fromJust . rightToMaybe) . parseFile . (handsPrefix <>) . show

loadHandFile :: FilePath -> IO (History Bovada SomeBetSize)
loadHandFile = fmap (head . fromJust . rightToMaybe) . parseFile

-- loadQuery :: String -> IO (EvalQuery Double)
-- loadQuery path = do
--   forget . parseQuery <$> readFile path

expectSuccess
  :: Map String (Map Hand [BetAction (Amount "USD")])
  -> Either a (Map String (Map Hand [BetAction (Amount "USD")]))
  -> Bool
expectSuccess expected actual = fromJust (rightToMaybe  actual) == expected


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

matchedHandsNum :: Int
matchedHandsNum = 10
