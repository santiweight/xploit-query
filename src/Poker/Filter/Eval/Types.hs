module Poker.Filter.Eval.Types
  ( EvalEnv
  , EvalErr(..)
  , EvalQuery
  )
  where

import Data.Map (Map)

import Poker.Filter.AST.Types
import Poker.Filter.AST.AST

type EvalEnv = Map Var QVal

type EvalQuery = Query (StmtF Var Expr) Expr

data EvalErr
  = EnvLookupErr Var
  | TypeMismatchDuringEval String
  | EvalErr
  deriving (Show, Eq)
