{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ScrolledWindowAccessible
    ( 

-- * Exported types
    ScrolledWindowAccessible(..)            ,
    IsScrolledWindowAccessible              ,
    toScrolledWindowAccessible              ,
    noScrolledWindowAccessible              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScrolledWindowAccessibleMethod   ,
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
newtype ScrolledWindowAccessible = ScrolledWindowAccessible (ManagedPtr ScrolledWindowAccessible)
    deriving (Eq)
foreign import ccall "gtk_scrolled_window_accessible_get_type"
    c_gtk_scrolled_window_accessible_get_type :: IO GType

instance GObject ScrolledWindowAccessible where
    gobjectType = c_gtk_scrolled_window_accessible_get_type
    

-- | Convert 'ScrolledWindowAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ScrolledWindowAccessible where
    toGValue o = do
        gtype <- c_gtk_scrolled_window_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ScrolledWindowAccessible)
        B.ManagedPtr.newObject ScrolledWindowAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ScrolledWindowAccessible`, for instance with `toScrolledWindowAccessible`.
class (GObject o, O.IsDescendantOf ScrolledWindowAccessible o) => IsScrolledWindowAccessible o
instance (GObject o, O.IsDescendantOf ScrolledWindowAccessible o) => IsScrolledWindowAccessible o

instance O.HasParentTypes ScrolledWindowAccessible
type instance O.ParentTypes ScrolledWindowAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `ScrolledWindowAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScrolledWindowAccessible :: (MonadIO m, IsScrolledWindowAccessible o) => o -> m ScrolledWindowAccessible
toScrolledWindowAccessible = liftIO . unsafeCastTo ScrolledWindowAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ScrolledWindowAccessible`.
noScrolledWindowAccessible :: Maybe ScrolledWindowAccessible
noScrolledWindowAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveScrolledWindowAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveScrolledWindowAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveScrolledWindowAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScrolledWindowAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScrolledWindowAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveScrolledWindowAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveScrolledWindowAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScrolledWindowAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScrolledWindowAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScrolledWindowAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveScrolledWindowAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveScrolledWindowAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScrolledWindowAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScrolledWindowAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScrolledWindowAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveScrolledWindowAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveScrolledWindowAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScrolledWindowAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveScrolledWindowAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveScrolledWindowAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveScrolledWindowAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScrolledWindowAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveScrolledWindowAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveScrolledWindowAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveScrolledWindowAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveScrolledWindowAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScrolledWindowAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveScrolledWindowAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveScrolledWindowAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScrolledWindowAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScrolledWindowAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScrolledWindowAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScrolledWindowAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScrolledWindowAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveScrolledWindowAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveScrolledWindowAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveScrolledWindowAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScrolledWindowAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveScrolledWindowAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveScrolledWindowAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveScrolledWindowAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveScrolledWindowAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveScrolledWindowAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveScrolledWindowAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveScrolledWindowAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveScrolledWindowAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveScrolledWindowAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveScrolledWindowAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScrolledWindowAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScrolledWindowAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveScrolledWindowAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveScrolledWindowAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveScrolledWindowAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveScrolledWindowAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScrolledWindowAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScrolledWindowAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveScrolledWindowAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveScrolledWindowAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveScrolledWindowAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveScrolledWindowAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveScrolledWindowAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScrolledWindowAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveScrolledWindowAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveScrolledWindowAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveScrolledWindowAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScrolledWindowAccessibleMethod t ScrolledWindowAccessible, O.MethodInfo info ScrolledWindowAccessible p) => OL.IsLabel t (ScrolledWindowAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScrolledWindowAccessible
type instance O.AttributeList ScrolledWindowAccessible = ScrolledWindowAccessibleAttributeList
type ScrolledWindowAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ScrolledWindowAccessible = ScrolledWindowAccessibleSignalList
type ScrolledWindowAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

