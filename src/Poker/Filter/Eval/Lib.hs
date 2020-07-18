module Poker.Filter.Eval.Lib
  ( queryEnv,
    open,
    iso,
    fiOpp,
  )
where

import Control.Applicative (many, some)
import Control.Monad (guard, mfilter)
import Control.Monad.Reader (ask)
import Control.Lens.Combinators (lengthOf, to, use, view)
import Control.Lens hiding (iso)
import Control.Lens.Getter ((^.))
import Data.Bifunctor (first)
import Data.Foldable (fold)
import qualified Data.Map as Map
import Data.Function ((&))
import Data.Functor ((<&>))
import Poker.Base
import Poker.Filter.Eval.AST.Base
import qualified Poker.Filter.Eval.Query as Q
import Poker.Filter.Eval.Types
import Poker.Game.Types
import Debug.Trace (traceM)

queryEnv :: EvalEnv
queryEnv = fold [litsEnv, combinatorsEnv, stdLib, infixEnv]

open :: Position -> Q.Query PlayerAction
open pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter isRaiseAtPosition Q.next
  where
    isRaiseAtPosition :: PlayerAction -> Bool
    isRaiseAtPosition = (&&) <$> (inIndex (RaiseIx AnyRn) . action) <*> atPosition pos

limp :: Position -> Q.Query PlayerAction
limp pos = do
  currentAction <- view activeBet
  guard ((currentAction ^? _Just.betType) == Just PostB)
  mfilter isCallAtPosition Q.next
  where
    isCallAtPosition :: PlayerAction -> Bool
    isCallAtPosition = (&&) <$> (inIndex CallIx . action) <*> atPosition pos

iso :: Q.Query PlayerAction
iso =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter (inIndex (RaiseIx AnyRn) . action) Q.next

fiOpp :: Position -> Q.Query PlayerAction
fiOpp pos =
  many (mfilter (inIndex FoldIx . action) Q.next)
    *> mfilter (atPosition pos) Q.next

-- threeBet :: Position -> Q.Query PlayerAction
-- threeBet pos = do
--   many (mfilter (inIndex FoldIx . action)) Q.next
--   next <- mfilter (atPosition pos) Q.next


litsEnv :: EvalEnv
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

combinatorsEnv :: EvalEnv
combinatorsEnv =
  Map.fromList . fmap (first V) $
    [ ("next", Val (SQuery SAction) Q.next),
      ("acc", Val (SString `SFun` (SAction `SFun` SQuery SUnit)) Q.accumulate),
      ("many", Val (SQuery SAction `SFun` SQuery (SList SAction)) many),
      ("some", Val (SQuery SAction `SFun` SQuery (SList SAction)) some)
    ]

stdLib :: EvalEnv
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
    ]
  where
    headsup :: Q.Query ()
    headsup = do
      numActivePlayers <- view (toActQueue.to length)
      guard (2 == numActivePlayers)

    flop :: Q.Query DealerAction
    flop = mfilter isFlop Q.nextDeal
    turn :: Q.Query DealerAction
    turn = mfilter isTurn Q.nextDeal
    river :: Q.Query DealerAction
    river = mfilter isRiver Q.nextDeal
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

infixEnv :: EvalEnv
infixEnv =
  Map.fromList . fmap (first V) $
    [ ("&&", Val (SBool `SFun` (SBool `SFun` SBool)) (&&))
    ]
