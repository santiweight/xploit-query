{-# LANGUAGE TupleSections #-}
{-# LANGUAGE ViewPatterns #-}
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
  , getAvailableActions
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
import qualified Data.Map                      as M
import           Data.Maybe                     ( fromJust
                                                , fromMaybe
                                                )
import           Poker.Base
import           Poker.Game.Internal
import Algebra.Lattice.Ordered (Ordered(Ordered))

type BovadaGame t m
  = ( Show t,
  IsBetSize t,
  Ord t
    , Ord (PotSize t)
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
  :: (BovadaGame t m, IsBetSize t)
  => t
  -> m (PotSize t)
decreasePot amount = do
  checkPotSize <- potSize <%= decrease amount
  mErrorAssert (checkPotSize >= empty) NegativePotSize
  return checkPotSize
  where
    decrease :: IsBetSize t => t -> PotSize t -> PotSize t
    decrease betSize (PotSize potSize_) = PotSize $ potSize_ `sub` betSize

-- Increase stack size at a seat position
increaseStack :: (BovadaGame t m, Ord t) => Seat -> t -> Action t -> m ()
increaseStack seat_ amount _ = do
  _ <- getSeatStack seat_
  -- mErrorAssert (playerStack - amount > 0) (NegativePlayerStack badAct)
  seatStackOptic seat_ %= (`sub` amount)

{-
>>> 0 + 0.01 :: Ordered Double
No instance for (Num (Ordered Double)) arising from a use of ‘+’
No instance for (Fractional (Ordered Double))
  arising from the literal ‘0.01’
>>> empty `plus` 2.34 `plus` 12.69 :: Ordered Double
No instance for (Fractional (Ordered Double))
  arising from the literal ‘2.34’
-}
-- Decrease stack size at a seat position
decreaseStack
  :: (BovadaGame t m, MonadState (GameState t) m)
  => Seat
  -> t
  -> Action t
  -> m ()
decreaseStack seat_ amount badAct = do
  playerStack <- getSeatStack seat_
  mErrorAssert (playerStack `sub` amount >= empty) (NegativePlayerStack badAct)
  seatStackOptic seat_ %= (`sub` amount)

getSeatStack :: BovadaGame t m => Int -> m t
getSeatStack seat_ =
  maybeToErrorBundle PlayerNotFound =<< preuse (seatStackOptic seat_)

-- Get the seat number from a position
getSeat :: BovadaGame t m => Position -> Action t-> m Seat
getSeat pos a = do
  maybeToErrorBundle (SeatNotFound pos a) . M.lookup pos . _seatMap =<< get

-- Not a big deal but this implementation of the player queue
-- means that every rotation takes 6 steps since snoc is O(n)
-- Ensures that the position removed from queue is the one in the queue currently
rotateNextActor :: BovadaGame t m => Position -> m ()
rotateNextActor pos = do
  (toAct, rest) <-
    maybeToErrorBundle NoPlayersInQueue . uncons =<< use toActQueue
  mErrorAssert (pos == toAct) $ WrongPlayerActed toAct pos
  toActQueue .= rest ++ [toAct]

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

-- getAvailableActions :: BovadaGame (IxRange Double) m => m [BetAction (IxRange Double)]
-- getAvailableActions = do
--   preuse (toActQueue._head) >>= \case
--     Nothing -> error "getting available actions on a game with no players"
--     Just toActPos -> do
--       seatStack <- getSeatStack =<< getSeat toActPos undefined
--       preuse (activeBet._Just.amountFaced) >>= \case
--         Nothing -> pure [AllIn seatStack, Bet (getPossibleBet seatStack), Check, CheckTimeOut]
--         Just amountFaced -> case amountFaced of
--           AnyRn -> error "how to handle any?"
--           BetweenRn lo hi -> error ""
--   where
--     getPossibleBet :: IxRange Double -> IxRange Double
--     getPossibleBet = \case
--       AnyRn -> AboveRn 0
--       AboveRn _ -> AnyRn
--       BelowRn hi -> BelowRn hi
--       BetweenRn lo hi -> BelowRn hi
--       ExactlyRn ex -> BelowRn ex

getAvailableActions :: BovadaGame (Ordered Double) m => m (Maybe (Position, [BetAction (IxRange (Ordered Double))]))
getAvailableActions = do
  use toActQueue >>= \case
    [] -> pure Nothing
    (toActPos:_) -> do
      seatStack :: Ordered Double <- getSeatStack =<< getSeat toActPos undefined
      streetInv :: Ordered Double <- use $ streetInvestments . at toActPos . non empty
      stake :: Double <- getStake <$> use stateStakes
      preuse (activeBet._Just.amountFaced) >>= \case
        Nothing -> pure $ Just (toActPos, [Check, AllIn $ ExactlyRn seatStack, Bet (BetweenRn (Ordered stake) (seatStack `sub` Ordered 0.01))]) -- [AllIn seatStack, Bet (getPossibleBet seatStack), Check, CheckTimeOut]
        Just ((`sub` streetInv) -> amountFaced) -> pure . Just . (toActPos,) $
          if amountFaced == Ordered 0
            then [Check, Raise (AboveRn (amountFaced `times` Ordered 2)) (BelowRn seatStack)]
            else case seatStack `compare` amountFaced of
                    LT -> [AllIn $ ExactlyRn seatStack, Fold]
                    EQ -> [AllIn $ ExactlyRn seatStack, Fold]
                    GT -> if seatStack <= amountFaced `times` Ordered 2
                          then [AllInRaise (ExactlyRn $ Ordered 0) (ExactlyRn (seatStack `plus` streetInv)), Call $ ExactlyRn amountFaced, Fold]
                          else [Raise (ExactlyRn $ Ordered 0) (BetweenRn (amountFaced `times` Ordered 2) seatStack), AllInRaise (ExactlyRn $ Ordered 0) (ExactlyRn (seatStack `plus` streetInv)), Call $ ExactlyRn amountFaced, Fold]

-- data AvailableNextAction b = AllInOrFold b | FirstToAct { _minBet :: b, _maxBet :: b } | FacingBet { _betSize :: b, minRaise :: b} | CallOrFold { _betSize :: b }

-- Monadic action to execute an Action datatype on the given state
emulateAction
  :: forall t m. (BovadaGame t m, IsBetSize t, Ord t, Ord (PotSize t), MonadState (GameState t) m, IsBetSize t)
  => Action t
  -> m ()
emulateAction a = case a of
  MkPlayerAction (PlayerAction pos actVal _) -> do
    use stateBoard >>= \case
      InitialTable   -> throwBundleError (PlayerActedPreDeal a)
      _              -> pure ()
    seat_ <- getSeat pos a
    betSize <- flip (getBetSize seat_) actVal =<< use (streetInvestments . at pos . non empty)
    increasePot betSize
    when (isAggressive actVal) $ aggressor ?= pos
    processActiveBet actVal
    processInvestment pos betSize
    decreaseStack seat_ betSize a
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
      _              -> do
        streetInvestments . each .= empty
        toActQueue %= sortPostflop
  MkTableAction act -> do
    handleTableAction act
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
  getBetSize :: IsBetSize t => Seat -> t -> BetAction t -> m t
  getBetSize seat_ previousInvestment act = do
    activeBet <- fromMaybe empty <$> preuse (activeBet._Just.amountFaced)
    case act of
      Call amount           -> do
        mErrorAssert (amount == activeBet `sub` previousInvestment) $ CallWrongAmount activeBet a
        pure $ amount -- `sub` previousInvestment
      Raise      _ amountTo -> pure $ amountTo `sub` previousInvestment
      AllInRaise _ amountTo -> pure $ amountTo `sub` previousInvestment
      Bet   amount          -> pure $ amount
      AllIn amount          -> do
        playerStack <- getSeatStack seat_
        mErrorAssert (amount == playerStack) (AllInNotFullStack playerStack a)
        pure amount
      Fold                  -> pure $ empty
      FoldTimeout           -> pure $ empty
      Check                 -> pure $ empty
      CheckTimeOut          -> pure $ empty
      OtherAction           -> pure $ empty
  processInvestment
    :: (IsBetSize t, BovadaGame t m, Eq t) => Position -> t -> m ()
  processInvestment pos betSize =
    streetInvestments . at pos . non empty %= plus betSize
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
    :: (IsBetSize t, Ord t, BovadaGame t m) => TableAction t -> m ()
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
      -- seat_ <- maybeToErrorBundle (SeatNotFound pos a) =<< use (seatMap . at pos)
      -- seatMap %= M.delete pos
      -- playerMap %= M.delete seat_
      -- toActQueue %= List.delete pos
      return ()
    SitDown       -> return ()
    Showdown _ _  -> return ()
    Muck     _ _  -> return ()
    Rejoin        -> return ()
    Return amount -> do
      _     <- decreasePot amount
      seat_ <- getSeat pos a
      increaseStack seat_ amount a
    Result _ -> return () -- TODO
   where
    doPost :: (IsBetSize t, BovadaGame t m) => t -> m ()
    doPost postSize = do
      increasePot postSize
      streetInvestments . at pos ?= postSize
      seat_ <- getSeat pos a
      preuse (activeBet . _Just . amountFaced) >>= \case
        Just amountFaced' | postSize >= amountFaced' ->
          activeBet ?= ActionFaced PostB postSize
        Just _  -> pure ()
        Nothing -> activeBet ?= ActionFaced PostB postSize
      decreaseStack seat_ postSize a

-- toPotSizeRelative :: BovadaGame t m => t -> m t
-- toPotSizeRelative betSize = undefined -- (/ betSize) <$> use potSize

mErrorAssert :: BovadaGame t m => Bool -> GameError t -> m ()
mErrorAssert b e = if b then return () else throwBundleError e

throwBundleError :: BovadaGame t m => GameError t -> m a
throwBundleError e = throwError . GameErrorBundle e =<< get

maybeToErrorBundle :: BovadaGame t m => GameError t -> Maybe a -> m a
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

