module Poker.Filter.Eval.Types where

import Data.Map (Map)
import Poker.Filter.Eval.AST.Base (Anned_, ExprF, Anned, Annotation, Expr, QVal, StmtF, Var, Prog)
import GHC.Generics
import Data.Set (Set)

type EvalEnv = Map Var QVal

type EvalQuery = Anned_ (Prog (Anned_ (StmtF (Anned_ Var) (Anned ExprF))))

data EvalErr
  = EnvLookupErr Var Annotation
  | TypeMismatchDuringEval String
  | FailErr String
  | EvalErr
  deriving (Show, Eq, Ord, Generic)
