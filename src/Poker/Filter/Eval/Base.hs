{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import qualified Data.Map                      as Map
import           Poker.Base                     ( listPosition
                                                , sortPreflop
                                                , Board(InitialTable)
                                                , BetAction(..)
                                                , Hand(..)
                                                , Holding
                                                , Hand
                                                , mkBetSize
                                                , Position
                                                , PlayerAction(PlayerAction)
                                                , BetSize
                                                , Stake(Stake)
                                                )
import           Poker.Filter.Eval.AST.Base     ( Expr
                                                , QVal
                                                )
import           Poker.Filter.Eval.Internal     ( GameConstraints
                                                , SemTypes
                                                , compileExpr
                                                , runQuerySem
                                                )
import           Poker.Filter.Eval.Types        ( EvalQuery
                                                , EvalErr
                                                , EvalEnv
                                                )
import           Poker.Game.Types               ( EvalState(..)
                                                , GameErrorBundle
                                                , GameState
                                                )
import           Prelude                 hiding ( pred )
import           Data.Map                       ( Map )
import qualified Poker.Filter.Eval.Internal    as I
import           Data.Bifunctor                 ( Bifunctor(second) )
import           Poker.Game.Bovada              ( GameState(..)
                                                , IsBetSize(..)
                                                )
import           Poker.Types.Game               ( PotSize(PotSize) )
import           Algebra.Lattice.Ordered        ( Ordered(Ordered) )
import           Polysemy                       ( Sem )
import           Polysemy.State                 ( State )
import           Poker.Types                    ( IxRange )
import           Poker.Filter.Eval.Query        ( next
                                                , accumulate
                                                )
import           Control.Applicative            ( empty )
import Debug.Trace (traceShow)

deriving instance Num a => Num (Ordered a)

toEvalState :: IsBetSize b => Hand b -> EvalState b
toEvalState hand = EvalState (_handActions hand) Map.empty (handToState hand)

runExpr
  :: GameConstraints b
  => Expr b
  -> Hand b
  -> [Either (GameErrorBundle b) (Either EvalErr (QVal b (SemTypes b)), EvalState b)]
runExpr expr hand = flip runQuerySem (toEvalState hand) . compileExpr $ expr

runIxBetsAsQuery
  :: forall b
   . (IsBetSize b, Show b)
  => Hand b
  -> [(Position, BetAction (IxRange BetSize))]
  -> [Either (Either (GameErrorBundle b) EvalErr ) (Map String (Map Holding [BetAction b]))]
runIxBetsAsQuery hand =
  fmap flattenErrors
    . filter filterEmpty
    . (fmap . fmap) (second _accRanges)
     . runSem (toEvalState hand) . compileBetsToSem @b

runSem
  :: (IsBetSize b, Show b)
  => EvalState b
  -> Sem (State (EvalEnv b (SemTypes b)) : SemTypes b) a
  -> [Either (GameErrorBundle b) (Either EvalErr a, EvalState b)]
runSem = flip runQuerySem

compileBetsToSem
  :: forall b
   . (IsBetSize b, Show b)
  => [(Position, BetAction (IxRange BetSize))]
  -> Sem (State (EvalEnv b (SemTypes b)) : SemTypes b) ()
compileBetsToSem []                     = pure ()
compileBetsToSem [(pos, _)]                     = accumulate @b (show pos) =<< next
compileBetsToSem ((ixPos, ixAct) : ixs) = do
  playerAct@(PlayerAction pos act _) <- next @b
  if doesBetMatch ixAct act && pos == ixPos
    then accumulate @b (show pos) playerAct >> compileBetsToSem ixs
    else traceShow playerAct empty

doesBetMatch :: IsBetSize b => BetAction (IxRange BetSize) -> BetAction b -> Bool
doesBetMatch (Call ix        ) (Call amt        ) = amt `within` ix
doesBetMatch (Raise      _ ix) (Raise      _ amt) = amt `within` ix
doesBetMatch (AllInRaise _ ix) (AllInRaise _ amt) = amt `within` ix
doesBetMatch (Bet   ix       ) (Bet   amt       ) = amt `within` ix
doesBetMatch (AllIn ix       ) (AllIn amt       ) = amt `within` ix
doesBetMatch Fold              Fold               = True
doesBetMatch FoldTimeout       FoldTimeout        = True
doesBetMatch Check             Check              = True
doesBetMatch CheckTimeOut      CheckTimeOut       = True
doesBetMatch OtherAction       OtherAction        = True
doesBetMatch _                 _                  = False


runQuery
  :: (GameConstraints b, Eq b)
  => EvalQuery b
  -> Hand b
  -> [Either (Either (GameErrorBundle b) EvalErr) (Map String (Map Holding [BetAction b]))]
runQuery query hand =
    -- filter (filterEmpty.snd)
  fmap flattenErrors
    . filter filterEmpty
    . (fmap . fmap) (second _accRanges)
    . flip I.runQuerySem (toEvalState hand)
    $ I.compileQuery query
 where
filterEmpty (Right (Right (), m)) = True -- Map.empty /= m
filterEmpty _                     = True
  -- flattenErrors :: Either e1 (Either e2 a) -> Either (Either e1 e2) a
  -- flattenErrors (Left e) = Left $ Left e
  -- flattenErrors (Right (Left e)) = Left $ Right e
  -- flattenErrors (Right (Right a)) = Right a

flattenErrors :: Either e1 (Either e2 (), a) -> Either (Either e1 e2) a
flattenErrors (Left  e              ) = Left $ Left e
flattenErrors (Right (Left  e , _  )) = Left $ Right e
flattenErrors (Right (Right (), res)) = Right res

handToState :: IsBetSize b => Hand b -> GameState b
handToState Hand {..} = GameState { _gameID              = _handID
                                  , _stateNetwork        = _handNetwork
                                  , _stateStakes         = Stake $ mkBetSize _handStakes
                                  , _pastActions         = []
                                  , _futureActions       = _handActions
                                  , _aggressor           = Nothing
                                  , _lastStreetAggressor = Nothing
                                  , _playerMap           = _handPlayerMap
                                  , _seatMap             = _handSeatMap
                                  , _potSize             = PotSize 0
                                  , _stateBoard          = InitialTable
                                  , _toActQueue          = sortPreflop listPosition
                                  , _stateHandText       = _handText
                                  , _streetInvestments   = Map.empty
                                  , _activeBet           = Nothing
                                  }
