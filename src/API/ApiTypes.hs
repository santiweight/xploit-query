{-# LANGUAGE TypeOperators #-}

module API.ApiTypes where

import Servant.API
import Poker.Types (ShapedHand, PlayerActionValue, Holding)
import Poker.Range (Range)

type QueryAPI = "run"
              -- :> QueryParam "query" String
              :> QueryParam "path" FilePath
              -- :> ReqBody '[JSON] Filter
              :> Get '[JSON] (Range ShapedHand (Range Holding [PlayerActionValue]))


type LoadHandHAPI = "add"
                  :> QueryParam "path" FilePath
                  :> Get '[JSON] ()

type MyAPI = QueryAPI :<|> LoadHandHAPI