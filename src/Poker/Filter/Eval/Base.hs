{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import qualified Data.Map as Map
import Poker.Base (Action, Hand (..))
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Internal
import Poker.Filter.Eval.Types
import Poker.Game.Bovada
import Poker.Range (Range (..))
import Poker.Types (Holding (..), PlayerActionValue (..))
import Prelude hiding (pred)

accQuery :: EvalQuery -> [Action] -> GameState -> [ActionRange]
accQuery st gameState = fmap (_accRanges . snd) . runQuery st gameState

accExpr :: EvalQuery -> [Action] -> GameState -> [ActionRange]
accExpr st gameState = fmap (_accRanges . snd) . runQuery st gameState

evalQuery ::
  EvalQuery ->
  [Action] ->
  GameState ->
  [Either EvalErr ()]
evalQuery st gameState = fmap fst . runQuery st gameState

evalExpr :: Expr -> [Action] -> GameState -> [Either EvalErr QVal]
-- evalExpr expr st gameState = fst $ runExpr expr st gameState
evalExpr expr ps state = fmap fst $ runExpr expr ps state

runQuery ::
  EvalQuery ->
  [Action] ->
  GameState ->
  [(Either EvalErr (), EvalState)]
runQuery query state gameState = execSem compileQuery query state gameState

runExpr ::
  Expr ->
  [Action] ->
  GameState ->
  [(Either EvalErr QVal, EvalState)]
runExpr expr state gameState = execSem compileExpr expr state gameState

handToEvalState :: Hand -> ([Action], GameState)
handToEvalState = (,) <$> _handActions <*> handToState

runQueryOnHands :: [Hand] -> EvalQuery -> Range Holding [PlayerActionValue]
runQueryOnHands hands query =
  Range
    . foldl (Map.unionWith (++)) Map.empty
    . fmap pick
    . map (uncurry $ accQuery query)
    $ handToEvalState <$> hands
  where
    pick [] = Map.empty
    pick (x:_) = x
