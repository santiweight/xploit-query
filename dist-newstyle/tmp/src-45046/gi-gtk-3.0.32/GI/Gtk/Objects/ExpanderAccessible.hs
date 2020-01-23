{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ExpanderAccessible
    ( 

-- * Exported types
    ExpanderAccessible(..)                  ,
    IsExpanderAccessible                    ,
    toExpanderAccessible                    ,
    noExpanderAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveExpanderAccessibleMethod         ,
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

import qualified GI.Atk.Interfaces.Action as Atk.Action
import qualified GI.Atk.Interfaces.Component as Atk.Component
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ExpanderAccessible = ExpanderAccessible (ManagedPtr ExpanderAccessible)
    deriving (Eq)
foreign import ccall "gtk_expander_accessible_get_type"
    c_gtk_expander_accessible_get_type :: IO GType

instance GObject ExpanderAccessible where
    gobjectType = c_gtk_expander_accessible_get_type
    

-- | Convert 'ExpanderAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ExpanderAccessible where
    toGValue o = do
        gtype <- c_gtk_expander_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ExpanderAccessible)
        B.ManagedPtr.newObject ExpanderAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ExpanderAccessible`, for instance with `toExpanderAccessible`.
class (GObject o, O.IsDescendantOf ExpanderAccessible o) => IsExpanderAccessible o
instance (GObject o, O.IsDescendantOf ExpanderAccessible o) => IsExpanderAccessible o

instance O.HasParentTypes ExpanderAccessible
type instance O.ParentTypes ExpanderAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component]

-- | Cast to `ExpanderAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toExpanderAccessible :: (MonadIO m, IsExpanderAccessible o) => o -> m ExpanderAccessible
toExpanderAccessible = liftIO . unsafeCastTo ExpanderAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ExpanderAccessible`.
noExpanderAccessible :: Maybe ExpanderAccessible
noExpanderAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveExpanderAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveExpanderAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveExpanderAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveExpanderAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveExpanderAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveExpanderAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveExpanderAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveExpanderAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveExpanderAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveExpanderAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveExpanderAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveExpanderAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveExpanderAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveExpanderAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveExpanderAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveExpanderAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveExpanderAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveExpanderAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveExpanderAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveExpanderAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveExpanderAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveExpanderAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveExpanderAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveExpanderAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveExpanderAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveExpanderAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveExpanderAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveExpanderAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveExpanderAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveExpanderAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveExpanderAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveExpanderAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveExpanderAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveExpanderAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveExpanderAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveExpanderAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveExpanderAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveExpanderAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveExpanderAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveExpanderAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveExpanderAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveExpanderAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveExpanderAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveExpanderAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveExpanderAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveExpanderAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveExpanderAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveExpanderAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveExpanderAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveExpanderAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveExpanderAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveExpanderAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveExpanderAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveExpanderAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveExpanderAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveExpanderAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveExpanderAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveExpanderAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveExpanderAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveExpanderAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveExpanderAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveExpanderAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveExpanderAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveExpanderAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveExpanderAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveExpanderAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveExpanderAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveExpanderAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveExpanderAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveExpanderAccessibleMethod t ExpanderAccessible, O.MethodInfo info ExpanderAccessible p) => OL.IsLabel t (ExpanderAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ExpanderAccessible
type instance O.AttributeList ExpanderAccessible = ExpanderAccessibleAttributeList
type ExpanderAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ExpanderAccessible = ExpanderAccessibleSignalList
type ExpanderAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

