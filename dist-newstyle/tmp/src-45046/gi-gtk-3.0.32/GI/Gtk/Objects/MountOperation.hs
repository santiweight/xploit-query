{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- This should not be accessed directly. Use the accessor functions below.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MountOperation
    ( 

-- * Exported types
    MountOperation(..)                      ,
    IsMountOperation                        ,
    toMountOperation                        ,
    noMountOperation                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMountOperationMethod             ,
#endif


-- ** getParent #method:getParent#

#if defined(ENABLE_OVERLOADING)
    MountOperationGetParentMethodInfo       ,
#endif
    mountOperationGetParent                 ,


-- ** getScreen #method:getScreen#

#if defined(ENABLE_OVERLOADING)
    MountOperationGetScreenMethodInfo       ,
#endif
    mountOperationGetScreen                 ,


-- ** isShowing #method:isShowing#

#if defined(ENABLE_OVERLOADING)
    MountOperationIsShowingMethodInfo       ,
#endif
    mountOperationIsShowing                 ,


-- ** new #method:new#

    mountOperationNew                       ,


-- ** setParent #method:setParent#

#if defined(ENABLE_OVERLOADING)
    MountOperationSetParentMethodInfo       ,
#endif
    mountOperationSetParent                 ,


-- ** setScreen #method:setScreen#

#if defined(ENABLE_OVERLOADING)
    MountOperationSetScreenMethodInfo       ,
#endif
    mountOperationSetScreen                 ,




 -- * Properties
-- ** isShowing #attr:isShowing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    MountOperationIsShowingPropertyInfo     ,
#endif
    getMountOperationIsShowing              ,


-- ** parent #attr:parent#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    MountOperationParentPropertyInfo        ,
#endif
    clearMountOperationParent               ,
    constructMountOperationParent           ,
    getMountOperationParent                 ,
#if defined(ENABLE_OVERLOADING)
    mountOperationParent                    ,
#endif
    setMountOperationParent                 ,


-- ** screen #attr:screen#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    MountOperationScreenPropertyInfo        ,
#endif
    constructMountOperationScreen           ,
    getMountOperationScreen                 ,
#if defined(ENABLE_OVERLOADING)
    mountOperationScreen                    ,
#endif
    setMountOperationScreen                 ,




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
import qualified GI.Gdk.Objects.Screen as Gdk.Screen
import qualified GI.Gio.Objects.MountOperation as Gio.MountOperation
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype MountOperation = MountOperation (ManagedPtr MountOperation)
    deriving (Eq)
foreign import ccall "gtk_mount_operation_get_type"
    c_gtk_mount_operation_get_type :: IO GType

instance GObject MountOperation where
    gobjectType = c_gtk_mount_operation_get_type
    

-- | Convert 'MountOperation' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MountOperation where
    toGValue o = do
        gtype <- c_gtk_mount_operation_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MountOperation)
        B.ManagedPtr.newObject MountOperation ptr
        
    

-- | Type class for types which can be safely cast to `MountOperation`, for instance with `toMountOperation`.
class (GObject o, O.IsDescendantOf MountOperation o) => IsMountOperation o
instance (GObject o, O.IsDescendantOf MountOperation o) => IsMountOperation o

instance O.HasParentTypes MountOperation
type instance O.ParentTypes MountOperation = '[Gio.MountOperation.MountOperation, GObject.Object.Object]

-- | Cast to `MountOperation`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMountOperation :: (MonadIO m, IsMountOperation o) => o -> m MountOperation
toMountOperation = liftIO . unsafeCastTo MountOperation

-- | A convenience alias for `Nothing` :: `Maybe` `MountOperation`.
noMountOperation :: Maybe MountOperation
noMountOperation = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMountOperationMethod (t :: Symbol) (o :: *) :: * where
    ResolveMountOperationMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMountOperationMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMountOperationMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMountOperationMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMountOperationMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMountOperationMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMountOperationMethod "isShowing" o = MountOperationIsShowingMethodInfo
    ResolveMountOperationMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMountOperationMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMountOperationMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMountOperationMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMountOperationMethod "reply" o = Gio.MountOperation.MountOperationReplyMethodInfo
    ResolveMountOperationMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMountOperationMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMountOperationMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMountOperationMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMountOperationMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMountOperationMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMountOperationMethod "getAnonymous" o = Gio.MountOperation.MountOperationGetAnonymousMethodInfo
    ResolveMountOperationMethod "getChoice" o = Gio.MountOperation.MountOperationGetChoiceMethodInfo
    ResolveMountOperationMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMountOperationMethod "getDomain" o = Gio.MountOperation.MountOperationGetDomainMethodInfo
    ResolveMountOperationMethod "getIsTcryptHiddenVolume" o = Gio.MountOperation.MountOperationGetIsTcryptHiddenVolumeMethodInfo
    ResolveMountOperationMethod "getIsTcryptSystemVolume" o = Gio.MountOperation.MountOperationGetIsTcryptSystemVolumeMethodInfo
    ResolveMountOperationMethod "getParent" o = MountOperationGetParentMethodInfo
    ResolveMountOperationMethod "getPassword" o = Gio.MountOperation.MountOperationGetPasswordMethodInfo
    ResolveMountOperationMethod "getPasswordSave" o = Gio.MountOperation.MountOperationGetPasswordSaveMethodInfo
    ResolveMountOperationMethod "getPim" o = Gio.MountOperation.MountOperationGetPimMethodInfo
    ResolveMountOperationMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMountOperationMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMountOperationMethod "getScreen" o = MountOperationGetScreenMethodInfo
    ResolveMountOperationMethod "getUsername" o = Gio.MountOperation.MountOperationGetUsernameMethodInfo
    ResolveMountOperationMethod "setAnonymous" o = Gio.MountOperation.MountOperationSetAnonymousMethodInfo
    ResolveMountOperationMethod "setChoice" o = Gio.MountOperation.MountOperationSetChoiceMethodInfo
    ResolveMountOperationMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMountOperationMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMountOperationMethod "setDomain" o = Gio.MountOperation.MountOperationSetDomainMethodInfo
    ResolveMountOperationMethod "setIsTcryptHiddenVolume" o = Gio.MountOperation.MountOperationSetIsTcryptHiddenVolumeMethodInfo
    ResolveMountOperationMethod "setIsTcryptSystemVolume" o = Gio.MountOperation.MountOperationSetIsTcryptSystemVolumeMethodInfo
    ResolveMountOperationMethod "setParent" o = MountOperationSetParentMethodInfo
    ResolveMountOperationMethod "setPassword" o = Gio.MountOperation.MountOperationSetPasswordMethodInfo
    ResolveMountOperationMethod "setPasswordSave" o = Gio.MountOperation.MountOperationSetPasswordSaveMethodInfo
    ResolveMountOperationMethod "setPim" o = Gio.MountOperation.MountOperationSetPimMethodInfo
    ResolveMountOperationMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMountOperationMethod "setScreen" o = MountOperationSetScreenMethodInfo
    ResolveMountOperationMethod "setUsername" o = Gio.MountOperation.MountOperationSetUsernameMethodInfo
    ResolveMountOperationMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMountOperationMethod t MountOperation, O.MethodInfo info MountOperation p) => OL.IsLabel t (MountOperation -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "is-showing"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-showing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' mountOperation #isShowing
-- @
getMountOperationIsShowing :: (MonadIO m, IsMountOperation o) => o -> m Bool
getMountOperationIsShowing obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-showing"

#if defined(ENABLE_OVERLOADING)
data MountOperationIsShowingPropertyInfo
instance AttrInfo MountOperationIsShowingPropertyInfo where
    type AttrAllowedOps MountOperationIsShowingPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint MountOperationIsShowingPropertyInfo = IsMountOperation
    type AttrSetTypeConstraint MountOperationIsShowingPropertyInfo = (~) ()
    type AttrTransferTypeConstraint MountOperationIsShowingPropertyInfo = (~) ()
    type AttrTransferType MountOperationIsShowingPropertyInfo = ()
    type AttrGetType MountOperationIsShowingPropertyInfo = Bool
    type AttrLabel MountOperationIsShowingPropertyInfo = "is-showing"
    type AttrOrigin MountOperationIsShowingPropertyInfo = MountOperation
    attrGet = getMountOperationIsShowing
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "parent"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Window"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@parent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' mountOperation #parent
-- @
getMountOperationParent :: (MonadIO m, IsMountOperation o) => o -> m Gtk.Window.Window
getMountOperationParent obj = liftIO $ checkUnexpectedNothing "getMountOperationParent" $ B.Properties.getObjectPropertyObject obj "parent" Gtk.Window.Window

-- | Set the value of the “@parent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' mountOperation [ #parent 'Data.GI.Base.Attributes.:=' value ]
-- @
setMountOperationParent :: (MonadIO m, IsMountOperation o, Gtk.Window.IsWindow a) => o -> a -> m ()
setMountOperationParent obj val = liftIO $ B.Properties.setObjectPropertyObject obj "parent" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@parent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMountOperationParent :: (IsMountOperation o, Gtk.Window.IsWindow a) => a -> IO (GValueConstruct o)
constructMountOperationParent val = B.Properties.constructObjectPropertyObject "parent" (Just val)

-- | Set the value of the “@parent@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #parent
-- @
clearMountOperationParent :: (MonadIO m, IsMountOperation o) => o -> m ()
clearMountOperationParent obj = liftIO $ B.Properties.setObjectPropertyObject obj "parent" (Nothing :: Maybe Gtk.Window.Window)

#if defined(ENABLE_OVERLOADING)
data MountOperationParentPropertyInfo
instance AttrInfo MountOperationParentPropertyInfo where
    type AttrAllowedOps MountOperationParentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MountOperationParentPropertyInfo = IsMountOperation
    type AttrSetTypeConstraint MountOperationParentPropertyInfo = Gtk.Window.IsWindow
    type AttrTransferTypeConstraint MountOperationParentPropertyInfo = Gtk.Window.IsWindow
    type AttrTransferType MountOperationParentPropertyInfo = Gtk.Window.Window
    type AttrGetType MountOperationParentPropertyInfo = Gtk.Window.Window
    type AttrLabel MountOperationParentPropertyInfo = "parent"
    type AttrOrigin MountOperationParentPropertyInfo = MountOperation
    attrGet = getMountOperationParent
    attrSet = setMountOperationParent
    attrTransfer _ v = do
        unsafeCastTo Gtk.Window.Window v
    attrConstruct = constructMountOperationParent
    attrClear = clearMountOperationParent
#endif

-- VVV Prop "screen"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Screen"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' mountOperation #screen
-- @
getMountOperationScreen :: (MonadIO m, IsMountOperation o) => o -> m Gdk.Screen.Screen
getMountOperationScreen obj = liftIO $ checkUnexpectedNothing "getMountOperationScreen" $ B.Properties.getObjectPropertyObject obj "screen" Gdk.Screen.Screen

-- | Set the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' mountOperation [ #screen 'Data.GI.Base.Attributes.:=' value ]
-- @
setMountOperationScreen :: (MonadIO m, IsMountOperation o, Gdk.Screen.IsScreen a) => o -> a -> m ()
setMountOperationScreen obj val = liftIO $ B.Properties.setObjectPropertyObject obj "screen" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@screen@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMountOperationScreen :: (IsMountOperation o, Gdk.Screen.IsScreen a) => a -> IO (GValueConstruct o)
constructMountOperationScreen val = B.Properties.constructObjectPropertyObject "screen" (Just val)

#if defined(ENABLE_OVERLOADING)
data MountOperationScreenPropertyInfo
instance AttrInfo MountOperationScreenPropertyInfo where
    type AttrAllowedOps MountOperationScreenPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MountOperationScreenPropertyInfo = IsMountOperation
    type AttrSetTypeConstraint MountOperationScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferTypeConstraint MountOperationScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferType MountOperationScreenPropertyInfo = Gdk.Screen.Screen
    type AttrGetType MountOperationScreenPropertyInfo = Gdk.Screen.Screen
    type AttrLabel MountOperationScreenPropertyInfo = "screen"
    type AttrOrigin MountOperationScreenPropertyInfo = MountOperation
    attrGet = getMountOperationScreen
    attrSet = setMountOperationScreen
    attrTransfer _ v = do
        unsafeCastTo Gdk.Screen.Screen v
    attrConstruct = constructMountOperationScreen
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MountOperation
type instance O.AttributeList MountOperation = MountOperationAttributeList
type MountOperationAttributeList = ('[ '("anonymous", Gio.MountOperation.MountOperationAnonymousPropertyInfo), '("choice", Gio.MountOperation.MountOperationChoicePropertyInfo), '("domain", Gio.MountOperation.MountOperationDomainPropertyInfo), '("isShowing", MountOperationIsShowingPropertyInfo), '("isTcryptHiddenVolume", Gio.MountOperation.MountOperationIsTcryptHiddenVolumePropertyInfo), '("isTcryptSystemVolume", Gio.MountOperation.MountOperationIsTcryptSystemVolumePropertyInfo), '("parent", MountOperationParentPropertyInfo), '("password", Gio.MountOperation.MountOperationPasswordPropertyInfo), '("passwordSave", Gio.MountOperation.MountOperationPasswordSavePropertyInfo), '("pim", Gio.MountOperation.MountOperationPimPropertyInfo), '("screen", MountOperationScreenPropertyInfo), '("username", Gio.MountOperation.MountOperationUsernamePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
mountOperationParent :: AttrLabelProxy "parent"
mountOperationParent = AttrLabelProxy

mountOperationScreen :: AttrLabelProxy "screen"
mountOperationScreen = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MountOperation = MountOperationSignalList
type MountOperationSignalList = ('[ '("aborted", Gio.MountOperation.MountOperationAbortedSignalInfo), '("askPassword", Gio.MountOperation.MountOperationAskPasswordSignalInfo), '("askQuestion", Gio.MountOperation.MountOperationAskQuestionSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("reply", Gio.MountOperation.MountOperationReplySignalInfo), '("showProcesses", Gio.MountOperation.MountOperationShowProcessesSignalInfo), '("showUnmountProgress", Gio.MountOperation.MountOperationShowUnmountProgressSignalInfo)] :: [(Symbol, *)])

#endif

-- method MountOperation::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "parent"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "transient parent of the window, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "MountOperation" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_mount_operation_new" gtk_mount_operation_new :: 
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    IO (Ptr MountOperation)

-- | Creates a new t'GI.Gtk.Objects.MountOperation.MountOperation'
-- 
-- /Since: 2.14/
mountOperationNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Window.IsWindow a) =>
    Maybe (a)
    -- ^ /@parent@/: transient parent of the window, or 'P.Nothing'
    -> m MountOperation
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.MountOperation.MountOperation'
mountOperationNew parent = liftIO $ do
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrCastPtr jParent
            return jParent'
    result <- gtk_mount_operation_new maybeParent
    checkUnexpectedReturnNULL "mountOperationNew" result
    result' <- (wrapObject MountOperation) result
    whenJust parent touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MountOperation::get_parent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "op"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MountOperation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMountOperation"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_mount_operation_get_parent" gtk_mount_operation_get_parent :: 
    Ptr MountOperation ->                   -- op : TInterface (Name {namespace = "Gtk", name = "MountOperation"})
    IO (Ptr Gtk.Window.Window)

-- | Gets the transient parent used by the t'GI.Gtk.Objects.MountOperation.MountOperation'
-- 
-- /Since: 2.14/
mountOperationGetParent ::
    (B.CallStack.HasCallStack, MonadIO m, IsMountOperation a) =>
    a
    -- ^ /@op@/: a t'GI.Gtk.Objects.MountOperation.MountOperation'
    -> m Gtk.Window.Window
    -- ^ __Returns:__ the transient parent for windows shown by /@op@/
mountOperationGetParent op = liftIO $ do
    op' <- unsafeManagedPtrCastPtr op
    result <- gtk_mount_operation_get_parent op'
    checkUnexpectedReturnNULL "mountOperationGetParent" result
    result' <- (newObject Gtk.Window.Window) result
    touchManagedPtr op
    return result'

#if defined(ENABLE_OVERLOADING)
data MountOperationGetParentMethodInfo
instance (signature ~ (m Gtk.Window.Window), MonadIO m, IsMountOperation a) => O.MethodInfo MountOperationGetParentMethodInfo a signature where
    overloadedMethod = mountOperationGetParent

#endif

-- method MountOperation::get_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "op"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MountOperation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMountOperation"
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
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Screen" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_mount_operation_get_screen" gtk_mount_operation_get_screen :: 
    Ptr MountOperation ->                   -- op : TInterface (Name {namespace = "Gtk", name = "MountOperation"})
    IO (Ptr Gdk.Screen.Screen)

-- | Gets the screen on which windows of the t'GI.Gtk.Objects.MountOperation.MountOperation'
-- will be shown.
-- 
-- /Since: 2.14/
mountOperationGetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsMountOperation a) =>
    a
    -- ^ /@op@/: a t'GI.Gtk.Objects.MountOperation.MountOperation'
    -> m Gdk.Screen.Screen
    -- ^ __Returns:__ the screen on which windows of /@op@/ are shown
mountOperationGetScreen op = liftIO $ do
    op' <- unsafeManagedPtrCastPtr op
    result <- gtk_mount_operation_get_screen op'
    checkUnexpectedReturnNULL "mountOperationGetScreen" result
    result' <- (newObject Gdk.Screen.Screen) result
    touchManagedPtr op
    return result'

#if defined(ENABLE_OVERLOADING)
data MountOperationGetScreenMethodInfo
instance (signature ~ (m Gdk.Screen.Screen), MonadIO m, IsMountOperation a) => O.MethodInfo MountOperationGetScreenMethodInfo a signature where
    overloadedMethod = mountOperationGetScreen

#endif

-- method MountOperation::is_showing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "op"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MountOperation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMountOperation"
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

foreign import ccall "gtk_mount_operation_is_showing" gtk_mount_operation_is_showing :: 
    Ptr MountOperation ->                   -- op : TInterface (Name {namespace = "Gtk", name = "MountOperation"})
    IO CInt

-- | Returns whether the t'GI.Gtk.Objects.MountOperation.MountOperation' is currently displaying
-- a window.
-- 
-- /Since: 2.14/
mountOperationIsShowing ::
    (B.CallStack.HasCallStack, MonadIO m, IsMountOperation a) =>
    a
    -- ^ /@op@/: a t'GI.Gtk.Objects.MountOperation.MountOperation'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@op@/ is currently displaying a window
mountOperationIsShowing op = liftIO $ do
    op' <- unsafeManagedPtrCastPtr op
    result <- gtk_mount_operation_is_showing op'
    let result' = (/= 0) result
    touchManagedPtr op
    return result'

#if defined(ENABLE_OVERLOADING)
data MountOperationIsShowingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsMountOperation a) => O.MethodInfo MountOperationIsShowingMethodInfo a signature where
    overloadedMethod = mountOperationIsShowing

#endif

-- method MountOperation::set_parent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "op"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MountOperation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMountOperation"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "transient parent of the window, or %NULL"
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

foreign import ccall "gtk_mount_operation_set_parent" gtk_mount_operation_set_parent :: 
    Ptr MountOperation ->                   -- op : TInterface (Name {namespace = "Gtk", name = "MountOperation"})
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    IO ()

-- | Sets the transient parent for windows shown by the
-- t'GI.Gtk.Objects.MountOperation.MountOperation'.
-- 
-- /Since: 2.14/
mountOperationSetParent ::
    (B.CallStack.HasCallStack, MonadIO m, IsMountOperation a, Gtk.Window.IsWindow b) =>
    a
    -- ^ /@op@/: a t'GI.Gtk.Objects.MountOperation.MountOperation'
    -> Maybe (b)
    -- ^ /@parent@/: transient parent of the window, or 'P.Nothing'
    -> m ()
mountOperationSetParent op parent = liftIO $ do
    op' <- unsafeManagedPtrCastPtr op
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrCastPtr jParent
            return jParent'
    gtk_mount_operation_set_parent op' maybeParent
    touchManagedPtr op
    whenJust parent touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data MountOperationSetParentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsMountOperation a, Gtk.Window.IsWindow b) => O.MethodInfo MountOperationSetParentMethodInfo a signature where
    overloadedMethod = mountOperationSetParent

#endif

-- method MountOperation::set_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "op"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MountOperation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMountOperation"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "screen"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Screen" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkScreen" , sinceVersion = Nothing }
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

foreign import ccall "gtk_mount_operation_set_screen" gtk_mount_operation_set_screen :: 
    Ptr MountOperation ->                   -- op : TInterface (Name {namespace = "Gtk", name = "MountOperation"})
    Ptr Gdk.Screen.Screen ->                -- screen : TInterface (Name {namespace = "Gdk", name = "Screen"})
    IO ()

-- | Sets the screen to show windows of the t'GI.Gtk.Objects.MountOperation.MountOperation' on.
-- 
-- /Since: 2.14/
mountOperationSetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsMountOperation a, Gdk.Screen.IsScreen b) =>
    a
    -- ^ /@op@/: a t'GI.Gtk.Objects.MountOperation.MountOperation'
    -> b
    -- ^ /@screen@/: a t'GI.Gdk.Objects.Screen.Screen'
    -> m ()
mountOperationSetScreen op screen = liftIO $ do
    op' <- unsafeManagedPtrCastPtr op
    screen' <- unsafeManagedPtrCastPtr screen
    gtk_mount_operation_set_screen op' screen'
    touchManagedPtr op
    touchManagedPtr screen
    return ()

#if defined(ENABLE_OVERLOADING)
data MountOperationSetScreenMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMountOperation a, Gdk.Screen.IsScreen b) => O.MethodInfo MountOperationSetScreenMethodInfo a signature where
    overloadedMethod = mountOperationSetScreen

#endif

