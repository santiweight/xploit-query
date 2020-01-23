{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.RecentManager.RecentManager' provides a facility for adding, removing and
-- looking up recently used files. Each recently used file is
-- identified by its URI, and has meta-data associated to it, like
-- the names and command lines of the applications that have
-- registered it, the number of time each application has registered
-- the same file, the mime type of the file and whether the file
-- should be displayed only by the applications that have
-- registered it.
-- 
-- The recently used files list is per user.
-- 
-- The t'GI.Gtk.Objects.RecentManager.RecentManager' acts like a database of all the recently
-- used files. You can create new t'GI.Gtk.Objects.RecentManager.RecentManager' objects, but
-- it is more efficient to use the default manager created by GTK+.
-- 
-- Adding a new recently used file is as simple as:
-- 
-- 
-- === /C code/
-- >
-- >GtkRecentManager *manager;
-- >
-- >manager = gtk_recent_manager_get_default ();
-- >gtk_recent_manager_add_item (manager, file_uri);
-- 
-- 
-- The t'GI.Gtk.Objects.RecentManager.RecentManager' will try to gather all the needed information
-- from the file itself through GIO.
-- 
-- Looking up the meta-data associated with a recently used file
-- given its URI requires calling 'GI.Gtk.Objects.RecentManager.recentManagerLookupItem':
-- 
-- 
-- === /C code/
-- >
-- >GtkRecentManager *manager;
-- >GtkRecentInfo *info;
-- >GError *error = NULL;
-- >
-- >manager = gtk_recent_manager_get_default ();
-- >info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
-- >if (error)
-- >  {
-- >    g_warning ("Could not find the file: %s", error->message);
-- >    g_error_free (error);
-- >  }
-- >else
-- > {
-- >   // Use the info object
-- >   gtk_recent_info_unref (info);
-- > }
-- 
-- 
-- In order to retrieve the list of recently used files, you can use
-- 'GI.Gtk.Objects.RecentManager.recentManagerGetItems', which returns a list of t'GI.Gtk.Structs.RecentInfo.RecentInfo'-structs.
-- 
-- A t'GI.Gtk.Objects.RecentManager.RecentManager' is the model used to populate the contents of
-- one, or more t'GI.Gtk.Interfaces.RecentChooser.RecentChooser' implementations.
-- 
-- Note that the maximum age of the recently used files list is
-- controllable through the t'GI.Gtk.Objects.Settings.Settings':@/gtk-recent-files-max-age/@
-- property.
-- 
-- Recently used files are supported since GTK+ 2.10.
-- 
-- /Since: 2.10/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RecentManager
    ( 

-- * Exported types
    RecentManager(..)                       ,
    IsRecentManager                         ,
    toRecentManager                         ,
    noRecentManager                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecentManagerMethod              ,
#endif


-- ** addFull #method:addFull#

#if defined(ENABLE_OVERLOADING)
    RecentManagerAddFullMethodInfo          ,
#endif
    recentManagerAddFull                    ,


-- ** addItem #method:addItem#

#if defined(ENABLE_OVERLOADING)
    RecentManagerAddItemMethodInfo          ,
#endif
    recentManagerAddItem                    ,


-- ** getDefault #method:getDefault#

    recentManagerGetDefault                 ,


-- ** getItems #method:getItems#

#if defined(ENABLE_OVERLOADING)
    RecentManagerGetItemsMethodInfo         ,
#endif
    recentManagerGetItems                   ,


-- ** hasItem #method:hasItem#

#if defined(ENABLE_OVERLOADING)
    RecentManagerHasItemMethodInfo          ,
#endif
    recentManagerHasItem                    ,


-- ** lookupItem #method:lookupItem#

#if defined(ENABLE_OVERLOADING)
    RecentManagerLookupItemMethodInfo       ,
#endif
    recentManagerLookupItem                 ,


-- ** moveItem #method:moveItem#

#if defined(ENABLE_OVERLOADING)
    RecentManagerMoveItemMethodInfo         ,
#endif
    recentManagerMoveItem                   ,


-- ** new #method:new#

    recentManagerNew                        ,


-- ** purgeItems #method:purgeItems#

#if defined(ENABLE_OVERLOADING)
    RecentManagerPurgeItemsMethodInfo       ,
#endif
    recentManagerPurgeItems                 ,


-- ** removeItem #method:removeItem#

#if defined(ENABLE_OVERLOADING)
    RecentManagerRemoveItemMethodInfo       ,
#endif
    recentManagerRemoveItem                 ,




 -- * Properties
-- ** filename #attr:filename#
-- | The full path to the file to be used to store and read the
-- recently used resources list
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    RecentManagerFilenamePropertyInfo       ,
#endif
    constructRecentManagerFilename          ,
    getRecentManagerFilename                ,
#if defined(ENABLE_OVERLOADING)
    recentManagerFilename                   ,
#endif


-- ** size #attr:size#
-- | The size of the recently used resources list.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    RecentManagerSizePropertyInfo           ,
#endif
    getRecentManagerSize                    ,
#if defined(ENABLE_OVERLOADING)
    recentManagerSize                       ,
#endif




 -- * Signals
-- ** changed #signal:changed#

    C_RecentManagerChangedCallback          ,
    RecentManagerChangedCallback            ,
#if defined(ENABLE_OVERLOADING)
    RecentManagerChangedSignalInfo          ,
#endif
    afterRecentManagerChanged               ,
    genClosure_RecentManagerChanged         ,
    mk_RecentManagerChangedCallback         ,
    noRecentManagerChangedCallback          ,
    onRecentManagerChanged                  ,
    wrap_RecentManagerChangedCallback       ,




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
import {-# SOURCE #-} qualified GI.Gtk.Structs.RecentData as Gtk.RecentData
import {-# SOURCE #-} qualified GI.Gtk.Structs.RecentInfo as Gtk.RecentInfo

-- | Memory-managed wrapper type.
newtype RecentManager = RecentManager (ManagedPtr RecentManager)
    deriving (Eq)
foreign import ccall "gtk_recent_manager_get_type"
    c_gtk_recent_manager_get_type :: IO GType

instance GObject RecentManager where
    gobjectType = c_gtk_recent_manager_get_type
    

-- | Convert 'RecentManager' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecentManager where
    toGValue o = do
        gtype <- c_gtk_recent_manager_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecentManager)
        B.ManagedPtr.newObject RecentManager ptr
        
    

-- | Type class for types which can be safely cast to `RecentManager`, for instance with `toRecentManager`.
class (GObject o, O.IsDescendantOf RecentManager o) => IsRecentManager o
instance (GObject o, O.IsDescendantOf RecentManager o) => IsRecentManager o

instance O.HasParentTypes RecentManager
type instance O.ParentTypes RecentManager = '[GObject.Object.Object]

-- | Cast to `RecentManager`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecentManager :: (MonadIO m, IsRecentManager o) => o -> m RecentManager
toRecentManager = liftIO . unsafeCastTo RecentManager

-- | A convenience alias for `Nothing` :: `Maybe` `RecentManager`.
noRecentManager :: Maybe RecentManager
noRecentManager = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecentManagerMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecentManagerMethod "addFull" o = RecentManagerAddFullMethodInfo
    ResolveRecentManagerMethod "addItem" o = RecentManagerAddItemMethodInfo
    ResolveRecentManagerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecentManagerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecentManagerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecentManagerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecentManagerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecentManagerMethod "hasItem" o = RecentManagerHasItemMethodInfo
    ResolveRecentManagerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecentManagerMethod "lookupItem" o = RecentManagerLookupItemMethodInfo
    ResolveRecentManagerMethod "moveItem" o = RecentManagerMoveItemMethodInfo
    ResolveRecentManagerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecentManagerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecentManagerMethod "purgeItems" o = RecentManagerPurgeItemsMethodInfo
    ResolveRecentManagerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecentManagerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecentManagerMethod "removeItem" o = RecentManagerRemoveItemMethodInfo
    ResolveRecentManagerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecentManagerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecentManagerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecentManagerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecentManagerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecentManagerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecentManagerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecentManagerMethod "getItems" o = RecentManagerGetItemsMethodInfo
    ResolveRecentManagerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecentManagerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecentManagerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecentManagerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecentManagerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecentManagerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecentManagerMethod t RecentManager, O.MethodInfo info RecentManager p) => OL.IsLabel t (RecentManager -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal RecentManager::changed
-- | Emitted when the current recently used resources manager changes
-- its contents, either by calling 'GI.Gtk.Objects.RecentManager.recentManagerAddItem' or
-- by another application.
-- 
-- /Since: 2.10/
type RecentManagerChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RecentManagerChangedCallback`@.
noRecentManagerChangedCallback :: Maybe RecentManagerChangedCallback
noRecentManagerChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RecentManagerChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RecentManagerChangedCallback`.
foreign import ccall "wrapper"
    mk_RecentManagerChangedCallback :: C_RecentManagerChangedCallback -> IO (FunPtr C_RecentManagerChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RecentManagerChanged :: MonadIO m => RecentManagerChangedCallback -> m (GClosure C_RecentManagerChangedCallback)
genClosure_RecentManagerChanged cb = liftIO $ do
    let cb' = wrap_RecentManagerChangedCallback cb
    mk_RecentManagerChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RecentManagerChangedCallback` into a `C_RecentManagerChangedCallback`.
wrap_RecentManagerChangedCallback ::
    RecentManagerChangedCallback ->
    C_RecentManagerChangedCallback
wrap_RecentManagerChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' recentManager #changed callback
-- @
-- 
-- 
onRecentManagerChanged :: (IsRecentManager a, MonadIO m) => a -> RecentManagerChangedCallback -> m SignalHandlerId
onRecentManagerChanged obj cb = liftIO $ do
    let cb' = wrap_RecentManagerChangedCallback cb
    cb'' <- mk_RecentManagerChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' recentManager #changed callback
-- @
-- 
-- 
afterRecentManagerChanged :: (IsRecentManager a, MonadIO m) => a -> RecentManagerChangedCallback -> m SignalHandlerId
afterRecentManagerChanged obj cb = liftIO $ do
    let cb' = wrap_RecentManagerChangedCallback cb
    cb'' <- mk_RecentManagerChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RecentManagerChangedSignalInfo
instance SignalInfo RecentManagerChangedSignalInfo where
    type HaskellCallbackType RecentManagerChangedSignalInfo = RecentManagerChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RecentManagerChangedCallback cb
        cb'' <- mk_RecentManagerChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- VVV Prop "filename"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@filename@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' recentManager #filename
-- @
getRecentManagerFilename :: (MonadIO m, IsRecentManager o) => o -> m (Maybe T.Text)
getRecentManagerFilename obj = liftIO $ B.Properties.getObjectPropertyString obj "filename"

-- | Construct a `GValueConstruct` with valid value for the “@filename@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRecentManagerFilename :: (IsRecentManager o) => T.Text -> IO (GValueConstruct o)
constructRecentManagerFilename val = B.Properties.constructObjectPropertyString "filename" (Just val)

#if defined(ENABLE_OVERLOADING)
data RecentManagerFilenamePropertyInfo
instance AttrInfo RecentManagerFilenamePropertyInfo where
    type AttrAllowedOps RecentManagerFilenamePropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint RecentManagerFilenamePropertyInfo = IsRecentManager
    type AttrSetTypeConstraint RecentManagerFilenamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint RecentManagerFilenamePropertyInfo = (~) T.Text
    type AttrTransferType RecentManagerFilenamePropertyInfo = T.Text
    type AttrGetType RecentManagerFilenamePropertyInfo = (Maybe T.Text)
    type AttrLabel RecentManagerFilenamePropertyInfo = "filename"
    type AttrOrigin RecentManagerFilenamePropertyInfo = RecentManager
    attrGet = getRecentManagerFilename
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructRecentManagerFilename
    attrClear = undefined
#endif

-- VVV Prop "size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' recentManager #size
-- @
getRecentManagerSize :: (MonadIO m, IsRecentManager o) => o -> m Int32
getRecentManagerSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "size"

#if defined(ENABLE_OVERLOADING)
data RecentManagerSizePropertyInfo
instance AttrInfo RecentManagerSizePropertyInfo where
    type AttrAllowedOps RecentManagerSizePropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint RecentManagerSizePropertyInfo = IsRecentManager
    type AttrSetTypeConstraint RecentManagerSizePropertyInfo = (~) ()
    type AttrTransferTypeConstraint RecentManagerSizePropertyInfo = (~) ()
    type AttrTransferType RecentManagerSizePropertyInfo = ()
    type AttrGetType RecentManagerSizePropertyInfo = Int32
    type AttrLabel RecentManagerSizePropertyInfo = "size"
    type AttrOrigin RecentManagerSizePropertyInfo = RecentManager
    attrGet = getRecentManagerSize
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecentManager
type instance O.AttributeList RecentManager = RecentManagerAttributeList
type RecentManagerAttributeList = ('[ '("filename", RecentManagerFilenamePropertyInfo), '("size", RecentManagerSizePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
recentManagerFilename :: AttrLabelProxy "filename"
recentManagerFilename = AttrLabelProxy

recentManagerSize :: AttrLabelProxy "size"
recentManagerSize = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecentManager = RecentManagerSignalList
type RecentManagerSignalList = ('[ '("changed", RecentManagerChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecentManager::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "RecentManager" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_recent_manager_new" gtk_recent_manager_new :: 
    IO (Ptr RecentManager)

-- | Creates a new recent manager object. Recent manager objects are used to
-- handle the list of recently used resources. A t'GI.Gtk.Objects.RecentManager.RecentManager' object
-- monitors the recently used resources list, and emits the “changed” signal
-- each time something inside the list changes.
-- 
-- t'GI.Gtk.Objects.RecentManager.RecentManager' objects are expensive: be sure to create them only when
-- needed. You should use 'GI.Gtk.Objects.RecentManager.recentManagerGetDefault' instead.
-- 
-- /Since: 2.10/
recentManagerNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m RecentManager
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.RecentManager.RecentManager' object
recentManagerNew  = liftIO $ do
    result <- gtk_recent_manager_new
    checkUnexpectedReturnNULL "recentManagerNew" result
    result' <- (wrapObject RecentManager) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RecentManager::add_full
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "recent_data"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentData" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "metadata of the resource"
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

foreign import ccall "gtk_recent_manager_add_full" gtk_recent_manager_add_full :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    Ptr Gtk.RecentData.RecentData ->        -- recent_data : TInterface (Name {namespace = "Gtk", name = "RecentData"})
    IO CInt

-- | Adds a new resource, pointed by /@uri@/, into the recently used
-- resources list, using the metadata specified inside the
-- t'GI.Gtk.Structs.RecentData.RecentData'-struct passed in /@recentData@/.
-- 
-- The passed URI will be used to identify this resource inside the
-- list.
-- 
-- In order to register the new recently used resource, metadata about
-- the resource must be passed as well as the URI; the metadata is
-- stored in a t'GI.Gtk.Structs.RecentData.RecentData'-struct, which must contain the MIME
-- type of the resource pointed by the URI; the name of the application
-- that is registering the item, and a command line to be used when
-- launching the item.
-- 
-- Optionally, a t'GI.Gtk.Structs.RecentData.RecentData'-struct might contain a UTF-8 string
-- to be used when viewing the item instead of the last component of
-- the URI; a short description of the item; whether the item should
-- be considered private - that is, should be displayed only by the
-- applications that have registered it.
-- 
-- /Since: 2.10/
recentManagerAddFull ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: a valid URI
    -> Gtk.RecentData.RecentData
    -- ^ /@recentData@/: metadata of the resource
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the new item was successfully added to the
    --     recently used resources list, 'P.False' otherwise
recentManagerAddFull manager uri recentData = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    recentData' <- unsafeManagedPtrGetPtr recentData
    result <- gtk_recent_manager_add_full manager' uri' recentData'
    let result' = (/= 0) result
    touchManagedPtr manager
    touchManagedPtr recentData
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data RecentManagerAddFullMethodInfo
instance (signature ~ (T.Text -> Gtk.RecentData.RecentData -> m Bool), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerAddFullMethodInfo a signature where
    overloadedMethod = recentManagerAddFull

#endif

-- method RecentManager::add_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid URI" , sinceVersion = Nothing }
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

foreign import ccall "gtk_recent_manager_add_item" gtk_recent_manager_add_item :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    IO CInt

-- | Adds a new resource, pointed by /@uri@/, into the recently used
-- resources list.
-- 
-- This function automatically retrieves some of the needed
-- metadata and setting other metadata to common default values;
-- it then feeds the data to 'GI.Gtk.Objects.RecentManager.recentManagerAddFull'.
-- 
-- See 'GI.Gtk.Objects.RecentManager.recentManagerAddFull' if you want to explicitly
-- define the metadata for the resource pointed by /@uri@/.
-- 
-- /Since: 2.10/
recentManagerAddItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: a valid URI
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the new item was successfully added
    --   to the recently used resources list
recentManagerAddItem manager uri = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    result <- gtk_recent_manager_add_item manager' uri'
    let result' = (/= 0) result
    touchManagedPtr manager
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data RecentManagerAddItemMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerAddItemMethodInfo a signature where
    overloadedMethod = recentManagerAddItem

#endif

-- method RecentManager::get_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
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
--               (TGList
--                  (TInterface Name { namespace = "Gtk" , name = "RecentInfo" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_recent_manager_get_items" gtk_recent_manager_get_items :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    IO (Ptr (GList (Ptr Gtk.RecentInfo.RecentInfo)))

-- | Gets the list of recently used resources.
-- 
-- /Since: 2.10/
recentManagerGetItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> m [Gtk.RecentInfo.RecentInfo]
    -- ^ __Returns:__ a list of
    --   newly allocated t'GI.Gtk.Structs.RecentInfo.RecentInfo' objects. Use
    --   'GI.Gtk.Structs.RecentInfo.recentInfoUnref' on each item inside the list, and then
    --   free the list itself using @/g_list_free()/@.
recentManagerGetItems manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    result <- gtk_recent_manager_get_items manager'
    result' <- unpackGList result
    result'' <- mapM (wrapBoxed Gtk.RecentInfo.RecentInfo) result'
    g_list_free result
    touchManagedPtr manager
    return result''

#if defined(ENABLE_OVERLOADING)
data RecentManagerGetItemsMethodInfo
instance (signature ~ (m [Gtk.RecentInfo.RecentInfo]), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerGetItemsMethodInfo a signature where
    overloadedMethod = recentManagerGetItems

#endif

-- method RecentManager::has_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI" , sinceVersion = Nothing }
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

foreign import ccall "gtk_recent_manager_has_item" gtk_recent_manager_has_item :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    IO CInt

-- | Checks whether there is a recently used resource registered
-- with /@uri@/ inside the recent manager.
-- 
-- /Since: 2.10/
recentManagerHasItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: a URI
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the resource was found, 'P.False' otherwise
recentManagerHasItem manager uri = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    result <- gtk_recent_manager_has_item manager' uri'
    let result' = (/= 0) result
    touchManagedPtr manager
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
data RecentManagerHasItemMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerHasItemMethodInfo a signature where
    overloadedMethod = recentManagerHasItem

#endif

-- method RecentManager::lookup_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RecentInfo" })
-- throws : True
-- Skip return : False

foreign import ccall "gtk_recent_manager_lookup_item" gtk_recent_manager_lookup_item :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Gtk.RecentInfo.RecentInfo)

-- | Searches for a URI inside the recently used resources list, and
-- returns a t'GI.Gtk.Structs.RecentInfo.RecentInfo'-struct containing informations about the resource
-- like its MIME type, or its display name.
-- 
-- /Since: 2.10/
recentManagerLookupItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: a URI
    -> m (Maybe Gtk.RecentInfo.RecentInfo)
    -- ^ __Returns:__ a t'GI.Gtk.Structs.RecentInfo.RecentInfo'-struct containing information
    --   about the resource pointed by /@uri@/, or 'P.Nothing' if the URI was
    --   not registered in the recently used resources list. Free with
    --   'GI.Gtk.Structs.RecentInfo.recentInfoUnref'. /(Can throw 'Data.GI.Base.GError.GError')/
recentManagerLookupItem manager uri = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    onException (do
        result <- propagateGError $ gtk_recent_manager_lookup_item manager' uri'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapBoxed Gtk.RecentInfo.RecentInfo) result'
            return result''
        touchManagedPtr manager
        freeMem uri'
        return maybeResult
     ) (do
        freeMem uri'
     )

#if defined(ENABLE_OVERLOADING)
data RecentManagerLookupItemMethodInfo
instance (signature ~ (T.Text -> m (Maybe Gtk.RecentInfo.RecentInfo)), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerLookupItemMethodInfo a signature where
    overloadedMethod = recentManagerLookupItem

#endif

-- method RecentManager::move_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI of a recently used resource"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the new URI of the recently used resource, or\n   %NULL to remove the item pointed by @uri in the list"
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
-- throws : True
-- Skip return : False

foreign import ccall "gtk_recent_manager_move_item" gtk_recent_manager_move_item :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    CString ->                              -- new_uri : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Changes the location of a recently used resource from /@uri@/ to /@newUri@/.
-- 
-- Please note that this function will not affect the resource pointed
-- by the URIs, but only the URI used in the recently used resources list.
-- 
-- /Since: 2.10/
recentManagerMoveItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: the URI of a recently used resource
    -> Maybe (T.Text)
    -- ^ /@newUri@/: the new URI of the recently used resource, or
    --    'P.Nothing' to remove the item pointed by /@uri@/ in the list
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
recentManagerMoveItem manager uri newUri = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    maybeNewUri <- case newUri of
        Nothing -> return nullPtr
        Just jNewUri -> do
            jNewUri' <- textToCString jNewUri
            return jNewUri'
    onException (do
        _ <- propagateGError $ gtk_recent_manager_move_item manager' uri' maybeNewUri
        touchManagedPtr manager
        freeMem uri'
        freeMem maybeNewUri
        return ()
     ) (do
        freeMem uri'
        freeMem maybeNewUri
     )

#if defined(ENABLE_OVERLOADING)
data RecentManagerMoveItemMethodInfo
instance (signature ~ (T.Text -> Maybe (T.Text) -> m ()), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerMoveItemMethodInfo a signature where
    overloadedMethod = recentManagerMoveItem

#endif

-- method RecentManager::purge_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
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
-- returnType: Just (TBasicType TInt)
-- throws : True
-- Skip return : False

foreign import ccall "gtk_recent_manager_purge_items" gtk_recent_manager_purge_items :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    Ptr (Ptr GError) ->                     -- error
    IO Int32

-- | Purges every item from the recently used resources list.
-- 
-- /Since: 2.10/
recentManagerPurgeItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> m Int32
    -- ^ __Returns:__ the number of items that have been removed from the
    --   recently used resources list /(Can throw 'Data.GI.Base.GError.GError')/
recentManagerPurgeItems manager = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    onException (do
        result <- propagateGError $ gtk_recent_manager_purge_items manager'
        touchManagedPtr manager
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecentManagerPurgeItemsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerPurgeItemsMethodInfo a signature where
    overloadedMethod = recentManagerPurgeItems

#endif

-- method RecentManager::remove_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "manager"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RecentManager" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRecentManager"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the URI of the item you wish to remove"
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
-- throws : True
-- Skip return : False

foreign import ccall "gtk_recent_manager_remove_item" gtk_recent_manager_remove_item :: 
    Ptr RecentManager ->                    -- manager : TInterface (Name {namespace = "Gtk", name = "RecentManager"})
    CString ->                              -- uri : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Removes a resource pointed by /@uri@/ from the recently used resources
-- list handled by a recent manager.
-- 
-- /Since: 2.10/
recentManagerRemoveItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecentManager a) =>
    a
    -- ^ /@manager@/: a t'GI.Gtk.Objects.RecentManager.RecentManager'
    -> T.Text
    -- ^ /@uri@/: the URI of the item you wish to remove
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
recentManagerRemoveItem manager uri = liftIO $ do
    manager' <- unsafeManagedPtrCastPtr manager
    uri' <- textToCString uri
    onException (do
        _ <- propagateGError $ gtk_recent_manager_remove_item manager' uri'
        touchManagedPtr manager
        freeMem uri'
        return ()
     ) (do
        freeMem uri'
     )

#if defined(ENABLE_OVERLOADING)
data RecentManagerRemoveItemMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsRecentManager a) => O.MethodInfo RecentManagerRemoveItemMethodInfo a signature where
    overloadedMethod = recentManagerRemoveItem

#endif

-- method RecentManager::get_default
-- method type : MemberFunction
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "RecentManager" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_recent_manager_get_default" gtk_recent_manager_get_default :: 
    IO (Ptr RecentManager)

-- | Gets a unique instance of t'GI.Gtk.Objects.RecentManager.RecentManager', that you can share
-- in your application without caring about memory management.
-- 
-- /Since: 2.10/
recentManagerGetDefault ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m RecentManager
    -- ^ __Returns:__ A unique t'GI.Gtk.Objects.RecentManager.RecentManager'. Do not ref or
    --   unref it.
recentManagerGetDefault  = liftIO $ do
    result <- gtk_recent_manager_get_default
    checkUnexpectedReturnNULL "recentManagerGetDefault" result
    result' <- (newObject RecentManager) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

