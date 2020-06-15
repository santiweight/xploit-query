{-# LANGUAGE OverloadedStrings, LambdaCase, OverloadedLabels, RecordWildCards #-}

import qualified GI.Gio as Gio
import qualified GI.Gtk as Gtk
import Data.GI.Base
import qualified Data.Text as T
import Control.Monad

activateApp :: Gtk.Application -> IO ()
activateApp app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello World"
                                   , #defaultHeight := 1000
                                   , #defaultWidth := 1000
                                   ]
    mainPane <- new Gtk.Box []
    rangeGrid <- new Gtk.Grid [ #columnSpacing := 2
                              , #rowSpacing := 2
                              , #widthRequest := 400
                              , #heightRequest := 400
                              ]

    forM_ [0..168] $ \ix -> do
      let (col, row) = quotRem ix 13
      button <- new Gtk.Button [ #label := (T.pack . show $ ix) ]
      Gtk.gridAttach rangeGrid button row col 1 1

    #add mainPane rangeGrid
    #add w mainPane
    #showAll w



main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()