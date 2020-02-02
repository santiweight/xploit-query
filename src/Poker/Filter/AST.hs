module Poker.Filter.AST
  ()
where

import Poker.Base
import Poker

data ParserExpr = GetAction
               | Or ParserExpr ParserExpr
               | Do ParserExpr ParserExpr
               | Union ParserExpr ParserExpr
               | Satisfy ActionIndex
               | SatisfyOf [ActionIndex]
               | SatisfyNot ActionIndex
               | ManyTillPlus ParserExpr ParserExpr
               | IgnoreMatch Filter Filter
               | Item
               | RFI [Position]
               | CallAST [Position]
            deriving(Show)
