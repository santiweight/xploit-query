{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE FlexibleInstances #-}

module Poker.Game
  (
  --   runIxStateT
  -- , iget
  -- , testMain
  -- , initialiseGen
  -- , prettyShowState
  -- , initialiseDealer
  -- , initTable
  -- , Pot(..)
  -- , getNumPlayers
  -- , dealFlop
  -- , dealTurn
  -- , dealRiver
  -- , GameState(..)
  -- , Street(..)
  -- , Board(..)
  )
where

-- import Control.Monad.Trans.Except
-- import Language.Haskell.DoNotation
-- import Prelude hiding (Monad (..), pure)
-- import Data.Foldable
-- import Data.Maybe
-- import GHC.TypeLits
-- import Data.Proxy
-- import Data.Sort
-- -- import Prelude hiding ((>>=), (>>), return)
-- -- import Prelude

-- import Poker.Base hiding (players, Player(..))
-- import Control.Monad (guard)
-- import Control.Monad.Indexed
-- import Control.Monad.Indexed.State
-- import Data.Map (Map)
-- import Control.Lens
-- import System.Random (StdGen, newStdGen)
-- import System.Random.Shuffle (shuffle')
-- import System.IO.Unsafe (unsafePerformIO)
-- import qualified Data.Map as Map
-- import Control.Monad.Indexed.Trans

-- import Debug.Trace

-- indent :: String -> String
-- indent = concat . map ('\t' :) . lines

-- -- TODO pick a good monad
-- type Transition i o a = IxStateT (Except GameError) (GameState i) (GameState o) a
-- -- type Transition i o a = IxState (GameState i) (GameState o) a

-- -- type Game i a = IxStateT Maybe (GameState i) (GameState i) a
-- type Game i a = Transition i i a

-- type Name = String

-- data GameError = GeneralError
--   deriving Show

-- data Street = Initial
--             | PreFlop
--             | Flop
--             | Turn
--             | River
--               deriving (Show)

-- data Seat' = Seat1 | Seat2

-- data Player = Player
--               { _name :: Maybe Name
--               , _live :: Bool
--               , _holding :: Maybe Holding
--               , _stack :: Maybe Double
--               , _moneyInvested :: Double
--               , _seat :: Seat
--               }
--     deriving Show

-- data Pot = Pot Double [Double]
--   deriving Show


-- data Board :: Street -> * where
--   RiverBoard :: Card -> Board 'Turn -> Board 'River
--   TurnBoard :: Card -> Board 'Flop -> Board 'Turn
--   FlopBoard :: (Card, Card, Card) -> Board 'PreFlop -> Board 'Flop
--   PreFlopBoard :: Board 'Initial -> Board 'PreFlop
--   InitialTable :: Board 'Initial

-- instance Show (Board (a :: Street)) where
--   show InitialTable = "InitialBoard"
--   show (PreFlopBoard _) = "PreFlop"
--   show (FlopBoard (c1, c2, c3) _) = "Flop is: " ++ show c1 ++ show c2 ++ show c3
--   show (TurnBoard card flop) = "Turn is: " ++ show card ++ show flop
--   show (RiverBoard card flop) = "River is: " ++ show card ++ show flop

-- -- instance Show (GameState (b :: Street)) where
-- --   show state = unlines $ funcs <*> return state
-- --     where funcs = [ show . _stakes
-- --                   , show . _dealer
-- --                   , show . _board
-- --                   , show . _seats ]

-- prettyShowState :: GameState a -> String
-- prettyShowState state = unlines $ [ "Stakes:"
--                        , tab $ show (_stakes state)
--                        , "Dealer deck:"
--                        , tab $ show (_dealer state)
--                        , "Board:"
--                        , tab $ show (_board state)
--                        , "Seats:"
--                        , tab $ show (_seats state) ]
--     where
--       tab = (:) '\t'

-- -- defaultGame = GameState
-- --                  { _seats  = Map.empty
-- --                  , _stakes  = 0.25
-- --                  , _pot  = Pot 1 []
-- --                  , _board  = InitialTable
-- --                  , _dealer  = []
-- --                  , _generator  = unsafePerformIO newStdGen
-- --                  }

-- data GameState (a :: Street)  = GameState
--                  { _seats :: Map Position Player
--                  , _stakes :: Double
--                  , _pot :: Pot
--                  , _board :: Board a
--                  , _dealer :: [Card]
--                  , _generator :: StdGen
--                  , _preFlopActions :: [Action]
--                  , _flopActions :: [Action]
--                  , _turnActions :: [Action]
--                  , _riverActions :: [Action]
--                  , _playerTurn :: Position
--                  }
--   deriving Show

-- $(makeLenses ''GameState)

-- class StoreAction (i :: Street) where
--   storeAction :: Action -> Game i ()

-- instance StoreAction 'PreFlop where
--   storeAction action =
--     imodify $ preFlopActions %~ (++) [action]

-- instance StoreAction 'Flop where
--   storeAction action =
--     imodify $ flopActions %~ (++) [action]

-- instance StoreAction 'Turn where
--   storeAction action =
--     imodify $ turnActions %~ (++) [action]

-- instance StoreAction 'River where
--   storeAction action =
--     imodify $ riverActions %~ (++) [action]

-- executeAction :: StoreAction a => Action -> Game a ()
-- executeAction action = do
--   checkValidAction action
--   storeAction action
--   where
--     checkValidAction :: Action -> Game a ()
--     checkValidAction action = do
--       playerToAct <- _playerTurn <$> iget
--       case (position action == playerToAct) of
--         False -> ilift . except $ Left GeneralError
--         True -> return ()


-- initialiseDealer :: Game 'Initial ()
-- initialiseDealer = imodify deal
--   where
--     deal state = let randGen = _generator state
--                      deck' = shuffle' listCard 52 randGen
--                  in state{_dealer=deck'}

-- -- TODO may want to clarify types and data constructors with '
-- initialiseGen :: StdGen -> Game 'Initial ()
-- initialiseGen gen = do
--   state <- iget
--   iput state{_generator=gen}

-- getNumPlayers :: Game a Int
-- getNumPlayers = return . length . _seats =<<< iget

-- sitPlayer :: Player -> Game 'Initial ()
-- sitPlayer player = do
--   state <- iget
--   let seats = _seats state
--   let availablePositions = filter (not . flip Map.member seats) listPosition
--   case availablePositions of
--     -- TODO make this a fallible function
--     [] -> error "Couldn't sit player - need to use ExceptT"
--     (p:_) -> do
--       let seats' = Map.insert p player seats
--       iput state{_seats=seats'}

-- dealHands :: Game 'Initial ()
-- dealHands = do
--   state <- iget
--   let seats = Map.toList $ _seats state
--   let dealer = _dealer state
--   let (seats', dealer') = dealGo seats dealer
--   iput state{_seats=Map.fromList seats', _dealer=dealer'}

-- testPlayer :: Player
-- testPlayer = Player
--              { _name = Just "santi"
--              , _seat = 1
--              , _live = True
--              , _holding =  Nothing
--              , _moneyInvested = 10
--              , _stack = Just 25
--              }

-- dealGo :: [(Position, Player)] -> [Card] -> ([(Position, Player)], [Card])
-- dealGo [] dealer = ([], dealer)
-- dealGo ((pos, seat):ss) (c1:c2:cs) =
--   let (restSeats, dealer') = dealGo ss cs
--     in ((pos, seat{_holding=Just $ Holdem c1 c2}) : restSeats, dealer')
-- dealGo a b = error $ "wtf lol" ++ show a ++ show b ++ "end"

-- dealCards :: Int -> Game a [Card]
-- dealCards n = do
--   dealer <- _dealer <$> iget
--   let (cards, dealer') = splitAt n $ dealer
--   imodify (\s -> s{_dealer=dealer'})
--   return cards

-- dealRiver :: Transition 'Turn 'River ()
-- dealRiver = do
--   river <- head <$> dealCards 1
--   imodify (board %~ RiverBoard river)

-- dealTurn :: Transition Flop Turn ()
-- dealTurn = do
--   state <- iget
--   let restBoard = _board state
--   let (turn', dealer') = splitAt 1 $ _dealer state
--   iput state{_board=TurnBoard (head turn') restBoard, _dealer=dealer'}

-- dealFlop :: Transition PreFlop Flop ()
-- dealFlop = do
--   flop <- dealCards 3
--   imodify (board %~ FlopBoard (toTuple3 flop))
--   where
--     toTuple3 [a,b,c] = (a, b, c)
--     toTuple3 _ = error "Tried to tuplify a none-flop board"

-- initTable :: Transition Initial PreFlop ()
-- initTable = do
--   initialiseDealer
--   sitPlayer testPlayer
--   dealHands
--   imodify (board %~ PreFlopBoard)

-- findPots :: GameState a -> Pot
-- findPots state =
--   let       stacksInfo = filterLive . map playerToInfo . Map.elems . _seats $ state
--             orderedStackInfo = sortOn fst stacksInfo
--   in (Pot <$> head <*> tail) $ go orderedStackInfo
--   where
--     playerToInfo = ((,,) <$> _live <*> _moneyInvested <*> _stack)
--     -- filterLive pulls out the live players
--     filterLive = catMaybes . map
--                  (\case (True, i, Just stack) -> Just (i, (== 0) stack)
--                         (False, i, Just stack) -> Just (i, False)
--                         _ -> Nothing)

--     reduceBySidePot ((i,s):xs) sidePot = let (total, rest) = reduceBySidePot xs sidePot
--                                                in (total + sidePot, (i-sidePot,s):rest)
--     reduceBySidePot [] _ = (0, [])
--     go :: [(Double, Bool)] -> [Double]
--     go ls@((i,False):xs) = [foldl (\a b -> a + fst b) 0 ls]
--     go ((i,True):xs) = let (total, xs') = reduceBySidePot xs i
--                        in total + i : go xs'

-- testGame :: Transition Initial PreFlop ()
-- testGame = do
--   initialiseDealer
--   sitPlayer testPlayer
--   sitPlayer testPlayer{_name=Just "not santi"}
--   dealHands
--   imodify (board %~ PreFlopBoard)

-- testMain = do
--   initialiseGen $ unsafePerformIO newStdGen
--   initTable
