{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StackAccessible
    ( 

-- * Exported types
    StackAccessible(..)                     ,
    IsStackAccessible                       ,
    toStackAccessible                       ,
    noStackAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStackAccessibleMethod            ,
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
newtype StackAccessible = StackAccessible (ManagedPtr StackAccessible)
    deriving (Eq)
foreign import ccall "gtk_stack_accessible_get_type"
    c_gtk_stack_accessible_get_type :: IO GType

instance GObject StackAccessible where
    gobjectType = c_gtk_stack_accessible_get_type
    

-- | Convert 'StackAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StackAccessible where
    toGValue o = do
        gtype <- c_gtk_stack_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StackAccessible)
        B.ManagedPtr.newObject StackAccessible ptr
        
    

-- | Type class for types which can be safely cast to `StackAccessible`, for instance with `toStackAccessible`.
class (GObject o, O.IsDescendantOf StackAccessible o) => IsStackAccessible o
instance (GObject o, O.IsDescendantOf StackAccessible o) => IsStackAccessible o

instance O.HasParentTypes StackAccessible
type instance O.ParentTypes StackAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `StackAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStackAccessible :: (MonadIO m, IsStackAccessible o) => o -> m StackAccessible
toStackAccessible = liftIO . unsafeCastTo StackAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `StackAccessible`.
noStackAccessible :: Maybe StackAccessible
noStackAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStackAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveStackAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveStackAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStackAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStackAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveStackAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveStackAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStackAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStackAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStackAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveStackAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveStackAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStackAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStackAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStackAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveStackAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveStackAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStackAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveStackAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveStackAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveStackAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStackAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveStackAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveStackAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveStackAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveStackAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStackAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveStackAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveStackAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStackAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStackAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStackAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStackAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStackAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveStackAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveStackAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveStackAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStackAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveStackAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveStackAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveStackAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveStackAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveStackAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveStackAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveStackAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveStackAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveStackAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveStackAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStackAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStackAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveStackAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveStackAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveStackAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveStackAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStackAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStackAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveStackAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveStackAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveStackAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveStackAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveStackAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStackAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveStackAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveStackAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveStackAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStackAccessibleMethod t StackAccessible, O.MethodInfo info StackAccessible p) => OL.IsLabel t (StackAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StackAccessible
type instance O.AttributeList StackAccessible = StackAccessibleAttributeList
type StackAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StackAccessible = StackAccessibleSignalList
type StackAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

