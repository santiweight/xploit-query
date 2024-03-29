module Poker.Query.Eval.Types where

import Data.Map (Map)
import Poker.Query.Eval.AST.Base (Expr, QVal, StmtF, Var, Prog)

type EvalEnv g r = Map Var (QVal g r)

type EvalQuery g = Prog (StmtF Var (Expr g))

data EvalErr
  = EnvLookupErr Var
  | TypeMismatchDuringEval String
  | FailErr String
  | EvalErr
  deriving (Show, Eq)
