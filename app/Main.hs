module Main where

import Poker
import Poker.History.Types
import Poker.Game.Types
import Prettyprinter (Pretty)
import Poker.Query.Eval.Query
import Data.Either.Combinators (rightToMaybe, fromRight)
import Poker.Query.Eval.Base
import System.Directory
import Control.Monad
import Data.Text (Text)
import Data.Void
import qualified Data.Text.IO as T
import Text.Megaparsec (ParseErrorBundle, parse)
import Poker.History.Parse.Bovada
import System.FilePath
import Money (discrete)

main :: IO ()
main = mapM_ (print . blah . snd) =<< testHands

testHands :: IO [(FilePath, History Bovada (Amount "USD"))]
testHands = do
  let testFilesPrefix = "../example-handhistories/Bovada"
  print =<< getCurrentDirectory
  fileSuffixes <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure
      ( fileSuffix
      , fmap (\(SomeBetSize USD v) -> Amount (discrete $ truncate (v * 100)))
             hand
      )

loadHandFile :: FilePath -> IO (History Bovada SomeBetSize)
loadHandFile = fmap (head . fromRight (error "hands didn't load")) . parseFile

parseFile
  :: FilePath
  -> IO (Either (ParseErrorBundle Text Void) [History Bovada SomeBetSize])
parseFile f = do
  file <- T.readFile f
  return . parseString $ file

parseString
  :: Text -> Either (ParseErrorBundle Text Void) [History Bovada SomeBetSize]
parseString = parse pHands []

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