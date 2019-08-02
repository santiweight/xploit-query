{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLabels #-}

import qualified GI.Gtk as Gtk
import qualified GI.Gdk as Gdk
import GI.Gtk.Objects.CssProvider
import Data.GI.CodeGen.Util  (tshow)
import qualified GI.Gio as Gio

import Data.Map ((!))
import qualified Data.Map as Map

import Debug.Trace

import Control.Monad
import Data.GI.Base

import Data.Word
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as C
import qualified Data.Text.IO as TIO
import System.Environment (getProgName, getArgs)

import Poker
import PokerParse
import Range
import HandFilter

cssPriority :: Word32
cssPriority = fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER :: Word32

generateComboLabel freqInv hand =
    let freq = 100-freqInv
        res = "label#" ++ show hand ++ " { background : linear-gradient( lightgrey 0%, lightgrey " ++ show freq ++ "%, green " ++ show (freq) ++ "%, green 100% ); }" :: String
    in
    res

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
    -- Gtk.styleContextToString styleContext [] >>= (putStrLn . T.unpack)

    hands <- test_hands
    let range = buildRange rfiOppF (hands)
    addRangeToGrid range Fold grid

        -- on btn #clicked printHello
        -- on btn #clicked $ Gtk.widgetDestroy w

    #add w grid
    #showAll w
    return ()

addRangeToGrid :: RangeCollection -> ActionValue -> Gtk.Grid -> IO ()
addRangeToGrid rangeC action grid = do
        let comboFreqs = _total_range rangeC
        let maybeActionFreqs = Map.lookup action (_ranges rangeC)
        case maybeActionFreqs of
            Nothing -> return $ error "This action was not taken: " ++ show action
            Just actionrange -> do
                let actionFreqs = _range actionrange
                let ls = zip [0..] allShapedHands
                comboProv <- new Gtk.CssProvider []
                let cssStyle = concatMap (\(i,hand) ->
                        let labelcombos = shapeToCombos hand
                            handfreq = fromIntegral $ sum $ map (\c -> Map.findWithDefault 0 c actionFreqs) labelcombos
                            comboFreq = fromIntegral $ sum $ map (\c -> Map.findWithDefault 0 c (_range comboFreqs)) labelcombos in
                                    generateComboLabel (100*(handfreq/comboFreq)) hand) ls

                Gtk.cssProviderLoadFromData comboProv (C.pack $ cssStyle)
                mapM_ (\(i,hand) -> do
                    label <- new Gtk.Label [ #label := T.pack $ show hand
                                           , #name := T.pack $ show hand
                                           , #xalign := 0
                                           , #yalign := 1
                                           , #heightRequest := 50
                                           , #widthRequest := 50
                                           ]
                    styleContext <- Gtk.widgetGetStyleContext label
                    -- Gtk.styleContextToString styleContext [] >>= (putStrLn . T.unpack)

                    Gtk.styleContextAddProvider
                                            styleContext
                                            comboProv
                                            cssPriority
                    let (col, row) = quotRem i 13
                    Gtk.gridAttach grid label row col 1 1) ls
                return ""


        return ()


addLabelsToGrid :: Gtk.Grid -> IO ()
addLabelsToGrid grid = do
        -- Gtk.cssProviderLoadFromData comboProv (C.pack $ generateComboLabel 30 )
        let ls = zip [0..] allShapedHands
        comboProv <- new Gtk.CssProvider []
        let cssStyle = concat $ map (\(i,hand) -> generateComboLabel (100-i) hand) ls
        Gtk.cssProviderLoadFromData comboProv (C.pack $ cssStyle)
        mapM_ (\(i,hand) -> do
            label <- new Gtk.Label [ #label := T.pack $ show hand
                                   , #name := T.pack $ show hand
                                   , #xalign := 0
                                   , #yalign := 1
                                   , #heightRequest := 50
                                   , #widthRequest := 50
                                   ]
            styleContext <- Gtk.widgetGetStyleContext label
            -- Gtk.styleContextToString styleContext [] >>= (putStrLn . T.unpack)

            Gtk.styleContextAddProvider
                                    styleContext
                                    comboProv
                                    cssPriority
            let (col, row) = quotRem i 13
            Gtk.gridAttach grid label row col 1 1) ls


        return ()

main :: IO ()
main = do
  -- trace (show hands) $ do
  -- trace (show $ length hands) $ do
  app <- new Gtk.Application [ #applicationId := "haskell-gi.examples.hello-world"
                             , #flags := [ Gio.ApplicationFlagsFlagsNone ]
                             ]
  on app #activate $ activateApp app
  Gio.applicationRun app Nothing
  return ()
