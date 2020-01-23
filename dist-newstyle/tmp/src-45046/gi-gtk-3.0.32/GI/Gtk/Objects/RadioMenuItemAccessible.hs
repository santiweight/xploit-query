{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RadioMenuItemAccessible
    ( 

-- * Exported types
    RadioMenuItemAccessible(..)             ,
    IsRadioMenuItemAccessible               ,
    toRadioMenuItemAccessible               ,
    noRadioMenuItemAccessible               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRadioMenuItemAccessibleMethod    ,
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
import qualified GI.Atk.Interfaces.Selection as Atk.Selection
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.CheckMenuItemAccessible as Gtk.CheckMenuItemAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItemAccessible as Gtk.MenuItemAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype RadioMenuItemAccessible = RadioMenuItemAccessible (ManagedPtr RadioMenuItemAccessible)
    deriving (Eq)
foreign import ccall "gtk_radio_menu_item_accessible_get_type"
    c_gtk_radio_menu_item_accessible_get_type :: IO GType

instance GObject RadioMenuItemAccessible where
    gobjectType = c_gtk_radio_menu_item_accessible_get_type
    

-- | Convert 'RadioMenuItemAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RadioMenuItemAccessible where
    toGValue o = do
        gtype <- c_gtk_radio_menu_item_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RadioMenuItemAccessible)
        B.ManagedPtr.newObject RadioMenuItemAccessible ptr
        
    

-- | Type class for types which can be safely cast to `RadioMenuItemAccessible`, for instance with `toRadioMenuItemAccessible`.
class (GObject o, O.IsDescendantOf RadioMenuItemAccessible o) => IsRadioMenuItemAccessible o
instance (GObject o, O.IsDescendantOf RadioMenuItemAccessible o) => IsRadioMenuItemAccessible o

instance O.HasParentTypes RadioMenuItemAccessible
type instance O.ParentTypes RadioMenuItemAccessible = '[Gtk.CheckMenuItemAccessible.CheckMenuItemAccessible, Gtk.MenuItemAccessible.MenuItemAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `RadioMenuItemAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRadioMenuItemAccessible :: (MonadIO m, IsRadioMenuItemAccessible o) => o -> m RadioMenuItemAccessible
toRadioMenuItemAccessible = liftIO . unsafeCastTo RadioMenuItemAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `RadioMenuItemAccessible`.
noRadioMenuItemAccessible :: Maybe RadioMenuItemAccessible
noRadioMenuItemAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRadioMenuItemAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveRadioMenuItemAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveRadioMenuItemAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRadioMenuItemAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveRadioMenuItemAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveRadioMenuItemAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRadioMenuItemAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRadioMenuItemAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveRadioMenuItemAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveRadioMenuItemAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveRadioMenuItemAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRadioMenuItemAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRadioMenuItemAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveRadioMenuItemAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveRadioMenuItemAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRadioMenuItemAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveRadioMenuItemAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveRadioMenuItemAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveRadioMenuItemAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveRadioMenuItemAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRadioMenuItemAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveRadioMenuItemAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveRadioMenuItemAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRadioMenuItemAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRadioMenuItemAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRadioMenuItemAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveRadioMenuItemAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveRadioMenuItemAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveRadioMenuItemAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRadioMenuItemAccessibleMethod t RadioMenuItemAccessible, O.MethodInfo info RadioMenuItemAccessible p) => OL.IsLabel t (RadioMenuItemAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RadioMenuItemAccessible
type instance O.AttributeList RadioMenuItemAccessible = RadioMenuItemAccessibleAttributeList
type RadioMenuItemAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RadioMenuItemAccessible = RadioMenuItemAccessibleSignalList
type RadioMenuItemAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

