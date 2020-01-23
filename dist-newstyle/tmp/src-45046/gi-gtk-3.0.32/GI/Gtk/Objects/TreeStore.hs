{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.TreeStore.TreeStore' object is a list model for use with a t'GI.Gtk.Objects.TreeView.TreeView'
-- widget.  It implements the t'GI.Gtk.Interfaces.TreeModel.TreeModel' interface, and consequentially,
-- can use all of the methods available there.  It also implements the
-- t'GI.Gtk.Interfaces.TreeSortable.TreeSortable' interface so it can be sorted by the view.  Finally,
-- it also implements the tree
-- [drag and drop][gtk3-GtkTreeView-drag-and-drop]
-- interfaces.
-- 
-- = GtkTreeStore as GtkBuildable
-- 
-- The GtkTreeStore implementation of the t'GI.Gtk.Interfaces.Buildable.Buildable' interface allows
-- to specify the model columns with a \<columns> element that may contain
-- multiple \<column> elements, each specifying one model column. The “type”
-- attribute specifies the data type for the column.
-- 
-- An example of a UI Definition fragment for a tree store:
-- >
-- ><object class="GtkTreeStore">
-- >  <columns>
-- >    <column type="gchararray"/>
-- >    <column type="gchararray"/>
-- >    <column type="gint"/>
-- >  </columns>
-- ></object>
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TreeStore
    ( 

-- * Exported types
    TreeStore(..)                           ,
    IsTreeStore                             ,
    toTreeStore                             ,
    noTreeStore                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTreeStoreMethod                  ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    TreeStoreAppendMethodInfo               ,
#endif
    treeStoreAppend                         ,


-- ** clear #method:clear#

#if defined(ENABLE_OVERLOADING)
    TreeStoreClearMethodInfo                ,
#endif
    treeStoreClear                          ,


-- ** insert #method:insert#

#if defined(ENABLE_OVERLOADING)
    TreeStoreInsertMethodInfo               ,
#endif
    treeStoreInsert                         ,


-- ** insertAfter #method:insertAfter#

#if defined(ENABLE_OVERLOADING)
    TreeStoreInsertAfterMethodInfo          ,
#endif
    treeStoreInsertAfter                    ,


-- ** insertBefore #method:insertBefore#

#if defined(ENABLE_OVERLOADING)
    TreeStoreInsertBeforeMethodInfo         ,
#endif
    treeStoreInsertBefore                   ,


-- ** insertWithValues #method:insertWithValues#

#if defined(ENABLE_OVERLOADING)
    TreeStoreInsertWithValuesMethodInfo     ,
#endif
    treeStoreInsertWithValues               ,


-- ** isAncestor #method:isAncestor#

#if defined(ENABLE_OVERLOADING)
    TreeStoreIsAncestorMethodInfo           ,
#endif
    treeStoreIsAncestor                     ,


-- ** iterDepth #method:iterDepth#

#if defined(ENABLE_OVERLOADING)
    TreeStoreIterDepthMethodInfo            ,
#endif
    treeStoreIterDepth                      ,


-- ** iterIsValid #method:iterIsValid#

#if defined(ENABLE_OVERLOADING)
    TreeStoreIterIsValidMethodInfo          ,
#endif
    treeStoreIterIsValid                    ,


-- ** moveAfter #method:moveAfter#

#if defined(ENABLE_OVERLOADING)
    TreeStoreMoveAfterMethodInfo            ,
#endif
    treeStoreMoveAfter                      ,


-- ** moveBefore #method:moveBefore#

#if defined(ENABLE_OVERLOADING)
    TreeStoreMoveBeforeMethodInfo           ,
#endif
    treeStoreMoveBefore                     ,


-- ** new #method:new#

    treeStoreNew                            ,


-- ** prepend #method:prepend#

#if defined(ENABLE_OVERLOADING)
    TreeStorePrependMethodInfo              ,
#endif
    treeStorePrepend                        ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    TreeStoreRemoveMethodInfo               ,
#endif
    treeStoreRemove                         ,


-- ** set #method:set#

#if defined(ENABLE_OVERLOADING)
    TreeStoreSetMethodInfo                  ,
#endif
    treeStoreSet                            ,


-- ** setColumnTypes #method:setColumnTypes#

#if defined(ENABLE_OVERLOADING)
    TreeStoreSetColumnTypesMethodInfo       ,
#endif
    treeStoreSetColumnTypes                 ,


-- ** setValue #method:setValue#

#if defined(ENABLE_OVERLOADING)
    TreeStoreSetValueMethodInfo             ,
#endif
    treeStoreSetValue                       ,


-- ** swap #method:swap#

#if defined(ENABLE_OVERLOADING)
    TreeStoreSwapMethodInfo                 ,
#endif
    treeStoreSwap                           ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeDragDest as Gtk.TreeDragDest
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeDragSource as Gtk.TreeDragSource
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeSortable as Gtk.TreeSortable
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreeIter as Gtk.TreeIter

-- | Memory-managed wrapper type.
newtype TreeStore = TreeStore (ManagedPtr TreeStore)
    deriving (Eq)
foreign import ccall "gtk_tree_store_get_type"
    c_gtk_tree_store_get_type :: IO GType

instance GObject TreeStore where
    gobjectType = c_gtk_tree_store_get_type
    

-- | Convert 'TreeStore' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TreeStore where
    toGValue o = do
        gtype <- c_gtk_tree_store_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TreeStore)
        B.ManagedPtr.newObject TreeStore ptr
        
    

-- | Type class for types which can be safely cast to `TreeStore`, for instance with `toTreeStore`.
class (GObject o, O.IsDescendantOf TreeStore o) => IsTreeStore o
instance (GObject o, O.IsDescendantOf TreeStore o) => IsTreeStore o

instance O.HasParentTypes TreeStore
type instance O.ParentTypes TreeStore = '[GObject.Object.Object, Gtk.Buildable.Buildable, Gtk.TreeDragDest.TreeDragDest, Gtk.TreeDragSource.TreeDragSource, Gtk.TreeModel.TreeModel, Gtk.TreeSortable.TreeSortable]

-- | Cast to `TreeStore`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTreeStore :: (MonadIO m, IsTreeStore o) => o -> m TreeStore
toTreeStore = liftIO . unsafeCastTo TreeStore

-- | A convenience alias for `Nothing` :: `Maybe` `TreeStore`.
noTreeStore :: Maybe TreeStore
noTreeStore = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTreeStoreMethod (t :: Symbol) (o :: *) :: * where
    ResolveTreeStoreMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveTreeStoreMethod "append" o = TreeStoreAppendMethodInfo
    ResolveTreeStoreMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTreeStoreMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTreeStoreMethod "clear" o = TreeStoreClearMethodInfo
    ResolveTreeStoreMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveTreeStoreMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveTreeStoreMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveTreeStoreMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveTreeStoreMethod "dragDataDelete" o = Gtk.TreeDragSource.TreeDragSourceDragDataDeleteMethodInfo
    ResolveTreeStoreMethod "dragDataGet" o = Gtk.TreeDragSource.TreeDragSourceDragDataGetMethodInfo
    ResolveTreeStoreMethod "dragDataReceived" o = Gtk.TreeDragDest.TreeDragDestDragDataReceivedMethodInfo
    ResolveTreeStoreMethod "filterNew" o = Gtk.TreeModel.TreeModelFilterNewMethodInfo
    ResolveTreeStoreMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTreeStoreMethod "foreach" o = Gtk.TreeModel.TreeModelForeachMethodInfo
    ResolveTreeStoreMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTreeStoreMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTreeStoreMethod "hasDefaultSortFunc" o = Gtk.TreeSortable.TreeSortableHasDefaultSortFuncMethodInfo
    ResolveTreeStoreMethod "insert" o = TreeStoreInsertMethodInfo
    ResolveTreeStoreMethod "insertAfter" o = TreeStoreInsertAfterMethodInfo
    ResolveTreeStoreMethod "insertBefore" o = TreeStoreInsertBeforeMethodInfo
    ResolveTreeStoreMethod "insertWithValues" o = TreeStoreInsertWithValuesMethodInfo
    ResolveTreeStoreMethod "isAncestor" o = TreeStoreIsAncestorMethodInfo
    ResolveTreeStoreMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTreeStoreMethod "iterChildren" o = Gtk.TreeModel.TreeModelIterChildrenMethodInfo
    ResolveTreeStoreMethod "iterDepth" o = TreeStoreIterDepthMethodInfo
    ResolveTreeStoreMethod "iterHasChild" o = Gtk.TreeModel.TreeModelIterHasChildMethodInfo
    ResolveTreeStoreMethod "iterIsValid" o = TreeStoreIterIsValidMethodInfo
    ResolveTreeStoreMethod "iterNChildren" o = Gtk.TreeModel.TreeModelIterNChildrenMethodInfo
    ResolveTreeStoreMethod "iterNext" o = Gtk.TreeModel.TreeModelIterNextMethodInfo
    ResolveTreeStoreMethod "iterNthChild" o = Gtk.TreeModel.TreeModelIterNthChildMethodInfo
    ResolveTreeStoreMethod "iterParent" o = Gtk.TreeModel.TreeModelIterParentMethodInfo
    ResolveTreeStoreMethod "iterPrevious" o = Gtk.TreeModel.TreeModelIterPreviousMethodInfo
    ResolveTreeStoreMethod "moveAfter" o = TreeStoreMoveAfterMethodInfo
    ResolveTreeStoreMethod "moveBefore" o = TreeStoreMoveBeforeMethodInfo
    ResolveTreeStoreMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTreeStoreMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTreeStoreMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveTreeStoreMethod "prepend" o = TreeStorePrependMethodInfo
    ResolveTreeStoreMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTreeStoreMethod "refNode" o = Gtk.TreeModel.TreeModelRefNodeMethodInfo
    ResolveTreeStoreMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTreeStoreMethod "remove" o = TreeStoreRemoveMethodInfo
    ResolveTreeStoreMethod "rowChanged" o = Gtk.TreeModel.TreeModelRowChangedMethodInfo
    ResolveTreeStoreMethod "rowDeleted" o = Gtk.TreeModel.TreeModelRowDeletedMethodInfo
    ResolveTreeStoreMethod "rowDraggable" o = Gtk.TreeDragSource.TreeDragSourceRowDraggableMethodInfo
    ResolveTreeStoreMethod "rowDropPossible" o = Gtk.TreeDragDest.TreeDragDestRowDropPossibleMethodInfo
    ResolveTreeStoreMethod "rowHasChildToggled" o = Gtk.TreeModel.TreeModelRowHasChildToggledMethodInfo
    ResolveTreeStoreMethod "rowInserted" o = Gtk.TreeModel.TreeModelRowInsertedMethodInfo
    ResolveTreeStoreMethod "rowsReordered" o = Gtk.TreeModel.TreeModelRowsReorderedMethodInfo
    ResolveTreeStoreMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTreeStoreMethod "set" o = TreeStoreSetMethodInfo
    ResolveTreeStoreMethod "sortColumnChanged" o = Gtk.TreeSortable.TreeSortableSortColumnChangedMethodInfo
    ResolveTreeStoreMethod "sortNewWithModel" o = Gtk.TreeModel.TreeModelSortNewWithModelMethodInfo
    ResolveTreeStoreMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTreeStoreMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTreeStoreMethod "swap" o = TreeStoreSwapMethodInfo
    ResolveTreeStoreMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTreeStoreMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTreeStoreMethod "unrefNode" o = Gtk.TreeModel.TreeModelUnrefNodeMethodInfo
    ResolveTreeStoreMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTreeStoreMethod "getColumnType" o = Gtk.TreeModel.TreeModelGetColumnTypeMethodInfo
    ResolveTreeStoreMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTreeStoreMethod "getFlags" o = Gtk.TreeModel.TreeModelGetFlagsMethodInfo
    ResolveTreeStoreMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveTreeStoreMethod "getIter" o = Gtk.TreeModel.TreeModelGetIterMethodInfo
    ResolveTreeStoreMethod "getIterFirst" o = Gtk.TreeModel.TreeModelGetIterFirstMethodInfo
    ResolveTreeStoreMethod "getIterFromString" o = Gtk.TreeModel.TreeModelGetIterFromStringMethodInfo
    ResolveTreeStoreMethod "getNColumns" o = Gtk.TreeModel.TreeModelGetNColumnsMethodInfo
    ResolveTreeStoreMethod "getName" o = Gtk.Buildable.BuildableGetNameMethodInfo
    ResolveTreeStoreMethod "getPath" o = Gtk.TreeModel.TreeModelGetPathMethodInfo
    ResolveTreeStoreMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTreeStoreMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTreeStoreMethod "getSortColumnId" o = Gtk.TreeSortable.TreeSortableGetSortColumnIdMethodInfo
    ResolveTreeStoreMethod "getStringFromIter" o = Gtk.TreeModel.TreeModelGetStringFromIterMethodInfo
    ResolveTreeStoreMethod "getValue" o = Gtk.TreeModel.TreeModelGetValueMethodInfo
    ResolveTreeStoreMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveTreeStoreMethod "setColumnTypes" o = TreeStoreSetColumnTypesMethodInfo
    ResolveTreeStoreMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTreeStoreMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTreeStoreMethod "setDefaultSortFunc" o = Gtk.TreeSortable.TreeSortableSetDefaultSortFuncMethodInfo
    ResolveTreeStoreMethod "setName" o = Gtk.Buildable.BuildableSetNameMethodInfo
    ResolveTreeStoreMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTreeStoreMethod "setSortColumnId" o = Gtk.TreeSortable.TreeSortableSetSortColumnIdMethodInfo
    ResolveTreeStoreMethod "setSortFunc" o = Gtk.TreeSortable.TreeSortableSetSortFuncMethodInfo
    ResolveTreeStoreMethod "setValue" o = TreeStoreSetValueMethodInfo
    ResolveTreeStoreMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTreeStoreMethod t TreeStore, O.MethodInfo info TreeStore p) => OL.IsLabel t (TreeStore -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TreeStore
type instance O.AttributeList TreeStore = TreeStoreAttributeList
type TreeStoreAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TreeStore = TreeStoreSignalList
type TreeStoreSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo), '("rowChanged", Gtk.TreeModel.TreeModelRowChangedSignalInfo), '("rowDeleted", Gtk.TreeModel.TreeModelRowDeletedSignalInfo), '("rowHasChildToggled", Gtk.TreeModel.TreeModelRowHasChildToggledSignalInfo), '("rowInserted", Gtk.TreeModel.TreeModelRowInsertedSignalInfo), '("sortColumnChanged", Gtk.TreeSortable.TreeSortableSortColumnChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method TreeStore::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "n_columns"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "number of columns in the tree store"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "types"
--           , argType = TCArray False (-1) 0 (TBasicType TGType)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an array of #GType types for the columns, from first to last"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_columns"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "number of columns in the tree store"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TreeStore" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tree_store_newv" gtk_tree_store_newv :: 
    Int32 ->                                -- n_columns : TBasicType TInt
    Ptr CGType ->                           -- types : TCArray False (-1) 0 (TBasicType TGType)
    IO (Ptr TreeStore)

-- | Non vararg creation function.  Used primarily by language bindings.
treeStoreNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    [GType]
    -- ^ /@types@/: an array of t'GType' types for the columns, from first to last
    -> m TreeStore
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.TreeStore.TreeStore'
treeStoreNew types = liftIO $ do
    let nColumns = fromIntegral $ length types
    types' <- (packMapStorableArray gtypeToCGType) types
    result <- gtk_tree_store_newv nColumns types'
    checkUnexpectedReturnNULL "treeStoreNew" result
    result' <- (wrapObject TreeStore) result
    freeMem types'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TreeStore::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "An unset #GtkTreeIter to set to the appended row"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
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

foreign import ccall "gtk_tree_store_append" gtk_tree_store_append :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Appends a new row to /@treeStore@/.  If /@parent@/ is non-'P.Nothing', then it will append the
-- new row after the last child of /@parent@/, otherwise it will append a row to
-- the top level.  /@iter@/ will be changed to point to this new row.  The row will
-- be empty after this function is called.  To fill in values, you need to call
-- @/gtk_tree_store_set()/@ or 'GI.Gtk.Objects.TreeStore.treeStoreSetValue'.
treeStoreAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> m (Gtk.TreeIter.TreeIter)
treeStoreAppend treeStore parent = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    gtk_tree_store_append treeStore' iter maybeParent
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStoreAppendMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreAppendMethodInfo a signature where
    overloadedMethod = treeStoreAppend

#endif

-- method TreeStore::clear
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreeStore" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tree_store_clear" gtk_tree_store_clear :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    IO ()

-- | Removes all rows from /@treeStore@/
treeStoreClear ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: a t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> m ()
treeStoreClear treeStore = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    gtk_tree_store_clear treeStore'
    touchManagedPtr treeStore
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreClearMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreClearMethodInfo a signature where
    overloadedMethod = treeStoreClear

#endif

-- method TreeStore::insert
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An unset #GtkTreeIter to set to the new row"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "position to insert the new row, or -1 for last"
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

foreign import ccall "gtk_tree_store_insert" gtk_tree_store_insert :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Creates a new row at /@position@/.  If parent is non-'P.Nothing', then the row will be
-- made a child of /@parent@/.  Otherwise, the row will be created at the toplevel.
-- If /@position@/ is -1 or is larger than the number of rows at that level, then
-- the new row will be inserted to the end of the list.  /@iter@/ will be changed
-- to point to this new row.  The row will be empty after this function is
-- called.  To fill in values, you need to call @/gtk_tree_store_set()/@ or
-- 'GI.Gtk.Objects.TreeStore.treeStoreSetValue'.
treeStoreInsert ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> Int32
    -- ^ /@position@/: position to insert the new row, or -1 for last
    -> m (Gtk.TreeIter.TreeIter)
treeStoreInsert treeStore parent position = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    gtk_tree_store_insert treeStore' iter maybeParent position
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStoreInsertMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> Int32 -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreInsertMethodInfo a signature where
    overloadedMethod = treeStoreInsert

#endif

-- method TreeStore::insert_after
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An unset #GtkTreeIter to set to the new row"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sibling"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
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

foreign import ccall "gtk_tree_store_insert_after" gtk_tree_store_insert_after :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- sibling : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Inserts a new row after /@sibling@/.  If /@sibling@/ is 'P.Nothing', then the row will be
-- prepended to /@parent@/ ’s children.  If /@parent@/ and /@sibling@/ are 'P.Nothing', then
-- the row will be prepended to the toplevel.  If both /@sibling@/ and /@parent@/ are
-- set, then /@parent@/ must be the parent of /@sibling@/.  When /@sibling@/ is set,
-- /@parent@/ is optional.
-- 
-- /@iter@/ will be changed to point to this new row.  The row will be empty after
-- this function is called.  To fill in values, you need to call
-- @/gtk_tree_store_set()/@ or 'GI.Gtk.Objects.TreeStore.treeStoreSetValue'.
treeStoreInsertAfter ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@sibling@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> m (Gtk.TreeIter.TreeIter)
treeStoreInsertAfter treeStore parent sibling = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    maybeSibling <- case sibling of
        Nothing -> return nullPtr
        Just jSibling -> do
            jSibling' <- unsafeManagedPtrGetPtr jSibling
            return jSibling'
    gtk_tree_store_insert_after treeStore' iter maybeParent maybeSibling
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    whenJust sibling touchManagedPtr
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStoreInsertAfterMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> Maybe (Gtk.TreeIter.TreeIter) -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreInsertAfterMethodInfo a signature where
    overloadedMethod = treeStoreInsertAfter

#endif

-- method TreeStore::insert_before
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An unset #GtkTreeIter to set to the new row"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sibling"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
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

foreign import ccall "gtk_tree_store_insert_before" gtk_tree_store_insert_before :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- sibling : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Inserts a new row before /@sibling@/.  If /@sibling@/ is 'P.Nothing', then the row will
-- be appended to /@parent@/ ’s children.  If /@parent@/ and /@sibling@/ are 'P.Nothing', then
-- the row will be appended to the toplevel.  If both /@sibling@/ and /@parent@/ are
-- set, then /@parent@/ must be the parent of /@sibling@/.  When /@sibling@/ is set,
-- /@parent@/ is optional.
-- 
-- /@iter@/ will be changed to point to this new row.  The row will be empty after
-- this function is called.  To fill in values, you need to call
-- @/gtk_tree_store_set()/@ or 'GI.Gtk.Objects.TreeStore.treeStoreSetValue'.
treeStoreInsertBefore ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@sibling@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> m (Gtk.TreeIter.TreeIter)
treeStoreInsertBefore treeStore parent sibling = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    maybeSibling <- case sibling of
        Nothing -> return nullPtr
        Just jSibling -> do
            jSibling' <- unsafeManagedPtrGetPtr jSibling
            return jSibling'
    gtk_tree_store_insert_before treeStore' iter maybeParent maybeSibling
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    whenJust sibling touchManagedPtr
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStoreInsertBeforeMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> Maybe (Gtk.TreeIter.TreeIter) -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreInsertBeforeMethodInfo a signature where
    overloadedMethod = treeStoreInsertBefore

#endif

-- method TreeStore::insert_with_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "An unset #GtkTreeIter to set the new row, or %NULL."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "position to insert the new row, or -1 for last"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TCArray False (-1) 6 (TBasicType TInt)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an array of column numbers"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 6
--                 (TInterface Name { namespace = "GObject" , name = "Value" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an array of GValues"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_values"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the @columns and @values arrays"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_values"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the length of the @columns and @values arrays"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          , Arg
--              { argCName = "n_values"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the length of the @columns and @values arrays"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tree_store_insert_with_valuesv" gtk_tree_store_insert_with_valuesv :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Int32 ->                                -- position : TBasicType TInt
    Ptr Int32 ->                            -- columns : TCArray False (-1) 6 (TBasicType TInt)
    Ptr GValue ->                           -- values : TCArray False (-1) 6 (TInterface (Name {namespace = "GObject", name = "Value"}))
    Int32 ->                                -- n_values : TBasicType TInt
    IO ()

-- | A variant of @/gtk_tree_store_insert_with_values()/@ which takes
-- the columns and values as two arrays, instead of varargs.  This
-- function is mainly intended for language bindings.
-- 
-- /Since: 2.10/
treeStoreInsertWithValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> Int32
    -- ^ /@position@/: position to insert the new row, or -1 for last
    -> [Int32]
    -- ^ /@columns@/: an array of column numbers
    -> [GValue]
    -- ^ /@values@/: an array of GValues
    -> m (Gtk.TreeIter.TreeIter)
treeStoreInsertWithValues treeStore parent position columns values = liftIO $ do
    let nValues = fromIntegral $ length values
    let columns_expected_length_ = fromIntegral $ length columns
    when (columns_expected_length_ /= nValues) $
        error "Gtk.treeStoreInsertWithValues : length of 'columns' does not agree with that of 'values'."
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    columns' <- packStorableArray columns
    values' <- mapM unsafeManagedPtrGetPtr values
    values'' <- packBlockArray 24 values'
    gtk_tree_store_insert_with_valuesv treeStore' iter maybeParent position columns' values'' nValues
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    mapM_ touchManagedPtr values
    freeMem columns'
    freeMem values''
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStoreInsertWithValuesMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> Int32 -> [Int32] -> [GValue] -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreInsertWithValuesMethodInfo a signature where
    overloadedMethod = treeStoreInsertWithValues

#endif

-- method TreeStore::is_ancestor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "descendant"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter"
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

foreign import ccall "gtk_tree_store_is_ancestor" gtk_tree_store_is_ancestor :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- descendant : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO CInt

-- | Returns 'P.True' if /@iter@/ is an ancestor of /@descendant@/.  That is, /@iter@/ is the
-- parent (or grandparent or great-grandparent) of /@descendant@/.
treeStoreIsAncestor ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@descendant@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True', if /@iter@/ is an ancestor of /@descendant@/
treeStoreIsAncestor treeStore iter descendant = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    descendant' <- unsafeManagedPtrGetPtr descendant
    result <- gtk_tree_store_is_ancestor treeStore' iter' descendant'
    let result' = (/= 0) result
    touchManagedPtr treeStore
    touchManagedPtr iter
    touchManagedPtr descendant
    return result'

#if defined(ENABLE_OVERLOADING)
data TreeStoreIsAncestorMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> Gtk.TreeIter.TreeIter -> m Bool), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreIsAncestorMethodInfo a signature where
    overloadedMethod = treeStoreIsAncestor

#endif

-- method TreeStore::iter_depth
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter"
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
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tree_store_iter_depth" gtk_tree_store_iter_depth :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO Int32

-- | Returns the depth of /@iter@/.  This will be 0 for anything on the root level, 1
-- for anything down a level, etc.
treeStoreIterDepth ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter'
    -> m Int32
    -- ^ __Returns:__ The depth of /@iter@/
treeStoreIterDepth treeStore iter = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_tree_store_iter_depth treeStore' iter'
    touchManagedPtr treeStore
    touchManagedPtr iter
    return result

#if defined(ENABLE_OVERLOADING)
data TreeStoreIterDepthMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> m Int32), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreIterDepthMethodInfo a signature where
    overloadedMethod = treeStoreIterDepth

#endif

-- method TreeStore::iter_is_valid
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter." , sinceVersion = Nothing }
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

foreign import ccall "gtk_tree_store_iter_is_valid" gtk_tree_store_iter_is_valid :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO CInt

-- | WARNING: This function is slow. Only use it for debugging and\/or testing
-- purposes.
-- 
-- Checks if the given iter is a valid iter for this t'GI.Gtk.Objects.TreeStore.TreeStore'.
-- 
-- /Since: 2.2/
treeStoreIterIsValid ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'.
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the iter is valid, 'P.False' if the iter is invalid.
treeStoreIterIsValid treeStore iter = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_tree_store_iter_is_valid treeStore' iter'
    let result' = (/= 0) result
    touchManagedPtr treeStore
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TreeStoreIterIsValidMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> m Bool), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreIterIsValidMethodInfo a signature where
    overloadedMethod = treeStoreIterIsValid

#endif

-- method TreeStore::move_after
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter." , sinceVersion = Nothing }
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

foreign import ccall "gtk_tree_store_move_after" gtk_tree_store_move_after :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- position : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Moves /@iter@/ in /@treeStore@/ to the position after /@position@/. /@iter@/ and
-- /@position@/ should be in the same level. Note that this function only
-- works with unsorted stores. If /@position@/ is 'P.Nothing', /@iter@/ will be moved
-- to the start of the level.
-- 
-- /Since: 2.2/
treeStoreMoveAfter ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'.
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@position@/: A t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> m ()
treeStoreMoveAfter treeStore iter position = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    maybePosition <- case position of
        Nothing -> return nullPtr
        Just jPosition -> do
            jPosition' <- unsafeManagedPtrGetPtr jPosition
            return jPosition'
    gtk_tree_store_move_after treeStore' iter' maybePosition
    touchManagedPtr treeStore
    touchManagedPtr iter
    whenJust position touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreMoveAfterMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> Maybe (Gtk.TreeIter.TreeIter) -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreMoveAfterMethodInfo a signature where
    overloadedMethod = treeStoreMoveAfter

#endif

-- method TreeStore::move_before
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter or %NULL."
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

foreign import ccall "gtk_tree_store_move_before" gtk_tree_store_move_before :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- position : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Moves /@iter@/ in /@treeStore@/ to the position before /@position@/. /@iter@/ and
-- /@position@/ should be in the same level. Note that this function only
-- works with unsorted stores. If /@position@/ is 'P.Nothing', /@iter@/ will be
-- moved to the end of the level.
-- 
-- /Since: 2.2/
treeStoreMoveBefore ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'.
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@position@/: A t'GI.Gtk.Structs.TreeIter.TreeIter' or 'P.Nothing'.
    -> m ()
treeStoreMoveBefore treeStore iter position = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    maybePosition <- case position of
        Nothing -> return nullPtr
        Just jPosition -> do
            jPosition' <- unsafeManagedPtrGetPtr jPosition
            return jPosition'
    gtk_tree_store_move_before treeStore' iter' maybePosition
    touchManagedPtr treeStore
    touchManagedPtr iter
    whenJust position touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreMoveBeforeMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> Maybe (Gtk.TreeIter.TreeIter) -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreMoveBeforeMethodInfo a signature where
    overloadedMethod = treeStoreMoveBefore

#endif

-- method TreeStore::prepend
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "An unset #GtkTreeIter to set to the prepended row"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter, or %NULL"
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

foreign import ccall "gtk_tree_store_prepend" gtk_tree_store_prepend :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- parent : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Prepends a new row to /@treeStore@/.  If /@parent@/ is non-'P.Nothing', then it will prepend
-- the new row before the first child of /@parent@/, otherwise it will prepend a row
-- to the top level.  /@iter@/ will be changed to point to this new row.  The row
-- will be empty after this function is called.  To fill in values, you need to
-- call @/gtk_tree_store_set()/@ or 'GI.Gtk.Objects.TreeStore.treeStoreSetValue'.
treeStorePrepend ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@parent@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> m (Gtk.TreeIter.TreeIter)
treeStorePrepend treeStore parent = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrGetPtr jParent
            return jParent'
    gtk_tree_store_prepend treeStore' iter maybeParent
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr treeStore
    whenJust parent touchManagedPtr
    return iter'

#if defined(ENABLE_OVERLOADING)
data TreeStorePrependMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> m (Gtk.TreeIter.TreeIter)), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStorePrependMethodInfo a signature where
    overloadedMethod = treeStorePrepend

#endif

-- method TreeStore::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A valid #GtkTreeIter"
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

foreign import ccall "gtk_tree_store_remove" gtk_tree_store_remove :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO CInt

-- | Removes /@iter@/ from /@treeStore@/.  After being removed, /@iter@/ is set to the
-- next valid row at that level, or invalidated if it previously pointed to the
-- last one.
treeStoreRemove ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@iter@/ is still valid, 'P.False' if not.
treeStoreRemove treeStore iter = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    result <- gtk_tree_store_remove treeStore' iter'
    let result' = (/= 0) result
    touchManagedPtr treeStore
    touchManagedPtr iter
    return result'

#if defined(ENABLE_OVERLOADING)
data TreeStoreRemoveMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> m Bool), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreRemoveMethodInfo a signature where
    overloadedMethod = treeStoreRemove

#endif

-- method TreeStore::set_column_types
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_columns"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Number of columns for the tree store"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "types"
--           , argType = TCArray False (-1) 1 (TBasicType TGType)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An array of #GType types, one for each column"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_columns"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "Number of columns for the tree store"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tree_store_set_column_types" gtk_tree_store_set_column_types :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Int32 ->                                -- n_columns : TBasicType TInt
    Ptr CGType ->                           -- types : TCArray False (-1) 1 (TBasicType TGType)
    IO ()

-- | This function is meant primarily for @/GObjects/@ that inherit from
-- t'GI.Gtk.Objects.TreeStore.TreeStore', and should only be used when constructing a new
-- t'GI.Gtk.Objects.TreeStore.TreeStore'.  It will not function after a row has been added,
-- or a method on the t'GI.Gtk.Interfaces.TreeModel.TreeModel' interface is called.
treeStoreSetColumnTypes ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> [GType]
    -- ^ /@types@/: An array of t'GType' types, one for each column
    -> m ()
treeStoreSetColumnTypes treeStore types = liftIO $ do
    let nColumns = fromIntegral $ length types
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    types' <- (packMapStorableArray gtypeToCGType) types
    gtk_tree_store_set_column_types treeStore' nColumns types'
    touchManagedPtr treeStore
    freeMem types'
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreSetColumnTypesMethodInfo
instance (signature ~ ([GType] -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreSetColumnTypesMethodInfo a signature where
    overloadedMethod = treeStoreSetColumnTypes

#endif

-- method TreeStore::set_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A valid #GtkTreeIter for the row being modified"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "column number to modify"
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
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Value" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "new value for the cell"
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

foreign import ccall "gtk_tree_store_set_value" gtk_tree_store_set_value :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Int32 ->                                -- column : TBasicType TInt
    Ptr GValue ->                           -- value : TInterface (Name {namespace = "GObject", name = "Value"})
    IO ()

-- | Sets the data in the cell specified by /@iter@/ and /@column@/.
-- The type of /@value@/ must be convertible to the type of the
-- column.
treeStoreSetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: a t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter' for the row being modified
    -> Int32
    -- ^ /@column@/: column number to modify
    -> GValue
    -- ^ /@value@/: new value for the cell
    -> m ()
treeStoreSetValue treeStore iter column value = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    value' <- unsafeManagedPtrGetPtr value
    gtk_tree_store_set_value treeStore' iter' column value'
    touchManagedPtr treeStore
    touchManagedPtr iter
    touchManagedPtr value
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreSetValueMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> Int32 -> GValue -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreSetValueMethodInfo a signature where
    overloadedMethod = treeStoreSetValue

#endif

-- method TreeStore::set
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A valid #GtkTreeIter for the row being modified"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TCArray False (-1) 4 (TBasicType TInt)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an array of column numbers"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 4
--                 (TInterface Name { namespace = "GObject" , name = "Value" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an array of GValues"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_values"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the length of the @columns and @values arrays"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_values"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the length of the @columns and @values arrays"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          , Arg
--              { argCName = "n_values"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the length of the @columns and @values arrays"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tree_store_set_valuesv" gtk_tree_store_set_valuesv :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Int32 ->                            -- columns : TCArray False (-1) 4 (TBasicType TInt)
    Ptr GValue ->                           -- values : TCArray False (-1) 4 (TInterface (Name {namespace = "GObject", name = "Value"}))
    Int32 ->                                -- n_values : TBasicType TInt
    IO ()

-- | A variant of @/gtk_tree_store_set_valist()/@ which takes
-- the columns and values as two arrays, instead of varargs.  This
-- function is mainly intended for language bindings or in case
-- the number of columns to change is not known until run-time.
-- 
-- /Since: 2.12/
treeStoreSet ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'
    -> Gtk.TreeIter.TreeIter
    -- ^ /@iter@/: A valid t'GI.Gtk.Structs.TreeIter.TreeIter' for the row being modified
    -> [Int32]
    -- ^ /@columns@/: an array of column numbers
    -> [GValue]
    -- ^ /@values@/: an array of GValues
    -> m ()
treeStoreSet treeStore iter columns values = liftIO $ do
    let nValues = fromIntegral $ length values
    let columns_expected_length_ = fromIntegral $ length columns
    when (columns_expected_length_ /= nValues) $
        error "Gtk.treeStoreSet : length of 'columns' does not agree with that of 'values'."
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    iter' <- unsafeManagedPtrGetPtr iter
    columns' <- packStorableArray columns
    values' <- mapM unsafeManagedPtrGetPtr values
    values'' <- packBlockArray 24 values'
    gtk_tree_store_set_valuesv treeStore' iter' columns' values'' nValues
    touchManagedPtr treeStore
    touchManagedPtr iter
    mapM_ touchManagedPtr values
    freeMem columns'
    freeMem values''
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreSetMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> [Int32] -> [GValue] -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreSetMethodInfo a signature where
    overloadedMethod = treeStoreSet

#endif

-- method TreeStore::swap
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tree_store"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeStore" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeStore." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "a"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "b"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Another #GtkTreeIter."
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

foreign import ccall "gtk_tree_store_swap" gtk_tree_store_swap :: 
    Ptr TreeStore ->                        -- tree_store : TInterface (Name {namespace = "Gtk", name = "TreeStore"})
    Ptr Gtk.TreeIter.TreeIter ->            -- a : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    Ptr Gtk.TreeIter.TreeIter ->            -- b : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Swaps /@a@/ and /@b@/ in the same level of /@treeStore@/. Note that this function
-- only works with unsorted stores.
-- 
-- /Since: 2.2/
treeStoreSwap ::
    (B.CallStack.HasCallStack, MonadIO m, IsTreeStore a) =>
    a
    -- ^ /@treeStore@/: A t'GI.Gtk.Objects.TreeStore.TreeStore'.
    -> Gtk.TreeIter.TreeIter
    -- ^ /@a@/: A t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> Gtk.TreeIter.TreeIter
    -- ^ /@b@/: Another t'GI.Gtk.Structs.TreeIter.TreeIter'.
    -> m ()
treeStoreSwap treeStore a b = liftIO $ do
    treeStore' <- unsafeManagedPtrCastPtr treeStore
    a' <- unsafeManagedPtrGetPtr a
    b' <- unsafeManagedPtrGetPtr b
    gtk_tree_store_swap treeStore' a' b'
    touchManagedPtr treeStore
    touchManagedPtr a
    touchManagedPtr b
    return ()

#if defined(ENABLE_OVERLOADING)
data TreeStoreSwapMethodInfo
instance (signature ~ (Gtk.TreeIter.TreeIter -> Gtk.TreeIter.TreeIter -> m ()), MonadIO m, IsTreeStore a) => O.MethodInfo TreeStoreSwapMethodInfo a signature where
    overloadedMethod = treeStoreSwap

#endif

