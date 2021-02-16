{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import qualified Data.Map                      as Map
import           Poker.Base                     (Stake(..), listPosition, sortPreflop, Board(InitialTable), BetAction(..), Hand(..), Holding, Hand,  Action, Stake)
import           Poker.Filter.Eval.AST.Base     ( Expr
                                                , QVal
                                                )
import           Poker.Filter.Eval.Internal     ( GameConstraints
                                                , SemTypes
                                                , compileExpr
                                                , runQuerySem
                                                )
import           Poker.Filter.Eval.Types        (EvalQuery,  EvalErr )
import           Poker.Game.Types               (EvalState(..)
                                                , GameErrorBundle
                                                , GameState
                                                )
import           Prelude                 hiding ( pred )
import Data.Map (Map)
import qualified Poker.Filter.Eval.Internal as I
import Data.Bifunctor (Bifunctor(second))
import Poker.Game.Bovada (GameState(..), IsBetSize(..))
import Poker.Types.Game (PotSize(PotSize))
import Algebra.Lattice.Ordered (Ordered(Ordered))
import Poker.Base (mkBetSize)

deriving instance Num a => Num (Ordered a)
runExpr
  :: GameConstraints g
  => Expr g
  -> [Action g]
  -> GameState g
  -> [ Either
         (GameErrorBundle g)
         (Either EvalErr (QVal g (SemTypes g)), EvalState g)
     ]
runExpr expr actions gameState =
  flip runQuerySem (EvalState actions Map.empty gameState) . compileExpr $ expr

runQuery :: (GameConstraints g, Eq g) => EvalQuery g -> Hand g -> [Either (Either (GameErrorBundle g) EvalErr) (Map String (Map Holding [BetAction g]))]
runQuery query hand@Hand {_handActions} =
    -- filter (filterEmpty.snd)
    fmap flattenErrors
    . filter filterEmpty
    . (fmap . fmap) (second _accRanges)
    . flip I.runQuerySem (EvalState _handActions Map.empty gameState)
    $ I.compileQuery query
  where
    filterEmpty (Right (Right (), m)) = Map.empty /= m
    filterEmpty _ = True
    gameState = handToState hand
    -- flattenErrors :: Either e1 (Either e2 a) -> Either (Either e1 e2) a
    -- flattenErrors (Left e) = Left $ Left e
    -- flattenErrors (Right (Left e)) = Left $ Right e
    -- flattenErrors (Right (Right a)) = Right a
    flattenErrors :: Either e1 (Either e2 (), a) -> Either (Either e1 e2) a
    flattenErrors (Left e) = Left $ Left e
    flattenErrors (Right (Left e, _)) = Left $ Right e
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
                                  , _toActQueue = sortPreflop listPosition
                                  , _stateHandText       = _handText
                                  , _streetInvestments   = Map.empty
                                  , _activeBet           = Nothing
                                  }
