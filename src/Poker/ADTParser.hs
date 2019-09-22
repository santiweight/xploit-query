{-# LANGUAGE OverloadedStrings #-}

module Poker.ADTParser (
                 ) where


import Data.Aeson (object, ToJSON(..), Value(..), (.=), FromJSON(..), (.:), withObject)
import Poker.Base
import Poker.Range
import Poker.Parse
import Poker.HandFilter

import Data.Text                                 ( Text, pack)
import qualified Data.Text.Lazy as TL            ( fromStrict, unpack )

import qualified Data.HashMap.Lazy as HML        ( lookup )

import Control.Applicative                       ( empty, pure, (<$>), (<*>) )
import qualified Data.ByteString.Lazy.Char8 as BSCL

import Debug.Trace

data ParserAST = Or ParserAST ParserAST
               | Bind ParserAST ParserAST
               | Union ParserAST ParserAST
               | Satisfy ActionIndex
               | ManyTillPlus ParserAST ParserAST


-- toActionFilter :: ParserAST -> ActionFilter [Action]
toActionFilter (Satisfy index) = satisfyIndex (index ==)
-- toActionFilter (ManyTillPlus p1 p2) = manyTill 

  where
    parseValue (Satisfy index) = satisfyIndex (index ==)

-- instance ToJSON ActionIndex where
--     -- toJSON :: ActionIndex -> Value
--     toJSON AnyRaiseIndex = object
--       [ "type" .= toJSON (String "AnyRaise") ]
    

-- instance FromJSON ActionIndex where
--   parseJSON = withObject "ActionIndex" $ \o -> do
--     type_ <- o .: "type"
--     trace (show type_) $ do
--     case TL.unpack type_ of
--       "AnyRaise" -> return AnyRaiseIndex

-- -- { "type" : "command",
-- --   "name" : "create",
-- --   "data" : {
-- --      "name" : "Arthur",
-- --      "value" : 100.0
-- --   }
-- -- }
-- -- Update command example

-- -- { "type" : "command",
-- --   "name" : "update",
-- --   "data" : {
-- --      "id" : 1,
-- --      "value" : 90.0
-- --    }
-- -- }
-- -- Delete command example

-- -- { "type" : "command",
-- --   "name" : "delete",
-- --   "data" : 1
-- -- }
-- -- So, we expect key type, which always should be "command", to distinguish commands we use key name, and each command have third mandatory key data, which differs for each command.

-- -- we could declare following fromjson instance for command:
-- -- data Command = NotCommand
-- --              | WrongArg      String
-- --              | CommandCreate { name :: Text, value :: Double }
-- --              | CommandUpdate { id   :: Int,  value :: Double }
-- --              | CommandDelete { id   :: Int }
-- --     deriving Show

-- -- instance FromJSON Command where
-- --     parseJSON (Object o) = case HML.lookup "type" o of
-- --         Just (String "command") -> let dt = HML.lookup "data" o

-- --             Just (String "create") -> createCmd dt
-- --             Just (String "update") -> updateCmd dt
-- --             Just (String "delete") -> CommandDelete <$> o .: "data"
-- --             _                     -> unrecognizedCommand
-- --         _ -> pure NotCommand
-- --         where createCmd Nothing           = missingData
-- --               createCmd (Just (Object d)) = CommandCreate <$> d .: "name" <*> d .: "value"
-- --               createCmd _                 = incorrectData
-- --               updateCmd Nothing           = missingData
-- --               updateCmd (Just (Object d)) = CommandUpdate <$> d .: "id"   <*> d .: "value"
-- --               updateCmd _                 = incorrectData

-- --               missingData         = pure $ WrongArg "Missing mandatory `data` key."
-- --               incorrectData       = pure $ WrongArg "Incorrect data received."
-- --               unrecognizedCommand = pure $ WrongArg "Unrecognized command name."
-- --     parseJSON _ = pure NotCommand
-- -- instance FromJSON ActionIndex where
-- --   parseJSON = withObject “ActionIndex” $ \o -> do
-- --     type_ <- o .: “type”
-- --     case type_ of
-- --       "anyraise" -> AnyRaiseIndex
-- --     return $ Occupation title_ tenure_ salary_

-- -- interpretParserAST (ParserAST index) = satisfyIndex index
-- -- instance ToJSON Command where
-- --     toJSON NotCommand = String "Not a command"
-- --     toJSON (WrongArg t) = String (pack t)
-- --     toJSON (CommandCreate n v) = object [ "type" .= String "command"
-- --                                         , "name" .= String "create"
-- --                                         , "data" .= object [ "name" .= String n
-- --                                                            , "value" .= toJSON v
-- --                                                            ]
-- --                                         ]
-- --     toJSON (CommandUpdate i v) = object [ "type" .= String "command"
-- --                                         , "name" .= String "update"
-- --                                         , "data" .= object [ "id" .= toJSON i
-- --                                                            , "value" .= toJSON v
-- --                                                            ]
-- --                                         ]
-- --     toJSON (CommandDelete i)   = object [ "type" .= String "command"
-- --                                         , "name" .= String "delete"
-- --                                         , "data" .= toJSON i
-- --                                         ]
-- -- -- show
-- -- main = do
-- --     let c = encode $ CommandCreate "Svetlana" 100.0
-- --     print (decode c :: Maybe Command)
-- --     print (decode "{\"type\":\"command\",\"name\":\"create\"}" :: Maybe Command)
-- --     print (decode "{\"type\":\"command\",\"name\":\" reate\",\"data\":{\"name\":\"Svetlana\",\"value\":100.0}}" :: Maybe Command)
-- --     print (decode "{\"type\":\"command\",\"name\":\"create\",\"data\":{\" ame\":\"Svetlana\",\"value\":100.0}}" :: Maybe Command)
