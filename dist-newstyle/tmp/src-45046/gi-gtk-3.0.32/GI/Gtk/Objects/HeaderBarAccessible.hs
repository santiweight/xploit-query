{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HeaderBarAccessible
    ( 

-- * Exported types
    HeaderBarAccessible(..)                 ,
    IsHeaderBarAccessible                   ,
    toHeaderBarAccessible                   ,
    noHeaderBarAccessible                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHeaderBarAccessibleMethod        ,
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
newtype HeaderBarAccessible = HeaderBarAccessible (ManagedPtr HeaderBarAccessible)
    deriving (Eq)
foreign import ccall "gtk_header_bar_accessible_get_type"
    c_gtk_header_bar_accessible_get_type :: IO GType

instance GObject HeaderBarAccessible where
    gobjectType = c_gtk_header_bar_accessible_get_type
    

-- | Convert 'HeaderBarAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HeaderBarAccessible where
    toGValue o = do
        gtype <- c_gtk_header_bar_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HeaderBarAccessible)
        B.ManagedPtr.newObject HeaderBarAccessible ptr
        
    

-- | Type class for types which can be safely cast to `HeaderBarAccessible`, for instance with `toHeaderBarAccessible`.
class (GObject o, O.IsDescendantOf HeaderBarAccessible o) => IsHeaderBarAccessible o
instance (GObject o, O.IsDescendantOf HeaderBarAccessible o) => IsHeaderBarAccessible o

instance O.HasParentTypes HeaderBarAccessible
type instance O.ParentTypes HeaderBarAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `HeaderBarAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHeaderBarAccessible :: (MonadIO m, IsHeaderBarAccessible o) => o -> m HeaderBarAccessible
toHeaderBarAccessible = liftIO . unsafeCastTo HeaderBarAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `HeaderBarAccessible`.
noHeaderBarAccessible :: Maybe HeaderBarAccessible
noHeaderBarAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHeaderBarAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveHeaderBarAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveHeaderBarAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHeaderBarAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHeaderBarAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveHeaderBarAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveHeaderBarAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHeaderBarAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHeaderBarAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHeaderBarAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveHeaderBarAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveHeaderBarAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHeaderBarAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHeaderBarAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHeaderBarAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveHeaderBarAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveHeaderBarAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHeaderBarAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveHeaderBarAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveHeaderBarAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveHeaderBarAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHeaderBarAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveHeaderBarAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveHeaderBarAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveHeaderBarAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveHeaderBarAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHeaderBarAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveHeaderBarAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveHeaderBarAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHeaderBarAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHeaderBarAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHeaderBarAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHeaderBarAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHeaderBarAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveHeaderBarAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveHeaderBarAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveHeaderBarAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHeaderBarAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveHeaderBarAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveHeaderBarAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveHeaderBarAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveHeaderBarAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveHeaderBarAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveHeaderBarAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveHeaderBarAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveHeaderBarAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveHeaderBarAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveHeaderBarAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHeaderBarAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHeaderBarAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveHeaderBarAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveHeaderBarAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveHeaderBarAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveHeaderBarAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHeaderBarAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHeaderBarAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveHeaderBarAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveHeaderBarAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveHeaderBarAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveHeaderBarAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveHeaderBarAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHeaderBarAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveHeaderBarAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveHeaderBarAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveHeaderBarAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHeaderBarAccessibleMethod t HeaderBarAccessible, O.MethodInfo info HeaderBarAccessible p) => OL.IsLabel t (HeaderBarAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HeaderBarAccessible
type instance O.AttributeList HeaderBarAccessible = HeaderBarAccessibleAttributeList
type HeaderBarAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HeaderBarAccessible = HeaderBarAccessibleSignalList
type HeaderBarAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

