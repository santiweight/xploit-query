{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

module Base
    ( Components(..)
    , genLabels
    , seqLabels
    , generateComboLabel
    , cssPriority
    )
    where

import Poker.Base (ShapedHand, allShapedHands)
import Data.Map (Map)
import qualified GI.Gtk as Gtk
import Data.GI.Base
import Data.GI.CodeGen.Util
import qualified Data.Text as T
import System.IO.Unsafe
import Data.Word
import Data.IORef
import Poker.HandFilterTree

cssPriority :: Word32
cssPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER :: Word32

data Components = Components
    { _window :: Gtk.ApplicationWindow
    , _rangeLabels :: [(Gtk.Label, Gtk.CssProvider)]
    , _handsToUseEntry :: Gtk.Entry
    , _filterComboBox :: Gtk.ComboBoxText
    , _computeButton :: Gtk.Button
    , _fromEntry :: Gtk.Entry
    , _toEntry :: Gtk.Entry
    , _utgCheck :: Gtk.CheckButton
    , _utg1Check :: Gtk.CheckButton
    , _coCheck :: Gtk.CheckButton
    , _buCheck :: Gtk.CheckButton
    , _sbCheck :: Gtk.CheckButton
    , _bbCheck :: Gtk.CheckButton
    , _rangeGrid :: Gtk.Grid
    , _mainPane :: Gtk.Paned
    , _rangePane :: Gtk.Paned
    , _treeBuilder :: IORef Gtk.Grid
    , _currentTree :: IORef FilterTree
    , _toggledButton :: IORef (Maybe (Gtk.ToggleButton, (TreeAction -> IO ())))
    , _treeBuilderActionBar :: Gtk.ActionBar
    -- , _toggleButtons :: IORef [(Gtk.ToggleButton, IO ())]
    }


generateComboLabel freqInv hand = let freq = 100-freqInv in
        "label#" ++ show hand ++ " { background : linear-gradient( lightgrey 0%, lightgrey " ++ show freq ++ "%, green " ++ show (freq) ++ "%, green 100% ); }" :: String

data HandBox = HandBox
                    { _handNameLabel :: Gtk.Label
                    , _handCountLabel :: Gtk.Label
                    }

genLabels :: IO [(Gtk.Label, Gtk.CssProvider)]
genLabels = seqLabels allShapedHands

seqLabels :: [ShapedHand] -> IO [(Gtk.Label, Gtk.CssProvider)]
seqLabels [] = return []
seqLabels (hand:hs) = do
    rest <- seqLabels hs
    prov <- new Gtk.CssProvider []
    label <- new Gtk.Label [ #label := tshow hand
                              , #name := tshow hand
                              , #xalign := 1
                              , #yalign := 1
                              , #heightRequest := 50
                              , #widthRequest := 50
                              ]
    styleContext <- Gtk.widgetGetStyleContext label
    Gtk.styleContextAddProvider
                            styleContext
                            prov
                            cssPriority
    return $ (label, prov) : rest




