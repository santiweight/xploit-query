{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import Data.Map (Map)
import "poker-base" Poker.Base
import Poker.Filter.Eval.AST.Base
import Poker.Filter.Eval.Internal hiding (runQuery)
import qualified Poker.Filter.Eval.Internal as I
import Poker.Filter.Eval.Types
import Prelude hiding (pred)

runExpr ::
  Expr ->
  [Action] ->
  GameState ->
  [Either GameErrorBundle (Either EvalErr QVal, EvalState)]
runExpr = execSem compileExpr

runQuery :: EvalQuery -> Hand -> Maybe (Either GameErrorBundle (Map String (Map Holding [BetAction])))
runQuery query hand@Hand {_handActions} =
  (fmap . fmap) (_accRanges . snd)
    . pick
    . I.runQuery query _handActions
    $ state
  where
    pick [] = Nothing
    pick (x : _) = Just x
    state = handToState hand
    flattenErrors :: Either e1 (Either e2 a) -> Either (Either e1 e2) a
    flattenErrors (Left e) = Left $ Left e
    flattenErrors (Right (Left e)) = Left $ Right e
    flattenErrors (Right (Right a)) = Right a
