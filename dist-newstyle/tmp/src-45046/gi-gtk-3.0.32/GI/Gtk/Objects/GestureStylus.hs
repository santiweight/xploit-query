{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureStylus.GestureStylus' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation specific to stylus
-- input. The provided signals just provide the basic information

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureStylus
    ( 
#if defined(ENABLE_OVERLOADING)
    GestureStylusGetAxesMethodInfo          ,
#endif

-- * Exported types
    GestureStylus(..)                       ,
    IsGestureStylus                         ,
    toGestureStylus                         ,
    noGestureStylus                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureStylusMethod              ,
#endif


-- ** getAxis #method:getAxis#

#if defined(ENABLE_OVERLOADING)
    GestureStylusGetAxisMethodInfo          ,
#endif
    gestureStylusGetAxis                    ,


-- ** getDeviceTool #method:getDeviceTool#

#if defined(ENABLE_OVERLOADING)
    GestureStylusGetDeviceToolMethodInfo    ,
#endif
    gestureStylusGetDeviceTool              ,


-- ** new #method:new#

    gestureStylusNew                        ,




 -- * Signals
-- ** down #signal:down#

    C_GestureStylusDownCallback             ,
    GestureStylusDownCallback               ,
#if defined(ENABLE_OVERLOADING)
    GestureStylusDownSignalInfo             ,
#endif
    afterGestureStylusDown                  ,
    genClosure_GestureStylusDown            ,
    mk_GestureStylusDownCallback            ,
    noGestureStylusDownCallback             ,
    onGestureStylusDown                     ,
    wrap_GestureStylusDownCallback          ,


-- ** motion #signal:motion#

    C_GestureStylusMotionCallback           ,
    GestureStylusMotionCallback             ,
#if defined(ENABLE_OVERLOADING)
    GestureStylusMotionSignalInfo           ,
#endif
    afterGestureStylusMotion                ,
    genClosure_GestureStylusMotion          ,
    mk_GestureStylusMotionCallback          ,
    noGestureStylusMotionCallback           ,
    onGestureStylusMotion                   ,
    wrap_GestureStylusMotionCallback        ,


-- ** proximity #signal:proximity#

    C_GestureStylusProximityCallback        ,
    GestureStylusProximityCallback          ,
#if defined(ENABLE_OVERLOADING)
    GestureStylusProximitySignalInfo        ,
#endif
    afterGestureStylusProximity             ,
    genClosure_GestureStylusProximity       ,
    mk_GestureStylusProximityCallback       ,
    noGestureStylusProximityCallback        ,
    onGestureStylusProximity                ,
    wrap_GestureStylusProximityCallback     ,


-- ** up #signal:up#

    C_GestureStylusUpCallback               ,
    GestureStylusUpCallback                 ,
#if defined(ENABLE_OVERLOADING)
    GestureStylusUpSignalInfo               ,
#endif
    afterGestureStylusUp                    ,
    genClosure_GestureStylusUp              ,
    mk_GestureStylusUpCallback              ,
    noGestureStylusUpCallback               ,
    onGestureStylusUp                       ,
    wrap_GestureStylusUpCallback            ,




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
import qualified GI.Gdk.Enums as Gdk.Enums
import qualified GI.Gdk.Objects.DeviceTool as Gdk.DeviceTool
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureSingle as Gtk.GestureSingle
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GestureStylus = GestureStylus (ManagedPtr GestureStylus)
    deriving (Eq)
foreign import ccall "gtk_gesture_stylus_get_type"
    c_gtk_gesture_stylus_get_type :: IO GType

instance GObject GestureStylus where
    gobjectType = c_gtk_gesture_stylus_get_type
    

-- | Convert 'GestureStylus' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureStylus where
    toGValue o = do
        gtype <- c_gtk_gesture_stylus_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureStylus)
        B.ManagedPtr.newObject GestureStylus ptr
        
    

-- | Type class for types which can be safely cast to `GestureStylus`, for instance with `toGestureStylus`.
class (GObject o, O.IsDescendantOf GestureStylus o) => IsGestureStylus o
instance (GObject o, O.IsDescendantOf GestureStylus o) => IsGestureStylus o

instance O.HasParentTypes GestureStylus
type instance O.ParentTypes GestureStylus = '[Gtk.GestureSingle.GestureSingle, Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureStylus`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureStylus :: (MonadIO m, IsGestureStylus o) => o -> m GestureStylus
toGestureStylus = liftIO . unsafeCastTo GestureStylus

-- | A convenience alias for `Nothing` :: `Maybe` `GestureStylus`.
noGestureStylus :: Maybe GestureStylus
noGestureStylus = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureStylusMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureStylusMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureStylusMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureStylusMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureStylusMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureStylusMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureStylusMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureStylusMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureStylusMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureStylusMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureStylusMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureStylusMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureStylusMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureStylusMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureStylusMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureStylusMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureStylusMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureStylusMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureStylusMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureStylusMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureStylusMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureStylusMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureStylusMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureStylusMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureStylusMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureStylusMethod "getAxes" o = GestureStylusGetAxesMethodInfo
    ResolveGestureStylusMethod "getAxis" o = GestureStylusGetAxisMethodInfo
    ResolveGestureStylusMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureStylusMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureStylusMethod "getButton" o = Gtk.GestureSingle.GestureSingleGetButtonMethodInfo
    ResolveGestureStylusMethod "getCurrentButton" o = Gtk.GestureSingle.GestureSingleGetCurrentButtonMethodInfo
    ResolveGestureStylusMethod "getCurrentSequence" o = Gtk.GestureSingle.GestureSingleGetCurrentSequenceMethodInfo
    ResolveGestureStylusMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureStylusMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureStylusMethod "getDeviceTool" o = GestureStylusGetDeviceToolMethodInfo
    ResolveGestureStylusMethod "getExclusive" o = Gtk.GestureSingle.GestureSingleGetExclusiveMethodInfo
    ResolveGestureStylusMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureStylusMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureStylusMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureStylusMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureStylusMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureStylusMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureStylusMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureStylusMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureStylusMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureStylusMethod "getTouchOnly" o = Gtk.GestureSingle.GestureSingleGetTouchOnlyMethodInfo
    ResolveGestureStylusMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureStylusMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureStylusMethod "setButton" o = Gtk.GestureSingle.GestureSingleSetButtonMethodInfo
    ResolveGestureStylusMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureStylusMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureStylusMethod "setExclusive" o = Gtk.GestureSingle.GestureSingleSetExclusiveMethodInfo
    ResolveGestureStylusMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureStylusMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureStylusMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureStylusMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureStylusMethod "setTouchOnly" o = Gtk.GestureSingle.GestureSingleSetTouchOnlyMethodInfo
    ResolveGestureStylusMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureStylusMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureStylusMethod t GestureStylus, O.MethodInfo info GestureStylus p) => OL.IsLabel t (GestureStylus -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GestureStylus::down
-- | /No description available in the introspection data./
type GestureStylusDownCallback =
    Double
    -> Double
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureStylusDownCallback`@.
noGestureStylusDownCallback :: Maybe GestureStylusDownCallback
noGestureStylusDownCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureStylusDownCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureStylusDownCallback`.
foreign import ccall "wrapper"
    mk_GestureStylusDownCallback :: C_GestureStylusDownCallback -> IO (FunPtr C_GestureStylusDownCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureStylusDown :: MonadIO m => GestureStylusDownCallback -> m (GClosure C_GestureStylusDownCallback)
genClosure_GestureStylusDown cb = liftIO $ do
    let cb' = wrap_GestureStylusDownCallback cb
    mk_GestureStylusDownCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureStylusDownCallback` into a `C_GestureStylusDownCallback`.
wrap_GestureStylusDownCallback ::
    GestureStylusDownCallback ->
    C_GestureStylusDownCallback
wrap_GestureStylusDownCallback _cb _ object p0 _ = do
    let object' = realToFrac object
    let p0' = realToFrac p0
    _cb  object' p0'


-- | Connect a signal handler for the [down](#signal:down) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureStylus #down callback
-- @
-- 
-- 
onGestureStylusDown :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusDownCallback -> m SignalHandlerId
onGestureStylusDown obj cb = liftIO $ do
    let cb' = wrap_GestureStylusDownCallback cb
    cb'' <- mk_GestureStylusDownCallback cb'
    connectSignalFunPtr obj "down" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [down](#signal:down) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureStylus #down callback
-- @
-- 
-- 
afterGestureStylusDown :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusDownCallback -> m SignalHandlerId
afterGestureStylusDown obj cb = liftIO $ do
    let cb' = wrap_GestureStylusDownCallback cb
    cb'' <- mk_GestureStylusDownCallback cb'
    connectSignalFunPtr obj "down" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureStylusDownSignalInfo
instance SignalInfo GestureStylusDownSignalInfo where
    type HaskellCallbackType GestureStylusDownSignalInfo = GestureStylusDownCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureStylusDownCallback cb
        cb'' <- mk_GestureStylusDownCallback cb'
        connectSignalFunPtr obj "down" cb'' connectMode detail

#endif

-- signal GestureStylus::motion
-- | /No description available in the introspection data./
type GestureStylusMotionCallback =
    Double
    -> Double
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureStylusMotionCallback`@.
noGestureStylusMotionCallback :: Maybe GestureStylusMotionCallback
noGestureStylusMotionCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureStylusMotionCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureStylusMotionCallback`.
foreign import ccall "wrapper"
    mk_GestureStylusMotionCallback :: C_GestureStylusMotionCallback -> IO (FunPtr C_GestureStylusMotionCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureStylusMotion :: MonadIO m => GestureStylusMotionCallback -> m (GClosure C_GestureStylusMotionCallback)
genClosure_GestureStylusMotion cb = liftIO $ do
    let cb' = wrap_GestureStylusMotionCallback cb
    mk_GestureStylusMotionCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureStylusMotionCallback` into a `C_GestureStylusMotionCallback`.
wrap_GestureStylusMotionCallback ::
    GestureStylusMotionCallback ->
    C_GestureStylusMotionCallback
wrap_GestureStylusMotionCallback _cb _ object p0 _ = do
    let object' = realToFrac object
    let p0' = realToFrac p0
    _cb  object' p0'


-- | Connect a signal handler for the [motion](#signal:motion) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureStylus #motion callback
-- @
-- 
-- 
onGestureStylusMotion :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusMotionCallback -> m SignalHandlerId
onGestureStylusMotion obj cb = liftIO $ do
    let cb' = wrap_GestureStylusMotionCallback cb
    cb'' <- mk_GestureStylusMotionCallback cb'
    connectSignalFunPtr obj "motion" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [motion](#signal:motion) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureStylus #motion callback
-- @
-- 
-- 
afterGestureStylusMotion :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusMotionCallback -> m SignalHandlerId
afterGestureStylusMotion obj cb = liftIO $ do
    let cb' = wrap_GestureStylusMotionCallback cb
    cb'' <- mk_GestureStylusMotionCallback cb'
    connectSignalFunPtr obj "motion" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureStylusMotionSignalInfo
instance SignalInfo GestureStylusMotionSignalInfo where
    type HaskellCallbackType GestureStylusMotionSignalInfo = GestureStylusMotionCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureStylusMotionCallback cb
        cb'' <- mk_GestureStylusMotionCallback cb'
        connectSignalFunPtr obj "motion" cb'' connectMode detail

#endif

-- signal GestureStylus::proximity
-- | /No description available in the introspection data./
type GestureStylusProximityCallback =
    Double
    -> Double
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureStylusProximityCallback`@.
noGestureStylusProximityCallback :: Maybe GestureStylusProximityCallback
noGestureStylusProximityCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureStylusProximityCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureStylusProximityCallback`.
foreign import ccall "wrapper"
    mk_GestureStylusProximityCallback :: C_GestureStylusProximityCallback -> IO (FunPtr C_GestureStylusProximityCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureStylusProximity :: MonadIO m => GestureStylusProximityCallback -> m (GClosure C_GestureStylusProximityCallback)
genClosure_GestureStylusProximity cb = liftIO $ do
    let cb' = wrap_GestureStylusProximityCallback cb
    mk_GestureStylusProximityCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureStylusProximityCallback` into a `C_GestureStylusProximityCallback`.
wrap_GestureStylusProximityCallback ::
    GestureStylusProximityCallback ->
    C_GestureStylusProximityCallback
wrap_GestureStylusProximityCallback _cb _ object p0 _ = do
    let object' = realToFrac object
    let p0' = realToFrac p0
    _cb  object' p0'


-- | Connect a signal handler for the [proximity](#signal:proximity) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureStylus #proximity callback
-- @
-- 
-- 
onGestureStylusProximity :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusProximityCallback -> m SignalHandlerId
onGestureStylusProximity obj cb = liftIO $ do
    let cb' = wrap_GestureStylusProximityCallback cb
    cb'' <- mk_GestureStylusProximityCallback cb'
    connectSignalFunPtr obj "proximity" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [proximity](#signal:proximity) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureStylus #proximity callback
-- @
-- 
-- 
afterGestureStylusProximity :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusProximityCallback -> m SignalHandlerId
afterGestureStylusProximity obj cb = liftIO $ do
    let cb' = wrap_GestureStylusProximityCallback cb
    cb'' <- mk_GestureStylusProximityCallback cb'
    connectSignalFunPtr obj "proximity" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureStylusProximitySignalInfo
instance SignalInfo GestureStylusProximitySignalInfo where
    type HaskellCallbackType GestureStylusProximitySignalInfo = GestureStylusProximityCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureStylusProximityCallback cb
        cb'' <- mk_GestureStylusProximityCallback cb'
        connectSignalFunPtr obj "proximity" cb'' connectMode detail

#endif

-- signal GestureStylus::up
-- | /No description available in the introspection data./
type GestureStylusUpCallback =
    Double
    -> Double
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureStylusUpCallback`@.
noGestureStylusUpCallback :: Maybe GestureStylusUpCallback
noGestureStylusUpCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureStylusUpCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureStylusUpCallback`.
foreign import ccall "wrapper"
    mk_GestureStylusUpCallback :: C_GestureStylusUpCallback -> IO (FunPtr C_GestureStylusUpCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureStylusUp :: MonadIO m => GestureStylusUpCallback -> m (GClosure C_GestureStylusUpCallback)
genClosure_GestureStylusUp cb = liftIO $ do
    let cb' = wrap_GestureStylusUpCallback cb
    mk_GestureStylusUpCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureStylusUpCallback` into a `C_GestureStylusUpCallback`.
wrap_GestureStylusUpCallback ::
    GestureStylusUpCallback ->
    C_GestureStylusUpCallback
wrap_GestureStylusUpCallback _cb _ object p0 _ = do
    let object' = realToFrac object
    let p0' = realToFrac p0
    _cb  object' p0'


-- | Connect a signal handler for the [up](#signal:up) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureStylus #up callback
-- @
-- 
-- 
onGestureStylusUp :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusUpCallback -> m SignalHandlerId
onGestureStylusUp obj cb = liftIO $ do
    let cb' = wrap_GestureStylusUpCallback cb
    cb'' <- mk_GestureStylusUpCallback cb'
    connectSignalFunPtr obj "up" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [up](#signal:up) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureStylus #up callback
-- @
-- 
-- 
afterGestureStylusUp :: (IsGestureStylus a, MonadIO m) => a -> GestureStylusUpCallback -> m SignalHandlerId
afterGestureStylusUp obj cb = liftIO $ do
    let cb' = wrap_GestureStylusUpCallback cb
    cb'' <- mk_GestureStylusUpCallback cb'
    connectSignalFunPtr obj "up" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureStylusUpSignalInfo
instance SignalInfo GestureStylusUpSignalInfo where
    type HaskellCallbackType GestureStylusUpSignalInfo = GestureStylusUpCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureStylusUpCallback cb
        cb'' <- mk_GestureStylusUpCallback cb'
        connectSignalFunPtr obj "up" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureStylus
type instance O.AttributeList GestureStylus = GestureStylusAttributeList
type GestureStylusAttributeList = ('[ '("button", Gtk.GestureSingle.GestureSingleButtonPropertyInfo), '("exclusive", Gtk.GestureSingle.GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", Gtk.GestureSingle.GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureStylus = GestureStylusSignalList
type GestureStylusSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("down", GestureStylusDownSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("motion", GestureStylusMotionSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("proximity", GestureStylusProximitySignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("up", GestureStylusUpSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureStylus::new
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
--               (TInterface Name { namespace = "Gtk" , name = "GestureStylus" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_stylus_new" gtk_gesture_stylus_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GestureStylus)

-- | Creates a new t'GI.Gtk.Objects.GestureStylus.GestureStylus'.
-- 
-- /Since: 3.24/
gestureStylusNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m GestureStylus
    -- ^ __Returns:__ a newly created stylus gesture
gestureStylusNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_gesture_stylus_new widget'
    checkUnexpectedReturnNULL "gestureStylusNew" result
    result' <- (wrapObject GestureStylus) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- XXX Could not generate method GestureStylus::get_axes
-- Error was : Bad introspection data: "`TCArray False (-1) (-1) (TBasicType TDouble)' is an array type, but contains no length information,\nso it cannot be unpacked."
#if defined(ENABLE_OVERLOADING)
-- XXX: Dummy instance, since code generation failed.
-- Please file a bug at http://github.com/haskell-gi/haskell-gi.
data GestureStylusGetAxesMethodInfo
instance (p ~ (), o ~ O.UnsupportedMethodError "getAxes" GestureStylus) => O.MethodInfo GestureStylusGetAxesMethodInfo o p where
    overloadedMethod = undefined
#endif

-- method GestureStylus::get_axis
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureStylus" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureStylus"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "axis"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "AxisUse" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "requested device axis"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the axis value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_stylus_get_axis" gtk_gesture_stylus_get_axis :: 
    Ptr GestureStylus ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureStylus"})
    CUInt ->                                -- axis : TInterface (Name {namespace = "Gdk", name = "AxisUse"})
    Ptr CDouble ->                          -- value : TBasicType TDouble
    IO CInt

-- | Returns the current value for the requested /@axis@/. This function
-- must be called from either the t'GI.Gtk.Objects.GestureStylus.GestureStylus':@/down/@,
-- t'GI.Gtk.Objects.GestureStylus.GestureStylus':@/motion/@, t'GI.Gtk.Objects.GestureStylus.GestureStylus':@/up/@ or t'GI.Gtk.Objects.GestureStylus.GestureStylus':@/proximity/@
-- signals.
-- 
-- /Since: 3.24/
gestureStylusGetAxis ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureStylus a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureStylus.GestureStylus'
    -> Gdk.Enums.AxisUse
    -- ^ /@axis@/: requested device axis
    -> m ((Bool, Double))
    -- ^ __Returns:__ @/TRUE/@ if there is a current value for the axis
gestureStylusGetAxis gesture axis = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    let axis' = (fromIntegral . fromEnum) axis
    value <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_stylus_get_axis gesture' axis' value
    let result' = (/= 0) result
    value' <- peek value
    let value'' = realToFrac value'
    touchManagedPtr gesture
    freeMem value
    return (result', value'')

#if defined(ENABLE_OVERLOADING)
data GestureStylusGetAxisMethodInfo
instance (signature ~ (Gdk.Enums.AxisUse -> m ((Bool, Double))), MonadIO m, IsGestureStylus a) => O.MethodInfo GestureStylusGetAxisMethodInfo a signature where
    overloadedMethod = gestureStylusGetAxis

#endif

-- method GestureStylus::get_device_tool
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureStylus" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGestureStylus"
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
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "DeviceTool" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_stylus_get_device_tool" gtk_gesture_stylus_get_device_tool :: 
    Ptr GestureStylus ->                    -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureStylus"})
    IO (Ptr Gdk.DeviceTool.DeviceTool)

-- | Returns the t'GI.Gdk.Objects.DeviceTool.DeviceTool' currently driving input through this gesture.
-- This function must be called from either the [down]("GI.Gtk.Objects.GestureStylus#signal:down"),
-- [motion]("GI.Gtk.Objects.GestureStylus#signal:motion"), [up]("GI.Gtk.Objects.GestureStylus#signal:up") or [proximity]("GI.Gtk.Objects.GestureStylus#signal:proximity")
-- signal handlers.
-- 
-- /Since: 3.24/
gestureStylusGetDeviceTool ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureStylus a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.GestureStylus.GestureStylus'
    -> m (Maybe Gdk.DeviceTool.DeviceTool)
    -- ^ __Returns:__ The current stylus tool
gestureStylusGetDeviceTool gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_stylus_get_device_tool gesture'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gdk.DeviceTool.DeviceTool) result'
        return result''
    touchManagedPtr gesture
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureStylusGetDeviceToolMethodInfo
instance (signature ~ (m (Maybe Gdk.DeviceTool.DeviceTool)), MonadIO m, IsGestureStylus a) => O.MethodInfo GestureStylusGetDeviceToolMethodInfo a signature where
    overloadedMethod = gestureStylusGetDeviceTool

#endif

