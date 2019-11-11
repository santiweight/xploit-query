{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

module Poker.Parse
    ( parseDirectory
    , parseFiles
    , testHands
    ) where
import Control.Concurrent.Thread.Delay
import System.Directory (getDirectoryContents)
import Data.Functor
import System.IO
import Debug.Trace
import System.TimeIt
import Data.Void
import System.IO.Unsafe
import Data.Sort
import Data.Maybe (catMaybes)
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad
import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L
import Text.Megaparsec.Char.Lexer (decimal, float, symbol, scientific)
import Data.Function
import Data.Scientific

import Data.Dates
import Poker.Base

{- Type Declarations -}

type Parser = Parsec Void String

-- voidString is a helper for voiding simple string matchers
voidString :: [Char] -> Parser ()
voidString = void . string

-- default space consumer
sc :: Parser ()
sc = L.space space1 empty empty

-- default space consuming lexeme
lexeme :: Parser a -> Parser a
lexeme = L.lexeme sc

-- integer matcher
integer :: Parser Int
integer = lexeme decimal <?> "integer"

-- double matcher
double :: Parser Double
double = toRealFloat <$> L.scientific <?> "double"

-- wrap with spaceconsumer
-- TODO this is ugly and symptomatic of bad stuff later
spaceWrap :: Parser a -> Parser a
spaceWrap parser = space *> parser <* (many $ char ' ')

-- surround an expression in brackets
bracketed :: Parser a -> Parser a
bracketed = between (char '[') (char ']')

-- currecny matches a currency symbol
-- TODO make currency a Parser Currency
currency ::  Parser Char
currency = oneOf ("$€£" :: [Char]) <?> "currency symbol"

-- match a colon
colon :: Parser [Char]
colon = symbol sc ":" <?> "colon"

-- match a suit
suitP :: Parser Suit
suitP = do
    suit <- fmap (flip Map.lookup str_to_suit_map) (satisfy isSuit <?> "expected suit")
    suit & maybe mzero return
    <?> "Suit"
  where
    isSuit :: Char -> Bool
    isSuit char = any (char ==) ("chds" :: String)

rankP :: Parser Rank
rankP = do
  rankLookup <- fmap (\c -> Map.lookup c str_to_rank_map) (satisfy isRank)
  rankLookup & maybe mzero return
  <?> "Rank"
  where
    isRank :: Char -> Bool
    isRank char = any (char ==) ("A23456789TJQK" :: String)

cardP :: Parser Card
cardP = liftM2 Card rankP suitP <?> "Card"

manyCard :: Parser [Card]
manyCard = cardP `sepEndBy` (sc <|> void (string ",")) <?> "Multiple Cards"

-- TODO change this to pCurrencyAmount
-- TODO parse currency type
pAmount :: Parser Double
pAmount = lexeme (currency >> double)

parens :: Parser a -> Parser a
parens parser = between (char '(') (char ')') parser

data HeroOrVillain = Hero | Villain

-- parses a Position type
pPosition :: Parser Position
pPosition = do
    position <- lexeme positionString
    option Villain $ spaceWrap (string "[ME]") $> Hero
    return position
  where
    positionString = choice [ SB <$ string "Small Blind"
                            , BB <$ string "Big Blind"
                            , UTG1 <$ string "UTG+1"
                            , UTG2 <$ string "UTG+2"
                            , UTG <$ string "UTG"
                            , BU <$ string "Dealer" ]
                     <?> "expected Position"



data GameType = Zone | Cash

data HandHeader = HandHeader
                  { _headerHandID :: Int
                  , _headerNetwork :: Network
                  , _headerTableNum :: Int
                  }

-- parse hand header
-- TODO make this return a more complex datatype HandHeader
-- TODO accept multiple hand header types
-- TODO match specific network based on header
-- TODO find out if it's yyyy/mm/dd or yyyy/dd/mm
-- TODO figure out time format
-- TODO match different game types eg PLO
handHeaderP :: Parser Int
handHeaderP = do
  lexeme (choice [ Bovada <$ string "Bovada"
                 , PokerStars <$ string "PokerStars" ]) <?> "Network"
  string "Hand #"
  handID <- integer <?> "Hand Number"
  tableType <- lexeme . optional $ Zone <$ string "Zone Poker"
  pokerID <- lexeme . optional $ string "ID#" *> integer
  tableID <- lexeme . optional $ string "TBL#" *> integer
  lexeme $ string "HOLDEM" *> optional (string "ZonePoker") <* string " No Limit -"
  (year,month,day) <- lexeme $ (,,)
                      <$> (integer <* char '-')
                      <*> (integer <* char '-')
                      <*> integer
  (hour, minute, second) <- lexeme $ (,,)
                            <$> (integer <* char ':')
                            <*> (integer <* char ':')
                            <*> integer
  let time = DateTime year month day hour minute second
  return handID

pActionValue :: Parser ActionValue
pActionValue = choice . fmap try $ [ pLeave
                                   , pEnter
                                   , pSitDown
                                   , pSitOut
                                   , pComplexFold
                                   , pFold
                                   , pCheck
                                   , pCall
                                   , pRaise
                                   , pBet
                                   , pPostDead
                                   , pPost
                                   , pAllInRaise
                                   , pAllIn
                                   , pReturnUncalled
                                   , pResult
                                   , pMuck
                                   , pTableDeposit
                                   , pRejoin
                                   , pOtherAction ]
  where
    pLeave = Leave <$ (choice . fmap string) [ "Leave(Auto)"
                                             , "Table leave user" ]
    pEnter = Enter <$ choice [ string "Enter(Auto)"
                             , string "Table enter user" ]
    pSitDown = SitDown <$ string "Seat sit down"
    pSitOut = SitOut <$ string "Seat sit out"
    pFold = return Fold <* (choice . fmap string) [ "Folds (timeout)"
                                                  , "Folds (disconnect)"
                                                  , "Folds (auth)"
                                                  , "Folds" ]
    pComplexFold = return Fold <* choice [ string "Folds & shows " >> bracketed manyCard ]

    pCheck :: Parser ActionValue
    pCheck = pure Check <* (choice . fmap string) [ "Checks (timeout)"
                                                  , "Checks (disconnect)"
                                                  , "Checks" ]
    pCall = Call <$> (string "Calls " *> pAmount)
    pRaise = uncurry Raise <$> (string "Raises " >> pAmountFromTo)
    pBet = Bet <$> (string "Bets " >> pAmount)
    pPostDead = PostDead <$> (string "Posts dead chip " >> pAmount)
    pPost = Post <$> ((string "Posts chip " <|> string "Posts ") *> pAmount)
    pAllInRaise = uncurry AllInRaise <$> (string "All-in(raise) " >> pAmountFromTo)
    pAllIn = AllIn <$> (string "All-in " >> pAmount)
    pReturnUncalled = Return <$> (string "Return uncalled portion of bet " >> pAmount)
    pResult = Result <$> (choice [ string "Hand result-Side pot "
                                 , string "Hand result " ] >> pAmount)
    pMuck = do
      -- TODO make this not shit
      showdownStr <- string "Mucks " <|> string "Does not show " <|> string "Showdown "
      cards <- lexeme (bracketed manyCard)
      (sc <* (lexeme . parens . many) (lexeme letterChar)) 
        <|> void (many printChar)
      return $ Showdown cards showdownStr
    pTableDeposit = Deposit <$> (string "Table deposit " >> pAmount)
    pRejoin = Rejoin <$ string "Seat re-join"
    pOtherAction = OtherAction <$ (string "Seat stand" <|> string "Showdown(High Card)")
    pAmountFromTo = liftM2 (,) pAmount (string "to " >> pAmount) :: Parser (Double, Double)


-- pDealer matches dealer announcements and exhibits how awful Bovada's format is
pDealer :: Parser ()
pDealer = void . lexeme $ do
  string "Dealer "
  optional $ string " [ME] "
  void (voidString ": Set dealer " >> bracketed integer)
    <|> void (string ": Set deale  r " >> bracketed integer)


smallBlindP =
  (do string "Small Blind " >> optional (string " [ME] ")
      string ": Small Blind " >> pAmount)
  <|> (do pDealer >> string "Small Blind " >> pAmount)
  where
    pDealer = string "Dealer " >> optional (string " [ME] ") >> string ": "
  
bigBlindP = do
    string "Big Blind " >> optional (string " [ME] ")
    string ": Big blind " >> pAmount

holeCardsHeadingP = string "*** HOLE CARDS ***" >> eol

pFlop :: Parser Action
pFlop = do
  pFlopHeading
  liftM (DealerAction . FlopDeal) $ lexeme (bracketed manyCard)
  where
    pFlopHeading = string "*** FLOP *** "

pTurnHeading = string "*** TURN *** "
turnStreetP :: Parser Action
turnStreetP = do
    pTurnHeading
    bracketed manyCard
    dealtcards <- spaceWrap (bracketed manyCard)
    eol
    return $ DealerAction $ TurnDeal dealtcards

pRiverHeading = string "*** RIVER *** "
riverStreetP = do
    pRiverHeading
    bracketed manyCard
    dealtcard <- spaceWrap (bracketed manyCard)
    eol
    return $ DealerAction $ RiverDeal dealtcard

holdingP :: Parser (Position, Combo)
holdingP = lexeme $ do
    position <- pPosition
    colon >> string "Card dealt to a spot "
    cards <- bracketed manyCard 
    return (position, newCombo cards)

stackP :: Parser (Int, Position, Double)
stackP = do
    seat <- string "Seat " *> decimal <* colon
    position <- pPosition
    stack <- lexeme $ parens (pAmount <* string "in chips")
    return (seat, position, stack)

pSummary :: Parser ()
pSummary = void . lexeme $ string "*** SUMMARY ***"

potP = string "Total Pot" *> parens pAmount

-- pSeatSumm takes
pSeatSumm :: Parser Action
pSeatSumm = do
  string "Seat+" >> integer >> string ": "
  pPosition >> many printChar $> TableAction

-- pBoard takes the input 'Board [Cards]' and gives the contained cards
pBoard :: Parser [Card]
pBoard = string "Board " >> (bracketed manyCard)

pManyActions :: Parser [Action]
pManyActions = concat . catMaybes <$> sequence [ optional (many pAction)
                                           , optional (pFlop *> many pAction)
                                           , optional (turnStreetP *> many pAction)
                                           , optional (riverStreetP *> many pAction) ]

pIgnoreAction :: Parser Action
pIgnoreAction = choice $ pSimpleIgnore <> pComplexIgnore
  where
    pSimpleIgnore = fmap ((<$) TableAction . string) [ "Enter(Auto)"
                                                     , "Seat re-join"
                                                     , "Seat sit out"
                                                     , "Seat sit down"
                                                     , "Table leave user"
                                                     , "Table enter user"
                                                     , "Seat stand"
                                                     ]
    pComplexIgnore = fmap (TableAction <$) [ string "Table deposit " >> pAmount ]

-- pAction parses a simple player action
pAction :: Parser Action
pAction = lexeme $ liftM2 PlayerAction (pPosition <* colon) pActionValue
          <|> pIgnoreAction

catchIgnore :: Parser a -> Parser a
catchIgnore p = many (try pAction) *> p

-- handP is the primary hand parser that matches a hand
handP = do
    id <- handHeaderP
    stacks <- some stackP

    optional . lexeme $ try pDealer <|> (void $ string "Set dealer")
    catchIgnore $ optional smallBlindP
    bb <- catchIgnore bigBlindP
    catchIgnore holeCardsHeadingP

    holdings <- Map.fromList <$> many (try holdingP)

    let players = Map.fromList $ do
          (seat, pos, stack) <- stacks
          return $ (,) seat Player { name=Just "test"
                                   , playerPosition=Just pos
                                   , _playerHolding=Map.lookup pos holdings
                                   , stack=stack
                                   , seat=seat }

    let seatMap = Map.fromList []
    let func = \player seatMap' -> case playerPosition player of
          Nothing -> seatMap'
          Just pos -> Map.insert pos (seat player) seatMap'
    let seatMap' = Map.foldr func seatMap players

    allActions <- pManyActions <?> "actions"

    -- TODO the actions should be refactored into player and non-player actions
    (many . lexeme) (void pActionValue <|> void pAction) <?> "ignore actions"

    -- TODO factor out into function (once this is better cleaned up)
    ((many . choice) [ (void . try . lexeme) pSummary
                     , (void . try . lexeme) pSeatSumm
                     , (void . try . lexeme) potP
                     , (void . try . lexeme) pActionValue
                     , (void . try . lexeme) pBoard ]) <?> "final ignores"

    return Hand { hand_id=id
                , network=Bovada
                , stakes=bb
                , actions=allActions
                , _playerMap=players
                , _seatMap=seatMap'
                }

-- handsP is the the highest level parser
handsP :: Parser [Hand]
handsP = between sc eof $ do
  res <- many (lexeme handP)
  many eol
  return res

-- parseFiles pulls out all the hands from the hands in a list of files
parseFiles :: [FilePath] -> IO [Hand]
parseFiles = fmap concat . mapM parseFile
  where
    parseFile f = do
      contents <- readFile f
      case parse handsP [] contents of
                    Left e -> return []
                    Right v -> return v

-- test function for parsing hands in a directory
parseFilesIO :: [FilePath] -> IO ()
parseFilesIO (f:fs) = do
    contents <- readFile f
    case parse handsP [] contents of
      Left bundle -> putStrLn f >> print "error" >> putStr (errorBundlePretty bundle) 
      Right xs -> putStrLn $ show (length xs)
    parseFilesIO fs
parseFilesIO [] = print  "done"

-- parse hands in a directory
parseDirectory :: FilePath -> IO [Hand]
parseDirectory dirName = do
    filenames <- getDirectoryContents dirName
    hands <- parseFiles (map ((++) dirName) (drop 2 filenames))
    return hands

-- test function for parsing hands in a directory
parseDirectoryIO :: FilePath -> IO ()
parseDirectoryIO dirName = do
    filenames <- getDirectoryContents dirName
    parseFilesIO (map ((++) dirName) (drop 2 filenames))



testHands = parseDirectoryIO "/Users/santi/haskell_exploit/Exploit/src/test_files/Imported Hands/"

test = do
  parseFiles ["/Users/santi/haskell_exploit/Exploit/src/test_files/bovada-example.txt"]
