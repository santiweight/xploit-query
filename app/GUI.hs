{-# LANGUAGE OverloadedStrings, OverloadedLabels, RecordWildCards #-}

{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}

{- Hello World example of GTK+ documentation. For information please refer to README -}


-- import qualified Data.Text as T
import Data.Text ()

import Poker.ADTParser
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
import Base

import Data.Int
import Data.IORef

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

    rangeLabels <- genLabels
    addLabelsToGrid (zip [0..] rangeLabels) rangeGrid

    positionChecksListBox <- new Gtk.ListBox []
    utgCheck <- new Gtk.CheckButton [ #label := "UTG" ]
    utg1Check <- new Gtk.CheckButton [ #label := "UTG+1" ]
    coCheck <- new Gtk.CheckButton [ #label := "Cut Off" ]
    buCheck <- new Gtk.CheckButton [ #label := "Button" ]
    sbCheck <- new Gtk.CheckButton [ #label := "Small Blind" ]
    bbCheck <- new Gtk.CheckButton [ #label := "Big Blind" ]
    sequence_ $ #add positionChecksListBox <$> [ utgCheck
                                   , utg1Check
                                   , coCheck
                                   , buCheck
                                   , sbCheck
                                   , bbCheck ]

    buttonPane <- new Gtk.Fixed []

    filterSelector <- new Gtk.ComboBoxText []
    sequence_ $ Gtk.comboBoxTextAppendText filterSelector <$> [ T.pack "Fold"
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
    let currentTree = FilterNode (NamedParser "rfi" RFI) def EmptyNode EmptyNode
    currentTreeIO <- newIORef currentTree

    treeBuilderActionBar <- new Gtk.ActionBar []
    addRaiseButton <- new Gtk.Button [ #label := "Add Raise" ]
    addCallButton <- new Gtk.Button [ #label := "Add Call" ]
    removeButton <- new Gtk.Button [ #label := "Remove" ]
    replaceButton <- new Gtk.Button [ #label := "Replace" ]
    computeTreeButton <- new Gtk.Button [ #label := "Compute" ]

    Gtk.actionBarPackStart treeBuilderActionBar addRaiseButton
    Gtk.actionBarPackStart treeBuilderActionBar addCallButton
    Gtk.actionBarPackStart treeBuilderActionBar removeButton
    Gtk.actionBarPackStart treeBuilderActionBar replaceButton
    Gtk.actionBarPackStart treeBuilderActionBar computeTreeButton

    treeBox <- new Gtk.Box [ #orientation := Gtk.OrientationVertical ]

    #add1 rangePane rangeGrid
    #add treeBox treeBuilderActionBar
    #add treeBox treeBuilder
    #add2 rangePane treeBox
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

    toggledButton <- newIORef (Nothing :: (Maybe (Gtk.ToggleButton, TreeAction->IO ())))
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
            , _treeBuilderBox=treeBox
            , _currentTree=currentTreeIO
            , _toggledButton=toggledButton
            , _treeBuilderActionBar=treeBuilderActionBar
            }

    (newTreeBuilder, (_, treeButtons)) <- treeToButtons components treeBuilder currentTree id (0,0) "root"
  -- care was sequenced fmaps
    print <$> Gtk.widgetGetName newTreeBuilder
    atomicWriteIORef treeBuilderIO newTreeBuilder
    on computeTreeButton #clicked $ computeTree components hands
    on computeButton #clicked $ computeRange components hands
    on addRaiseButton #clicked $ alterTree components $ Add $ NamedParser "rfi" RFI
    on addCallButton #clicked $ alterTree components $ Add $ NamedParser "call" CallAST
    on removeButton #clicked $ alterTree components Remove
    on replaceButton #clicked $ alterTree components $ Replace $ NamedParser "rfi" RFI

    #showAll w

    return ()
alterTree components@Components
                    { _toggledButton=toggledButtonIO
                    } treeAction = do
    maybeToggle <- readIORef toggledButtonIO
    case maybeToggle of
        Nothing -> return ()
        Just (_, updater) -> updater treeAction

displayDialog str = do
    dlg <- new Gtk.MessageDialog [ #text := "Input a number!" ]
    #show dlg

computeRange :: Components -> [Hand] -> IO ()
computeRange components@Components
                            { _handsToUseEntry=handsNumberEntry
                            , _filterComboBox=filterComboBox
                            , _rangeGrid=rangeGrid
                            , _rangeLabels=rangeLabels
                            } hands = do
    maybeHandNumber <- getHandNumber components
    case maybeHandNumber of
        Nothing -> displayDialog "Number expected"
        Just handNumber -> do
            print handNumber
            actionFilter <- getAction components
            positions <- getPositions components
            let range = buildRange (opps rfi) (take handNumber hands)
            displayRange range actionFilter components
            Gtk.widgetResetStyle rangeGrid
            return ()

computeTree :: Components -> [Hand] -> IO ()
computeTree components@Components
                            { _handsToUseEntry=handsNumberEntry
                            , _window=window
                            , _currentTree=currentTreeIO
                            , _treeBuilderBox=treeBuilderBox
                            , _treeBuilder=treeBuilderIO
                            , _treeBuilderActionBar=treeBuilderActionBar
                            , _rangeLabels=rangeLabels
                            }
                    hands = do
    maybeHandNumber <- getHandNumber components
    case maybeHandNumber of
        Nothing -> displayDialog "Number expected"
        Just handNumber -> do
            tree <- readIORef currentTreeIO
            let wipedTree = resetTree tree
            let newTree = foldr (\h t -> runTree t (h, actions h)) wipedTree $ take handNumber hands
            -- let newTree = runTree def def
            -- print newTree
            atomicWriteIORef currentTreeIO newTree
            currentTree <- readIORef currentTreeIO
            treeBuilder <- readIORef treeBuilderIO
            Gtk.widgetDestroy treeBuilder
            newTreeBuilder <- new Gtk.Grid [ #columnSpacing := 2
                                        , #rowSpacing := 2
                                        , #widthRequest := 500
                                        , #heightRequest := 150
                                        ]
            (newTreeBuilder, _) <- treeToButtons components newTreeBuilder currentTree id (0,0) "root"
            atomicWriteIORef treeBuilderIO newTreeBuilder
            #add treeBuilderBox newTreeBuilder
            #showAll window
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
        "Call" -> return AnyCallIndex
        "Raise" -> return AnyRaiseIndex
        "RaiseBetween 2.7 3" -> return $ RaiseBetween (read . T.unpack $ fromNumStr) (read . T.unpack $ toNumStr)
        "AllInRaise" -> return AnyAllInRaiseIndex

getHandNumber :: Components -> IO (Maybe Int)
getHandNumber components@Components
    { _handsToUseEntry=handsToUseEntry
    } = do
    numberStr <- Gtk.getEntryText handsToUseEntry
    return . readMaybe . T.unpack $ numberStr

filterByList [] [] = []
filterByList (b:bs) (x:xs) = if b
                             then x : filterByList bs xs
                             else filterByList bs xs

addLabelsToGrid [] _ = return ()
addLabelsToGrid ((i, (label, _)):ss) grid = do
    handName <- Gtk.widgetGetName label
    Gtk.widgetResetStyle label
    let (col, row) = quotRem i 13
    Gtk.gridAttach grid label row col 1 1
    addLabelsToGrid ss grid

treeToButtons :: Components -> Gtk.Grid -> FilterTree -> (FilterTree -> FilterTree) -> (Int32, Int32) -> T.Text -> IO (Gtk.Grid, (Int32, [(Gtk.ToggleButton, TreeAction -> IO ())]))
treeToButtons components grid filtN@FilterNode
                                    { _filt=filt
                                    , _filterrange=range
                                    , _left=left
                                    , _right=right } updateF (row, col) name = do
    toggle <- new Gtk.ToggleButton [ #label := name
                                   , #heightRequest := 50
                                   , #widthRequest := 50
                                   ]
    Gtk.gridAttach grid toggle col row 1 1
    let newUpdateF = updateFilterTree components updateF filtN
    (grid, (rowL, togglesLeft)) <- treeToButtons components grid left (\node -> updateF $ filtN{_left=node}) (row, col+2) (T.pack $ _name filt)
    (grid, (rowR, togglesRight)) <- treeToButtons components grid right (\node -> updateF $ filtN{_right=node}) (rowL,col) (T.pack $ _name filt)
    on toggle #clicked $ updateToggledButton components (toggle, newUpdateF)
    -- index <- getAction components
    on toggle #clicked $ displayRange range AnyRaiseIndex components
    return (grid, (rowR, (toggle, newUpdateF) : togglesLeft ++ togglesRight))
treeToButtons _ grid EmptyNode _ (row, _) name = return (grid, (row+2, []))

updateToggledButton Components
                        {_toggledButton=toggledButtonIO }
                    (toggle, updateF) = do
        res <- Gtk.toggleButtonGetActive toggle
        case res of
            True -> do
                    maybeToggle <- readIORef toggledButtonIO
                    case maybeToggle of
                        Just (prevToggledButton, _) -> Gtk.setToggleButtonActive prevToggledButton False
                        Nothing -> return ()
                    Gtk.setToggleButtonActive toggle True
                    atomicWriteIORef toggledButtonIO $ Just (toggle, updateF)
            False -> atomicWriteIORef toggledButtonIO Nothing

updateFilterTree :: Components -> (FilterTree -> FilterTree) -> FilterTree -> TreeAction -> IO ()
updateFilterTree components@Components
                                { _window=window
                                , _treeBuilder=treeBuilderIO
                                , _treeBuilderBox=treeBuilderBox
                                , _currentTree=currentTreeIO
                                , _treeBuilderActionBar=treeBuilderActionBar
                                } updateF filtT modification = do
    case modification of
        Add filt -> atomicWriteIORef currentTreeIO $
                (case filtT of

                    FilterNode f r EmptyNode row -> updateF $ filtT{_left=FilterNode filt r EmptyNode EmptyNode}
                    FilterNode f r l row -> updateF $ filtT{_left=FilterNode filt r EmptyNode l})
        Remove -> atomicWriteIORef currentTreeIO $
          updateF (case _right filtT of
                        EmptyNode -> EmptyNode
                        node -> node)
        Replace filt -> atomicWriteIORef currentTreeIO (updateF $ filtT{_filt=filt})
    currentTree <- readIORef currentTreeIO
    newTreeBuilder <- new Gtk.Grid [ #columnSpacing := 2
                                , #rowSpacing := 2
                                , #widthRequest := 500
                                , #heightRequest := 150
                                ]
    (newTreeBuilder, (_, buttons)) <- treeToButtons components newTreeBuilder currentTree id (0, 0) "root"
    treeBuilder <- readIORef treeBuilderIO
    Gtk.widgetDestroy treeBuilder
    atomicWriteIORef treeBuilderIO newTreeBuilder
    #add treeBuilderBox newTreeBuilder
    #showAll window

displayRange :: ShapedRangeC -> ActionIndex -> Components -> IO ()
displayRange rangeC index Components{ _rangeLabels=rangeLabels } = do
        let shaped_range = rangeC ^. total_shapedrange . range
        let display_range = findRange index rangeC ^. range
        mapM_ (\(hand, (label, prov)) -> do
            let handcount = Map.findWithDefault def hand display_range ^. count :: Int
            let handfreq = case shaped_range ^. at hand of
                  Nothing -> 0
                  Just x -> fromIntegral handcount / fromIntegral x
            let cssStyle = generateComboLabel (handfreq*100) hand
                  -- if handfreq <= 100
                  --               then generateComboLabel 0 hand
                  --               else generateComboLabel (100*handfreq) hand
            Gtk.cssProviderLoadFromData prov $ C.pack cssStyle
            ) $ zip allShapedHands rangeLabels

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
    & range %~ Map.union (countR2 ^. range)

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()