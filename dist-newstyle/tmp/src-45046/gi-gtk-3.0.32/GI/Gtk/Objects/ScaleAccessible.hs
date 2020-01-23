{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ScaleAccessible
    ( 

-- * Exported types
    ScaleAccessible(..)                     ,
    IsScaleAccessible                       ,
    toScaleAccessible                       ,
    noScaleAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScaleAccessibleMethod            ,
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
import qualified GI.Atk.Interfaces.Value as Atk.Value
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.RangeAccessible as Gtk.RangeAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ScaleAccessible = ScaleAccessible (ManagedPtr ScaleAccessible)
    deriving (Eq)
foreign import ccall "gtk_scale_accessible_get_type"
    c_gtk_scale_accessible_get_type :: IO GType

instance GObject ScaleAccessible where
    gobjectType = c_gtk_scale_accessible_get_type
    

-- | Convert 'ScaleAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ScaleAccessible where
    toGValue o = do
        gtype <- c_gtk_scale_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ScaleAccessible)
        B.ManagedPtr.newObject ScaleAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ScaleAccessible`, for instance with `toScaleAccessible`.
class (GObject o, O.IsDescendantOf ScaleAccessible o) => IsScaleAccessible o
instance (GObject o, O.IsDescendantOf ScaleAccessible o) => IsScaleAccessible o

instance O.HasParentTypes ScaleAccessible
type instance O.ParentTypes ScaleAccessible = '[Gtk.RangeAccessible.RangeAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Value.Value]

-- | Cast to `ScaleAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScaleAccessible :: (MonadIO m, IsScaleAccessible o) => o -> m ScaleAccessible
toScaleAccessible = liftIO . unsafeCastTo ScaleAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ScaleAccessible`.
noScaleAccessible :: Maybe ScaleAccessible
noScaleAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveScaleAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveScaleAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveScaleAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScaleAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScaleAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveScaleAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveScaleAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScaleAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScaleAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScaleAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveScaleAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveScaleAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScaleAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScaleAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScaleAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveScaleAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveScaleAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScaleAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveScaleAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveScaleAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveScaleAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScaleAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveScaleAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveScaleAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveScaleAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveScaleAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScaleAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveScaleAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveScaleAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScaleAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScaleAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScaleAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScaleAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScaleAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveScaleAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveScaleAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveScaleAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolveScaleAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScaleAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveScaleAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveScaleAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolveScaleAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveScaleAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveScaleAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolveScaleAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveScaleAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolveScaleAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolveScaleAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveScaleAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveScaleAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveScaleAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveScaleAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveScaleAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScaleAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScaleAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolveScaleAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveScaleAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveScaleAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolveScaleAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolveScaleAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveScaleAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveScaleAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolveScaleAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScaleAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScaleAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveScaleAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveScaleAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveScaleAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveScaleAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveScaleAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScaleAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveScaleAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveScaleAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolveScaleAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveScaleAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScaleAccessibleMethod t ScaleAccessible, O.MethodInfo info ScaleAccessible p) => OL.IsLabel t (ScaleAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScaleAccessible
type instance O.AttributeList ScaleAccessible = ScaleAccessibleAttributeList
type ScaleAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ScaleAccessible = ScaleAccessibleSignalList
type ScaleAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

