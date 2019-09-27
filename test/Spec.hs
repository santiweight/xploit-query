import Test.Tasty
import Test.Tasty.HUnit

import Poker.Base
import Poker.Parse
import Poker.Range
import Poker.HandFilter


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

main :: IO ()
main = do
  defaultMain (testGroup "Running Parsers" [rfiTest, cardReadTests])

rfiTest :: TestTree
rfiTest = testGroup "Testing rfi"
  [ testCase "fold, raise, raise" $
    assertEqual "fold, raise, raise" [raiseBU, foldUTG] (parseTest rfi [foldUTG, raiseBU, raiseBU])
  , testCase "raise, fold" $
    assertEqual "raise, fold" [raiseBU] (parseTest rfi [raiseBU, foldUTG])
  ]

cardReadTests :: TestTree
cardReadTests = testGroup "Testing card read functions"
  [ testCase "2h4c" $
    assertEqual "2h4c" (HoldEm ((Card Two Heart), (Card Four Club))) (read "2h4c")
  , testCase "2h2h" $
    assertEqual "2h2h" "Exception: no parse; both cards are the same" (read "2h2h")
  , testCase "AdAh" $
    assertEqual "AdAh" (HoldEm ((Card Ace Diamond), (Card Ace Heart))) (read "AdAh")
  ]

handReadTests :: TestTree
handReadTests = testGroup "Testing card read functions"
  [ testCase "2h" $
    assertEqual "2h" (Card Two Heart) (read "2h")
  , testCase "Ad" $
    assertEqual "Ah" (Card Ace Heart) (read "Ah")
  ]



-- add5Test :: TestTree
-- add5Test = testCase "Testing add5"
--   (assertEqual "Should add 5 to get 10" 10 (add5 5))
