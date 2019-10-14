{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}



module Poker.Game
  (
    runIxState
  , emptyTable
  , iget
  )
where

import Prelude

import Poker.Base hiding (players, Player(..))
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

-- works for dataKinds

data Street = Initial
            | PreFlop
            | Flop
            | Turn
            | River
              deriving (Show)

-- data Initial
-- data PreFlop
-- data Flop
-- data Turn
-- data River

-- data Player = Player
--             { _name :: Name
--             , _holding :: Maybe Holding
--             , _stack :: Double
--             }
--   deriving (Show)

data Player = Player {
    name :: Maybe String,
    _holding :: Maybe Holding,
    stack :: Maybe Float
    }
    deriving Show

-- data Board :: Street -> * where
--   RiverBoard :: Card -> Board Turn -> Board River
--   TurnBoard :: Card -> Board Flop -> Board Turn
--   FlopBoard :: (Card, Card, Card) -> Board PreFlop -> Board Flop
--   PreFlopBoard :: Board Initial -> Board PreFlop
--   InitialTable :: Board Initial

data Board :: Street -> * where
  RiverBoard :: Card -> Board Turn -> Board River
  TurnBoard :: Card -> Board Flop -> Board Turn
  FlopBoard :: (Card, Card, Card) -> Board PreFlop -> Board Flop
  PreFlopBoard :: Board Initial -> Board PreFlop
  InitialTable :: Board Initial

instance Show (Board Initial) where
  show _ = "InitialBoard"
instance Show (Board PreFlop) where
  show _ = "PreFlop"
instance Show (Board Flop) where
  show (FlopBoard (c1, c2, c3) _) = "Flop is: " ++ show c1 ++ show c2 ++ show c3
instance Show (Board Turn) where
  show (TurnBoard card flop) = "Turn is: " ++ show card ++ show flop
instance Show (Board River) where
  show (RiverBoard card flop) = "River is: " ++ show card ++ show flop
-- instance Show (RiverBoard Card (Board Turn)) where
--   show (RiverBoard r rest) = show r ++ show rest

indent :: String -> String
indent = unlines . map ('\t' :) . lines

data GameState (a :: Street) = GameState
                 { _seats :: Map Position Player
                 , _stakes :: Double
                 , _pot :: Double
                 , _board :: Board a
                 , _dealer :: [Card]
                 , _generator :: StdGen
                 }

initial :: Board Initial
initial = InitialTable

instance Show (GameState Initial) where
  show state = unlines $
    [ show . _stakes $ state
    , show . _seats $ state
    , show . _dealer $ state
    , show . _board $ state
    , show . _seats $ state
    ]

instance Show (GameState PreFlop) where
  show state = unlines $
    [ show . _stakes $ state
    , show . _seats $ state
    , show . _dealer $ state
    , show . _board $ state
    , show . _seats $ state
    ]

instance Show (GameState Flop) where
  show state = unlines $
    [ show . _stakes $ state
    , show . _seats $ state
    , show . _dealer $ state
    , show . _board $ state
    , show . _seats $ state
    ]

type Transition i o a = IxState (GameState i) (GameState o) a

type Game i a = IxState (GameState i) (GameState i) a

initialiseDealer :: Game Initial ()
initialiseDealer = imodify deal
  where
    deal state = let randGen = _generator state
                     a = shuffle' allCards 52 randGen
                     deck' = shuffle' allCards 52 randGen
                 in state{_dealer=deck'}

-- -- -- SHOULD BE INITIAL -- FIX ME!!
-- -- initialiseDealerIO :: IO (Game PreFlop ())
-- -- initialiseDealerIO = do
-- --   newStdGen >>= \gen ->
-- --     return . initialiseDealer $ gen

-- SHOULD BE INITIAL -- FIX ME!!
initialiseGen :: StdGen -> Game Initial ()
initialiseGen gen = do
  state <- iget
  iput state{_generator=gen}

-- dealRiver :: Transition Turn River ()
-- dealRiver = do
--   imodify dealGo
--   where
--     dealGo state =
--       let restBoard = _board state
--           (river', dealer') = splitAt 1 $ _dealer state
--       in state{_board=_board state ++ river'}

 -- dealTurn :: Transition Flop Turn ()
 -- dealTurn = do
 --   state <- iget
 --   let restBoard = _board state
 --   let (turn', dealer') = splitAt 1 $ _dealer state
 --   iput state{_board=TurnBoard (head turn') restBoard}

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

emptyTable :: GameState Initial
emptyTable = GameState
               { _seats = Map.fromList []
               , _stakes = 0.25
               , _pot = 0
               , _board = InitialTable
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
  let availablePositions = filter (not . flip Map.member seats) listPosition
  case availablePositions of
    [] -> error "Couldn't sit player - need to use ExceptT"
    (p:ps) -> do
      let seats' = Map.insert p player seats
      iput state{_seats=seats'}

-- dealBoard :: Int -> Game ()
-- dealBoard cardNum = do
--   state <- get
--   let currBoard = _board state
--   let (board', dealer') = splitAt cardNum $ _dealer state
--   put state{_board=currBoard++board',_dealer=dealer'}

testDealHands :: Game Initial ()
testDealHands = do
  state <- iget
  let seatMap = Map.toList $ _seats state
  let dealer = _dealer state
  -- let res@(seatMap', dealer) = dealGo seatMap dealer
  trace ((show $ dealGo seatMap dealer) ++ show state) $
    iput state{_seats=Map.fromList seatMap, _dealer=dealer}
  where
    dealGo :: [(Position, Player)] -> [Card] -> ([(Position, Player)], [Card])
    dealGo [] dealer = ([], dealer)
    dealGo ((pos, seat):ss) (c1:c2:cs) =
      let (restSeats, dealer') = dealGo ss cs
        in ((pos, seat{_holding=Just $ Holdem c1 c2}) : restSeats, dealer')


testPlayer = Player
             { name = Just "santi"
             , _holding =  Nothing
             , stack = Just 25
             }

dealHands :: Game Initial ()
dealHands = do
  state <- iget
  let seats = Map.toList $ _seats state
  let dealer = _dealer state
  let (seats', dealer') = dealGo seats dealer
  iput state{_seats=Map.fromList seats', _dealer=dealer'}
  where
    dealGo :: [(Position, Player)] -> [Card] -> ([(Position, Player)], [Card])
    dealGo [] dealer = ([], dealer)
    dealGo ((pos, seat):ss) (c1:c2:cs) =
      let (restSeats, dealer') = dealGo ss cs
        in ((pos, seat{_holding=Just $ Holdem c1 c2}) : restSeats, dealer')

testGame = do
  initialiseDealer 
  sitPlayer testPlayer 
  sitPlayer testPlayer{name=Just "not santi"}
  dealHands

main :: IO ()
main = do
  gen <- newStdGen
  let ((), state) = runIxState (initialiseGen gen) emptyTable
  let state' = runIxState testGame state
  -- let state' = runIxState testDealHands state
  putStrLn . show $ state'
  putStrLn "done"
