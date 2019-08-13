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
import Text.Read
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

    positionChecksListBox <- new Gtk.ListBox []
    utgCheck <- new Gtk.CheckButton [ #label := "UTG" ]
    utg1Check <- new Gtk.CheckButton [ #label := "UTG+1" ]
    coCheck <- new Gtk.CheckButton [ #label := "Cut Off" ]
    buCheck <- new Gtk.CheckButton [ #label := "Button" ]
    sbCheck <- new Gtk.CheckButton [ #label := "Small Blind" ]
    bbCheck <- new Gtk.CheckButton [ #label := "Big Blind" ]
    #add positionChecksListBox utgCheck
    #add positionChecksListBox utg1Check
    #add positionChecksListBox coCheck
    #add positionChecksListBox buCheck
    #add positionChecksListBox sbCheck
    #add positionChecksListBox bbCheck

    buttonPane <- new Gtk.Fixed []

    filterSelector <- new Gtk.ComboBoxText []
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "Fold"
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "Raise"
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "RaiseBetween 2.7 3"
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "AllInRaise"
    Gtk.comboBoxTextAppendText filterSelector $ T.pack "Call"
    selectorBox <- new Gtk.Box [#orientation := Gtk.OrientationHorizontal ]
    fromEntry <- new Gtk.Entry []
    toEntry <- new Gtk.Entry []
    #add selectorBox filterSelector
    #add selectorBox fromEntry
    #add selectorBox toEntry

    handsToUseEntry <- new Gtk.Entry []
    handsToUseBox <- new Gtk.Box []
    #add handsToUseBox handsToUseEntry

    buttonPaneList <- new Gtk.ListBox []

    #add bbox btn
    #add1 pane grid
    #add buttonPaneList bbox
    #add buttonPaneList selectorBox
    #add buttonPaneList positionChecksListBox
    #add2 pane buttonPaneList
    #add w pane

    hands <- test_hands
    -- let range = buildRange (accumulator rfi) (take 30000 hands)
    -- let range = buildRange (rfiOppPos [UTG, UTG_1]) (take 30000 hands)
    -- on btn #clicked $ displayRange range FoldIndex genLabels


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
            , _fromEntry=fromEntry
            , _toEntry=toEntry
            , _utgCheck=utgCheck
            , _utg1Check=utg1Check
            , _coCheck=coCheck
            , _buCheck=buCheck
            , _sbCheck=sbCheck
            , _bbCheck=bbCheck
            }
    on computeButton #clicked $ computeRange components hands
    computeBox <- new Gtk.ButtonBox []

    return ()

displayDialog str = do
    dlg <- new Gtk.Dialog []
    label <- new Gtk.Label [ #label := "Input a number!" ]
    #add dlg label
    #show dlg

computeRange :: Components -> [Hand] -> IO ()
computeRange components@Components
                            { _handsToUseEntry=handsNumberEntry
                            , _filterComboBox=filterComboBox
                            } hands = do
    -- let range = buildRange (rfiOppPos [UTG, UTG_1]) (take 30000 hands)
    -- on btn #clicked $ displayRange range Fold genLabels
    maybeHandNumber <- getHandNumber components
    case maybeHandNumber of
        Nothing -> displayDialog "Number expected"
        Just handNumber -> do
            putStrLn . show $ handNumber
            actionFilter <- getAction components
            positions <- getPositions components

            let range = buildRange (rfiOppPos positions) (take handNumber hands)
            displayRange range actionFilter genLabels

            return ()

getPositions :: Components -> IO [Position]
getPositions components@Components
            { _utgCheck=utgCheck
            , _utg1Check=utg1Check
            , _coCheck=coCheck
            , _buCheck=buCheck
            , _sbCheck=sbCheck
            , _bbCheck=bbCheck
            } = do
        utg <- Gtk.toggleButtonGetActive utgCheck
        utg1 <- Gtk.toggleButtonGetActive utg1Check
        co <- Gtk.toggleButtonGetActive coCheck
        bu <- Gtk.toggleButtonGetActive buCheck
        sb <- Gtk.toggleButtonGetActive sbCheck
        bb <- Gtk.toggleButtonGetActive bbCheck
        return $ filterByList [utg,utg1,co,bu,sb,bb] listPosition

getAction :: Components -> IO ActionIndex
getAction components@Components
                        { _filterComboBox=filterComboBox
                        , _fromEntry=fromEntry
                        , _toEntry=toEntry
                        } = do
    filterStr <- Gtk.comboBoxTextGetActiveText filterComboBox
    fromNumStr <- Gtk.entryGetText fromEntry
    toNumStr <- Gtk.entryGetText toEntry
    case filterStr of
        "Fold" -> return FoldIndex
        "Call" -> return $ AnyCallIndex
        "Raise" -> return $ RaiseIndex (read . T.unpack $ fromNumStr)
        "RaiseBetween 2.7 3" -> return $ RaiseBetween (read . T.unpack $ fromNumStr) (read . T.unpack $ toNumStr)
        "AllInRaise" -> return $ AnyAllInRaiseIndex

getHandNumber components@Components
    { _handsToUseEntry=handsToUseEntry
    } = do
    numberStr <- Gtk.getEntryText handsToUseEntry
    return . readMaybe . T.unpack $ numberStr

filterByList [] [] = []
filterByList (b:bs) (x:xs) =
    case b of
        True -> x : filterByList bs xs
        False -> filterByList bs xs

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

-- displayRange :: ShapedRangeC -> ActionValue -> [(Gtk.CssProvider, Gtk.Label)] -> IO ()
-- displayRange rangeC action labels = do
--         let shaped_range = rangeC ^. total_shapedrange . range
--         let display_range = rangeC ^. ranges . at action . non def.range
--         mapM_ (\(hand, (prov, label)) -> do
--             let handcount = (Map.findWithDefault def hand display_range) ^. count :: Int
--             let handfreq = fromIntegral(handcount) / fromIntegral (fromMaybe 0 $ shaped_range^.at hand)
--             let cssStyle = case handfreq <= 100 of
--                                 False -> generateComboLabel (0) hand
--                                 True -> generateComboLabel (100*handfreq) hand
--             styleContext <- Gtk.widgetGetStyleContext label
--             Gtk.cssProviderLoadFromData prov $ C.pack cssStyle
--             Gtk.styleContextAddProvider
--                                     styleContext
--                                     prov
--                                     cssPriority
--             ) $ zip allShapedHands labels

displayRange :: ShapedRangeC -> ActionIndex -> [(Gtk.CssProvider, Gtk.Label)] -> IO ()
displayRange rangeC index labels = do
        let shaped_range = rangeC ^. total_shapedrange . range
        let display_range = findRange index rangeC ^. range
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

-- findMatchingRange ranC index = do
--      = ranC ^. ranges .non def
--     return def :: RangeCollection ActionValue

findRange index ranC =
    let unionF = unionIndexRange index in
        Map.foldlWithKey unionF def (ranC ^. ranges)


unionIndexRange :: ActionIndex -> ShapedRange -> ActionValue -> ShapedRange -> ShapedRange
unionIndexRange index resRange k ran =
    case isActionInIndex k index of
        True ->
            resRange & count +~ ran ^. count
                     & range %~ Map.unionWith combineCountRanges (ran ^. range)
        False -> resRange

combineCountRanges :: CountRange -> CountRange -> CountRange
combineCountRanges countR1 countR2 = countR1
    & count +~ countR2 ^. count
    & range %~ (Map.union $ countR2 ^. range)



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
