module Poker.Filter.Eval.Lib
  ( queryEnv,
  open,
  iso,
  fiOpp
  )
where

import Control.Applicative (many, some)
import Control.Monad (mfilter)
import qualified Data.Map as Map
import Data.Bifunctor (first)
import Data.Foldable (fold)
import Poker.Base
import Poker.Filter.AST.AST
import Poker.Filter.AST.Types
import qualified Poker.Filter.Eval.Query as Q
import Poker.Filter.Eval.Types

queryEnv :: EvalEnv
queryEnv = fold [litsEnv, combinatorsEnv, stdLib, infixEnv]

open :: Position -> Q.Query PlayerAction
open pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action) <*> (atPosition pos)

limp :: Position -> Q.Query PlayerAction
limp pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter isCallAtPosition Q.next
  where
    isCallAtPosition :: PlayerAction -> Bool
    isCallAtPosition = (&&) <$> (inIndex CallIx . action) <*> (atPosition pos)

iso :: Q.Query PlayerAction
iso =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter (inIndex (RaiseIx AnyRn) . action) Q.next

fiOpp :: Position -> Q.Query PlayerAction
fiOpp pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter (atPosition pos) Q.next

litsEnv :: EvalEnv
litsEnv =
  Map.fromList . fmap (first V) $
    [
      ("UTG", Val SPosition UTG),
      ("UTG1", Val SPosition UTG1),
      ("UTG2", Val SPosition UTG2),
      ("BU", Val SPosition BU),
      ("SB", Val SPosition SB),
      ("BB", Val SPosition BB)
    ] ++
    [
      ("Fold", Val SIx FoldIx ),
      ("AnyRaise", Val SIx $ RaiseIx AnyRn),
      ("Raise", Val (SIxRn `SFun` SIx) RaiseIx )
    ] ++
    [
      ("hero", Val SIsHero Hero),
      ("villain", Val SIsHero Villain)
    ]

combinatorsEnv :: EvalEnv
combinatorsEnv =
  Map.fromList . fmap (first V) $
  [
    ("next", Val (SQuery SAction) Q.next),
    ("acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) Q.accumulate),
    ("many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
    ("some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some)
  ]

stdLib :: EvalEnv
stdLib =
  Map.fromList . fmap (first V) $
    [
      ("open", Val (SPosition `SFun` SQuery SAction) open),
      ("limp", Val (SPosition `SFun` SQuery SAction) limp),
      ("fiOpp", Val (SPosition `SFun` SQuery SAction) fiOpp),
      ("iso", Val (SQuery SAction) iso)
    ]

infixEnv :: EvalEnv
infixEnv =
  Map.fromList . fmap (first V) $
  [
    ("&&", Val (SBool `SFun` (SBool `SFun` SBool)) (&&))
  ]