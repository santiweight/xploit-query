
import DB.Init
import API.Server

main :: IO ()
main = do
  migrateDB
  runServer