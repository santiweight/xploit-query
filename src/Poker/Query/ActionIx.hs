
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE CPP #-}
-- {-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Poker.Query.ActionIx where

import Data.Data ( Data, Typeable )
import GHC.Generics ( Generic )
import Algebra.PartialOrd (PartialOrd(leq))
import Poker
import Data.Functor ((<&>))
import Data.Maybe (fromMaybe)
#if MIN_VERSION_prettyprinter(1,7,0)
import Prettyprinter
import Control.Applicative (Applicative(liftA2))
#else
import Data.Text.Prettyprint.Doc
#endif

data ActionIx b
  -- = MatchesBet (BetAction (IxRange b))
  = AnyIx
  | RaiseIx (IxRange b)
  | AllInIx (IxRange b)
  | BetIx (IxRange b)
  | RaiseOrAllInIx (IxRange b)
  | CheckIx
  | CallIx
  | FoldIx
  | LeaveIx
  deriving (Show, Eq, Functor, Data, Typeable)

type IsBetSize b = (Eq b, Semigroup b, Monoid b)

within :: Ord a => a -> IxRange a -> Bool
within = inRange

data IxRange a = AnyRn | BetweenRn a a | AboveRn a | BelowRn a | ExactlyRn a
-- TODO try to find a way to make this Ord instance safe!
  deriving (Show, Eq, Data, Typeable, Generic, Functor, Ord)

instance Pretty a => Pretty (IxRange a) where
  pretty val = viaShow $ pretty <$> val

instance (Ord a, Num a) => PartialOrd (IxRange a) where
  (ExactlyRn l) `leq` AnyRn = l == 0
  (BelowRn l) `leq` AnyRn = l == 0
  (AboveRn _) `leq` AnyRn = False
  (BetweenRn _ l) `leq` AnyRn = l == 0
  AnyRn `leq` _ = False
  (ExactlyRn l) `leq` (ExactlyRn r) = l <= r
  (ExactlyRn l) `leq` (BetweenRn r _) = l <= r
  (ExactlyRn l) `leq` (BelowRn _) = l == 0
  (ExactlyRn l) `leq` (AboveRn r) = l <= r
  (BelowRn l) `leq` (ExactlyRn r) = l <= r
  (BelowRn l) `leq` (BetweenRn r _) = l <= r
  (BelowRn l) `leq` (BelowRn _) = l == 0
  (BelowRn l) `leq` (AboveRn r) = l <= r
  (BetweenRn _ l) `leq` (ExactlyRn r) = l <= r
  (BetweenRn _ l) `leq` (BetweenRn r _) = l <= r
  (BetweenRn _ l) `leq` (BelowRn _) = l == 0
  (BetweenRn _ l) `leq` (AboveRn r) = l <= r
  (AboveRn l) `leq` (ExactlyRn r) = l <= r
  (AboveRn l) `leq` (BetweenRn r _) = l <= r
  (AboveRn _) `leq` (BelowRn _) = False
  (AboveRn l) `leq` (AboveRn r) = l <= r

exactlyRn :: a -> IxRange a
exactlyRn = ExactlyRn

anyRn :: IxRange a
anyRn = AnyRn

inRange :: Ord a => a -> IxRange a -> Bool
inRange bet (BetweenRn low up) = low <= bet && bet <= up
inRange bet (ExactlyRn amount) = bet == amount
inRange bet (AboveRn low) = low <= bet
inRange bet (BelowRn up) = bet <= up
inRange _ AnyRn = True

-- instance Num a => Num (IxRange a) where
--   (+) = addRange
--   (*) = error "* not implemented for Num (IxRange a)"
--   abs = fmap abs
--   signum = fmap signum
--   fromInteger = ExactlyRn . fromInteger
--   negate = fmap negate

addRange :: Monoid a => IxRange a -> IxRange a -> IxRange a
addRange AnyRn _     = AnyRn
addRange _     AnyRn = AnyRn
addRange (ExactlyRn amount1) (ExactlyRn amount2) = ExactlyRn $ amount1 <> amount2
addRange (ExactlyRn amount) (BetweenRn l u) = BetweenRn (l <> amount) (u <> amount)
addRange (ExactlyRn amount) (BelowRn bel) = BetweenRn amount (bel <> amount)
addRange (ExactlyRn amount) (AboveRn ab) = AboveRn $ amount <> ab
addRange (BetweenRn l u) (ExactlyRn amount) = BetweenRn (l <> amount) (u <> amount)
addRange (BetweenRn l1 u1) (BetweenRn l2 u2) = BetweenRn (l1 <> l2) (u1 <> u2)
addRange (BetweenRn l _) (AboveRn ab) = AboveRn (l <> ab)
addRange (BetweenRn l u) (BelowRn bel) = BetweenRn l (u <> bel)
addRange (BelowRn bel) (ExactlyRn amount) = BetweenRn amount (bel <> amount)
addRange (BelowRn bel) (BetweenRn l u) = BetweenRn l (u <> bel)
addRange (BelowRn _    ) (AboveRn ab) = AboveRn ab
addRange (BelowRn bel1) (BelowRn bel2) = BelowRn $ bel1 <> bel2
addRange (AboveRn ab) (ExactlyRn amount) = AboveRn $ ab <> amount
addRange (AboveRn ab) (BetweenRn l _) = AboveRn (l <> ab)
addRange (AboveRn ab) (BelowRn _    ) = AboveRn ab
addRange (AboveRn ab1) (AboveRn ab2) = AboveRn $ ab1 <> ab2

subRange :: IsBet a => IxRange a -> IxRange a -> Maybe (IxRange a)
subRange AnyRn _     = Just AnyRn
subRange _     AnyRn = Just AnyRn
subRange (ExactlyRn amount1) (ExactlyRn amount2) = ExactlyRn <$> amount1 `minus` amount2
subRange (ExactlyRn amount) (BetweenRn l u) = liftA2 BetweenRn (l `minus` amount) (u `minus` amount)
subRange (ExactlyRn amount) (BelowRn bel) = BetweenRn amount <$> (bel `minus` amount)
subRange (ExactlyRn amount) (AboveRn ab) = AboveRn <$> amount `minus` ab
subRange (BetweenRn l1 u1) (BetweenRn l2 u2) =
  liftA2 BetweenRn (l1 `minus` u2) (u1 `minus` l2)
subRange (BetweenRn l u) (ExactlyRn amount) = liftA2 BetweenRn (l `minus` amount) (u `minus` amount)
subRange (BetweenRn _ u ) (AboveRn ab ) = BelowRn <$> (u `minus` ab)
subRange (BetweenRn l u ) (BelowRn bel ) = BetweenRn l <$> (u `minus` bel)
subRange (BelowRn bel ) (ExactlyRn amount) = BelowRn <$> (bel `minus` amount)
subRange (BelowRn bel ) (BetweenRn l u ) = BetweenRn l <$> (u `minus` bel)
subRange (BelowRn _     ) (AboveRn ab ) = Just $ AboveRn ab
subRange (BelowRn bel1) (BelowRn _     ) = Just $ BelowRn bel1
subRange (AboveRn ab ) (ExactlyRn amount) = AboveRn <$> (ab `minus` amount)
subRange (AboveRn ab ) (BetweenRn l u ) = liftA2 BetweenRn (l `minus` ab) $ pure u
subRange (AboveRn ab ) (BelowRn _     ) = Just $ AboveRn ab
subRange (AboveRn above1) (AboveRn above2) = AboveRn <$> above1 `minus` above2

-- getRelativePotSize :: forall a. (a -> a -> a) -> IxRange a -> IxRange a -> IxRange (Ratio a)
-- getRelativePotSize div (ixRange -> l) (ixRange -> r) = IxRange $ go l r
--   where
--     go :: Range a -> Range a -> Range a
--     go AnyRn _     = AnyRn
--     go _     AnyRn = AnyRn
--     go (ExactlyRn amount1) (ExactlyRn amount2) = ExactlyRn $ amount1 % amount2
--     go (ExactlyRn amount) (BetweenRn l u) = BetweenRn (l - amount) (u - amount)
--     go (ExactlyRn amount) (BelowRn below) = BetweenRn amount (below - amount)
--     go (ExactlyRn amount) (AboveRn above) = AboveRn $ amount - above
--     go (BetweenRn l1 u1) (BetweenRn l2 u2) =
--       BetweenRn (l1 - u2) (u1 - l2)
--     go (BetweenRn l u) (ExactlyRn amount) = BetweenRn (l - amount) (u - amount)
--     go (BetweenRn _ u ) (AboveRn above ) = BelowRn (u - above)
--     go (BetweenRn l u ) (BelowRn below ) = BetweenRn l (u - below)
--     go (BelowRn below ) (ExactlyRn amount) = BelowRn (below - amount)
--     go (BelowRn below ) (BetweenRn l u ) = BetweenRn l (u - below)
--     go (BelowRn _     ) (AboveRn above ) = AboveRn above
--     go (BelowRn below1) (BelowRn _     ) = BelowRn below1
--     go (AboveRn above ) (ExactlyRn amount) = AboveRn (above - amount)
--     go (AboveRn above ) (BetweenRn l u ) = BetweenRn (l - above) u
--     go (AboveRn above ) (BelowRn _     ) = AboveRn above
--     go (AboveRn above1) (AboveRn above2) = AboveRn $ above1 - above2

-- TODO test/fix
inIndex :: forall b . (Ord b, IsBet b) => ActionIx b -> BetAction b -> Bool
inIndex = go
 where
  within' = within @b
  go AnyIx                  _               = True
  go CheckIx                Check           = True
  go (RaiseIx        range) (Raise from to) = fromMaybe False $ (to `minus` from) <&> \diff -> within' diff range
  go (RaiseOrAllInIx range) (Raise from to) = fromMaybe False $ (to `minus` from) <&> \diff -> within' diff range
  go (RaiseOrAllInIx range) (AllIn bet    ) = within' bet range
  go (AllInIx        range) (AllIn allIn  ) = within' allIn range
  go (BetIx          range) (Bet   bet    ) = within' bet range
  go CallIx                 (Call  _      ) = True
  go FoldIx                 Fold            = True
  go _                      _               = False

doesBetMatch :: IsBet b => BetAction (IxRange b) -> BetAction b -> Bool
doesBetMatch (Call ix        ) (Call amt        ) = amt `within` ix
doesBetMatch (Raise      _ ix) (Raise      _ amt) = amt `within` ix
-- I'm pretty sure this is desired
doesBetMatch (Raise      _ ix) (AllInRaise      _ amt) = amt `within` ix
doesBetMatch (AllInRaise _ ix) (AllInRaise _ amt) = amt `within` ix
doesBetMatch (Bet   ix       ) (Bet   amt       ) = amt `within` ix
doesBetMatch (AllIn ix       ) (AllIn amt       ) = amt `within` ix
doesBetMatch Fold              Fold               = True
doesBetMatch Check             Check              = True
doesBetMatch _                 _                  = False
