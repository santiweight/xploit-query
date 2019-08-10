{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}

{- Hello World example of GTK+ documentation. For information please refer to README -}

module Main where

-- import qualified Data.Text as T
import Data.Text ()

import qualified GI.Gio as Gio
import qualified GI.Gdk as Gdk
import qualified GI.Gtk as Gtk
import Data.GI.Base
-- import GI.Gtk.ComboBox
import Data.Word
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as C

import Data.Map ((!))
import qualified Data.Map as Map

import Control.Lens hiding (Fold)
import Control.Lens.TH
import Data.Maybe

import System.IO.Unsafe

import Poker.Base
import Poker.Parse
import Poker.Range
import Poker.HandFilter

import Base

cssPriority :: Word32
cssPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER :: Word32

printHello :: IO ()
printHello = putStrLn "Hello, World!"

activateApp :: Gtk.Application -> IO ()
activateApp app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello World"
                                   , #defaultHeight := 1000
                                   , #defaultWidth := 1000
                                   ]
    pane <- new Gtk.Paned []
    grid <- new Gtk.Grid [ #columnSpacing := 2
                         , #rowSpacing := 2
                         , #widthRequest := 400
                         ]
    btn <- new Gtk.Button [ #label := "test"
                          , #name := "test"]
    -- on btn #clicked $ Gtk.widgetDestroy w
    prov <- new Gtk.CssProvider []
    Gtk.cssProviderLoadFromData prov $ "button#test { background:black ; }"
    styleContext <- Gtk.widgetGetStyleContext btn
    Gtk.styleContextAddProvider
                            styleContext
                            prov
                            cssPriority
    Gtk.styleContextToString styleContext [] >>= (putStrLn . T.unpack)

    bbox <- new Gtk.ButtonBox []
    on btn #clicked $ changeStyle bbox prov
    addLabelsToGrid (zip [0..] genLabels) grid

    buttonPane <- new Gtk.Fixed []

    filterSelector <- new Gtk.ComboBoxText []
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "Fold"
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "Raise"
    selectorBox <- new Gtk.Box []
    #add selectorBox filterSelector

    handsToUseEntry <- new Gtk.Entry []
    handsToUseBox <- new Gtk.Box []
    #add handsToUseBox handsToUseEntry

    buttonPaneList <- new Gtk.ListBox []

    #add bbox btn
    #add1 pane grid
    #add buttonPaneList bbox
    #add buttonPaneList selectorBox
    #add2 pane buttonPaneList
    #add w pane

    hands <- test_hands
    -- let range = buildRange (accumulator rfi) (take 30000 hands)
    let range = buildRange (rfiOppPos [UTG, UTG_1]) (take 30000 hands)
    on btn #clicked $ displayRange range Fold grid genLabels


    computeButton <- new Gtk.Button []
    computeBox <- new Gtk.ButtonBox []
    #add computeBox computeButton
    #add buttonPaneList computeBox
    #add buttonPaneList handsToUseBox

    -- on btn #clicked $ Gtk.resetWidgets
    -- btn1 <- new Gtk.Button [ #label := "Hello World!"]
    -- on btn1 #clicked printHello
    -- on btn1 #clicked $ Gtk.widgetDestroy w
    -- #add bbox btn1
    -- #add bbox btn

    #showAll w

    let components = Components
            { _rangeLabels=genLabels
            , _handsToUseEntry= handsToUseEntry
            , _filterComboBox=filterSelector
            , _computeButton=computeButton
            }
    on computeButton #clicked $ computeRange components
    computeBox <- new Gtk.ButtonBox []

    return ()

computeRange :: Components -> IO ()
computeRange components@Components
                            { _handsToUseEntry=handsNumberEntry
                            , _filterComboBox=filterComboBox
                            } = do
    numbertext <- Gtk.entryGetText handsNumberEntry
    putStrLn . T.unpack $ numbertext
    return ()

-- addLabelsToGrid :: [(Int32, (Gtk.CssProvider, Gtk.Label))] -> Gtk.Grid -> IO ()
addLabelsToGrid [] _ = return ()
addLabelsToGrid ((i, (prov, label)):ss) grid = do
    style <- Gtk.widgetGetStyleContext label
    Gtk.cssProviderLoadFromData prov $ "label#22 { background:black ; }"
    -- (putStrLn . T.unpack) =<< Gtk.cssProviderToString prov
    Gtk.styleContextAddProvider style prov cssPriority
    let (col, row) = quotRem i 13
    Gtk.gridAttach grid label row col 1 1
    addLabelsToGrid ss grid

generateComboLabel freqInv hand = let freq = 100-freqInv in
        "label#" ++ show hand ++ " { background : linear-gradient( lightgrey 0%, lightgrey " ++ show freq ++ "%, green " ++ show (freq) ++ "%, green 100% ); }" :: String

displayRange :: ShapedRangeC -> ActionValue -> Gtk.Grid -> [(Gtk.CssProvider, Gtk.Label)] -> IO ()
displayRange rangeC action grid labels = do
        let shaped_range = rangeC ^. total_shapedrange . range
        let display_range = rangeC ^. ranges . at action . non def.range
        mapM_ (\(hand, (prov, label)) -> do
            let handcount = (Map.findWithDefault def hand display_range) ^. count :: Int
            let handfreq = fromIntegral(handcount) / fromIntegral (fromMaybe 0 $ shaped_range^.at hand)
            let cssStyle = case handfreq <= 100 of
                                False -> generateComboLabel (0) hand
                                True -> generateComboLabel (100*handfreq) hand
            styleContext <- Gtk.widgetGetStyleContext label
            Gtk.cssProviderLoadFromData prov $ C.pack cssStyle
            Gtk.styleContextAddProvider
                                    styleContext
                                    prov
                                    cssPriority
            ) $ zip allShapedHands labels


changeStyle widget prov = do
        Gtk.cssProviderLoadFromData prov $ "button#test { background:red ; }"
        style <- Gtk.widgetGetStyleContext widget
        Gtk.styleContextAddProvider
                                style
                                prov
                                cssPriority
        return ()

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
