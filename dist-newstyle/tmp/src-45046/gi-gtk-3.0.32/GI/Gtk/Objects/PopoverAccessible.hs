{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.PopoverAccessible
    ( 

-- * Exported types
    PopoverAccessible(..)                   ,
    IsPopoverAccessible                     ,
    toPopoverAccessible                     ,
    noPopoverAccessible                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePopoverAccessibleMethod          ,
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
newtype PopoverAccessible = PopoverAccessible (ManagedPtr PopoverAccessible)
    deriving (Eq)
foreign import ccall "gtk_popover_accessible_get_type"
    c_gtk_popover_accessible_get_type :: IO GType

instance GObject PopoverAccessible where
    gobjectType = c_gtk_popover_accessible_get_type
    

-- | Convert 'PopoverAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue PopoverAccessible where
    toGValue o = do
        gtype <- c_gtk_popover_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr PopoverAccessible)
        B.ManagedPtr.newObject PopoverAccessible ptr
        
    

-- | Type class for types which can be safely cast to `PopoverAccessible`, for instance with `toPopoverAccessible`.
class (GObject o, O.IsDescendantOf PopoverAccessible o) => IsPopoverAccessible o
instance (GObject o, O.IsDescendantOf PopoverAccessible o) => IsPopoverAccessible o

instance O.HasParentTypes PopoverAccessible
type instance O.ParentTypes PopoverAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `PopoverAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPopoverAccessible :: (MonadIO m, IsPopoverAccessible o) => o -> m PopoverAccessible
toPopoverAccessible = liftIO . unsafeCastTo PopoverAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `PopoverAccessible`.
noPopoverAccessible :: Maybe PopoverAccessible
noPopoverAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolvePopoverAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolvePopoverAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolvePopoverAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePopoverAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePopoverAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolvePopoverAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolvePopoverAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePopoverAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePopoverAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePopoverAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolvePopoverAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolvePopoverAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePopoverAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePopoverAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePopoverAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolvePopoverAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolvePopoverAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePopoverAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolvePopoverAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolvePopoverAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolvePopoverAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePopoverAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolvePopoverAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolvePopoverAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolvePopoverAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolvePopoverAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePopoverAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolvePopoverAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolvePopoverAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePopoverAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePopoverAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePopoverAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePopoverAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePopoverAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolvePopoverAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolvePopoverAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolvePopoverAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePopoverAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolvePopoverAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolvePopoverAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolvePopoverAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolvePopoverAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolvePopoverAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolvePopoverAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolvePopoverAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolvePopoverAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolvePopoverAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolvePopoverAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePopoverAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePopoverAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolvePopoverAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolvePopoverAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolvePopoverAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolvePopoverAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePopoverAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePopoverAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolvePopoverAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolvePopoverAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolvePopoverAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolvePopoverAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolvePopoverAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePopoverAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolvePopoverAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolvePopoverAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolvePopoverAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePopoverAccessibleMethod t PopoverAccessible, O.MethodInfo info PopoverAccessible p) => OL.IsLabel t (PopoverAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PopoverAccessible
type instance O.AttributeList PopoverAccessible = PopoverAccessibleAttributeList
type PopoverAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PopoverAccessible = PopoverAccessibleSignalList
type PopoverAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

