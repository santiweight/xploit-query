{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLabels #-}

import qualified GI.Gtk as Gtk
import qualified GI.Gdk as Gdk
import GI.Gtk.Objects.CssProvider
import qualified GI.Gio as Gio

import Debug.Trace

import Control.Monad
import Data.GI.Base

import Data.Word
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as C
import qualified Data.Text.IO as TIO
import System.Environment (getProgName, getArgs)

cssPriority :: Word32
cssPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER :: Word32

generateComboLabel freq = do
 res <- "label, GtkButton { background : linear-gradient( lightgrey 0%, lightgrey " ++ show freq ++ "%, green " ++ show (freq) ++ "%, green 100% ); }"
 trace (show res) $ do
 return res

activateApp :: Gtk.Application -> IO ()
activateApp app = do
    w <- new Gtk.ApplicationWindow [ #application := app
                                   , #title := "Haskell Gi - Examples - Hello  World"
                                   , #defaultHeight := 500
                                   , #defaultWidth := 500
                                   ]

    grid <- new Gtk.Grid [
                           #columnSpacing := 2,
                           #rowSpacing := 2,
                           #widthRequest := 400
                         ]

                         -- makeComboFreqStyle freq =


    maybeScreen <- Gdk.screenGetDefault
    -- comboProv <- Gtk.cssProviderGetDefault
    -- Gtk.cssProviderLoadFromPath comboProv "comboStyle.ui"
    -- case maybeScreen of
    --     Just screen -> Gtk.styleContextAddProviderForScreen
    --                                 screen
    --                                 comboProv
    --                                 cssPriority
    --     Nothing -> error ""

    -- styleContext <- Gtk.widgetGetStyleContext label
    -- cssProviderToString comboProv >>= (putStrLn . T.unpack)
    -- Gtk.styleContextToString styleContext [] >>= (putStrLn . T.unpack)

    addLabelsToGrid grid

        -- on btn #clicked printHello
        -- on btn #clicked $ Gtk.widgetDestroy w

    #add w grid
    #showAll w
    return ()

addLabelsToGrid :: Gtk.Grid -> IO ()
addLabelsToGrid grid = do
        comboProv <- Gtk.cssProviderGetDefault
        Gtk.cssProviderLoadFromData comboProv (C.pack $ generateComboLabel 30)
        let ls = [ (i,j) | i <- [0..12], j <- [0..12] ]
        mapM_ (\(i,j) -> do
            Gtk.cssProviderLoadFromData comboProv (C.pack $ generateComboLabel (90-2*i))
            label <- new Gtk.Label [ #label := "test"
                                   , #xalign := 0
                                   , #yalign := 1
                                   , #heightRequest := 50
                                   , #widthRequest := 50
                                   ]
            styleContext <- Gtk.widgetGetStyleContext label
            Gtk.styleContextAddProvider
                                    styleContext
                                    comboProv
                                    cssPriority
            Gtk.gridAttach grid label j i 1 1) ls
        putStrLn ""

main :: IO ()
main = do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
