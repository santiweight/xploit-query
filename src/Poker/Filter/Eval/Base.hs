{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Poker.Filter.Eval.Base where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Bifunctor (second)
import Poker.Base
    ( Holding, Action, BetAction, Hand(Hand, _handActions) )
import Poker.Game.Types
    ( handToState, EvalState(_accRanges), GameErrorBundle, GameState )
import Poker.Filter.Eval.AST.Base ( QVal, Expr )
import Poker.Filter.Eval.Internal ( execSem, compileExpr )
import qualified Poker.Filter.Eval.Internal as I
import Poker.Filter.Eval.Types ( EvalErr, EvalQuery )
import Prelude hiding (pred)
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Lens.Operators ((%~))
import Control.Lens ((&), _Right, _Left)
import Control.Lens.Operators ((%%~))
import GHC.Generics

data QueryError =
  HandLogicError GameErrorBundle
  | EvalError EvalErr
  deriving (Show, Eq, Ord, Generic)

data QueryResult = QueryResult {
    errors :: Set QueryError
    , result :: Map String (Map Holding [BetAction])
  }
  deriving (Show, Eq, Ord, Generic)

instance Monoid QueryResult where
  mempty = QueryResult Set.empty Map.empty

instance Semigroup QueryResult where
  (QueryResult e1 r1) <> (QueryResult e2 r2) = QueryResult (e1 `Set.union` e2) (Map.unionWith unionRanges r1 r2)
    where
      unionRanges :: Ord k => Map k [a] -> Map k [a] -> Map k [a]
      unionRanges m1 m2 = Map.unionWith (++) m1 m2

runExpr ::
  Expr ->
  [Action] ->
  GameState ->
  [Either GameErrorBundle (Either EvalErr QVal, EvalState)]
runExpr = execSem compileExpr


runQuery :: EvalQuery -> Hand -> QueryResult
runQuery query hand@Hand {_handActions} =
    -- filter (filterEmpty.snd)
    collectToResult
    . fmap flattenErrors
    . filter filterEmpty
    . (fmap . fmap) (second _accRanges)
    . I.runQuery query _handActions
    $ state
  where
    filterEmpty (Right (Right (), m)) = Map.empty /= m
    filterEmpty _ = True
    state = handToState hand
    flattenErrors :: Either e1 (Either e2 (), a) -> Either (Either e1 e2) a
    flattenErrors (Left e) = Left $ Left e
    flattenErrors (Right (Left e, _)) = Left $ Right e
    flattenErrors (Right (Right (), res)) = Right res
    collectToResult :: [(Either (Either GameErrorBundle EvalErr) (Map String (Map Holding [BetAction])))] -> QueryResult
    collectToResult results =
      let results' :: Either QueryError (Map String (Map Holding [BetAction])) = results
                   & maybe (Right Map.empty) id . safeHead
                   & _Left %~ either HandLogicError EvalError
      in results'
       & either
         (flip QueryResult Map.empty . Set.singleton)
         (QueryResult Set.empty)
        where safeHead [] = Nothing
              safeHead (x : _) = Just x
