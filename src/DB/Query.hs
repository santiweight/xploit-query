module DB.Query where

import DB.Base
import Poker.Base
import Database.Esqueleto
import qualified Database.Persist as P
import Codec.Serialise (deserialise)
import Data.ByteString.Lazy (fromStrict)

selectAllHands :: SqlPersistM [HandH]
selectAllHands = do
  hands <- select $
            from $ \hand -> do
              return hand
  return . fmap toHand . fmap entityVal $ hands
  where
    toHand :: HandH -> Hand
    toHand = deserialise . fromStrict . handHSerial