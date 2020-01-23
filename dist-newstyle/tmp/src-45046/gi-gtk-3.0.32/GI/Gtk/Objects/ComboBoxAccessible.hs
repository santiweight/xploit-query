{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ComboBoxAccessible
    ( 

-- * Exported types
    ComboBoxAccessible(..)                  ,
    IsComboBoxAccessible                    ,
    toComboBoxAccessible                    ,
    noComboBoxAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveComboBoxAccessibleMethod         ,
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
newtype ComboBoxAccessible = ComboBoxAccessible (ManagedPtr ComboBoxAccessible)
    deriving (Eq)
foreign import ccall "gtk_combo_box_accessible_get_type"
    c_gtk_combo_box_accessible_get_type :: IO GType

instance GObject ComboBoxAccessible where
    gobjectType = c_gtk_combo_box_accessible_get_type
    

-- | Convert 'ComboBoxAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ComboBoxAccessible where
    toGValue o = do
        gtype <- c_gtk_combo_box_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ComboBoxAccessible)
        B.ManagedPtr.newObject ComboBoxAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ComboBoxAccessible`, for instance with `toComboBoxAccessible`.
class (GObject o, O.IsDescendantOf ComboBoxAccessible o) => IsComboBoxAccessible o
instance (GObject o, O.IsDescendantOf ComboBoxAccessible o) => IsComboBoxAccessible o

instance O.HasParentTypes ComboBoxAccessible
type instance O.ParentTypes ComboBoxAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `ComboBoxAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toComboBoxAccessible :: (MonadIO m, IsComboBoxAccessible o) => o -> m ComboBoxAccessible
toComboBoxAccessible = liftIO . unsafeCastTo ComboBoxAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ComboBoxAccessible`.
noComboBoxAccessible :: Maybe ComboBoxAccessible
noComboBoxAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveComboBoxAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveComboBoxAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveComboBoxAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveComboBoxAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveComboBoxAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveComboBoxAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveComboBoxAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveComboBoxAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveComboBoxAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveComboBoxAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveComboBoxAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveComboBoxAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveComboBoxAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveComboBoxAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveComboBoxAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveComboBoxAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveComboBoxAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveComboBoxAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveComboBoxAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveComboBoxAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveComboBoxAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveComboBoxAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveComboBoxAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveComboBoxAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveComboBoxAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveComboBoxAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveComboBoxAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveComboBoxAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveComboBoxAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveComboBoxAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveComboBoxAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveComboBoxAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveComboBoxAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveComboBoxAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveComboBoxAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveComboBoxAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveComboBoxAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveComboBoxAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveComboBoxAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveComboBoxAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveComboBoxAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveComboBoxAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveComboBoxAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveComboBoxAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveComboBoxAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveComboBoxAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveComboBoxAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveComboBoxAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveComboBoxAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveComboBoxAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveComboBoxAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveComboBoxAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveComboBoxAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveComboBoxAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveComboBoxAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveComboBoxAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveComboBoxAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveComboBoxAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveComboBoxAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveComboBoxAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveComboBoxAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveComboBoxAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveComboBoxAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveComboBoxAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveComboBoxAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveComboBoxAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveComboBoxAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveComboBoxAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveComboBoxAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveComboBoxAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveComboBoxAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveComboBoxAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveComboBoxAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveComboBoxAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveComboBoxAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveComboBoxAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveComboBoxAccessibleMethod t ComboBoxAccessible, O.MethodInfo info ComboBoxAccessible p) => OL.IsLabel t (ComboBoxAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ComboBoxAccessible
type instance O.AttributeList ComboBoxAccessible = ComboBoxAccessibleAttributeList
type ComboBoxAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ComboBoxAccessible = ComboBoxAccessibleSignalList
type ComboBoxAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

