{-# LANGUAGE TypeOperators #-}

module API.ApiTypes where

import Data.Text
import Data.Time (UTCTime)
import Data.Map.Lazy (Map (..))
import Servant.API

type QueryAPI = "run"
              :> QueryParam "query" String
              :> QueryParam "path" FilePath
              :> Get '[JSON] String

type LoadHandHAPI = "load"
                  :> QueryParam "path" FilePath
                  :> Get '[JSON] String