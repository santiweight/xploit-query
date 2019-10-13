module Poker.FilterTest
  ( testActions
  , ParserAST(..)
  , NamedParser(..)
  , rfiAST
  , testHand
  , runAST
  , foldUTG
  , defAction2
  , raiseBU
  , raiseUTG
  , defAction4
  , dealerAction
  , bet
  , raise
  )


  where

import Poker.Base
import Poker.HandFilter
import Poker.ADTParser

import Data.Map (Map)
import Data.Map as Map hiding (foldr, map, filter, fold, take)

foldUTG = PlayerAction UTG Fold
defAction2 = PlayerAction BU Fold
raiseBU = PlayerAction BU (Raise 2 1)
raiseUTG = PlayerAction UTG (Raise 2 1)
defAction4 = PlayerAction UTG (Call 1)
dealerAction = DealerAction (FlopDeal [])

openBU = [foldUTG, raiseBU]
openUTG = [foldUTG, raiseUTG]
foldActions = [foldUTG,foldUTG,foldUTG,foldUTG, dealerAction]
testActions = [foldUTG, defAction2, raiseBU, defAction4]
realHand = [defAction2, dealerAction, defAction2, raiseBU]
testHand = Hand
            { hand_id=1234
            , network=Bovada
            , stakes=0.05
            , players=fromList [ (UTG, read "Th8h")
                               , (UTG_1, read "6h4h")
                               , (UTG_2, read "Ks8s")
                               , (BU, read "AcJs")
                               , (SB, read "Ad9d")
                               , (BB, read "Kd5d")
                               ]
            , actions=[ PlayerAction UTG_1 Leave
                      , PlayerAction UTG_2 Leave
                      , PlayerAction UTG Fold
                      , PlayerAction UTG_1 Fold
                      , PlayerAction UTG_2 $ Call 1.0
                      , PlayerAction BU $ Raise 4.4 4.4
                      , PlayerAction SB Fold
                      , PlayerAction SB Leave
                      , PlayerAction BB Fold
                      , PlayerAction BB Leave
                      , PlayerAction UTG_2 $ Call 3.4]
            }