{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedLabels  #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

import           Control.Concurrent.Async       ( async )
import           Control.Monad                  ( void )
import Control.Lens.Getter ((^.))
import Control.Lens.At (at)
import qualified GI.GObject                    as GI
import Control.Lens.Operators ((.~), (^?))
import           GI.Gtk.Declarative.EventSource ( fromCancellation )
import Control.Lens.Combinators (non)
import Control.Lens.TH
import Control.Lens.Lens ((&))
import           Data.ByteString                ( ByteString )
import           Data.Functor                   ( (<&>) )
import           Data.Text                      ( Text )
import qualified Data.Text                     as T
import           Data.Text.Encoding             (encodeUtf8)
import           Data.Vector                    ( Vector )
import qualified Data.Vector                   as Vector
import qualified GI.Gdk                        as Gdk
import           GI.Gtk                         ( Box(..)
                                                , Button(..)
                                                , Orientation(..)
                                                , Window(..)
                                                )
import Debug.Trace (traceShow, traceShowId)
import qualified GI.Gtk                        as Gtk
import           GI.Gtk.Declarative hiding (properties, child)
import           GI.Gtk.Declarative.EventSource (Subscription)
import           GI.Gtk.Declarative.App.Simple
import           GI.Gtk                         ( Button(..)
                                                , Grid(..)
                                                , Label(..)
                                                , Window(..)
                                                )
import           GI.Gtk.Declarative.Container.Grid (GridChild(..), GridChildProperties(..), defaultGridChildProperties)

import Poker.Range
import Poker.Base (allShapedHands)
import Poker.Types
import Data.Map (Map)
import qualified Data.Map as Map
import Data.List (intercalate)
import Data.Word (Word32)

import GHC.Float.RealFracMethods (roundDoubleInteger)

data RangeIconProperties = RangeIconProperties
  { lbl :: ShapedHand }
  deriving Eq

newtype RangeIconClickedEvent = RangeIconClickedEvent ShapedHand

rangeIcon :: Vector (Attribute Gtk.Button Event)
  -> RangeIconProperties
  -> Widget Event
rangeIcon customAttributes customParams = Widget
  (CustomWidget
    { customWidget
    , customCreate
    , customPatch
    , customSubscribe
    , customAttributes
    , customParams
  })
  where
    -- The constructor for the underlying GTK widget.
    customWidget = Gtk.Button
    -- A function that creates a widget (of the same type as
    -- customWidget), used on first render and on 'CustomReplace'. It's
    -- also returning our internal state, a reference to the spin button
    -- widget.
    customCreate props = do
      button  <- Gtk.buttonNew
      lbl  <- Gtk.new Gtk.Label [ #label Gtk.:= "I'm a custom widget."
                                , #xalign Gtk.:= 0
                                , #yalign Gtk.:= 0
                                ]
      Gtk.containerAdd button lbl
      return (button, ())

    -- A function that computes a patch for our custom widget. Here we
    -- compare the params value of type 'NumberInputProperties' to
    -- decide whether to modify the spin button widget or not. Note that
    -- the spin button widget is passed through the internal state.
    customPatch :: RangeIconProperties -> RangeIconProperties -> () -> CustomPatch Button ()
    customPatch old new _
      | old == new = CustomKeep
      | otherwise = CustomModify $ \_button -> do
        Gtk.buttonSetLabel _button . T.pack . show $ lbl new

    -- Finally, we subscribe to widget signals to emit
    -- 'NumberInputChanged' events from the spin button reference
    -- carried by the internal state.
    customSubscribe :: RangeIconProperties
                 -> ()
                 -> Button
                 -> (Event -> IO ())
                 -> IO Subscription
    customSubscribe params _ (button :: Gtk.Button) cb = do
      h <- Gtk.on button #clicked . cb . SelectRangePane  $ lbl params
      -- This creates a 'Subscription' from an IO action that
      -- disconnects the signal handler.
      return (fromCancellation (GI.signalHandlerDisconnect button h))


data NumberInputProperties = NumberInputProperties
  { value  :: Double
  , numRange  :: (Double, Double)
  , step   :: Double
  , digits :: Word32
  } deriving (Eq, Show)

newtype NumberInputEvent = NumberInputChanged Double
numberInput
  :: Vector (Attribute Gtk.Box NumberInputEvent)
  -> NumberInputProperties
  -> Widget NumberInputEvent
numberInput customAttributes customParams = Widget
  (CustomWidget { customWidget
                , customCreate
                , customPatch
                , customSubscribe
                , customAttributes
                , customParams
                }
  )
 where
  -- The constructor for the underlying GTK widget.
  customWidget = Gtk.Box
  -- A function that creates a widget (of the same type as
  -- customWidget), used on first render and on 'CustomReplace'. It's
  -- also returning our internal state, a reference to the spin button
  -- widget.
  customCreate props = do
    box  <- Gtk.new Gtk.Box [#orientation Gtk.:= Gtk.OrientationVertical]
    lbl  <- Gtk.new Gtk.Label [#label Gtk.:= "I'm a custom widget."]
    spin <- Gtk.new Gtk.SpinButton []
    adj  <- propsToAdjustment props
    Gtk.spinButtonSetAdjustment spin adj
    Gtk.spinButtonSetDigits spin (digits props)
    #packStart box lbl True True 0
    #packStart box spin False False 0
    return (box, spin)

  -- A function that computes a patch for our custom widget. Here we
  -- compare the params value of type 'NumberInputProperties' to
  -- decide whether to modify the spin button widget or not. Note that
  -- the spin button widget is passed through the internal state.
  customPatch old new spin
    | old == new = CustomKeep
    | otherwise = CustomModify $ \_box -> do
      adj <- propsToAdjustment new
      Gtk.spinButtonSetAdjustment spin adj
      Gtk.spinButtonSetDigits spin (digits new)
      return spin

  -- Finally, we subscribe to widget signals to emit
  -- 'NumberInputChanged' events from the spin button reference
  -- carried by the internal state.
  customSubscribe _params (spin :: Gtk.SpinButton) _box cb = do
    h <- Gtk.on spin #valueChanged $ cb . NumberInputChanged =<< #getValue spin
    -- This creates a 'Subscription' from an IO action that
    -- disconnects the signal handler.
    return (fromCancellation (GI.signalHandlerDisconnect spin h))

propsToAdjustment :: NumberInputProperties -> IO Gtk.Adjustment
propsToAdjustment NumberInputProperties { value, numRange = (begin, end), step } =
  Gtk.adjustmentNew value begin end step 0.1 0

data State =
  AppState
    { _rangeCssProvider :: Gtk.CssProvider
    , _displayRange :: Range ShapedHand Double
    }

data Event
  = UpdateMainRange !(Range ShapedHand Double)
  | SelectRangePane !ShapedHand
  | Closed

makeLenses ''State

view' :: State -> AppView Window Event
view' appState =
  bin Window [#title := "CSS Example", on #deleteEvent (const (True, Closed))]
    $ container
        Grid
        [#rowSpacing := 4, #columnSpacing := 4, #margin := 4]
        gridChilds
    -- $ paned [#wideHandle := True]
    -- (pane defaultPaneProperties $ widget Button
    --   [ #label := "Reload range"
    --   , on #clicked (traceShow @String "clicked reload" UpdateMainRange (Range $ Map.singleton (ShapedHand (read "J", read "9") Offsuit) 0.5))
    --   ])
    -- (pane defaultPaneProperties $ traceShow "building grid" container
    --     Grid
    --     [#rowSpacing := 4, #columnSpacing := 4, #margin := 4]
    --     gridChilds)
 where
    gridChilds :: Vector (GridChild Event)
    gridChilds = Vector.fromList $ zip [0..] allShapedHands <&> \(ix, hand)  ->
      let (col, row) = quotRem ix 13 in
      GridChild
      { properties = defaultGridChildProperties { width = 1
                                                , height = 1
                                                , leftAttach = col
                                                , topAttach = row
                                                }
      , child = rangeIcon [ #label := (T.pack $ show hand)
                              -- , on #clicked (SelectRangePane hand)
                              , classes [T.pack $ show hand]
                              , #xalign := 0
                              , #yalign := 0
                              ]
                              (RangeIconProperties hand)


        -- widget Button       }
      }

  -- colorButtons = Vector.indexed colors <&> \(i, color) ->
  --   BoxChild defaultBoxChildProperties { expand = True, padding = 10 }
  --     $ let cs = if i == si then ["selected", color] else [color]
  --       in  widget Button [#label := color, on #clicked (MoveTo i), classes cs]

update' :: State -> Event -> Transition State Event
update' s (UpdateMainRange r) = traceShow @String "updating Range"
    Transition
      (s & displayRange .~ r)
      (Nothing <$ cssProvider)
  where
    cssProvider :: IO ()
    cssProvider = do
      -- prov <- Gtk.cssProviderNew
      -- print "here"
      Gtk.cssProviderLoadFromData (s ^. rangeCssProvider) $ rangeToCss r
-- update' s (DisplayRange prov) = traceShow @String "updating Range" $
  -- Transition (s & rangeCssProvider .~ prov) (pure Nothing)
update' s (SelectRangePane p) = traceShow p
    Transition s (pure Nothing)
update' _ Closed = Exit
update' _ _ = error ""

updateCssProviderWithRange :: Gtk.CssProvider -> Range ShapedHand Double -> IO ()
updateCssProviderWithRange prov r = Gtk.cssProviderLoadFromData prov $ rangeToCss r

rangeToCss :: Range ShapedHand Double -> ByteString
rangeToCss r = traceShowId . encodeUtf8 . T.intercalate "\n" $ allShapedHands <&> \hand  ->
  let handFreq = r ^. range . at hand . non 0
  in genHandCss hand handFreq

genHandCss :: ShapedHand -> Double -> Text
genHandCss hand freqInv = let freq = 100 - roundDoubleInteger freqInv in
    T.pack $ mconcat
      [ "."
      , show hand
      , " { color: red; background : linear-gradient( lightgrey 50%, lightgrey "
      , show freq
      , "%, green "
      , show freq
      , "%, green 100% ); }"
      ]

styles :: ByteString
styles = mconcat
  [ "button { border: 2px solid gray; font-weight: 800; }"
  , ".selected { background: white; border: 2px solid black; }"
  -- Specific color classes:
  , ".red { color: red; }"
  , ".green { color: green; }"
  , ".blue { color: blue; }"
  , ".yellow { color: goldenrod; }"
  ]

main :: IO ()
main = do
  void $ Gtk.init Nothing

  -- Set up screen and CSS provider
  screen <- maybe (fail "No screen?!") return =<< Gdk.screenGetDefault
  p      <- Gtk.cssProviderNew
  Gtk.cssProviderLoadFromData p styles
  Gtk.styleContextAddProviderForScreen
    screen
    p
    (fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_THEME)

  -- Start main loop
  cssProv <- Gtk.cssProviderNew
  Gtk.styleContextAddProviderForScreen
    screen
    cssProv
    (fromIntegral Gtk.STYLE_PROVIDER_PRIORITY_USER)
  let app = mkApp cssProv
  void . async $ do
    void $ runLoop app
    Gtk.mainQuit
  Gtk.main
 where
  mkApp prov = App { view = view'
                   , update = update'
                   , inputs = []
                   , initialState = AppState prov (Range Map.empty)
                   }


-- {-# LANGUAGE OverloadedLabels  #-}
-- {-# LANGUAGE OverloadedLists   #-}
-- {-# LANGUAGE OverloadedStrings #-}
-- {-# LANGUAGE RecordWildCards   #-}
-- import           Control.Monad                  ( void )
-- import           Data.Text                      ( pack )
-- import           GI.Gtk.Declarative
-- import           GI.Gtk.Declarative.App.Simple

-- data State =
--   State

-- data Event =
--   Closed

-- view' :: State -> AppView Window Event
-- view' State =
--   bin
--       Window
--       [ #title := "Grid"
--       , on #deleteEvent (const (True, Closed))
--       , #widthRequest := 400
--       , #heightRequest := 300
--       ]

-- update' :: State -> Event -> Transition State Event
-- update' State Closed = Exit

-- main :: IO ()
-- main = void $ run App { view         = view'
--                       , update       = update'
--                       , inputs       = []
--                       , initialState = State
--                       }