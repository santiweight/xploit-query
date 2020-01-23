{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FrameAccessible
    ( 

-- * Exported types
    FrameAccessible(..)                     ,
    IsFrameAccessible                       ,
    toFrameAccessible                       ,
    noFrameAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFrameAccessibleMethod            ,
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
newtype FrameAccessible = FrameAccessible (ManagedPtr FrameAccessible)
    deriving (Eq)
foreign import ccall "gtk_frame_accessible_get_type"
    c_gtk_frame_accessible_get_type :: IO GType

instance GObject FrameAccessible where
    gobjectType = c_gtk_frame_accessible_get_type
    

-- | Convert 'FrameAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FrameAccessible where
    toGValue o = do
        gtype <- c_gtk_frame_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FrameAccessible)
        B.ManagedPtr.newObject FrameAccessible ptr
        
    

-- | Type class for types which can be safely cast to `FrameAccessible`, for instance with `toFrameAccessible`.
class (GObject o, O.IsDescendantOf FrameAccessible o) => IsFrameAccessible o
instance (GObject o, O.IsDescendantOf FrameAccessible o) => IsFrameAccessible o

instance O.HasParentTypes FrameAccessible
type instance O.ParentTypes FrameAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `FrameAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFrameAccessible :: (MonadIO m, IsFrameAccessible o) => o -> m FrameAccessible
toFrameAccessible = liftIO . unsafeCastTo FrameAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `FrameAccessible`.
noFrameAccessible :: Maybe FrameAccessible
noFrameAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFrameAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveFrameAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveFrameAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFrameAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFrameAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveFrameAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveFrameAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFrameAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFrameAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFrameAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveFrameAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveFrameAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFrameAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFrameAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFrameAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveFrameAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveFrameAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFrameAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveFrameAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveFrameAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveFrameAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFrameAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveFrameAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveFrameAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveFrameAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveFrameAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFrameAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveFrameAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveFrameAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFrameAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFrameAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFrameAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFrameAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFrameAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveFrameAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveFrameAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveFrameAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFrameAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveFrameAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveFrameAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveFrameAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveFrameAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveFrameAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveFrameAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveFrameAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveFrameAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveFrameAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveFrameAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFrameAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFrameAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveFrameAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveFrameAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveFrameAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveFrameAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFrameAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFrameAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveFrameAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveFrameAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveFrameAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveFrameAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveFrameAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFrameAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveFrameAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveFrameAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveFrameAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFrameAccessibleMethod t FrameAccessible, O.MethodInfo info FrameAccessible p) => OL.IsLabel t (FrameAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FrameAccessible
type instance O.AttributeList FrameAccessible = FrameAccessibleAttributeList
type FrameAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FrameAccessible = FrameAccessibleSignalList
type FrameAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

