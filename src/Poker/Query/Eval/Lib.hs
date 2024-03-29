{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
module Poker.Query.Eval.Lib
  ( queryEnv,
    open,
    iso,
    fiOpp,
    Predicate(..)
  )
where

import Control.Applicative (many, some, Alternative (empty))
import Control.Monad (guard, mfilter, liftM2)
import qualified Control.Lens as L
import Data.Bifunctor (first)
import Data.Foldable (fold)
import qualified Data.Map as Map
import Poker
import Poker.Query.Eval.AST.Base
import qualified Poker.Query.Eval.Query as Q
import Poker.Query.Eval.Types
import Poker.Game.Types
import Polysemy
import Polysemy.NonDet
import Polysemy.State
import Poker.Query.ActionIx

view :: forall s r a. MemberWithError (State s) r => L.Getting a s a -> Sem r a
view l = L.getConst <$> gets (l L.Const)

queryEnv :: forall g r. (Members '[Q.Query g, NonDet, State (EvalState g)] r, IsBet g) => EvalEnv g r
queryEnv = fold [litsEnv, combinatorsEnv, stdLib, infixEnv]

open :: forall g r. (Members '[Q.Query g, NonDet] r, IsBet g) => Position -> Sem r (PlayerAction g)
open pos =
  many (mfilter (inIndex FoldIx . _action) (Q.next @g @r))
    *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction g -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx anyRn) . _action) <*> predicate pos

getActiveBet :: forall r g. Member (State (EvalState g)) r => Sem r (Maybe (ActionFaced g, BetType))
getActiveBet = do
  liftM2 (,) (view $ handState.activeBet) (view @(EvalState g) @r activeBetType) >>= \case
                        (Just activeBet', Just activeBetTy) -> pure $ Just (activeBet', activeBetTy)
                        (Nothing, Nothing) -> pure Nothing
                        _ -> error "Oh noes, an oopsie: activeBet and activeBetType are out of sync :("

limp :: forall g r. (Members '[State (EvalState g), NonDet, Q.Query g] r, IsBet g) => Position -> Sem r (PlayerAction g)
limp pos = do
  street' <- view @(EvalState g) $ handState.street
  guard $ case street' of {PreFlopBoard _ -> True; _ -> False}
  getActiveBet @_ @g >>= (\case
     Nothing -> empty
     Just (_, bt) -> do
            guard (bt == OneB)
            mfilter isCallAtPosition (Q.next @g @r))

  where
    isCallAtPosition :: PlayerAction g -> Bool
    isCallAtPosition = (&&) <$> (inIndex CallIx . _action) <*> predicate pos

foldQ :: forall g r. (Members '[Q.Query g, NonDet] r, IsBet g) => Sem r (PlayerAction g)
foldQ = mfilter (inIndex FoldIx . _action) (Q.next @g @r)

iso :: forall g r. (Members '[Q.Query g, NonDet] r, IsBet g) => Sem r (PlayerAction g)
iso =
  many (mfilter (inIndex FoldIx . _action) (Q.next @g @r))
    *> mfilter (inIndex (RaiseIx AnyRn) . _action) (Q.next @g @r)

fiOpp :: forall g r. (Members '[Q.Query g, NonDet] r, IsBet g) => Position -> Sem r (PlayerAction g)
fiOpp pos =
  many (mfilter (inIndex FoldIx . _action) (Q.next @g @r))
    *> mfilter (predicate pos) Q.next

threeBet :: forall g r. (Members '[State (EvalState g), Q.Query g, NonDet] r, IsBet g) => Position -> Sem r (PlayerAction g)
threeBet pos = do
  getActiveBet @_ @g >>= (\case
     Nothing -> empty
     Just (_, bt) -> do
          guard (bt == TwoB)
          mfilter isRaiseAtPosition (Q.next @g @r))
  where
    isRaiseAtPosition :: IsBet g => PlayerAction g -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . _action) <*> predicate pos

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

combinatorsEnv :: forall g r. (Members '[Q.Query g, NonDet] r, IsBet g) => EvalEnv g r
combinatorsEnv =
  Map.fromList . fmap (first V) $
    [ ("next", Val (SQuery SAction) (Q.next @g @r)),
      ("fold", Val (SQuery SAction) (foldQ @g @r)),
      ("acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) (Q.accumulate @g @r)),
      ("many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
      ("some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some)
    ]

stdLib :: forall g r. (Members '[State (EvalState g), Q.Query g, NonDet] r, IsBet g) => EvalEnv g r
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
      FlopDeal {} -> True
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

-- | A class for those values that can be converted to a predicate
-- on player actions.
class Predicate g a where
  predicate :: a -> (PlayerAction g -> Bool)

instance Predicate g Position where
  predicate pos (PlayerAction po _) = pos == po

instance Predicate g (PlayerAction g -> Bool) where
  predicate = id

instance (IsBet g, Ord g) => Predicate g (ActionIx g) where
  predicate ix (PlayerAction _ ba) = inIndex ix ba

-- instance Predicate g IsHero where
--   pred ih = (ih ==) . isHero
