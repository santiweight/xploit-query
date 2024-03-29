{-# LANGUAGE CPP #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Query.Eval.Base where

import Algebra.Lattice.Ordered (Ordered (Ordered))
import Control.Applicative (empty)
import Data.Bifunctor (Bifunctor (second))
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust, listToMaybe, mapMaybe)
import Debug.Trace (traceShow)
import Poker
import Poker.Game.Normalise
import Poker.Game.Types
import Poker.History.Bovada.Model hiding (Player, PlayerAction)
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
    nextDeal,
  )
import Poker.Query.Eval.Types
  ( EvalErr,
    EvalQuery,
  )
import Prettyprinter
import Prelude hiding (pred)

deriving instance Num a => Num (Ordered a)

toEvalState :: IsBet b => History b -> EvalState b
toEvalState hand = EvalState (mapMaybe normalise $ _handActions hand) Map.empty (normalise hand) holdingsMap Nothing
  where
    holdingsMap = Map.mapMaybe (_holding . fromJust . (`Map.lookup` _handPlayerMap hand)) $ _handSeatMap hand

runExpr ::
  GameConstraints b =>
  Expr b ->
  History b ->
  [ Either
      (GameError b)
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
      (Either (GameError b) EvalErr)
      (Map String (Map Hole [BetAction b]))
  ]
runIxBetsAsQuery hand =
  fmap flattenErrors
    . (fmap . fmap) (second _accRanges)
    . runSem (toEvalState hand)
    . ((nextDeal @b :: TreeQuery b Poker.Game.Types.DealerAction) >>)
    . compileBetsToSem @b

runSem ::
  (IsBet b, Pretty b, Show b) =>
  EvalState b ->
  TreeQuery b a ->
  [Either (GameError b) (Either EvalErr a, EvalState b)]
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
      (Either (GameError b) EvalErr)
      (Map String (Map Hole [BetAction b]))
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