{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}

module Poker.Parse.Base
  ( parseDirectory,
    parseFiles,
    parseFile,
    parseInPath,
    parseString
  )
where

import Control.Concurrent.Async
import Control.Monad
import Data.Bifunctor
import Data.Function
import Data.Functor
import Data.Functor.Identity
import Data.List (isSuffixOf)
import Data.Map (Map)
import qualified Data.Map as M
import Data.Maybe (catMaybes)
import Data.Scientific
import Data.Time.Calendar (fromGregorian)
import Data.Time.LocalTime (LocalTime (..), TimeOfDay (..))
import Data.Void
import Poker.Base
import System.Directory (doesDirectoryExist, listDirectory)
import System.FilePath.Posix ((</>))
import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L
import Text.Megaparsec.Char.Lexer (decimal, symbol)

-- | Parsing Monad
-- TODO change the error component
type Parser a = ParsecT Void String Identity a

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
spaceWrap parser = space *> parser <* many (char ' ')

-- surround an expression in brackets
bracketed :: Parser a -> Parser a
bracketed = between (char '[') (char ']')

-- currecny matches a currency symbol
-- TODO make currency a Parser Currency
currency :: Parser Char
currency = oneOf ("$€£" :: String) <?> "currency symbol"

-- match a colon
colon :: Parser String
colon = symbol sc ":" <?> "colon"

-- match a suit
suitP :: Parser Suit
suitP = do
  suit' <- fmap (`M.lookup` strSuitMap) (satisfy isSuit <?> "expected suit")
  suit' & maybe mzero return <?> "Suit"
  where
    isSuit :: Char -> Bool
    isSuit chr = chr `elem` M.keys strSuitMap
    strSuitMap = M.fromList [('c', Club), ('h', Heart), ('s', Spade), ('d', Diamond)]

rankP :: Parser Rank
rankP = do
  rankLookup <- fmap (`M.lookup` str_to_rank_map) (satisfy isRank) <?> "Rank"
  rankLookup & maybe mzero return
  where
    isRank :: Char -> Bool
    isRank chr = chr `elem` ("A23456789TJQK" :: String)
    str_to_rank_map =
      M.fromList
        [ ('2', Two),
          ('3', Three),
          ('4', Four),
          ('5', Five),
          ('6', Six),
          ('7', Seven),
          ('8', Eight),
          ('9', Nine),
          ('T', Ten),
          ('J', Jack),
          ('Q', Queen),
          ('K', King),
          ('A', Ace)
        ]

-- | Match a card pattern
cardP :: Parser Card
cardP = liftM2 Card rankP suitP <?> "Card"

-- | Multiple cards
manyCardsP :: Parser [Card]
manyCardsP = cardP `sepEndBy` (sc <|> void (string ",")) <?> "Multiple Cards"

-- | Match a specified number of cards
countCard :: Int -> Parser [Card]
countCard num = do
  cards <- cardP `sepEndBy` (try sc <|> void (string ",")) <?> "Multiple Cards"
  guard $ length cards == num
  return cards

-- TODO change this to pCurrencyAmount
-- TODO parse currency type
amountP :: Parser Double
amountP = lexeme (currency >> double)

parens :: Parser a -> Parser a
parens = between (char '(') (char ')')

-- parses a Position type
positionP :: Parser (Position, IsHero)
positionP = do
  pos_ <- lexeme positionString
  isHero_ <- option Villain $ spaceWrap (string "[ME]") $> Hero
  return (pos_, isHero_)
  where
    positionString =
      choice
        [ SB <$ string "Small Blind",
          BB <$ string "Big Blind",
          UTG1 <$ string "UTG+1",
          UTG2 <$ string "UTG+2",
          UTG <$ string "UTG",
          BU <$ string "Dealer"
        ]
        <?> "expected Position"

data HandHeader
  = HandHeader
      { _headerHandID :: Int,
        _headerNetwork :: Network,
        _headerHandTy :: GameType,
        _headerTime :: LocalTime
      }
  deriving (Show)

-- TODO make this return a more complex datatype HandHeader
-- TODO accept multiple hand header types
-- TODO match specific network based on header
-- TODO find out if it's yyyy/mm/dd or yyyy/dd/mm
-- TODO figure out time format
-- TODO match different game types eg PLO
handHeaderP :: Parser HandHeader
handHeaderP = do
  handNetwork_ <-
    lexeme
      ( choice
          [ Bovada <$ string "Bovada",
            PokerStars <$ string "PokerStars"
          ]
      )
      <?> "Network"
  string "Hand #"
  handID_ <- integer <?> "Hand Number"
  zoneMay <- lexeme . optional $ Zone <$ string "Zone Poker"
  _ <- lexeme . optional $ string "ID#" *> integer
  _ <- lexeme . optional $ string "TBL#" *> integer
  lexeme $ string "HOLDEM" *> optional (string "ZonePoker") <* string " No Limit -"
  (year_, month_, day_) <-
    lexeme $
      (,,)
        <$> (integer <* char '-')
        <*> (integer <* char '-')
        <*> integer
  (hour_, minute_, second_) <-
    lexeme $
      (,,)
        <$> (integer <* char ':')
        <*> (integer <* char ':')
        <*> integer
  let day = fromGregorian (fromIntegral year_) month_ day_
  let timeOfDay = TimeOfDay hour_ minute_ (fromIntegral second_)
  let localTime = LocalTime day timeOfDay
  return
    HandHeader
      { _headerHandID = handID_,
        _headerHandTy = maybe Cash id zoneMay,
        _headerNetwork = handNetwork_,
        _headerTime = localTime
      }

pActionValue :: Parser BetAction
pActionValue =
  choice . fmap try $
    [ pComplexFold,
      pFold,
      pCheck,
      pCall,
      pRaise,
      pBet,
      pAllInRaise,
      pAllIn,
      pOtherAction
    ]
  where
    pFold =
      Fold
        <$ (choice . fmap string)
          [ "Folds (timeout)",
            "Folds (disconnect)",
            "Folds (auth)",
            "Folds"
          ]
    pComplexFold = Fold <$ choice [string "Folds & shows " >> bracketed manyCardsP]
    pCheck :: Parser BetAction
    pCheck =
      Check
        <$ (choice . fmap string)
          [ "Checks (timeout)",
            "Checks (disconnect)",
            "Checks"
          ]
    pCall = Call <$> (string "Calls " *> amountP)
    pRaise = uncurry Raise <$> (string "Raises " >> amountPFromTo)
    pBet = Bet <$> (string "Bets " >> amountP)
    pAllInRaise = uncurry AllInRaise <$> (string "All-in(raise) " >> amountPFromTo)
    pAllIn = AllIn <$> (string "All-in " >> amountP)
    pOtherAction = OtherAction <$ (string "Seat stand" <|> string "Showdown(High Card)")
    amountPFromTo = liftM2 (,) amountP (string "to " >> amountP) :: Parser (Double, Double)

-- pDealer matches dealer announcements and exhibits how awful Bovada's format is
pDealer :: Parser ()
pDealer = void . lexeme $ do
  string "Dealer "
  optional $ string " [ME] "
  void (string ": Set dealer " >> bracketed integer)
    <|> void (string ": Set deale  r " >> bracketed integer)

-- ignore small blind declaration
pSmallBlind :: Parser (Maybe Action)
pSmallBlind =
  catchIgnore . optional $
    ( do
        string "Small Blind " >> optional (string " [ME] ")
        string ": Small Blind " >> mkSBPost <$> amountP
        <|> do pDealer_ >> string "Small Blind " >> mkSBPost <$> amountP
    )
  where
    pDealer_ = string "Dealer " >> optional (string " [ME] ") >> string ": "
    mkSBPost = toAction . TableAction SB . Post

-- parse big blind size
pBigBlind :: Parser (TableAction, Double)
pBigBlind = catchIgnore $ do
  string "Big Blind " >> optional (string " [ME] ")
  string ": Big blind "
  bb <- amountP
  return (mkBBPost bb, bb)
  where
    mkBBPost = TableAction BB . Post

pFlop :: Parser Action
pFlop = do
  pFlopHeading
  [c1, c2, c3] <- lexeme $ bracketed (countCard 3)
  return . toAction $ FlopDeal (c1, c2, c3)
  where
    pFlopHeading = string "*** FLOP *** "

pTurnHeading :: Parser ()
pTurnHeading = void $ string "*** TURN *** "

turnStreetP :: Parser Action
turnStreetP = do
  pTurnHeading
  bracketed manyCardsP
  turnCard <- spaceWrap (bracketed cardP)
  eol
  return . toAction $ TurnDeal turnCard

pRiverHeading :: Parser ()
pRiverHeading = void $ string "*** RIVER *** "

riverStreetP :: ParsecT Void String Identity Action
riverStreetP = do
  pRiverHeading
  bracketed manyCardsP
  dealtcard <- spaceWrap (bracketed cardP)
  eol
  return . toAction $ RiverDeal dealtcard

pHoldingsMap :: Parser (DealerAction, Map Position Holding)
pHoldingsMap = do
  deal <- catchIgnore holeCardsHeadingP
  holdingMap <- M.fromList <$> many (try (firstTwo <$> pHolding))
  return (deal, holdingMap)
  where
    holeCardsHeadingP = string "*** HOLE CARDS ***" >> eol >> return PlayerDeal
    firstTwo (a, b, _) = (a, b)

pHolding :: Parser (Position, Holding, IsHero)
pHolding = lexeme $ do
  (pos', isHero') <- positionP
  colon *> string "Card dealt to a spot "
  [c1, c2] <- bracketed manyCardsP
  return (pos', Holdem c1 c2, isHero')

stackP :: Parser (Int, Position, Double, IsHero)
stackP = do
  seat' <- string "Seat " *> decimal <* colon
  (pos', isHero') <- positionP
  stack' <- lexeme $ parens (amountP <* string "in chips")
  return (seat', pos', stack', isHero')

pSummary :: Parser ()
pSummary = void . lexeme $ string "*** SUMMARY ***"

potP :: Parser Double
potP = string "Total Pot" *> parens amountP

-- pSeatSumm takes
pSeatSumm :: Parser TableAction
pSeatSumm = do
  string "Seat+" >> integer >> string ": "
  positionP >> many printChar $> UnknownAction

-- pBoard takes the input 'Board [Cards]' and gives the contained cards
pBoard :: Parser [Card]
pBoard = string "Board " >> (bracketed manyCardsP)

pManyActions :: Parser [Action]
pManyActions =
  concat . catMaybes
    <$> sequence
      [ Just <$> many pAction,
        optional (liftM2 (:) pFlop (many pAction)),
        optional (liftM2 (:) turnStreetP (many pAction)),
        optional (liftM2 (:) riverStreetP (many pAction))
      ]

pTableAction :: Parser TableAction
pTableAction =
  lexeme $ try $
    do
      (pos, _) <- positionP <* colon
      tableActionVal <-
        choice
          [ pDeposit,
            pSitDown,
            pSitOut,
            pPostDead,
            pPost,
            pMuck,
            pResult,
            pLeave,
            pRejoin,
            pEnter,
            pReturnUncalled,
            pTableDeposit
          ]
      return $ TableAction pos tableActionVal
      <|> try pSimpleUnknown
      <|> try pComplexUnknown
  where
    pSimpleUnknown =
      choice $
        fmap
          ((<$) UnknownAction . string)
          [ "Enter(Auto)",
            "Seat re-join",
            "Seat sit out",
            "Seat sit down",
            "Table leave user",
            "Table enter user",
            "Seat stand",
            "Leave(Auto)"
          ]
    pComplexUnknown = choice . fmap (UnknownAction <$) $ [string "Table deposit " >> amountP]
    pReturnUncalled = Return <$> (string "Return uncalled portion of bet " >> amountP)
    pResult =
      Result
        <$> ( choice
                [ string "Hand result-Side pot ",
                  string "Hand result "
                ]
                >> amountP
            )
    pMuck = do
      -- TODO make this not shit
      showdownStr <- string "Mucks " <|> string "Does not show " <|> string "Showdown "
      cards <- lexeme (bracketed manyCardsP)
      (sc <* (lexeme . parens . many) (lexeme letterChar))
        <|> void (many printChar)
      return $ Showdown cards showdownStr
    pLeave =
      (<$) Leave . choice . fmap string $
        [ "Leave(Auto)",
          "Table leave user"
        ]
    pEnter =
      (<$) Enter . choice . fmap string $
        [ "Enter(Auto)",
          "Table enter user"
        ]
    pTableDeposit = Deposit <$> (string "Table deposit " >> amountP)
    pRejoin = Rejoin <$ string "Seat re-join"
    pDeposit = Deposit <$> (string "Table deposit " *> amountP)
    pSitDown = SitDown <$ string "Seat sit down"
    pSitOut = SitOut <$ string "Seat sit out"
    pPostDead = PostDead <$> (string "Posts dead chip " >> amountP)
    pPost = Post <$> ((string "Posts chip " <|> string "Posts ") *> amountP)

-- pAction parses a simple player action
pAction :: Parser Action
pAction =
  lexeme $
    try
      ( do
          (pos, isHeroVal) <- positionP <* colon
          actionVal <- pActionValue
          return . toAction $ PlayerAction pos actionVal isHeroVal
      )
      <|> toAction <$> pTableAction

catchIgnore :: Parser a -> Parser a
catchIgnore p = many (try pAction) *> p

-- handP is the primary hand parser that matches a hand
handP :: Parser Hand
handP = do
  input <- getInput
  startOffset <- getOffset
  handHeader <- handHeaderP
  stacks <- some stackP
  optional . lexeme $ try pDealer <|> void (string "Set dealer")
  sbActMay <- pSmallBlind <?> "small blind"
  (bbAct, bb) <- first toAction <$> pBigBlind <?> "big blind"
  (preFlopDeal, holdings) <- first toAction <$> pHoldingsMap
  let players = M.fromList $ do
        (seat_, pos_, stack_, _) <- stacks
        return $
          (,)
            seat_
            Player
              { _name = Just "test",
                _playerPosition = Just pos_,
                _playerHolding = M.lookup pos_ holdings,
                _stack = stack_,
                _seat = seat_
              }
  let seatMap = M.fromList []
  let func player seatMap' = case _playerPosition player of
        Nothing -> seatMap'
        Just pos -> M.insert pos (_seat player) seatMap'
  let seatMap' = M.foldr func seatMap players
  restActions <- pManyActions <?> "actions"
  let allActions = case sbActMay of
        Nothing -> bbAct : preFlopDeal : restActions
        Just sbAct -> sbAct : bbAct : preFlopDeal : restActions
  -- TODO the actions should be refactored into player and non-player actions
  (many . lexeme) (void pActionValue <|> void pAction) <?> "ignore actions"
  -- TODO factor out into function (once this is better cleaned up)
  (many . choice)
    [ (void . try . lexeme) pSummary,
      (void . try . lexeme) pSeatSumm,
      (void . try . lexeme) potP,
      (void . try . lexeme) pActionValue,
      (void . try . lexeme) pBoard
    ]
    <?> "final ignores"
  endOffset <- getOffset
  let parsedText = take (endOffset - startOffset) input
  return
    Hand
      { _handTime = _headerTime handHeader,
        _handID = _headerHandID handHeader,
        _handTy = _headerHandTy handHeader,
        _handNetwork = Bovada,
        _handStakes = bb,
        _handActions = allActions,
        _handPlayerMap = players,
        _handSeatMap = seatMap',
        _handText = parsedText
      }

-- handsP is the the highest level parser
handsP :: Parser [Hand]
handsP = between sc eof $ do
  res <- many (lexeme handP)
  _ <- many eol
  return res

parseString ::
  String ->
  Either (ParseErrorBundle String Void) [Hand]
parseString = parse handsP []

-- parseFiles pulls out all the hands from the hands in a list of files
-- TODO make everything concurrent and start testing
parseFiles :: [FilePath] -> IO [Hand]
parseFiles = fmap concat . mapConcurrently parseFileUnsafe

parseFileUnsafe :: FilePath -> IO [Hand]
parseFileUnsafe f = do
  file <- readFile f
  return . runError . parseString $ file
  where
    runError = \case
      Right b -> b
      Left e -> error $ errorBundlePretty e

parseFile ::
  FilePath ->
  IO (Either (ParseErrorBundle String Void) [Hand])
parseFile f = do
  file <- readFile f
  return . parseString $ file

-- parse hands in a directory
-- drop the first two file names '.' and '..'
parseDirectory :: FilePath -> IO [Hand]
parseDirectory dirName = do
  filepaths <- traverseDir (const True) transition [] dirName
  parseFiles filepaths
  where
    transition acc new = if ".txt" `isSuffixOf` new then pure (new : acc) else pure acc

parseInPath :: FilePath -> IO [Hand]
parseInPath fp = do
  isDir <- doesDirectoryExist fp
  if isDir
    then parseDirectory fp
    else parseFile fp >>= \case
            Left _ -> pure []
            Right r -> pure r


traverseDir :: (FilePath -> Bool) -> (b -> FilePath -> IO b) -> b -> FilePath -> IO b
traverseDir validDir transition =
  let go state dirPath =
        do
          names <- listDirectory dirPath
          let paths = map (dirPath </>) names
          (dirPaths, filePaths) <- partitionM doesDirectoryExist paths
          state' <- foldM transition state filePaths -- process current dir
          foldM go state' (filter validDir dirPaths) -- process subdirs
  in go
  where
    partitionM :: Monad m => (a -> m Bool) -> [a] -> m ([a], [a])
    partitionM _ [] = pure ([], [])
    partitionM f (x:xs) = do
        res <- f x
        (as,bs) <- partitionM f xs
        pure ([x | res]++as, [x | not res]++bs)