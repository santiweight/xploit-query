{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Interfaces.TreeSortable.TreeSortable' is an interface to be implemented by tree models which
-- support sorting. The t'GI.Gtk.Objects.TreeView.TreeView' uses the methods provided by this interface
-- to sort the model.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Interfaces.TreeSortable
    ( 

-- * Exported types
    TreeSortable(..)                        ,
    noTreeSortable                          ,
    IsTreeSortable                          ,
    toTreeSortable                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTreeSortableMethod               ,
#endif


-- ** getSortColumnId #method:getSortColumnId#

#if defined(ENABLE_OVERLOADING)
    TreeSortableGetSortColumnIdMethodInfo   ,
#endif
    treeSortableGetSortColumnId             ,


-- ** hasDefaultSortFunc #method:hasDefaultSortFunc#

#if defined(ENABLE_OVERLOADING)
    TreeSortableHasDefaultSortFuncMethodInfo,
#endif
    treeSortableHasDefaultSortFunc          ,


-- ** setDefaultSortFunc #method:setDefaultSortFunc#

#if defined(ENABLE_OVERLOADING)
    TreeSortableSetDefaultSortFuncMethodInfo,
#endif
    treeSortableSetDefaultSortFunc          ,


-- ** setSortColumnId #method:setSortColumnId#

#if defined(ENABLE_OVERLOADING)
    TreeSortableSetSortColumnIdMethodInfo   ,
#endif
    treeSortableSetSortColumnId             ,


-- ** setSortFunc #method:setSortFunc#

#if defined(ENABLE_OVERLOADING)
    TreeSortableSetSortFuncMethodInfo       ,
#endif
    treeSortableSetSortFunc                 ,


-- ** sortColumnChanged #method:sortColumnChanged#

#if defined(ENABLE_OVERLOADING)
    TreeSortableSortColumnChangedMethodInfo ,
#endif
    treeSortableSortColumnChanged           ,




 -- * Signals
-- ** sortColumnChanged #signal:sortColumnChanged#

    C_TreeSortableSortColumnChangedCallback ,
    TreeSortableSortColumnChangedCallback   ,
#if defined(ENABLE_OVERLOADING)
    TreeSortableSortColumnChangedSignalInfo ,
#endif
    afterTreeSortableSortColumnChanged      ,
    genClosure_TreeSortableSortColumnChanged,
    mk_TreeSortableSortColumnChangedCallback,
    noTreeSortableSortColumnChangedCallback ,
    onTreeSortableSortColumnChanged         ,
    wrap_TreeSortableSortColumnChangedCallback,




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

import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel

-- interface TreeSortable 
-- | Memory-managed wrapper type.
newtype TreeSortable = TreeSortable (ManagedPtr TreeSortable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `TreeSortable`.
noTreeSortable :: Maybe TreeSortable
noTreeSortable = Nothing

-- signal TreeSortable::sort-column-changed
-- | The [sortColumnChanged](#signal:sortColumnChanged) signal is emitted when the sort column
-- or sort order of /@sortable@/ is changed. The signal is emitted before
-- the contents of /@sortable@/ are resorted.
type TreeSortableSortColumnChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `TreeSortableSortColumnChangedCallback`@.
noTreeSortableSortColumnChangedCallback :: Maybe TreeSortableSortColumnChangedCallback
noTreeSortableSortColumnChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_TreeSortableSortColumnChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_TreeSortableSortColumnChangedCallback`.
foreign import ccall "wrapper"
    mk_TreeSortableSortColumnChangedCallback :: C_TreeSortableSortColumnChangedCallback -> IO (FunPtr C_TreeSortableSortColumnChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_TreeSortableSortColumnChanged :: MonadIO m => TreeSortableSortColumnChangedCallback -> m (GClosure C_TreeSortableSortColumnChangedCallback)
genClosure_TreeSortableSortColumnChanged cb = liftIO $ do
    let cb' = wrap_TreeSortableSortColumnChangedCallback cb
    mk_TreeSortableSortColumnChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `TreeSortableSortColumnChangedCallback` into a `C_TreeSortableSortColumnChangedCallback`.
wrap_TreeSortableSortColumnChangedCallback ::
    TreeSortableSortColumnChangedCallback ->
    C_TreeSortableSortColumnChangedCallback
wrap_TreeSortableSortColumnChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [sortColumnChanged](#signal:sortColumnChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' treeSortable #sortColumnChanged callback
-- @
-- 
-- 
onTreeSortableSortColumnChanged :: (IsTreeSortable a, MonadIO m) => a -> TreeSortableSortColumnChangedCallback -> m SignalHandlerId
onTreeSortableSortColumnChanged obj cb = liftIO $ do
    let cb' = wrap_TreeSortableSortColumnChangedCallback cb
    cb'' <- mk_TreeSortableSortColumnChangedCallback cb'
    connectSignalFunPtr obj "sort-column-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [sortColumnChanged](#signal:sortColumnChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' treeSortable #sortColumnChanged callback
-- @
-- 
-- 
afterTreeSortableSortColumnChanged :: (IsTreeSortable a, MonadIO m) => a -> TreeSortableSortColumnChangedCallback -> m SignalHandlerId
afterTreeSortableSortColumnChanged obj cb = liftIO $ do
    let cb' = wrap_TreeSortableSortColumnChangedCallback cb
    cb'' <- mk_TreeSortableSortColumnChangedCallback cb'
    connectSignalFunPtr obj "sort-column-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data TreeSortableSortColumnChangedSignalInfo
instance SignalInfo TreeSortableSortColumnChangedSignalInfo where
    type HaskellCallbackType TreeSortableSortColumnChangedSignalInfo = TreeSortableSortColumnChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_TreeSortableSortColumnChangedCallback cb
        cb'' <- mk_TreeSortableSortColumnChangedCallback cb'
        connectSignalFunPtr obj "sort-column-changed" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TreeSortable = TreeSortableSignalList
type TreeSortableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("rowChanged", Gtk.TreeModel.TreeModelRowChangedSignalInfo), '("rowDeleted", Gtk.TreeModel.TreeModelRowDeletedSignalInfo), '("rowHasChildToggled", Gtk.TreeModel.TreeModelRowHasChildToggledSignalInfo), '("rowInserted", Gtk.TreeModel.TreeModelRowInsertedSignalInfo), '("sortColumnChanged", TreeSortableSortColumnChangedSignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "gtk_tree_sortable_get_type"
    c_gtk_tree_sortable_get_type :: IO GType

instance GObject TreeSortable where
    gobjectType = c_gtk_tree_sortable_get_type
    

-- | Convert 'TreeSortable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TreeSortable where
    toGValue o = do
        gtype <- c_gtk_tree_sortable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TreeSortable)
        B.ManagedPtr.newObject TreeSortable ptr
        
    

-- | Type class for types which can be safely cast to `TreeSortable`, for instance with `toTreeSortable`.
class (GObject o, O.IsDescendantOf TreeSortable o) => IsTreeSortable o
instance (GObject o, O.IsDescendantOf TreeSortable o) => IsTreeSortable o

instance O.HasParentTypes TreeSortable
type instance O.ParentTypes TreeSortable = '[Gtk.TreeModel.TreeModel, GObject.Object.Object]

-- | Cast to `TreeSortable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTreeSortable :: (MonadIO m, IsTreeSortable o) => o -> m TreeSortable
toTreeSortable = liftIO . unsafeCastTo TreeSortable

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TreeSortable
type instance O.AttributeList TreeSortable = TreeSortableAttributeList
type TreeSortableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveTreeSortableMethod (t :: Symbol) (o :: *) :: * where
    ResolveTreeSortableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTreeSortableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTreeSortableMethod "filterNew" o = Gtk.TreeModel.TreeModelFilterNewMethodInfo
    ResolveTreeSortableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTreeSortableMethod "foreach" o = Gtk.TreeModel.TreeModelForeachMethodInfo
    ResolveTreeSortableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTreeSortableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTreeSortableMethod "hasDefaultSortFunc" o = TreeSortableHasDefaultSortFuncMethodInfo
    ResolveTreeSortableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTreeSortableMethod "iterChildren" o = Gtk.TreeModel.TreeModelIterChildrenMethodInfo
    ResolveTreeSortableMethod "iterHasChild" o = Gtk.TreeModel.TreeModelIterHasChildMethodInfo
    ResolveTreeSortableMethod "iterNChildren" o = Gtk.TreeModel.TreeModelIterNChildrenMethodInfo
    ResolveTreeSortableMethod "iterNext" o = Gtk.TreeModel.TreeModelIterNextMethodInfo
    ResolveTreeSortableMethod "iterNthChild" o = Gtk.TreeModel.TreeModelIterNthChildMethodInfo
    ResolveTreeSortableMethod "iterParent" o = Gtk.TreeModel.TreeModelIterParentMethodInfo
    ResolveTreeSortableMethod "iterPrevious" o = Gtk.TreeModel.TreeModelIterPreviousMethodInfo
    ResolveTreeSortableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTreeSortableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTreeSortableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTreeSortableMethod "refNode" o = Gtk.TreeModel.TreeModelRefNodeMethodInfo
    ResolveTreeSortableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTreeSortableMethod "rowChanged" o = Gtk.TreeModel.TreeModelRowChangedMethodInfo
    ResolveTreeSortableMethod "rowDeleted" o = Gtk.TreeModel.TreeModelRowDeletedMethodInfo
    ResolveTreeSortableMethod "rowHasChildToggled" o = Gtk.TreeModel.TreeModelRowHasChildToggledMethodInfo
    ResolveTreeSortableMethod "rowInserted" o = Gtk.TreeModel.TreeModelRowInsertedMethodInfo
    ResolveTreeSortableMethod "rowsReordered" o = Gtk.TreeModel.TreeModelRowsReorderedMethodInfo
    ResolveTreeSortableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTreeSortableMethod "sortColumnChanged" o = TreeSortableSortColumnChangedMethodInfo
    ResolveTreeSortableMethod "sortNewWithModel" o = Gtk.TreeModel.TreeModelSortNewWithModelMethodInfo
    ResolveTreeSortableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTreeSortableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTreeSortableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTreeSortableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTreeSortableMethod "unrefNode" o = Gtk.TreeModel.TreeModelUnrefNodeMethodInfo
    ResolveTreeSortableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTreeSortableMethod "getColumnType" o = Gtk.TreeModel.TreeModelGetColumnTypeMethodInfo
    ResolveTreeSortableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTreeSortableMethod "getFlags" o = Gtk.TreeModel.TreeModelGetFlagsMethodInfo
    ResolveTreeSortableMethod "getIter" o = Gtk.TreeModel.TreeModelGetIterMethodInfo
    ResolveTreeSortableMethod "getIterFirst" o = Gtk.TreeModel.TreeModelGetIterFirstMethodInfo
    ResolveTreeSortableMethod "getIterFromString" o = Gtk.TreeModel.TreeModelGetIterFromStringMethodInfo
    ResolveTreeSortableMethod "getNColumns" o = Gtk.TreeModel.TreeModelGetNColumnsMethodInfo
    ResolveTreeSortableMethod "getPath" o = Gtk.TreeModel.TreeModelGetPathMethodInfo
    ResolveTreeSortableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTreeSortableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTreeSortableMethod "getSortColumnId" o = TreeSortableGetSortColumnIdMethodInfo
    ResolveTreeSortableMethod "getStringFromIter" o = Gtk.TreeModel.TreeModelGetStringFromIterMethodInfo
    ResolveTreeSortableMethod "getValue" o = Gtk.TreeModel.TreeModelGetValueMethodInfo
    ResolveTreeSortableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTreeSortableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTreeSortableMethod "setDefaultSortFunc" o = TreeSortableSetDefaultSortFuncMethodInfo
    ResolveTreeSortableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTreeSortableMethod "setSortColumnId" o = TreeSortableSetSortColumnIdMethodInfo
    ResolveTreeSortableMethod "setSortFunc" o = TreeSortableSetSortFuncMethodInfo
    ResolveTreeSortableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTreeSortableMethod t TreeSortable, O.MethodInfo info TreeSortable p) => OL.IsLabel t (TreeSortable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method TreeSortable::get_sort_column_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sort_column_id"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The sort column id to be filled in"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "order"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SortType" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkSortType to be filled in"
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

foreign import ccall "gtk_tree_sortable_get_sort_column_id" gtk_tree_sortable_get_sort_column_id :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    Ptr Int32 ->                            -- sort_column_id : TBasicType TInt
    Ptr CUInt ->                            -- order : TInterface (Name {namespace = "Gtk", name = "SortType"})
    IO CInt

-- | Fills in /@sortColumnId@/ and /@order@/ with the current sort column and the
-- order. It returns 'P.True' unless the /@sortColumnId@/ is
-- 'GI.Gtk.Constants.TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID' or
-- 'GI.Gtk.Constants.TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID'.
treeSortableGetSortColumnId ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> m ((Bool, Int32, Gtk.Enums.SortType))
    -- ^ __Returns:__ 'P.True' if the sort column is not one of the special sort
    --   column ids.
treeSortableGetSortColumnId sortable = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    sortColumnId <- allocMem :: IO (Ptr Int32)
    order <- allocMem :: IO (Ptr CUInt)
    result <- gtk_tree_sortable_get_sort_column_id sortable' sortColumnId order
    let result' = (/= 0) result
    sortColumnId' <- peek sortColumnId
    order' <- peek order
    let order'' = (toEnum . fromIntegral) order'
    touchManagedPtr sortable
    freeMem sortColumnId
    freeMem order
    return (result', sortColumnId', order'')

#if defined(ENABLE_OVERLOADING)
data TreeSortableGetSortColumnIdMethodInfo
instance (signature ~ (m ((Bool, Int32, Gtk.Enums.SortType))), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableGetSortColumnIdMethodInfo a signature where
    overloadedMethod = treeSortableGetSortColumnId

#endif

-- method TreeSortable::has_default_sort_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tree_sortable_has_default_sort_func" gtk_tree_sortable_has_default_sort_func :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    IO CInt

-- | Returns 'P.True' if the model has a default sort function. This is used
-- primarily by GtkTreeViewColumns in order to determine if a model can
-- go back to the default state, or not.
treeSortableHasDefaultSortFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> m Bool
    -- ^ __Returns:__ 'P.True', if the model has a default sort function
treeSortableHasDefaultSortFunc sortable = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    result <- gtk_tree_sortable_has_default_sort_func sortable'
    let result' = (/= 0) result
    touchManagedPtr sortable
    return result'

#if defined(ENABLE_OVERLOADING)
data TreeSortableHasDefaultSortFuncMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableHasDefaultSortFuncMethodInfo a signature where
    overloadedMethod = treeSortableHasDefaultSortFunc

#endif

-- method TreeSortable::set_default_sort_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sort_func"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "TreeIterCompareFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The comparison function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 2
--           , argDestroy = 3
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "User data to pass to @sort_func, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destroy"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Destroy notifier of @user_data, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "gtk_tree_sortable_set_default_sort_func" gtk_tree_sortable_set_default_sort_func :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    FunPtr Gtk.Callbacks.C_TreeIterCompareFunc -> -- sort_func : TInterface (Name {namespace = "Gtk", name = "TreeIterCompareFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Sets the default comparison function used when sorting to be /@sortFunc@/.
-- If the current sort column id of /@sortable@/ is
-- 'GI.Gtk.Constants.TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID', then the model will sort using
-- this function.
-- 
-- If /@sortFunc@/ is 'P.Nothing', then there will be no default comparison function.
-- This means that once the model  has been sorted, it can’t go back to the
-- default state. In this case, when the current sort column id of /@sortable@/
-- is 'GI.Gtk.Constants.TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID', the model will be unsorted.
treeSortableSetDefaultSortFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> Gtk.Callbacks.TreeIterCompareFunc
    -- ^ /@sortFunc@/: The comparison function
    -> m ()
treeSortableSetDefaultSortFunc sortable sortFunc = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    sortFunc' <- Gtk.Callbacks.mk_TreeIterCompareFunc (Gtk.Callbacks.wrap_TreeIterCompareFunc Nothing (Gtk.Callbacks.drop_closures_TreeIterCompareFunc sortFunc))
    let userData = castFunPtrToPtr sortFunc'
    let destroy = safeFreeFunPtrPtr
    gtk_tree_sortable_set_default_sort_func sortable' sortFunc' userData destroy
    touchManagedPtr sortable
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeSortableSetDefaultSortFuncMethodInfo
instance (signature ~ (Gtk.Callbacks.TreeIterCompareFunc -> m ()), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableSetDefaultSortFuncMethodInfo a signature where
    overloadedMethod = treeSortableSetDefaultSortFunc

#endif

-- method TreeSortable::set_sort_column_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sort_column_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the sort column id to set"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "order"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SortType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The sort order of the column"
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

foreign import ccall "gtk_tree_sortable_set_sort_column_id" gtk_tree_sortable_set_sort_column_id :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    Int32 ->                                -- sort_column_id : TBasicType TInt
    CUInt ->                                -- order : TInterface (Name {namespace = "Gtk", name = "SortType"})
    IO ()

-- | Sets the current sort column to be /@sortColumnId@/. The /@sortable@/ will
-- resort itself to reflect this change, after emitting a
-- [sortColumnChanged]("GI.Gtk.Interfaces.TreeSortable#signal:sortColumnChanged") signal. /@sortColumnId@/ may either be
-- a regular column id, or one of the following special values:
-- 
-- * 'GI.Gtk.Constants.TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID': the default sort function
-- will be used, if it is set
-- * 'GI.Gtk.Constants.TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID': no sorting will occur
treeSortableSetSortColumnId ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> Int32
    -- ^ /@sortColumnId@/: the sort column id to set
    -> Gtk.Enums.SortType
    -- ^ /@order@/: The sort order of the column
    -> m ()
treeSortableSetSortColumnId sortable sortColumnId order = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    let order' = (fromIntegral . fromEnum) order
    gtk_tree_sortable_set_sort_column_id sortable' sortColumnId order'
    touchManagedPtr sortable
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeSortableSetSortColumnIdMethodInfo
instance (signature ~ (Int32 -> Gtk.Enums.SortType -> m ()), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableSetSortColumnIdMethodInfo a signature where
    overloadedMethod = treeSortableSetSortColumnId

#endif

-- method TreeSortable::set_sort_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sort_column_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the sort column id to set the function for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sort_func"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "TreeIterCompareFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The comparison function"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 3
--           , argDestroy = 4
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "user_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "User data to pass to @sort_func, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destroy"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Destroy notifier of @user_data, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "gtk_tree_sortable_set_sort_func" gtk_tree_sortable_set_sort_func :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    Int32 ->                                -- sort_column_id : TBasicType TInt
    FunPtr Gtk.Callbacks.C_TreeIterCompareFunc -> -- sort_func : TInterface (Name {namespace = "Gtk", name = "TreeIterCompareFunc"})
    Ptr () ->                               -- user_data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Sets the comparison function used when sorting to be /@sortFunc@/. If the
-- current sort column id of /@sortable@/ is the same as /@sortColumnId@/, then
-- the model will sort using this function.
treeSortableSetSortFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> Int32
    -- ^ /@sortColumnId@/: the sort column id to set the function for
    -> Gtk.Callbacks.TreeIterCompareFunc
    -- ^ /@sortFunc@/: The comparison function
    -> m ()
treeSortableSetSortFunc sortable sortColumnId sortFunc = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    sortFunc' <- Gtk.Callbacks.mk_TreeIterCompareFunc (Gtk.Callbacks.wrap_TreeIterCompareFunc Nothing (Gtk.Callbacks.drop_closures_TreeIterCompareFunc sortFunc))
    let userData = castFunPtrToPtr sortFunc'
    let destroy = safeFreeFunPtrPtr
    gtk_tree_sortable_set_sort_func sortable' sortColumnId sortFunc' userData destroy
    touchManagedPtr sortable
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeSortableSetSortFuncMethodInfo
instance (signature ~ (Int32 -> Gtk.Callbacks.TreeIterCompareFunc -> m ()), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableSetSortFuncMethodInfo a signature where
    overloadedMethod = treeSortableSetSortFunc

#endif

-- method TreeSortable::sort_column_changed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sortable"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeSortable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeSortable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tree_sortable_sort_column_changed" gtk_tree_sortable_sort_column_changed :: 
    Ptr TreeSortable ->                     -- sortable : TInterface (Name {namespace = "Gtk", name = "TreeSortable"})
    IO ()

-- | Emits a [sortColumnChanged]("GI.Gtk.Interfaces.TreeSortable#signal:sortColumnChanged") signal on /@sortable@/.
treeSortableSortColumnChanged ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeSortable a) =>
    a
    -- ^ /@sortable@/: A t'GI.Gtk.Interfaces.TreeSortable.TreeSortable'
    -> m ()
treeSortableSortColumnChanged sortable = liftIO $ do
    sortable' <- unsafeManagedPtrCastPtr sortable
    gtk_tree_sortable_sort_column_changed sortable'
    touchManagedPtr sortable
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeSortableSortColumnChangedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTreeSortable a) => O.MethodInfo TreeSortableSortColumnChangedMethodInfo a signature where
    overloadedMethod = treeSortableSortColumnChanged

#endif

