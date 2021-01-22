{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
module Poker.Filter.Eval.Lib
  ( queryEnv,
    open,
    iso,
    fiOpp,
  )
where

import Control.Applicative (many, some)
import Control.Monad (guard, mfilter)
import qualified Control.Lens as L
import Data.Bifunctor (first)
import Data.Foldable (fold)
import qualified Data.Map as Map
import Poker.Base
import Poker.Filter.Eval.AST.Base
import qualified Poker.Filter.Eval.Query as Q
import Poker.Filter.Eval.Types
import Poker.Game.Types
import Polysemy
import Polysemy.NonDet
import Polysemy.State
import Poker.Game.Bovada (IsBetSize)

view :: MemberWithError (State s) r => L.Getting a s a -> Sem r a
view l = L.getConst <$> gets (l L.Const)

queryEnv :: forall g r. (Members '[Q.Query g, NonDet, State (EvalState g)] r, IsBetSize g) => EvalEnv g r
queryEnv = fold [litsEnv, combinatorsEnv, stdLib, infixEnv]

open :: forall g r. (Members '[Q.Query g, NonDet] r, IsBetSize g) => Position -> Sem r (PlayerAction g)
open pos =
  many (mfilter (inIndex FoldIx . action) (Q.next @g @r))
    *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction g -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action) <*> atPosition pos

limp :: forall g r. (Members '[State (EvalState g), NonDet, Q.Query g] r, IsBetSize g) => Position -> Sem r (PlayerAction g)
limp pos = do
  currentAction <- view @(EvalState g) @r (handState.activeBet)
  guard ((currentAction L.^? L._Just.betType) == Just PostB)
  mfilter isCallAtPosition (Q.next @g @r)
  where
    isCallAtPosition :: PlayerAction g -> Bool
    isCallAtPosition = (&&) <$> (inIndex CallIx . action) <*> atPosition pos

foldQ :: forall g r. (Members '[Q.Query g, NonDet] r, IsBetSize g) => Sem r (PlayerAction g)
foldQ = mfilter (inIndex FoldIx . action) (Q.next @g @r)

iso :: forall g r. (Members '[Q.Query g, NonDet] r, IsBetSize g) => Sem r (PlayerAction g)
iso =
  many (mfilter (inIndex FoldIx . action) (Q.next @g @r))
    *> mfilter (inIndex (RaiseIx AnyRn) . action) (Q.next @g @r)

fiOpp :: forall g r. (Members '[Q.Query g, NonDet] r, IsBetSize g) => Position -> Sem r (PlayerAction g)
fiOpp pos =
  many (mfilter (inIndex FoldIx . action) (Q.next @g @r))
    *> mfilter (atPosition pos) Q.next

threeBet :: forall g r. (Members '[State (EvalState g), Q.Query g, NonDet] r, IsBetSize g) => Position -> Sem r (PlayerAction g)
threeBet pos = do
  currentAction <- view @(EvalState g) @r (handState.activeBet)
  guard ((currentAction L.^? L._Just.betType) == Just OneB)
  mfilter isRaiseAtPosition (Q.next @g @r)
  where
    isRaiseAtPosition :: IsBetSize g => PlayerAction g -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action) <*> atPosition pos

litsEnv :: forall g r. EvalEnv g r
litsEnv =
  Map.fromList . fmap (first V) $
    [ ("UTG", Val SPosition UTG),
      ("UTG1", Val SPosition UTG1),
      ("UTG2", Val SPosition UTG2),
      ("BU", Val SPosition BU),
      ("SB", Val SPosition SB),
      ("BB", Val SPosition BB)
    ]
      ++ [ ("Fold", Val SIx FoldIx),
           ("AnyRaise", Val SIx $ RaiseIx AnyRn),
           ("Raise", Val (SIxRn `SFun` SIx) RaiseIx)
         ]
      ++ [ ("hero", Val SIsHero Hero),
           ("villain", Val SIsHero Villain)
         , ("false", Val SBool False)
         , ("true", Val SBool True)
         ]

combinatorsEnv :: forall g r. (Members '[Q.Query g, NonDet] r, IsBetSize g) => EvalEnv g r
combinatorsEnv =
  Map.fromList . fmap (first V) $
    [ ("next", Val (SQuery SAction) (Q.next @g @r)),
      ("fold", Val (SQuery SAction) (foldQ @g @r)),
      ("acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) (Q.accumulate @g @r)),
      ("many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
      ("some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some)
    ]

stdLib :: forall g r. (Members '[State (EvalState g), Q.Query g, NonDet] r, IsBetSize g) => EvalEnv g r
stdLib =
  Map.fromList . fmap (first V) $
    [ ("open", Val (SPosition `SFun` SQuery SAction) open)
    , ("limp", Val (SPosition `SFun` SQuery SAction) limp)
    , ("fiOpp", Val (SPosition `SFun` SQuery SAction) fiOpp)
    , ("iso", Val (SQuery SAction) iso)
    , ("flop", Val (SQuery SDealAction) flop)
    , ("turn", Val (SQuery SDealAction) turn)
    , ("river", Val (SQuery SDealAction) river)
    , ("headsup", Val (SQuery SUnit) headsup)
    , ("threeBet", Val (SPosition `SFun` SQuery SAction) threeBet)
    ]
  where
    -- headsup :: forall g r. Members '[Q.Query g, NonDet] r => Sem r ()
    headsup = do
      numActivePlayers <- view @(EvalState g) @r (handState.toActQueue.L.to length)
      guard (2 == numActivePlayers)
    -- flop :: forall g r. Members '[NonDet, Q.Query g] r => Sem r DealerAction
    flop = mfilter isFlop (Q.nextDeal @g @r)
    -- turn :: forall g r. Members '[NonDet, Q.Query g] r => Sem r DealerAction
    turn = mfilter isTurn (Q.nextDeal @g @r)
    -- river :: forall g r. Members '[Q.Query g, NonDet] r => Sem r DealerAction
    river = mfilter isRiver (Q.nextDeal @g @r)
    isFlop :: DealerAction -> Bool
    isFlop = \case
      FlopDeal _ -> True
      _ -> False
    isTurn :: DealerAction -> Bool
    isTurn = \case
      TurnDeal _ -> True
      _ -> False
    isRiver :: DealerAction -> Bool
    isRiver = \case
      RiverDeal _ -> True
      _ -> False

infixEnv :: EvalEnv g r
infixEnv =
  Map.fromList . fmap (first V) $
    [ ("&&", Val (SBool `SFun` (SBool `SFun` SBool)) (&&))
    ]
