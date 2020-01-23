{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ContainerCellAccessible
    ( 

-- * Exported types
    ContainerCellAccessible(..)             ,
    IsContainerCellAccessible               ,
    toContainerCellAccessible               ,
    noContainerCellAccessible               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveContainerCellAccessibleMethod    ,
#endif


-- ** addChild #method:addChild#

#if defined(ENABLE_OVERLOADING)
    ContainerCellAccessibleAddChildMethodInfo,
#endif
    containerCellAccessibleAddChild         ,


-- ** getChildren #method:getChildren#

#if defined(ENABLE_OVERLOADING)
    ContainerCellAccessibleGetChildrenMethodInfo,
#endif
    containerCellAccessibleGetChildren      ,


-- ** new #method:new#

    containerCellAccessibleNew              ,


-- ** removeChild #method:removeChild#

#if defined(ENABLE_OVERLOADING)
    ContainerCellAccessibleRemoveChildMethodInfo,
#endif
    containerCellAccessibleRemoveChild      ,




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

import qualified GI.Atk.Interfaces.Action as Atk.Action
import qualified GI.Atk.Interfaces.Component as Atk.Component
import qualified GI.Atk.Interfaces.TableCell as Atk.TableCell
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAccessible as Gtk.CellAccessible

-- | Memory-managed wrapper type.
newtype ContainerCellAccessible = ContainerCellAccessible (ManagedPtr ContainerCellAccessible)
    deriving (Eq)
foreign import ccall "gtk_container_cell_accessible_get_type"
    c_gtk_container_cell_accessible_get_type :: IO GType

instance GObject ContainerCellAccessible where
    gobjectType = c_gtk_container_cell_accessible_get_type
    

-- | Convert 'ContainerCellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ContainerCellAccessible where
    toGValue o = do
        gtype <- c_gtk_container_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ContainerCellAccessible)
        B.ManagedPtr.newObject ContainerCellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ContainerCellAccessible`, for instance with `toContainerCellAccessible`.
class (GObject o, O.IsDescendantOf ContainerCellAccessible o) => IsContainerCellAccessible o
instance (GObject o, O.IsDescendantOf ContainerCellAccessible o) => IsContainerCellAccessible o

instance O.HasParentTypes ContainerCellAccessible
type instance O.ParentTypes ContainerCellAccessible = '[Gtk.CellAccessible.CellAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.TableCell.TableCell]

-- | Cast to `ContainerCellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toContainerCellAccessible :: (MonadIO m, IsContainerCellAccessible o) => o -> m ContainerCellAccessible
toContainerCellAccessible = liftIO . unsafeCastTo ContainerCellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ContainerCellAccessible`.
noContainerCellAccessible :: Maybe ContainerCellAccessible
noContainerCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveContainerCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveContainerCellAccessibleMethod "addChild" o = ContainerCellAccessibleAddChildMethodInfo
    ResolveContainerCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveContainerCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveContainerCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveContainerCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveContainerCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveContainerCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveContainerCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveContainerCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveContainerCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveContainerCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveContainerCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveContainerCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveContainerCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveContainerCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveContainerCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveContainerCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveContainerCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveContainerCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveContainerCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveContainerCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveContainerCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveContainerCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveContainerCellAccessibleMethod "removeChild" o = ContainerCellAccessibleRemoveChildMethodInfo
    ResolveContainerCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveContainerCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveContainerCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveContainerCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveContainerCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveContainerCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveContainerCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveContainerCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveContainerCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveContainerCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveContainerCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveContainerCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveContainerCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveContainerCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveContainerCellAccessibleMethod "getChildren" o = ContainerCellAccessibleGetChildrenMethodInfo
    ResolveContainerCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveContainerCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveContainerCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveContainerCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveContainerCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveContainerCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveContainerCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveContainerCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveContainerCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveContainerCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveContainerCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveContainerCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveContainerCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveContainerCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveContainerCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveContainerCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveContainerCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveContainerCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveContainerCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveContainerCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveContainerCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveContainerCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveContainerCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveContainerCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveContainerCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveContainerCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveContainerCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveContainerCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveContainerCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveContainerCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveContainerCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveContainerCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveContainerCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveContainerCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveContainerCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveContainerCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveContainerCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveContainerCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveContainerCellAccessibleMethod t ContainerCellAccessible, O.MethodInfo info ContainerCellAccessible p) => OL.IsLabel t (ContainerCellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ContainerCellAccessible
type instance O.AttributeList ContainerCellAccessible = ContainerCellAccessibleAttributeList
type ContainerCellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ContainerCellAccessible = ContainerCellAccessibleSignalList
type ContainerCellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method ContainerCellAccessible::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "ContainerCellAccessible" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_cell_accessible_new" gtk_container_cell_accessible_new :: 
    IO (Ptr ContainerCellAccessible)

-- | /No description available in the introspection data./
containerCellAccessibleNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ContainerCellAccessible
containerCellAccessibleNew  = liftIO $ do
    result <- gtk_container_cell_accessible_new
    checkUnexpectedReturnNULL "containerCellAccessibleNew" result
    result' <- (wrapObject ContainerCellAccessible) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ContainerCellAccessible::add_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ContainerCellAccessible" }
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
--           { argCName = "child"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_container_cell_accessible_add_child" gtk_container_cell_accessible_add_child :: 
    Ptr ContainerCellAccessible ->          -- container : TInterface (Name {namespace = "Gtk", name = "ContainerCellAccessible"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- child : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO ()

-- | /No description available in the introspection data./
containerCellAccessibleAddChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainerCellAccessible a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ()
containerCellAccessibleAddChild container child = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    gtk_container_cell_accessible_add_child container' child'
    touchManagedPtr container
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerCellAccessibleAddChildMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainerCellAccessible a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo ContainerCellAccessibleAddChildMethodInfo a signature where
    overloadedMethod = containerCellAccessibleAddChild

#endif

-- method ContainerCellAccessible::get_children
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ContainerCellAccessible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the container" , sinceVersion = Nothing }
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
--                  (TInterface Name { namespace = "Gtk" , name = "CellAccessible" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_cell_accessible_get_children" gtk_container_cell_accessible_get_children :: 
    Ptr ContainerCellAccessible ->          -- container : TInterface (Name {namespace = "Gtk", name = "ContainerCellAccessible"})
    IO (Ptr (GList (Ptr Gtk.CellAccessible.CellAccessible)))

-- | Get a list of children.
containerCellAccessibleGetChildren ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainerCellAccessible a) =>
    a
    -- ^ /@container@/: the container
    -> m [Gtk.CellAccessible.CellAccessible]
containerCellAccessibleGetChildren container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_cell_accessible_get_children container'
    result' <- unpackGList result
    result'' <- mapM (newObject Gtk.CellAccessible.CellAccessible) result'
    touchManagedPtr container
    return result''

#if defined(ENABLE_OVERLOADING)
data ContainerCellAccessibleGetChildrenMethodInfo
instance (signature ~ (m [Gtk.CellAccessible.CellAccessible]), MonadIO m, IsContainerCellAccessible a) => O.MethodInfo ContainerCellAccessibleGetChildrenMethodInfo a signature where
    overloadedMethod = containerCellAccessibleGetChildren

#endif

-- method ContainerCellAccessible::remove_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ContainerCellAccessible" }
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
--           { argCName = "child"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAccessible" }
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

foreign import ccall "gtk_container_cell_accessible_remove_child" gtk_container_cell_accessible_remove_child :: 
    Ptr ContainerCellAccessible ->          -- container : TInterface (Name {namespace = "Gtk", name = "ContainerCellAccessible"})
    Ptr Gtk.CellAccessible.CellAccessible -> -- child : TInterface (Name {namespace = "Gtk", name = "CellAccessible"})
    IO ()

-- | /No description available in the introspection data./
containerCellAccessibleRemoveChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainerCellAccessible a, Gtk.CellAccessible.IsCellAccessible b) =>
    a
    -> b
    -> m ()
containerCellAccessibleRemoveChild container child = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    gtk_container_cell_accessible_remove_child container' child'
    touchManagedPtr container
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerCellAccessibleRemoveChildMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainerCellAccessible a, Gtk.CellAccessible.IsCellAccessible b) => O.MethodInfo ContainerCellAccessibleRemoveChildMethodInfo a signature where
    overloadedMethod = containerCellAccessibleRemoveChild

#endif

