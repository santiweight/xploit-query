{-# LANGUAGE BlockArguments #-}

module Base where

import Poker.Base

import Test.Tasty.Hspec

import Control.Exception (evaluate)

import Data.Either.Combinators

import Poker.Game.Bovada
import Poker.Game.Internal

main :: IO ()
main = hspec $ do
  describe "findBet action" $ do
    it "findBet (Bet 5) is 5" $
      findBet (Bet 5) `shouldBe` 5

    it "findBet (Call 10) is 10" $
      findBet (Call 10) `shouldBe` 10

    it "findBet Fold is 0" $
      findBet Fold `shouldBe` 0

    it "findBet FoldTimeout is 0" $
      findBet FoldTimeout `shouldBe` 0

    it "findBet (Raise 10 15) is 10" $
      findBet (Raise 10 15) `shouldBe` 10

    it "findBet (AllIn 15) is 15" $
      findBet (AllIn 15) `shouldBe` 15
  bovadaGameTest

bovadaGameTest :: SpecWith ()
bovadaGameTest =
  describe "Monadic actions for BovadaGame monad" $ do
    it "increasePot 10" $
      evalBovadaGame (increasePot 10) defState `shouldBe` Right 10
    it "decreasePot 10" $
      evalBovadaGame (decreasePot 10) defState{_potSize=20} `shouldBe` Right 10
    it "decreasePot below 0 throws NegativePotSize error" $
      (mapLeft fromBundleError $ evalBovadaGame (decreasePot 10) defState)
        `shouldBe` Left NegativePotSize

checkCard = hspec $ do
  describe "Check Read instance of Card is Correct" $ do
    it "read As" $ read "As" `shouldBe` Card Ace Spade
    it "read Ah" $ read "Ah" `shouldBe` Card Ace Heart
    it "read Ad" $ read "Ad" `shouldBe` Card Ace Diamond
    it "read Ac" $ read "Ac" `shouldBe` Card Ace Club
    it "read Ks" $ read "Ks" `shouldBe` Card King Spade
    it "read Kh" $ read "Kh" `shouldBe` Card King Heart
    it "read Kd" $ read "Kd" `shouldBe` Card King Diamond
    it "read Kc" $ read "Kc" `shouldBe` Card King Club
    it "read Qs" $ read "Qs" `shouldBe` Card Queen Spade
    it "read Qh" $ read "Qh" `shouldBe` Card Queen Heart
    it "read Qd" $ read "Qd" `shouldBe` Card Queen Diamond
    it "read Qc" $ read "Qc" `shouldBe` Card Queen Club
    it "read Js" $ read "Js" `shouldBe` Card Jack Spade
    it "read Jh" $ read "Jh" `shouldBe` Card Jack Heart
    it "read Jd" $ read "Jd" `shouldBe` Card Jack Diamond
    it "read Jc" $ read "Jc" `shouldBe` Card Jack Club
    it "read Ts" $ read "Ts" `shouldBe` Card Ten Spade
    it "read Th" $ read "Th" `shouldBe` Card Ten Heart
    it "read Td" $ read "Td" `shouldBe` Card Ten Diamond
    it "read Tc" $ read "Tc" `shouldBe` Card Ten Club
    it "read 9s" $ read "9s" `shouldBe` Card Nine Spade
    it "read 9h" $ read "9h" `shouldBe` Card Nine Heart
    it "read 9d" $ read "9d" `shouldBe` Card Nine Diamond
    it "read 9c" $ read "9c" `shouldBe` Card Nine Club
    it "read 8s" $ read "8s" `shouldBe` Card Eight Spade
    it "read 8h" $ read "8h" `shouldBe` Card Eight Heart
    it "read 8d" $ read "8d" `shouldBe` Card Eight Diamond
    it "read 8c" $ read "8c" `shouldBe` Card Eight Club
    it "read 7s" $ read "7s" `shouldBe` Card Seven Spade
    it "read 7h" $ read "7h" `shouldBe` Card Seven Heart
    it "read 7d" $ read "7d" `shouldBe` Card Seven Diamond
    it "read 7c" $ read "7c" `shouldBe` Card Seven Club
    it "read 6s" $ read "6s" `shouldBe` Card Six Spade
    it "read 6h" $ read "6h" `shouldBe` Card Six Heart
    it "read 6d" $ read "6d" `shouldBe` Card Six Diamond
    it "read 6c" $ read "6c" `shouldBe` Card Six Club
    it "read 5s" $ read "5s" `shouldBe` Card Five Spade
    it "read 5h" $ read "5h" `shouldBe` Card Five Heart
    it "read 5d" $ read "5d" `shouldBe` Card Five Diamond
    it "read 5c" $ read "5c" `shouldBe` Card Five Club
    it "read 4s" $ read "4s" `shouldBe` Card Four Spade
    it "read 4h" $ read "4h" `shouldBe` Card Four Heart
    it "read 4d" $ read "4d" `shouldBe` Card Four Diamond
    it "read 4c" $ read "4c" `shouldBe` Card Four Club
    it "read 3s" $ read "3s" `shouldBe` Card Three Spade
    it "read 3h" $ read "3h" `shouldBe` Card Three Heart
    it "read 3d" $ read "3d" `shouldBe` Card Three Diamond
    it "read 3c" $ read "3c" `shouldBe` Card Three Club
    it "read 2s" $ read "2s" `shouldBe` Card Two Spade
    it "read 2h" $ read "2h" `shouldBe` Card Two Heart
    it "read 2d" $ read "2d" `shouldBe` Card Two Diamond
    it "read 2c" $ read "2c" `shouldBe` Card Two Club

testReadCardFails :: IO ()
testReadCardFails = do
  failStrs <- take 22 . lines <$> readFile "/Users/santi/haskell_exploit/Exploit/test/BaseCards.csv"
  hspec $ mapM_ checkFailReadCard failStrs
  where
    checkFailReadCard cardStr = it ("read " <> cardStr <> " fails") $
      evaluate (read cardStr :: Card) `shouldThrow` anyErrorCall
      -- evaluate (read cardStr :: Card) `shouldThrow` errorCall ("Expected Rank string; instead found: " <> cardStr)
    -- FIXME make this more robust
