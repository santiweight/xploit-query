{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Poker.Game
  (
    runIxStateT
  , iget
  , testMain
  , initialiseGen
  , initialiseDealer
  , initTable
  , getNumPlayers
  , GameState(..)
  , Street(..)
  , Board(..)
  )
where

import GHC.TypeLits
import Data.Proxy
import Prelude hiding ((>>=), (>>), return)
-- import Prelude

import Poker.Base hiding (players, Player(..))
import Control.Monad.Indexed
import Control.Monad.Indexed.State (IxStateT(..), IxState(..), iget, iput, imodify)
import Data.Map (Map)
import System.Random (StdGen, newStdGen)
import System.Random.Shuffle (shuffle')
import System.IO.Unsafe (unsafePerformIO)
import qualified Data.Map as Map

import Debug.Trace

indent :: String -> String
indent = concat . map ('\t' :) . lines

-- TODO pick a good monad
-- type Transition i o a = IxStateT IO (GameState i) (GameState o) a
type Transition i o a = IxState (GameState i) (GameState o) a

-- type Game i a = IxStateT Maybe (GameState i) (GameState i) a
type Game i a = Transition i i a

(>>=) :: Transition i j a -> (a -> Transition j k b) -> Transition i k b
(>>=) = (>>>=)

(>>) :: Transition i j a -> Transition j k b -> Transition i k b
v >> w = v >>>= const w

return :: a -> Transition i i a
return = ireturn


type Name = String

data Street = Initial
            | PreFlop
            | Flop
            | Turn
            | River
              deriving (Show)

data Action (a :: Street) (b :: Position) = Bet Double
                                          | Raise Double
                                          | Call
                                          | Fold
                                          | Check



data Player = Player {
    name :: Maybe String,
    _holding :: Maybe Holding,
    stack :: Maybe Float
    }
    deriving Show

data Board :: Street -> * where
  RiverBoard :: Card -> Board Turn -> Board River
  TurnBoard :: Card -> Board Flop -> Board Turn
  FlopBoard :: (Card, Card, Card) -> Board PreFlop -> Board Flop
  PreFlopBoard :: Board Initial -> Board PreFlop
  InitialTable :: Board Initial

instance Show (Board (a :: Street)) where
  show InitialTable = "InitialBoard"
  show (PreFlopBoard _) = "PreFlop"
  show (FlopBoard (c1, c2, c3) _) = "Flop is: " ++ show c1 ++ show c2 ++ show c3
  show (TurnBoard card flop) = "Turn is: " ++ show card ++ show flop
  show (RiverBoard card flop) = "River is: " ++ show card ++ show flop

-- instance Show (GameState (b :: Street)) where
--   show state = unlines $ funcs <*> return state
--     where funcs = [ show . _stakes
--                   , show . _dealer
--                   , show . _board
--                   , show . _seats ]

prettyShow state = unlines $ [ "Stakes:"
                       , tab $ show (_stakes state)
                       , "Dealer deck:"
                       , tab $ show (_dealer state)
                       , "Board:"
                       , tab $ show (_board state)
                       , "Seats:"
                       , tab $ show (_seats state) ]
    where
      tab = (:) '\t'

-- defGame = GameState
--                  { _seats  = Map.empty
--                  , _stakes  = 0.25
--                  , _pot  = 1
--                  , _board  = InitialTable
--                  , _dealer  = []
--                  , _generator  = unsafePerformIO newStdGen
--                  }




data GameState (a :: Street)  = GameState
                 { _seats :: Map Position Player
                 , _stakes :: Double
                 , _pot :: Double
                 , _board :: Board a
                 , _dealer :: [Card]
                 , _generator :: StdGen
                 }
  deriving Show

-- data GameState (a :: Street, p :: Position) = GameState
--                  { _seats :: Map Position Player
--                  , _stakes :: Double
--                  , _pot :: Double
--                  , _board :: Board a
--                  , _dealer :: [Card]
--                  , _generator :: StdGen
--                  }
--   deriving Show

initial :: Board Initial
initial = InitialTable


initialiseDealer :: Game 'Initial ()
initialiseDealer = imodify deal
  where
    deal state = let randGen = _generator state
                     deck' = shuffle' allCards 52 randGen
                 in state{_dealer=deck'}

-- TODO may want to clarify types and data constructors with '
initialiseGen :: StdGen -> Game 'Initial ()
initialiseGen gen = do
  state <- iget
  iput state{_generator=gen}

getNumPlayers :: Game a Int
getNumPlayers = return . length . _seats =<<< iget

sitPlayer :: Player -> Game Initial ()
sitPlayer player = do
  state <- iget
  let seats = _seats state
  let availablePositions = filter (not . flip Map.member seats) listPosition
  case availablePositions of
    [] -> error "Couldn't sit player - need to use ExceptT"
    (p:ps) -> do
      let seats' = Map.insert p player seats
      iput state{_seats=seats'}

dealHands :: Game Initial ()
dealHands = do
  state <- iget
  let seats = Map.toList $ _seats state
  let dealer = _dealer state
  let (seats', dealer') = dealGo seats dealer
  iput state{_seats=Map.fromList seats', _dealer=dealer'}

testPlayer = Player
             { name = Just "santi"
             , _holding =  Nothing
             , stack = Just 25
             }

dealGo :: [(Position, Player)] -> [Card] -> ([(Position, Player)], [Card])
dealGo [] dealer = ([], dealer)
dealGo ((pos, seat):ss) (c1:c2:cs) =
  let (restSeats, dealer') = dealGo ss cs
    in ((pos, seat{_holding=Just $ Holdem c1 c2}) : restSeats, dealer')
dealGo a b = error $ "wtf lol" ++ show a ++ show b ++ "end"

-- -- SHOULD BE INITIAL -- FIX ME!!
-- initialiseDealerIO :: IO (Game PreFlop ())
-- initialiseDealerIO = do
--   newStdGen >>= \gen ->
--     return . initialiseDealer $ gen

dealRiver :: Transition Turn River ()
dealRiver = do
  imodify dealGo
  where
    dealGo state =
      let restBoard = _board state
          (river', dealer') = splitAt 1 $ _dealer state
      in state{_board=RiverBoard (head river') restBoard}

dealTurn :: Transition Flop Turn ()
dealTurn = do
  state <- iget
  let restBoard = _board state
  let (turn', dealer') = splitAt 1 $ _dealer state
  iput state{_board=TurnBoard (head turn') restBoard}

dealFlop :: Transition PreFlop Flop ()
dealFlop = imodify dealGo
  where
    toTuple3 [a,b,c] = (a, b, c)
    dealGo :: GameState PreFlop -> GameState Flop
    dealGo state =
      let restBoard = _board state
          (flop', dealer') = splitAt 3 $ _dealer state
      in state{_board=FlopBoard (toTuple3 flop') restBoard, _dealer=dealer'}

-- transitionToPreFlop :: Transition Initial PreFlop ()
-- transitionToPreFlop = imodify alterGo
--   where
--     alterGo state = state{_dealer=_dealer state}

initTable :: Transition Initial PreFlop ()
initTable = do
  initialiseDealer
  sitPlayer testPlayer
  dealHands
  imodify goPreFlop

goPreFlop :: GameState 'Initial -> GameState 'PreFlop
goPreFlop state = let board = _board state
                  in state{_board=PreFlopBoard $ board}

testGame :: Transition Initial PreFlop ()
testGame = do
  initialiseDealer
  sitPlayer testPlayer
  sitPlayer testPlayer{name=Just "not santi"}
  dealHands
  imodify goPreFlop
 -- imodify $ snd . runIxStateT initTable
 -- iput . snd $ ((flip runIxState) <*> imodify sitPlayers <*> iget)
 -- initTable

testMain = do
  -- initialiseGen gen
  initTable
  
