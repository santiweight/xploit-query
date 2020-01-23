{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ListBoxAccessible
    ( 

-- * Exported types
    ListBoxAccessible(..)                   ,
    IsListBoxAccessible                     ,
    toListBoxAccessible                     ,
    noListBoxAccessible                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveListBoxAccessibleMethod          ,
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
newtype ListBoxAccessible = ListBoxAccessible (ManagedPtr ListBoxAccessible)
    deriving (Eq)
foreign import ccall "gtk_list_box_accessible_get_type"
    c_gtk_list_box_accessible_get_type :: IO GType

instance GObject ListBoxAccessible where
    gobjectType = c_gtk_list_box_accessible_get_type
    

-- | Convert 'ListBoxAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ListBoxAccessible where
    toGValue o = do
        gtype <- c_gtk_list_box_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ListBoxAccessible)
        B.ManagedPtr.newObject ListBoxAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ListBoxAccessible`, for instance with `toListBoxAccessible`.
class (GObject o, O.IsDescendantOf ListBoxAccessible o) => IsListBoxAccessible o
instance (GObject o, O.IsDescendantOf ListBoxAccessible o) => IsListBoxAccessible o

instance O.HasParentTypes ListBoxAccessible
type instance O.ParentTypes ListBoxAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `ListBoxAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListBoxAccessible :: (MonadIO m, IsListBoxAccessible o) => o -> m ListBoxAccessible
toListBoxAccessible = liftIO . unsafeCastTo ListBoxAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ListBoxAccessible`.
noListBoxAccessible :: Maybe ListBoxAccessible
noListBoxAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveListBoxAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveListBoxAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveListBoxAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveListBoxAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListBoxAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListBoxAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveListBoxAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveListBoxAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveListBoxAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListBoxAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListBoxAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListBoxAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveListBoxAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveListBoxAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveListBoxAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListBoxAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListBoxAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListBoxAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveListBoxAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveListBoxAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListBoxAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveListBoxAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveListBoxAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveListBoxAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveListBoxAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListBoxAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveListBoxAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveListBoxAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveListBoxAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveListBoxAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveListBoxAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListBoxAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveListBoxAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveListBoxAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveListBoxAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListBoxAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListBoxAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListBoxAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListBoxAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListBoxAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveListBoxAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveListBoxAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveListBoxAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListBoxAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveListBoxAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveListBoxAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveListBoxAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveListBoxAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveListBoxAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveListBoxAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveListBoxAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveListBoxAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveListBoxAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveListBoxAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListBoxAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListBoxAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveListBoxAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveListBoxAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveListBoxAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveListBoxAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveListBoxAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListBoxAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveListBoxAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveListBoxAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveListBoxAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveListBoxAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveListBoxAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveListBoxAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListBoxAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveListBoxAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveListBoxAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveListBoxAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListBoxAccessibleMethod t ListBoxAccessible, O.MethodInfo info ListBoxAccessible p) => OL.IsLabel t (ListBoxAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ListBoxAccessible
type instance O.AttributeList ListBoxAccessible = ListBoxAccessibleAttributeList
type ListBoxAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ListBoxAccessible = ListBoxAccessibleSignalList
type ListBoxAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

