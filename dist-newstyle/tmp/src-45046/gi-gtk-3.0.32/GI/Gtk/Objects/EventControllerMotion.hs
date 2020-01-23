{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.EventControllerMotion.EventControllerMotion' is an event controller meant for situations
-- where you need to track the position of the pointer.
-- 
-- This object was added in 3.24.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EventControllerMotion
    ( 

-- * Exported types
    EventControllerMotion(..)               ,
    IsEventControllerMotion                 ,
    toEventControllerMotion                 ,
    noEventControllerMotion                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEventControllerMotionMethod      ,
#endif


-- ** new #method:new#

    eventControllerMotionNew                ,




 -- * Signals
-- ** enter #signal:enter#

    C_EventControllerMotionEnterCallback    ,
    EventControllerMotionEnterCallback      ,
#if defined(ENABLE_OVERLOADING)
    EventControllerMotionEnterSignalInfo    ,
#endif
    afterEventControllerMotionEnter         ,
    genClosure_EventControllerMotionEnter   ,
    mk_EventControllerMotionEnterCallback   ,
    noEventControllerMotionEnterCallback    ,
    onEventControllerMotionEnter            ,
    wrap_EventControllerMotionEnterCallback ,


-- ** leave #signal:leave#

    C_EventControllerMotionLeaveCallback    ,
    EventControllerMotionLeaveCallback      ,
#if defined(ENABLE_OVERLOADING)
    EventControllerMotionLeaveSignalInfo    ,
#endif
    afterEventControllerMotionLeave         ,
    genClosure_EventControllerMotionLeave   ,
    mk_EventControllerMotionLeaveCallback   ,
    noEventControllerMotionLeaveCallback    ,
    onEventControllerMotionLeave            ,
    wrap_EventControllerMotionLeaveCallback ,


-- ** motion #signal:motion#

    C_EventControllerMotionMotionCallback   ,
    EventControllerMotionMotionCallback     ,
#if defined(ENABLE_OVERLOADING)
    EventControllerMotionMotionSignalInfo   ,
#endif
    afterEventControllerMotionMotion        ,
    genClosure_EventControllerMotionMotion  ,
    mk_EventControllerMotionMotionCallback  ,
    noEventControllerMotionMotionCallback   ,
    onEventControllerMotionMotion           ,
    wrap_EventControllerMotionMotionCallback,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype EventControllerMotion = EventControllerMotion (ManagedPtr EventControllerMotion)
    deriving (Eq)
foreign import ccall "gtk_event_controller_motion_get_type"
    c_gtk_event_controller_motion_get_type :: IO GType

instance GObject EventControllerMotion where
    gobjectType = c_gtk_event_controller_motion_get_type
    

-- | Convert 'EventControllerMotion' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EventControllerMotion where
    toGValue o = do
        gtype <- c_gtk_event_controller_motion_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EventControllerMotion)
        B.ManagedPtr.newObject EventControllerMotion ptr
        
    

-- | Type class for types which can be safely cast to `EventControllerMotion`, for instance with `toEventControllerMotion`.
class (GObject o, O.IsDescendantOf EventControllerMotion o) => IsEventControllerMotion o
instance (GObject o, O.IsDescendantOf EventControllerMotion o) => IsEventControllerMotion o

instance O.HasParentTypes EventControllerMotion
type instance O.ParentTypes EventControllerMotion = '[Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `EventControllerMotion`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEventControllerMotion :: (MonadIO m, IsEventControllerMotion o) => o -> m EventControllerMotion
toEventControllerMotion = liftIO . unsafeCastTo EventControllerMotion

-- | A convenience alias for `Nothing` :: `Maybe` `EventControllerMotion`.
noEventControllerMotion :: Maybe EventControllerMotion
noEventControllerMotion = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEventControllerMotionMethod (t :: Symbol) (o :: *) :: * where
    ResolveEventControllerMotionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEventControllerMotionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEventControllerMotionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEventControllerMotionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEventControllerMotionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEventControllerMotionMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveEventControllerMotionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEventControllerMotionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEventControllerMotionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEventControllerMotionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEventControllerMotionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEventControllerMotionMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveEventControllerMotionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEventControllerMotionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEventControllerMotionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEventControllerMotionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEventControllerMotionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEventControllerMotionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEventControllerMotionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEventControllerMotionMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveEventControllerMotionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEventControllerMotionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEventControllerMotionMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveEventControllerMotionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEventControllerMotionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEventControllerMotionMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveEventControllerMotionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEventControllerMotionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEventControllerMotionMethod t EventControllerMotion, O.MethodInfo info EventControllerMotion p) => OL.IsLabel t (EventControllerMotion -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal EventControllerMotion::enter
-- | Signals that the pointer has entered the widget.
type EventControllerMotionEnterCallback =
    Double
    -- ^ /@x@/: the x coordinate
    -> Double
    -- ^ /@y@/: the y coordinate
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerMotionEnterCallback`@.
noEventControllerMotionEnterCallback :: Maybe EventControllerMotionEnterCallback
noEventControllerMotionEnterCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerMotionEnterCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerMotionEnterCallback`.
foreign import ccall "wrapper"
    mk_EventControllerMotionEnterCallback :: C_EventControllerMotionEnterCallback -> IO (FunPtr C_EventControllerMotionEnterCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerMotionEnter :: MonadIO m => EventControllerMotionEnterCallback -> m (GClosure C_EventControllerMotionEnterCallback)
genClosure_EventControllerMotionEnter cb = liftIO $ do
    let cb' = wrap_EventControllerMotionEnterCallback cb
    mk_EventControllerMotionEnterCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerMotionEnterCallback` into a `C_EventControllerMotionEnterCallback`.
wrap_EventControllerMotionEnterCallback ::
    EventControllerMotionEnterCallback ->
    C_EventControllerMotionEnterCallback
wrap_EventControllerMotionEnterCallback _cb _ x y _ = do
    let x' = realToFrac x
    let y' = realToFrac y
    _cb  x' y'


-- | Connect a signal handler for the [enter](#signal:enter) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerMotion #enter callback
-- @
-- 
-- 
onEventControllerMotionEnter :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionEnterCallback -> m SignalHandlerId
onEventControllerMotionEnter obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionEnterCallback cb
    cb'' <- mk_EventControllerMotionEnterCallback cb'
    connectSignalFunPtr obj "enter" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [enter](#signal:enter) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerMotion #enter callback
-- @
-- 
-- 
afterEventControllerMotionEnter :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionEnterCallback -> m SignalHandlerId
afterEventControllerMotionEnter obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionEnterCallback cb
    cb'' <- mk_EventControllerMotionEnterCallback cb'
    connectSignalFunPtr obj "enter" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerMotionEnterSignalInfo
instance SignalInfo EventControllerMotionEnterSignalInfo where
    type HaskellCallbackType EventControllerMotionEnterSignalInfo = EventControllerMotionEnterCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerMotionEnterCallback cb
        cb'' <- mk_EventControllerMotionEnterCallback cb'
        connectSignalFunPtr obj "enter" cb'' connectMode detail

#endif

-- signal EventControllerMotion::leave
-- | Signals that pointer has left the widget.
type EventControllerMotionLeaveCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerMotionLeaveCallback`@.
noEventControllerMotionLeaveCallback :: Maybe EventControllerMotionLeaveCallback
noEventControllerMotionLeaveCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerMotionLeaveCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerMotionLeaveCallback`.
foreign import ccall "wrapper"
    mk_EventControllerMotionLeaveCallback :: C_EventControllerMotionLeaveCallback -> IO (FunPtr C_EventControllerMotionLeaveCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerMotionLeave :: MonadIO m => EventControllerMotionLeaveCallback -> m (GClosure C_EventControllerMotionLeaveCallback)
genClosure_EventControllerMotionLeave cb = liftIO $ do
    let cb' = wrap_EventControllerMotionLeaveCallback cb
    mk_EventControllerMotionLeaveCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerMotionLeaveCallback` into a `C_EventControllerMotionLeaveCallback`.
wrap_EventControllerMotionLeaveCallback ::
    EventControllerMotionLeaveCallback ->
    C_EventControllerMotionLeaveCallback
wrap_EventControllerMotionLeaveCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [leave](#signal:leave) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerMotion #leave callback
-- @
-- 
-- 
onEventControllerMotionLeave :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionLeaveCallback -> m SignalHandlerId
onEventControllerMotionLeave obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionLeaveCallback cb
    cb'' <- mk_EventControllerMotionLeaveCallback cb'
    connectSignalFunPtr obj "leave" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [leave](#signal:leave) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerMotion #leave callback
-- @
-- 
-- 
afterEventControllerMotionLeave :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionLeaveCallback -> m SignalHandlerId
afterEventControllerMotionLeave obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionLeaveCallback cb
    cb'' <- mk_EventControllerMotionLeaveCallback cb'
    connectSignalFunPtr obj "leave" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerMotionLeaveSignalInfo
instance SignalInfo EventControllerMotionLeaveSignalInfo where
    type HaskellCallbackType EventControllerMotionLeaveSignalInfo = EventControllerMotionLeaveCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerMotionLeaveCallback cb
        cb'' <- mk_EventControllerMotionLeaveCallback cb'
        connectSignalFunPtr obj "leave" cb'' connectMode detail

#endif

-- signal EventControllerMotion::motion
-- | Emitted when the pointer moves inside the widget.
type EventControllerMotionMotionCallback =
    Double
    -- ^ /@x@/: the x coordinate
    -> Double
    -- ^ /@y@/: the y coordinate
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerMotionMotionCallback`@.
noEventControllerMotionMotionCallback :: Maybe EventControllerMotionMotionCallback
noEventControllerMotionMotionCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerMotionMotionCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerMotionMotionCallback`.
foreign import ccall "wrapper"
    mk_EventControllerMotionMotionCallback :: C_EventControllerMotionMotionCallback -> IO (FunPtr C_EventControllerMotionMotionCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerMotionMotion :: MonadIO m => EventControllerMotionMotionCallback -> m (GClosure C_EventControllerMotionMotionCallback)
genClosure_EventControllerMotionMotion cb = liftIO $ do
    let cb' = wrap_EventControllerMotionMotionCallback cb
    mk_EventControllerMotionMotionCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerMotionMotionCallback` into a `C_EventControllerMotionMotionCallback`.
wrap_EventControllerMotionMotionCallback ::
    EventControllerMotionMotionCallback ->
    C_EventControllerMotionMotionCallback
wrap_EventControllerMotionMotionCallback _cb _ x y _ = do
    let x' = realToFrac x
    let y' = realToFrac y
    _cb  x' y'


-- | Connect a signal handler for the [motion](#signal:motion) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerMotion #motion callback
-- @
-- 
-- 
onEventControllerMotionMotion :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionMotionCallback -> m SignalHandlerId
onEventControllerMotionMotion obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionMotionCallback cb
    cb'' <- mk_EventControllerMotionMotionCallback cb'
    connectSignalFunPtr obj "motion" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [motion](#signal:motion) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerMotion #motion callback
-- @
-- 
-- 
afterEventControllerMotionMotion :: (IsEventControllerMotion a, MonadIO m) => a -> EventControllerMotionMotionCallback -> m SignalHandlerId
afterEventControllerMotionMotion obj cb = liftIO $ do
    let cb' = wrap_EventControllerMotionMotionCallback cb
    cb'' <- mk_EventControllerMotionMotionCallback cb'
    connectSignalFunPtr obj "motion" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerMotionMotionSignalInfo
instance SignalInfo EventControllerMotionMotionSignalInfo where
    type HaskellCallbackType EventControllerMotionMotionSignalInfo = EventControllerMotionMotionCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerMotionMotionCallback cb
        cb'' <- mk_EventControllerMotionMotionCallback cb'
        connectSignalFunPtr obj "motion" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EventControllerMotion
type instance O.AttributeList EventControllerMotion = EventControllerMotionAttributeList
type EventControllerMotionAttributeList = ('[ '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EventControllerMotion = EventControllerMotionSignalList
type EventControllerMotionSignalList = ('[ '("enter", EventControllerMotionEnterSignalInfo), '("leave", EventControllerMotionLeaveSignalInfo), '("motion", EventControllerMotionMotionSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method EventControllerMotion::new
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
--                  Name { namespace = "Gtk" , name = "EventControllerMotion" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_motion_new" gtk_event_controller_motion_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr EventControllerMotion)

-- | Creates a new event controller that will handle motion events
-- for the given /@widget@/.
-- 
-- /Since: 3.24/
eventControllerMotionNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m EventControllerMotion
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.EventControllerMotion.EventControllerMotion'
eventControllerMotionNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_event_controller_motion_new widget'
    checkUnexpectedReturnNULL "eventControllerMotionNew" result
    result' <- (wrapObject EventControllerMotion) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

