{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE CPP #-}

module Main where

import           Control.Applicative            ( many )
import           Control.Arrow
import           Control.Lens                   ( (^.) )
import           Control.Lens.Extras            ( is )
import           Control.Monad
import           Data.Either                    ( rights )
import           Data.Either.Combinators        ( fromRight
                                                , rightToMaybe
                                                )
import  Language.Haskell.TH hiding (Range)
import           Data.Functor
import qualified Data.Map.Strict               as Map
import           Data.Map.Strict                ( Map )
import           Data.Maybe                     ( catMaybes
                                                , fromMaybe
                                                , listToMaybe
                                                , mapMaybe
                                                )
import           Data.Text                      ( Text )
import qualified Data.Text.IO                  as T
import           Data.Void
import           Debug.Trace                    ( traceShowM )
import           Money                          ( discrete
                                                , toSomeDiscrete
                                                )
import           Poker
import           Poker.Game.Emulate             ( prettyString )
import           Poker.Game.Types
import           Poker.History.Bovada.Parser hiding (PlayerAction)
import           Poker.History.Types hiding (PlayerAction)
import qualified Poker.History.Bovada.Model as Bov
import           Poker.Query.ActionIx
import           Poker.Query.Eval.Base
import           Poker.Query.Eval.Internal
import           Poker.Query.Eval.Query
import           Poker.Query.Eval.Types
import           Poker.Range
import           Polysemy
import qualified Polysemy.State                as Poly
#if MIN_VERSION_prettyprinter(1,7,0)
import           Prettyprinter                  ( Pretty )
#else
import           Data.Text.Prettyprint.Doc                  ( Pretty )
#endif
import           System.Directory
import           System.FilePath
import           Text.Megaparsec                ( ParseErrorBundle
                                                , parse
                                                )
import qualified System.IO as S
import Data.List (nubBy, isPrefixOf)
import Data.Char (isAlphaNum, isUpper, isSpace)
import TH (allProperties)
import System.Environment

getNode
  :: (Pretty b, IsBet b)
  => [Bov.History b]
  -> TreeQuery b a
  -> BetAction (IxRange b)
  -> String
  -> Range ShapedHole Freq
getNode hands query nodeFilter resultRangeName =
  let handResults =
        catMaybes $ fmap _accRanges . flip runQueryToState query <$> hands
      accRange = joinHandResults handResults
      getResultRange r = fromMaybe Map.empty $ r Map.!? resultRangeName
      resultRange                     = getResultRange accRange
      (holdingRange, shapedHandRange) = getCurrentRanges nodeFilter resultRange
  in  shapedHandRange
  where joinHandResults = Map.unionsWith (Map.unionWith (++))

getCurrentRanges
  :: IsBet b
  => BetAction (IxRange b)
  -> Map Hole [BetAction b]
  -> (Range Hole Freq, Range ShapedHole Freq)
getCurrentRanges currActFilter nodeRange =
  let
    currActFilterFunction = doesBetMatch currActFilter
    holdingRange          = applyFilterAsFreq currActFilterFunction nodeRange
    utgShowRange =
      applyFilterAsFreq currActFilterFunction
        . holdingRangeToShapedRange
        $ nodeRange
  in
    (Range holdingRange, Range utgShowRange)
  where holdingRangeToShapedRange = Map.mapKeysWith (++) holeToShapedHole

applyFilterAsFreq :: (BetAction b -> Bool) -> Map k [BetAction b] -> Map k Freq
applyFilterAsFreq ix =
  fmap (\acts -> Freq (length (filter ix acts)) (length acts))

testHands :: IO [(FilePath, [Bov.History (Amount "USD")])]
testHands = do
  let testFilesPrefix = "../example-handhistories/Bovada"
  print =<< getCurrentDirectory
  fileSuffixes <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure
      ( fileSuffix
      , (fmap . fmap)
        (\(SomeBetSize USD v) -> unsafeAmount (discrete $ truncate (v * 100)))
        hand
      )

loadHandFile :: FilePath -> IO [Bov.History SomeBetSize]
loadHandFile = fmap (fromRight (error "hands didn't load")) . parseFile

parseFile
  :: FilePath
  -> IO (Either (ParseErrorBundle Text Void) [Bov.History SomeBetSize])
parseFile f = do
  file <- T.readFile f
  return . parseString $ file

parseString
  :: Text -> Either (ParseErrorBundle Text Void) [Bov.History SomeBetSize]
parseString = parse pHands []

-- >>> import System.IO.Unsafe
-- >>> length $ unsafePerformIO testHands
-- >>> length . concatMap blah . fmap snd $ unsafePerformIO testHands
blah :: forall b . TreeQuery b (PlayerAction b)
blah = next @b

-- runSemIgnoringErrors :: (IsBet b, Pretty b) =>
--   EvalState b
--   -> TreeQuery b      a
--   -> EvalState a
-- runSemIgnoringErrors state =
--   fmap snd . rights . runSem state

-- BB 3b range vs any bet
query_bb3Bet :: TreeQuery (Amount "USD") ()
query_bb3Bet = do
  nextDeal @(Amount "USD")
  many $ mfilter (doesBetMatch Fold . _action) (next @(Amount "USD"))
  firstRaise <- mfilter (doesBetMatch (Raise AnyRn (BelowRn $ unsafeAmount 300)) . _action) (next @(Amount "USD"))
  many $ mfilter (doesBetMatch Fold . _action) (next @(Amount "USD"))
  threeB <- next @(Amount "USD")
  guard $ _pos threeB == BB
  accumulate @(Amount "USD") "foo" =<< next

query_anyLimp :: TreeQuery (Amount "USD") ()
query_anyLimp = do
  nextDeal @(Amount "USD")
  many $ mfilter
    ((\a -> doesBetMatch Fold a || doesBetMatch (Call AnyRn) a) . _action)
    (next @(Amount "USD"))
  -- firstRaise <- mfilter (doesBetMatch (Raise AnyRn (BelowRn 300)) . _action) (next @(Amount "USD"))
  -- many $ mfilter (doesBetMatch Fold . _action) (next @(Amount "USD"))
  limp <- next @(Amount "USD")
  guard $ _pos limp == BU
  accumulate @(Amount "USD") "foo" =<< next

return []

queries :: Map String (TreeQuery (Amount "USD") ())
queries = Map.fromList $(allProperties)

main :: IO ()
main = do
  args <- getArgs
  case (queries Map.!?) =<< listToMaybe args of
    Nothing -> error . unlines $ "Either no args or no matching query. Available targets:" : Map.keys queries
    Just sem -> do
      (fmap snd >>> concat >>> take 10000 -> allHands) <- testHands
      let zoneHands = filter (\his -> (Bov.gameTy . Bov.header) his == Bov.Zone) allHands
      let res       = getNode zoneHands sem (Call AnyRn) "foo"
      putStr
        .   unlines
        .   fmap show
        $   (Map.assocs . _range $ res)
        <&> first prettyString
      pure ()

-- main :: IO ()
-- main = do
--   -- let results :: [PlayerAction (Amount "USD")] =
--   --       catMaybes $ flip runSemIgnoringErrors sem . toEvalState <$>
--   -- print results
--   -- pure ()
--  where


