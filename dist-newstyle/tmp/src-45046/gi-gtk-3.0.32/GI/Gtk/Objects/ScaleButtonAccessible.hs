{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ScaleButtonAccessible
    ( 

-- * Exported types
    ScaleButtonAccessible(..)               ,
    IsScaleButtonAccessible                 ,
    toScaleButtonAccessible                 ,
    noScaleButtonAccessible                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScaleButtonAccessibleMethod      ,
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
import qualified GI.Atk.Interfaces.Value as Atk.Value
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ButtonAccessible as Gtk.ButtonAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ScaleButtonAccessible = ScaleButtonAccessible (ManagedPtr ScaleButtonAccessible)
    deriving (Eq)
foreign import ccall "gtk_scale_button_accessible_get_type"
    c_gtk_scale_button_accessible_get_type :: IO GType

instance GObject ScaleButtonAccessible where
    gobjectType = c_gtk_scale_button_accessible_get_type
    

-- | Convert 'ScaleButtonAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ScaleButtonAccessible where
    toGValue o = do
        gtype <- c_gtk_scale_button_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ScaleButtonAccessible)
        B.ManagedPtr.newObject ScaleButtonAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ScaleButtonAccessible`, for instance with `toScaleButtonAccessible`.
class (GObject o, O.IsDescendantOf ScaleButtonAccessible o) => IsScaleButtonAccessible o
instance (GObject o, O.IsDescendantOf ScaleButtonAccessible o) => IsScaleButtonAccessible o

instance O.HasParentTypes ScaleButtonAccessible
type instance O.ParentTypes ScaleButtonAccessible = '[Gtk.ButtonAccessible.ButtonAccessible, Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Image.Image, Atk.Value.Value]

-- | Cast to `ScaleButtonAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScaleButtonAccessible :: (MonadIO m, IsScaleButtonAccessible o) => o -> m ScaleButtonAccessible
toScaleButtonAccessible = liftIO . unsafeCastTo ScaleButtonAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ScaleButtonAccessible`.
noScaleButtonAccessible :: Maybe ScaleButtonAccessible
noScaleButtonAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveScaleButtonAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveScaleButtonAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveScaleButtonAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScaleButtonAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScaleButtonAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveScaleButtonAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveScaleButtonAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveScaleButtonAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScaleButtonAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScaleButtonAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScaleButtonAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveScaleButtonAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveScaleButtonAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScaleButtonAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScaleButtonAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScaleButtonAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveScaleButtonAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveScaleButtonAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScaleButtonAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveScaleButtonAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveScaleButtonAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveScaleButtonAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScaleButtonAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveScaleButtonAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveScaleButtonAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveScaleButtonAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveScaleButtonAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScaleButtonAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveScaleButtonAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveScaleButtonAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScaleButtonAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScaleButtonAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScaleButtonAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScaleButtonAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScaleButtonAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveScaleButtonAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveScaleButtonAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveScaleButtonAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolveScaleButtonAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScaleButtonAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveScaleButtonAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveScaleButtonAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveScaleButtonAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveScaleButtonAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveScaleButtonAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveScaleButtonAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolveScaleButtonAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveScaleButtonAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveScaleButtonAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveScaleButtonAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveScaleButtonAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolveScaleButtonAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveScaleButtonAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolveScaleButtonAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolveScaleButtonAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveScaleButtonAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveScaleButtonAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveScaleButtonAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveScaleButtonAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveScaleButtonAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveScaleButtonAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScaleButtonAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScaleButtonAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolveScaleButtonAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveScaleButtonAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveScaleButtonAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolveScaleButtonAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolveScaleButtonAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveScaleButtonAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveScaleButtonAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolveScaleButtonAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScaleButtonAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScaleButtonAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveScaleButtonAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveScaleButtonAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveScaleButtonAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveScaleButtonAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveScaleButtonAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveScaleButtonAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScaleButtonAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveScaleButtonAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveScaleButtonAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolveScaleButtonAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveScaleButtonAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScaleButtonAccessibleMethod t ScaleButtonAccessible, O.MethodInfo info ScaleButtonAccessible p) => OL.IsLabel t (ScaleButtonAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScaleButtonAccessible
type instance O.AttributeList ScaleButtonAccessible = ScaleButtonAccessibleAttributeList
type ScaleButtonAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ScaleButtonAccessible = ScaleButtonAccessibleSignalList
type ScaleButtonAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

