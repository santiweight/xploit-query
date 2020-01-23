{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuShellAccessible
    ( 

-- * Exported types
    MenuShellAccessible(..)                 ,
    IsMenuShellAccessible                   ,
    toMenuShellAccessible                   ,
    noMenuShellAccessible                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuShellAccessibleMethod        ,
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
newtype MenuShellAccessible = MenuShellAccessible (ManagedPtr MenuShellAccessible)
    deriving (Eq)
foreign import ccall "gtk_menu_shell_accessible_get_type"
    c_gtk_menu_shell_accessible_get_type :: IO GType

instance GObject MenuShellAccessible where
    gobjectType = c_gtk_menu_shell_accessible_get_type
    

-- | Convert 'MenuShellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuShellAccessible where
    toGValue o = do
        gtype <- c_gtk_menu_shell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuShellAccessible)
        B.ManagedPtr.newObject MenuShellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `MenuShellAccessible`, for instance with `toMenuShellAccessible`.
class (GObject o, O.IsDescendantOf MenuShellAccessible o) => IsMenuShellAccessible o
instance (GObject o, O.IsDescendantOf MenuShellAccessible o) => IsMenuShellAccessible o

instance O.HasParentTypes MenuShellAccessible
type instance O.ParentTypes MenuShellAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `MenuShellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuShellAccessible :: (MonadIO m, IsMenuShellAccessible o) => o -> m MenuShellAccessible
toMenuShellAccessible = liftIO . unsafeCastTo MenuShellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `MenuShellAccessible`.
noMenuShellAccessible :: Maybe MenuShellAccessible
noMenuShellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuShellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuShellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveMenuShellAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveMenuShellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuShellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuShellAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveMenuShellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveMenuShellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveMenuShellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuShellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuShellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuShellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveMenuShellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveMenuShellAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveMenuShellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuShellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuShellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuShellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveMenuShellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveMenuShellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuShellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveMenuShellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveMenuShellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveMenuShellAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveMenuShellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuShellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveMenuShellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveMenuShellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveMenuShellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveMenuShellAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveMenuShellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuShellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveMenuShellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveMenuShellAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveMenuShellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuShellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuShellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuShellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuShellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuShellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveMenuShellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveMenuShellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveMenuShellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuShellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveMenuShellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveMenuShellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveMenuShellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveMenuShellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveMenuShellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveMenuShellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveMenuShellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveMenuShellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveMenuShellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveMenuShellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuShellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuShellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveMenuShellAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveMenuShellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveMenuShellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveMenuShellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveMenuShellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuShellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuShellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveMenuShellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveMenuShellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveMenuShellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveMenuShellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveMenuShellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuShellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveMenuShellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveMenuShellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveMenuShellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuShellAccessibleMethod t MenuShellAccessible, O.MethodInfo info MenuShellAccessible p) => OL.IsLabel t (MenuShellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuShellAccessible
type instance O.AttributeList MenuShellAccessible = MenuShellAccessibleAttributeList
type MenuShellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuShellAccessible = MenuShellAccessibleSignalList
type MenuShellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

