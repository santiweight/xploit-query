module Poker.Filter.Eval.Types where

import Data.Map (Map)
import "poker-base" Poker.Base (Holding, BetAction)
import Poker.Filter.Eval.AST.Base (Expr, QVal, StmtF, Var, Prog)

type EvalEnv = Map Var QVal

type EvalQuery = Prog (StmtF Var Expr)

data EvalErr
  = EnvLookupErr Var
  | TypeMismatchDuringEval String
  | FailErr String
  | EvalErr
  deriving (Show, Eq)

type ActionRange = Map Holding [BetAction]
