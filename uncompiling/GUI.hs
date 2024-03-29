{-# LANGUAGE OverloadedStrings, LambdaCase, OverloadedLabels, RecordWildCards #-}

{-# OPTIONS_GHC -fno-warn-unused-do-bind #-}

{- Hello World example of GTK+ documentation. For information please refer to README -}

-- TODO Abstract components to state monad

-- import qualified Data.Text as T
import Data.Text ()

import Control.Arrow
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
import Control.Monad
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

    parserSelector <- newParserSelector
    rangeViewFilterSelector <- newActionIndexSelector

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
    let currentTree = FilterNode (NamedParser "Root" Nop) def EmptyNode EmptyNode
    currentTreeIO <- newIORef currentTree

    treeBuilderActionBar <- new Gtk.ActionBar []
    computeTreeButton <- new Gtk.Button [ #label := "Compute" ]
    addParserButton <- new Gtk.Button [ #label := "Custom Parser" ]

    Gtk.actionBarPackStart treeBuilderActionBar computeTreeButton
    Gtk.actionBarPackStart treeBuilderActionBar addParserButton

    treeBox <- new Gtk.Box [ #orientation := Gtk.OrientationVertical ]

    #add1 rangePane rangeGrid
    #add treeBox treeBuilderActionBar
    #add treeBox treeBuilder
    #add2 rangePane treeBox
    #add1 mainPane rangePane
    #add buttonPaneList $ _actionIndexSelectorBox rangeViewFilterSelector
    #add buttonPaneList $ _parserSelectorBox parserSelector
    #add2 mainPane buttonPaneList
    #add w mainPane

    hands <- testHands

    #add buttonPaneList handsToUseBox

    toggledButton <- newIORef (Nothing :: (Maybe (Gtk.ToggleButton, TreeAction->IO ())))
    let components = Components
            { _application=app
            , _window=w
            , _rangeLabels=rangeLabels
            , _handsToUseEntry= handsToUseEntry
            , _parserSelector=parserSelector
            , _rangeViewFilterSelector=rangeViewFilterSelector
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
    atomicWriteIORef treeBuilderIO newTreeBuilder
    on computeTreeButton #clicked $ computeTree components hands
  -- TODO remove following line - this is legacy code stuff
    -- on computeButton #clicked $ computeRange components hands
  -- I think the semantics here are a little funky - it should be a request with a new type
  -- Add RFIAdd for example
  -- THOUGHT addFunc = Add $ NamedParser "rfi" . RFI 
  -- then addFunc <*> getPositions
    on addParserButton #clicked $ join $ alterTree components <$> (left Add <$> getNamedParser parserSelector)

    #showAll w

    return ()

alterTree components@Components
                    { _toggledButton=toggledButtonIO
                    } eitherTreeAction =
  case eitherTreeAction of
    Right err -> showErrorDialog err
    Left treeAction -> do
      maybeToggle <- readIORef toggledButtonIO
      case maybeToggle of
          Nothing -> return ()
          Just (_, updater) -> updater treeAction

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
            atomicWriteIORef currentTreeIO newTree
            currentTree <- readIORef currentTreeIO
            treeBuilder <- readIORef treeBuilderIO
            Gtk.widgetDestroy treeBuilder
            newTreeBuilder <- new Gtk.Grid [ #columnSpacing := 2
                                        , #rowSpacing := 2
                                        , #widthRequest := 500
                                        , #heightRequest := 150
                                        ]
            (newTreeBuilder, _) <- treeToButtons components newTreeBuilder currentTree id (0,0) "Root"
            atomicWriteIORef treeBuilderIO newTreeBuilder
            #add treeBuilderBox newTreeBuilder
            #showAll window
            return ()

getHandNumber :: Components -> IO (Maybe Int)
getHandNumber components@Components
    { _handsToUseEntry=handsToUseEntry
    } = do
    numberStr <- Gtk.getEntryText handsToUseEntry
    return . readMaybe . T.unpack $ numberStr


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
    toggle <- new Gtk.ToggleButton [ #label := T.pack $ _name filt
                                   , #heightRequest := 50
                                   , #widthRequest := 50
                                   ]
    Gtk.gridAttach grid toggle col row 1 1
    let newUpdateF = updateFilterTree components updateF filtN
    (grid, (rowL, togglesLeft)) <-
        treeToButtons components grid left (\node -> updateF $ filtN{_left=node}) (row, col+2) (T.pack $ _name filt)
    (grid, (rowR, togglesRight)) <-
        treeToButtons components grid right (\node -> updateF $ filtN{_right=node}) (rowL,col) (T.pack $ _name filt)
    on toggle #clicked $ updateToggledButton components (toggle, newUpdateF)
    -- index <- getAction components
    on toggle #clicked $ displayRange range components
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
    (newTreeBuilder, (_, buttons)) <- treeToButtons components newTreeBuilder currentTree id (0, 0) "Root"
    treeBuilder <- readIORef treeBuilderIO
    Gtk.widgetDestroy treeBuilder
    atomicWriteIORef treeBuilderIO newTreeBuilder
    #add treeBuilderBox newTreeBuilder
    #showAll window

displayRange :: ShapedRangeC -> Components -> IO ()
displayRange rangeC components@Components{..} = do
        let shaped_range = rangeC ^. total_shapedrange . range
        -- This feels a little unsafe TODO go declarative babyyy
        -- This should be totally different to what it is
        -- This index is totally different from the one in the parser
        getActionIndex (_rangeViewFilterSelector) >>= \case
          Right err -> showErrorDialog err
          Left index -> do
            let display_range = findRange index rangeC ^. range
            mapM_ (\(hand, (label, prov)) -> do
                let handcount = Map.findWithDefault def hand display_range ^. count :: Int
                let handfreq = case shaped_range ^. at hand of
                      Nothing -> 0
                      Just x -> fromIntegral handcount / fromIntegral x
                let cssStyle = generateComboLabel (handfreq*100) hand
                Gtk.cssProviderLoadFromData prov $ C.pack cssStyle
                ) $ zip allShapedHands _rangeLabels

getName :: Components -> IO String
getName Components{..} = do
  let name = "test"
  --TODO implement parser name getting using name getter under
  -- NamedParserSelector
  -- name <- Gtk.getEntryText _parserNameEntry
  return . T.unpack $ name

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
