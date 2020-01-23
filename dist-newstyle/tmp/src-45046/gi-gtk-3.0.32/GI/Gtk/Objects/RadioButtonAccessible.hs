{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RadioButtonAccessible
    ( 

-- * Exported types
    RadioButtonAccessible(..)               ,
    IsRadioButtonAccessible                 ,
    toRadioButtonAccessible                 ,
    noRadioButtonAccessible                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRadioButtonAccessibleMethod      ,
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
newtype RadioButtonAccessible = RadioButtonAccessible (ManagedPtr RadioButtonAccessible)
    deriving (Eq)
foreign import ccall "gtk_radio_button_accessible_get_type"
    c_gtk_radio_button_accessible_get_type :: IO GType

instance GObject RadioButtonAccessible where
    gobjectType = c_gtk_radio_button_accessible_get_type
    

-- | Convert 'RadioButtonAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RadioButtonAccessible where
    toGValue o = do
        gtype <- c_gtk_radio_button_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RadioButtonAccessible)
        B.ManagedPtr.newObject RadioButtonAccessible ptr
        
    

-- | Type class for types which can be safely cast to `RadioButtonAccessible`, for instance with `toRadioButtonAccessible`.
class (GObject o, O.IsDescendantOf RadioButtonAccessible o) => IsRadioButtonAccessible o
instance (GObject o, O.IsDescendantOf RadioButtonAccessible o) => IsRadioButtonAccessible o

instance O.HasParentTypes RadioButtonAccessible
type instance O.ParentTypes RadioButtonAccessible = '[Gtk.ToggleButtonAccessible.ToggleButtonAccessible, Gtk.ButtonAccessible.ButtonAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Image.Image]

-- | Cast to `RadioButtonAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRadioButtonAccessible :: (MonadIO m, IsRadioButtonAccessible o) => o -> m RadioButtonAccessible
toRadioButtonAccessible = liftIO . unsafeCastTo RadioButtonAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `RadioButtonAccessible`.
noRadioButtonAccessible :: Maybe RadioButtonAccessible
noRadioButtonAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRadioButtonAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveRadioButtonAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveRadioButtonAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRadioButtonAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRadioButtonAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveRadioButtonAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveRadioButtonAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveRadioButtonAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRadioButtonAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRadioButtonAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRadioButtonAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveRadioButtonAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveRadioButtonAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRadioButtonAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRadioButtonAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRadioButtonAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveRadioButtonAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveRadioButtonAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRadioButtonAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveRadioButtonAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveRadioButtonAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveRadioButtonAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRadioButtonAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveRadioButtonAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveRadioButtonAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveRadioButtonAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveRadioButtonAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRadioButtonAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveRadioButtonAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveRadioButtonAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRadioButtonAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRadioButtonAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRadioButtonAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRadioButtonAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRadioButtonAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveRadioButtonAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveRadioButtonAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveRadioButtonAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRadioButtonAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveRadioButtonAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveRadioButtonAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveRadioButtonAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveRadioButtonAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveRadioButtonAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveRadioButtonAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveRadioButtonAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveRadioButtonAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveRadioButtonAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveRadioButtonAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveRadioButtonAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveRadioButtonAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveRadioButtonAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveRadioButtonAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveRadioButtonAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveRadioButtonAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveRadioButtonAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRadioButtonAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRadioButtonAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveRadioButtonAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveRadioButtonAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveRadioButtonAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveRadioButtonAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRadioButtonAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRadioButtonAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveRadioButtonAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveRadioButtonAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveRadioButtonAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveRadioButtonAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveRadioButtonAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveRadioButtonAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRadioButtonAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveRadioButtonAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveRadioButtonAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveRadioButtonAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRadioButtonAccessibleMethod t RadioButtonAccessible, O.MethodInfo info RadioButtonAccessible p) => OL.IsLabel t (RadioButtonAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RadioButtonAccessible
type instance O.AttributeList RadioButtonAccessible = RadioButtonAccessibleAttributeList
type RadioButtonAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RadioButtonAccessible = RadioButtonAccessibleSignalList
type RadioButtonAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

