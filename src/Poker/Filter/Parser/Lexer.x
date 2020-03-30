{
{-# OPTIONS_GHC -fno-warn-tabs #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE StandaloneDeriving #-}
module Poker.Filter.Parser.Lexer
(Token(..),
Region(..),
loc,
Located(..),
TokenBase(..),
alexScanTokens, AlexPosn(..)) where

import Poker.Base
import Debug.Trace
import Poker.Filter.AST
import Data.Char (ord)
import qualified Data.Bits
import Data.Word (Word8)



}

$digit = 0-9                    -- digits
$alpha = [a-zA-Z]               -- alphabetic characters
@string = \"([$printable \n] # \")*\"

tokens :-
  $white+                               ;
  @string                               { \tr s -> tr `loc` (TokenString $ tail $ init s) }
  "//".*                                ;trtr
  \;                                    { \tr _ -> tr `loc` TokenSemi }
  \:                                    { \tr _ -> tr `loc` TokenColon }
  \,                                    { \tr _ -> tr `loc` TokenComma }
  \.                                    { \tr _ -> tr `loc` TokenDot }
  @                                     { \tr _ -> tr `loc` TokenAt }
  is                                    { \tr _ -> tr `loc` TokenIs }
  UTG                                   { \tr _ -> tr `loc` TokenPos UTG }
  UTG1                                  { \tr _ -> tr `loc` TokenPos UTG1 }
  UTG2                                  { \tr _ -> tr `loc` TokenPos UTG2 }
  BU                                    { \tr _ -> tr `loc` TokenPos BU }
  SB                                    { \tr _ -> tr `loc` TokenPos SB }
  BB                                    { \tr _ -> tr `loc` TokenPos BB }
  \/                                    { \tr _ -> tr `loc` TokenSlash }
  \{                                    { \tr _ -> tr `loc` TokenOB }
  \}                                    { \tr _ -> tr `loc` TokenCB }
  \(                                    { \tr _ -> tr `loc` TokenOP }
  \)                                    { \tr _ -> tr `loc` TokenCP }
  \<                                    { \tr _ -> tr `loc` TokenOpenAngle }
  \>                                    { \tr _ -> tr `loc` TokenCloseAngle }
  \[                                    { \tr _ -> tr `loc` TokenOpenSquare }
  \]                                    { \tr _ -> tr `loc` TokenCloseSquare }
  \|                                    { \tr _ -> tr `loc` TokenPipe }
  \<\-                                  { \tr _ -> tr `loc` TokenBind }
  =                                     { \tr _ -> tr `loc` TokenEq }
  or                                    { \tr _ -> tr `loc` TokenOr }
  and                                   { \tr _ -> tr `loc` TokenAnd }
  true                                  { \tr _ -> tr `loc` TokenTrue }
  false                                 { \tr _ -> tr `loc` TokenFalse }
  let                                   { \tr _ -> tr `loc` TokenLet }
  select                                { \tr _ -> tr `loc` TokenSelect }
  $digit [$digit]*                      { \tr s -> tr `loc` TokenNum (read s) }
  $alpha [$alpha $digit \- \_ \']*      { \tr s -> tr `loc` TokenIdent s }


{
-- Each action has type :: String -> Token

loc :: (AlexPosn, AlexPosn) -> TokenBase -> Token
loc (start, end) token = Loc (Region (toPos start) (toPos end)) token

toPos :: AlexPosn -> Pos
toPos (AlexPn _ l c) = Pos l c

type Token = Located TokenBase

-- The token type:
data TokenBase =
  TokenString String
  | TokenPos { _pos :: Position }
  | TokenEq
  | TokenIdent { _string :: String }
  | TokenAnd
  | TokenNum { _num :: Double }
  | TokenOB
  | TokenCB
  | TokenOP
  | TokenCP
  | TokenOpenAngle
  | TokenCloseAngle
  | TokenIs
  | TokenOpenSquare
  | TokenCloseSquare
  | TokenType
  | TokenKey
  | TokenLet
  | TokenSelect
  | TokenValue
  | TokenSemi
  | TokenDot
  | TokenColon
  | TokenComma
  | TokenAt
  | TokenPipe
  | TokenOneOf
  | TokenSlash
  | TokenOr
  | TokenTrue
  | TokenFalse
  | TokenBind
  | TokenEOF
  deriving (Eq, Show)

-- | Encode a Haskell String to a list of Word8 values, in UTF8 format.
utf8Encode :: Char -> [Word8]
utf8Encode = map fromIntegral . go . ord
 where
  go oc
   | oc <= 0x7f       = [oc]

   | oc <= 0x7ff      = [ 0xc0 + (oc `Data.Bits.shiftR` 6)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]

   | oc <= 0xffff     = [ 0xe0 + (oc `Data.Bits.shiftR` 12)
                        , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]
   | otherwise        = [ 0xf0 + (oc `Data.Bits.shiftR` 18)
                        , 0x80 + ((oc `Data.Bits.shiftR` 12) Data.Bits..&. 0x3f)
                        , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]

ignorePendingBytes :: AlexInput -> AlexInput
ignorePendingBytes (p,c,_ps,s) = (p,c,[],s)

alexInputPrevChar :: AlexInput -> Char
alexInputPrevChar (_p,c,_bs,_s) = c

alexGetByte :: AlexInput -> Maybe (Byte,AlexInput)
alexGetByte (p,c,(b:bs),s) = Just (b,(p,c,bs,s))
alexGetByte (_,_,[],[]) = Nothing
alexGetByte (p,_,[],(c:s))  = let p' = alexMove p c
                                  (b:bs) = utf8Encode c
                              in p' `seq`  Just (b, (p', c, bs, s))

type Byte = Word8

type AlexInput = (AlexPosn,     -- current position,
                  Char,         -- previous char
                  [Byte],       -- pending bytes on current char
                  String)       -- current input string

data AlexPosn = AlexPn !Int  -- absolute character offset
                       !Int  -- line number
                       !Int  -- column number
  deriving Show

alexStartPos :: AlexPosn
alexStartPos = AlexPn 0 1 1

alexMove :: AlexPosn -> Char -> AlexPosn
alexMove (AlexPn a l c) '\t' = AlexPn (a+1)  l     (((c+alex_tab_size-1) `div` alex_tab_size)*alex_tab_size+1)
alexMove (AlexPn a l _) '\n' = AlexPn (a+1) (l+1)   1
alexMove (AlexPn a l c) _    = AlexPn (a+1)  l     (c+1)

--alexScanTokensWithRegions :: String -> [Token]
alexScanTokens str = go (alexStartPos,'\n',[],str)
  where go inp@(pos,_,_,str) =
          case alexScan inp 0 of
                AlexEOF -> []
                AlexError ((AlexPn _ line column),_,_,_) -> error $ "lexical error at " ++ (show line) ++ " line, " ++ (show column) ++ " column"
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> act (pos, getPos inp') (take len str) : go inp'
        getPos (pos',_,_,_) = pos'

data AlexState = AlexState {
        alex_pos :: !AlexPosn,  -- position at current input location
        alex_inp :: String,     -- the current input
        alex_chr :: !Char,      -- the character before the input
        alex_bytes :: [Byte],
        alex_scd :: !Int        -- the current startcode
    }

-- Compile with -funbox-strict-fields for best results!

--runAlex :: String -> Alex a -> Either String a
--runAlex input__ (Alex f)
--   = case f (AlexState {alex_pos = alexStartPos,
--                        alex_inp = input__,
--                        alex_chr = '\n',
--                        alex_bytes = [],
--                        alex_scd = 0}) of Left msg -> Left msg
--                                          Right ( _, a ) -> Right a
--
--newtype Alex a = Alex { unAlex :: AlexState -> Either String (AlexState, a) }
--
--instance Functor Alex where
--  fmap f a = Alex $ \s -> case unAlex a s of
--                            Left msg -> Left msg
--                            Right (s', a') -> Right (s', f a')
--
--instance Applicative Alex where
--  pure a   = Alex $ \s -> Right (s, a)
--  fa <*> a = Alex $ \s -> case unAlex fa s of
--                            Left msg -> Left msg
--                            Right (s', f) -> case unAlex a s' of
--                                               Left msg -> Left msg
--                                               Right (s'', b) -> Right (s'', f b)
--
--instance Monad Alex where
--  m >>= k  = Alex $ \s -> case unAlex m s of
--                                Left msg -> Left msg
--                                Right (s',a) -> unAlex (k a) s'
--  return = pure
--
--alexGetInput :: Alex AlexInput
--alexGetInput
-- = Alex $ \s@AlexState{alex_pos=pos,alex_chr=c,alex_bytes=bs,alex_inp=inp__} ->
--        Right (s, (pos,c,bs,inp__))
--
--alexSetInput :: AlexInput -> Alex ()
--alexSetInput (pos,c,bs,inp__)
-- = Alex $ \s -> case s{alex_pos=pos,alex_chr=c,alex_bytes=bs,alex_inp=inp__} of
--                  state__@(AlexState{}) -> Right (state__, ())
--
--alexError :: String -> Alex a
--alexError message = Alex $ const $ Left message
--
--alexGetStartCode :: Alex Int
--alexGetStartCode = Alex $ \s@AlexState{alex_scd=sc} -> Right (s, sc)
--
--alexSetStartCode :: Int -> Alex ()
--alexSetStartCode sc = Alex $ \s -> Right (s{alex_scd=sc}, ())









--alexMonadScan = do
--  inp__ <- alexGetInput
--  sc <- alexGetStartCode
--  case alexScan inp__ sc of
--    AlexEOF -> alexEOF
--    AlexError ((AlexPn _ line column),_,_,_) -> alexError $ "lexical error at line " ++ (show line) ++ ", column " ++ (show column)
--    AlexSkip  inp__' _len -> do
--        alexSetInput inp__'
--        alexMonadScan
--    AlexToken inp__' len action -> do
--        alexSetInput inp__'
--        action (ignorePendingBytes inp__) len

-- -----------------------------------------------------------------------------
-- Useful token actions

--type AlexAction result = AlexInput -> Int -> Alex result

-- just ignore this token and scan another one
-- skip :: AlexAction result
--skip _input _len = alexMonadScan
--
---- ignore this token, but set the start code to a new value
---- begin :: Int -> AlexAction result
--begin code _input _len = do alexSetStartCode code; alexMonadScan

-- perform an action for this token, and set the start code to a new value
--andBegin :: AlexAction result -> Int -> AlexAction result
--(action `andBegin` code) input__ len = do
--  alexSetStartCode code
--  action input__ len
--
--token :: (AlexInput -> Int -> token) -> AlexAction token
--token t input__ len = return (t input__ len)


}