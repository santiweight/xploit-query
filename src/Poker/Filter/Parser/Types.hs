module Poker.Filter.Parser.Types 
  ( Annotated (..)
  ) where

type AnnDoLine = Ann (K (DoLineF (Ann (K Var)) (Ann ExprF)))

class Annotated a where
  ann :: a -> Annotation

instance Functor f => Annotated (Ann f) where
  ann = extract

instance Annotated (Anned a) where
  ann = _ann

instance Annotated a => Annotated (K a b) where
  ann = ann . unK

