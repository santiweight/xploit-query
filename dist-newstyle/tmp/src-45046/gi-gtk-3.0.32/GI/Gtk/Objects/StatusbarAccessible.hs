{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StatusbarAccessible
    ( 

-- * Exported types
    StatusbarAccessible(..)                 ,
    IsStatusbarAccessible                   ,
    toStatusbarAccessible                   ,
    noStatusbarAccessible                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStatusbarAccessibleMethod        ,
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
newtype StatusbarAccessible = StatusbarAccessible (ManagedPtr StatusbarAccessible)
    deriving (Eq)
foreign import ccall "gtk_statusbar_accessible_get_type"
    c_gtk_statusbar_accessible_get_type :: IO GType

instance GObject StatusbarAccessible where
    gobjectType = c_gtk_statusbar_accessible_get_type
    

-- | Convert 'StatusbarAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StatusbarAccessible where
    toGValue o = do
        gtype <- c_gtk_statusbar_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StatusbarAccessible)
        B.ManagedPtr.newObject StatusbarAccessible ptr
        
    

-- | Type class for types which can be safely cast to `StatusbarAccessible`, for instance with `toStatusbarAccessible`.
class (GObject o, O.IsDescendantOf StatusbarAccessible o) => IsStatusbarAccessible o
instance (GObject o, O.IsDescendantOf StatusbarAccessible o) => IsStatusbarAccessible o

instance O.HasParentTypes StatusbarAccessible
type instance O.ParentTypes StatusbarAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `StatusbarAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStatusbarAccessible :: (MonadIO m, IsStatusbarAccessible o) => o -> m StatusbarAccessible
toStatusbarAccessible = liftIO . unsafeCastTo StatusbarAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `StatusbarAccessible`.
noStatusbarAccessible :: Maybe StatusbarAccessible
noStatusbarAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStatusbarAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveStatusbarAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveStatusbarAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStatusbarAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStatusbarAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveStatusbarAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveStatusbarAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStatusbarAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStatusbarAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStatusbarAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveStatusbarAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveStatusbarAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStatusbarAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStatusbarAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStatusbarAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveStatusbarAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveStatusbarAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStatusbarAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveStatusbarAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveStatusbarAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveStatusbarAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStatusbarAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveStatusbarAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveStatusbarAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveStatusbarAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveStatusbarAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStatusbarAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveStatusbarAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveStatusbarAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStatusbarAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStatusbarAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStatusbarAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStatusbarAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStatusbarAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveStatusbarAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveStatusbarAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveStatusbarAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStatusbarAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveStatusbarAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveStatusbarAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveStatusbarAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveStatusbarAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveStatusbarAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveStatusbarAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveStatusbarAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveStatusbarAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveStatusbarAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveStatusbarAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStatusbarAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStatusbarAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveStatusbarAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveStatusbarAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveStatusbarAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveStatusbarAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStatusbarAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStatusbarAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveStatusbarAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveStatusbarAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveStatusbarAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveStatusbarAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveStatusbarAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStatusbarAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveStatusbarAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveStatusbarAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveStatusbarAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStatusbarAccessibleMethod t StatusbarAccessible, O.MethodInfo info StatusbarAccessible p) => OL.IsLabel t (StatusbarAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StatusbarAccessible
type instance O.AttributeList StatusbarAccessible = StatusbarAccessibleAttributeList
type StatusbarAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StatusbarAccessible = StatusbarAccessibleSignalList
type StatusbarAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

