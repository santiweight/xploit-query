module API.Types where

import Poker.Types

data Filter = Filter {
  _tableTy :: Maybe GameType
}