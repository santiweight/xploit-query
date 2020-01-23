{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuItemAccessible
    ( 

-- * Exported types
    MenuItemAccessible(..)                  ,
    IsMenuItemAccessible                    ,
    toMenuItemAccessible                    ,
    noMenuItemAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuItemAccessibleMethod         ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype MenuItemAccessible = MenuItemAccessible (ManagedPtr MenuItemAccessible)
    deriving (Eq)
foreign import ccall "gtk_menu_item_accessible_get_type"
    c_gtk_menu_item_accessible_get_type :: IO GType

instance GObject MenuItemAccessible where
    gobjectType = c_gtk_menu_item_accessible_get_type
    

-- | Convert 'MenuItemAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuItemAccessible where
    toGValue o = do
        gtype <- c_gtk_menu_item_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuItemAccessible)
        B.ManagedPtr.newObject MenuItemAccessible ptr
        
    

-- | Type class for types which can be safely cast to `MenuItemAccessible`, for instance with `toMenuItemAccessible`.
class (GObject o, O.IsDescendantOf MenuItemAccessible o) => IsMenuItemAccessible o
instance (GObject o, O.IsDescendantOf MenuItemAccessible o) => IsMenuItemAccessible o

instance O.HasParentTypes MenuItemAccessible
type instance O.ParentTypes MenuItemAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `MenuItemAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuItemAccessible :: (MonadIO m, IsMenuItemAccessible o) => o -> m MenuItemAccessible
toMenuItemAccessible = liftIO . unsafeCastTo MenuItemAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `MenuItemAccessible`.
noMenuItemAccessible :: Maybe MenuItemAccessible
noMenuItemAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuItemAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuItemAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveMenuItemAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveMenuItemAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuItemAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuItemAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveMenuItemAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveMenuItemAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveMenuItemAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveMenuItemAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuItemAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuItemAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuItemAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveMenuItemAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveMenuItemAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveMenuItemAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuItemAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuItemAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuItemAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveMenuItemAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveMenuItemAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuItemAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveMenuItemAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveMenuItemAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveMenuItemAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveMenuItemAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuItemAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveMenuItemAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveMenuItemAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveMenuItemAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveMenuItemAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveMenuItemAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuItemAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveMenuItemAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveMenuItemAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveMenuItemAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuItemAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuItemAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuItemAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuItemAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuItemAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveMenuItemAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveMenuItemAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveMenuItemAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuItemAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveMenuItemAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveMenuItemAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveMenuItemAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveMenuItemAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveMenuItemAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveMenuItemAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveMenuItemAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveMenuItemAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveMenuItemAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveMenuItemAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveMenuItemAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveMenuItemAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveMenuItemAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuItemAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuItemAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveMenuItemAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveMenuItemAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveMenuItemAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveMenuItemAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveMenuItemAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuItemAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuItemAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveMenuItemAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveMenuItemAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveMenuItemAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveMenuItemAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveMenuItemAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuItemAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveMenuItemAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveMenuItemAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveMenuItemAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuItemAccessibleMethod t MenuItemAccessible, O.MethodInfo info MenuItemAccessible p) => OL.IsLabel t (MenuItemAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuItemAccessible
type instance O.AttributeList MenuItemAccessible = MenuItemAccessibleAttributeList
type MenuItemAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuItemAccessible = MenuItemAccessibleSignalList
type MenuItemAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

