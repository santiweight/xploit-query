{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import Poker.Base (PlayerAction (..))
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Types
import Poker.Filter.Eval.Internal
import Poker.Game.Bovada
import Prelude hiding (pred)

accQuery :: EvalQuery -> [PlayerAction] -> GameState -> [ActionRange]
accQuery st gameState = fmap (snd . snd) . runQuery st gameState

accExpr :: EvalQuery -> [PlayerAction] -> GameState -> [ActionRange]
accExpr st gameState = fmap (snd . snd) . runQuery st gameState

evalQuery ::
  EvalQuery ->
  [PlayerAction] ->
  GameState ->
  [Either EvalErr ()]
evalQuery st gameState = fmap fst . runQuery st gameState

evalExpr :: Expr -> [PlayerAction] -> GameState -> [Either EvalErr QVal]
-- evalExpr expr st gameState = fst $ runExpr expr st gameState
evalExpr expr ps state = fmap fst $ runExpr expr ps state

runQuery ::
  EvalQuery ->
  [PlayerAction] ->
  GameState ->
  [(Either EvalErr (), ([PlayerAction], ActionRange))]
runQuery query state gameState = execSem compileQuery query state gameState

runExpr ::
  Expr ->
  [PlayerAction] ->
  GameState ->
  [(Either EvalErr QVal, ([PlayerAction], ActionRange))]
runExpr expr state gameState = execSem compileExpr expr state gameState
