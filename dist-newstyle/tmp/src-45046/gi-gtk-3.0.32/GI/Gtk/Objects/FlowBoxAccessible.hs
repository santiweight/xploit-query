{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FlowBoxAccessible
    ( 

-- * Exported types
    FlowBoxAccessible(..)                   ,
    IsFlowBoxAccessible                     ,
    toFlowBoxAccessible                     ,
    noFlowBoxAccessible                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFlowBoxAccessibleMethod          ,
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
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype FlowBoxAccessible = FlowBoxAccessible (ManagedPtr FlowBoxAccessible)
    deriving (Eq)
foreign import ccall "gtk_flow_box_accessible_get_type"
    c_gtk_flow_box_accessible_get_type :: IO GType

instance GObject FlowBoxAccessible where
    gobjectType = c_gtk_flow_box_accessible_get_type
    

-- | Convert 'FlowBoxAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FlowBoxAccessible where
    toGValue o = do
        gtype <- c_gtk_flow_box_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FlowBoxAccessible)
        B.ManagedPtr.newObject FlowBoxAccessible ptr
        
    

-- | Type class for types which can be safely cast to `FlowBoxAccessible`, for instance with `toFlowBoxAccessible`.
class (GObject o, O.IsDescendantOf FlowBoxAccessible o) => IsFlowBoxAccessible o
instance (GObject o, O.IsDescendantOf FlowBoxAccessible o) => IsFlowBoxAccessible o

instance O.HasParentTypes FlowBoxAccessible
type instance O.ParentTypes FlowBoxAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `FlowBoxAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFlowBoxAccessible :: (MonadIO m, IsFlowBoxAccessible o) => o -> m FlowBoxAccessible
toFlowBoxAccessible = liftIO . unsafeCastTo FlowBoxAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `FlowBoxAccessible`.
noFlowBoxAccessible :: Maybe FlowBoxAccessible
noFlowBoxAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFlowBoxAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveFlowBoxAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveFlowBoxAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveFlowBoxAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFlowBoxAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFlowBoxAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveFlowBoxAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveFlowBoxAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveFlowBoxAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFlowBoxAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFlowBoxAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFlowBoxAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveFlowBoxAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveFlowBoxAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveFlowBoxAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFlowBoxAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFlowBoxAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFlowBoxAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveFlowBoxAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveFlowBoxAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFlowBoxAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveFlowBoxAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveFlowBoxAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveFlowBoxAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveFlowBoxAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFlowBoxAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveFlowBoxAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveFlowBoxAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveFlowBoxAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveFlowBoxAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveFlowBoxAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFlowBoxAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveFlowBoxAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveFlowBoxAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveFlowBoxAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFlowBoxAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFlowBoxAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFlowBoxAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFlowBoxAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFlowBoxAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveFlowBoxAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveFlowBoxAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveFlowBoxAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFlowBoxAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveFlowBoxAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveFlowBoxAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveFlowBoxAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveFlowBoxAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveFlowBoxAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveFlowBoxAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveFlowBoxAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveFlowBoxAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveFlowBoxAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveFlowBoxAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFlowBoxAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFlowBoxAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveFlowBoxAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveFlowBoxAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveFlowBoxAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveFlowBoxAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveFlowBoxAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFlowBoxAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFlowBoxAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveFlowBoxAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveFlowBoxAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveFlowBoxAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveFlowBoxAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveFlowBoxAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFlowBoxAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveFlowBoxAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveFlowBoxAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveFlowBoxAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFlowBoxAccessibleMethod t FlowBoxAccessible, O.MethodInfo info FlowBoxAccessible p) => OL.IsLabel t (FlowBoxAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FlowBoxAccessible
type instance O.AttributeList FlowBoxAccessible = FlowBoxAccessibleAttributeList
type FlowBoxAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FlowBoxAccessible = FlowBoxAccessibleSignalList
type FlowBoxAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

