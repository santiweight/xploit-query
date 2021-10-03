{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE CPP #-}

module Poker.Query.Eval.Base where

import Algebra.Lattice.Ordered (Ordered (Ordered))
import Control.Applicative (empty)
import Data.Bifunctor (Bifunctor (second))
import Data.Map (Map)
import qualified Data.Map as Map
#if MIN_VERSION_prettyprinter(1,7,0)
import Prettyprinter
#else
import Data.Text.Prettyprint.Doc (Pretty)
#endif
import Debug.Trace (traceShow)
import Poker
import Poker.Game.Normalise
import Poker.Game.Types
import Poker.History.Bovada.Model hiding (Player, PlayerAction)
import qualified Poker.History.Bovada.Model as Bov
import Poker.Query.ActionIx
import Poker.Query.Eval.AST.Base
  ( Expr,
    QVal,
  )
import Poker.Query.Eval.Internal
  ( GameConstraints,
    SemTypes,
    TreeQuery,
    compileExpr,
    runQuerySem,
  )
import qualified Poker.Query.Eval.Internal as I
import Poker.Query.Eval.Query
  ( accumulate,
    next,
  )
import Poker.Query.Eval.Types
  ( EvalErr,
    EvalQuery,
  )
import Prelude hiding (pred)
import Data.Maybe (listToMaybe, fromJust, mapMaybe)

deriving instance Num a => Num (Ordered a)

toEvalState :: IsBet b => History b -> EvalState b
toEvalState hand = EvalState (mapMaybe normalise $ _handActions hand) Map.empty (handToState hand)

runExpr ::
  GameConstraints b =>
  Expr b ->
  History b ->
  [ Either
      (GameErrorBundle b)
      (Either EvalErr (QVal b (SemTypes b)), EvalState b)
  ]
runExpr expr hand = flip runQuerySem (toEvalState hand) . compileExpr $ expr

runQueryToState ::
  forall b a.
  (Pretty b, IsBet b) =>
  History b ->
  TreeQuery b a ->
  Maybe (EvalState b)
runQueryToState hand query =
  listToMaybe . fmap (snd . either (error . ("bad game: " <>) . show) id) $ runSem @b (toEvalState hand) query

runIxBetsAsQuery ::
  forall b.
  (IsBet b, Show b, Pretty b) =>
  History b ->
  [(Position, BetAction (IxRange b))] ->
  [ Either
      (Either (GameErrorBundle b) EvalErr)
      (Map String (Map Hand [BetAction b]))
  ]
runIxBetsAsQuery hand =
  fmap flattenErrors
    . (fmap . fmap) (second _accRanges)
    . runSem (toEvalState hand)
    . compileBetsToSem @b

runSem ::
  (IsBet b, Pretty b, Show b) =>
  EvalState b ->
  TreeQuery b a ->
  [Either (GameErrorBundle b) (Either EvalErr a, EvalState b)]
runSem = flip runQuerySem

compileBetsToSem ::
  forall b.
  (IsBet b, Show b) =>
  [(Position, BetAction (IxRange b))] ->
  TreeQuery b ()
compileBetsToSem [] = pure ()
compileBetsToSem [(pos, _)] = accumulate @b (show pos) =<< next
compileBetsToSem ((ixPos, ixAct) : ixs) = do
  playerAct@(PlayerAction pos act) <- next @b
  if doesBetMatch ixAct act && pos == ixPos
    then accumulate @b (show pos) playerAct >> compileBetsToSem ixs
    else traceShow playerAct empty

runQuery ::
  (GameConstraints b, Eq b) =>
  EvalQuery b ->
  History b ->
  [ Either
      (Either (GameErrorBundle b) EvalErr)
      (Map String (Map Hand [BetAction b]))
  ]
runQuery query hand =
  -- filter (filterEmpty.snd)
  fmap (flattenErrors . fmap (second _accRanges))
    . flip I.runQuerySem (toEvalState hand)
    $ I.compileQuery query

flattenErrors :: Either e1 (Either e2 (), a) -> Either (Either e1 e2) a
flattenErrors (Left e) = Left $ Left e
flattenErrors (Right (Left e, _)) = Left $ Right e
flattenErrors (Right (Right (), res)) = Right res

handToState :: IsBet b => History b -> GameState b
handToState History {..} =
  GameState
    { _stateStakes = _handStakes,
      _aggressor = Nothing,
      _posToPlayer =
        Map.fromList
          . fmap
            ( \(se, pl) ->
                (se, normalisePlayer . fromJust $ Map.lookup pl _handPlayerMap)
            )
          . Map.assocs
          $ _handSeatMap,
      _potSize = Pot mempty,
      _street = InitialTable,
      _toActQueue = sortPreflop (Map.keys _handSeatMap), -- listPosition
      _streetInvestments = Map.empty,
      _activeBet = Nothing
    }

normalisePlayer :: Bov.Player b -> Player b
normalisePlayer (Bov.Player m_ha b) =
  Poker.Game.Types.Player {_playerHolding = fromJust m_ha, _stack = Stack b}

-- TODO make non-partial
-- TODO make model use stack
