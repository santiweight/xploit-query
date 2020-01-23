{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.IconViewAccessible
    ( 

-- * Exported types
    IconViewAccessible(..)                  ,
    IsIconViewAccessible                    ,
    toIconViewAccessible                    ,
    noIconViewAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIconViewAccessibleMethod         ,
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
newtype IconViewAccessible = IconViewAccessible (ManagedPtr IconViewAccessible)
    deriving (Eq)
foreign import ccall "gtk_icon_view_accessible_get_type"
    c_gtk_icon_view_accessible_get_type :: IO GType

instance GObject IconViewAccessible where
    gobjectType = c_gtk_icon_view_accessible_get_type
    

-- | Convert 'IconViewAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IconViewAccessible where
    toGValue o = do
        gtype <- c_gtk_icon_view_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IconViewAccessible)
        B.ManagedPtr.newObject IconViewAccessible ptr
        
    

-- | Type class for types which can be safely cast to `IconViewAccessible`, for instance with `toIconViewAccessible`.
class (GObject o, O.IsDescendantOf IconViewAccessible o) => IsIconViewAccessible o
instance (GObject o, O.IsDescendantOf IconViewAccessible o) => IsIconViewAccessible o

instance O.HasParentTypes IconViewAccessible
type instance O.ParentTypes IconViewAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `IconViewAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIconViewAccessible :: (MonadIO m, IsIconViewAccessible o) => o -> m IconViewAccessible
toIconViewAccessible = liftIO . unsafeCastTo IconViewAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `IconViewAccessible`.
noIconViewAccessible :: Maybe IconViewAccessible
noIconViewAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIconViewAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveIconViewAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveIconViewAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveIconViewAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIconViewAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIconViewAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveIconViewAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveIconViewAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveIconViewAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIconViewAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIconViewAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIconViewAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveIconViewAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveIconViewAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveIconViewAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIconViewAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIconViewAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIconViewAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveIconViewAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveIconViewAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIconViewAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveIconViewAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveIconViewAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveIconViewAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveIconViewAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIconViewAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveIconViewAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveIconViewAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveIconViewAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveIconViewAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveIconViewAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIconViewAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveIconViewAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveIconViewAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveIconViewAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIconViewAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIconViewAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIconViewAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIconViewAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIconViewAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveIconViewAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveIconViewAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveIconViewAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIconViewAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveIconViewAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveIconViewAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveIconViewAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveIconViewAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveIconViewAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveIconViewAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveIconViewAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveIconViewAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveIconViewAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveIconViewAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIconViewAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIconViewAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveIconViewAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveIconViewAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveIconViewAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveIconViewAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveIconViewAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIconViewAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIconViewAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveIconViewAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveIconViewAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveIconViewAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveIconViewAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveIconViewAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIconViewAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveIconViewAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveIconViewAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveIconViewAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIconViewAccessibleMethod t IconViewAccessible, O.MethodInfo info IconViewAccessible p) => OL.IsLabel t (IconViewAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IconViewAccessible
type instance O.AttributeList IconViewAccessible = IconViewAccessibleAttributeList
type IconViewAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IconViewAccessible = IconViewAccessibleSignalList
type IconViewAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

