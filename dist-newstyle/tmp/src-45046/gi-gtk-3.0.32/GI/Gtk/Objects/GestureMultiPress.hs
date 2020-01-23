{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureMultiPress.GestureMultiPress' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation able to recognize
-- multiple clicks on a nearby zone, which can be listened for through the
-- [pressed]("GI.Gtk.Objects.GestureMultiPress#signal:pressed") signal. Whenever time or distance between
-- clicks exceed the GTK+ defaults, [stopped]("GI.Gtk.Objects.GestureMultiPress#signal:stopped") is emitted,
-- and the click counter is reset.
-- 
-- Callers may also restrict the area that is considered valid for a >1
-- touch\/button press through 'GI.Gtk.Objects.GestureMultiPress.gestureMultiPressSetArea', so any
-- click happening outside that area is considered to be a first click of
-- its own.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureMultiPress
    ( 

-- * Exported types
    GestureMultiPress(..)                   ,
    IsGestureMultiPress                     ,
    toGestureMultiPress                     ,
    noGestureMultiPress                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureMultiPressMethod          ,
#endif


-- ** getArea #method:getArea#

#if defined(ENABLE_OVERLOADING)
    GestureMultiPressGetAreaMethodInfo      ,
#endif
    gestureMultiPressGetArea                ,


-- ** new #method:new#

    gestureMultiPressNew                    ,


-- ** setArea #method:setArea#

#if defined(ENABLE_OVERLOADING)
    GestureMultiPressSetAreaMethodInfo      ,
#endif
    gestureMultiPressSetArea                ,




 -- * Signals
-- ** pressed #signal:pressed#

    C_GestureMultiPressPressedCallback      ,
    GestureMultiPressPressedCallback        ,
#if defined(ENABLE_OVERLOADING)
    GestureMultiPressPressedSignalInfo      ,
#endif
    afterGestureMultiPressPressed           ,
    genClosure_GestureMultiPressPressed     ,
    mk_GestureMultiPressPressedCallback     ,
    noGestureMultiPressPressedCallback      ,
    onGestureMultiPressPressed              ,
    wrap_GestureMultiPressPressedCallback   ,


-- ** released #signal:released#

    C_GestureMultiPressReleasedCallback     ,
    GestureMultiPressReleasedCallback       ,
#if defined(ENABLE_OVERLOADING)
    GestureMultiPressReleasedSignalInfo     ,
#endif
    afterGestureMultiPressReleased          ,
    genClosure_GestureMultiPressReleased    ,
    mk_GestureMultiPressReleasedCallback    ,
    noGestureMultiPressReleasedCallback     ,
    onGestureMultiPressReleased             ,
    wrap_GestureMultiPressReleasedCallback  ,


-- ** stopped #signal:stopped#

    C_GestureMultiPressStoppedCallback      ,
    GestureMultiPressStoppedCallback        ,
#if defined(ENABLE_OVERLOADING)
    GestureMultiPressStoppedSignalInfo      ,
#endif
    afterGestureMultiPressStopped           ,
    genClosure_GestureMultiPressStopped     ,
    mk_GestureMultiPressStoppedCallback     ,
    noGestureMultiPressStoppedCallback      ,
    onGestureMultiPressStopped              ,
    wrap_GestureMultiPressStoppedCallback   ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL

import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureSingle as Gtk.GestureSingle
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GestureMultiPress = GestureMultiPress (ManagedPtr GestureMultiPress)
    deriving (Eq)
foreign import ccall "gtk_gesture_multi_press_get_type"
    c_gtk_gesture_multi_press_get_type :: IO GType

instance GObject GestureMultiPress where
    gobjectType = c_gtk_gesture_multi_press_get_type
    

-- | Convert 'GestureMultiPress' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureMultiPress where
    toGValue o = do
        gtype <- c_gtk_gesture_multi_press_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureMultiPress)
        B.ManagedPtr.newObject GestureMultiPress ptr
        
    

-- | Type class for types which can be safely cast to `GestureMultiPress`, for instance with `toGestureMultiPress`.
class (GObject o, O.IsDescendantOf GestureMultiPress o) => IsGestureMultiPress o
instance (GObject o, O.IsDescendantOf GestureMultiPress o) => IsGestureMultiPress o

instance O.HasParentTypes GestureMultiPress
type instance O.ParentTypes GestureMultiPress = '[Gtk.GestureSingle.GestureSingle, Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureMultiPress`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureMultiPress :: (MonadIO m, IsGestureMultiPress o) => o -> m GestureMultiPress
toGestureMultiPress = liftIO . unsafeCastTo GestureMultiPress

-- | A convenience alias for `Nothing` :: `Maybe` `GestureMultiPress`.
noGestureMultiPress :: Maybe GestureMultiPress
noGestureMultiPress = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureMultiPressMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureMultiPressMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureMultiPressMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureMultiPressMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureMultiPressMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureMultiPressMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureMultiPressMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureMultiPressMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureMultiPressMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureMultiPressMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureMultiPressMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureMultiPressMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureMultiPressMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureMultiPressMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureMultiPressMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureMultiPressMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureMultiPressMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureMultiPressMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureMultiPressMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureMultiPressMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureMultiPressMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureMultiPressMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureMultiPressMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureMultiPressMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureMultiPressMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureMultiPressMethod "getArea" o = GestureMultiPressGetAreaMethodInfo
    ResolveGestureMultiPressMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureMultiPressMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureMultiPressMethod "getButton" o = Gtk.GestureSingle.GestureSingleGetButtonMethodInfo
    ResolveGestureMultiPressMethod "getCurrentButton" o = Gtk.GestureSingle.GestureSingleGetCurrentButtonMethodInfo
    ResolveGestureMultiPressMethod "getCurrentSequence" o = Gtk.GestureSingle.GestureSingleGetCurrentSequenceMethodInfo
    ResolveGestureMultiPressMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureMultiPressMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureMultiPressMethod "getExclusive" o = Gtk.GestureSingle.GestureSingleGetExclusiveMethodInfo
    ResolveGestureMultiPressMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureMultiPressMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureMultiPressMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureMultiPressMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureMultiPressMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureMultiPressMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureMultiPressMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureMultiPressMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureMultiPressMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureMultiPressMethod "getTouchOnly" o = Gtk.GestureSingle.GestureSingleGetTouchOnlyMethodInfo
    ResolveGestureMultiPressMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureMultiPressMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureMultiPressMethod "setArea" o = GestureMultiPressSetAreaMethodInfo
    ResolveGestureMultiPressMethod "setButton" o = Gtk.GestureSingle.GestureSingleSetButtonMethodInfo
    ResolveGestureMultiPressMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureMultiPressMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureMultiPressMethod "setExclusive" o = Gtk.GestureSingle.GestureSingleSetExclusiveMethodInfo
    ResolveGestureMultiPressMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureMultiPressMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureMultiPressMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureMultiPressMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureMultiPressMethod "setTouchOnly" o = Gtk.GestureSingle.GestureSingleSetTouchOnlyMethodInfo
    ResolveGestureMultiPressMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureMultiPressMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureMultiPressMethod t GestureMultiPress, O.MethodInfo info GestureMultiPress p) => OL.IsLabel t (GestureMultiPress -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GestureMultiPress::pressed
-- | This signal is emitted whenever a button or touch press happens.
-- 
-- /Since: 3.14/
type GestureMultiPressPressedCallback =
    Int32
    -- ^ /@nPress@/: how many touch\/button presses happened with this one
    -> Double
    -- ^ /@x@/: The X coordinate, in widget allocation coordinates
    -> Double
    -- ^ /@y@/: The Y coordinate, in widget allocation coordinates
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureMultiPressPressedCallback`@.
noGestureMultiPressPressedCallback :: Maybe GestureMultiPressPressedCallback
noGestureMultiPressPressedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureMultiPressPressedCallback =
    Ptr () ->                               -- object
    Int32 ->
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureMultiPressPressedCallback`.
foreign import ccall "wrapper"
    mk_GestureMultiPressPressedCallback :: C_GestureMultiPressPressedCallback -> IO (FunPtr C_GestureMultiPressPressedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureMultiPressPressed :: MonadIO m => GestureMultiPressPressedCallback -> m (GClosure C_GestureMultiPressPressedCallback)
genClosure_GestureMultiPressPressed cb = liftIO $ do
    let cb' = wrap_GestureMultiPressPressedCallback cb
    mk_GestureMultiPressPressedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureMultiPressPressedCallback` into a `C_GestureMultiPressPressedCallback`.
wrap_GestureMultiPressPressedCallback ::
    GestureMultiPressPressedCallback ->
    C_GestureMultiPressPressedCallback
wrap_GestureMultiPressPressedCallback _cb _ nPress x y _ = do
    let x' = realToFrac x
    let y' = realToFrac y
    _cb  nPress x' y'


-- | Connect a signal handler for the [pressed](#signal:pressed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureMultiPress #pressed callback
-- @
-- 
-- 
onGestureMultiPressPressed :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressPressedCallback -> m SignalHandlerId
onGestureMultiPressPressed obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressPressedCallback cb
    cb'' <- mk_GestureMultiPressPressedCallback cb'
    connectSignalFunPtr obj "pressed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pressed](#signal:pressed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureMultiPress #pressed callback
-- @
-- 
-- 
afterGestureMultiPressPressed :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressPressedCallback -> m SignalHandlerId
afterGestureMultiPressPressed obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressPressedCallback cb
    cb'' <- mk_GestureMultiPressPressedCallback cb'
    connectSignalFunPtr obj "pressed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureMultiPressPressedSignalInfo
instance SignalInfo GestureMultiPressPressedSignalInfo where
    type HaskellCallbackType GestureMultiPressPressedSignalInfo = GestureMultiPressPressedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureMultiPressPressedCallback cb
        cb'' <- mk_GestureMultiPressPressedCallback cb'
        connectSignalFunPtr obj "pressed" cb'' connectMode detail

#endif

-- signal GestureMultiPress::released
-- | This signal is emitted when a button or touch is released. /@nPress@/
-- will report the number of press that is paired to this event, note
-- that [stopped]("GI.Gtk.Objects.GestureMultiPress#signal:stopped") may have been emitted between the
-- press and its release, /@nPress@/ will only start over at the next press.
-- 
-- /Since: 3.14/
type GestureMultiPressReleasedCallback =
    Int32
    -- ^ /@nPress@/: number of press that is paired with this release
    -> Double
    -- ^ /@x@/: The X coordinate, in widget allocation coordinates
    -> Double
    -- ^ /@y@/: The Y coordinate, in widget allocation coordinates
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureMultiPressReleasedCallback`@.
noGestureMultiPressReleasedCallback :: Maybe GestureMultiPressReleasedCallback
noGestureMultiPressReleasedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureMultiPressReleasedCallback =
    Ptr () ->                               -- object
    Int32 ->
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureMultiPressReleasedCallback`.
foreign import ccall "wrapper"
    mk_GestureMultiPressReleasedCallback :: C_GestureMultiPressReleasedCallback -> IO (FunPtr C_GestureMultiPressReleasedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureMultiPressReleased :: MonadIO m => GestureMultiPressReleasedCallback -> m (GClosure C_GestureMultiPressReleasedCallback)
genClosure_GestureMultiPressReleased cb = liftIO $ do
    let cb' = wrap_GestureMultiPressReleasedCallback cb
    mk_GestureMultiPressReleasedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureMultiPressReleasedCallback` into a `C_GestureMultiPressReleasedCallback`.
wrap_GestureMultiPressReleasedCallback ::
    GestureMultiPressReleasedCallback ->
    C_GestureMultiPressReleasedCallback
wrap_GestureMultiPressReleasedCallback _cb _ nPress x y _ = do
    let x' = realToFrac x
    let y' = realToFrac y
    _cb  nPress x' y'


-- | Connect a signal handler for the [released](#signal:released) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureMultiPress #released callback
-- @
-- 
-- 
onGestureMultiPressReleased :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressReleasedCallback -> m SignalHandlerId
onGestureMultiPressReleased obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressReleasedCallback cb
    cb'' <- mk_GestureMultiPressReleasedCallback cb'
    connectSignalFunPtr obj "released" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [released](#signal:released) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureMultiPress #released callback
-- @
-- 
-- 
afterGestureMultiPressReleased :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressReleasedCallback -> m SignalHandlerId
afterGestureMultiPressReleased obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressReleasedCallback cb
    cb'' <- mk_GestureMultiPressReleasedCallback cb'
    connectSignalFunPtr obj "released" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureMultiPressReleasedSignalInfo
instance SignalInfo GestureMultiPressReleasedSignalInfo where
    type HaskellCallbackType GestureMultiPressReleasedSignalInfo = GestureMultiPressReleasedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureMultiPressReleasedCallback cb
        cb'' <- mk_GestureMultiPressReleasedCallback cb'
        connectSignalFunPtr obj "released" cb'' connectMode detail

#endif

-- signal GestureMultiPress::stopped
-- | This signal is emitted whenever any time\/distance threshold has
-- been exceeded.
-- 
-- /Since: 3.14/
type GestureMultiPressStoppedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureMultiPressStoppedCallback`@.
noGestureMultiPressStoppedCallback :: Maybe GestureMultiPressStoppedCallback
noGestureMultiPressStoppedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureMultiPressStoppedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureMultiPressStoppedCallback`.
foreign import ccall "wrapper"
    mk_GestureMultiPressStoppedCallback :: C_GestureMultiPressStoppedCallback -> IO (FunPtr C_GestureMultiPressStoppedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureMultiPressStopped :: MonadIO m => GestureMultiPressStoppedCallback -> m (GClosure C_GestureMultiPressStoppedCallback)
genClosure_GestureMultiPressStopped cb = liftIO $ do
    let cb' = wrap_GestureMultiPressStoppedCallback cb
    mk_GestureMultiPressStoppedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureMultiPressStoppedCallback` into a `C_GestureMultiPressStoppedCallback`.
wrap_GestureMultiPressStoppedCallback ::
    GestureMultiPressStoppedCallback ->
    C_GestureMultiPressStoppedCallback
wrap_GestureMultiPressStoppedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [stopped](#signal:stopped) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureMultiPress #stopped callback
-- @
-- 
-- 
onGestureMultiPressStopped :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressStoppedCallback -> m SignalHandlerId
onGestureMultiPressStopped obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressStoppedCallback cb
    cb'' <- mk_GestureMultiPressStoppedCallback cb'
    connectSignalFunPtr obj "stopped" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [stopped](#signal:stopped) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureMultiPress #stopped callback
-- @
-- 
-- 
afterGestureMultiPressStopped :: (IsGestureMultiPress a, MonadIO m) => a -> GestureMultiPressStoppedCallback -> m SignalHandlerId
afterGestureMultiPressStopped obj cb = liftIO $ do
    let cb' = wrap_GestureMultiPressStoppedCallback cb
    cb'' <- mk_GestureMultiPressStoppedCallback cb'
    connectSignalFunPtr obj "stopped" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureMultiPressStoppedSignalInfo
instance SignalInfo GestureMultiPressStoppedSignalInfo where
    type HaskellCallbackType GestureMultiPressStoppedSignalInfo = GestureMultiPressStoppedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureMultiPressStoppedCallback cb
        cb'' <- mk_GestureMultiPressStoppedCallback cb'
        connectSignalFunPtr obj "stopped" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureMultiPress
type instance O.AttributeList GestureMultiPress = GestureMultiPressAttributeList
type GestureMultiPressAttributeList = ('[ '("button", Gtk.GestureSingle.GestureSingleButtonPropertyInfo), '("exclusive", Gtk.GestureSingle.GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", Gtk.GestureSingle.GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureMultiPress = GestureMultiPressSignalList
type GestureMultiPressSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("pressed", GestureMultiPressPressedSignalInfo), '("released", GestureMultiPressReleasedSignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("stopped", GestureMultiPressStoppedSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureMultiPress::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "GestureMultiPress" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_multi_press_new" gtk_gesture_multi_press_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GestureMultiPress)

-- | Returns a newly created t'GI.Gtk.Objects.Gesture.Gesture' that recognizes single and multiple
-- presses.
-- 
-- /Since: 3.14/
gestureMultiPressNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m GestureMultiPress
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.GestureMultiPress.GestureMultiPress'
gestureMultiPressNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_gesture_multi_press_new widget'
    checkUnexpectedReturnNULL "gestureMultiPressNew" result
    result' <- (wrapObject GestureMultiPress) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GestureMultiPress::get_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureMultiPress" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureMultiPress"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the press area"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_multi_press_get_area" gtk_gesture_multi_press_get_area :: 
    Ptr GestureMultiPress ->                -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureMultiPress"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO CInt

-- | If an area was set through 'GI.Gtk.Objects.GestureMultiPress.gestureMultiPressSetArea',
-- this function will return 'P.True' and fill in /@rect@/ with the
-- press area. See 'GI.Gtk.Objects.GestureMultiPress.gestureMultiPressSetArea' for more
-- details on what the press area represents.
-- 
-- /Since: 3.14/
gestureMultiPressGetArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureMultiPress a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureMultiPress.GestureMultiPress'
    -> m ((Bool, Gdk.Rectangle.Rectangle))
    -- ^ __Returns:__ 'P.True' if /@rect@/ was filled with the press area
gestureMultiPressGetArea gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    rect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    result <- gtk_gesture_multi_press_get_area gesture' rect
    let result' = (/= 0) result
    rect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rect
    touchManagedPtr gesture
    return (result', rect')

#if defined(ENABLE_OVERLOADING)
data GestureMultiPressGetAreaMethodInfo
instance (signature ~ (m ((Bool, Gdk.Rectangle.Rectangle))), MonadIO m, IsGestureMultiPress a) => O.MethodInfo GestureMultiPressGetAreaMethodInfo a signature where
    overloadedMethod = gestureMultiPressGetArea

#endif

-- method GestureMultiPress::set_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureMultiPress" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureMultiPress"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "rectangle to receive coordinates on"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_multi_press_set_area" gtk_gesture_multi_press_set_area :: 
    Ptr GestureMultiPress ->                -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureMultiPress"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | If /@rect@/ is non-'P.Nothing', the press area will be checked to be
-- confined within the rectangle, otherwise the button count
-- will be reset so the press is seen as being the first one.
-- If /@rect@/ is 'P.Nothing', the area will be reset to an unrestricted
-- state.
-- 
-- Note: The rectangle is only used to determine whether any
-- non-first click falls within the expected area. This is not
-- akin to an input shape.
-- 
-- /Since: 3.14/
gestureMultiPressSetArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureMultiPress a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureMultiPress.GestureMultiPress'
    -> Maybe (Gdk.Rectangle.Rectangle)
    -- ^ /@rect@/: rectangle to receive coordinates on
    -> m ()
gestureMultiPressSetArea gesture rect = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    maybeRect <- case rect of
        Nothing -> return nullPtr
        Just jRect -> do
            jRect' <- unsafeManagedPtrGetPtr jRect
            return jRect'
    gtk_gesture_multi_press_set_area gesture' maybeRect
    touchManagedPtr gesture
    whenJust rect touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureMultiPressSetAreaMethodInfo
instance (signature ~ (Maybe (Gdk.Rectangle.Rectangle) -> m ()), MonadIO m, IsGestureMultiPress a) => O.MethodInfo GestureMultiPressSetAreaMethodInfo a signature where
    overloadedMethod = gestureMultiPressSetArea

#endif

