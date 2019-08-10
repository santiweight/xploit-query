{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}

module Base
    ( Components(..)
    , genLabels
    )
    where

import Poker.Base (ShapedHand, allShapedHands)
import Data.Map (Map)
import qualified GI.Gtk as Gtk
import Data.GI.Base
import qualified Data.Text as T
import System.IO.Unsafe

data Components = Components
    { _rangeLabels :: [(Gtk.CssProvider, Gtk.Label)]
    , _handsToUseEntry :: Gtk.Entry
    , _filterComboBox :: Gtk.ComboBoxText
    , _computeButton :: Gtk.Button
    }

genLabels :: [(Gtk.CssProvider, Gtk.Label)]
genLabels = do
    (i, hand) <- zip [0..] allShapedHands
    let prov = unsafePerformIO $ new Gtk.CssProvider []
    let label = unsafePerformIO $ new Gtk.Label [ #label := T.pack $ show hand
                              , #name := T.pack $ show hand
                              , #xalign := 1
                              , #yalign := 1
                              , #heightRequest := 50
                              , #widthRequest := 50
                              ]
    return (prov, label)
