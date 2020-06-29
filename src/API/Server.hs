{-# Language PackageImports #-}
module API.Server where

import API.ApiTypes
import Control.Monad.Except
import Control.Monad.Logger
import Control.Monad.Trans.Resource
import Data.Maybe
import Database.Esqueleto
import Database.Persist.Postgresql
import Network.Wai
import Network.Wai.Handler.Warp
import "base-compat" Prelude.Compat
import Servant
import Prelude ()
import Poker.Base (inIndex)
import Poker.Parse.Base
import Poker.Filter.Parser.Parser
import Poker.Filter.Eval.AST.Base (forget)
import Poker.Filter.Eval.Base
import Poker.Types
import Poker.Range
import DB.Base
import DB.Query

addHandsServer :: Server LoadHandHAPI
addHandsServer = addHandler
  where
    addHandler :: Maybe FilePath -> Handler ()
    addHandler fpMay =
      case fpMay of
        Just fp -> do
          hands <- liftIO $ parseInPath fp
          liftIO $ forM_ hands insertHand
          pure ()
        Nothing -> throwError err400

queryServer :: Server QueryAPI
queryServer = queryHandler
  where
    queryHandler :: Maybe FilePath -> Handler
                       (Range ShapedHand (Range Holding [PlayerActionValue]))
                      --  (Range ShapedHand x/100)
    queryHandler (Just path) = do
      hands <- liftIO $ runDb selectAllHands
      queryStr <- liftIO $ readFile path
      let query' = forget . parseQuery $ queryStr
      let resultRange = holdingRangeToShapedRange
                      $ runQueryOnHands hands query'
      -- let resultFreqRange = shapedHoldingRangeToShapedFreqRange
      --                     . shapedRangeToFreqRange (inIndex (FoldIx))
      --                     $ resultRange
      -- liftIO $ print resultFreqRange
      pure resultRange
    queryHandler _ = throwError err400

runDb :: SqlPersistM a -> IO a
runDb = runResourceT
      . runNoLoggingT
      . withPostgresqlConn connString
      . runSqlConn

type MyAPI = QueryAPI :<|> LoadHandHAPI

maybeToHandler :: ServerError -> Maybe a -> Handler a
maybeToHandler e = maybe (throwError e) pure

app1 :: Application
app1 = serve (Proxy :: Proxy MyAPI) (queryServer :<|> addHandsServer)

runServer :: IO ()
runServer = run 8081 app1