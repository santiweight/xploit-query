{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}

{- Hello World example of GTK+ documentation. For information please refer to README -}


-- import qualified Data.Text as T
import Data.Text ()

import qualified GI.Gio as Gio
import qualified GI.Gdk as Gdk
import qualified GI.Gtk as Gtk
import Data.GI.Base
-- import GI.Gtk.ComboBox
import qualified Data.Text as T
import Text.Read
import qualified Data.ByteString.Char8 as C

import Data.Map ((!))
import qualified Data.Map as Map

import Control.Lens hiding (Fold)
import Control.Lens.TH
import Data.Maybe

import System.IO.Unsafe
import Control.Monad.IO.Class

import Poker.Base
import Poker.Parse
import Poker.Range
import Poker.HandFilter
import Poker.HandFilterTree

import Data.Int
import Data.IORef
import Base

gridTest :: Gtk.Application -> IO ()
gridTest app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello World"
                                   , #defaultHeight := 1000
                                   , #defaultWidth := 1000
                                   ]
    grid <- new Gtk.Grid [ #columnSpacing := 2
                         , #rowSpacing := 2
                         , #widthRequest := 400
                         , #heightRequest := 400
                         ]
    return ()

activateApp :: Gtk.Application -> IO ()
activateApp app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello World"
                                   , #defaultHeight := 1000
                                   , #defaultWidth := 1000
                                   ]
    mainPane <- new Gtk.Paned []
    rangePane <- new Gtk.Paned [ #orientation := Gtk.OrientationVertical ]
    rangeGrid <- new Gtk.Grid [ #columnSpacing := 2
                         , #rowSpacing := 2
                         , #widthRequest := 400
                         , #heightRequest := 400
                         ]
    btn <- new Gtk.Button [ #label := "test"
                          , #name := "test"]
    layout <- new Gtk.Layout [ #name := "test"
                                , #widthRequest := 50
                                , #heightRequest := 50
                                ]


    rangeLabels <- genLabels
    addLabelsToGrid (zip [0..] rangeLabels) rangeGrid

    positionChecksListBox <- new Gtk.ListBox []
    utgCheck <- new Gtk.CheckButton [ #label := "UTG" ]
    utg1Check <- new Gtk.CheckButton [ #label := "UTG+1" ]
    coCheck <- new Gtk.CheckButton [ #label := "Cut Off" ]
    buCheck <- new Gtk.CheckButton [ #label := "Button" ]
    sbCheck <- new Gtk.CheckButton [ #label := "Small Blind" ]
    bbCheck <- new Gtk.CheckButton [ #label := "Big Blind" ]
    sequence $ #add positionChecksListBox <$> [ utgCheck
                                   , utg1Check
                                   , coCheck
                                   , buCheck
                                   , sbCheck
                                   , bbCheck ]

    buttonPane <- new Gtk.Fixed []

    filterSelector <- new Gtk.ComboBoxText []
    sequence $ Gtk.comboBoxTextAppendText filterSelector <$> [ T.pack "Fold"
                                                             , T.pack "Raise"
                                                             , T.pack "RaiseBetween 2.7 3"
                                                             , T.pack "AllInRaise"
                                                             , T.pack "Call" ]
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

    treeBuilder <- new Gtk.Grid [ #name := "test"
                                , #columnSpacing := 2
                                , #rowSpacing := 2
                                , #widthRequest := 500
                                , #heightRequest := 150
                                ]
    treeBuilderIO <- newIORef treeBuilder
    let currentTree = FilterNode rfi EmptyNode EmptyNode
    currentTreeIO <- newIORef $ currentTree

    #add1 rangePane rangeGrid
    #add2 rangePane treeBuilder
    #add1 mainPane rangePane
    #add buttonPaneList selectorBox
    #add buttonPaneList positionChecksListBox
    #add2 mainPane buttonPaneList
    #add w mainPane


    hands <- test_hands

    computeButton <- new Gtk.Button []
    computeBox <- new Gtk.ButtonBox []
    #add computeBox computeButton
    #add buttonPaneList computeBox
    #add buttonPaneList handsToUseBox


    let components = Components
            { _window=w
            , _rangeLabels=rangeLabels
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
            , _rangeGrid=rangeGrid
            , _rangePane=rangePane
            , _mainPane=mainPane
            , _treeBuilder=treeBuilderIO
            , _currentTree=currentTreeIO
            }

    (newTreeBuilder, (_, treeButtons)) <- treeToButtons components treeBuilder currentTree id (0,0) "root"
    fmap putStrLn $ fmap show $ Gtk.widgetGetName newTreeBuilder
    newTreeBuilderIO <- newIORef newTreeBuilder
    let components = components { _treeBuilder=newTreeBuilderIO }
    on computeButton #clicked $ computeRange components hands
    computeBox <- new Gtk.ButtonBox []

    #showAll w

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
                            , _rangeGrid=rangeGrid
                            , _rangeLabels=rangeLabels
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
            displayRange range actionFilter components
            Gtk.widgetResetStyle rangeGrid

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
        "Raise" -> return $ AnyRaiseIndex
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

addLabelsToGrid [] _ = return ()
addLabelsToGrid ((i, (label, _)):ss) grid = do
    handName <- Gtk.widgetGetName label
    Gtk.widgetResetStyle label
    let (col, row) = quotRem i 13
    Gtk.gridAttach grid label row col 1 1
    addLabelsToGrid ss grid

treeToButtons :: Components -> Gtk.Grid -> FilterTree -> (FilterTree -> FilterTree) -> (Int32, Int32) -> T.Text -> IO (Gtk.Grid, (Int32, [Gtk.Button]))
treeToButtons components grid filtN@FilterNode
                                    { _filt=filt
                                    , _left=left
                                    , _right=right } updateF (r, c) name = do
    btn <- new Gtk.Button [ #label := name
                          , #heightRequest := 50
                          , #widthRequest := 50
                          ]
    putStrLn $ show r
    putStrLn $ show c
    Gtk.gridAttach grid btn c r 1 1
    on btn #clicked $ updateFilterTree components updateF filtN
    (grid, (treeWidth, togglesLeft)) <- treeToButtons components grid left (\node -> updateF $ filtN{_left=node}) (r, c+1) "left"
    (grid, (treeWidth, togglesRight)) <- treeToButtons components grid right (\node -> updateF $ filtN{_right=node}) (r+treeWidth,c) "right"
    return $ (grid, (treeWidth, togglesLeft ++ togglesRight))
treeToButtons _ grid EmptyNode _ (_, _) name = return $ (grid, (1, []))


updateFilterTree :: Components -> (FilterTree -> FilterTree) -> FilterTree -> IO ()
updateFilterTree components@Components
                                { _window=window
                                , _treeBuilder=treeBuilderIO
                                , _currentTree=currentTreeIO
                                , _rangePane=rangePane
                                } updateF filtT = do
    atomicWriteIORef currentTreeIO $ (case filtT of
                                            FilterNode f EmptyNode r -> updateF $ filtT{_left=FilterNode rfi EmptyNode EmptyNode}
                                            FilterNode f l r -> updateF $ filtT{_left=FilterNode rfi EmptyNode l})
    currentTree <- readIORef currentTreeIO
    newTreeBuilder <- new Gtk.Grid [ #columnSpacing := 2
                                , #rowSpacing := 2
                                , #widthRequest := 500
                                , #heightRequest := 150
                                ]
    (newTreeBuilder, (_, buttons)) <- treeToButtons components newTreeBuilder currentTree (\node -> node) (0, 0) "root"
    putStrLn "here"
    treeBuilder <- readIORef treeBuilderIO
    Gtk.widgetDestroy treeBuilder
    atomicWriteIORef treeBuilderIO newTreeBuilder
    #add2 rangePane newTreeBuilder
    res <- Gtk.panedGetChild2 rangePane
    case res of
        Nothing -> putStrLn "failure"
        otherwise -> putStrLn "success"
    #showAll window




displayRange :: ShapedRangeC -> ActionIndex -> Components -> IO ()
displayRange rangeC index components@Components
                                        { _rangeLabels=rangeLabels
                                        } = do
        let shaped_range = rangeC ^. total_shapedrange . range
        let display_range = findRange index rangeC ^. range
        mapM_ (\(hand, (label, prov)) -> do
            let handcount = (Map.findWithDefault def hand display_range) ^. count :: Int
            let handfreq = fromIntegral(handcount) / fromIntegral (fromMaybe 0 $ shaped_range^.at hand)
            let cssStyle = case handfreq <= 100 of
                                False -> generateComboLabel (0) hand
                                True -> generateComboLabel (100*handfreq) hand
            Gtk.cssProviderLoadFromData prov $ C.pack cssStyle
            ) $ zip allShapedHands rangeLabels
        return ()

findRange index ranC =
    let unionF = unionIndexRange index in
        Map.foldlWithKey unionF def (ranC ^. ranges)


unionIndexRange :: ActionIndex -> ShapedRange -> ActionValue -> ShapedRange -> ShapedRange
unionIndexRange index resRange k ran =
    case (ActionValueIndex k) == index of
        True ->
            resRange & count +~ ran ^. count
                     & range %~ Map.unionWith combineCountRanges (ran ^. range)
        False -> resRange

combineCountRanges :: CountRange -> CountRange -> CountRange
combineCountRanges countR1 countR2 = countR1
    & count +~ countR2 ^. count
    & range %~ (Map.union $ countR2 ^. range)

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
