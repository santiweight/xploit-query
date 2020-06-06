{
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LiberalTypeSynonyms #-}
{-# LANGUAGE ImpredicativeTypes #-}
module Poker.Filter.Parser.Parser
  ( parseQuery )
  where

import Data.Char
import Poker.Filter.AST.AST
import Poker.Filter.AST.Types
import Poker.Filter.Parser.Lexer
import Control.Comonad
import Control.Comonad.Cofree
}

%name parse
%tokentype { Token }
%error { parseError }

%token
      ident          { _ `Loc` TokenIdent _ }
      quoted         { _ `Loc` TokenString _ }
      '/'            { _ `Loc` TokenSlash }
      '{'            { _ `Loc` TokenOB }
      '}'            { _ `Loc` TokenCB }
      ';'            { _ `Loc` TokenSemi }
      '='            { _ `Loc` TokenEq }
      ','            { _ `Loc` TokenComma }
      ':'            { _ `Loc` TokenColon }
      '['            { _ `Loc` TokenOpenSquare }
      ']'            { _ `Loc` TokenCloseSquare }
      '<'            { _ `Loc` TokenOpenAngle }
      '>'            { _ `Loc` TokenCloseAngle }
      '|'            { _ `Loc` TokenPipe }
      '@'            { _ `Loc` TokenAt }
      '.'            { _ `Loc` TokenDot }
      '('            { _ `Loc` TokenOP }
      ')'            { _ `Loc` TokenCP }
      '<-'           { _ `Loc` TokenBind }
      or             { _ `Loc` TokenOr }
      is             { _ `Loc` TokenIs }
      and            { _ `Loc` TokenAnd }
      trueToken      { _ `Loc` TokenTrue }
      falseToken     { _ `Loc` TokenFalse }
      num            { _ `Loc` TokenNum _ }
      pos            { _ `Loc` TokenPos _ }
      let            { _ `Loc` TokenLet }
      select         { _ `Loc` TokenSelect }
      where          { _ `Loc` TokenWhere }
      acc            { _ `Loc` TokenAccumulate }
      many           { _ `Loc` TokenMany }
      some           { _ `Loc` TokenSome }
      open           { _ `Loc` TokenOpen }
      limp           { _ `Loc` TokenLimp }
      openOpp        { _ `Loc` TokenOpenOpp }
%%

Program :: {Anned_ (Query (Anned_ (StmtF (Anned_ Var) (Anned ExprF))))}
  : Stmts { annFrom $1 $1 :< (K . Query . unK . unwrap $ $1) }

Stmts :: { Anned_ [Anned_ (StmtF (Anned_ Var) (Anned ExprF))] }
  : Stmt Stmts { annFrom $1 $2 :< K ($1 : (unK . unwrap) $2) }
  | Stmt { extract $1 :< K [$1] }

Stmt :: { Anned_ (StmtF (Anned_ Var) (Anned ExprF)) }
Stmt
  : Ident '<-' Expr { annFrom $1 $3 :< K (Bind $1 $3) }
  | where Expr { annFrom $1 $2 :< K (Where $2) }
  | let Ident '=' Expr { annFrom $2 $4 :< K (Let $2 $4)}
  | Expr { extract $1 :< K (Raw $1)}

Expr :: { Ann ExprF Annotation }
Expr
  : Expr and Expr { annFrom $1 $3 :< AndF $1 $3 }
  | Expr or Expr { annFrom $1 $3 :< OrF $1 $3}
  | Expr is Expr { annFrom $1 $3 :< AppF (extract $1 :< IsF $3) $1}
  | '(' Expr ')' { annFrom $1 $3 :< ParenF $2 }
  | acc Ident Expr { annFrom $1 $3 :< AppF
                            (annFrom $1 $2 :< AppF
                              (getLoc $1 :< VarF (V "acc"))
                              (extract $2 :< (LitF . StringL . _var . unK . unwrap $ $2)))
                            $3 }
  | many Expr { annFrom $1 $2 :< AppF
                                   (getLoc $1 :< VarF (V "many"))
                                   $2 }
  | some Expr { annFrom $1 $2 :< AppF
                                   (getLoc $1 :< VarF (V "some"))
                                   $2 }
  | open Expr { annFrom $1 $2 :< AppF
                                   (getLoc $1 :< VarF (V "open"))
                                   $2 }
  | openOpp Expr { annFrom $1 $2 :< AppF
                                   (getLoc $1 :< VarF (V "fiOpp"))
                                   $2 }
  | limp Expr { annFrom $1 $2 :< AppF
                                   (getLoc $1 :< VarF (V "limp"))
                                   $2 }
  | Num { $1 }
  | Pos { $1 }
  | Var { $1 }

Pos :: { Ann ExprF Annotation }
Pos : pos {getLoc $1 :< (LitF . PosL . _pos . val) $1 }

Ident :: { Ann (K Var) Annotation }
Ident : ident { getLoc $1 :< (K . V . _string . val) $1 }

Var :: { Anned ExprF }
Var : ident { getLoc $1 :< (VarF . V . _string . val) $1 }

Num :: { Ann ExprF Annotation }
Num : num { getLoc $1 :< (LitF . NumL . _num . val) $1 }

{

annFrom :: (HasLoc a, HasLoc b) => a -> b -> Annotation
annFrom (getRegion -> startPos -> start) (getRegion -> endPos -> end) = MkAnn $ Region start end

toPos :: AlexPosn -> Pos
toPos (AlexPn o l c) = Pos l c

getLoc :: Located a -> Annotation
getLoc (Loc region _) = MkAnn region

parseError :: [Token] -> a
parseError tks = error ("Parse error at " ++ lcn ++ "\n")
	where
	lcn = 	case tks of
		  [] -> "end of file"
		  tk:_ -> "line " ++ show l ++ ", column " ++ show c
			where
			Pos l c = startPos . locRegion $ tk

--parseStmts :: FilePath -> String -> Either String Expr
--parseStmts = runAlex' parse

parseQuery = parse . alexScanTokens
}

