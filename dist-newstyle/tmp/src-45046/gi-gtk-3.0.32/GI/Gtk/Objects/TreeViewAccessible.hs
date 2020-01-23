{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TreeViewAccessible
    ( 

-- * Exported types
    TreeViewAccessible(..)                  ,
    IsTreeViewAccessible                    ,
    toTreeViewAccessible                    ,
    noTreeViewAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTreeViewAccessibleMethod         ,
#endif




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

import qualified GI.Atk.Interfaces.Component as Atk.Component
import qualified GI.Atk.Interfaces.Selection as Atk.Selection
import qualified GI.Atk.Interfaces.Table as Atk.Table
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellAccessibleParent as Gtk.CellAccessibleParent
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype TreeViewAccessible = TreeViewAccessible (ManagedPtr TreeViewAccessible)
    deriving (Eq)
foreign import ccall "gtk_tree_view_accessible_get_type"
    c_gtk_tree_view_accessible_get_type :: IO GType

instance GObject TreeViewAccessible where
    gobjectType = c_gtk_tree_view_accessible_get_type
    

-- | Convert 'TreeViewAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TreeViewAccessible where
    toGValue o = do
        gtype <- c_gtk_tree_view_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TreeViewAccessible)
        B.ManagedPtr.newObject TreeViewAccessible ptr
        
    

-- | Type class for types which can be safely cast to `TreeViewAccessible`, for instance with `toTreeViewAccessible`.
class (GObject o, O.IsDescendantOf TreeViewAccessible o) => IsTreeViewAccessible o
instance (GObject o, O.IsDescendantOf TreeViewAccessible o) => IsTreeViewAccessible o

instance O.HasParentTypes TreeViewAccessible
type instance O.ParentTypes TreeViewAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection, Atk.Table.Table, Gtk.CellAccessibleParent.CellAccessibleParent]

-- | Cast to `TreeViewAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTreeViewAccessible :: (MonadIO m, IsTreeViewAccessible o) => o -> m TreeViewAccessible
toTreeViewAccessible = liftIO . unsafeCastTo TreeViewAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `TreeViewAccessible`.
noTreeViewAccessible :: Maybe TreeViewAccessible
noTreeViewAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTreeViewAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveTreeViewAccessibleMethod "activate" o = Gtk.CellAccessibleParent.CellAccessibleParentActivateMethodInfo
    ResolveTreeViewAccessibleMethod "addColumnSelection" o = Atk.Table.TableAddColumnSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveTreeViewAccessibleMethod "addRowSelection" o = Atk.Table.TableAddRowSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTreeViewAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTreeViewAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveTreeViewAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveTreeViewAccessibleMethod "edit" o = Gtk.CellAccessibleParent.CellAccessibleParentEditMethodInfo
    ResolveTreeViewAccessibleMethod "expandCollapse" o = Gtk.CellAccessibleParent.CellAccessibleParentExpandCollapseMethodInfo
    ResolveTreeViewAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTreeViewAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTreeViewAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTreeViewAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveTreeViewAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveTreeViewAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveTreeViewAccessibleMethod "isColumnSelected" o = Atk.Table.TableIsColumnSelectedMethodInfo
    ResolveTreeViewAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTreeViewAccessibleMethod "isRowSelected" o = Atk.Table.TableIsRowSelectedMethodInfo
    ResolveTreeViewAccessibleMethod "isSelected" o = Atk.Table.TableIsSelectedMethodInfo
    ResolveTreeViewAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTreeViewAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTreeViewAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveTreeViewAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveTreeViewAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTreeViewAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveTreeViewAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveTreeViewAccessibleMethod "refAt" o = Atk.Table.TableRefAtMethodInfo
    ResolveTreeViewAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveTreeViewAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTreeViewAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveTreeViewAccessibleMethod "removeColumnSelection" o = Atk.Table.TableRemoveColumnSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveTreeViewAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveTreeViewAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveTreeViewAccessibleMethod "removeRowSelection" o = Atk.Table.TableRemoveRowSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTreeViewAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveTreeViewAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveTreeViewAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveTreeViewAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTreeViewAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTreeViewAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTreeViewAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTreeViewAccessibleMethod "updateRelationset" o = Gtk.CellAccessibleParent.CellAccessibleParentUpdateRelationsetMethodInfo
    ResolveTreeViewAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTreeViewAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveTreeViewAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveTreeViewAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveTreeViewAccessibleMethod "getCaption" o = Atk.Table.TableGetCaptionMethodInfo
    ResolveTreeViewAccessibleMethod "getCellArea" o = Gtk.CellAccessibleParent.CellAccessibleParentGetCellAreaMethodInfo
    ResolveTreeViewAccessibleMethod "getCellExtents" o = Gtk.CellAccessibleParent.CellAccessibleParentGetCellExtentsMethodInfo
    ResolveTreeViewAccessibleMethod "getCellPosition" o = Gtk.CellAccessibleParent.CellAccessibleParentGetCellPositionMethodInfo
    ResolveTreeViewAccessibleMethod "getChildIndex" o = Gtk.CellAccessibleParent.CellAccessibleParentGetChildIndexMethodInfo
    ResolveTreeViewAccessibleMethod "getColumnAtIndex" o = Atk.Table.TableGetColumnAtIndexMethodInfo
    ResolveTreeViewAccessibleMethod "getColumnDescription" o = Atk.Table.TableGetColumnDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "getColumnExtentAt" o = Atk.Table.TableGetColumnExtentAtMethodInfo
    ResolveTreeViewAccessibleMethod "getColumnHeader" o = Atk.Table.TableGetColumnHeaderMethodInfo
    ResolveTreeViewAccessibleMethod "getColumnHeaderCells" o = Gtk.CellAccessibleParent.CellAccessibleParentGetColumnHeaderCellsMethodInfo
    ResolveTreeViewAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTreeViewAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveTreeViewAccessibleMethod "getIndexAt" o = Atk.Table.TableGetIndexAtMethodInfo
    ResolveTreeViewAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveTreeViewAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveTreeViewAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveTreeViewAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveTreeViewAccessibleMethod "getNColumns" o = Atk.Table.TableGetNColumnsMethodInfo
    ResolveTreeViewAccessibleMethod "getNRows" o = Atk.Table.TableGetNRowsMethodInfo
    ResolveTreeViewAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveTreeViewAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveTreeViewAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveTreeViewAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveTreeViewAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTreeViewAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTreeViewAccessibleMethod "getRendererState" o = Gtk.CellAccessibleParent.CellAccessibleParentGetRendererStateMethodInfo
    ResolveTreeViewAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveTreeViewAccessibleMethod "getRowAtIndex" o = Atk.Table.TableGetRowAtIndexMethodInfo
    ResolveTreeViewAccessibleMethod "getRowDescription" o = Atk.Table.TableGetRowDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "getRowExtentAt" o = Atk.Table.TableGetRowExtentAtMethodInfo
    ResolveTreeViewAccessibleMethod "getRowHeader" o = Atk.Table.TableGetRowHeaderMethodInfo
    ResolveTreeViewAccessibleMethod "getRowHeaderCells" o = Gtk.CellAccessibleParent.CellAccessibleParentGetRowHeaderCellsMethodInfo
    ResolveTreeViewAccessibleMethod "getSelectedColumns" o = Atk.Table.TableGetSelectedColumnsMethodInfo
    ResolveTreeViewAccessibleMethod "getSelectedRows" o = Atk.Table.TableGetSelectedRowsMethodInfo
    ResolveTreeViewAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveTreeViewAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveTreeViewAccessibleMethod "getSummary" o = Atk.Table.TableGetSummaryMethodInfo
    ResolveTreeViewAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveTreeViewAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveTreeViewAccessibleMethod "setCaption" o = Atk.Table.TableSetCaptionMethodInfo
    ResolveTreeViewAccessibleMethod "setColumnDescription" o = Atk.Table.TableSetColumnDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "setColumnHeader" o = Atk.Table.TableSetColumnHeaderMethodInfo
    ResolveTreeViewAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTreeViewAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTreeViewAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveTreeViewAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveTreeViewAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveTreeViewAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveTreeViewAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTreeViewAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveTreeViewAccessibleMethod "setRowDescription" o = Atk.Table.TableSetRowDescriptionMethodInfo
    ResolveTreeViewAccessibleMethod "setRowHeader" o = Atk.Table.TableSetRowHeaderMethodInfo
    ResolveTreeViewAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveTreeViewAccessibleMethod "setSummary" o = Atk.Table.TableSetSummaryMethodInfo
    ResolveTreeViewAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveTreeViewAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTreeViewAccessibleMethod t TreeViewAccessible, O.MethodInfo info TreeViewAccessible p) => OL.IsLabel t (TreeViewAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TreeViewAccessible
type instance O.AttributeList TreeViewAccessible = TreeViewAccessibleAttributeList
type TreeViewAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TreeViewAccessible = TreeViewAccessibleSignalList
type TreeViewAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("columnDeleted", Atk.Table.TableColumnDeletedSignalInfo), '("columnInserted", Atk.Table.TableColumnInsertedSignalInfo), '("columnReordered", Atk.Table.TableColumnReorderedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("modelChanged", Atk.Table.TableModelChangedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("rowDeleted", Atk.Table.TableRowDeletedSignalInfo), '("rowInserted", Atk.Table.TableRowInsertedSignalInfo), '("rowReordered", Atk.Table.TableRowReorderedSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

