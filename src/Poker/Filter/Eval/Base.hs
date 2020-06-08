{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import Poker.Base (PlayerAction (..), Action)
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Types
import Poker.Filter.Eval.Internal
import Poker.Game.Bovada
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

