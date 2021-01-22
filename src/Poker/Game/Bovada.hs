{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Poker.Game.Bovada
  ( BovadaGame
  , GameError(..)
  , GameErrorBundle(..)
  , GameState(..)
  , IsBetSize(..)
  , module Poker.Game.Types
  , increasePot
  , decreasePot
  , increaseStack
  , decreaseStack
  , getSeat
  , rotateNextActor
  , removeNextActor
  , emulateAction
  , addDealToState
  , mErrorAssert
  , throwBundleError
  , maybeToErrorBundle
  , seatStackOptic
  , testBovadaGame
  , execBovadaGame
  , evalBovadaGame
  , defState
  , toPotSizeRelative
  , numActivePlayers
  , getPlayer
  )
where

import           Poker.Game.Types
import           Control.Lens            hiding ( Fold )
import           Control.Monad.Except           ( ExceptT
                                                , MonadError
                                                , runExceptT
                                                , throwError
                                                )
import           Control.Monad.Reader
import           Control.Monad.State.Lazy
import qualified Data.List                     as List
import qualified Data.Map                      as M
import           Data.Maybe                     ( fromJust
                                                , fromMaybe
                                                )
import           Poker.Base
import           Poker.Game.Internal
import Poker.Types.IsBetSize

type BovadaGame t m
  = ( IsBetSize t,
  Ord t
    , Num t
    , Ord (PotSize t)
    , Num (PotSize t)
    , MonadState (GameState t) m
    , MonadError (GameErrorBundle t) m
    )

increasePot
  :: (MonadState (GameState t) m, IsBetSize t) => t -> m ()
increasePot amount = potSize %= increase amount
  where
    increase :: IsBetSize t => t -> PotSize t -> PotSize t
    increase betSize (PotSize potSize_) = PotSize $ potSize_ `plus` betSize

getPlayer :: MonadReader (GameState t) m => Position -> m (Maybe (Player t))
getPlayer pos_ = do
  seatNumMay <- view (seatMap . at pos_)
  case seatNumMay of
    Just seatNum -> view (playerMap . at seatNum)
    Nothing      -> return Nothing

-- Reduce state pot size
decreasePot
  :: (BovadaGame t m, Num (PotSize t), Ord (PotSize t), IsBetSize t)
  => t
  -> m (PotSize t)
decreasePot amount = do
  checkPotSize <- potSize <%= decrease amount
  mErrorAssert (checkPotSize >= 0) NegativePotSize
  return checkPotSize
  where
    decrease :: IsBetSize t => t -> PotSize t -> PotSize t
    decrease betSize (PotSize potSize_) = PotSize $ potSize_ `sub` betSize

-- Increase stack size at a seat position
increaseStack :: (BovadaGame t m, Num t, Ord t) => Seat -> t -> m ()
increaseStack seat_ amount = do
  playerStack <- getSeatStack seat_
  mErrorAssert (playerStack - amount > 0) NegativePlayerStack
  seatStackOptic seat_ -= amount

-- Decrease stack size at a seat position
decreaseStack
  :: (BovadaGame t m, MonadState (GameState t) m, Ord t, Num t)
  => Seat
  -> t
  -> m ()
decreaseStack seat_ amount = do
  playerStack <- getSeatStack seat_
  mErrorAssert (playerStack - amount >= 0) NegativePlayerStack
  seatStackOptic seat_ -= amount

getSeatStack :: BovadaGame t m => Int -> m t
getSeatStack seat_ =
  maybeToErrorBundle PlayerNotFound =<< preuse (seatStackOptic seat_)

-- Get the seat number from a position
getSeat :: BovadaGame t m => Position -> m Seat
getSeat pos =
  maybeToErrorBundle (SeatNotFound pos) . M.lookup pos . _seatMap =<< get

-- Not a big deal but this implementation of the player queue
-- means that every rotation takes 6 steps since snoc is O(n)
-- Ensures that the position removed from queue is the one in the queue currently
rotateNextActor :: BovadaGame t m => Position -> m ()
rotateNextActor pos = do
  (toAct, rest) <-
    maybeToErrorBundle NoPlayersInQueue . uncons =<< use toActQueue
  mErrorAssert (pos == toAct) $ WrongPlayerActed toAct pos
  toActQueue .= snoc rest toAct

-- Ensures that the next actor is the one acting
-- Removes the next actor instead of put it at the back of the queue
removeNextActor :: BovadaGame t m => Position -> m ()
removeNextActor pos = do
  (toAct, rest) <-
    maybeToErrorBundle NoPlayersInQueue . uncons =<< use toActQueue
  mErrorAssert (pos == toAct) $ WrongPlayerActed toAct pos
  toActQueue .= rest

numActivePlayers :: BovadaGame t m => m Int
numActivePlayers = length <$> use toActQueue

{- BovadaGame Actions -}

-- Monadic action to alter state board with a deal action
addDealToState :: BovadaGame t m => DealerAction -> m ()
addDealToState deal = do
  board <- use stateBoard
  case addDealToBoard deal board of
    Nothing     -> throwBundleError $ IncorrectDeal deal board
    Just board' -> stateBoard .= board'
 where
    -- Take a deal data type and return a board
    -- Returns Nothing if the Deal is illegal
  addDealToBoard :: DealerAction -> Board -> Maybe Board
  addDealToBoard PlayerDeal board@InitialTable = Just $ PreFlopBoard board
  addDealToBoard (FlopDeal cs) board@(PreFlopBoard _) =
    Just $ FlopBoard cs board
  addDealToBoard (TurnDeal card) board@(FlopBoard _ _) =
    Just $ TurnBoard card board
  addDealToBoard (RiverDeal card) board@(TurnBoard _ _) =
    Just $ RiverBoard card board
  addDealToBoard _ _ = Nothing

-- Monadic action to execute an Action datatype on the given state
emulateAction
  :: (BovadaGame t m, IsBetSize t, Ord t, Num (PotSize t), Ord (PotSize t), Num t, MonadState (GameState t) m, IsBetSize t)
  => Action t
  -> m ()
emulateAction a = case a of
  MkPlayerAction (PlayerAction pos actVal _) -> do
    betSize <- flip getBetSize actVal . fromJust <$> preuse
      (streetInvestments . at pos . non empty)
    increasePot betSize
    seat_ <- getSeat pos
    when (isAggressive actVal) $ aggressor ?= pos
    processActiveBet actVal
    processInvestment pos betSize
    decreaseStack seat_ betSize
    doRotateNextActor pos actVal
  MkDealerAction deal -> do
    addDealToState deal
    saveAggressor
    case deal of
      PlayerDeal -> pure ()
      _          -> activeBet .= Nothing
    use stateBoard >>= \case
      InitialTable   -> toActQueue %= sortPreflop
      PreFlopBoard _ -> toActQueue %= sortPreflop
      _              -> toActQueue %= sortPostflop
  MkTableAction act -> handleTableAction act
 where
  saveAggressor :: BovadaGame t m => m ()
  saveAggressor = (lastStreetAggressor .=) =<< aggressor <<.= Nothing
  isAggressive :: BetAction t -> Bool
  isAggressive = \case
    Call _         -> False
    Raise      _ _ -> True
    AllInRaise _ _ -> True
    Bet   _        -> True
    AllIn _        -> False
    Fold           -> False
    FoldTimeout    -> False
    Check          -> False
    CheckTimeOut   -> False
    OtherAction    -> False
  getBetSize :: Num t => t -> BetAction t -> t
  getBetSize previousInvestment = \case
    Call amount           -> amount
    Raise      _ amountTo -> amountTo - previousInvestment
    AllInRaise _ amountTo -> amountTo - previousInvestment
    Bet   amount          -> amount
    AllIn amount          -> amount
    Fold                  -> 0
    FoldTimeout           -> 0
    Check                 -> 0
    CheckTimeOut          -> 0
    OtherAction           -> 0
  processInvestment
    :: (IsBetSize t, BovadaGame t m, Num t, Eq t) => Position -> t -> m ()
  processInvestment pos betSize =
    streetInvestments . at pos . non empty += betSize
  doRotateNextActor :: BovadaGame t m => Position -> BetAction t -> m ()
  doRotateNextActor pos =
    let doRemove = removeNextActor pos
        doRotate = rotateNextActor pos
    in  \case
          Call _         -> doRotate
          Raise      _ _ -> doRotate
          AllInRaise _ _ -> doRemove
          Bet   _        -> doRotate
          AllIn _        -> doRemove
          Fold           -> doRemove
          FoldTimeout    -> doRemove
          Check          -> doRotate
          CheckTimeOut   -> doRotate
          OtherAction    -> pure () -- TODO
  processActiveBet :: (IsBetSize t, Ord t, BovadaGame t m) => BetAction t -> m ()
  processActiveBet = \case
    Call _                -> pure ()
    Raise      _ amountTo -> incActiveBet amountTo
    AllInRaise _ amountTo -> incActiveBet amountTo
    Bet   amount          -> incActiveBet amount
    AllIn amount          -> do
      faced <- fromMaybe empty <$> preuse (activeBet . _Just . amountFaced)
      if amount > faced then incActiveBet amount else pure ()
    Fold         -> pure ()
    FoldTimeout  -> pure ()
    Check        -> pure ()
    CheckTimeOut -> pure ()
    OtherAction  -> pure ()
  incActiveBet :: BovadaGame t m => t -> m ()
  incActiveBet newFacedAmount = use activeBet >>= \case
    Nothing -> activeBet ?= ActionFaced OneB newFacedAmount
    Just (ActionFaced bType _) ->
      activeBet ?= ActionFaced (succ bType) newFacedAmount
  handleTableAction
    :: (IsBetSize t, Ord t, Num t, BovadaGame t m) => TableAction t -> m ()
  handleTableAction UnknownAction         = pure () -- FIXME
  handleTableAction (TableAction pos val) = case val of
    Deposit  _        -> return () -- TODO may need to increase stack size
    Post     postSize -> doPost postSize
    PostDead postSize -> doPost postSize
    Enter             -> return () -- Not sure what this should be
    Leave ->
      -- seat <- maybeToErrorBundle (SeatNotFound pos)
      --         =<< use (seatMap . at pos)
      -- seatMap %= M.delete pos
      -- playerMap %= M.delete seat
      -- toActQueue %= List.delete pos
      return ()
    SitOut -> do
      seat_ <- maybeToErrorBundle (SeatNotFound pos) =<< use (seatMap . at pos)
      seatMap %= M.delete pos
      playerMap %= M.delete seat_
      toActQueue %= List.delete pos
      return ()
    SitDown       -> return ()
    Showdown _ _  -> return ()
    Muck     _ _  -> return ()
    Rejoin        -> return ()
    Return amount -> do
      _     <- decreasePot amount
      seat_ <- getSeat pos
      increaseStack seat_ amount
    Result _ -> return () -- TODO
   where
    doPost :: (IsBetSize t, BovadaGame t m, Ord t, Num t) => t -> m ()
    doPost postSize = do
      increasePot postSize
      seat_ <- getSeat pos
      preuse (activeBet . _Just . amountFaced) >>= \case
        Just amountFaced' | postSize >= amountFaced' ->
          activeBet ?= ActionFaced PostB postSize
        Just _  -> pure ()
        Nothing -> activeBet ?= ActionFaced PostB postSize
      decreaseStack seat_ postSize

toPotSizeRelative :: BovadaGame t m => t -> m t
toPotSizeRelative betSize = undefined -- (/ betSize) <$> use potSize

mErrorAssert :: BovadaGame t m => Bool -> GameError -> m ()
mErrorAssert b e = if b then return () else throwBundleError e

throwBundleError :: BovadaGame t m => GameError -> m a
throwBundleError e = throwError . GameErrorBundle e =<< get

maybeToErrorBundle :: BovadaGame t m => GameError -> Maybe a -> m a
maybeToErrorBundle e mb = case mb of
  Just a  -> return a
  Nothing -> do
    errState <- get
    throwError $ GameErrorBundle e errState

-- Traversal Optic to access seat's stack from player map
-- Goes through lookup's Just
seatStackOptic :: Int -> Traversal' (GameState t) t
seatStackOptic seat_ = playerMap . at seat_ . _Just . stack

{- Testing and Printing methods -}

execBovadaGame :: StateT s (ExceptT e Identity) a -> s -> Either e s
execBovadaGame m = runIdentity . runExceptT . execStateT m

evalBovadaGame :: StateT s (ExceptT e Identity) a -> s -> Either e a
evalBovadaGame m = runIdentity . runExceptT . evalStateT m

-- testBovadaGame
--   :: MonadIO m  =>
--      StateT GameState (ExceptT e m) a -> GameState -> m (Either e String)
testBovadaGame
  :: Show t
  => StateT (GameState t) (ExceptT (GameErrorBundle t) IO) a
  -> GameState t
  -> IO ()
testBovadaGame actionM inputState = do
  res <- runExceptT (runStateT actionM inputState)
  case res of
    Left e -> do
      putStrLn "Game Failed"
      prettyPrint e
    Right (_, state') -> do
      putStrLn "*** Game completed without error ***"
      prettyPrint state'
      putStr $ view stateHandText state'

