{-# Language PackageImports #-}
module API.Server where

import API.ApiTypes
import Control.Monad.Except
import Control.Monad.Except
import Control.Monad.Reader
import Control.DeepSeq (deepseq)
import Data.Aeson
import qualified Data.Aeson.Parser
import Data.Aeson.Types
import Data.Attoparsec.ByteString
import Data.ByteString (ByteString)
import Data.List
import Data.Maybe
import Data.String.Conversions
import Data.Time.Calendar
import GHC.Generics
import Lucid
import Network.HTTP.Media ((//), (/:))
import Network.HTTP.Media ((//), (/:))
import Network.Wai
import Network.Wai
import Network.Wai.Handler.Warp
import Network.Wai.Handler.Warp
import "base-compat" Prelude.Compat
import Servant
import Servant
import Servant.Types.SourceT (source)
import System.Directory
import Text.Blaze
import qualified Text.Blaze.Html
import Text.Blaze.Html.Renderer.Utf8
import Text.Printf (printf)
import Prelude ()
import Poker.Parse.Base
import DB.Base
import System.CPUTime

addHandsServer :: Server LoadHandHAPI
addHandsServer = addHandler
  where
    addHandler :: Maybe FilePath -> Handler String
    addHandler fpMay =
      case fpMay of
        Just fp -> do
          start <- liftIO $ getCPUTime
          hands <- liftIO $ parseInPath fp
          -- liftIO $ print hands
          liftIO $ forM_ hands insertHand
          end <- liftIO getCPUTime
          -- end <-
          let diff = (fromIntegral (end - start)) / (10^12)
          let res = printf "Computation time: %0.3f sec\n" (diff :: Double)
          pure res
        Nothing -> throwError err400

queryServer :: Server QueryAPI
queryServer = queryHandler
  where
    queryHandler :: Maybe String -> Maybe String -> Handler String
    queryHandler queryMay pathMay =
      maybeToHandler err400  $ do
        q <- queryMay
        p <- pathMay
        return q

type MyAPI = QueryAPI :<|> LoadHandHAPI

maybeToHandler :: ServerError -> Maybe a -> Handler a
maybeToHandler e = maybe (throwError e) pure

app1 :: Application
app1 = serve (Proxy :: Proxy MyAPI) (queryServer :<|> addHandsServer)

runServer :: IO ()
runServer = run 8081 app1