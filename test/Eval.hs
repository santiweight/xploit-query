module Eval where

import Data.Maybe
import Debug.Trace
import Poker.Base
import Poker.Filter.AST
import Poker.Filter.Eval
import Poker.Filter.Types
import Test.QuickCheck.Assertions
import Test.QuickCheck.Property as P
import Test.Tasty.HUnit
import Test.Tasty.Hspec
import Test.Tasty.QuickCheck

(&) = flip ($)

prop_nextGetsFirstAction :: [PlayerAction] -> Bool
prop_nextGetsFirstAction ps =
  --collect result $
  case ps of [] -> isNothing result; (p : ps) -> checkResult p result
  where
    result = evalQuery (Query [Bind (V "res") (var "next")] $ var "res") ps
    checkResult :: PlayerAction -> Maybe (Either e QVal) -> Bool
    checkResult p resAction = case resAction of
      Just (Right (Val SAction resAction)) -> p == resAction
      _ -> False

prop_multipleNexts :: [PlayerAction] -> Property
prop_multipleNexts ps = do
    (length ps > 0 ==>) $
        let reps = length ps
            checkNothing = isNothing $ evalQuery (query $ reps + 1) ps
            checkNexts = case evalQuery (query reps) ps of
                Just (Right (Val SAction resAction)) -> last ps == resAction
                _ -> False
        in checkNothing && checkNexts
    where
        query :: Int -> EvalQuery
        query reps = Query (replicate reps $ Bind (V "res") (var "next")) $ var "res"

prop_isPosition :: PlayerAction -> Position -> Bool
prop_isPosition act pos =
  let query = Query [Bind (V "res") (Var "next"), Where (App (Is $ Lit $ PosL pos) (var "res"))] (var "res")
   in if position act == pos
        then case evalQuery query [act] of
          Just (Right (Val SAction resAction)) -> act == resAction
          _ -> False
        else isNothing $ evalQuery query [act]

prop_isActionTy :: PlayerAction -> ActionIx -> Bool
prop_isActionTy act ix =
  let query = Query [Bind (V "res") (Var "next"), Where (App (Is $ Lit $ IxL ix) (var "res"))] (var "res")
   in if inIndex ix $ action act
        then case evalQuery query [act] of
          Just (Right (Val SAction resAction)) -> act == resAction
          _ -> False
        else isNothing $ evalQuery query [act]

prop_anyActionInAnyIx :: PlayerAction -> Bool
prop_anyActionInAnyIx pact =
  case evalExpr (App (Is $ Lit $IxL AnyIx) (Fix $ PRE $ Val SAction pact)) [] of
    Just (Right (Val SBool res)) -> res
    _ -> False

prop_testAcc :: [PlayerAction] -> Result
prop_testAcc = \case
  [] -> binAsrt "accumulated a value from an empty state" $ ([] ==) $ accQuery query []
  ps -> case accQuery query ps of
    res -> res ?== [head ps]
  where
    query = Query [Bind (V "res") (Var "next"), Raw $ App (App (var "acc") (Lit $ StringL "")) (var "res")] (var "res")
