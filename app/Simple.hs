import Control.Lens.Combinators (each)
import Control.Lens.Operators ((%~), (&))
import Data.Functor ((<&>))
import qualified Data.Map as M
import Data.Monoid (Sum (..))
import Options.Applicative
import Poker.Base
import Poker.Filter.AST.AST
import Poker.Filter.Eval.Eval
import Poker.Filter.Parser.Parser (parseQuery)
import Poker.Game.Bovada
import Poker.Parse.Base (parseDirectory, parseFile)
import Poker.Range
import System.Directory (doesDirectoryExist)
import Text.Megaparsec.Error

data Options
  = Options
      { queryPath :: String,
        handsPath :: String
      }

main :: IO ()
main = do
  -- let ver = "gc2 -- git-cal in Haskell2010 - 0.1"
  args <-
    execParser $
      info
        ( Options
            <$> strOption
              ( long "query"
                  <> short 'q'
                  <> help "Path to query file."
              )
            <*> strOption
              ( long "hands"
                  <> short 'h'
                  <> help "Directory or file containing hands."
              )
            <* abortOption
              ShowHelpText
              ( long "help"
                  <> short 'h'
                  <> help "Display this message."
              )
        )
        (progDesc "Very powerful tool." <> fullDesc)
  queryString <- readFile (queryPath args)
  putStrLn queryString
  let query = parseQuery queryString
  -- print $ forget query
  isDir <- doesDirectoryExist $ handsPath args
  hands <-
    if isDir
      then parseDirectory $ handsPath args
      else parseFile (handsPath args) <&> (\case Left e -> error (show e); Right res -> res)
  -- case handsMay of
  --   Left e -> error $ errorBundlePretty e
  --   Right hands -> do
  let handsActions = ((,) <$> getPActions . _handActions <*> handToState) <$> hands :: [([PlayerAction], GameState)]
  -- print handsActions
  let temp :: Range Holding [PlayerActionValue] = Range $ foldl (M.unionWith (++)) M.empty . fmap pick $ map (uncurry $ accQuery (forget query)) handsActions
  let temp1 = holdingRangeToShapedRange temp
  let res = shapedHoldingRangeToShapedFreqRange . shapedRangeToFreqRange (inIndex (FoldIx)) $ temp1
  --
  -- let res = temp1 & range . each %~ foldr (\acts tot -> length acts + tot) 0 . _range
  print res
  -- print $ (uncurry $ evalQuery (forget query)) <$> handsActions
  -- print $ \as -> evalQuery (forget query) as handState <$> handsActions
  pure ()
  where
    normalise :: Range d (Integer, Integer) -> Range d Double
    normalise = range . each %~ \(num, den) -> (/ 100) . fromIntegral . round . (* 100) $ fromIntegral num / fromIntegral den
    pick [] = M.empty
    pick (x : _) = x
    getPActions :: [Action] -> [PlayerAction]
    getPActions [] = []
    getPActions (a : as) = case a of
      MkPlayerAction act -> act : getPActions as
      _ -> getPActions as
