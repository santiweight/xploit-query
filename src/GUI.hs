{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLabels #-}

import qualified GI.Gtk as Gtk
import qualified GI.Gio as Gio
import qualified GI.GtkSource as S

import Control.Monad
import Data.GI.Base

import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import System.Environment (getProgName, getArgs)

printHello :: IO ()
printHello = putStrLn "Hello, World!"

activateApp :: Gtk.Application -> IO ()
activateApp app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello  World"
                                   , #defaultHeight := 500
                                   , #defaultWidth := 500
                                   ]
    tab <- new Gtk.Table [ ]

    bbox <- new Gtk.ButtonBox [ #orientation := Gtk.OrientationHorizontal ]
    replicateM_ 100 $ do
        btn <- new Gtk.Button []
        on btn #clicked printHello
        on btn #clicked $ Gtk.widgetDestroy w
        #add bbox btn
    #add tab bbox

    #add w tab


    #showAll w
    return ()

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
