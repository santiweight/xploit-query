{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Query.Eval.Base where

import           Algebra.Lattice.Ordered        ( Ordered(Ordered) )
import           Control.Applicative            ( empty )
import           Data.Bifunctor                 ( Bifunctor(second) )
import qualified Data.Map                      as Map
import           Data.Map                       ( Map )
import           Data.Maybe                     ( fromJust, mapMaybe )
import           Debug.Trace                    ( traceShow )
import           Poker
import           Poker.Game.Types
import           Poker.History.Types
import qualified Poker.History.Types           as Bovada
import           Poker.Query.ActionIx
import           Poker.Query.Eval.AST.Base      ( Expr
                                                , QVal
                                                )
import           Poker.Query.Eval.Internal      ( GameConstraints
                                                , SemTypes
                                                , compileExpr
                                                , runQuerySem
                                                )
import qualified Poker.Query.Eval.Internal     as I
import           Poker.Query.Eval.Query         ( accumulate
                                                , next
                                                )
import           Poker.Query.Eval.Types         ( EvalEnv
                                                , EvalErr
                                                , EvalQuery
                                                )
import           Polysemy                       ( Sem )
import           Polysemy.State                 ( State )
import           Prelude                 hiding ( pred )
import Poker.Game.Normalise (normaliseBovadaAction)
import Prettyprinter (Pretty)

deriving instance Num a => Num (Ordered a)

toEvalState :: IsBet b => History Bovada b -> EvalState b
toEvalState hand = EvalState (mapMaybe normaliseBovadaAction $ _handActions hand) Map.empty (handToState hand)

runExpr
  :: GameConstraints b
  => Expr b
  -> History Bovada b
  -> [ Either
         (GameErrorBundle b)
         (Either EvalErr (QVal b (SemTypes b)), EvalState b)
     ]
runExpr expr hand = flip runQuerySem (toEvalState hand) . compileExpr $ expr

runIxBetsAsQuery
  :: forall b
   . (IsBet b, Show b, Pretty b)
  => History Bovada b
  -> [(Position, BetAction (IxRange b))]
  -> [ Either
         (Either (GameErrorBundle b) EvalErr)
         (Map String (Map Hand [BetAction b]))
     ]
runIxBetsAsQuery hand =
  fmap flattenErrors
    . filter filterEmpty
    . (fmap . fmap) (second _accRanges)
    . runSem (toEvalState hand)
    . compileBetsToSem @b

runSem
  :: (IsBet b, Pretty b, Show b)
  => EvalState b
  -> Sem (State (EvalEnv b (SemTypes b)) : SemTypes b) a
  -> [Either (GameErrorBundle b) (Either EvalErr a, EvalState b)]
runSem = flip runQuerySem

compileBetsToSem
  :: forall b
   . (IsBet b, Show b)
  => [(Position, BetAction (IxRange b))]
  -> Sem (State (EvalEnv b (SemTypes b)) : SemTypes b) ()
compileBetsToSem []                     = pure ()
compileBetsToSem [(pos, _)            ] = accumulate @b (show pos) =<< next
compileBetsToSem ((ixPos, ixAct) : ixs) = do
  playerAct@(PlayerAction pos act) <- next @b
  if doesBetMatch ixAct act && pos == ixPos
    then accumulate @b (show pos) playerAct >> compileBetsToSem ixs
    else traceShow playerAct empty

doesBetMatch :: IsBet b => BetAction (IxRange b) -> BetAction b -> Bool
doesBetMatch (Call ix        ) (Call amt        ) = amt `within` ix
doesBetMatch (Raise      _ ix) (Raise      _ amt) = amt `within` ix
doesBetMatch (AllInRaise _ ix) (AllInRaise _ amt) = amt `within` ix
doesBetMatch (Bet   ix       ) (Bet   amt       ) = amt `within` ix
doesBetMatch (AllIn ix       ) (AllIn amt       ) = amt `within` ix
doesBetMatch Fold              Fold               = True
doesBetMatch Check             Check              = True
doesBetMatch _                 _                  = False


runQuery
  :: (GameConstraints b, Eq b)
  => EvalQuery b
  -> History Bovada b
  -> [ Either
         (Either (GameErrorBundle b) EvalErr)
         (Map String (Map Hand [BetAction b]))
     ]
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

handToState :: IsBet b => History Bovada b -> GameState b
handToState History {..} = GameState
  { _stateStakes       = _handStakes
  , _aggressor         = Nothing
  , _posToPlayer       =
    Map.fromList
    . fmap
        (\(se, pl) ->
          (se, normalisePlayer . fromJust $ Map.lookup pl _handPlayerMap)
        )
    . Map.assocs
    $ _handSeatMap
  , _potSize           = Pot mempty
  , _street            = InitialTable
  , _toActQueue        = sortPreflop undefined -- listPosition
  , _streetInvestments = Map.empty
  , _activeBet         = Nothing
  }

normalisePlayer :: Poker.History.Types.Player b -> Poker.Game.Types.Player b
normalisePlayer (Bovada.Player m_ha b) =
  Poker.Game.Types.Player { _playerHolding = fromJust m_ha, _stack = Stack b }
  -- TODO make non-partial
  -- TODO make model use stack