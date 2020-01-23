{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuAccessible
    ( 

-- * Exported types
    MenuAccessible(..)                      ,
    IsMenuAccessible                        ,
    toMenuAccessible                        ,
    noMenuAccessible                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuAccessibleMethod             ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuShellAccessible as Gtk.MenuShellAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype MenuAccessible = MenuAccessible (ManagedPtr MenuAccessible)
    deriving (Eq)
foreign import ccall "gtk_menu_accessible_get_type"
    c_gtk_menu_accessible_get_type :: IO GType

instance GObject MenuAccessible where
    gobjectType = c_gtk_menu_accessible_get_type
    

-- | Convert 'MenuAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuAccessible where
    toGValue o = do
        gtype <- c_gtk_menu_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuAccessible)
        B.ManagedPtr.newObject MenuAccessible ptr
        
    

-- | Type class for types which can be safely cast to `MenuAccessible`, for instance with `toMenuAccessible`.
class (GObject o, O.IsDescendantOf MenuAccessible o) => IsMenuAccessible o
instance (GObject o, O.IsDescendantOf MenuAccessible o) => IsMenuAccessible o

instance O.HasParentTypes MenuAccessible
type instance O.ParentTypes MenuAccessible = '[Gtk.MenuShellAccessible.MenuShellAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `MenuAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuAccessible :: (MonadIO m, IsMenuAccessible o) => o -> m MenuAccessible
toMenuAccessible = liftIO . unsafeCastTo MenuAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `MenuAccessible`.
noMenuAccessible :: Maybe MenuAccessible
noMenuAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveMenuAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveMenuAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveMenuAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveMenuAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveMenuAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveMenuAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveMenuAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveMenuAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveMenuAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveMenuAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveMenuAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveMenuAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveMenuAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveMenuAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveMenuAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveMenuAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveMenuAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveMenuAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveMenuAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveMenuAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveMenuAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveMenuAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveMenuAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveMenuAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveMenuAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveMenuAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveMenuAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveMenuAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveMenuAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveMenuAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveMenuAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveMenuAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveMenuAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveMenuAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveMenuAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveMenuAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveMenuAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveMenuAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveMenuAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveMenuAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveMenuAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveMenuAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveMenuAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveMenuAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveMenuAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveMenuAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveMenuAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveMenuAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuAccessibleMethod t MenuAccessible, O.MethodInfo info MenuAccessible p) => OL.IsLabel t (MenuAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuAccessible
type instance O.AttributeList MenuAccessible = MenuAccessibleAttributeList
type MenuAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuAccessible = MenuAccessibleSignalList
type MenuAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

