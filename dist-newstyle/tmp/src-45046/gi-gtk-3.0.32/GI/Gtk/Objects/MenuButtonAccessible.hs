{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuButtonAccessible
    ( 

-- * Exported types
    MenuButtonAccessible(..)                ,
    IsMenuButtonAccessible                  ,
    toMenuButtonAccessible                  ,
    noMenuButtonAccessible                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuButtonAccessibleMethod       ,
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
import qualified GI.Atk.Interfaces.Image as Atk.Image
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ButtonAccessible as Gtk.ButtonAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToggleButtonAccessible as Gtk.ToggleButtonAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype MenuButtonAccessible = MenuButtonAccessible (ManagedPtr MenuButtonAccessible)
    deriving (Eq)
foreign import ccall "gtk_menu_button_accessible_get_type"
    c_gtk_menu_button_accessible_get_type :: IO GType

instance GObject MenuButtonAccessible where
    gobjectType = c_gtk_menu_button_accessible_get_type
    

-- | Convert 'MenuButtonAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuButtonAccessible where
    toGValue o = do
        gtype <- c_gtk_menu_button_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuButtonAccessible)
        B.ManagedPtr.newObject MenuButtonAccessible ptr
        
    

-- | Type class for types which can be safely cast to `MenuButtonAccessible`, for instance with `toMenuButtonAccessible`.
class (GObject o, O.IsDescendantOf MenuButtonAccessible o) => IsMenuButtonAccessible o
instance (GObject o, O.IsDescendantOf MenuButtonAccessible o) => IsMenuButtonAccessible o

instance O.HasParentTypes MenuButtonAccessible
type instance O.ParentTypes MenuButtonAccessible = '[Gtk.ToggleButtonAccessible.ToggleButtonAccessible, Gtk.ButtonAccessible.ButtonAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Image.Image]

-- | Cast to `MenuButtonAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuButtonAccessible :: (MonadIO m, IsMenuButtonAccessible o) => o -> m MenuButtonAccessible
toMenuButtonAccessible = liftIO . unsafeCastTo MenuButtonAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `MenuButtonAccessible`.
noMenuButtonAccessible :: Maybe MenuButtonAccessible
noMenuButtonAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuButtonAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuButtonAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveMenuButtonAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuButtonAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuButtonAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveMenuButtonAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveMenuButtonAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveMenuButtonAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuButtonAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuButtonAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuButtonAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveMenuButtonAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveMenuButtonAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuButtonAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuButtonAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuButtonAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveMenuButtonAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveMenuButtonAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuButtonAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveMenuButtonAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveMenuButtonAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveMenuButtonAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuButtonAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveMenuButtonAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveMenuButtonAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveMenuButtonAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveMenuButtonAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuButtonAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveMenuButtonAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveMenuButtonAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuButtonAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuButtonAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuButtonAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuButtonAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuButtonAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveMenuButtonAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveMenuButtonAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveMenuButtonAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuButtonAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveMenuButtonAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveMenuButtonAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveMenuButtonAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveMenuButtonAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveMenuButtonAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveMenuButtonAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveMenuButtonAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveMenuButtonAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveMenuButtonAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveMenuButtonAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveMenuButtonAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveMenuButtonAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveMenuButtonAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveMenuButtonAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveMenuButtonAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveMenuButtonAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveMenuButtonAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuButtonAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuButtonAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveMenuButtonAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveMenuButtonAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveMenuButtonAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveMenuButtonAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuButtonAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuButtonAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveMenuButtonAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveMenuButtonAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveMenuButtonAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveMenuButtonAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveMenuButtonAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveMenuButtonAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuButtonAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveMenuButtonAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveMenuButtonAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveMenuButtonAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuButtonAccessibleMethod t MenuButtonAccessible, O.MethodInfo info MenuButtonAccessible p) => OL.IsLabel t (MenuButtonAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuButtonAccessible
type instance O.AttributeList MenuButtonAccessible = MenuButtonAccessibleAttributeList
type MenuButtonAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuButtonAccessible = MenuButtonAccessibleSignalList
type MenuButtonAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

