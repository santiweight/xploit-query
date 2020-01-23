{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.Gesture.Gesture' is the base object for gesture recognition, although this
-- object is quite generalized to serve as a base for multi-touch gestures,
-- it is suitable to implement single-touch and pointer-based gestures (using
-- the special 'P.Nothing' t'GI.Gdk.Structs.EventSequence.EventSequence' value for these).
-- 
-- The number of touches that a t'GI.Gtk.Objects.Gesture.Gesture' need to be recognized is controlled
-- by the t'GI.Gtk.Objects.Gesture.Gesture':@/n-points/@ property, if a gesture is keeping track of less
-- or more than that number of sequences, it won\'t check wether the gesture
-- is recognized.
-- 
-- As soon as the gesture has the expected number of touches, the gesture will
-- run the t'GI.Gtk.Objects.Gesture.Gesture'::@/check/@ signal regularly on input events until the gesture
-- is recognized, the criteria to consider a gesture as \"recognized\" is left to
-- t'GI.Gtk.Objects.Gesture.Gesture' subclasses.
-- 
-- A recognized gesture will then emit the following signals:
-- 
-- * [begin]("GI.Gtk.Objects.Gesture#signal:begin") when the gesture is recognized.
-- * A number of [update]("GI.Gtk.Objects.Gesture#signal:update"), whenever an input event is processed.
-- * [end]("GI.Gtk.Objects.Gesture#signal:end") when the gesture is no longer recognized.
-- 
-- 
-- == Event propagation
-- 
-- In order to receive events, a gesture needs to either set a propagation phase
-- through 'GI.Gtk.Objects.EventController.eventControllerSetPropagationPhase', or feed those manually
-- through 'GI.Gtk.Objects.EventController.eventControllerHandleEvent'.
-- 
-- In the capture phase, events are propagated from the toplevel down to the
-- target widget, and gestures that are attached to containers above the widget
-- get a chance to interact with the event before it reaches the target.
-- 
-- After the capture phase, GTK+ emits the traditional [buttonPressEvent]("GI.Gtk.Objects.Widget#signal:buttonPressEvent"),
-- [buttonReleaseEvent]("GI.Gtk.Objects.Widget#signal:buttonReleaseEvent"), [touchEvent]("GI.Gtk.Objects.Widget#signal:touchEvent"), etc signals. Gestures
-- with the 'GI.Gtk.Enums.PropagationPhaseTarget' phase are fed events from the default [event]("GI.Gtk.Objects.Widget#signal:event")
-- handlers.
-- 
-- In the bubble phase, events are propagated up from the target widget to the
-- toplevel, and gestures that are attached to containers above the widget get
-- a chance to interact with events that have not been handled yet.
-- 
-- ## States of a sequence # {@/touch/@-sequence-states}
-- 
-- Whenever input interaction happens, a single event may trigger a cascade of
-- @/GtkGestures/@, both across the parents of the widget receiving the event and
-- in parallel within an individual widget. It is a responsibility of the
-- widgets using those gestures to set the state of touch sequences accordingly
-- in order to enable cooperation of gestures around the @/GdkEventSequences/@
-- triggering those.
-- 
-- Within a widget, gestures can be grouped through 'GI.Gtk.Objects.Gesture.gestureGroup',
-- grouped gestures synchronize the state of sequences, so calling
-- 'GI.Gtk.Objects.Gesture.gestureSetSequenceState' on one will effectively propagate
-- the state throughout the group.
-- 
-- By default, all sequences start out in the @/GTK_EVENT_SEQUENCE_NONE/@ state,
-- sequences in this state trigger the gesture event handler, but event
-- propagation will continue unstopped by gestures.
-- 
-- If a sequence enters into the @/GTK_EVENT_SEQUENCE_DENIED/@ state, the gesture
-- group will effectively ignore the sequence, letting events go unstopped
-- through the gesture, but the \"slot\" will still remain occupied while
-- the touch is active.
-- 
-- If a sequence enters in the @/GTK_EVENT_SEQUENCE_CLAIMED/@ state, the gesture
-- group will grab all interaction on the sequence, by:
-- 
-- * Setting the same sequence to @/GTK_EVENT_SEQUENCE_DENIED/@ on every other gesture
-- group within the widget, and every gesture on parent widgets in the propagation
-- chain.
-- * calling [cancel]("GI.Gtk.Objects.Gesture#signal:cancel") on every gesture in widgets underneath in the
-- propagation chain.
-- * Stopping event propagation after the gesture group handles the event.
-- 
-- 
-- Note: if a sequence is set early to @/GTK_EVENT_SEQUENCE_CLAIMED/@ on
-- @/GDK_TOUCH_BEGIN/@\/@/GDK_BUTTON_PRESS/@ (so those events are captured before
-- reaching the event widget, this implies @/GTK_PHASE_CAPTURE/@), one similar
-- event will emulated if the sequence changes to @/GTK_EVENT_SEQUENCE_DENIED/@.
-- This way event coherence is preserved before event propagation is unstopped
-- again.
-- 
-- Sequence states can\'t be changed freely, see 'GI.Gtk.Objects.Gesture.gestureSetSequenceState'
-- to know about the possible lifetimes of a t'GI.Gdk.Structs.EventSequence.EventSequence'.
-- 
-- == Touchpad gestures
-- 
-- On the platforms that support it, t'GI.Gtk.Objects.Gesture.Gesture' will handle transparently
-- touchpad gesture events. The only precautions users of t'GI.Gtk.Objects.Gesture.Gesture' should do
-- to enable this support are:
-- 
-- * Enabling 'GI.Gdk.Flags.EventMaskTouchpadGestureMask' on their @/GdkWindows/@
-- * If the gesture has 'GI.Gtk.Enums.PropagationPhaseNone', ensuring events of type
-- 'GI.Gdk.Enums.EventTypeTouchpadSwipe' and 'GI.Gdk.Enums.EventTypeTouchpadPinch' are handled by the t'GI.Gtk.Objects.Gesture.Gesture'
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Gesture
    ( 

-- * Exported types
    Gesture(..)                             ,
    IsGesture                               ,
    toGesture                               ,
    noGesture                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGestureMethod                    ,
#endif


-- ** getBoundingBox #method:getBoundingBox#

#if defined(ENABLE_OVERLOADING)
    GestureGetBoundingBoxMethodInfo         ,
#endif
    gestureGetBoundingBox                   ,


-- ** getBoundingBoxCenter #method:getBoundingBoxCenter#

#if defined(ENABLE_OVERLOADING)
    GestureGetBoundingBoxCenterMethodInfo   ,
#endif
    gestureGetBoundingBoxCenter             ,


-- ** getDevice #method:getDevice#

#if defined(ENABLE_OVERLOADING)
    GestureGetDeviceMethodInfo              ,
#endif
    gestureGetDevice                        ,


-- ** getGroup #method:getGroup#

#if defined(ENABLE_OVERLOADING)
    GestureGetGroupMethodInfo               ,
#endif
    gestureGetGroup                         ,


-- ** getLastEvent #method:getLastEvent#

#if defined(ENABLE_OVERLOADING)
    GestureGetLastEventMethodInfo           ,
#endif
    gestureGetLastEvent                     ,


-- ** getLastUpdatedSequence #method:getLastUpdatedSequence#

#if defined(ENABLE_OVERLOADING)
    GestureGetLastUpdatedSequenceMethodInfo ,
#endif
    gestureGetLastUpdatedSequence           ,


-- ** getPoint #method:getPoint#

#if defined(ENABLE_OVERLOADING)
    GestureGetPointMethodInfo               ,
#endif
    gestureGetPoint                         ,


-- ** getSequenceState #method:getSequenceState#

#if defined(ENABLE_OVERLOADING)
    GestureGetSequenceStateMethodInfo       ,
#endif
    gestureGetSequenceState                 ,


-- ** getSequences #method:getSequences#

#if defined(ENABLE_OVERLOADING)
    GestureGetSequencesMethodInfo           ,
#endif
    gestureGetSequences                     ,


-- ** getWindow #method:getWindow#

#if defined(ENABLE_OVERLOADING)
    GestureGetWindowMethodInfo              ,
#endif
    gestureGetWindow                        ,


-- ** group #method:group#

#if defined(ENABLE_OVERLOADING)
    GestureGroupMethodInfo                  ,
#endif
    gestureGroup                            ,


-- ** handlesSequence #method:handlesSequence#

#if defined(ENABLE_OVERLOADING)
    GestureHandlesSequenceMethodInfo        ,
#endif
    gestureHandlesSequence                  ,


-- ** isActive #method:isActive#

#if defined(ENABLE_OVERLOADING)
    GestureIsActiveMethodInfo               ,
#endif
    gestureIsActive                         ,


-- ** isGroupedWith #method:isGroupedWith#

#if defined(ENABLE_OVERLOADING)
    GestureIsGroupedWithMethodInfo          ,
#endif
    gestureIsGroupedWith                    ,


-- ** isRecognized #method:isRecognized#

#if defined(ENABLE_OVERLOADING)
    GestureIsRecognizedMethodInfo           ,
#endif
    gestureIsRecognized                     ,


-- ** setSequenceState #method:setSequenceState#

#if defined(ENABLE_OVERLOADING)
    GestureSetSequenceStateMethodInfo       ,
#endif
    gestureSetSequenceState                 ,


-- ** setState #method:setState#

#if defined(ENABLE_OVERLOADING)
    GestureSetStateMethodInfo               ,
#endif
    gestureSetState                         ,


-- ** setWindow #method:setWindow#

#if defined(ENABLE_OVERLOADING)
    GestureSetWindowMethodInfo              ,
#endif
    gestureSetWindow                        ,


-- ** ungroup #method:ungroup#

#if defined(ENABLE_OVERLOADING)
    GestureUngroupMethodInfo                ,
#endif
    gestureUngroup                          ,




 -- * Properties
-- ** nPoints #attr:nPoints#
-- | The number of touch points that trigger recognition on this gesture,
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GestureNPointsPropertyInfo              ,
#endif
    constructGestureNPoints                 ,
#if defined(ENABLE_OVERLOADING)
    gestureNPoints                          ,
#endif
    getGestureNPoints                       ,


-- ** window #attr:window#
-- | If non-'P.Nothing', the gesture will only listen for events that happen on
-- this t'GI.Gdk.Objects.Window.Window', or a child of it.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    GestureWindowPropertyInfo               ,
#endif
    clearGestureWindow                      ,
    constructGestureWindow                  ,
#if defined(ENABLE_OVERLOADING)
    gestureWindow                           ,
#endif
    getGestureWindow                        ,
    setGestureWindow                        ,




 -- * Signals
-- ** begin #signal:begin#

    C_GestureBeginCallback                  ,
    GestureBeginCallback                    ,
#if defined(ENABLE_OVERLOADING)
    GestureBeginSignalInfo                  ,
#endif
    afterGestureBegin                       ,
    genClosure_GestureBegin                 ,
    mk_GestureBeginCallback                 ,
    noGestureBeginCallback                  ,
    onGestureBegin                          ,
    wrap_GestureBeginCallback               ,


-- ** cancel #signal:cancel#

    C_GestureCancelCallback                 ,
    GestureCancelCallback                   ,
#if defined(ENABLE_OVERLOADING)
    GestureCancelSignalInfo                 ,
#endif
    afterGestureCancel                      ,
    genClosure_GestureCancel                ,
    mk_GestureCancelCallback                ,
    noGestureCancelCallback                 ,
    onGestureCancel                         ,
    wrap_GestureCancelCallback              ,


-- ** end #signal:end#

    C_GestureEndCallback                    ,
    GestureEndCallback                      ,
#if defined(ENABLE_OVERLOADING)
    GestureEndSignalInfo                    ,
#endif
    afterGestureEnd                         ,
    genClosure_GestureEnd                   ,
    mk_GestureEndCallback                   ,
    noGestureEndCallback                    ,
    onGestureEnd                            ,
    wrap_GestureEndCallback                 ,


-- ** sequenceStateChanged #signal:sequenceStateChanged#

    C_GestureSequenceStateChangedCallback   ,
    GestureSequenceStateChangedCallback     ,
#if defined(ENABLE_OVERLOADING)
    GestureSequenceStateChangedSignalInfo   ,
#endif
    afterGestureSequenceStateChanged        ,
    genClosure_GestureSequenceStateChanged  ,
    mk_GestureSequenceStateChangedCallback  ,
    noGestureSequenceStateChangedCallback   ,
    onGestureSequenceStateChanged           ,
    wrap_GestureSequenceStateChangedCallback,


-- ** update #signal:update#

    C_GestureUpdateCallback                 ,
    GestureUpdateCallback                   ,
#if defined(ENABLE_OVERLOADING)
    GestureUpdateSignalInfo                 ,
#endif
    afterGestureUpdate                      ,
    genClosure_GestureUpdate                ,
    mk_GestureUpdateCallback                ,
    noGestureUpdateCallback                 ,
    onGestureUpdate                         ,
    wrap_GestureUpdateCallback              ,




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
import qualified GI.Gdk.Objects.Device as Gdk.Device
import qualified GI.Gdk.Objects.Window as Gdk.Window
import qualified GI.Gdk.Structs.EventSequence as Gdk.EventSequence
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController

-- | Memory-managed wrapper type.
newtype Gesture = Gesture (ManagedPtr Gesture)
    deriving (Eq)
foreign import ccall "gtk_gesture_get_type"
    c_gtk_gesture_get_type :: IO GType

instance GObject Gesture where
    gobjectType = c_gtk_gesture_get_type
    

-- | Convert 'Gesture' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Gesture where
    toGValue o = do
        gtype <- c_gtk_gesture_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Gesture)
        B.ManagedPtr.newObject Gesture ptr
        
    

-- | Type class for types which can be safely cast to `Gesture`, for instance with `toGesture`.
class (GObject o, O.IsDescendantOf Gesture o) => IsGesture o
instance (GObject o, O.IsDescendantOf Gesture o) => IsGesture o

instance O.HasParentTypes Gesture
type instance O.ParentTypes Gesture = '[Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `Gesture`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGesture :: (MonadIO m, IsGesture o) => o -> m Gesture
toGesture = liftIO . unsafeCastTo Gesture

-- | A convenience alias for `Nothing` :: `Maybe` `Gesture`.
noGesture :: Maybe Gesture
noGesture = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGestureMethod (t :: Symbol) (o :: *) :: * where
    ResolveGestureMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGestureMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGestureMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGestureMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGestureMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGestureMethod "group" o = GestureGroupMethodInfo
    ResolveGestureMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveGestureMethod "handlesSequence" o = GestureHandlesSequenceMethodInfo
    ResolveGestureMethod "isActive" o = GestureIsActiveMethodInfo
    ResolveGestureMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGestureMethod "isGroupedWith" o = GestureIsGroupedWithMethodInfo
    ResolveGestureMethod "isRecognized" o = GestureIsRecognizedMethodInfo
    ResolveGestureMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGestureMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGestureMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGestureMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGestureMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveGestureMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGestureMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGestureMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGestureMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGestureMethod "ungroup" o = GestureUngroupMethodInfo
    ResolveGestureMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGestureMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGestureMethod "getBoundingBox" o = GestureGetBoundingBoxMethodInfo
    ResolveGestureMethod "getBoundingBoxCenter" o = GestureGetBoundingBoxCenterMethodInfo
    ResolveGestureMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGestureMethod "getDevice" o = GestureGetDeviceMethodInfo
    ResolveGestureMethod "getGroup" o = GestureGetGroupMethodInfo
    ResolveGestureMethod "getLastEvent" o = GestureGetLastEventMethodInfo
    ResolveGestureMethod "getLastUpdatedSequence" o = GestureGetLastUpdatedSequenceMethodInfo
    ResolveGestureMethod "getPoint" o = GestureGetPointMethodInfo
    ResolveGestureMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveGestureMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGestureMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGestureMethod "getSequenceState" o = GestureGetSequenceStateMethodInfo
    ResolveGestureMethod "getSequences" o = GestureGetSequencesMethodInfo
    ResolveGestureMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveGestureMethod "getWindow" o = GestureGetWindowMethodInfo
    ResolveGestureMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGestureMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGestureMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveGestureMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGestureMethod "setSequenceState" o = GestureSetSequenceStateMethodInfo
    ResolveGestureMethod "setState" o = GestureSetStateMethodInfo
    ResolveGestureMethod "setWindow" o = GestureSetWindowMethodInfo
    ResolveGestureMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGestureMethod t Gesture, O.MethodInfo info Gesture p) => OL.IsLabel t (Gesture -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Gesture::begin
-- | This signal is emitted when the gesture is recognized. This means the
-- number of touch sequences matches t'GI.Gtk.Objects.Gesture.Gesture':@/n-points/@, and the t'GI.Gtk.Objects.Gesture.Gesture'::@/check/@
-- handler(s) returned @/TRUE/@.
-- 
-- Note: These conditions may also happen when an extra touch (eg. a third touch
-- on a 2-touches gesture) is lifted, in that situation /@sequence@/ won\'t pertain
-- to the current set of active touches, so don\'t rely on this being true.
-- 
-- /Since: 3.14/
type GestureBeginCallback =
    Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: the t'GI.Gdk.Structs.EventSequence.EventSequence' that made the gesture to be recognized
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureBeginCallback`@.
noGestureBeginCallback :: Maybe GestureBeginCallback
noGestureBeginCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureBeginCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventSequence.EventSequence ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureBeginCallback`.
foreign import ccall "wrapper"
    mk_GestureBeginCallback :: C_GestureBeginCallback -> IO (FunPtr C_GestureBeginCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureBegin :: MonadIO m => GestureBeginCallback -> m (GClosure C_GestureBeginCallback)
genClosure_GestureBegin cb = liftIO $ do
    let cb' = wrap_GestureBeginCallback cb
    mk_GestureBeginCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureBeginCallback` into a `C_GestureBeginCallback`.
wrap_GestureBeginCallback ::
    GestureBeginCallback ->
    C_GestureBeginCallback
wrap_GestureBeginCallback _cb _ sequence _ = do
    B.ManagedPtr.withTransient Gdk.EventSequence.EventSequence sequence $ \sequence' -> do
        _cb  sequence'


-- | Connect a signal handler for the [begin](#signal:begin) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesture #begin callback
-- @
-- 
-- 
onGestureBegin :: (IsGesture a, MonadIO m) => a -> GestureBeginCallback -> m SignalHandlerId
onGestureBegin obj cb = liftIO $ do
    let cb' = wrap_GestureBeginCallback cb
    cb'' <- mk_GestureBeginCallback cb'
    connectSignalFunPtr obj "begin" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [begin](#signal:begin) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesture #begin callback
-- @
-- 
-- 
afterGestureBegin :: (IsGesture a, MonadIO m) => a -> GestureBeginCallback -> m SignalHandlerId
afterGestureBegin obj cb = liftIO $ do
    let cb' = wrap_GestureBeginCallback cb
    cb'' <- mk_GestureBeginCallback cb'
    connectSignalFunPtr obj "begin" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureBeginSignalInfo
instance SignalInfo GestureBeginSignalInfo where
    type HaskellCallbackType GestureBeginSignalInfo = GestureBeginCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureBeginCallback cb
        cb'' <- mk_GestureBeginCallback cb'
        connectSignalFunPtr obj "begin" cb'' connectMode detail

#endif

-- signal Gesture::cancel
-- | This signal is emitted whenever a sequence is cancelled. This usually
-- happens on active touches when 'GI.Gtk.Objects.EventController.eventControllerReset' is called
-- on /@gesture@/ (manually, due to grabs...), or the individual /@sequence@/
-- was claimed by parent widgets\' controllers (see 'GI.Gtk.Objects.Gesture.gestureSetSequenceState').
-- 
-- /@gesture@/ must forget everything about /@sequence@/ as a reaction to this signal.
-- 
-- /Since: 3.14/
type GestureCancelCallback =
    Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: the t'GI.Gdk.Structs.EventSequence.EventSequence' that was cancelled
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureCancelCallback`@.
noGestureCancelCallback :: Maybe GestureCancelCallback
noGestureCancelCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureCancelCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventSequence.EventSequence ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureCancelCallback`.
foreign import ccall "wrapper"
    mk_GestureCancelCallback :: C_GestureCancelCallback -> IO (FunPtr C_GestureCancelCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureCancel :: MonadIO m => GestureCancelCallback -> m (GClosure C_GestureCancelCallback)
genClosure_GestureCancel cb = liftIO $ do
    let cb' = wrap_GestureCancelCallback cb
    mk_GestureCancelCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureCancelCallback` into a `C_GestureCancelCallback`.
wrap_GestureCancelCallback ::
    GestureCancelCallback ->
    C_GestureCancelCallback
wrap_GestureCancelCallback _cb _ sequence _ = do
    B.ManagedPtr.withTransient Gdk.EventSequence.EventSequence sequence $ \sequence' -> do
        _cb  sequence'


-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesture #cancel callback
-- @
-- 
-- 
onGestureCancel :: (IsGesture a, MonadIO m) => a -> GestureCancelCallback -> m SignalHandlerId
onGestureCancel obj cb = liftIO $ do
    let cb' = wrap_GestureCancelCallback cb
    cb'' <- mk_GestureCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesture #cancel callback
-- @
-- 
-- 
afterGestureCancel :: (IsGesture a, MonadIO m) => a -> GestureCancelCallback -> m SignalHandlerId
afterGestureCancel obj cb = liftIO $ do
    let cb' = wrap_GestureCancelCallback cb
    cb'' <- mk_GestureCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureCancelSignalInfo
instance SignalInfo GestureCancelSignalInfo where
    type HaskellCallbackType GestureCancelSignalInfo = GestureCancelCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureCancelCallback cb
        cb'' <- mk_GestureCancelCallback cb'
        connectSignalFunPtr obj "cancel" cb'' connectMode detail

#endif

-- signal Gesture::end
-- | This signal is emitted when /@gesture@/ either stopped recognizing the event
-- sequences as something to be handled (the t'GI.Gtk.Objects.Gesture.Gesture'::@/check/@ handler returned
-- 'P.False'), or the number of touch sequences became higher or lower than
-- t'GI.Gtk.Objects.Gesture.Gesture':@/n-points/@.
-- 
-- Note: /@sequence@/ might not pertain to the group of sequences that were
-- previously triggering recognition on /@gesture@/ (ie. a just pressed touch
-- sequence that exceeds t'GI.Gtk.Objects.Gesture.Gesture':@/n-points/@). This situation may be detected
-- by checking through 'GI.Gtk.Objects.Gesture.gestureHandlesSequence'.
-- 
-- /Since: 3.14/
type GestureEndCallback =
    Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: the t'GI.Gdk.Structs.EventSequence.EventSequence' that made gesture recognition to finish
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureEndCallback`@.
noGestureEndCallback :: Maybe GestureEndCallback
noGestureEndCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureEndCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventSequence.EventSequence ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureEndCallback`.
foreign import ccall "wrapper"
    mk_GestureEndCallback :: C_GestureEndCallback -> IO (FunPtr C_GestureEndCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureEnd :: MonadIO m => GestureEndCallback -> m (GClosure C_GestureEndCallback)
genClosure_GestureEnd cb = liftIO $ do
    let cb' = wrap_GestureEndCallback cb
    mk_GestureEndCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureEndCallback` into a `C_GestureEndCallback`.
wrap_GestureEndCallback ::
    GestureEndCallback ->
    C_GestureEndCallback
wrap_GestureEndCallback _cb _ sequence _ = do
    B.ManagedPtr.withTransient Gdk.EventSequence.EventSequence sequence $ \sequence' -> do
        _cb  sequence'


-- | Connect a signal handler for the [end](#signal:end) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesture #end callback
-- @
-- 
-- 
onGestureEnd :: (IsGesture a, MonadIO m) => a -> GestureEndCallback -> m SignalHandlerId
onGestureEnd obj cb = liftIO $ do
    let cb' = wrap_GestureEndCallback cb
    cb'' <- mk_GestureEndCallback cb'
    connectSignalFunPtr obj "end" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [end](#signal:end) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesture #end callback
-- @
-- 
-- 
afterGestureEnd :: (IsGesture a, MonadIO m) => a -> GestureEndCallback -> m SignalHandlerId
afterGestureEnd obj cb = liftIO $ do
    let cb' = wrap_GestureEndCallback cb
    cb'' <- mk_GestureEndCallback cb'
    connectSignalFunPtr obj "end" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureEndSignalInfo
instance SignalInfo GestureEndSignalInfo where
    type HaskellCallbackType GestureEndSignalInfo = GestureEndCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureEndCallback cb
        cb'' <- mk_GestureEndCallback cb'
        connectSignalFunPtr obj "end" cb'' connectMode detail

#endif

-- signal Gesture::sequence-state-changed
-- | This signal is emitted whenever a sequence state changes. See
-- 'GI.Gtk.Objects.Gesture.gestureSetSequenceState' to know more about the expectable
-- sequence lifetimes.
-- 
-- /Since: 3.14/
type GestureSequenceStateChangedCallback =
    Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: the t'GI.Gdk.Structs.EventSequence.EventSequence' that was cancelled
    -> Gtk.Enums.EventSequenceState
    -- ^ /@state@/: the new sequence state
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureSequenceStateChangedCallback`@.
noGestureSequenceStateChangedCallback :: Maybe GestureSequenceStateChangedCallback
noGestureSequenceStateChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureSequenceStateChangedCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventSequence.EventSequence ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureSequenceStateChangedCallback`.
foreign import ccall "wrapper"
    mk_GestureSequenceStateChangedCallback :: C_GestureSequenceStateChangedCallback -> IO (FunPtr C_GestureSequenceStateChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureSequenceStateChanged :: MonadIO m => GestureSequenceStateChangedCallback -> m (GClosure C_GestureSequenceStateChangedCallback)
genClosure_GestureSequenceStateChanged cb = liftIO $ do
    let cb' = wrap_GestureSequenceStateChangedCallback cb
    mk_GestureSequenceStateChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureSequenceStateChangedCallback` into a `C_GestureSequenceStateChangedCallback`.
wrap_GestureSequenceStateChangedCallback ::
    GestureSequenceStateChangedCallback ->
    C_GestureSequenceStateChangedCallback
wrap_GestureSequenceStateChangedCallback _cb _ sequence state _ = do
    B.ManagedPtr.withTransient Gdk.EventSequence.EventSequence sequence $ \sequence' -> do
        let state' = (toEnum . fromIntegral) state
        _cb  sequence' state'


-- | Connect a signal handler for the [sequenceStateChanged](#signal:sequenceStateChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesture #sequenceStateChanged callback
-- @
-- 
-- 
onGestureSequenceStateChanged :: (IsGesture a, MonadIO m) => a -> GestureSequenceStateChangedCallback -> m SignalHandlerId
onGestureSequenceStateChanged obj cb = liftIO $ do
    let cb' = wrap_GestureSequenceStateChangedCallback cb
    cb'' <- mk_GestureSequenceStateChangedCallback cb'
    connectSignalFunPtr obj "sequence-state-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [sequenceStateChanged](#signal:sequenceStateChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesture #sequenceStateChanged callback
-- @
-- 
-- 
afterGestureSequenceStateChanged :: (IsGesture a, MonadIO m) => a -> GestureSequenceStateChangedCallback -> m SignalHandlerId
afterGestureSequenceStateChanged obj cb = liftIO $ do
    let cb' = wrap_GestureSequenceStateChangedCallback cb
    cb'' <- mk_GestureSequenceStateChangedCallback cb'
    connectSignalFunPtr obj "sequence-state-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureSequenceStateChangedSignalInfo
instance SignalInfo GestureSequenceStateChangedSignalInfo where
    type HaskellCallbackType GestureSequenceStateChangedSignalInfo = GestureSequenceStateChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureSequenceStateChangedCallback cb
        cb'' <- mk_GestureSequenceStateChangedCallback cb'
        connectSignalFunPtr obj "sequence-state-changed" cb'' connectMode detail

#endif

-- signal Gesture::update
-- | This signal is emitted whenever an event is handled while the gesture is
-- recognized. /@sequence@/ is guaranteed to pertain to the set of active touches.
-- 
-- /Since: 3.14/
type GestureUpdateCallback =
    Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: the t'GI.Gdk.Structs.EventSequence.EventSequence' that was updated
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `GestureUpdateCallback`@.
noGestureUpdateCallback :: Maybe GestureUpdateCallback
noGestureUpdateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_GestureUpdateCallback =
    Ptr () ->                               -- object
    Ptr Gdk.EventSequence.EventSequence ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_GestureUpdateCallback`.
foreign import ccall "wrapper"
    mk_GestureUpdateCallback :: C_GestureUpdateCallback -> IO (FunPtr C_GestureUpdateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_GestureUpdate :: MonadIO m => GestureUpdateCallback -> m (GClosure C_GestureUpdateCallback)
genClosure_GestureUpdate cb = liftIO $ do
    let cb' = wrap_GestureUpdateCallback cb
    mk_GestureUpdateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `GestureUpdateCallback` into a `C_GestureUpdateCallback`.
wrap_GestureUpdateCallback ::
    GestureUpdateCallback ->
    C_GestureUpdateCallback
wrap_GestureUpdateCallback _cb _ sequence _ = do
    B.ManagedPtr.withTransient Gdk.EventSequence.EventSequence sequence $ \sequence' -> do
        _cb  sequence'


-- | Connect a signal handler for the [update](#signal:update) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' gesture #update callback
-- @
-- 
-- 
onGestureUpdate :: (IsGesture a, MonadIO m) => a -> GestureUpdateCallback -> m SignalHandlerId
onGestureUpdate obj cb = liftIO $ do
    let cb' = wrap_GestureUpdateCallback cb
    cb'' <- mk_GestureUpdateCallback cb'
    connectSignalFunPtr obj "update" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [update](#signal:update) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' gesture #update callback
-- @
-- 
-- 
afterGestureUpdate :: (IsGesture a, MonadIO m) => a -> GestureUpdateCallback -> m SignalHandlerId
afterGestureUpdate obj cb = liftIO $ do
    let cb' = wrap_GestureUpdateCallback cb
    cb'' <- mk_GestureUpdateCallback cb'
    connectSignalFunPtr obj "update" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data GestureUpdateSignalInfo
instance SignalInfo GestureUpdateSignalInfo where
    type HaskellCallbackType GestureUpdateSignalInfo = GestureUpdateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_GestureUpdateCallback cb
        cb'' <- mk_GestureUpdateCallback cb'
        connectSignalFunPtr obj "update" cb'' connectMode detail

#endif

-- VVV Prop "n-points"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@n-points@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gesture #nPoints
-- @
getGestureNPoints :: (MonadIO m, IsGesture o) => o -> m Word32
getGestureNPoints obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "n-points"

-- | Construct a `GValueConstruct` with valid value for the “@n-points@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGestureNPoints :: (IsGesture o) => Word32 -> IO (GValueConstruct o)
constructGestureNPoints val = B.Properties.constructObjectPropertyUInt32 "n-points" val

#if defined(ENABLE_OVERLOADING)
data GestureNPointsPropertyInfo
instance AttrInfo GestureNPointsPropertyInfo where
    type AttrAllowedOps GestureNPointsPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GestureNPointsPropertyInfo = IsGesture
    type AttrSetTypeConstraint GestureNPointsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint GestureNPointsPropertyInfo = (~) Word32
    type AttrTransferType GestureNPointsPropertyInfo = Word32
    type AttrGetType GestureNPointsPropertyInfo = Word32
    type AttrLabel GestureNPointsPropertyInfo = "n-points"
    type AttrOrigin GestureNPointsPropertyInfo = Gesture
    attrGet = getGestureNPoints
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructGestureNPoints
    attrClear = undefined
#endif

-- VVV Prop "window"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Window"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@window@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gesture #window
-- @
getGestureWindow :: (MonadIO m, IsGesture o) => o -> m (Maybe Gdk.Window.Window)
getGestureWindow obj = liftIO $ B.Properties.getObjectPropertyObject obj "window" Gdk.Window.Window

-- | Set the value of the “@window@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' gesture [ #window 'Data.GI.Base.Attributes.:=' value ]
-- @
setGestureWindow :: (MonadIO m, IsGesture o, Gdk.Window.IsWindow a) => o -> a -> m ()
setGestureWindow obj val = liftIO $ B.Properties.setObjectPropertyObject obj "window" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@window@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGestureWindow :: (IsGesture o, Gdk.Window.IsWindow a) => a -> IO (GValueConstruct o)
constructGestureWindow val = B.Properties.constructObjectPropertyObject "window" (Just val)

-- | Set the value of the “@window@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #window
-- @
clearGestureWindow :: (MonadIO m, IsGesture o) => o -> m ()
clearGestureWindow obj = liftIO $ B.Properties.setObjectPropertyObject obj "window" (Nothing :: Maybe Gdk.Window.Window)

#if defined(ENABLE_OVERLOADING)
data GestureWindowPropertyInfo
instance AttrInfo GestureWindowPropertyInfo where
    type AttrAllowedOps GestureWindowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint GestureWindowPropertyInfo = IsGesture
    type AttrSetTypeConstraint GestureWindowPropertyInfo = Gdk.Window.IsWindow
    type AttrTransferTypeConstraint GestureWindowPropertyInfo = Gdk.Window.IsWindow
    type AttrTransferType GestureWindowPropertyInfo = Gdk.Window.Window
    type AttrGetType GestureWindowPropertyInfo = (Maybe Gdk.Window.Window)
    type AttrLabel GestureWindowPropertyInfo = "window"
    type AttrOrigin GestureWindowPropertyInfo = Gesture
    attrGet = getGestureWindow
    attrSet = setGestureWindow
    attrTransfer _ v = do
        unsafeCastTo Gdk.Window.Window v
    attrConstruct = constructGestureWindow
    attrClear = clearGestureWindow
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Gesture
type instance O.AttributeList Gesture = GestureAttributeList
type GestureAttributeList = ('[ '("nPoints", GestureNPointsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo), '("window", GestureWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gestureNPoints :: AttrLabelProxy "nPoints"
gestureNPoints = AttrLabelProxy

gestureWindow :: AttrLabelProxy "window"
gestureWindow = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Gesture = GestureSignalList
type GestureSignalList = ('[ '("begin", GestureBeginSignalInfo), '("cancel", GestureCancelSignalInfo), '("end", GestureEndSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("sequenceStateChanged", GestureSequenceStateChangedSignalInfo), '("update", GestureUpdateSignalInfo)] :: [(Symbol, *)])

#endif

-- method Gesture::get_bounding_box
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "bounding box containing all active touches."
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

foreign import ccall "gtk_gesture_get_bounding_box" gtk_gesture_get_bounding_box :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO CInt

-- | If there are touch sequences being currently handled by /@gesture@/,
-- this function returns 'P.True' and fills in /@rect@/ with the bounding
-- box containing all active touches. Otherwise, 'P.False' will be
-- returned.
-- 
-- Note: This function will yield unexpected results on touchpad
-- gestures. Since there is no correlation between physical and
-- pixel distances, these will look as if constrained in an
-- infinitely small area, /@rect@/ width and height will thus be 0
-- regardless of the number of touchpoints.
-- 
-- /Since: 3.14/
gestureGetBoundingBox ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ((Bool, Gdk.Rectangle.Rectangle))
    -- ^ __Returns:__ 'P.True' if there are active touches, 'P.False' otherwise
gestureGetBoundingBox gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    rect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    result <- gtk_gesture_get_bounding_box gesture' rect
    let result' = (/= 0) result
    rect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rect
    touchManagedPtr gesture
    return (result', rect')

#if defined(ENABLE_OVERLOADING)
data GestureGetBoundingBoxMethodInfo
instance (signature ~ (m ((Bool, Gdk.Rectangle.Rectangle))), MonadIO m, IsGesture a) => O.MethodInfo GestureGetBoundingBoxMethodInfo a signature where
    overloadedMethod = gestureGetBoundingBox

#endif

-- method Gesture::get_bounding_box_center
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "X coordinate for the bounding box center"
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Y coordinate for the bounding box center"
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

foreign import ccall "gtk_gesture_get_bounding_box_center" gtk_gesture_get_bounding_box_center :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr CDouble ->                          -- x : TBasicType TDouble
    Ptr CDouble ->                          -- y : TBasicType TDouble
    IO CInt

-- | If there are touch sequences being currently handled by /@gesture@/,
-- this function returns 'P.True' and fills in /@x@/ and /@y@/ with the center
-- of the bounding box containing all active touches. Otherwise, 'P.False'
-- will be returned.
-- 
-- /Since: 3.14/
gestureGetBoundingBoxCenter ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ((Bool, Double, Double))
    -- ^ __Returns:__ 'P.False' if no active touches are present, 'P.True' otherwise
gestureGetBoundingBoxCenter gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    x <- allocMem :: IO (Ptr CDouble)
    y <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_get_bounding_box_center gesture' x y
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
data GestureGetBoundingBoxCenterMethodInfo
instance (signature ~ (m ((Bool, Double, Double))), MonadIO m, IsGesture a) => O.MethodInfo GestureGetBoundingBoxCenterMethodInfo a signature where
    overloadedMethod = gestureGetBoundingBoxCenter

#endif

-- method Gesture::get_device
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Device" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_device" gtk_gesture_get_device :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO (Ptr Gdk.Device.Device)

-- | Returns the master t'GI.Gdk.Objects.Device.Device' that is currently operating
-- on /@gesture@/, or 'P.Nothing' if the gesture is not being interacted.
-- 
-- /Since: 3.14/
gestureGetDevice ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m (Maybe Gdk.Device.Device)
    -- ^ __Returns:__ a t'GI.Gdk.Objects.Device.Device', or 'P.Nothing'
gestureGetDevice gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_get_device gesture'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gdk.Device.Device) result'
        return result''
    touchManagedPtr gesture
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureGetDeviceMethodInfo
instance (signature ~ (m (Maybe Gdk.Device.Device)), MonadIO m, IsGesture a) => O.MethodInfo GestureGetDeviceMethodInfo a signature where
    overloadedMethod = gestureGetDevice

#endif

-- method Gesture::get_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TGList (TInterface Name { namespace = "Gtk" , name = "Gesture" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_group" gtk_gesture_get_group :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO (Ptr (GList (Ptr Gesture)))

-- | Returns all gestures in the group of /@gesture@/
-- 
-- /Since: 3.14/
gestureGetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m [Gesture]
    -- ^ __Returns:__ The list
    --   of @/GtkGestures/@, free with @/g_list_free()/@
gestureGetGroup gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_get_group gesture'
    result' <- unpackGList result
    result'' <- mapM (newObject Gesture) result'
    g_list_free result
    touchManagedPtr gesture
    return result''

#if defined(ENABLE_OVERLOADING)
data GestureGetGroupMethodInfo
instance (signature ~ (m [Gesture]), MonadIO m, IsGesture a) => O.MethodInfo GestureGetGroupMethodInfo a signature where
    overloadedMethod = gestureGetGroup

#endif

-- method Gesture::get_last_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "sequence"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventSequence" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEventSequence"
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
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Event" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_last_event" gtk_gesture_get_last_event :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.EventSequence.EventSequence ->  -- sequence : TInterface (Name {namespace = "Gdk", name = "EventSequence"})
    IO (Ptr Gdk.Event.Event)

-- | Returns the last event that was processed for /@sequence@/.
-- 
-- Note that the returned pointer is only valid as long as the /@sequence@/
-- is still interpreted by the /@gesture@/. If in doubt, you should make
-- a copy of the event.
gestureGetLastEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Maybe (Gdk.EventSequence.EventSequence)
    -- ^ /@sequence@/: a t'GI.Gdk.Structs.EventSequence.EventSequence'
    -> m (Maybe Gdk.Event.Event)
    -- ^ __Returns:__ The last event from /@sequence@/
gestureGetLastEvent gesture sequence = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    maybeSequence <- case sequence of
        Nothing -> return nullPtr
        Just jSequence -> do
            jSequence' <- unsafeManagedPtrGetPtr jSequence
            return jSequence'
    result <- gtk_gesture_get_last_event gesture' maybeSequence
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Gdk.Event.Event) result'
        return result''
    touchManagedPtr gesture
    whenJust sequence touchManagedPtr
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureGetLastEventMethodInfo
instance (signature ~ (Maybe (Gdk.EventSequence.EventSequence) -> m (Maybe Gdk.Event.Event)), MonadIO m, IsGesture a) => O.MethodInfo GestureGetLastEventMethodInfo a signature where
    overloadedMethod = gestureGetLastEvent

#endif

-- method Gesture::get_last_updated_sequence
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gdk" , name = "EventSequence" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_last_updated_sequence" gtk_gesture_get_last_updated_sequence :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO (Ptr Gdk.EventSequence.EventSequence)

-- | Returns the t'GI.Gdk.Structs.EventSequence.EventSequence' that was last updated on /@gesture@/.
-- 
-- /Since: 3.14/
gestureGetLastUpdatedSequence ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m (Maybe Gdk.EventSequence.EventSequence)
    -- ^ __Returns:__ The last updated sequence
gestureGetLastUpdatedSequence gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_get_last_updated_sequence gesture'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Gdk.EventSequence.EventSequence) result'
        return result''
    touchManagedPtr gesture
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureGetLastUpdatedSequenceMethodInfo
instance (signature ~ (m (Maybe Gdk.EventSequence.EventSequence)), MonadIO m, IsGesture a) => O.MethodInfo GestureGetLastUpdatedSequenceMethodInfo a signature where
    overloadedMethod = gestureGetLastUpdatedSequence

#endif

-- method Gesture::get_point
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "sequence"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventSequence" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GdkEventSequence, or %NULL for pointer events"
--                 , sinceVersion = Nothing
--                 }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for X axis of the sequence coordinates"
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for Y axis of the sequence coordinates"
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

foreign import ccall "gtk_gesture_get_point" gtk_gesture_get_point :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.EventSequence.EventSequence ->  -- sequence : TInterface (Name {namespace = "Gdk", name = "EventSequence"})
    Ptr CDouble ->                          -- x : TBasicType TDouble
    Ptr CDouble ->                          -- y : TBasicType TDouble
    IO CInt

-- | If /@sequence@/ is currently being interpreted by /@gesture@/, this
-- function returns 'P.True' and fills in /@x@/ and /@y@/ with the last coordinates
-- stored for that event sequence. The coordinates are always relative to the
-- widget allocation.
-- 
-- /Since: 3.14/
gestureGetPoint ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Maybe (Gdk.EventSequence.EventSequence)
    -- ^ /@sequence@/: a t'GI.Gdk.Structs.EventSequence.EventSequence', or 'P.Nothing' for pointer events
    -> m ((Bool, Double, Double))
    -- ^ __Returns:__ 'P.True' if /@sequence@/ is currently interpreted
gestureGetPoint gesture sequence = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    maybeSequence <- case sequence of
        Nothing -> return nullPtr
        Just jSequence -> do
            jSequence' <- unsafeManagedPtrGetPtr jSequence
            return jSequence'
    x <- allocMem :: IO (Ptr CDouble)
    y <- allocMem :: IO (Ptr CDouble)
    result <- gtk_gesture_get_point gesture' maybeSequence x y
    let result' = (/= 0) result
    x' <- peek x
    let x'' = realToFrac x'
    y' <- peek y
    let y'' = realToFrac y'
    touchManagedPtr gesture
    whenJust sequence touchManagedPtr
    freeMem x
    freeMem y
    return (result', x'', y'')

#if defined(ENABLE_OVERLOADING)
data GestureGetPointMethodInfo
instance (signature ~ (Maybe (Gdk.EventSequence.EventSequence) -> m ((Bool, Double, Double))), MonadIO m, IsGesture a) => O.MethodInfo GestureGetPointMethodInfo a signature where
    overloadedMethod = gestureGetPoint

#endif

-- method Gesture::get_sequence_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "sequence"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventSequence" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEventSequence"
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
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "EventSequenceState" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_sequence_state" gtk_gesture_get_sequence_state :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.EventSequence.EventSequence ->  -- sequence : TInterface (Name {namespace = "Gdk", name = "EventSequence"})
    IO CUInt

-- | Returns the /@sequence@/ state, as seen by /@gesture@/.
-- 
-- /Since: 3.14/
gestureGetSequenceState ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: a t'GI.Gdk.Structs.EventSequence.EventSequence'
    -> m Gtk.Enums.EventSequenceState
    -- ^ __Returns:__ The sequence state in /@gesture@/
gestureGetSequenceState gesture sequence = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    sequence' <- unsafeManagedPtrGetPtr sequence
    result <- gtk_gesture_get_sequence_state gesture' sequence'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr gesture
    touchManagedPtr sequence
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureGetSequenceStateMethodInfo
instance (signature ~ (Gdk.EventSequence.EventSequence -> m Gtk.Enums.EventSequenceState), MonadIO m, IsGesture a) => O.MethodInfo GestureGetSequenceStateMethodInfo a signature where
    overloadedMethod = gestureGetSequenceState

#endif

-- method Gesture::get_sequences
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just
--               (TGList
--                  (TInterface Name { namespace = "Gdk" , name = "EventSequence" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_sequences" gtk_gesture_get_sequences :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO (Ptr (GList (Ptr Gdk.EventSequence.EventSequence)))

-- | Returns the list of @/GdkEventSequences/@ currently being interpreted
-- by /@gesture@/.
-- 
-- /Since: 3.14/
gestureGetSequences ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m [Gdk.EventSequence.EventSequence]
    -- ^ __Returns:__ A list
    --          of @/GdkEventSequences/@, the list elements are owned by GTK+
    --          and must not be freed or modified, the list itself must be deleted
    --          through @/g_list_free()/@
gestureGetSequences gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_get_sequences gesture'
    result' <- unpackGList result
    result'' <- mapM (newBoxed Gdk.EventSequence.EventSequence) result'
    g_list_free result
    touchManagedPtr gesture
    return result''

#if defined(ENABLE_OVERLOADING)
data GestureGetSequencesMethodInfo
instance (signature ~ (m [Gdk.EventSequence.EventSequence]), MonadIO m, IsGesture a) => O.MethodInfo GestureGetSequencesMethodInfo a signature where
    overloadedMethod = gestureGetSequences

#endif

-- method Gesture::get_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_get_window" gtk_gesture_get_window :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO (Ptr Gdk.Window.Window)

-- | Returns the user-defined window that receives the events
-- handled by /@gesture@/. See 'GI.Gtk.Objects.Gesture.gestureSetWindow' for more
-- information.
-- 
-- /Since: 3.14/
gestureGetWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m (Maybe Gdk.Window.Window)
    -- ^ __Returns:__ the user defined window, or 'P.Nothing' if none
gestureGetWindow gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_get_window gesture'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gdk.Window.Window) result'
        return result''
    touchManagedPtr gesture
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GestureGetWindowMethodInfo
instance (signature ~ (m (Maybe Gdk.Window.Window)), MonadIO m, IsGesture a) => O.MethodInfo GestureGetWindowMethodInfo a signature where
    overloadedMethod = gestureGetWindow

#endif

-- method Gesture::group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group_gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GtkGesture to group @gesture with"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_group" gtk_gesture_group :: 
    Ptr Gesture ->                          -- group_gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO ()

-- | Adds /@gesture@/ to the same group than /@groupGesture@/. Gestures
-- are by default isolated in their own groups.
-- 
-- When gestures are grouped, the state of @/GdkEventSequences/@
-- is kept in sync for all of those, so calling 'GI.Gtk.Objects.Gesture.gestureSetSequenceState',
-- on one will transfer the same value to the others.
-- 
-- Groups also perform an \"implicit grabbing\" of sequences, if a
-- t'GI.Gdk.Structs.EventSequence.EventSequence' state is set to @/GTK_EVENT_SEQUENCE_CLAIMED/@ on one group,
-- every other gesture group attached to the same t'GI.Gtk.Objects.Widget.Widget' will switch the
-- state for that sequence to @/GTK_EVENT_SEQUENCE_DENIED/@.
-- 
-- /Since: 3.14/
gestureGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a, IsGesture b) =>
    a
    -- ^ /@groupGesture@/: t'GI.Gtk.Objects.Gesture.Gesture' to group /@gesture@/ with
    -> b
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ()
gestureGroup groupGesture gesture = liftIO $ do
    groupGesture' <- unsafeManagedPtrCastPtr groupGesture
    gesture' <- unsafeManagedPtrCastPtr gesture
    gtk_gesture_group groupGesture' gesture'
    touchManagedPtr groupGesture
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureGroupMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsGesture a, IsGesture b) => O.MethodInfo GestureGroupMethodInfo a signature where
    overloadedMethod = gestureGroup

#endif

-- method Gesture::handles_sequence
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "sequence"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventSequence" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEventSequence or %NULL"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_handles_sequence" gtk_gesture_handles_sequence :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.EventSequence.EventSequence ->  -- sequence : TInterface (Name {namespace = "Gdk", name = "EventSequence"})
    IO CInt

-- | Returns 'P.True' if /@gesture@/ is currently handling events corresponding to
-- /@sequence@/.
-- 
-- /Since: 3.14/
gestureHandlesSequence ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Maybe (Gdk.EventSequence.EventSequence)
    -- ^ /@sequence@/: a t'GI.Gdk.Structs.EventSequence.EventSequence' or 'P.Nothing'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@gesture@/ is handling /@sequence@/, 'P.False' otherwise
gestureHandlesSequence gesture sequence = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    maybeSequence <- case sequence of
        Nothing -> return nullPtr
        Just jSequence -> do
            jSequence' <- unsafeManagedPtrGetPtr jSequence
            return jSequence'
    result <- gtk_gesture_handles_sequence gesture' maybeSequence
    let result' = (/= 0) result
    touchManagedPtr gesture
    whenJust sequence touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureHandlesSequenceMethodInfo
instance (signature ~ (Maybe (Gdk.EventSequence.EventSequence) -> m Bool), MonadIO m, IsGesture a) => O.MethodInfo GestureHandlesSequenceMethodInfo a signature where
    overloadedMethod = gestureHandlesSequence

#endif

-- method Gesture::is_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_is_active" gtk_gesture_is_active :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO CInt

-- | Returns 'P.True' if the gesture is currently active.
-- A gesture is active meanwhile there are touch sequences
-- interacting with it.
-- 
-- /Since: 3.14/
gestureIsActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if gesture is active
gestureIsActive gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_is_active gesture'
    let result' = (/= 0) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureIsActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGesture a) => O.MethodInfo GestureIsActiveMethodInfo a signature where
    overloadedMethod = gestureIsActive

#endif

-- method Gesture::is_grouped_with
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "other"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "another #GtkGesture"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_is_grouped_with" gtk_gesture_is_grouped_with :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gesture ->                          -- other : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO CInt

-- | Returns 'P.True' if both gestures pertain to the same group.
-- 
-- /Since: 3.14/
gestureIsGroupedWith ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a, IsGesture b) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> b
    -- ^ /@other@/: another t'GI.Gtk.Objects.Gesture.Gesture'
    -> m Bool
    -- ^ __Returns:__ whether the gestures are grouped
gestureIsGroupedWith gesture other = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    other' <- unsafeManagedPtrCastPtr other
    result <- gtk_gesture_is_grouped_with gesture' other'
    let result' = (/= 0) result
    touchManagedPtr gesture
    touchManagedPtr other
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureIsGroupedWithMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsGesture a, IsGesture b) => O.MethodInfo GestureIsGroupedWithMethodInfo a signature where
    overloadedMethod = gestureIsGroupedWith

#endif

-- method Gesture::is_recognized
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_is_recognized" gtk_gesture_is_recognized :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO CInt

-- | Returns 'P.True' if the gesture is currently recognized.
-- A gesture is recognized if there are as many interacting
-- touch sequences as required by /@gesture@/, and t'GI.Gtk.Objects.Gesture.Gesture'::@/check/@
-- returned 'P.True' for the sequences being currently interpreted.
-- 
-- /Since: 3.14/
gestureIsRecognized ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if gesture is recognized
gestureIsRecognized gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    result <- gtk_gesture_is_recognized gesture'
    let result' = (/= 0) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureIsRecognizedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGesture a) => O.MethodInfo GestureIsRecognizedMethodInfo a signature where
    overloadedMethod = gestureIsRecognized

#endif

-- method Gesture::set_sequence_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "sequence"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "EventSequence" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEventSequence"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventSequenceState" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the sequence state" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_set_sequence_state" gtk_gesture_set_sequence_state :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.EventSequence.EventSequence ->  -- sequence : TInterface (Name {namespace = "Gdk", name = "EventSequence"})
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "EventSequenceState"})
    IO CInt

-- | Sets the state of /@sequence@/ in /@gesture@/. Sequences start
-- in state @/GTK_EVENT_SEQUENCE_NONE/@, and whenever they change
-- state, they can never go back to that state. Likewise,
-- sequences in state @/GTK_EVENT_SEQUENCE_DENIED/@ cannot turn
-- back to a not denied state. With these rules, the lifetime
-- of an event sequence is constrained to the next four:
-- 
-- * None
-- * None → Denied
-- * None → Claimed
-- * None → Claimed → Denied
-- 
-- Note: Due to event handling ordering, it may be unsafe to
-- set the state on another gesture within a [begin]("GI.Gtk.Objects.Gesture#signal:begin")
-- signal handler, as the callback might be executed before
-- the other gesture knows about the sequence. A safe way to
-- perform this could be:
-- 
-- >
-- >static void
-- >first_gesture_begin_cb (GtkGesture       *first_gesture,
-- >                        GdkEventSequence *sequence,
-- >                        gpointer          user_data)
-- >{
-- >  gtk_gesture_set_sequence_state (first_gesture, sequence, GTK_EVENT_SEQUENCE_CLAIMED);
-- >  gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
-- >}
-- >
-- >static void
-- >second_gesture_begin_cb (GtkGesture       *second_gesture,
-- >                         GdkEventSequence *sequence,
-- >                         gpointer          user_data)
-- >{
-- >  if (gtk_gesture_get_sequence_state (first_gesture, sequence) == GTK_EVENT_SEQUENCE_CLAIMED)
-- >    gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
-- >}
-- 
-- 
-- If both gestures are in the same group, just set the state on
-- the gesture emitting the event, the sequence will be already
-- be initialized to the group\'s global state when the second
-- gesture processes the event.
-- 
-- /Since: 3.14/
gestureSetSequenceState ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Gdk.EventSequence.EventSequence
    -- ^ /@sequence@/: a t'GI.Gdk.Structs.EventSequence.EventSequence'
    -> Gtk.Enums.EventSequenceState
    -- ^ /@state@/: the sequence state
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@sequence@/ is handled by /@gesture@/,
    --          and the state is changed successfully
gestureSetSequenceState gesture sequence state = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    sequence' <- unsafeManagedPtrGetPtr sequence
    let state' = (fromIntegral . fromEnum) state
    result <- gtk_gesture_set_sequence_state gesture' sequence' state'
    let result' = (/= 0) result
    touchManagedPtr gesture
    touchManagedPtr sequence
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureSetSequenceStateMethodInfo
instance (signature ~ (Gdk.EventSequence.EventSequence -> Gtk.Enums.EventSequenceState -> m Bool), MonadIO m, IsGesture a) => O.MethodInfo GestureSetSequenceStateMethodInfo a signature where
    overloadedMethod = gestureSetSequenceState

#endif

-- method Gesture::set_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "state"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventSequenceState" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the sequence state" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_set_state" gtk_gesture_set_state :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    CUInt ->                                -- state : TInterface (Name {namespace = "Gtk", name = "EventSequenceState"})
    IO CInt

-- | Sets the state of all sequences that /@gesture@/ is currently
-- interacting with. See 'GI.Gtk.Objects.Gesture.gestureSetSequenceState'
-- for more details on sequence states.
-- 
-- /Since: 3.14/
gestureSetState ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Gtk.Enums.EventSequenceState
    -- ^ /@state@/: the sequence state
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the state of at least one sequence
    --     was changed successfully
gestureSetState gesture state = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    let state' = (fromIntegral . fromEnum) state
    result <- gtk_gesture_set_state gesture' state'
    let result' = (/= 0) result
    touchManagedPtr gesture
    return result'

#if defined(ENABLE_OVERLOADING)
data GestureSetStateMethodInfo
instance (signature ~ (Gtk.Enums.EventSequenceState -> m Bool), MonadIO m, IsGesture a) => O.MethodInfo GestureSetStateMethodInfo a signature where
    overloadedMethod = gestureSetState

#endif

-- method Gesture::set_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--           { argCName = "window"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkWindow, or %NULL"
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

foreign import ccall "gtk_gesture_set_window" gtk_gesture_set_window :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    Ptr Gdk.Window.Window ->                -- window : TInterface (Name {namespace = "Gdk", name = "Window"})
    IO ()

-- | Sets a specific window to receive events about, so /@gesture@/
-- will effectively handle only events targeting /@window@/, or
-- a child of it. /@window@/ must pertain to 'GI.Gtk.Objects.EventController.eventControllerGetWidget'.
-- 
-- /Since: 3.14/
gestureSetWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a, Gdk.Window.IsWindow b) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> Maybe (b)
    -- ^ /@window@/: a t'GI.Gdk.Objects.Window.Window', or 'P.Nothing'
    -> m ()
gestureSetWindow gesture window = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    maybeWindow <- case window of
        Nothing -> return nullPtr
        Just jWindow -> do
            jWindow' <- unsafeManagedPtrCastPtr jWindow
            return jWindow'
    gtk_gesture_set_window gesture' maybeWindow
    touchManagedPtr gesture
    whenJust window touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureSetWindowMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsGesture a, Gdk.Window.IsWindow b) => O.MethodInfo GestureSetWindowMethodInfo a signature where
    overloadedMethod = gestureSetWindow

#endif

-- method Gesture::ungroup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "gesture"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Gesture" }
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
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_gesture_ungroup" gtk_gesture_ungroup :: 
    Ptr Gesture ->                          -- gesture : TInterface (Name {namespace = "Gtk", name = "Gesture"})
    IO ()

-- | Separates /@gesture@/ into an isolated group.
-- 
-- /Since: 3.14/
gestureUngroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsGesture a) =>
    a
    -- ^ /@gesture@/: a t'GI.Gtk.Objects.Gesture.Gesture'
    -> m ()
gestureUngroup gesture = liftIO $ do
    gesture' <- unsafeManagedPtrCastPtr gesture
    gtk_gesture_ungroup gesture'
    touchManagedPtr gesture
    return ()

#if defined(ENABLE_OVERLOADING)
data GestureUngroupMethodInfo
instance (signature ~ (m ()), MonadIO m, IsGesture a) => O.MethodInfo GestureUngroupMethodInfo a signature where
    overloadedMethod = gestureUngroup

#endif

