{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.EventControllerScroll.EventControllerScroll' is an event controller meant to handle
-- scroll events from mice and touchpads. It is capable of handling
-- both discrete and continuous scroll events, abstracting them both
-- on the [scroll]("GI.Gtk.Objects.EventControllerScroll#signal:scroll") signal (deltas in the
-- discrete case are multiples of 1).
-- 
-- In the case of continuous scroll events, t'GI.Gtk.Objects.EventControllerScroll.EventControllerScroll'
-- encloses all [scroll]("GI.Gtk.Objects.EventControllerScroll#signal:scroll") events between two
-- [scrollBegin]("GI.Gtk.Objects.EventControllerScroll#signal:scrollBegin") and [scrollEnd]("GI.Gtk.Objects.EventControllerScroll#signal:scrollEnd")
-- signals.
-- 
-- The behavior of the event controller can be modified by the
-- flags given at creation time, or modified at a later point through
-- 'GI.Gtk.Objects.EventControllerScroll.eventControllerScrollSetFlags' (e.g. because the scrolling
-- conditions of the widget changed).
-- 
-- The controller can be set up to emit motion for either\/both vertical
-- and horizontal scroll events through @/GTK_EVENT_CONTROLLER_SCROLL_VERTICAL/@,
-- @/GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL/@ and @/GTK_EVENT_CONTROLLER_SCROLL_BOTH/@.
-- If any axis is disabled, the respective [scroll]("GI.Gtk.Objects.EventControllerScroll#signal:scroll")
-- delta will be 0. Vertical scroll events will be translated to horizontal
-- motion for the devices incapable of horizontal scrolling.
-- 
-- The event controller can also be forced to emit discrete events on all devices
-- through @/GTK_EVENT_CONTROLLER_SCROLL_DISCRETE/@. This can be used to implement
-- discrete actions triggered through scroll events (e.g. switching across
-- combobox options).
-- 
-- The @/GTK_EVENT_CONTROLLER_SCROLL_KINETIC/@ flag toggles the emission of the
-- [decelerate]("GI.Gtk.Objects.EventControllerScroll#signal:decelerate") signal, emitted at the end of scrolling
-- with two X\/Y velocity arguments that are consistent with the motion that
-- was received.
-- 
-- This object was added in 3.24.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EventControllerScroll
    ( 

-- * Exported types
    EventControllerScroll(..)               ,
    IsEventControllerScroll                 ,
    toEventControllerScroll                 ,
    noEventControllerScroll                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEventControllerScrollMethod      ,
#endif


-- ** getFlags #method:getFlags#

#if defined(ENABLE_OVERLOADING)
    EventControllerScrollGetFlagsMethodInfo ,
#endif
    eventControllerScrollGetFlags           ,


-- ** new #method:new#

    eventControllerScrollNew                ,


-- ** setFlags #method:setFlags#

#if defined(ENABLE_OVERLOADING)
    EventControllerScrollSetFlagsMethodInfo ,
#endif
    eventControllerScrollSetFlags           ,




 -- * Properties
-- ** flags #attr:flags#
-- | The flags affecting event controller behavior
-- 
-- /Since: 3.24/

#if defined(ENABLE_OVERLOADING)
    EventControllerScrollFlagsPropertyInfo  ,
#endif
    constructEventControllerScrollFlags     ,
#if defined(ENABLE_OVERLOADING)
    eventControllerScrollFlags              ,
#endif
    getEventControllerScrollFlags           ,
    setEventControllerScrollFlags           ,




 -- * Signals
-- ** decelerate #signal:decelerate#

    C_EventControllerScrollDecelerateCallback,
    EventControllerScrollDecelerateCallback ,
#if defined(ENABLE_OVERLOADING)
    EventControllerScrollDecelerateSignalInfo,
#endif
    afterEventControllerScrollDecelerate    ,
    genClosure_EventControllerScrollDecelerate,
    mk_EventControllerScrollDecelerateCallback,
    noEventControllerScrollDecelerateCallback,
    onEventControllerScrollDecelerate       ,
    wrap_EventControllerScrollDecelerateCallback,


-- ** scroll #signal:scroll#

    C_EventControllerScrollScrollCallback   ,
    EventControllerScrollScrollCallback     ,
#if defined(ENABLE_OVERLOADING)
    EventControllerScrollScrollSignalInfo   ,
#endif
    afterEventControllerScrollScroll        ,
    genClosure_EventControllerScrollScroll  ,
    mk_EventControllerScrollScrollCallback  ,
    noEventControllerScrollScrollCallback   ,
    onEventControllerScrollScroll           ,
    wrap_EventControllerScrollScrollCallback,


-- ** scrollBegin #signal:scrollBegin#

    C_EventControllerScrollScrollBeginCallback,
    EventControllerScrollScrollBeginCallback,
#if defined(ENABLE_OVERLOADING)
    EventControllerScrollScrollBeginSignalInfo,
#endif
    afterEventControllerScrollScrollBegin   ,
    genClosure_EventControllerScrollScrollBegin,
    mk_EventControllerScrollScrollBeginCallback,
    noEventControllerScrollScrollBeginCallback,
    onEventControllerScrollScrollBegin      ,
    wrap_EventControllerScrollScrollBeginCallback,


-- ** scrollEnd #signal:scrollEnd#

    C_EventControllerScrollScrollEndCallback,
    EventControllerScrollScrollEndCallback  ,
#if defined(ENABLE_OVERLOADING)
    EventControllerScrollScrollEndSignalInfo,
#endif
    afterEventControllerScrollScrollEnd     ,
    genClosure_EventControllerScrollScrollEnd,
    mk_EventControllerScrollScrollEndCallback,
    noEventControllerScrollScrollEndCallback,
    onEventControllerScrollScrollEnd        ,
    wrap_EventControllerScrollScrollEndCallback,




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
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype EventControllerScroll = EventControllerScroll (ManagedPtr EventControllerScroll)
    deriving (Eq)
foreign import ccall "gtk_event_controller_scroll_get_type"
    c_gtk_event_controller_scroll_get_type :: IO GType

instance GObject EventControllerScroll where
    gobjectType = c_gtk_event_controller_scroll_get_type
    

-- | Convert 'EventControllerScroll' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EventControllerScroll where
    toGValue o = do
        gtype <- c_gtk_event_controller_scroll_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EventControllerScroll)
        B.ManagedPtr.newObject EventControllerScroll ptr
        
    

-- | Type class for types which can be safely cast to `EventControllerScroll`, for instance with `toEventControllerScroll`.
class (GObject o, O.IsDescendantOf EventControllerScroll o) => IsEventControllerScroll o
instance (GObject o, O.IsDescendantOf EventControllerScroll o) => IsEventControllerScroll o

instance O.HasParentTypes EventControllerScroll
type instance O.ParentTypes EventControllerScroll = '[Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `EventControllerScroll`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEventControllerScroll :: (MonadIO m, IsEventControllerScroll o) => o -> m EventControllerScroll
toEventControllerScroll = liftIO . unsafeCastTo EventControllerScroll

-- | A convenience alias for `Nothing` :: `Maybe` `EventControllerScroll`.
noEventControllerScroll :: Maybe EventControllerScroll
noEventControllerScroll = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEventControllerScrollMethod (t :: Symbol) (o :: *) :: * where
    ResolveEventControllerScrollMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEventControllerScrollMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEventControllerScrollMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEventControllerScrollMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEventControllerScrollMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEventControllerScrollMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveEventControllerScrollMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEventControllerScrollMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEventControllerScrollMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEventControllerScrollMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEventControllerScrollMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEventControllerScrollMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveEventControllerScrollMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEventControllerScrollMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEventControllerScrollMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEventControllerScrollMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEventControllerScrollMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEventControllerScrollMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEventControllerScrollMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEventControllerScrollMethod "getFlags" o = EventControllerScrollGetFlagsMethodInfo
    ResolveEventControllerScrollMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveEventControllerScrollMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEventControllerScrollMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEventControllerScrollMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveEventControllerScrollMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEventControllerScrollMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEventControllerScrollMethod "setFlags" o = EventControllerScrollSetFlagsMethodInfo
    ResolveEventControllerScrollMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveEventControllerScrollMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEventControllerScrollMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEventControllerScrollMethod t EventControllerScroll, O.MethodInfo info EventControllerScroll p) => OL.IsLabel t (EventControllerScroll -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal EventControllerScroll::decelerate
-- | Emitted after scroll is finished if the @/GTK_EVENT_CONTROLLER_SCROLL_KINETIC/@
-- flag is set. /@velX@/ and /@velY@/ express the initial velocity that was
-- imprinted by the scroll events. /@velX@/ and /@velY@/ are expressed in
-- pixels\/ms.
type EventControllerScrollDecelerateCallback =
    Double
    -- ^ /@velX@/: X velocity
    -> Double
    -- ^ /@velY@/: Y velocity
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerScrollDecelerateCallback`@.
noEventControllerScrollDecelerateCallback :: Maybe EventControllerScrollDecelerateCallback
noEventControllerScrollDecelerateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerScrollDecelerateCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerScrollDecelerateCallback`.
foreign import ccall "wrapper"
    mk_EventControllerScrollDecelerateCallback :: C_EventControllerScrollDecelerateCallback -> IO (FunPtr C_EventControllerScrollDecelerateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerScrollDecelerate :: MonadIO m => EventControllerScrollDecelerateCallback -> m (GClosure C_EventControllerScrollDecelerateCallback)
genClosure_EventControllerScrollDecelerate cb = liftIO $ do
    let cb' = wrap_EventControllerScrollDecelerateCallback cb
    mk_EventControllerScrollDecelerateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerScrollDecelerateCallback` into a `C_EventControllerScrollDecelerateCallback`.
wrap_EventControllerScrollDecelerateCallback ::
    EventControllerScrollDecelerateCallback ->
    C_EventControllerScrollDecelerateCallback
wrap_EventControllerScrollDecelerateCallback _cb _ velX velY _ = do
    let velX' = realToFrac velX
    let velY' = realToFrac velY
    _cb  velX' velY'


-- | Connect a signal handler for the [decelerate](#signal:decelerate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerScroll #decelerate callback
-- @
-- 
-- 
onEventControllerScrollDecelerate :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollDecelerateCallback -> m SignalHandlerId
onEventControllerScrollDecelerate obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollDecelerateCallback cb
    cb'' <- mk_EventControllerScrollDecelerateCallback cb'
    connectSignalFunPtr obj "decelerate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [decelerate](#signal:decelerate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerScroll #decelerate callback
-- @
-- 
-- 
afterEventControllerScrollDecelerate :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollDecelerateCallback -> m SignalHandlerId
afterEventControllerScrollDecelerate obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollDecelerateCallback cb
    cb'' <- mk_EventControllerScrollDecelerateCallback cb'
    connectSignalFunPtr obj "decelerate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerScrollDecelerateSignalInfo
instance SignalInfo EventControllerScrollDecelerateSignalInfo where
    type HaskellCallbackType EventControllerScrollDecelerateSignalInfo = EventControllerScrollDecelerateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerScrollDecelerateCallback cb
        cb'' <- mk_EventControllerScrollDecelerateCallback cb'
        connectSignalFunPtr obj "decelerate" cb'' connectMode detail

#endif

-- signal EventControllerScroll::scroll
-- | Signals that the widget should scroll by the
-- amount specified by /@dx@/ and /@dy@/.
type EventControllerScrollScrollCallback =
    Double
    -- ^ /@dx@/: X delta
    -> Double
    -- ^ /@dy@/: Y delta
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerScrollScrollCallback`@.
noEventControllerScrollScrollCallback :: Maybe EventControllerScrollScrollCallback
noEventControllerScrollScrollCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerScrollScrollCallback =
    Ptr () ->                               -- object
    CDouble ->
    CDouble ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerScrollScrollCallback`.
foreign import ccall "wrapper"
    mk_EventControllerScrollScrollCallback :: C_EventControllerScrollScrollCallback -> IO (FunPtr C_EventControllerScrollScrollCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerScrollScroll :: MonadIO m => EventControllerScrollScrollCallback -> m (GClosure C_EventControllerScrollScrollCallback)
genClosure_EventControllerScrollScroll cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollCallback cb
    mk_EventControllerScrollScrollCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerScrollScrollCallback` into a `C_EventControllerScrollScrollCallback`.
wrap_EventControllerScrollScrollCallback ::
    EventControllerScrollScrollCallback ->
    C_EventControllerScrollScrollCallback
wrap_EventControllerScrollScrollCallback _cb _ dx dy _ = do
    let dx' = realToFrac dx
    let dy' = realToFrac dy
    _cb  dx' dy'


-- | Connect a signal handler for the [scroll](#signal:scroll) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerScroll #scroll callback
-- @
-- 
-- 
onEventControllerScrollScroll :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollCallback -> m SignalHandlerId
onEventControllerScrollScroll obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollCallback cb
    cb'' <- mk_EventControllerScrollScrollCallback cb'
    connectSignalFunPtr obj "scroll" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scroll](#signal:scroll) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerScroll #scroll callback
-- @
-- 
-- 
afterEventControllerScrollScroll :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollCallback -> m SignalHandlerId
afterEventControllerScrollScroll obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollCallback cb
    cb'' <- mk_EventControllerScrollScrollCallback cb'
    connectSignalFunPtr obj "scroll" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerScrollScrollSignalInfo
instance SignalInfo EventControllerScrollScrollSignalInfo where
    type HaskellCallbackType EventControllerScrollScrollSignalInfo = EventControllerScrollScrollCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerScrollScrollCallback cb
        cb'' <- mk_EventControllerScrollScrollCallback cb'
        connectSignalFunPtr obj "scroll" cb'' connectMode detail

#endif

-- signal EventControllerScroll::scroll-begin
-- | Signals that a new scrolling operation has begun. It will
-- only be emitted on devices capable of it.
type EventControllerScrollScrollBeginCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerScrollScrollBeginCallback`@.
noEventControllerScrollScrollBeginCallback :: Maybe EventControllerScrollScrollBeginCallback
noEventControllerScrollScrollBeginCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerScrollScrollBeginCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerScrollScrollBeginCallback`.
foreign import ccall "wrapper"
    mk_EventControllerScrollScrollBeginCallback :: C_EventControllerScrollScrollBeginCallback -> IO (FunPtr C_EventControllerScrollScrollBeginCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerScrollScrollBegin :: MonadIO m => EventControllerScrollScrollBeginCallback -> m (GClosure C_EventControllerScrollScrollBeginCallback)
genClosure_EventControllerScrollScrollBegin cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollBeginCallback cb
    mk_EventControllerScrollScrollBeginCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerScrollScrollBeginCallback` into a `C_EventControllerScrollScrollBeginCallback`.
wrap_EventControllerScrollScrollBeginCallback ::
    EventControllerScrollScrollBeginCallback ->
    C_EventControllerScrollScrollBeginCallback
wrap_EventControllerScrollScrollBeginCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [scrollBegin](#signal:scrollBegin) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerScroll #scrollBegin callback
-- @
-- 
-- 
onEventControllerScrollScrollBegin :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollBeginCallback -> m SignalHandlerId
onEventControllerScrollScrollBegin obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollBeginCallback cb
    cb'' <- mk_EventControllerScrollScrollBeginCallback cb'
    connectSignalFunPtr obj "scroll-begin" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scrollBegin](#signal:scrollBegin) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerScroll #scrollBegin callback
-- @
-- 
-- 
afterEventControllerScrollScrollBegin :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollBeginCallback -> m SignalHandlerId
afterEventControllerScrollScrollBegin obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollBeginCallback cb
    cb'' <- mk_EventControllerScrollScrollBeginCallback cb'
    connectSignalFunPtr obj "scroll-begin" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerScrollScrollBeginSignalInfo
instance SignalInfo EventControllerScrollScrollBeginSignalInfo where
    type HaskellCallbackType EventControllerScrollScrollBeginSignalInfo = EventControllerScrollScrollBeginCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerScrollScrollBeginCallback cb
        cb'' <- mk_EventControllerScrollScrollBeginCallback cb'
        connectSignalFunPtr obj "scroll-begin" cb'' connectMode detail

#endif

-- signal EventControllerScroll::scroll-end
-- | Signals that a new scrolling operation has finished. It will
-- only be emitted on devices capable of it.
type EventControllerScrollScrollEndCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerScrollScrollEndCallback`@.
noEventControllerScrollScrollEndCallback :: Maybe EventControllerScrollScrollEndCallback
noEventControllerScrollScrollEndCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerScrollScrollEndCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerScrollScrollEndCallback`.
foreign import ccall "wrapper"
    mk_EventControllerScrollScrollEndCallback :: C_EventControllerScrollScrollEndCallback -> IO (FunPtr C_EventControllerScrollScrollEndCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerScrollScrollEnd :: MonadIO m => EventControllerScrollScrollEndCallback -> m (GClosure C_EventControllerScrollScrollEndCallback)
genClosure_EventControllerScrollScrollEnd cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollEndCallback cb
    mk_EventControllerScrollScrollEndCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerScrollScrollEndCallback` into a `C_EventControllerScrollScrollEndCallback`.
wrap_EventControllerScrollScrollEndCallback ::
    EventControllerScrollScrollEndCallback ->
    C_EventControllerScrollScrollEndCallback
wrap_EventControllerScrollScrollEndCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [scrollEnd](#signal:scrollEnd) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerScroll #scrollEnd callback
-- @
-- 
-- 
onEventControllerScrollScrollEnd :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollEndCallback -> m SignalHandlerId
onEventControllerScrollScrollEnd obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollEndCallback cb
    cb'' <- mk_EventControllerScrollScrollEndCallback cb'
    connectSignalFunPtr obj "scroll-end" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scrollEnd](#signal:scrollEnd) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerScroll #scrollEnd callback
-- @
-- 
-- 
afterEventControllerScrollScrollEnd :: (IsEventControllerScroll a, MonadIO m) => a -> EventControllerScrollScrollEndCallback -> m SignalHandlerId
afterEventControllerScrollScrollEnd obj cb = liftIO $ do
    let cb' = wrap_EventControllerScrollScrollEndCallback cb
    cb'' <- mk_EventControllerScrollScrollEndCallback cb'
    connectSignalFunPtr obj "scroll-end" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerScrollScrollEndSignalInfo
instance SignalInfo EventControllerScrollScrollEndSignalInfo where
    type HaskellCallbackType EventControllerScrollScrollEndSignalInfo = EventControllerScrollScrollEndCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerScrollScrollEndCallback cb
        cb'' <- mk_EventControllerScrollScrollEndCallback cb'
        connectSignalFunPtr obj "scroll-end" cb'' connectMode detail

#endif

-- VVV Prop "flags"
   -- Type: TInterface (Name {namespace = "Gtk", name = "EventControllerScrollFlags"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@flags@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' eventControllerScroll #flags
-- @
getEventControllerScrollFlags :: (MonadIO m, IsEventControllerScroll o) => o -> m [Gtk.Flags.EventControllerScrollFlags]
getEventControllerScrollFlags obj = liftIO $ B.Properties.getObjectPropertyFlags obj "flags"

-- | Set the value of the “@flags@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' eventControllerScroll [ #flags 'Data.GI.Base.Attributes.:=' value ]
-- @
setEventControllerScrollFlags :: (MonadIO m, IsEventControllerScroll o) => o -> [Gtk.Flags.EventControllerScrollFlags] -> m ()
setEventControllerScrollFlags obj val = liftIO $ B.Properties.setObjectPropertyFlags obj "flags" val

-- | Construct a `GValueConstruct` with valid value for the “@flags@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEventControllerScrollFlags :: (IsEventControllerScroll o) => [Gtk.Flags.EventControllerScrollFlags] -> IO (GValueConstruct o)
constructEventControllerScrollFlags val = B.Properties.constructObjectPropertyFlags "flags" val

#if defined(ENABLE_OVERLOADING)
data EventControllerScrollFlagsPropertyInfo
instance AttrInfo EventControllerScrollFlagsPropertyInfo where
    type AttrAllowedOps EventControllerScrollFlagsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint EventControllerScrollFlagsPropertyInfo = IsEventControllerScroll
    type AttrSetTypeConstraint EventControllerScrollFlagsPropertyInfo = (~) [Gtk.Flags.EventControllerScrollFlags]
    type AttrTransferTypeConstraint EventControllerScrollFlagsPropertyInfo = (~) [Gtk.Flags.EventControllerScrollFlags]
    type AttrTransferType EventControllerScrollFlagsPropertyInfo = [Gtk.Flags.EventControllerScrollFlags]
    type AttrGetType EventControllerScrollFlagsPropertyInfo = [Gtk.Flags.EventControllerScrollFlags]
    type AttrLabel EventControllerScrollFlagsPropertyInfo = "flags"
    type AttrOrigin EventControllerScrollFlagsPropertyInfo = EventControllerScroll
    attrGet = getEventControllerScrollFlags
    attrSet = setEventControllerScrollFlags
    attrTransfer _ v = do
        return v
    attrConstruct = constructEventControllerScrollFlags
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EventControllerScroll
type instance O.AttributeList EventControllerScroll = EventControllerScrollAttributeList
type EventControllerScrollAttributeList = ('[ '("flags", EventControllerScrollFlagsPropertyInfo), '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
eventControllerScrollFlags :: AttrLabelProxy "flags"
eventControllerScrollFlags = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EventControllerScroll = EventControllerScrollSignalList
type EventControllerScrollSignalList = ('[ '("decelerate", EventControllerScrollDecelerateSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("scroll", EventControllerScrollScrollSignalInfo), '("scrollBegin", EventControllerScrollScrollBeginSignalInfo), '("scrollEnd", EventControllerScrollScrollEndSignalInfo)] :: [(Symbol, *)])

#endif

-- method EventControllerScroll::new
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
--       , Arg
--           { argCName = "flags"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "EventControllerScrollFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "behavior flags" , sinceVersion = Nothing }
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
--                  Name { namespace = "Gtk" , name = "EventControllerScroll" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_scroll_new" gtk_event_controller_scroll_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- flags : TInterface (Name {namespace = "Gtk", name = "EventControllerScrollFlags"})
    IO (Ptr EventControllerScroll)

-- | Creates a new event controller that will handle scroll events
-- for the given /@widget@/.
-- 
-- /Since: 3.24/
eventControllerScrollNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> [Gtk.Flags.EventControllerScrollFlags]
    -- ^ /@flags@/: behavior flags
    -> m EventControllerScroll
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.EventControllerScroll.EventControllerScroll'
eventControllerScrollNew widget flags = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    let flags' = gflagsToWord flags
    result <- gtk_event_controller_scroll_new widget' flags'
    checkUnexpectedReturnNULL "eventControllerScrollNew" result
    result' <- (wrapObject EventControllerScroll) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method EventControllerScroll::get_flags
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "EventControllerScroll" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
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
--                  Name { namespace = "Gtk" , name = "EventControllerScrollFlags" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_scroll_get_flags" gtk_event_controller_scroll_get_flags :: 
    Ptr EventControllerScroll ->            -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerScroll"})
    IO CUInt

-- | Gets the flags conditioning the scroll controller behavior.
-- 
-- /Since: 3.24/
eventControllerScrollGetFlags ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerScroll a) =>
    a
    -> m [Gtk.Flags.EventControllerScrollFlags]
    -- ^ __Returns:__ the controller flags.
eventControllerScrollGetFlags controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    result <- gtk_event_controller_scroll_get_flags controller'
    let result' = wordToGFlags result
    touchManagedPtr controller
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerScrollGetFlagsMethodInfo
instance (signature ~ (m [Gtk.Flags.EventControllerScrollFlags]), MonadIO m, IsEventControllerScroll a) => O.MethodInfo EventControllerScrollGetFlagsMethodInfo a signature where
    overloadedMethod = eventControllerScrollGetFlags

#endif

-- method EventControllerScroll::set_flags
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "EventControllerScroll" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "flags"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "EventControllerScrollFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "behavior flags" , sinceVersion = Nothing }
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

foreign import ccall "gtk_event_controller_scroll_set_flags" gtk_event_controller_scroll_set_flags :: 
    Ptr EventControllerScroll ->            -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerScroll"})
    CUInt ->                                -- flags : TInterface (Name {namespace = "Gtk", name = "EventControllerScrollFlags"})
    IO ()

-- | Sets the flags conditioning scroll controller behavior.
-- 
-- /Since: 3.24/
eventControllerScrollSetFlags ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerScroll a) =>
    a
    -> [Gtk.Flags.EventControllerScrollFlags]
    -- ^ /@flags@/: behavior flags
    -> m ()
eventControllerScrollSetFlags controller flags = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    let flags' = gflagsToWord flags
    gtk_event_controller_scroll_set_flags controller' flags'
    touchManagedPtr controller
    return ()

#if defined(ENABLE_OVERLOADING)
data EventControllerScrollSetFlagsMethodInfo
instance (signature ~ ([Gtk.Flags.EventControllerScrollFlags] -> m ()), MonadIO m, IsEventControllerScroll a) => O.MethodInfo EventControllerScrollSetFlagsMethodInfo a signature where
    overloadedMethod = eventControllerScrollSetFlags

#endif

