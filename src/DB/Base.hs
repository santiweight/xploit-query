{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE StandaloneDeriving #-}

module DB.Base where

import qualified Data.Text as T
import Data.Text (Text)
import Data.Time (UTCTime, TimeZone)
import Data.Time.LocalTime (getCurrentTimeZone, localTimeToUTC)
import           Database.Persist
import           Database.Persist.Postgresql
import           Database.Persist.TH as PTH
import Control.Monad.Logger (runStdoutLoggingT, LoggingT)
import Control.Monad.Reader (runReaderT)
import Poker.Base (GameType (..), Hand (..), HandInfo (..))
import qualified Data.ByteString.Lazy as L
import Data.ByteString (ByteString)
import Codec.Serialise (serialise)

PTH.share [PTH.mkPersist PTH.sqlSettings, PTH.mkMigrate "migrateAll"] [PTH.persistLowerCase|
  HandH sql=hands
    handId Int
    time UTCTime
    tableTy GameType
    handHistoryText Text
    serial ByteString -- @Hand (not [Action])
    UniqueHandID handId
    deriving Show Read
|]

connString :: ConnectionString
connString = "port=5432 host=127.0.0.1 user=xploit dbname=xploitdb"

runAction :: ConnectionString -> SqlPersistT (LoggingT IO) a ->  IO a
runAction connectionString action =
  runStdoutLoggingT $ withPostgresqlConn connectionString $ \backend ->
  runReaderT action backend

migrateDB :: IO ()
migrateDB = runAction connString (runMigration migrateAll)

insertHand :: Hand -> IO ()
insertHand hand = do
  tz <- getCurrentTimeZone
  (() <$) . runAction connString . insertBy . toHandH tz $ hand
  where
    toHandH :: TimeZone -> Hand -> HandH
    toHandH tz h@Hand{..} = HandH {
      handHHandId = _headerHandID _handInfo,
      handHHandHistoryText = T.pack _handText,
      handHTableTy = _headerHandTy _handInfo,
      handHTime = localTimeToUTC tz (_headerTime _handInfo),
      handHSerial = L.toStrict $ serialise h
    }