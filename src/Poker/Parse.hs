{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

module Poker.Parse
    ( parseDirectory
    , parseFiles
    , test_hands
    ) where

import System.Directory (getDirectoryContents)
import System.IO
import System.TimeIt
import Data.Void
import Data.Maybe (catMaybes)
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad
import Text.Megaparsec
import Text.Megaparsec.Char

import Poker.Base

type Parser = Parsec Void String

spaceWrap :: Parser a -> Parser a
spaceWrap parser = try (many $ char ' ') *> parser <* try (many $ char ' ')

bracketed :: Parser a -> Parser a
bracketed parser = spaceWrap $ char '[' *> parser <* char ']'

currency ::  Parser Char
currency = oneOf ("$€£" :: [Char])
-- currency = satisfy (\c -> any (c ==) "$£€")
double = fmap read $ some (digitChar <|> char '.')
number = fmap read (some digitChar)
colon = try (many spaceChar) >> try (char ':') >> try (many spaceChar)
sc = many (char ' ')

-- eol = try (string "\n\r")
--     <|> try (string "\r\n")
--     <|> string "\n"
--     <|> string "\r"
--     <?> "end of line"

isSuit char = any (char ==) ("chds" :: String)
isRank char = any (char ==) ("A23456789TJQK" :: String)

suitP :: Parser Suit
suitP = do

    -- suitChar <- lowerChar
    -- let suit = read [suitChar]
    -- return suit

    suit <- fmap (\c -> Map.lookup c str_to_suit_map) (satisfy isSuit <?> "suit")
    case suit of
        Nothing -> mzero
        Just found_suit -> return found_suit

rankP :: Parser Rank
rankP = do
    rank_lookup <- fmap (\c -> Map.lookup c str_to_rank_map) (satisfy isRank)
    case rank_lookup of
        Nothing -> mzero
        Just found_rank -> return found_rank

cardP :: Parser Card
cardP = do
    r <- rankP
    s <- suitP
    return def{rank=r, suit=s}

manyCard = sepBy cardP sc

positionString = do
    try (string "Small Blind")
    <|> try (string "Big Blind")
    <|> try (string "UTG+1")
    <|> try (string "UTG+2")
    <|> try (string "UTG")
    <|> try (string "Dealer")
    <?> "position"

positionP :: Parser Position
positionP = do
    position <- spaceWrap positionString
    option "" $ try (spaceWrap $ string "[ME]")
    case Map.lookup position str_to_position_map of
        Nothing -> mzero
        Just pos -> return pos

amountP = currency *> double <* (try sc)

handInfoP :: Parser Int
handInfoP = do
    string "Bovada Hand #"
    id <- number
    parseDirectory <- (string "  Zone Poker ID#" <|> string " TBL#") >> number >> string " HOLDEM" *> optional (string "ZonePoker") <* string " No Limit - "
    number >> char '-' >> number >> char '-' >> number
    sc
    number >> char ':' >> number >> char ':' >> number
    eol
    return id

amounts_from_toP :: Parser (Double, Double)
amounts_from_toP = liftM2 (,) amountP (string "to " >> amountP)

isAction :: String -> Bool
isAction str = Map.member str str_to_raise_action_map
    || Map.member str str_to_action_map
    || Map.member str str_to_bet_action_map

parens :: Parser a -> Parser a
parens parser = between (char '(') (char ')') parser

actionStrP :: Parser String
actionStrP = do
    temp <- actionStr <* try sc
    if isAction temp
        then return temp
        else mzero

actionStr = try (string "Folds (timeout)")
    <|> try (string "Checks (timeout)")
    <|> try (string "Checks (disconnect)")
    <|> try (string "Checks")
    <|> try (string "Leave(Auto)")
    <|> try (string "Calls")
    <|> try (string "Bets")
    <|> try (string "Posts dead chip")
    <|> try (string "Posts")
    <|> try (string "All-in(raise)")
    <|> try (string "All-in")
    <|> try (string "Return uncalled portion of bet")
    <|> try (string "Table deposit")
    <|> try (string "Raises")
    <|> try (string "Hand result-Side pot")
    <|> try (string "Hand result")
    <|> try (string "Enter(Auto)")
    <|> try (string "Seat sit out")
    <|> try (string "Seat sit down")
    <|> try (string "Folds (disconnect)")
    <|> try (string "Folds (auth)")
    <|> try (string "Folds")
    <|> try (string "Mucks") <* bracketed manyCard <* bracketed (many letterChar)


betActionP :: Double -> Parser ActionValue
betActionP bb = do
    actionStr <- actionStrP
    amount <- amountP
    action <- return $ Map.lookup actionStr str_to_bet_action_map
    case action of
        Nothing -> mzero
        Just new_action -> return $ new_action (amount/bb)

checkActionP :: Parser ActionValue
checkActionP = do
    actionStr <- actionStrP
    case Map.lookup actionStr str_to_action_map of
        Nothing -> mzero
        Just new_action -> return new_action

raiseActionP :: Double -> Parser ActionValue
raiseActionP bb = do
    actionStr <- actionStrP
    (amount_from, amount_to) <- amounts_from_toP
    action <- return $ Map.lookup actionStr str_to_raise_action_map
    case action of
        Nothing -> mzero
        Just new_action -> return $ new_action (amount_from/bb) (amount_to/bb)

showdownActionP :: Parser ActionValue
showdownActionP = do
    try (string "Showdown ") <|> string "Does not show " <|> string "Mucks "
    cards <- bracketed manyCard
    handRank <- (parens (some (letterChar <|> char ' ')))
    return $ Showdown cards handRank

noPosActions =
    [ try $ string "Folds"
    , try $ string "Checks"
    , try $ string "Leave(Auto)"
    , try $ string "Enter(Auto)"
    , try $ string "Seat sit out"
    , try $ string "Seat sit down"
    , try $ string "Seat re-join"
    , try $ string "Calls"
    , try $ string "Bets"
    , try $ string "Posts"
    , try $ string "All-in"
    , try $ string "Return uncalled portion of bet"
    , try $ string "Hand result"
    , try $ string "Raises"
    , try $ string "Table enter user"
    , try $ string "Table leave user"
    , try $ string "Table deposit " <* amountP
    , try $ string "Seat stand"
    , try $ positionP *> string ": Folds & shows " <* bracketed manyCard
    , try $ positionP *> string ": Seat re-join"
    , try $ positionP *> string ": Seat stand"
    , try $ positionP *> string ": Seat sit down"
    , try $ positionP *> string ": Seat sit out"
    , try $ positionP *> string ": Table leave user"
    , try $ positionP *> string ": Table enter user"
    , try $ positionP *> string ": Showdown" *> (parens (some (letterChar <|> char ' ')))
    ]

noPosActionP :: Parser String
noPosActionP = choice (noPosActions) >> eol

actionP :: Double -> Parser Action
actionP bb = do
    position <- positionP <* colon
    act <- try (raiseActionP bb) <|> try (betActionP bb) <|> try checkActionP <|> try showdownActionP
    eol
    return $ PlayerAction position act

dealerP :: Parser String
dealerP = do
    string "Dealer "
    optional $ string " [ME] "
    string ": Set dealer ["
    number >> char ']' >> many (char ' ') >> eol

smallBlindP = do
    string "Small Blind "
    option "" (string " [ME] ") >> string ": Small Blind "
    amountP <* eol

bigBlindP = do
    string "Big Blind "
    option "" (string " [ME] ") >> string ": Big blind "
    amountP <* eol

holeCardsHeadingP = string "*** HOLE CARDS ***" >> eol

flopHeadingP = string "*** FLOP *** "
flopStreetP :: Parser Action
flopStreetP = do
    flopHeadingP
    dealtcards <- bracketed manyCard
    eol
    return $ DealerAction $ FlopDeal dealtcards

turnHeadingP = string "*** TURN *** "
turnStreetP :: Parser Action
turnStreetP = do
    turnHeadingP
    bracketed manyCard
    dealtcards <- spaceWrap (bracketed manyCard)
    eol
    return $ DealerAction $ TurnDeal dealtcards

riverHeadingP = string "*** RIVER *** "
riverStreetP = do
    riverHeadingP
    bracketed manyCard
    dealtcard <- spaceWrap (bracketed manyCard)
    eol
    return $ DealerAction $ RiverDeal dealtcard

holdingP :: Parser (Position, Combo)
holdingP = do
    position <- positionP
    colon >> string "Card dealt to a spot "
    cards <- bracketed manyCard <* eol
    return (position, newCombo cards)

stackP :: Parser (Int, Position, Double)
stackP = do
    seat <- string "Seat " *> number <* colon
    position <- positionP
    stack <- (char '(') >> amountP <* (string "in chips)")
    eol
    return (seat, position, stack)

summaryP = string "*** SUMMARY ***\r\n"

-- summActionP = do
--         try (string "Folded before the ")
--     <|> try (string lost with
potP = string "Total Pot(" *> amountP <* char ')'
-- summP = string "Seat+" >> number >> colon >> positionP >> summActionP



handP = do
    manyTill (satisfy (const True)) (lookAhead handInfoP)
    id <- handInfoP
    stacks <- some stackP
    dealerP
    smallBlindP
    bb <- bigBlindP
    holeCardsHeadingP
    holdings <- many (try holdingP)
    all_actions <- option [] (manyTill (manyTill (actionP bb)(noPosActionP <|> lookAhead summaryP <|> lookAhead flopHeadingP)) (try summaryP <|> lookAhead flopHeadingP))
    -- preflop_actions <- many actionP
    -- flop <- option [] $ flopStreetP
    -- flop_actions <- option [] (manyTill (manyTill actionP (noPosActionP <|> lookAhead summaryP <|> lookAhead turnHeadingP)) (try summaryP <|> lookAhead turnHeadingP))
    -- -- flop_actions <- option [] $ many actionP
    -- turn <- option [] turnStreetP
    -- turn_actions <- option [] (manyTill (manyTill actionP (noPosActionP <|> lookAhead summaryP <|> lookAhead riverHeadingP))(try summaryP <|> lookAhead riverHeadingP))
    -- -- turn_actions <- option [] $ many actionP
    -- river <- option [] $ riverStreetP

    -- river_actions <- option [] (manyTill (manyTill actionP (noPosActionP <|> lookAhead summaryP)) summaryP)

    manyTill (satisfy (const True)) (lookAhead (string "Bovada") <|> "" <$ lookAhead eof)
    -- summaryP
    -- optional potP
    -- optional summP
    many eol

    let hand = Hand { hand_id=id
                , network=Bovada
                , stakes=bb
                , actions=concat all_actions
                , players=Map.fromList holdings
                }
    return hand

handsP :: Parser [Hand]
handsP = many handP <|> [] <$ eof

parseFiles :: [FilePath] -> IO [Hand]
parseFiles (f:fs) = do
    contents <- readFile f
    let hands = case parse handsP [] contents of
                    Left e -> []
                    Right v -> v
    res <- parseFiles fs
    return $ hands ++ res
parseFiles [] = return []

parseDirectory :: FilePath -> IO [Hand]
parseDirectory dirName = do
    filenames <- getDirectoryContents dirName
    hands <- parseFiles (map ((++) dirName) (drop 2 filenames))
    -- timeIt $ putStrLn $ show $ length hands
    return hands

test_hands = parseDirectory "/Users/santi/haskell_exploit/Exploit/src/test_files/Imported Hands/"
-- test_hands = parseFiles ["test_files/bovada-example.txt"]
