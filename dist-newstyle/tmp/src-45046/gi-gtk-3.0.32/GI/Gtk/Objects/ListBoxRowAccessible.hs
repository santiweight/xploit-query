{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ListBoxRowAccessible
    ( 

-- * Exported types
    ListBoxRowAccessible(..)                ,
    IsListBoxRowAccessible                  ,
    toListBoxRowAccessible                  ,
    noListBoxRowAccessible                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveListBoxRowAccessibleMethod       ,
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
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ListBoxRowAccessible = ListBoxRowAccessible (ManagedPtr ListBoxRowAccessible)
    deriving (Eq)
foreign import ccall "gtk_list_box_row_accessible_get_type"
    c_gtk_list_box_row_accessible_get_type :: IO GType

instance GObject ListBoxRowAccessible where
    gobjectType = c_gtk_list_box_row_accessible_get_type
    

-- | Convert 'ListBoxRowAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ListBoxRowAccessible where
    toGValue o = do
        gtype <- c_gtk_list_box_row_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ListBoxRowAccessible)
        B.ManagedPtr.newObject ListBoxRowAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ListBoxRowAccessible`, for instance with `toListBoxRowAccessible`.
class (GObject o, O.IsDescendantOf ListBoxRowAccessible o) => IsListBoxRowAccessible o
instance (GObject o, O.IsDescendantOf ListBoxRowAccessible o) => IsListBoxRowAccessible o

instance O.HasParentTypes ListBoxRowAccessible
type instance O.ParentTypes ListBoxRowAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `ListBoxRowAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListBoxRowAccessible :: (MonadIO m, IsListBoxRowAccessible o) => o -> m ListBoxRowAccessible
toListBoxRowAccessible = liftIO . unsafeCastTo ListBoxRowAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ListBoxRowAccessible`.
noListBoxRowAccessible :: Maybe ListBoxRowAccessible
noListBoxRowAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveListBoxRowAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveListBoxRowAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveListBoxRowAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListBoxRowAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListBoxRowAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveListBoxRowAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveListBoxRowAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListBoxRowAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListBoxRowAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListBoxRowAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveListBoxRowAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveListBoxRowAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListBoxRowAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListBoxRowAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListBoxRowAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveListBoxRowAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveListBoxRowAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListBoxRowAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveListBoxRowAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveListBoxRowAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveListBoxRowAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListBoxRowAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveListBoxRowAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveListBoxRowAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveListBoxRowAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveListBoxRowAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListBoxRowAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveListBoxRowAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveListBoxRowAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListBoxRowAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListBoxRowAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListBoxRowAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListBoxRowAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListBoxRowAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveListBoxRowAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveListBoxRowAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveListBoxRowAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListBoxRowAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveListBoxRowAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveListBoxRowAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveListBoxRowAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveListBoxRowAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveListBoxRowAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveListBoxRowAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveListBoxRowAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveListBoxRowAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveListBoxRowAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveListBoxRowAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListBoxRowAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListBoxRowAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveListBoxRowAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveListBoxRowAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveListBoxRowAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveListBoxRowAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListBoxRowAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveListBoxRowAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveListBoxRowAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveListBoxRowAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveListBoxRowAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveListBoxRowAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveListBoxRowAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListBoxRowAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveListBoxRowAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveListBoxRowAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveListBoxRowAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListBoxRowAccessibleMethod t ListBoxRowAccessible, O.MethodInfo info ListBoxRowAccessible p) => OL.IsLabel t (ListBoxRowAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ListBoxRowAccessible
type instance O.AttributeList ListBoxRowAccessible = ListBoxRowAccessibleAttributeList
type ListBoxRowAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ListBoxRowAccessible = ListBoxRowAccessibleSignalList
type ListBoxRowAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

