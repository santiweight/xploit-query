
import DB.Base
import API.Server

main :: IO ()
main = do
  migrateDB
  runServer