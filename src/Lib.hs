{-# LANGUAGE QuasiQuotes                      #-}

module Lib
    (
    ) where

-- import Poker
-- import Control.Exception
-- import Control.Monad
-- import Text.Read
-- import Text.Regex.PCRE
-- import Debug.Trace
-- -- import Text.Regex.Posix.String
-- import Text.Format
-- import System.IO
-- import Text.ParserCombinators.ReadP
-- -- import Text.ParserCombinators.Parsec.Expr
-- -- import Text.ParserCombinators.Parsec.Language
-- import qualified Text.ParserCombinators.Parsec.Token as Token
-- import Data.Map (Map)
-- import qualified Data.Map as Map


-- -- parse_amount :: String -> Maybe Int
-- -- parse_amount str =
-- --     parseMaybe amtParser str

-- -- amtParser = do
-- --     direction <- numbers 3
-- --     speed <- numbers 2 <|> numbers 3
-- --     unit <- string "KT" <|> string "MPS"
-- --     return speed

-- -- main :: IO ()
-- -- main = do
-- --     let match = ("$0.75" =~ (format "{0}" [amount_re]) :: String)
-- --     putStrLn match
-- --     putStrLn $ ("UTG+1 : Calls $0.75" =~ action_re :: String)
-- --     putStrLn $ ("$0...75" =~ amount_re :: String)

-- -- someFunc :: IO ()
-- -- someFunc = putStrLn $ " there" =~ "rrre"
-- -- main = do
-- --     handle <- openFile "/Users/santi/haskell_exploit/Exploit/src/bovada.txt" ReadMode
-- --     contents <- hGetContents handle
-- --     putStr contents
-- --     hClose handle

-- -- _GEN_AMT_RE = "[$,€](?P<amt{}>\d+(?:.\d+)?)".format
-- -- _POSITION_RE = "(?P<pos>UTG(\+[12])?|Dealer|Small Blind|Big Blind)\s*(\[ME\])?\s*"
-- -- _CARD_RE = "([1-9TJQKA][schd])"
-- -- _ACTION_RE = "{position}: (?P<action>Folds|Leave(Auto)|Raises|Calls|All-in) ({amt_from} to {amt}|{amt})".format(amt=_AMT_RE, amt_from=_GEN_AMT_RE('_from'), position=_POSITION_RE)
-- -- action_regex = "{position}: (?P<action>Folds|Leave(Auto)|Raises|Calls|All-in) ({amt_from} to {amt}|{amt})".format(amt=_AMT_RE, amt_from=_GEN_AMT_RE('_from'), position=_POSITION_RE)
-- -- parse_action
-- -- main = someFunc

-- parse_hand_info :: ParsingFunction
-- parse_hand_info hand [hand_id] = return hand {hand_id = (readMaybe hand_id :: Maybe Int)}

-- parse_stack :: ParsingFunction
-- parse_stack hand inp@[seatStr, positionStr, amountStr] = trace (show hand ++ show inp) $ do
--     new_pos <- Map.lookup positionStr str_to_position_map
--     let seat = readMaybe seatStr :: Maybe Int
--     -- player <- Map.lookup new_pos (players hand)
--     let new_players = Map.insert new_pos def{position= return new_pos, seat=seat, stack=readMaybe amountStr :: Maybe Float} (players hand)
--     return hand { players = new_players}
-- parse_stack _ m = error "incorrect match"

-- type ParsingFunction = Hand -> [String] -> Maybe Hand

-- parse_preflop_action :: ParsingFunction
-- -- parse_preflop_action hand [positionStr, actionStr, amt_to] = do
-- --     pos <- Map.lookup positionStr str_to_position_map
-- --     return hand { preflop = (preflop hand) ++ [read (action++amt_to)] }
-- -- parse_preflop_action hand [action, amt_from, amt_to] =
-- --     return hand { preflop = (preflop hand) ++ [read (action++amt_from++amt_to)] }
-- parse_preflop_action  hand l= trace (show hand ++ show l) $ return hand

-- parse_flop_action :: ParsingFunction
-- parse_flop_action hand [action, amt_to] =
--     return hand { flop = (flop hand) ++ [read (action++amt_to)] }
-- parse_flop_action hand [action, amt_from, amt_to] =
--     return hand { flop = (flop hand) ++ [read (action++amt_from++amt_to)] }

-- parse_turn_action :: ParsingFunction
-- parse_turn_action hand [action, amt_to] =
--     return hand { turn = (turn hand) ++ [read (action++amt_to)] }
-- parse_turn_action hand [action, amt_from, amt_to] =
--     return hand { turn = (turn hand) ++ [read (action++amt_from++amt_to)] }
-- -- parse_turn_action Hand {turn=fl} [action, amt_from, amt_to] =
-- --     return Hand { turn = fl ++ [read (action++amt_from++amt_to)] }
-- -- parse_turn_action Hand {turn=fl} [action, amt_to] =
-- --     return Hand { turn = fl ++ [read (action++amt_to)] }

-- parse_river_action :: ParsingFunction
-- parse_river_action hand [action, amt_to] =
--     return hand { river = (river hand) ++ [read (action++amt_to)] }
-- parse_river_action hand [action, amt_from, amt_to] =
--     return hand { river = (river hand) ++ [read (action++amt_from++amt_to)] }
-- -- parse_river_action Hand {river=fl} [action, amt_from, amt_to] =
-- --     return Hand { river = fl ++ [read (action++amt_from++amt_to)] }
-- -- parse_river_action Hand {river=fl} [action, amt_to] =
-- --     return Hand { river = fl ++ [read (action++amt_to)] }

-- pass :: ParsingFunction
-- pass hand _= return hand

-- parse_cards :: ParsingFunction
-- parse_cards hand ls = return hand{board=ls}
-- -- parse_cards hand (cardStr:cs) = return hand{board=read cardStr : read_cards cs}
--     -- where read_cards (c:cs) = read c : read_cards cs
--     --       read_cards []     = []
-- -- parse_cards hand [] = return hand

-- -- parse_preflop_action :: ParsingFunction
-- -- parse_preflop_action hand ls = return hand

-- parse_holding :: ParsingFunction
-- parse_holding hand [positionStr, holdingStr] = do
--     new_pos <- Map.lookup positionStr str_to_position_map
--     -- let holding = read holdingStr :: Holding
--     player <- Map.lookup new_pos (players hand)
--     let new_players = Map.insert new_pos player{position=return new_pos, holding=return holdingStr} (players hand)
--     return hand { players = new_players }
-- parse_holding hand match = error $ (show match) ++ "bad match"

-- match_regex :: String -> String -> [String]
-- match_regex line regex =
--     -- let (m:ms) = (line =~ regex :: [[String]])
--     let (_,_,_,ms) = (line =~ regex :: (String,String,String,[String]))
--     in ms

-- type Rule = ([Char], String, ParsingFunction)

-- match_regexes :: Hand -> String -> [Rule] -> Maybe Hand
-- match_regexes hand line ((_,regex,fn):rs) = trace (show line ++ show regex) $ do
--     let match = match_regex line regex
--     case match of
--         [] -> match_regexes hand line rs
--         ms -> fn hand ms
-- match_regexes hand _ [] = Nothing


-- parse_hand :: Hand -> [String] -> [[Rule]] -> Maybe Hand
-- parse_hand hand _ [] = return hand
-- parse_hand hand lines@(line:ls) rules@(ruleset:rs) = trace (show line) $ do
--         let res_hand = match_regexes hand line ruleset
--         case res_hand of
--             Nothing -> parse_hand hand lines rs
--             Just new_hand -> parse_hand new_hand ls rules

-- parse_lines :: [String] -> [Hand]
-- parse_lines lines =
--     let hand = parse_hand def lines bovada_parsing_rules in
--     case hand of
--         Just hand -> return hand
--         Nothing ->  []

-- parse_file :: String -> IO ()
-- parse_file fileName = do
--     handle <- openFile fileName ReadMode
--     contents <- hGetContents handle
--     let next_hand = parse_lines (lines contents)
--     print next_hand
--     -- putStrLn $ show $ next_hand

-- -- main = do
-- --     handle <- openFile "/Users/santi/haskell_exploit/Exploit/src/bovada.txt" ReadMode
-- --     contents <- hGetContents handle
-- --     putStr contents
-- --     hClose handle

-- amount_re = "[$,€](\\d+(?:.\\d+)?)"
-- position_re = "(UTG(?:\\+[12])?|Dealer|Small Blind|Big Blind)(?:\\s*\\[ME\\])?"
-- card_re = "([1-9TJQKA][schd])"
-- possible_actions_re = "(Folds|Leave\\(Auto\\)|Raises|Bets|Calls|All-in|Return uncalled portion of bet)"
-- action_re = format "{0} : {1}(?: {2} to {2}| {2})?" [position_re, possible_actions_re, amount_re]

-- bovada_parsing_rules :: [[Rule]] --String -> String -> any)]]
-- bovada_parsing_rules =[-- NAME, REGEX, value extractor METHOD NAM
--         [ -- Hand_info
--             ("HAND_INFO", "Bovada Hand #(\\d+)  Zone Poker ID#\\d+ HOLDEMZonePoker No Limit - \\d+-\\d+-\\d+ \\d+:\\d+:\\d+", parse_hand_info),
--             ("STACK", format "\\bSeat (\\d): {0} \\({1} in chips\\)" [position_re, amount_re] :: String, parse_stack),
--             ("dealer", "Dealer : Set dealer \\[(\\d)\\]" :: String, pass),
--             ("sb", format "Small Blind (?: \\[ME\\] )?: Small Blind {0}" [amount_re] :: String, pass),
--             ("bb", format "Big Blind (?: \\[ME\\] )?: Big blind {0}" [amount_re], pass),
--             ("HOLE_CARDS", "(\\*\\*\\* HOLE CARDS \\*\\*\\*)", pass)
--         ],
--         [ -- Holdings
--             ("HOLDING", format "{0} : Card dealt to a spot \\[(.*)\\]" [position_re], parse_holding),
--             ("turn_actions", action_re, parse_preflop_action),
--             ("FLOP", format "\\*\\*\\* FLOP \\*\\*\\* \\[{0} {0} {0}\\]" [card_re], parse_cards)
--             ],
--         [ -- Flop
--           ("TURN", format "\\*\\*\\* TURN \\*\\*\\* \\[{0} {0} {0}\\] \\[{0}\\]" [card_re], parse_cards),
--           ("flop_actions", action_re, parse_flop_action)
--         ],
--         [ -- Turn
--           ("RIVER", format "\\*\\*\\* RIVER \\*\\*\\* \\[{0} {0} {0} {0}\\] \\[{0}\\]" [card_re] :: String, parse_cards),
--           ("turn_actions", action_re, parse_turn_action)
--         ],
--         [ -- River
--           ("SUMMARY", "(\\*\\*\\* SUMMARY \\*\\*\\*)" :: String, pass),
--           ("river_actions", action_re, parse_river_action)
--         ],
--         [ -- Summary
--           ("HOLDING", format "({}) : Card dealt to a spot \\[(.*)\\]" [position_re], pass)
--         ]
--     ]
