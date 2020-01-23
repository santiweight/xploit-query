{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.GestureDrag.GestureDrag' is a t'GI.Gtk.Objects.Gesture.Gesture' implementation that recognizes drag
-- operations. The drag operation itself can be tracked throught the
-- [dragBegin]("GI.Gtk.Objects.GestureDrag#signal:dragBegin"), [dragUpdate]("GI.Gtk.Objects.GestureDrag#signal:dragUpdate") and
-- [dragEnd]("GI.Gtk.Objects.GestureDrag#signal:dragEnd") signals, or the relevant coordinates be
-- extracted through 'GI.Gtk.Objects.GestureDrag.gestureDragGetOffset' and
-- 'GI.Gtk.Objects.GestureDrag.gestureDragGetStartPoint'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.GestureDrag
    ( 

-- * Exported types
    GestureDrag(..)                         ,
    IsGestureDrag                           ,
    toGestureDrag                           ,
    noGestureDrag                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureDragMethod                ,
#endif


-- ** getOffset #method:getOffset#

#if defined(ENABLE_OVERLOADING)
    GestureDragGetOffsetMethodInfo          ,
#endif
    gestureDragGetOffset                    ,


-- ** getStartPoint #method:getStartPoint#

#if defined(ENABLE_OVERLOADING)
    GestureDragGetStartPointMethodInfo      ,
#endif
    gestureDragGetStartPoint                ,


-- ** new #method:new#

    gestureDragNew                          ,




 -- * Signals
-- ** dragBegin #signal:dragBegin#

    C_GestureDragDragBeginCallback          ,
    GestureDragDragBeginCallback            ,
#if defined(ENABLE_OVERLOADING)
    GestureDragDragBeginSignalInfo          ,
#endif
    afterGestureDragDragBegin               ,
    genClosure_GestureDragDragBegin         ,
    mk_GestureDragDragBeginCallback         ,
    noGestureDragDragBeginCallback          ,
    onGestureDragDragBegin                  ,
    wrap_GestureDragDragBeginCallback       ,


-- ** dragEnd #signal:dragEnd#

    C_GestureDragDragEndCallback            ,
    GestureDragDragEndCallback              ,
#if defined(ENABLE_OVERLOADING)
    GestureDragDragEndSignalInfo            ,
#endif
    afterGestureDragDragEnd                 ,
    genClosure_GestureDragDragEnd           ,
    mk_GestureDragDragEndCallback           ,
    noGestureDragDragEndCallback            ,
    onGestureDragDragEnd                    ,
    wrap_GestureDragDragEndCallback         ,


-- ** dragUpdate #signal:dragUpdate#

    C_GestureDragDragUpdateCallback         ,
    GestureDragDragUpdateCallback           ,
#if defined(ENABLE_OVERLOADING)
    GestureDragDragUpdateSignalInfo         ,
#endif
    afterGestureDragDragUpdate              ,
    genClosure_GestureDragDragUpdate        ,
    mk_GestureDragDragUpdateCallback        ,
    noGestureDragDragUpdateCallback         ,
    onGestureDragDragUpdate                 ,
    wrap_GestureDragDragUpdateCallback      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Gesture as Gtk.Gesture
import {-# SOURCE #-} qualified GI.Gtk.Objects.GestureSingle as Gtk.GestureSingle
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype GestureDrag = GestureDrag (ManagedPtr GestureDrag)
    deriving (Eq)
foreign import ccall "gtk_gesture_drag_get_type"
    c_gtk_gesture_drag_get_type :: IO GType

instance GObject GestureDrag where
    gobjectType = c_gtk_gesture_drag_get_type
    

-- | Convert 'GestureDrag' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GestureDrag where
    toGValue o = do
        gtype <- c_gtk_gesture_drag_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GestureDrag)
        B.ManagedPtr.newObject GestureDrag ptr
        
    

-- | Type class for types which can be safely cast to `GestureDrag`, for instance with `toGestureDrag`.
class (GObject o, O.IsDescendantOf GestureDrag o) => IsGestureDrag o
instance (GObject o, O.IsDescendantOf GestureDrag o) => IsGestureDrag o

instance O.HasParentTypes GestureDrag
type instance O.ParentTypes GestureDrag = '[Gtk.GestureSingle.GestureSingle, Gtk.Gesture.Gesture, Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `GestureDrag`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGestureDrag :: (MonadIO m, IsGestureDrag o) => o -> m GestureDrag
toGestureDrag = liftIO . unsafeCastTo GestureDrag

-- | A convenience alias for `Nothing` :: `Maybe` `GestureDrag`.
noGestureDrag :: Maybe GestureDrag
noGestureDrag = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureDragMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureDragMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureDragMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureDragMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureDragMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureDragMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureDragMethod "group" o = Gtk.Gesture.GestureGroupMethodInfo
    ResolveGestureDragMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureDragMethod "handlesSequence" o = Gtk.Gesture.GestureHandlesSequenceMethodInfo
    ResolveGestureDragMethod "isActive" o = Gtk.Gesture.GestureIsActiveMethodInfo
    ResolveGestureDragMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureDragMethod "isGroupedWith" o = Gtk.Gesture.GestureIsGroupedWithMethodInfo
    ResolveGestureDragMethod "isRecognized" o = Gtk.Gesture.GestureIsRecognizedMethodInfo
    ResolveGestureDragMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureDragMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureDragMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureDragMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureDragMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureDragMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureDragMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureDragMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureDragMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureDragMethod "ungroup" o = Gtk.Gesture.GestureUngroupMethodInfo
    ResolveGestureDragMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureDragMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureDragMethod "getBoundingBox" o = Gtk.Gesture.GestureGetBoundingBoxMethodInfo
    ResolveGestureDragMethod "getBoundingBoxCenter" o = Gtk.Gesture.GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureDragMethod "getButton" o = Gtk.GestureSingle.GestureSingleGetButtonMethodInfo
    ResolveGestureDragMethod "getCurrentButton" o = Gtk.GestureSingle.GestureSingleGetCurrentButtonMethodInfo
    ResolveGestureDragMethod "getCurrentSequence" o = Gtk.GestureSingle.GestureSingleGetCurrentSequenceMethodInfo
    ResolveGestureDragMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureDragMethod "getDevice" o = Gtk.Gesture.GestureGetDeviceMethodInfo
    ResolveGestureDragMethod "getExclusive" o = Gtk.GestureSingle.GestureSingleGetExclusiveMethodInfo
    ResolveGestureDragMethod "getGroup" o = Gtk.Gesture.GestureGetGroupMethodInfo
    ResolveGestureDragMethod "getLastEvent" o = Gtk.Gesture.GestureGetLastEventMethodInfo
    ResolveGestureDragMethod "getLastUpdatedSequence" o = Gtk.Gesture.GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureDragMethod "getOffset" o = GestureDragGetOffsetMethodInfo
    ResolveGestureDragMethod "getPoint" o = Gtk.Gesture.GestureGetPointMethodInfo
    ResolveGestureDragMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureDragMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureDragMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureDragMethod "getSequenceState" o = Gtk.Gesture.GestureGetSequenceStateMethodInfo
    ResolveGestureDragMethod "getSequences" o = Gtk.Gesture.GestureGetSequencesMethodInfo
    ResolveGestureDragMethod "getStartPoint" o = GestureDragGetStartPointMethodInfo
    ResolveGestureDragMethod "getTouchOnly" o = Gtk.GestureSingle.GestureSingleGetTouchOnlyMethodInfo
    ResolveGestureDragMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureDragMethod "getWindow" o = Gtk.Gesture.GestureGetWindowMethodInfo
    ResolveGestureDragMethod "setButton" o = Gtk.GestureSingle.GestureSingleSetButtonMethodInfo
    ResolveGestureDragMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureDragMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureDragMethod "setExclusive" o = Gtk.GestureSingle.GestureSingleSetExclusiveMethodInfo
    ResolveGestureDragMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureDragMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureDragMethod "setSequenceState" o = Gtk.Gesture.GestureSetSequenceStateMethodInfo
    ResolveGestureDragMethod "setState" o = Gtk.Gesture.GestureSetStateMethodInfo
    ResolveGestureDragMethod "setTouchOnly" o = Gtk.GestureSingle.GestureSingleSetTouchOnlyMethodInfo
    ResolveGestureDragMethod "setWindow" o = Gtk.Gesture.GestureSetWindowMethodInfo
    ResolveGestureDragMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureDragMethod t GestureDrag, O.MethodInfo info GestureDrag p) => OL.IsLabel t (GestureDrag -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal GestureDrag::drag-begin
-- | This signal is emitted whenever dragging starts.
-- 
-- /Since: 3.14/
type GestureDragDragBeginCallback =
    Double
    -- ^ /@startX@/: X coordinate, relative to the widget allocation
    -> Double
    -- ^ /@startY@/: Y coordinate, relative to the widget allocation
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureDragDragBeginCallback`@.
noGestureDragDragBeginCallback :: Maybe GestureDragDragBeginCallback
noGestureDragDragBeginCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureDragDragBeginCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureDragDragBeginCallback`.
foreign import ccall "wrapper"
    mk_GestureDragDragBeginCallback :: C_GestureDragDragBeginCallback -> IO (FunPtr C_GestureDragDragBeginCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureDragDragBegin :: MonadIO m => GestureDragDragBeginCallback -> m (GClosure C_GestureDragDragBeginCallback)
genClosure_GestureDragDragBegin cb = liftIO $ do
    let cb' = wrap_GestureDragDragBeginCallback cb
    mk_GestureDragDragBeginCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureDragDragBeginCallback` into a `C_GestureDragDragBeginCallback`.
wrap_GestureDragDragBeginCallback ::
    GestureDragDragBeginCallback ->
    C_GestureDragDragBeginCallback
wrap_GestureDragDragBeginCallback _cb _ startX startY _ = do
    let startX' = realToFrac startX
    let startY' = realToFrac startY
    _cb  startX' startY'


-- | Connect a signal handler for the [dragBegin](#signal:dragBegin) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureDrag #dragBegin callback
-- @
-- 
-- 
onGestureDragDragBegin :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragBeginCallback -> m SignalHandlerId
onGestureDragDragBegin obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragBeginCallback cb
    cb'' <- mk_GestureDragDragBeginCallback cb'
    connectSignalFunPtr obj "drag-begin" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragBegin](#signal:dragBegin) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureDrag #dragBegin callback
-- @
-- 
-- 
afterGestureDragDragBegin :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragBeginCallback -> m SignalHandlerId
afterGestureDragDragBegin obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragBeginCallback cb
    cb'' <- mk_GestureDragDragBeginCallback cb'
    connectSignalFunPtr obj "drag-begin" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureDragDragBeginSignalInfo
instance SignalInfo GestureDragDragBeginSignalInfo where
    type HaskellCallbackType GestureDragDragBeginSignalInfo = GestureDragDragBeginCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureDragDragBeginCallback cb
        cb'' <- mk_GestureDragDragBeginCallback cb'
        connectSignalFunPtr obj "drag-begin" cb'' connectMode detail

#endif

-- signal GestureDrag::drag-end
-- | This signal is emitted whenever the dragging is finished.
-- 
-- /Since: 3.14/
type GestureDragDragEndCallback =
    Double
    -- ^ /@offsetX@/: X offset, relative to the start point
    -> Double
    -- ^ /@offsetY@/: Y offset, relative to the start point
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureDragDragEndCallback`@.
noGestureDragDragEndCallback :: Maybe GestureDragDragEndCallback
noGestureDragDragEndCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureDragDragEndCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureDragDragEndCallback`.
foreign import ccall "wrapper"
    mk_GestureDragDragEndCallback :: C_GestureDragDragEndCallback -> IO (FunPtr C_GestureDragDragEndCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureDragDragEnd :: MonadIO m => GestureDragDragEndCallback -> m (GClosure C_GestureDragDragEndCallback)
genClosure_GestureDragDragEnd cb = liftIO $ do
    let cb' = wrap_GestureDragDragEndCallback cb
    mk_GestureDragDragEndCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureDragDragEndCallback` into a `C_GestureDragDragEndCallback`.
wrap_GestureDragDragEndCallback ::
    GestureDragDragEndCallback ->
    C_GestureDragDragEndCallback
wrap_GestureDragDragEndCallback _cb _ offsetX offsetY _ = do
    let offsetX' = realToFrac offsetX
    let offsetY' = realToFrac offsetY
    _cb  offsetX' offsetY'


-- | Connect a signal handler for the [dragEnd](#signal:dragEnd) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureDrag #dragEnd callback
-- @
-- 
-- 
onGestureDragDragEnd :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragEndCallback -> m SignalHandlerId
onGestureDragDragEnd obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragEndCallback cb
    cb'' <- mk_GestureDragDragEndCallback cb'
    connectSignalFunPtr obj "drag-end" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragEnd](#signal:dragEnd) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureDrag #dragEnd callback
-- @
-- 
-- 
afterGestureDragDragEnd :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragEndCallback -> m SignalHandlerId
afterGestureDragDragEnd obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragEndCallback cb
    cb'' <- mk_GestureDragDragEndCallback cb'
    connectSignalFunPtr obj "drag-end" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureDragDragEndSignalInfo
instance SignalInfo GestureDragDragEndSignalInfo where
    type HaskellCallbackType GestureDragDragEndSignalInfo = GestureDragDragEndCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureDragDragEndCallback cb
        cb'' <- mk_GestureDragDragEndCallback cb'
        connectSignalFunPtr obj "drag-end" cb'' connectMode detail

#endif

-- signal GestureDrag::drag-update
-- | This signal is emitted whenever the dragging point moves.
-- 
-- /Since: 3.14/
type GestureDragDragUpdateCallback =
    Double
    -- ^ /@offsetX@/: X offset, relative to the start point
    -> Double
    -- ^ /@offsetY@/: Y offset, relative to the start point
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureDragDragUpdateCallback`@.
noGestureDragDragUpdateCallback :: Maybe GestureDragDragUpdateCallback
noGestureDragDragUpdateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureDragDragUpdateCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureDragDragUpdateCallback`.
foreign import ccall "wrapper"
    mk_GestureDragDragUpdateCallback :: C_GestureDragDragUpdateCallback -> IO (FunPtr C_GestureDragDragUpdateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureDragDragUpdate :: MonadIO m => GestureDragDragUpdateCallback -> m (GClosure C_GestureDragDragUpdateCallback)
genClosure_GestureDragDragUpdate cb = liftIO $ do
    let cb' = wrap_GestureDragDragUpdateCallback cb
    mk_GestureDragDragUpdateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureDragDragUpdateCallback` into a `C_GestureDragDragUpdateCallback`.
wrap_GestureDragDragUpdateCallback ::
    GestureDragDragUpdateCallback ->
    C_GestureDragDragUpdateCallback
wrap_GestureDragDragUpdateCallback _cb _ offsetX offsetY _ = do
    let offsetX' = realToFrac offsetX
    let offsetY' = realToFrac offsetY
    _cb  offsetX' offsetY'


-- | Connect a signal handler for the [dragUpdate](#signal:dragUpdate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gestureDrag #dragUpdate callback
-- @
-- 
-- 
onGestureDragDragUpdate :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragUpdateCallback -> m SignalHandlerId
onGestureDragDragUpdate obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragUpdateCallback cb
    cb'' <- mk_GestureDragDragUpdateCallback cb'
    connectSignalFunPtr obj "drag-update" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [dragUpdate](#signal:dragUpdate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gestureDrag #dragUpdate callback
-- @
-- 
-- 
afterGestureDragDragUpdate :: (IsGestureDrag a, MonadIO m) => a -> GestureDragDragUpdateCallback -> m SignalHandlerId
afterGestureDragDragUpdate obj cb = liftIO $ do
    let cb' = wrap_GestureDragDragUpdateCallback cb
    cb'' <- mk_GestureDragDragUpdateCallback cb'
    connectSignalFunPtr obj "drag-update" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureDragDragUpdateSignalInfo
instance SignalInfo GestureDragDragUpdateSignalInfo where
    type HaskellCallbackType GestureDragDragUpdateSignalInfo = GestureDragDragUpdateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureDragDragUpdateCallback cb
        cb'' <- mk_GestureDragDragUpdateCallback cb'
        connectSignalFunPtr obj "drag-update" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GestureDrag
type instance O.AttributeList GestureDrag = GestureDragAttributeList
type GestureDragAttributeList = ('[ '("button", Gtk.GestureSingle.GestureSingleButtonPropertyInfo), '("exclusive", Gtk.GestureSingle.GestureSingleExclusivePropertyInfo), '("nPoints", Gtk.Gesture.GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("touchOnly", Gtk.GestureSingle.GestureSingleTouchOnlyPropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", Gtk.Gesture.GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GestureDrag = GestureDragSignalList
type GestureDragSignalList = ('[ '("begin", Gtk.Gesture.GestureBeginSignalInfo), '("cancel", Gtk.Gesture.GestureCancelSignalInfo), '("dragBegin", GestureDragDragBeginSignalInfo), '("dragEnd", GestureDragDragEndSignalInfo), '("dragUpdate", GestureDragDragUpdateSignalInfo), '("end", Gtk.Gesture.GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("sequenceStateChanged", Gtk.Gesture.GestureSequenceStateChangedSignalInfo), '("update", Gtk.Gesture.GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method GestureDrag::new
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "GestureDrag" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_drag_new" gtk_gesture_drag_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr GestureDrag)

-- | Returns a newly created t'GI.Gtk.Objects.Gesture.Gesture' that recognizes drags.
-- 
-- /Since: 3.14/
gestureDragNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m GestureDrag
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.GestureDrag.GestureDrag'
gestureDragNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_gesture_drag_new widget'
    checkUnexpectedReturnNULL "gestureDragNew" result
    result' <- (wrapObject GestureDrag) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GestureDrag::get_offset
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureDrag" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGesture" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "X offset for the current point"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Y offset for the current point"
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

foreign import ccall "gtk_gesture_drag_get_offset" gtk_gesture_drag_get_offset :: 
    Ptr GestureDrag ->                      -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureDrag"})
    Ptr CDouble ->                          -- x : TBasicType TDouble
    Ptr CDouble ->                          -- y : TBasicType TDouble
    IO CInt

-- | If the /@gesture@/ is active, this function returns 'P.True' and
-- fills in /@x@/ and /@y@/ with the coordinates of the current point,
-- as an offset to the starting drag point.
-- 
-- /Since: 3.14/
gestureDragGetOffset ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureDrag a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ((Bool, Double, Double))
    -- ^ __Returns:__ 'P.True' if the gesture is active
gestureDragGetOffset gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    x <- allocMem :: IO (Ptr CDouble)
    y <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_drag_get_offset gesture' x y
    let result' = (/= 0) result
    x' <- peek x
    let x'' = realToFrac x'
    y' <- peek y
    let y'' = realToFrac y'
    touchManagedPtr gesture
    freeMem x
    freeMem y
    return (result', x'', y'')

#if defined(ENABLE_OVERLOADING)
data GestureDragGetOffsetMethodInfo
instance (signature ~ (m ((Bool, Double, Double))), MonadIO m, IsGestureDrag a) => O.MethodInfo GestureDragGetOffsetMethodInfo a signature where
    overloadedMethod = gestureDragGetOffset

#endif

-- method GestureDrag::get_start_point
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "GestureDrag" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGesture" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "X coordinate for the drag start point"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Y coordinate for the drag start point"
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

foreign import ccall "gtk_gesture_drag_get_start_point" gtk_gesture_drag_get_start_point :: 
    Ptr GestureDrag ->                      -- gesture : TInterface (Name {namespace = "Gtk", name = "GestureDrag"})
    Ptr CDouble ->                          -- x : TBasicType TDouble
    Ptr CDouble ->                          -- y : TBasicType TDouble
    IO CInt

-- | If the /@gesture@/ is active, this function returns 'P.True'
-- and fills in /@x@/ and /@y@/ with the drag start coordinates,
-- in window-relative coordinates.
-- 
-- /Since: 3.14/
gestureDragGetStartPoint ::
    (B.CallStack.HasCallStack, MonadIO m, IsGestureDrag a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ((Bool, Double, Double))
    -- ^ __Returns:__ 'P.True' if the gesture is active
gestureDragGetStartPoint gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    x <- allocMem :: IO (Ptr CDouble)
    y <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_drag_get_start_point gesture' x y
    let result' = (/= 0) result
    x' <- peek x
    let x'' = realToFrac x'
    y' <- peek y
    let y'' = realToFrac y'
    touchManagedPtr gesture
    freeMem x
    freeMem y
    return (result', x'', y'')

#if defined(ENABLE_OVERLOADING)
data GestureDragGetStartPointMethodInfo
instance (signature ~ (m ((Bool, Double, Double))), MonadIO m, IsGestureDrag a) => O.MethodInfo GestureDragGetStartPointMethodInfo a signature where
    overloadedMethod = gestureDragGetStartPoint

#endif

