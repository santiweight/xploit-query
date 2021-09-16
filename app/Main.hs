{-# LANGUAGE ViewPatterns #-}
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
import           Money                          ( discrete )
import           Poker
import           Poker.Game.Emulate             ( prettyString )
import           Poker.Game.Types
import           Poker.History.Parse.Bovada
import           Poker.History.Types
import           Poker.Query.ActionIx
import           Poker.Query.Eval.Base
import           Poker.Query.Eval.Internal
import           Poker.Query.Eval.Query
import           Poker.Query.Eval.Types
import           Poker.Range
import           Polysemy
import qualified Polysemy.State                as Poly
import           Prettyprinter                  ( Pretty )
import           System.Directory
import           System.FilePath
import           Text.Megaparsec                ( ParseErrorBundle
                                                , parse
                                                )

getNode
  :: (Pretty b, IsBet b)
  => [History Bovada b]
  -> TreeQuery b a
  -> BetAction (IxRange b)
  -> String
  -> Range ShapedHand Freq
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
  -> Map Hand [BetAction b]
  -> (Range Hand Freq, Range ShapedHand Freq)
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
  where holdingRangeToShapedRange = Map.mapKeysWith (++) handToShaped

applyFilterAsFreq :: (BetAction b -> Bool) -> Map k [BetAction b] -> Map k Freq
applyFilterAsFreq ix =
  fmap (\acts -> Freq (length (filter ix acts)) (length acts))

main :: IO ()
main = do
  (fmap snd >>> concat >>> take 1000 -> allHands) <- testHands
  let zoneHands = filter (\his -> (gameTy . header) his == Zone) allHands
  let res       = getNode zoneHands sem Check "foo"
  putStr
    .   unlines
    .   fmap show
    $   (Map.assocs . _range $ res)
    <&> first prettyString
  pure ()
  -- let results :: [PlayerAction (Amount "USD")] =
  --       catMaybes $ flip runSemIgnoringErrors sem . toEvalState <$>
  -- print results
  -- pure ()
 where
  sem :: forall b . TreeQuery b ()
  sem = do
    -- many $ next @b
    firstDeal <- nextDeal @b
    deal      <- nextDeal @b
    -- guard $ is _FlopDeal deal

    accumulate @b "foo" =<< next


testHands :: IO [(FilePath, [History Bovada (Amount "USD")])]
testHands = do
  let testFilesPrefix = "../example-handhistories/Bovada"
  print =<< getCurrentDirectory
  fileSuffixes <- listDirectory testFilesPrefix
  forM fileSuffixes $ \fileSuffix -> do
    hand <- loadHandFile (testFilesPrefix </> fileSuffix)
    pure
      ( fileSuffix
      , (fmap . fmap)
        (\(SomeBetSize USD v) -> Amount (discrete $ truncate (v * 100)))
        hand
      )

loadHandFile :: FilePath -> IO [History Bovada SomeBetSize]
loadHandFile = fmap (fromRight (error "hands didn't load")) . parseFile

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
