{-# LANGUAGE BlockArguments #-}

import Poker.Base

import Test.Tasty.Hspec

import Control.Exception (evaluate)

import Data.Either.Combinators

import Poker.HandFilter
import Poker.Game.Bovada

import Control.Lens hiding (Fold)

main :: IO ()
main = hspec $ do
  describe "Testing item returns first action after emulation" $ do
    it "input: [foldAction]; output: (foldAction, [])" $
      evalBovadaParser item [foldAction] defState `shouldBe` SumResult (foldAction,[])
    it "parser: item; input: [preflopDeal]; output: (preflopDeal, [])" $
      evalBovadaParser item [preflopDeal] defState `shouldBe` SumResult (preflopDeal,[])
    it "Bad deal (RiverDeal) throws GameError" $
      evalBovadaParser item [riverDeal] defState `shouldSatisfy` isGameE
    it "accumulate playerAction returns first playerAction and accumulates it" $
      evalBovadaParser (accumulate playerAction) [mkDummyAction Fold] defState `shouldBe`
      SumResult (mkDummyPA Fold,[mkDummyPA Fold])
    it "parser: item; input: []; throws FilterE" $
      evalBovadaParser item [] defState `shouldSatisfy` isFilterE
    it "parser: (item >> use potSize); input: [betAction 5]; returns: SumResult (5, [])" $
      evalBovadaParser (item >> use potSize) [betAction 5] defState
      `shouldBe` SumResult (5, [])
    it "parser: (accumulate item >> use potSize); input: [betAction 5]; returns: SumResult (5, [betAction 5])" $
      evalBovadaParser (item >> use potSize) [betAction 5] defState
      `shouldBe` SumResult (5, [])
    it "parser: (item >> use potSize); input: [betAction 5]; returns: SumResult (5, [betAction 5])" $
      evalBovadaParser (accumulate playerAction >> use potSize) [toAction $ mkDummyPA Fold] defState
      `shouldBe` SumResult (0, [mkDummyPA Fold])


      where
        foldAction = mkDummyAction Fold
        betAction amount = mkDummyAction $ Bet amount
        preflopDeal = MkDealerAction PlayerDeal
        riverDeal = MkDealerAction $ RiverDeal (read "Ah")
        isGameE (SumGameE _) = True
        isGameE _ = False
        isFilterE (SumFilterE _) = True
        isFilterE _ = False

--   describe "Read instance of Card" $ do
--     context "with cards strings that go suit then club" $ do
--       it "fails on dK" $
--         evaluate (read "dK" :: Card) `shouldThrow` errorCall "Expected Rank string; instead found: dK"

--       it "fails on h2" $
--         evaluate (read "h2" :: Card) `shouldThrow` errorCall "Expected Rank string; instead found: h2"

--     it "can parse integers" $
--       read "10" `shouldBe` (10 :: Int)

--     it "can parse floating-point numbers" $
--       read "2.5" `shouldBe` (2.5 :: Float)

--   describe "findBet action" $ do
--     it "findBet (Bet 5)" $
--       findBet (Bet 5) `shouldBe` 5

--     it "findBet (Call 10)" $
--       findBet (Call 10) `shouldBe` 10

--     it "findBet Fold" $
--       findBet Fold `shouldBe` 0

--     it "findBet FoldTimeout" $
--       findBet FoldTimeout `shouldBe` 0

--     it "findBet (Raise 10 15)" $
--       findBet (Raise 10 15) `shouldBe` 10

--     it "findBet (AllIn 15)" $
--       findBet (AllIn 15) `shouldBe` 15
--   bovadaGameTest

-- bovadaGameTest :: SpecWith ()
-- bovadaGameTest =
--   describe "Monadic actions for BovadaGame monad" $ do
--     it "increasePot 10" $
--       evalBovadaGame (increasePot 10) defState `shouldBe` Right 10
--     it "decreasePot 10" $
--       evalBovadaGame (decreasePot 10) defState{_potSize=20} `shouldBe` Right 10
--     it "decreasePot below 0 throws NegativePotSize error" $
--       (mapLeft fromBundleError $ evalBovadaGame (decreasePot 10) defState)
--         `shouldBe` Left NegativePotSize