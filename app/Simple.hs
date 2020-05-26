import Options.Applicative
import Poker.Parse.Base ( parseFile )
import Poker.Filter.Parser.Parser ( parseQuery )
import Poker.Filter.Eval
import Poker.Base
import Poker.Game.Bovada
import Poker.Filter.AST
import Text.Megaparsec.Error

data Options
  = Options
      { queryPath :: String
      , handsPath :: String
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
              -- infoOption ver (long "version" <>
              --          short 'v' <>
              --          help "Display version and exit.") <*
            <* abortOption
              ShowHelpText
              ( long "help"
                  <> short 'h'
                  <> help "Display this message."
              )
        )
        (progDesc "Very powerful tool." <> fullDesc)
  query <- parseQuery <$> readFile (queryPath args)
  handsMay <- parseFile (handsPath args)
  case handsMay of
    Left e -> error $ errorBundlePretty e
    Right hands -> do
      let handsActions = ((,) <$> getPActions . _handActions <*> handToState) <$> hands :: [([PlayerAction], GameState)]
      -- print handsActions
      print $ (uncurry $ accQuery (forget query)) <$> handsActions
      print $ (uncurry $ evalQuery (forget query)) <$> handsActions
      -- print $ forget query
      -- print $ \as -> evalQuery (forget query) as handState <$> handsActions
      pure ()

  where
    getPActions :: [Action] -> [PlayerAction]
    getPActions [] = []
    getPActions (a:as) = case a of
      MkPlayerAction act -> act : getPActions as
      _ -> getPActions as
