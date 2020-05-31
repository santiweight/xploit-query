module Poker.Filter.Eval.Lib
  ( queryEnv,
  open,
  openOpp
  )
where

import Control.Applicative (many, some)
import Control.Monad (mfilter)
import qualified Data.Map as Map
import Poker.Base
import Poker.Filter.AST.AST
import Poker.Filter.AST.Types
import qualified Poker.Filter.Eval.Query as Q
import Poker.Filter.Eval.Types

queryEnv :: EvalEnv
-- queryEnv = Map.fromList [(Var "next", Val ((SAction `SFun` SPoly) `SFun` SPoly) Next)]
queryEnv =
  Map.fromList
    [ (V "next", Val (SQuery SAction) Q.next),
      (V "acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) Q.accumulate),
      (V "many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
      (V "some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some),
      (V "open", Val (SPosition `SFun` SQuery SAction) open),
      (V "openOpp", Val (SPosition `SFun` SQuery SAction) openOpp),
      (V "&&", Val (SBool `SFun` (SBool `SFun` SBool)) (&&))
    ]

open :: Position -> Q.Query PlayerAction
open pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action) <*> (atPosition pos)

openOpp :: Position -> Q.Query PlayerAction
openOpp pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter ((pos ==) . position) Q.next
