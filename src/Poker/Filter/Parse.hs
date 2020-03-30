{-# LANGUAGE OverloadedStrings #-}
module Poker.Filter.Parse
  ()
  where

import Poker.Base
import Poker.Filter.AST
import Poker.Filter.RawAST

import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L

import Data.Text (Text)
import qualified Data.Text as T

import Control.Monad.Combinators.Expr
import Control.Monad.Identity

import Data.Functor

type Parser = ParsecT () Text Identity

lParen :: Parser Char
lParen = single '('

rParen :: Parser Char
rParen = single ')'

sc :: Parser ()
sc = L.space
  space1                         -- (2)
  (L.skipLineComment "//")       -- (3)
  (L.skipBlockComment "/*" "*/")

lexeme :: Parser a -> Parser a
lexeme = L.lexeme sc

symbol :: Text -> Parser Text
symbol = L.symbol sc

reserved = [ "or"
           , "and"
           , "is"
           , ""
           , ""
           , ""
           , ""
           , ""
           , ""
           ]

-- parserExpr :: Parser Expr
-- parserExpr = foldr1 (<|>) . fmap try $
--   [ between lParen rParen parserExpr <?> "parens expr"
--   , string "accumulate: " *> fmap Accumulate parserExpr <?> "accumulate"
--   , string "fold" $> ParserBasic FoldP <?> "fold"
--   , string "raise" $> ParserBasic AnyRaiseP <?> "raise"
--   , liftM2 Or parserExpr (string " or " *> parserExpr) <?> "or"
--   ]

pSimpleP :: Parser Expr
pSimpleP = choice
           [ symbol "fold" $> Fx (ActionIxF FoldIndex) <?> "fold"
           , string "raise" $> Fx (ActionIxF AnyRaiseIndex) <?> "raise"
           , string "call" $> Fx (ActionIxF AnyCallIndex) <?> "raise"
           ]

expr :: Parser Expr
expr = makeExprParser term table <?> "expression"

parens :: Parser a -> Parser a
parens p = lexeme $ between lParen rParen p

term :: Parser Expr
term = parens expr <|> pSimpleP

table :: [[Operator Parser Expr]]
table = [ [ prefix "is" $ Fx . PredF
          ]
        , []
        -- , [ binaryOp "or" Or]
        -- , [ prefix "accumulate:" Accumulate ] 
        ]
  
op n = (lexeme . try) (string n <* notFollowedBy punctuationChar)

binaryOp :: Text -> (Expr -> Expr -> Expr) -> Operator Parser Expr
binaryOp  name f = InfixL  (f <$ symbol name)

prefix :: Text -> (Expr -> Expr) -> Operator Parser Expr
prefix name f = Prefix ((f <$) $ try (symbol name <* notFollowedBy (single ':')))

postfix :: Text -> (Expr -> Expr) -> Operator Parser Expr
postfix name f = Postfix (f <$ symbol name)

test :: IO ()
test = do
  inputLines <- T.lines . T.pack <$> readFile "src/Poker/Filter/test.parser"

  print inputLines
  let parsers = fmap (runParser (expr <* eof) "") inputLines
  putStrLn . unlines . fmap show $ zip inputLines parsers
  return ()
