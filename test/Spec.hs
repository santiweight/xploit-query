import Test.Tasty
import Test.Tasty.HUnit

import Poker.Base
import Poker.Parse.Base

import Data.Map (Map)
import Data.Map as Map hiding (foldr, map, filter, fold, take)

-- foldUTG = PlayerAction UTG Fold Hero
-- defAction2 = PlayerAction BU Fold Hero
-- raiseBU = PlayerAction BU (Raise 2 1) Hero
-- raiseUTG = PlayerAction UTG (Raise 2 1) Hero
-- defAction4 = PlayerAction UTG (Call 1) Hero
-- dealerAction = DealerAction (FlopDeal []) 

-- openBU = [foldUTG, raiseBU]
-- openUTG = [foldUTG, raiseUTG]
-- foldActions = [foldUTG,foldUTG,foldUTG,foldUTG, dealerAction]
-- testActions = [foldUTG, defAction2, raiseBU, defAction4]
-- realHand = [defAction2, dealerAction, defAction2, raiseBU]
-- testHand = Hand
--             { hand_id=1234
--             , network=Bovada
--             , stakes=0.05
--             , _playerMap=Map.fromList . map (\(pos, seat, str) -> (seat, mkPlayer pos seat str)) $
--                          [ (UTG, 1, "Th8h")
--                          , (UTG1, 2, "6h4h")
--                          , (UTG2, 3, "Ks8s")
--                          , (BU, 4, "AcJs")
--                          , (SB, 5, "Ad9d")
--                          , (BB, 6, "Kd5d")
--                          ]
--             , actions=[ TableAction UTG1 Leave
--                       , TableAction UTG2 Leave
--                       , PlayerAction UTG Fold Hero
--                       , PlayerAction UTG1 Fold Hero
--                       , PlayerAction UTG2 (Call 1.0) Hero
--                       , PlayerAction BU (Raise 4.4 4.4) Hero
--                       , PlayerAction SB Fold Hero
--                       , TableAction SB Leave
--                       , PlayerAction BB Fold Hero
--                       , TableAction BB Leave
--                       , PlayerAction UTG2 (Call 3.4) Hero]
--             , _seatMap=Map.fromList [ (UTG, 1)
--                                     , (UTG1, 2)
--                                     , (UTG2, 3)
--                                     , (BU, 4)
--                                     , (SB, 5)
--                                     , (BB, 6)
--                                     ]
--             }
--   where
--     mkPlayer pos seat holding = Player { name = Nothing
--                                , playerPosition = Just pos
--                                , _playerHolding = Just $ read holding
--                                , stack = 25
--                                , seat = seat
--                                }

main :: IO ()
main = defaultMain $ testCase "Test" (1 @?= 3)
  -- (testGroup "Running Parsers" [rfiTest, cardReadTests])

-- rfiTest :: TestTree
-- rfiTest = testGroup "Testing rfi"
--   [ testCase "fold, raise, raise" $
--     assertEqual "fold, raise, raise" [raiseBU, foldUTG] (parseTest (rfi listPosition) [foldUTG, raiseBU, raiseBU])
--   , testCase "raise, fold" $
--     assertEqual "raise, fold" [raiseBU] (parseTest (rfi listPosition) [raiseBU, foldUTG])
--   ]

-- cardReadTests :: TestTree
-- cardReadTests = testGroup "Testing card read functions"
--   [ testCase "2h4c" $
--     assertEqual "2h4c" (HoldEm ((Card Two Heart), (Card Four Club))) (read "2h4c")
--   , testCase "2h2h" $
--     assertEqual "2h2h" "Exception: no parse; both cards are the same" (read "2h2h")
--   , testCase "AdAh" $
--     assertEqual "AdAh" (HoldEm ((Card Ace Diamond), (Card Ace Heart))) (read "AdAh")
--   ]

-- handReadTests :: TestTree
-- handReadTests = testGroup "Testing card read functions"
--   [ testCase "2h" $
--     assertEqual "2h" (Card Two Heart) (read "2h")
--   , testCase "Ah" $
--     assertEqual "Ah" (Card Ace Heart) (read "Ah")
--   ]

-- oneHotTests :: TestTree
-- oneHotTests = testGroup "Testing one-hot encodings of different types"
--   [ testCase "Hearts" $
--     assertEqual "Hearts" [1,0,0,0] (toOneHot Heart)
--   ]

-- config = ConfigEnv { _betEncoding = EncodeOneHot
--                    , _actionEncoding = ActionSimpleEncoding
--                    , _rankEncoding = EncodeOneHot
--                    , _suitEncoding = EncodeOneHot
--                    , _handEncoding = HandEncoding True EncodeOneHot EncodeOneHot
--                    , _shapeEncoding = EncodeOneHot}


-- encodingTests :: TestTree
-- encodingTests = testGroup "Testing encodings of different types"
--   [ testCase "Hearts" $
--     assertEqual "Hearts" [0.0,0.0,1.0,0.0] (runReader (encode Heart) config) (read "2h")
--   , testCase "Ad" $
--     assertEqual "Ah" (Card Ace Heart) (read "Ah")
--   ]

-- enc





-- -- add5Test :: TestTree
-- -- add5Test = testCase "Testing add5"
-- --   (assertEqual "Should add 5 to get 10" 10 (add5 5))
