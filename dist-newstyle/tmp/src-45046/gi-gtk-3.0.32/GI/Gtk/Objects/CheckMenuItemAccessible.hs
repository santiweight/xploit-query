{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CheckMenuItemAccessible
    ( 

-- * Exported types
    CheckMenuItemAccessible(..)             ,
    IsCheckMenuItemAccessible               ,
    toCheckMenuItemAccessible               ,
    noCheckMenuItemAccessible               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCheckMenuItemAccessibleMethod    ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItemAccessible as Gtk.MenuItemAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype CheckMenuItemAccessible = CheckMenuItemAccessible (ManagedPtr CheckMenuItemAccessible)
    deriving (Eq)
foreign import ccall "gtk_check_menu_item_accessible_get_type"
    c_gtk_check_menu_item_accessible_get_type :: IO GType

instance GObject CheckMenuItemAccessible where
    gobjectType = c_gtk_check_menu_item_accessible_get_type
    

-- | Convert 'CheckMenuItemAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CheckMenuItemAccessible where
    toGValue o = do
        gtype <- c_gtk_check_menu_item_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CheckMenuItemAccessible)
        B.ManagedPtr.newObject CheckMenuItemAccessible ptr
        
    

-- | Type class for types which can be safely cast to `CheckMenuItemAccessible`, for instance with `toCheckMenuItemAccessible`.
class (GObject o, O.IsDescendantOf CheckMenuItemAccessible o) => IsCheckMenuItemAccessible o
instance (GObject o, O.IsDescendantOf CheckMenuItemAccessible o) => IsCheckMenuItemAccessible o

instance O.HasParentTypes CheckMenuItemAccessible
type instance O.ParentTypes CheckMenuItemAccessible = '[Gtk.MenuItemAccessible.MenuItemAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `CheckMenuItemAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCheckMenuItemAccessible :: (MonadIO m, IsCheckMenuItemAccessible o) => o -> m CheckMenuItemAccessible
toCheckMenuItemAccessible = liftIO . unsafeCastTo CheckMenuItemAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `CheckMenuItemAccessible`.
noCheckMenuItemAccessible :: Maybe CheckMenuItemAccessible
noCheckMenuItemAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCheckMenuItemAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveCheckMenuItemAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveCheckMenuItemAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCheckMenuItemAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveCheckMenuItemAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveCheckMenuItemAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCheckMenuItemAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCheckMenuItemAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveCheckMenuItemAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveCheckMenuItemAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveCheckMenuItemAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCheckMenuItemAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCheckMenuItemAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveCheckMenuItemAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveCheckMenuItemAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCheckMenuItemAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveCheckMenuItemAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveCheckMenuItemAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveCheckMenuItemAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveCheckMenuItemAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCheckMenuItemAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveCheckMenuItemAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveCheckMenuItemAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCheckMenuItemAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCheckMenuItemAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCheckMenuItemAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveCheckMenuItemAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveCheckMenuItemAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveCheckMenuItemAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCheckMenuItemAccessibleMethod t CheckMenuItemAccessible, O.MethodInfo info CheckMenuItemAccessible p) => OL.IsLabel t (CheckMenuItemAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CheckMenuItemAccessible
type instance O.AttributeList CheckMenuItemAccessible = CheckMenuItemAccessibleAttributeList
type CheckMenuItemAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CheckMenuItemAccessible = CheckMenuItemAccessibleSignalList
type CheckMenuItemAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

