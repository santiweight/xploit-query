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

module DB.Init where

import           Control.Monad.IO.Class  (liftIO)
import Data.Text
import Data.Time (UTCTime, LocalTime, TimeZone)
import Data.Time.LocalTime (getCurrentTimeZone, localTimeToUTC, utc)
import           Database.Persist
import           Database.Persist.Postgresql
import           Database.Persist.TH as PTH
import Control.Monad.Logger (runStdoutLoggingT, LoggingT)
import Control.Monad.Reader (runReaderT, ReaderT)
import Poker.Base (GameType (..), Hand (..), HandInfo (..))

PTH.share [PTH.mkPersist PTH.sqlSettings, PTH.mkMigrate "migrateAll"] [PTH.persistLowerCase|
  HandH sql=hands
    handId Int
    time UTCTime
    tableTy GameType
    handHistoryText Text
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
  (() <$) . runAction connString . insert . toHandH tz $ hand
  where
    toHandH :: TimeZone -> Hand -> HandH
    toHandH tz Hand {..} = HandH {
      handHHandId = _headerHandID _handInfo,
      handHHandHistoryText = pack _handText,
      handHTableTy = _headerHandTy _handInfo,
      handHTime = localTimeToUTC tz (_headerTime _handInfo)
    }
