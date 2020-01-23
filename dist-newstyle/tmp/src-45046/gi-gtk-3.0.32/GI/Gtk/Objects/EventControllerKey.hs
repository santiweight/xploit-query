{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.EventControllerKey.EventControllerKey' is an event controller meant for situations
-- where you need access to key events.
-- 
-- This object was added in 3.24.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EventControllerKey
    ( 

-- * Exported types
    EventControllerKey(..)                  ,
    IsEventControllerKey                    ,
    toEventControllerKey                    ,
    noEventControllerKey                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEventControllerKeyMethod         ,
#endif


-- ** forward #method:forward#

#if defined(ENABLE_OVERLOADING)
    EventControllerKeyForwardMethodInfo     ,
#endif
    eventControllerKeyForward               ,


-- ** getGroup #method:getGroup#

#if defined(ENABLE_OVERLOADING)
    EventControllerKeyGetGroupMethodInfo    ,
#endif
    eventControllerKeyGetGroup              ,


-- ** getImContext #method:getImContext#

#if defined(ENABLE_OVERLOADING)
    EventControllerKeyGetImContextMethodInfo,
#endif
    eventControllerKeyGetImContext          ,


-- ** new #method:new#

    eventControllerKeyNew                   ,


-- ** setImContext #method:setImContext#

#if defined(ENABLE_OVERLOADING)
    EventControllerKeySetImContextMethodInfo,
#endif
    eventControllerKeySetImContext          ,




 -- * Signals
-- ** focusIn #signal:focusIn#

    C_EventControllerKeyFocusInCallback     ,
    EventControllerKeyFocusInCallback       ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyFocusInSignalInfo     ,
#endif
    afterEventControllerKeyFocusIn          ,
    genClosure_EventControllerKeyFocusIn    ,
    mk_EventControllerKeyFocusInCallback    ,
    noEventControllerKeyFocusInCallback     ,
    onEventControllerKeyFocusIn             ,
    wrap_EventControllerKeyFocusInCallback  ,


-- ** focusOut #signal:focusOut#

    C_EventControllerKeyFocusOutCallback    ,
    EventControllerKeyFocusOutCallback      ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyFocusOutSignalInfo    ,
#endif
    afterEventControllerKeyFocusOut         ,
    genClosure_EventControllerKeyFocusOut   ,
    mk_EventControllerKeyFocusOutCallback   ,
    noEventControllerKeyFocusOutCallback    ,
    onEventControllerKeyFocusOut            ,
    wrap_EventControllerKeyFocusOutCallback ,


-- ** imUpdate #signal:imUpdate#

    C_EventControllerKeyImUpdateCallback    ,
    EventControllerKeyImUpdateCallback      ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyImUpdateSignalInfo    ,
#endif
    afterEventControllerKeyImUpdate         ,
    genClosure_EventControllerKeyImUpdate   ,
    mk_EventControllerKeyImUpdateCallback   ,
    noEventControllerKeyImUpdateCallback    ,
    onEventControllerKeyImUpdate            ,
    wrap_EventControllerKeyImUpdateCallback ,


-- ** keyPressed #signal:keyPressed#

    C_EventControllerKeyKeyPressedCallback  ,
    EventControllerKeyKeyPressedCallback    ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyKeyPressedSignalInfo  ,
#endif
    afterEventControllerKeyKeyPressed       ,
    genClosure_EventControllerKeyKeyPressed ,
    mk_EventControllerKeyKeyPressedCallback ,
    noEventControllerKeyKeyPressedCallback  ,
    onEventControllerKeyKeyPressed          ,
    wrap_EventControllerKeyKeyPressedCallback,


-- ** keyReleased #signal:keyReleased#

    C_EventControllerKeyKeyReleasedCallback ,
    EventControllerKeyKeyReleasedCallback   ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyKeyReleasedSignalInfo ,
#endif
    afterEventControllerKeyKeyReleased      ,
    genClosure_EventControllerKeyKeyReleased,
    mk_EventControllerKeyKeyReleasedCallback,
    noEventControllerKeyKeyReleasedCallback ,
    onEventControllerKeyKeyReleased         ,
    wrap_EventControllerKeyKeyReleasedCallback,


-- ** modifiers #signal:modifiers#

    C_EventControllerKeyModifiersCallback   ,
    EventControllerKeyModifiersCallback     ,
#if defined(ENABLE_OVERLOADING)
    EventControllerKeyModifiersSignalInfo   ,
#endif
    afterEventControllerKeyModifiers        ,
    genClosure_EventControllerKeyModifiers  ,
    mk_EventControllerKeyModifiersCallback  ,
    noEventControllerKeyModifiersCallback   ,
    onEventControllerKeyModifiers           ,
    wrap_EventControllerKeyModifiersCallback,




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
import qualified GI.Gdk.Flags as Gdk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Objects.EventController as Gtk.EventController
import {-# SOURCE #-} qualified GI.Gtk.Objects.IMContext as Gtk.IMContext
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype EventControllerKey = EventControllerKey (ManagedPtr EventControllerKey)
    deriving (Eq)
foreign import ccall "gtk_event_controller_key_get_type"
    c_gtk_event_controller_key_get_type :: IO GType

instance GObject EventControllerKey where
    gobjectType = c_gtk_event_controller_key_get_type
    

-- | Convert 'EventControllerKey' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EventControllerKey where
    toGValue o = do
        gtype <- c_gtk_event_controller_key_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EventControllerKey)
        B.ManagedPtr.newObject EventControllerKey ptr
        
    

-- | Type class for types which can be safely cast to `EventControllerKey`, for instance with `toEventControllerKey`.
class (GObject o, O.IsDescendantOf EventControllerKey o) => IsEventControllerKey o
instance (GObject o, O.IsDescendantOf EventControllerKey o) => IsEventControllerKey o

instance O.HasParentTypes EventControllerKey
type instance O.ParentTypes EventControllerKey = '[Gtk.EventController.EventController, GObject.Object.Object]

-- | Cast to `EventControllerKey`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEventControllerKey :: (MonadIO m, IsEventControllerKey o) => o -> m EventControllerKey
toEventControllerKey = liftIO . unsafeCastTo EventControllerKey

-- | A convenience alias for `Nothing` :: `Maybe` `EventControllerKey`.
noEventControllerKey :: Maybe EventControllerKey
noEventControllerKey = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEventControllerKeyMethod (t :: Symbol) (o :: *) :: * where
    ResolveEventControllerKeyMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEventControllerKeyMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEventControllerKeyMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEventControllerKeyMethod "forward" o = EventControllerKeyForwardMethodInfo
    ResolveEventControllerKeyMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEventControllerKeyMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEventControllerKeyMethod "handleEvent" o = Gtk.EventController.EventControllerHandleEventMethodInfo
    ResolveEventControllerKeyMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEventControllerKeyMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEventControllerKeyMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEventControllerKeyMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEventControllerKeyMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEventControllerKeyMethod "reset" o = Gtk.EventController.EventControllerResetMethodInfo
    ResolveEventControllerKeyMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEventControllerKeyMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEventControllerKeyMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEventControllerKeyMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEventControllerKeyMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEventControllerKeyMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEventControllerKeyMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEventControllerKeyMethod "getGroup" o = EventControllerKeyGetGroupMethodInfo
    ResolveEventControllerKeyMethod "getImContext" o = EventControllerKeyGetImContextMethodInfo
    ResolveEventControllerKeyMethod "getPropagationPhase" o = Gtk.EventController.EventControllerGetPropagationPhaseMethodInfo
    ResolveEventControllerKeyMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEventControllerKeyMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEventControllerKeyMethod "getWidget" o = Gtk.EventController.EventControllerGetWidgetMethodInfo
    ResolveEventControllerKeyMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEventControllerKeyMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEventControllerKeyMethod "setImContext" o = EventControllerKeySetImContextMethodInfo
    ResolveEventControllerKeyMethod "setPropagationPhase" o = Gtk.EventController.EventControllerSetPropagationPhaseMethodInfo
    ResolveEventControllerKeyMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEventControllerKeyMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEventControllerKeyMethod t EventControllerKey, O.MethodInfo info EventControllerKey p) => OL.IsLabel t (EventControllerKey -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal EventControllerKey::focus-in
-- | /No description available in the introspection data./
type EventControllerKeyFocusInCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyFocusInCallback`@.
noEventControllerKeyFocusInCallback :: Maybe EventControllerKeyFocusInCallback
noEventControllerKeyFocusInCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyFocusInCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyFocusInCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyFocusInCallback :: C_EventControllerKeyFocusInCallback -> IO (FunPtr C_EventControllerKeyFocusInCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyFocusIn :: MonadIO m => EventControllerKeyFocusInCallback -> m (GClosure C_EventControllerKeyFocusInCallback)
genClosure_EventControllerKeyFocusIn cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusInCallback cb
    mk_EventControllerKeyFocusInCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyFocusInCallback` into a `C_EventControllerKeyFocusInCallback`.
wrap_EventControllerKeyFocusInCallback ::
    EventControllerKeyFocusInCallback ->
    C_EventControllerKeyFocusInCallback
wrap_EventControllerKeyFocusInCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [focusIn](#signal:focusIn) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #focusIn callback
-- @
-- 
-- 
onEventControllerKeyFocusIn :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyFocusInCallback -> m SignalHandlerId
onEventControllerKeyFocusIn obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusInCallback cb
    cb'' <- mk_EventControllerKeyFocusInCallback cb'
    connectSignalFunPtr obj "focus-in" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [focusIn](#signal:focusIn) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #focusIn callback
-- @
-- 
-- 
afterEventControllerKeyFocusIn :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyFocusInCallback -> m SignalHandlerId
afterEventControllerKeyFocusIn obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusInCallback cb
    cb'' <- mk_EventControllerKeyFocusInCallback cb'
    connectSignalFunPtr obj "focus-in" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyFocusInSignalInfo
instance SignalInfo EventControllerKeyFocusInSignalInfo where
    type HaskellCallbackType EventControllerKeyFocusInSignalInfo = EventControllerKeyFocusInCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyFocusInCallback cb
        cb'' <- mk_EventControllerKeyFocusInCallback cb'
        connectSignalFunPtr obj "focus-in" cb'' connectMode detail

#endif

-- signal EventControllerKey::focus-out
-- | /No description available in the introspection data./
type EventControllerKeyFocusOutCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyFocusOutCallback`@.
noEventControllerKeyFocusOutCallback :: Maybe EventControllerKeyFocusOutCallback
noEventControllerKeyFocusOutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyFocusOutCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyFocusOutCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyFocusOutCallback :: C_EventControllerKeyFocusOutCallback -> IO (FunPtr C_EventControllerKeyFocusOutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyFocusOut :: MonadIO m => EventControllerKeyFocusOutCallback -> m (GClosure C_EventControllerKeyFocusOutCallback)
genClosure_EventControllerKeyFocusOut cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusOutCallback cb
    mk_EventControllerKeyFocusOutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyFocusOutCallback` into a `C_EventControllerKeyFocusOutCallback`.
wrap_EventControllerKeyFocusOutCallback ::
    EventControllerKeyFocusOutCallback ->
    C_EventControllerKeyFocusOutCallback
wrap_EventControllerKeyFocusOutCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [focusOut](#signal:focusOut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #focusOut callback
-- @
-- 
-- 
onEventControllerKeyFocusOut :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyFocusOutCallback -> m SignalHandlerId
onEventControllerKeyFocusOut obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusOutCallback cb
    cb'' <- mk_EventControllerKeyFocusOutCallback cb'
    connectSignalFunPtr obj "focus-out" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [focusOut](#signal:focusOut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #focusOut callback
-- @
-- 
-- 
afterEventControllerKeyFocusOut :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyFocusOutCallback -> m SignalHandlerId
afterEventControllerKeyFocusOut obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyFocusOutCallback cb
    cb'' <- mk_EventControllerKeyFocusOutCallback cb'
    connectSignalFunPtr obj "focus-out" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyFocusOutSignalInfo
instance SignalInfo EventControllerKeyFocusOutSignalInfo where
    type HaskellCallbackType EventControllerKeyFocusOutSignalInfo = EventControllerKeyFocusOutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyFocusOutCallback cb
        cb'' <- mk_EventControllerKeyFocusOutCallback cb'
        connectSignalFunPtr obj "focus-out" cb'' connectMode detail

#endif

-- signal EventControllerKey::im-update
-- | /No description available in the introspection data./
type EventControllerKeyImUpdateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyImUpdateCallback`@.
noEventControllerKeyImUpdateCallback :: Maybe EventControllerKeyImUpdateCallback
noEventControllerKeyImUpdateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyImUpdateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyImUpdateCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyImUpdateCallback :: C_EventControllerKeyImUpdateCallback -> IO (FunPtr C_EventControllerKeyImUpdateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyImUpdate :: MonadIO m => EventControllerKeyImUpdateCallback -> m (GClosure C_EventControllerKeyImUpdateCallback)
genClosure_EventControllerKeyImUpdate cb = liftIO $ do
    let cb' = wrap_EventControllerKeyImUpdateCallback cb
    mk_EventControllerKeyImUpdateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyImUpdateCallback` into a `C_EventControllerKeyImUpdateCallback`.
wrap_EventControllerKeyImUpdateCallback ::
    EventControllerKeyImUpdateCallback ->
    C_EventControllerKeyImUpdateCallback
wrap_EventControllerKeyImUpdateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [imUpdate](#signal:imUpdate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #imUpdate callback
-- @
-- 
-- 
onEventControllerKeyImUpdate :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyImUpdateCallback -> m SignalHandlerId
onEventControllerKeyImUpdate obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyImUpdateCallback cb
    cb'' <- mk_EventControllerKeyImUpdateCallback cb'
    connectSignalFunPtr obj "im-update" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [imUpdate](#signal:imUpdate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #imUpdate callback
-- @
-- 
-- 
afterEventControllerKeyImUpdate :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyImUpdateCallback -> m SignalHandlerId
afterEventControllerKeyImUpdate obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyImUpdateCallback cb
    cb'' <- mk_EventControllerKeyImUpdateCallback cb'
    connectSignalFunPtr obj "im-update" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyImUpdateSignalInfo
instance SignalInfo EventControllerKeyImUpdateSignalInfo where
    type HaskellCallbackType EventControllerKeyImUpdateSignalInfo = EventControllerKeyImUpdateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyImUpdateCallback cb
        cb'' <- mk_EventControllerKeyImUpdateCallback cb'
        connectSignalFunPtr obj "im-update" cb'' connectMode detail

#endif

-- signal EventControllerKey::key-pressed
-- | This signal is emitted whenever a key is pressed.
-- 
-- /Since: 3.24/
type EventControllerKeyKeyPressedCallback =
    Word32
    -- ^ /@keyval@/: the pressed key.
    -> Word32
    -- ^ /@keycode@/: the raw code of the pressed key.
    -> [Gdk.Flags.ModifierType]
    -- ^ /@state@/: the bitmask, representing the state of modifier keys and pointer buttons. See t'GI.Gdk.Flags.ModifierType'.
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the key press was handled, 'P.False' otherwise.

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyKeyPressedCallback`@.
noEventControllerKeyKeyPressedCallback :: Maybe EventControllerKeyKeyPressedCallback
noEventControllerKeyKeyPressedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyKeyPressedCallback =
    Ptr () ->                               -- object
    Word32 ->
    Word32 ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyKeyPressedCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyKeyPressedCallback :: C_EventControllerKeyKeyPressedCallback -> IO (FunPtr C_EventControllerKeyKeyPressedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyKeyPressed :: MonadIO m => EventControllerKeyKeyPressedCallback -> m (GClosure C_EventControllerKeyKeyPressedCallback)
genClosure_EventControllerKeyKeyPressed cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyPressedCallback cb
    mk_EventControllerKeyKeyPressedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyKeyPressedCallback` into a `C_EventControllerKeyKeyPressedCallback`.
wrap_EventControllerKeyKeyPressedCallback ::
    EventControllerKeyKeyPressedCallback ->
    C_EventControllerKeyKeyPressedCallback
wrap_EventControllerKeyKeyPressedCallback _cb _ keyval keycode state _ = do
    let state' = wordToGFlags state
    result <- _cb  keyval keycode state'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [keyPressed](#signal:keyPressed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #keyPressed callback
-- @
-- 
-- 
onEventControllerKeyKeyPressed :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyKeyPressedCallback -> m SignalHandlerId
onEventControllerKeyKeyPressed obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyPressedCallback cb
    cb'' <- mk_EventControllerKeyKeyPressedCallback cb'
    connectSignalFunPtr obj "key-pressed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [keyPressed](#signal:keyPressed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #keyPressed callback
-- @
-- 
-- 
afterEventControllerKeyKeyPressed :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyKeyPressedCallback -> m SignalHandlerId
afterEventControllerKeyKeyPressed obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyPressedCallback cb
    cb'' <- mk_EventControllerKeyKeyPressedCallback cb'
    connectSignalFunPtr obj "key-pressed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyKeyPressedSignalInfo
instance SignalInfo EventControllerKeyKeyPressedSignalInfo where
    type HaskellCallbackType EventControllerKeyKeyPressedSignalInfo = EventControllerKeyKeyPressedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyKeyPressedCallback cb
        cb'' <- mk_EventControllerKeyKeyPressedCallback cb'
        connectSignalFunPtr obj "key-pressed" cb'' connectMode detail

#endif

-- signal EventControllerKey::key-released
-- | This signal is emitted whenever a key is released.
-- 
-- /Since: 3.24/
type EventControllerKeyKeyReleasedCallback =
    Word32
    -- ^ /@keyval@/: the released key.
    -> Word32
    -- ^ /@keycode@/: the raw code of the released key.
    -> [Gdk.Flags.ModifierType]
    -- ^ /@state@/: the bitmask, representing the state of modifier keys and pointer buttons. See t'GI.Gdk.Flags.ModifierType'.
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyKeyReleasedCallback`@.
noEventControllerKeyKeyReleasedCallback :: Maybe EventControllerKeyKeyReleasedCallback
noEventControllerKeyKeyReleasedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyKeyReleasedCallback =
    Ptr () ->                               -- object
    Word32 ->
    Word32 ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyKeyReleasedCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyKeyReleasedCallback :: C_EventControllerKeyKeyReleasedCallback -> IO (FunPtr C_EventControllerKeyKeyReleasedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyKeyReleased :: MonadIO m => EventControllerKeyKeyReleasedCallback -> m (GClosure C_EventControllerKeyKeyReleasedCallback)
genClosure_EventControllerKeyKeyReleased cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyReleasedCallback cb
    mk_EventControllerKeyKeyReleasedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyKeyReleasedCallback` into a `C_EventControllerKeyKeyReleasedCallback`.
wrap_EventControllerKeyKeyReleasedCallback ::
    EventControllerKeyKeyReleasedCallback ->
    C_EventControllerKeyKeyReleasedCallback
wrap_EventControllerKeyKeyReleasedCallback _cb _ keyval keycode state _ = do
    let state' = wordToGFlags state
    _cb  keyval keycode state'


-- | Connect a signal handler for the [keyReleased](#signal:keyReleased) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #keyReleased callback
-- @
-- 
-- 
onEventControllerKeyKeyReleased :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyKeyReleasedCallback -> m SignalHandlerId
onEventControllerKeyKeyReleased obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyReleasedCallback cb
    cb'' <- mk_EventControllerKeyKeyReleasedCallback cb'
    connectSignalFunPtr obj "key-released" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [keyReleased](#signal:keyReleased) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #keyReleased callback
-- @
-- 
-- 
afterEventControllerKeyKeyReleased :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyKeyReleasedCallback -> m SignalHandlerId
afterEventControllerKeyKeyReleased obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyKeyReleasedCallback cb
    cb'' <- mk_EventControllerKeyKeyReleasedCallback cb'
    connectSignalFunPtr obj "key-released" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyKeyReleasedSignalInfo
instance SignalInfo EventControllerKeyKeyReleasedSignalInfo where
    type HaskellCallbackType EventControllerKeyKeyReleasedSignalInfo = EventControllerKeyKeyReleasedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyKeyReleasedCallback cb
        cb'' <- mk_EventControllerKeyKeyReleasedCallback cb'
        connectSignalFunPtr obj "key-released" cb'' connectMode detail

#endif

-- signal EventControllerKey::modifiers
-- | /No description available in the introspection data./
type EventControllerKeyModifiersCallback =
    [Gdk.Flags.ModifierType]
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `EventControllerKeyModifiersCallback`@.
noEventControllerKeyModifiersCallback :: Maybe EventControllerKeyModifiersCallback
noEventControllerKeyModifiersCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_EventControllerKeyModifiersCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_EventControllerKeyModifiersCallback`.
foreign import ccall "wrapper"
    mk_EventControllerKeyModifiersCallback :: C_EventControllerKeyModifiersCallback -> IO (FunPtr C_EventControllerKeyModifiersCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_EventControllerKeyModifiers :: MonadIO m => EventControllerKeyModifiersCallback -> m (GClosure C_EventControllerKeyModifiersCallback)
genClosure_EventControllerKeyModifiers cb = liftIO $ do
    let cb' = wrap_EventControllerKeyModifiersCallback cb
    mk_EventControllerKeyModifiersCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `EventControllerKeyModifiersCallback` into a `C_EventControllerKeyModifiersCallback`.
wrap_EventControllerKeyModifiersCallback ::
    EventControllerKeyModifiersCallback ->
    C_EventControllerKeyModifiersCallback
wrap_EventControllerKeyModifiersCallback _cb _ object _ = do
    let object' = wordToGFlags object
    result <- _cb  object'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [modifiers](#signal:modifiers) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' eventControllerKey #modifiers callback
-- @
-- 
-- 
onEventControllerKeyModifiers :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyModifiersCallback -> m SignalHandlerId
onEventControllerKeyModifiers obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyModifiersCallback cb
    cb'' <- mk_EventControllerKeyModifiersCallback cb'
    connectSignalFunPtr obj "modifiers" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [modifiers](#signal:modifiers) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' eventControllerKey #modifiers callback
-- @
-- 
-- 
afterEventControllerKeyModifiers :: (IsEventControllerKey a, MonadIO m) => a -> EventControllerKeyModifiersCallback -> m SignalHandlerId
afterEventControllerKeyModifiers obj cb = liftIO $ do
    let cb' = wrap_EventControllerKeyModifiersCallback cb
    cb'' <- mk_EventControllerKeyModifiersCallback cb'
    connectSignalFunPtr obj "modifiers" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data EventControllerKeyModifiersSignalInfo
instance SignalInfo EventControllerKeyModifiersSignalInfo where
    type HaskellCallbackType EventControllerKeyModifiersSignalInfo = EventControllerKeyModifiersCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_EventControllerKeyModifiersCallback cb
        cb'' <- mk_EventControllerKeyModifiersCallback cb'
        connectSignalFunPtr obj "modifiers" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EventControllerKey
type instance O.AttributeList EventControllerKey = EventControllerKeyAttributeList
type EventControllerKeyAttributeList = ('[ '("propagationPhase", Gtk.EventController.EventControllerPropagationPhasePropertyInfo), '("widget", Gtk.EventController.EventControllerWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EventControllerKey = EventControllerKeySignalList
type EventControllerKeySignalList = ('[ '("focusIn", EventControllerKeyFocusInSignalInfo), '("focusOut", EventControllerKeyFocusOutSignalInfo), '("imUpdate", EventControllerKeyImUpdateSignalInfo), '("keyPressed", EventControllerKeyKeyPressedSignalInfo), '("keyReleased", EventControllerKeyKeyReleasedSignalInfo), '("modifiers", EventControllerKeyModifiersSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method EventControllerKey::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
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
--                  Name { namespace = "Gtk" , name = "EventControllerKey" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_key_new" gtk_event_controller_key_new :: 
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr EventControllerKey)

-- | /No description available in the introspection data./
eventControllerKeyNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    a
    -> m EventControllerKey
eventControllerKeyNew widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_event_controller_key_new widget'
    checkUnexpectedReturnNULL "eventControllerKeyNew" result
    result' <- (wrapObject EventControllerKey) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method EventControllerKey::forward
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventControllerKey" }
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
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_key_forward" gtk_event_controller_key_forward :: 
    Ptr EventControllerKey ->               -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerKey"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | /No description available in the introspection data./
eventControllerKeyForward ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerKey a, Gtk.Widget.IsWidget b) =>
    a
    -> b
    -> m Bool
eventControllerKeyForward controller widget = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_event_controller_key_forward controller' widget'
    let result' = (/= 0) result
    touchManagedPtr controller
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerKeyForwardMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsEventControllerKey a, Gtk.Widget.IsWidget b) => O.MethodInfo EventControllerKeyForwardMethodInfo a signature where
    overloadedMethod = eventControllerKeyForward

#endif

-- method EventControllerKey::get_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventControllerKey" }
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_key_get_group" gtk_event_controller_key_get_group :: 
    Ptr EventControllerKey ->               -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerKey"})
    IO Word32

-- | /No description available in the introspection data./
eventControllerKeyGetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerKey a) =>
    a
    -> m Word32
eventControllerKeyGetGroup controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    result <- gtk_event_controller_key_get_group controller'
    touchManagedPtr controller
    return result

#if defined(ENABLE_OVERLOADING)
data EventControllerKeyGetGroupMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsEventControllerKey a) => O.MethodInfo EventControllerKeyGetGroupMethodInfo a signature where
    overloadedMethod = eventControllerKeyGetGroup

#endif

-- method EventControllerKey::get_im_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventControllerKey" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventControllerKey"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IMContext" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_key_get_im_context" gtk_event_controller_key_get_im_context :: 
    Ptr EventControllerKey ->               -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerKey"})
    IO (Ptr Gtk.IMContext.IMContext)

-- | Gets the IM context of a key controller.
-- 
-- /Since: 3.24/
eventControllerKeyGetImContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerKey a) =>
    a
    -- ^ /@controller@/: a t'GI.Gtk.Objects.EventControllerKey.EventControllerKey'
    -> m Gtk.IMContext.IMContext
    -- ^ __Returns:__ the IM context
eventControllerKeyGetImContext controller = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    result <- gtk_event_controller_key_get_im_context controller'
    checkUnexpectedReturnNULL "eventControllerKeyGetImContext" result
    result' <- (newObject Gtk.IMContext.IMContext) result
    touchManagedPtr controller
    return result'

#if defined(ENABLE_OVERLOADING)
data EventControllerKeyGetImContextMethodInfo
instance (signature ~ (m Gtk.IMContext.IMContext), MonadIO m, IsEventControllerKey a) => O.MethodInfo EventControllerKeyGetImContextMethodInfo a signature where
    overloadedMethod = eventControllerKeyGetImContext

#endif

-- method EventControllerKey::set_im_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "controller"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventControllerKey" }
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
--           { argCName = "im_context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IMContext" }
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_controller_key_set_im_context" gtk_event_controller_key_set_im_context :: 
    Ptr EventControllerKey ->               -- controller : TInterface (Name {namespace = "Gtk", name = "EventControllerKey"})
    Ptr Gtk.IMContext.IMContext ->          -- im_context : TInterface (Name {namespace = "Gtk", name = "IMContext"})
    IO ()

-- | /No description available in the introspection data./
eventControllerKeySetImContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventControllerKey a, Gtk.IMContext.IsIMContext b) =>
    a
    -> b
    -> m ()
eventControllerKeySetImContext controller imContext = liftIO $ do
    controller' <- unsafeManagedPtrCastPtr controller
    imContext' <- unsafeManagedPtrCastPtr imContext
    gtk_event_controller_key_set_im_context controller' imContext'
    touchManagedPtr controller
    touchManagedPtr imContext
    return ()

#if defined(ENABLE_OVERLOADING)
data EventControllerKeySetImContextMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsEventControllerKey a, Gtk.IMContext.IsIMContext b) => O.MethodInfo EventControllerKeySetImContextMethodInfo a signature where
    overloadedMethod = eventControllerKeySetImContext

#endif

