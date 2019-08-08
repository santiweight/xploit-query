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
import Data.Maybe
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as C
import qualified Data.Text.IO as TIO
import System.Environment (getProgName, getArgs)

import Poker.Base
import Poker.Parse
import Poker.Range
import Poker.HandFilter

import Control.Lens hiding (Fold)
import Control.Lens.TH

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
    -- let actions = concatMap (findCombo nextRaise listPosition) (take 1000 hands)
    -- let range = buildRange (rfiOpp) (hands)
    let range = buildRange (accumulator rfi) (take 30000 hands)
    addRangeToGrid range Fold grid

        -- on btn #clicked printHello
        -- on btn #clicked $ Gtk.widgetDestroy w

    #add w grid
    #showAll w
    return ()

addRangeToGrid :: ShapedRangeC -> ActionValue -> Gtk.Grid -> IO ()
addRangeToGrid ranC action grid = do
        let shaped_range = ranC ^. total_shapedrange . range
        let display_range = ranC ^. ranges . at action . non def.range
        let ls = zip [0..] allShapedHands
        comboProv <- new Gtk.CssProvider []
        let cssStyle = concatMap (\(_,hand) ->
                let handcount = (Map.findWithDefault def hand display_range) ^. count :: Int
                    handfreq = fromIntegral(handcount) / fromIntegral (fromMaybe 0 $ shaped_range^.at hand) in
                        case handfreq <= 100 of
                            False -> generateComboLabel (0) hand
                            True -> generateComboLabel (100*handfreq) hand) ls

        Gtk.cssProviderLoadFromData comboProv (C.pack $ cssStyle)
        mapM_ (\(i,hand) -> do
                label <- new Gtk.Label [ #label := T.pack $ show hand
                                                        ++ "\n"
                                                        ++ show (fromMaybe 0 $ shaped_range^.at hand)
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
            -- return ""


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
