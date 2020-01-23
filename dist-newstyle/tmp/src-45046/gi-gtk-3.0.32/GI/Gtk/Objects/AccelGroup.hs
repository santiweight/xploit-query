{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.AccelGroup.AccelGroup' represents a group of keyboard accelerators,
-- typically attached to a toplevel t'GI.Gtk.Objects.Window.Window' (with
-- 'GI.Gtk.Objects.Window.windowAddAccelGroup'). Usually you won’t need to create a
-- t'GI.Gtk.Objects.AccelGroup.AccelGroup' directly; instead, when using t'GI.Gtk.Objects.UIManager.UIManager', GTK+
-- automatically sets up the accelerators for your menus in the ui
-- manager’s t'GI.Gtk.Objects.AccelGroup.AccelGroup'.
-- 
-- Note that “accelerators” are different from
-- “mnemonics”. Accelerators are shortcuts for
-- activating a menu item; they appear alongside the menu item they’re a
-- shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
-- menu item. Mnemonics are shortcuts for GUI elements such as text
-- entries or buttons; they appear as underlined characters. See
-- 'GI.Gtk.Objects.Label.labelNewWithMnemonic'. Menu items can have both accelerators
-- and mnemonics, of course.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.AccelGroup
    ( 

-- * Exported types
    AccelGroup(..)                          ,
    IsAccelGroup                            ,
    toAccelGroup                            ,
    noAccelGroup                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAccelGroupMethod                 ,
#endif


-- ** activate #method:activate#

#if defined(ENABLE_OVERLOADING)
    AccelGroupActivateMethodInfo            ,
#endif
    accelGroupActivate                      ,


-- ** connect #method:connect#

#if defined(ENABLE_OVERLOADING)
    AccelGroupConnectMethodInfo             ,
#endif
    accelGroupConnect                       ,


-- ** connectByPath #method:connectByPath#

#if defined(ENABLE_OVERLOADING)
    AccelGroupConnectByPathMethodInfo       ,
#endif
    accelGroupConnectByPath                 ,


-- ** disconnect #method:disconnect#

#if defined(ENABLE_OVERLOADING)
    AccelGroupDisconnectMethodInfo          ,
#endif
    accelGroupDisconnect                    ,


-- ** disconnectKey #method:disconnectKey#

#if defined(ENABLE_OVERLOADING)
    AccelGroupDisconnectKeyMethodInfo       ,
#endif
    accelGroupDisconnectKey                 ,


-- ** find #method:find#

#if defined(ENABLE_OVERLOADING)
    AccelGroupFindMethodInfo                ,
#endif
    accelGroupFind                          ,


-- ** fromAccelClosure #method:fromAccelClosure#

    accelGroupFromAccelClosure              ,


-- ** getIsLocked #method:getIsLocked#

#if defined(ENABLE_OVERLOADING)
    AccelGroupGetIsLockedMethodInfo         ,
#endif
    accelGroupGetIsLocked                   ,


-- ** getModifierMask #method:getModifierMask#

#if defined(ENABLE_OVERLOADING)
    AccelGroupGetModifierMaskMethodInfo     ,
#endif
    accelGroupGetModifierMask               ,


-- ** lock #method:lock#

#if defined(ENABLE_OVERLOADING)
    AccelGroupLockMethodInfo                ,
#endif
    accelGroupLock                          ,


-- ** new #method:new#

    accelGroupNew                           ,


-- ** query #method:query#

#if defined(ENABLE_OVERLOADING)
    AccelGroupQueryMethodInfo               ,
#endif
    accelGroupQuery                         ,


-- ** unlock #method:unlock#

#if defined(ENABLE_OVERLOADING)
    AccelGroupUnlockMethodInfo              ,
#endif
    accelGroupUnlock                        ,




 -- * Properties
-- ** isLocked #attr:isLocked#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    AccelGroupIsLockedPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    accelGroupIsLocked                      ,
#endif
    getAccelGroupIsLocked                   ,


-- ** modifierMask #attr:modifierMask#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    AccelGroupModifierMaskPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    accelGroupModifierMask                  ,
#endif
    getAccelGroupModifierMask               ,




 -- * Signals
-- ** accelActivate #signal:accelActivate#

    AccelGroupAccelActivateCallback         ,
#if defined(ENABLE_OVERLOADING)
    AccelGroupAccelActivateSignalInfo       ,
#endif
    C_AccelGroupAccelActivateCallback       ,
    afterAccelGroupAccelActivate            ,
    genClosure_AccelGroupAccelActivate      ,
    mk_AccelGroupAccelActivateCallback      ,
    noAccelGroupAccelActivateCallback       ,
    onAccelGroupAccelActivate               ,
    wrap_AccelGroupAccelActivateCallback    ,


-- ** accelChanged #signal:accelChanged#

    AccelGroupAccelChangedCallback          ,
#if defined(ENABLE_OVERLOADING)
    AccelGroupAccelChangedSignalInfo        ,
#endif
    C_AccelGroupAccelChangedCallback        ,
    afterAccelGroupAccelChanged             ,
    genClosure_AccelGroupAccelChanged       ,
    mk_AccelGroupAccelChangedCallback       ,
    noAccelGroupAccelChangedCallback        ,
    onAccelGroupAccelChanged                ,
    wrap_AccelGroupAccelChangedCallback     ,




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
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Structs.AccelGroupEntry as Gtk.AccelGroupEntry
import {-# SOURCE #-} qualified GI.Gtk.Structs.AccelKey as Gtk.AccelKey

-- | Memory-managed wrapper type.
newtype AccelGroup = AccelGroup (ManagedPtr AccelGroup)
    deriving (Eq)
foreign import ccall "gtk_accel_group_get_type"
    c_gtk_accel_group_get_type :: IO GType

instance GObject AccelGroup where
    gobjectType = c_gtk_accel_group_get_type
    

-- | Convert 'AccelGroup' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue AccelGroup where
    toGValue o = do
        gtype <- c_gtk_accel_group_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr AccelGroup)
        B.ManagedPtr.newObject AccelGroup ptr
        
    

-- | Type class for types which can be safely cast to `AccelGroup`, for instance with `toAccelGroup`.
class (GObject o, O.IsDescendantOf AccelGroup o) => IsAccelGroup o
instance (GObject o, O.IsDescendantOf AccelGroup o) => IsAccelGroup o

instance O.HasParentTypes AccelGroup
type instance O.ParentTypes AccelGroup = '[GObject.Object.Object]

-- | Cast to `AccelGroup`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAccelGroup :: (MonadIO m, IsAccelGroup o) => o -> m AccelGroup
toAccelGroup = liftIO . unsafeCastTo AccelGroup

-- | A convenience alias for `Nothing` :: `Maybe` `AccelGroup`.
noAccelGroup :: Maybe AccelGroup
noAccelGroup = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAccelGroupMethod (t :: Symbol) (o :: *) :: * where
    ResolveAccelGroupMethod "activate" o = AccelGroupActivateMethodInfo
    ResolveAccelGroupMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAccelGroupMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAccelGroupMethod "connect" o = AccelGroupConnectMethodInfo
    ResolveAccelGroupMethod "connectByPath" o = AccelGroupConnectByPathMethodInfo
    ResolveAccelGroupMethod "disconnect" o = AccelGroupDisconnectMethodInfo
    ResolveAccelGroupMethod "disconnectKey" o = AccelGroupDisconnectKeyMethodInfo
    ResolveAccelGroupMethod "find" o = AccelGroupFindMethodInfo
    ResolveAccelGroupMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAccelGroupMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAccelGroupMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAccelGroupMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAccelGroupMethod "lock" o = AccelGroupLockMethodInfo
    ResolveAccelGroupMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAccelGroupMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAccelGroupMethod "query" o = AccelGroupQueryMethodInfo
    ResolveAccelGroupMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAccelGroupMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAccelGroupMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAccelGroupMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAccelGroupMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAccelGroupMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAccelGroupMethod "unlock" o = AccelGroupUnlockMethodInfo
    ResolveAccelGroupMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAccelGroupMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAccelGroupMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAccelGroupMethod "getIsLocked" o = AccelGroupGetIsLockedMethodInfo
    ResolveAccelGroupMethod "getModifierMask" o = AccelGroupGetModifierMaskMethodInfo
    ResolveAccelGroupMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAccelGroupMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAccelGroupMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAccelGroupMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAccelGroupMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAccelGroupMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAccelGroupMethod t AccelGroup, O.MethodInfo info AccelGroup p) => OL.IsLabel t (AccelGroup -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal AccelGroup::accel-activate
-- | The accel-activate signal is an implementation detail of
-- t'GI.Gtk.Objects.AccelGroup.AccelGroup' and not meant to be used by applications.
type AccelGroupAccelActivateCallback =
    GObject.Object.Object
    -- ^ /@acceleratable@/: the object on which the accelerator was activated
    -> Word32
    -- ^ /@keyval@/: the accelerator keyval
    -> [Gdk.Flags.ModifierType]
    -- ^ /@modifier@/: the modifier combination of the accelerator
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the accelerator was activated

-- | A convenience synonym for @`Nothing` :: `Maybe` `AccelGroupAccelActivateCallback`@.
noAccelGroupAccelActivateCallback :: Maybe AccelGroupAccelActivateCallback
noAccelGroupAccelActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AccelGroupAccelActivateCallback =
    Ptr () ->                               -- object
    Ptr GObject.Object.Object ->
    Word32 ->
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_AccelGroupAccelActivateCallback`.
foreign import ccall "wrapper"
    mk_AccelGroupAccelActivateCallback :: C_AccelGroupAccelActivateCallback -> IO (FunPtr C_AccelGroupAccelActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AccelGroupAccelActivate :: MonadIO m => AccelGroupAccelActivateCallback -> m (GClosure C_AccelGroupAccelActivateCallback)
genClosure_AccelGroupAccelActivate cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelActivateCallback cb
    mk_AccelGroupAccelActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AccelGroupAccelActivateCallback` into a `C_AccelGroupAccelActivateCallback`.
wrap_AccelGroupAccelActivateCallback ::
    AccelGroupAccelActivateCallback ->
    C_AccelGroupAccelActivateCallback
wrap_AccelGroupAccelActivateCallback _cb _ acceleratable keyval modifier _ = do
    acceleratable' <- (newObject GObject.Object.Object) acceleratable
    let modifier' = wordToGFlags modifier
    result <- _cb  acceleratable' keyval modifier'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [accelActivate](#signal:accelActivate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' accelGroup #accelActivate callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@accel-activate::detail@” instead.
-- 
onAccelGroupAccelActivate :: (IsAccelGroup a, MonadIO m) => a -> P.Maybe T.Text -> AccelGroupAccelActivateCallback -> m SignalHandlerId
onAccelGroupAccelActivate obj detail cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelActivateCallback cb
    cb'' <- mk_AccelGroupAccelActivateCallback cb'
    connectSignalFunPtr obj "accel-activate" cb'' SignalConnectBefore detail

-- | Connect a signal handler for the [accelActivate](#signal:accelActivate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' accelGroup #accelActivate callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@accel-activate::detail@” instead.
-- 
afterAccelGroupAccelActivate :: (IsAccelGroup a, MonadIO m) => a -> P.Maybe T.Text -> AccelGroupAccelActivateCallback -> m SignalHandlerId
afterAccelGroupAccelActivate obj detail cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelActivateCallback cb
    cb'' <- mk_AccelGroupAccelActivateCallback cb'
    connectSignalFunPtr obj "accel-activate" cb'' SignalConnectAfter detail


#if defined(ENABLE_OVERLOADING)
data AccelGroupAccelActivateSignalInfo
instance SignalInfo AccelGroupAccelActivateSignalInfo where
    type HaskellCallbackType AccelGroupAccelActivateSignalInfo = AccelGroupAccelActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AccelGroupAccelActivateCallback cb
        cb'' <- mk_AccelGroupAccelActivateCallback cb'
        connectSignalFunPtr obj "accel-activate" cb'' connectMode detail

#endif

-- signal AccelGroup::accel-changed
-- | The accel-changed signal is emitted when an entry
-- is added to or removed from the accel group.
-- 
-- Widgets like t'GI.Gtk.Objects.AccelLabel.AccelLabel' which display an associated
-- accelerator should connect to this signal, and rebuild
-- their visual representation if the /@accelClosure@/ is theirs.
type AccelGroupAccelChangedCallback =
    Word32
    -- ^ /@keyval@/: the accelerator keyval
    -> [Gdk.Flags.ModifierType]
    -- ^ /@modifier@/: the modifier combination of the accelerator
    -> GClosure ()
    -- ^ /@accelClosure@/: the t'GI.GObject.Structs.Closure.Closure' of the accelerator
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `AccelGroupAccelChangedCallback`@.
noAccelGroupAccelChangedCallback :: Maybe AccelGroupAccelChangedCallback
noAccelGroupAccelChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_AccelGroupAccelChangedCallback =
    Ptr () ->                               -- object
    Word32 ->
    CUInt ->
    Ptr (GClosure ()) ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_AccelGroupAccelChangedCallback`.
foreign import ccall "wrapper"
    mk_AccelGroupAccelChangedCallback :: C_AccelGroupAccelChangedCallback -> IO (FunPtr C_AccelGroupAccelChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_AccelGroupAccelChanged :: MonadIO m => AccelGroupAccelChangedCallback -> m (GClosure C_AccelGroupAccelChangedCallback)
genClosure_AccelGroupAccelChanged cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelChangedCallback cb
    mk_AccelGroupAccelChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `AccelGroupAccelChangedCallback` into a `C_AccelGroupAccelChangedCallback`.
wrap_AccelGroupAccelChangedCallback ::
    AccelGroupAccelChangedCallback ->
    C_AccelGroupAccelChangedCallback
wrap_AccelGroupAccelChangedCallback _cb _ keyval modifier accelClosure _ = do
    let modifier' = wordToGFlags modifier
    accelClosure' <- (B.GClosure.newGClosureFromPtr . FP.castPtr) accelClosure
    _cb  keyval modifier' accelClosure'


-- | Connect a signal handler for the [accelChanged](#signal:accelChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' accelGroup #accelChanged callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@accel-changed::detail@” instead.
-- 
onAccelGroupAccelChanged :: (IsAccelGroup a, MonadIO m) => a -> P.Maybe T.Text -> AccelGroupAccelChangedCallback -> m SignalHandlerId
onAccelGroupAccelChanged obj detail cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelChangedCallback cb
    cb'' <- mk_AccelGroupAccelChangedCallback cb'
    connectSignalFunPtr obj "accel-changed" cb'' SignalConnectBefore detail

-- | Connect a signal handler for the [accelChanged](#signal:accelChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' accelGroup #accelChanged callback
-- @
-- 
-- This signal admits a optional parameter @detail@.
-- If it's not @Nothing@, we will connect to “@accel-changed::detail@” instead.
-- 
afterAccelGroupAccelChanged :: (IsAccelGroup a, MonadIO m) => a -> P.Maybe T.Text -> AccelGroupAccelChangedCallback -> m SignalHandlerId
afterAccelGroupAccelChanged obj detail cb = liftIO $ do
    let cb' = wrap_AccelGroupAccelChangedCallback cb
    cb'' <- mk_AccelGroupAccelChangedCallback cb'
    connectSignalFunPtr obj "accel-changed" cb'' SignalConnectAfter detail


#if defined(ENABLE_OVERLOADING)
data AccelGroupAccelChangedSignalInfo
instance SignalInfo AccelGroupAccelChangedSignalInfo where
    type HaskellCallbackType AccelGroupAccelChangedSignalInfo = AccelGroupAccelChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_AccelGroupAccelChangedCallback cb
        cb'' <- mk_AccelGroupAccelChangedCallback cb'
        connectSignalFunPtr obj "accel-changed" cb'' connectMode detail

#endif

-- VVV Prop "is-locked"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@is-locked@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accelGroup #isLocked
-- @
getAccelGroupIsLocked :: (MonadIO m, IsAccelGroup o) => o -> m Bool
getAccelGroupIsLocked obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-locked"

#if defined(ENABLE_OVERLOADING)
data AccelGroupIsLockedPropertyInfo
instance AttrInfo AccelGroupIsLockedPropertyInfo where
    type AttrAllowedOps AccelGroupIsLockedPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint AccelGroupIsLockedPropertyInfo = IsAccelGroup
    type AttrSetTypeConstraint AccelGroupIsLockedPropertyInfo = (~) ()
    type AttrTransferTypeConstraint AccelGroupIsLockedPropertyInfo = (~) ()
    type AttrTransferType AccelGroupIsLockedPropertyInfo = ()
    type AttrGetType AccelGroupIsLockedPropertyInfo = Bool
    type AttrLabel AccelGroupIsLockedPropertyInfo = "is-locked"
    type AttrOrigin AccelGroupIsLockedPropertyInfo = AccelGroup
    attrGet = getAccelGroupIsLocked
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "modifier-mask"
   -- Type: TInterface (Name {namespace = "Gdk", name = "ModifierType"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@modifier-mask@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' accelGroup #modifierMask
-- @
getAccelGroupModifierMask :: (MonadIO m, IsAccelGroup o) => o -> m [Gdk.Flags.ModifierType]
getAccelGroupModifierMask obj = liftIO $ B.Properties.getObjectPropertyFlags obj "modifier-mask"

#if defined(ENABLE_OVERLOADING)
data AccelGroupModifierMaskPropertyInfo
instance AttrInfo AccelGroupModifierMaskPropertyInfo where
    type AttrAllowedOps AccelGroupModifierMaskPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint AccelGroupModifierMaskPropertyInfo = IsAccelGroup
    type AttrSetTypeConstraint AccelGroupModifierMaskPropertyInfo = (~) ()
    type AttrTransferTypeConstraint AccelGroupModifierMaskPropertyInfo = (~) ()
    type AttrTransferType AccelGroupModifierMaskPropertyInfo = ()
    type AttrGetType AccelGroupModifierMaskPropertyInfo = [Gdk.Flags.ModifierType]
    type AttrLabel AccelGroupModifierMaskPropertyInfo = "modifier-mask"
    type AttrOrigin AccelGroupModifierMaskPropertyInfo = AccelGroup
    attrGet = getAccelGroupModifierMask
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList AccelGroup
type instance O.AttributeList AccelGroup = AccelGroupAttributeList
type AccelGroupAttributeList = ('[ '("isLocked", AccelGroupIsLockedPropertyInfo), '("modifierMask", AccelGroupModifierMaskPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
accelGroupIsLocked :: AttrLabelProxy "isLocked"
accelGroupIsLocked = AttrLabelProxy

accelGroupModifierMask :: AttrLabelProxy "modifierMask"
accelGroupModifierMask = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList AccelGroup = AccelGroupSignalList
type AccelGroupSignalList = ('[ '("accelActivate", AccelGroupAccelActivateSignalInfo), '("accelChanged", AccelGroupAccelChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method AccelGroup::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "AccelGroup" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_accel_group_new" gtk_accel_group_new :: 
    IO (Ptr AccelGroup)

-- | Creates a new t'GI.Gtk.Objects.AccelGroup.AccelGroup'.
accelGroupNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m AccelGroup
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.AccelGroup.AccelGroup' object
accelGroupNew  = liftIO $ do
    result <- gtk_accel_group_new
    checkUnexpectedReturnNULL "accelGroupNew" result
    result' <- (wrapObject AccelGroup) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method AccelGroup::activate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_quark"
--           , argType = TBasicType TUInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the quark for the accelerator name"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "acceleratable"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Object" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GObject, usually a #GtkWindow, on which\n   to activate the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_key"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "accelerator keyval from a key event"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_mods"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "ModifierType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "keyboard state mask from a key event"
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

foreign import ccall "gtk_accel_group_activate" gtk_accel_group_activate :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    Word32 ->                               -- accel_quark : TBasicType TUInt32
    Ptr GObject.Object.Object ->            -- acceleratable : TInterface (Name {namespace = "GObject", name = "Object"})
    Word32 ->                               -- accel_key : TBasicType TUInt
    CUInt ->                                -- accel_mods : TInterface (Name {namespace = "Gdk", name = "ModifierType"})
    IO CInt

-- | Finds the first accelerator in /@accelGroup@/ that matches
-- /@accelKey@/ and /@accelMods@/, and activates it.
accelGroupActivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a, GObject.Object.IsObject b) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> Word32
    -- ^ /@accelQuark@/: the quark for the accelerator name
    -> b
    -- ^ /@acceleratable@/: the t'GI.GObject.Objects.Object.Object', usually a t'GI.Gtk.Objects.Window.Window', on which
    --    to activate the accelerator
    -> Word32
    -- ^ /@accelKey@/: accelerator keyval from a key event
    -> [Gdk.Flags.ModifierType]
    -- ^ /@accelMods@/: keyboard state mask from a key event
    -> m Bool
    -- ^ __Returns:__ 'P.True' if an accelerator was activated and handled
    --     this keypress
accelGroupActivate accelGroup accelQuark acceleratable accelKey accelMods = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    acceleratable' <- unsafeManagedPtrCastPtr acceleratable
    let accelMods' = gflagsToWord accelMods
    result <- gtk_accel_group_activate accelGroup' accelQuark acceleratable' accelKey accelMods'
    let result' = (/= 0) result
    touchManagedPtr accelGroup
    touchManagedPtr acceleratable
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupActivateMethodInfo
instance (signature ~ (Word32 -> b -> Word32 -> [Gdk.Flags.ModifierType] -> m Bool), MonadIO m, IsAccelGroup a, GObject.Object.IsObject b) => O.MethodInfo AccelGroupActivateMethodInfo a signature where
    overloadedMethod = accelGroupActivate

#endif

-- method AccelGroup::connect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the accelerator group to install an accelerator in"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_key"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "key value of the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_mods"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "ModifierType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "modifier combination of the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_flags"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelFlags" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a flag mask to configure this accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "closure"
--           , argType =
--               TGClosure
--                 (Just
--                    (TInterface
--                       Name { namespace = "Gtk" , name = "AccelGroupActivate" }))
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "closure to be executed upon accelerator activation"
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

foreign import ccall "gtk_accel_group_connect" gtk_accel_group_connect :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    Word32 ->                               -- accel_key : TBasicType TUInt
    CUInt ->                                -- accel_mods : TInterface (Name {namespace = "Gdk", name = "ModifierType"})
    CUInt ->                                -- accel_flags : TInterface (Name {namespace = "Gtk", name = "AccelFlags"})
    Ptr (GClosure Gtk.Callbacks.C_AccelGroupActivate) -> -- closure : TGClosure (Just (TInterface (Name {namespace = "Gtk", name = "AccelGroupActivate"})))
    IO ()

-- | Installs an accelerator in this group. When /@accelGroup@/ is being
-- activated in response to a call to 'GI.Gtk.Functions.accelGroupsActivate',
-- /@closure@/ will be invoked if the /@accelKey@/ and /@accelMods@/ from
-- 'GI.Gtk.Functions.accelGroupsActivate' match those of this connection.
-- 
-- The signature used for the /@closure@/ is that of t'GI.Gtk.Callbacks.AccelGroupActivate'.
-- 
-- Note that, due to implementation details, a single closure can
-- only be connected to one accelerator group.
accelGroupConnect ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: the accelerator group to install an accelerator in
    -> Word32
    -- ^ /@accelKey@/: key value of the accelerator
    -> [Gdk.Flags.ModifierType]
    -- ^ /@accelMods@/: modifier combination of the accelerator
    -> [Gtk.Flags.AccelFlags]
    -- ^ /@accelFlags@/: a flag mask to configure this accelerator
    -> GClosure Gtk.Callbacks.C_AccelGroupActivate
    -- ^ /@closure@/: closure to be executed upon accelerator activation
    -> m ()
accelGroupConnect accelGroup accelKey accelMods accelFlags closure = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    let accelMods' = gflagsToWord accelMods
    let accelFlags' = gflagsToWord accelFlags
    closure' <- unsafeManagedPtrGetPtr closure
    gtk_accel_group_connect accelGroup' accelKey accelMods' accelFlags' closure'
    touchManagedPtr accelGroup
    touchManagedPtr closure
    return ()

#if defined(ENABLE_OVERLOADING)
data AccelGroupConnectMethodInfo
instance (signature ~ (Word32 -> [Gdk.Flags.ModifierType] -> [Gtk.Flags.AccelFlags] -> GClosure Gtk.Callbacks.C_AccelGroupActivate -> m ()), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupConnectMethodInfo a signature where
    overloadedMethod = accelGroupConnect

#endif

-- method AccelGroup::connect_by_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the accelerator group to install an accelerator in"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_path"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "path used for determining key and modifiers"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "closure"
--           , argType = TGClosure Nothing
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "closure to be executed upon accelerator activation"
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

foreign import ccall "gtk_accel_group_connect_by_path" gtk_accel_group_connect_by_path :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    CString ->                              -- accel_path : TBasicType TUTF8
    Ptr (GClosure ()) ->                    -- closure : TGClosure Nothing
    IO ()

-- | Installs an accelerator in this group, using an accelerator path
-- to look up the appropriate key and modifiers (see
-- 'GI.Gtk.Objects.AccelMap.accelMapAddEntry'). When /@accelGroup@/ is being activated
-- in response to a call to 'GI.Gtk.Functions.accelGroupsActivate', /@closure@/ will
-- be invoked if the /@accelKey@/ and /@accelMods@/ from
-- 'GI.Gtk.Functions.accelGroupsActivate' match the key and modifiers for the path.
-- 
-- The signature used for the /@closure@/ is that of t'GI.Gtk.Callbacks.AccelGroupActivate'.
-- 
-- Note that /@accelPath@/ string will be stored in a @/GQuark/@. Therefore,
-- if you pass a static string, you can save some memory by interning it
-- first with 'GI.GLib.Functions.internStaticString'.
accelGroupConnectByPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: the accelerator group to install an accelerator in
    -> T.Text
    -- ^ /@accelPath@/: path used for determining key and modifiers
    -> GClosure b
    -- ^ /@closure@/: closure to be executed upon accelerator activation
    -> m ()
accelGroupConnectByPath accelGroup accelPath closure = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    accelPath' <- textToCString accelPath
    closure' <- unsafeManagedPtrCastPtr closure
    gtk_accel_group_connect_by_path accelGroup' accelPath' closure'
    touchManagedPtr accelGroup
    touchManagedPtr closure
    freeMem accelPath'
    return ()

#if defined(ENABLE_OVERLOADING)
data AccelGroupConnectByPathMethodInfo
instance (signature ~ (T.Text -> GClosure b -> m ()), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupConnectByPathMethodInfo a signature where
    overloadedMethod = accelGroupConnectByPath

#endif

-- method AccelGroup::disconnect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the accelerator group to remove an accelerator from"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "closure"
--           , argType = TGClosure Nothing
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the closure to remove from this accelerator\n    group, or %NULL to remove all closures"
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

foreign import ccall "gtk_accel_group_disconnect" gtk_accel_group_disconnect :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    Ptr (GClosure ()) ->                    -- closure : TGClosure Nothing
    IO CInt

-- | Removes an accelerator previously installed through
-- 'GI.Gtk.Objects.AccelGroup.accelGroupConnect'.
-- 
-- Since 2.20 /@closure@/ can be 'P.Nothing'.
accelGroupDisconnect ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: the accelerator group to remove an accelerator from
    -> Maybe (GClosure b)
    -- ^ /@closure@/: the closure to remove from this accelerator
    --     group, or 'P.Nothing' to remove all closures
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the closure was found and got disconnected
accelGroupDisconnect accelGroup closure = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    maybeClosure <- case closure of
        Nothing -> return nullPtr
        Just jClosure -> do
            jClosure' <- unsafeManagedPtrCastPtr jClosure
            return jClosure'
    result <- gtk_accel_group_disconnect accelGroup' maybeClosure
    let result' = (/= 0) result
    touchManagedPtr accelGroup
    whenJust closure touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupDisconnectMethodInfo
instance (signature ~ (Maybe (GClosure b) -> m Bool), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupDisconnectMethodInfo a signature where
    overloadedMethod = accelGroupDisconnect

#endif

-- method AccelGroup::disconnect_key
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the accelerator group to install an accelerator in"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_key"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "key value of the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_mods"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "ModifierType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "modifier combination of the accelerator"
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

foreign import ccall "gtk_accel_group_disconnect_key" gtk_accel_group_disconnect_key :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    Word32 ->                               -- accel_key : TBasicType TUInt
    CUInt ->                                -- accel_mods : TInterface (Name {namespace = "Gdk", name = "ModifierType"})
    IO CInt

-- | Removes an accelerator previously installed through
-- 'GI.Gtk.Objects.AccelGroup.accelGroupConnect'.
accelGroupDisconnectKey ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: the accelerator group to install an accelerator in
    -> Word32
    -- ^ /@accelKey@/: key value of the accelerator
    -> [Gdk.Flags.ModifierType]
    -- ^ /@accelMods@/: modifier combination of the accelerator
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there was an accelerator which could be
    --     removed, 'P.False' otherwise
accelGroupDisconnectKey accelGroup accelKey accelMods = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    let accelMods' = gflagsToWord accelMods
    result <- gtk_accel_group_disconnect_key accelGroup' accelKey accelMods'
    let result' = (/= 0) result
    touchManagedPtr accelGroup
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupDisconnectKeyMethodInfo
instance (signature ~ (Word32 -> [Gdk.Flags.ModifierType] -> m Bool), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupDisconnectKeyMethodInfo a signature where
    overloadedMethod = accelGroupDisconnectKey

#endif

-- method AccelGroup::find
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "find_func"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroupFindFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a function to filter the entries\n   of @accel_group with"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeCall
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "data to pass to @find_func"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "AccelKey" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_accel_group_find" gtk_accel_group_find :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    FunPtr Gtk.Callbacks.C_AccelGroupFindFunc -> -- find_func : TInterface (Name {namespace = "Gtk", name = "AccelGroupFindFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    IO (Ptr Gtk.AccelKey.AccelKey)

-- | Finds the first entry in an accelerator group for which
-- /@findFunc@/ returns 'P.True' and returns its t'GI.Gtk.Structs.AccelKey.AccelKey'.
accelGroupFind ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> Gtk.Callbacks.AccelGroupFindFunc
    -- ^ /@findFunc@/: a function to filter the entries
    --    of /@accelGroup@/ with
    -> m Gtk.AccelKey.AccelKey
    -- ^ __Returns:__ the key of the first entry passing
    --    /@findFunc@/. The key is owned by GTK+ and must not be freed.
accelGroupFind accelGroup findFunc = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    findFunc' <- Gtk.Callbacks.mk_AccelGroupFindFunc (Gtk.Callbacks.wrap_AccelGroupFindFunc Nothing (Gtk.Callbacks.drop_closures_AccelGroupFindFunc findFunc))
    let data_ = nullPtr
    result <- gtk_accel_group_find accelGroup' findFunc' data_
    checkUnexpectedReturnNULL "accelGroupFind" result
    result' <- (newPtr Gtk.AccelKey.AccelKey) result
    safeFreeFunPtr $ castFunPtrToPtr findFunc'
    touchManagedPtr accelGroup
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupFindMethodInfo
instance (signature ~ (Gtk.Callbacks.AccelGroupFindFunc -> m Gtk.AccelKey.AccelKey), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupFindMethodInfo a signature where
    overloadedMethod = accelGroupFind

#endif

-- method AccelGroup::get_is_locked
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
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

foreign import ccall "gtk_accel_group_get_is_locked" gtk_accel_group_get_is_locked :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO CInt

-- | Locks are added and removed using 'GI.Gtk.Objects.AccelGroup.accelGroupLock' and
-- 'GI.Gtk.Objects.AccelGroup.accelGroupUnlock'.
-- 
-- /Since: 2.14/
accelGroupGetIsLocked ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if there are 1 or more locks on the /@accelGroup@/,
    --     'P.False' otherwise.
accelGroupGetIsLocked accelGroup = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    result <- gtk_accel_group_get_is_locked accelGroup'
    let result' = (/= 0) result
    touchManagedPtr accelGroup
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupGetIsLockedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupGetIsLockedMethodInfo a signature where
    overloadedMethod = accelGroupGetIsLocked

#endif

-- method AccelGroup::get_modifier_mask
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gdk" , name = "ModifierType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_accel_group_get_modifier_mask" gtk_accel_group_get_modifier_mask :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO CUInt

-- | Gets a t'GI.Gdk.Flags.ModifierType' representing the mask for this
-- /@accelGroup@/. For example, @/GDK_CONTROL_MASK/@, @/GDK_SHIFT_MASK/@, etc.
-- 
-- /Since: 2.14/
accelGroupGetModifierMask ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> m [Gdk.Flags.ModifierType]
    -- ^ __Returns:__ the modifier mask for this accel group.
accelGroupGetModifierMask accelGroup = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    result <- gtk_accel_group_get_modifier_mask accelGroup'
    let result' = wordToGFlags result
    touchManagedPtr accelGroup
    return result'

#if defined(ENABLE_OVERLOADING)
data AccelGroupGetModifierMaskMethodInfo
instance (signature ~ (m [Gdk.Flags.ModifierType]), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupGetModifierMaskMethodInfo a signature where
    overloadedMethod = accelGroupGetModifierMask

#endif

-- method AccelGroup::lock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
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

foreign import ccall "gtk_accel_group_lock" gtk_accel_group_lock :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO ()

-- | Locks the given accelerator group.
-- 
-- Locking an acelerator group prevents the accelerators contained
-- within it to be changed during runtime. Refer to
-- 'GI.Gtk.Objects.AccelMap.accelMapChangeEntry' about runtime accelerator changes.
-- 
-- If called more than once, /@accelGroup@/ remains locked until
-- 'GI.Gtk.Objects.AccelGroup.accelGroupUnlock' has been called an equivalent number
-- of times.
accelGroupLock ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> m ()
accelGroupLock accelGroup = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    gtk_accel_group_lock accelGroup'
    touchManagedPtr accelGroup
    return ()

#if defined(ENABLE_OVERLOADING)
data AccelGroupLockMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupLockMethodInfo a signature where
    overloadedMethod = accelGroupLock

#endif

-- method AccelGroup::query
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the accelerator group to query"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_key"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "key value of the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_mods"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "ModifierType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "modifier combination of the accelerator"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_entries"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to return the number\n    of entries found, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_entries"
--              , argType = TBasicType TUInt
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText =
--                        Just
--                          "location to return the number\n    of entries found, or %NULL"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just
--               (TCArray
--                  False
--                  (-1)
--                  3
--                  (TInterface Name { namespace = "Gtk" , name = "AccelGroupEntry" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_accel_group_query" gtk_accel_group_query :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    Word32 ->                               -- accel_key : TBasicType TUInt
    CUInt ->                                -- accel_mods : TInterface (Name {namespace = "Gdk", name = "ModifierType"})
    Ptr Word32 ->                           -- n_entries : TBasicType TUInt
    IO (Ptr Gtk.AccelGroupEntry.AccelGroupEntry)

-- | Queries an accelerator group for all entries matching /@accelKey@/
-- and /@accelMods@/.
accelGroupQuery ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: the accelerator group to query
    -> Word32
    -- ^ /@accelKey@/: key value of the accelerator
    -> [Gdk.Flags.ModifierType]
    -- ^ /@accelMods@/: modifier combination of the accelerator
    -> m (Maybe [Gtk.AccelGroupEntry.AccelGroupEntry])
    -- ^ __Returns:__ an array of
    --     /@nEntries@/ t'GI.Gtk.Structs.AccelGroupEntry.AccelGroupEntry' elements, or 'P.Nothing'. The array
    --     is owned by GTK+ and must not be freed.
accelGroupQuery accelGroup accelKey accelMods = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    let accelMods' = gflagsToWord accelMods
    nEntries <- allocMem :: IO (Ptr Word32)
    result <- gtk_accel_group_query accelGroup' accelKey accelMods' nEntries
    nEntries' <- peek nEntries
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (unpackBlockArrayWithLength 32 nEntries') result'
        result''' <- mapM (newPtr Gtk.AccelGroupEntry.AccelGroupEntry) result''
        return result'''
    touchManagedPtr accelGroup
    freeMem nEntries
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data AccelGroupQueryMethodInfo
instance (signature ~ (Word32 -> [Gdk.Flags.ModifierType] -> m (Maybe [Gtk.AccelGroupEntry.AccelGroupEntry])), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupQueryMethodInfo a signature where
    overloadedMethod = accelGroupQuery

#endif

-- method AccelGroup::unlock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAccelGroup" , sinceVersion = Nothing }
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

foreign import ccall "gtk_accel_group_unlock" gtk_accel_group_unlock :: 
    Ptr AccelGroup ->                       -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO ()

-- | Undoes the last call to 'GI.Gtk.Objects.AccelGroup.accelGroupLock' on this /@accelGroup@/.
accelGroupUnlock ::
    (B.CallStack.HasCallStack, MonadIO m, IsAccelGroup a) =>
    a
    -- ^ /@accelGroup@/: a t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> m ()
accelGroupUnlock accelGroup = liftIO $ do
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    gtk_accel_group_unlock accelGroup'
    touchManagedPtr accelGroup
    return ()

#if defined(ENABLE_OVERLOADING)
data AccelGroupUnlockMethodInfo
instance (signature ~ (m ()), MonadIO m, IsAccelGroup a) => O.MethodInfo AccelGroupUnlockMethodInfo a signature where
    overloadedMethod = accelGroupUnlock

#endif

-- method AccelGroup::from_accel_closure
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "closure"
--           , argType = TGClosure Nothing
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GClosure" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "AccelGroup" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_accel_group_from_accel_closure" gtk_accel_group_from_accel_closure :: 
    Ptr (GClosure ()) ->                    -- closure : TGClosure Nothing
    IO (Ptr AccelGroup)

-- | Finds the t'GI.Gtk.Objects.AccelGroup.AccelGroup' to which /@closure@/ is connected;
-- see 'GI.Gtk.Objects.AccelGroup.accelGroupConnect'.
accelGroupFromAccelClosure ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GClosure a
    -- ^ /@closure@/: a t'GI.GObject.Structs.Closure.Closure'
    -> m (Maybe AccelGroup)
    -- ^ __Returns:__ the t'GI.Gtk.Objects.AccelGroup.AccelGroup' to which /@closure@/
    --     is connected, or 'P.Nothing'
accelGroupFromAccelClosure closure = liftIO $ do
    closure' <- unsafeManagedPtrCastPtr closure
    result <- gtk_accel_group_from_accel_closure closure'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject AccelGroup) result'
        return result''
    touchManagedPtr closure
    return maybeResult

#if defined(ENABLE_OVERLOADING)
#endif

