{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FlowBoxChildAccessible
    ( 

-- * Exported types
    FlowBoxChildAccessible(..)              ,
    IsFlowBoxChildAccessible                ,
    toFlowBoxChildAccessible                ,
    noFlowBoxChildAccessible                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFlowBoxChildAccessibleMethod     ,
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
newtype FlowBoxChildAccessible = FlowBoxChildAccessible (ManagedPtr FlowBoxChildAccessible)
    deriving (Eq)
foreign import ccall "gtk_flow_box_child_accessible_get_type"
    c_gtk_flow_box_child_accessible_get_type :: IO GType

instance GObject FlowBoxChildAccessible where
    gobjectType = c_gtk_flow_box_child_accessible_get_type
    

-- | Convert 'FlowBoxChildAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FlowBoxChildAccessible where
    toGValue o = do
        gtype <- c_gtk_flow_box_child_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FlowBoxChildAccessible)
        B.ManagedPtr.newObject FlowBoxChildAccessible ptr
        
    

-- | Type class for types which can be safely cast to `FlowBoxChildAccessible`, for instance with `toFlowBoxChildAccessible`.
class (GObject o, O.IsDescendantOf FlowBoxChildAccessible o) => IsFlowBoxChildAccessible o
instance (GObject o, O.IsDescendantOf FlowBoxChildAccessible o) => IsFlowBoxChildAccessible o

instance O.HasParentTypes FlowBoxChildAccessible
type instance O.ParentTypes FlowBoxChildAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `FlowBoxChildAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFlowBoxChildAccessible :: (MonadIO m, IsFlowBoxChildAccessible o) => o -> m FlowBoxChildAccessible
toFlowBoxChildAccessible = liftIO . unsafeCastTo FlowBoxChildAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `FlowBoxChildAccessible`.
noFlowBoxChildAccessible :: Maybe FlowBoxChildAccessible
noFlowBoxChildAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFlowBoxChildAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveFlowBoxChildAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveFlowBoxChildAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFlowBoxChildAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveFlowBoxChildAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveFlowBoxChildAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFlowBoxChildAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFlowBoxChildAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveFlowBoxChildAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveFlowBoxChildAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFlowBoxChildAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFlowBoxChildAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveFlowBoxChildAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveFlowBoxChildAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFlowBoxChildAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveFlowBoxChildAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveFlowBoxChildAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveFlowBoxChildAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFlowBoxChildAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveFlowBoxChildAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveFlowBoxChildAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveFlowBoxChildAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveFlowBoxChildAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFlowBoxChildAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveFlowBoxChildAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveFlowBoxChildAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFlowBoxChildAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFlowBoxChildAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFlowBoxChildAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveFlowBoxChildAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveFlowBoxChildAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveFlowBoxChildAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFlowBoxChildAccessibleMethod t FlowBoxChildAccessible, O.MethodInfo info FlowBoxChildAccessible p) => OL.IsLabel t (FlowBoxChildAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FlowBoxChildAccessible
type instance O.AttributeList FlowBoxChildAccessible = FlowBoxChildAccessibleAttributeList
type FlowBoxChildAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FlowBoxChildAccessible = FlowBoxChildAccessibleSignalList
type FlowBoxChildAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

