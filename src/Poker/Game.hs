{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE GADTs #-}


module Poker.Game
  (
    runIxState
  , emptyTable
  )
where

import Prelude hiding ((>>=), (>>), return)

import Poker.Base hiding (players)
import Control.Monad.Indexed.State
import Control.Applicative
import Data.Maybe
import Data.Map (Map)
import System.Random
import System.Random.Shuffle
import System.IO.Unsafe
import qualified Data.Map as Map

import Debug.Trace

type Name = String

data Initial
data PreFlop
data Flop
data Turn
data River

data Seat = Seat
            { _name :: Name
            , _holding :: Maybe Holding
            , _stack :: Double
            }
  deriving (Show)

data Board a where
  RiverBoard :: Card -> Board Turn -> Board River
  TurnBoard :: Card -> Board Flop -> Board Turn
  FlopBoard :: (Card, Card, Card) -> Board PreFlop -> Board Flop
  PreFlopBoard :: Board Initial -> Board PreFlop
  EmptyTable :: Board Initial

indent :: String -> String
indent = unlines . map ('\t' :) . lines

data GameState a = GameState
                 { _seats :: Map Position (Maybe Seat)
                 , _stakes :: Double
                 , _pot :: Double
                 , _board :: Board a
                 , _dealer :: [Card]
                 , _generator :: StdGen
                 }

instance Show (GameState a) where
  show state = unlines $
    [ show . _stakes $ state
    , show . _seats $ state
    ]
  
type Transition i o a = IxState (GameState i) (GameState o) a

return ::  a -> IxState si si a
return = return

(>>=) :: IxState p q a -> (a -> IxState q r b) -> IxState p r b
(>>=) = (>>=)

(>>) :: IxState p q a -> IxState q r b -> IxState p r b
v >> w = v >>= \_ -> w

type Game i a = (Transition i i a)

dealHands :: Game PreFlop ()
dealHands = do
  trace (show "here") $ do
  state <- iget
  let randGen = _generator state
  let deck' = shuffle' allCards 52 randGen
  iput state{_dealer=deck'}


dealRiver :: Transition Turn River ()
dealRiver = do
  state <- iget
  let restBoard = _board state
  let (river', dealer') = splitAt 1 $ _dealer state
  iput state{_board=RiverBoard (head river') restBoard}

dealTurn :: Transition Flop Turn ()
dealTurn = do
  state <- iget
  let restBoard = _board state
  let (turn', dealer') = splitAt 1 $ _dealer state
  iput state{_board=TurnBoard (head turn') restBoard}

dealFlop :: Transition PreFlop Flop ()
dealFlop = do
  state <- iget
  let restBoard = _board state
  let (turn', dealer') = splitAt 3 $ _dealer state
  iput state{_board=FlopBoard (toTuple3 turn') restBoard}
  where
    toTuple3 [a,b,c] = (a, b, c)

emptyTable :: GameState PreFlop
emptyTable = GameState
                 { _seats = Map.fromList []
                 , _stakes = 0.25
                 , _pot = 0
                 , _board = PreFlopBoard EmptyTable
                 , _dealer = []
                 , _generator = unsafePerformIO newStdGen
                 }

getNumPlayers :: Game a Int
getNumPlayers = do
  res <- length . _seats <$> iget
  return res

sitPlayer :: Player -> Game Initial ()
sitPlayer player = do
  state <- iget
  let seats = _seats state
  let availablePositions = filter (flip Map.member seats) listPosition
  case availablePositions of
    [] -> error "Couldn't sit player - need to use ExceptT"
    (p:ps) -> do
      let seats' = Map.insert p seats
      iput state{_seats=seats}

-- dealBoard :: Int -> Game ()
-- dealBoard cardNum = do
--   state <- get
--   let currBoard = _board state
--   let (board', dealer') = splitAt cardNum $ _dealer state
--   put state{_board=currBoard++board',_dealer=dealer'}

-- dealHands :: Game ()
-- dealHands = do
--   state <- get
--   let seatMap = _seats state
--   let seatMap = 
--   seats
