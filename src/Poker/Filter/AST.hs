module Poker.Filter.AST
  ( ParserExpr (..)
  , ParserADT (..)
  )
where

import Poker.Base
import Poker.Filter.Base

data ParserExpr = GetAction
                | Or ParserExpr ParserExpr
                | Accumulate ParserExpr
                | Union ParserExpr ParserExpr
                | Satisfy ActionIndex
                | SatisfyOf [ActionIndex]
                | SatisfyNot ActionIndex
                | ManyTillPlus ParserExpr ParserExpr
                | Item
                | RFI [Position]
                | CallAST [Position]
                | ParserBasic ParserADT
  deriving (Show)

data ParserADT = FoldP
               | AnyCallP
               | AnyRaiseP
  deriving Show
