module Eval where

import Control.Monad.Reader
import Control.Applicative ((<|>))
import Data.Maybe
import qualified Data.Map as M
import Debug.Trace
import Poker.Base
import Poker.Filter.AST.AST
import Poker.Filter.Eval.Eval
import Poker.Filter.Eval.Lib
import Poker.Filter.AST.Types
import Poker.Game.Bovada
import Poker.Game.Internal
import Poker.Types
import Test.QuickCheck.Assertions
import Test.QuickCheck.Property as P
import Test.Tasty.HUnit
import Test.Tasty.Hspec
import Test.Tasty.QuickCheck

(&) = flip ($)

prop_nextGetsFirstAction :: [PlayerAction] -> Bool
prop_nextGetsFirstAction ps =
  --collect result $
  case ps of [] -> null result; (p : ps) -> checkResult p result
  where
    result = evalQuery (Query [Bind (V "res") (var "next")] $ var "res") ps testState
    checkResult :: PlayerAction -> [Either e QVal] -> Bool
    checkResult p resAction = case resAction of
      [Right (Val SAction resAction)] -> p == resAction
      _ -> False

prop_multipleNexts :: [PlayerAction] -> Property
prop_multipleNexts ps = do
    (length ps > 0 ==>) $
        let reps = length ps
            checkNothing = null $ evalQuery (query $ reps + 1) ps testState
            checkNexts = case evalQuery (query reps) ps testState of
                [Right (Val SAction resAction)] -> last ps == resAction
                _ -> False
        in checkNothing && checkNexts
    where
        query :: Int -> EvalQuery
        query reps = Query (replicate reps $ Bind (V "res") (var "next")) $ var "res"

prop_isPosition :: PlayerAction -> Position -> Bool
prop_isPosition act pos =
  let query = Query [Bind (V "res") (Var "next"), Where (App (Is $ Lit $ PosL pos) (var "res"))]
   in if position act == pos
        then case evalQuery query [act] testState of
          [Right (Val SAction resAction)] -> act == resAction
          _ -> False
        else null $ evalQuery query [act] testState

prop_isActionTy :: PlayerAction -> ActionIx -> Bool
prop_isActionTy act ix =
  let query = Query [Bind (V "res") (Var "next"), Where (App (Is $ Lit $ IxL ix) (var "res"))] (var "res")
   in if inIndex ix $ action act
        then case evalQuery query [act] testState of
          [Right (Val SAction resAction)] -> act == resAction
          _ -> False
        else null $ evalQuery query [act] testState

prop_anyActionInAnyIx :: PlayerAction -> Bool
prop_anyActionInAnyIx pact =
  case evalExpr (App (Is $ Lit $IxL AnyIx) (Fix $ PRE $ Val SAction pact)) [] testState of
    [Right (Val SBool res)] -> res
    _ -> False

prop_testAcc :: [PlayerAction] -> Result
prop_testAcc = \case
  [] -> binAsrt "accumulated a value from an empty state" $ ([] ==) $ accQuery query [] testState
  ps -> case accQuery query ps testState of
    res -> let actHolding = fromJust . _playerHolding . fromJust $ runReader (getPlayer . position $ head ps) testState
      in res ?== [M.singleton actHolding [action $ head ps]]
  where
    query = Query [Bind (V "res") (Var "next"), Raw $ App (App (var "acc") (Lit $ StringL "")) (var "res")] (var "res")

unit_testOpen :: IO ()
unit_testOpen = print $
                  runStatefulQuery (getPActions . _futureActions $ testState, M.empty) testState
                      (openOpp UTG)

getPActions :: [Action] -> [PlayerAction]
getPActions [] = []
getPActions (a:as) = case a of
  MkPlayerAction act -> act : getPActions as
  _ -> getPActions as

testState :: GameState
testState = GameState { _gameID = 1
                      , _stateNetwork = Bovada
                      , _stateStakes = Stake 0.25
                      , _futureActions = [ mkTestAction UTG (Raise 0.5 0.5)
                                         , mkTestAction UTG1 (Fold)
                                         ]
                      , _pastActions = []
                      , _playerMap = M.fromList $
                                     [ (1, mkTestPlayer UTG "AsAc" 1)
                                     , (2, mkTestPlayer UTG1 "2s2c" 2)
                                     , (3, mkTestPlayer UTG2 "3s3c" 3)
                                     , (4, mkTestPlayer BU "4s4c" 4)
                                     , (5, mkTestPlayer SB "5s5c" 5)
                                     , (6, mkTestPlayer BB "6s6c" 6)
                                     ]
                      , _seatMap = M.fromList $
                                   [ (UTG, 1)
                                   , (UTG1, 2)
                                   , (UTG2, 3)
                                   , (BU, 4)
                                   , (SB, 5)
                                   , (BB, 6)
                                   ]
                      , _potSize = 0
                      , _stateBoard = InitialTable
                      , _toActQueue = [ UTG
                                      , UTG1
                                      , UTG2
                                      , BU
                                      , SB
                                      , BB
                                      ]
                      , _stateHandText = ""
                      }
