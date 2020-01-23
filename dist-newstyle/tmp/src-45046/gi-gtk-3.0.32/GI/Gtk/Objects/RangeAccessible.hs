{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RangeAccessible
    ( 

-- * Exported types
    RangeAccessible(..)                     ,
    IsRangeAccessible                       ,
    toRangeAccessible                       ,
    noRangeAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRangeAccessibleMethod            ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype RangeAccessible = RangeAccessible (ManagedPtr RangeAccessible)
    deriving (Eq)
foreign import ccall "gtk_range_accessible_get_type"
    c_gtk_range_accessible_get_type :: IO GType

instance GObject RangeAccessible where
    gobjectType = c_gtk_range_accessible_get_type
    

-- | Convert 'RangeAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RangeAccessible where
    toGValue o = do
        gtype <- c_gtk_range_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RangeAccessible)
        B.ManagedPtr.newObject RangeAccessible ptr
        
    

-- | Type class for types which can be safely cast to `RangeAccessible`, for instance with `toRangeAccessible`.
class (GObject o, O.IsDescendantOf RangeAccessible o) => IsRangeAccessible o
instance (GObject o, O.IsDescendantOf RangeAccessible o) => IsRangeAccessible o

instance O.HasParentTypes RangeAccessible
type instance O.ParentTypes RangeAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Value.Value]

-- | Cast to `RangeAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRangeAccessible :: (MonadIO m, IsRangeAccessible o) => o -> m RangeAccessible
toRangeAccessible = liftIO . unsafeCastTo RangeAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `RangeAccessible`.
noRangeAccessible :: Maybe RangeAccessible
noRangeAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRangeAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveRangeAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveRangeAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRangeAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRangeAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveRangeAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveRangeAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRangeAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRangeAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRangeAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveRangeAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveRangeAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRangeAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRangeAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRangeAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveRangeAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveRangeAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRangeAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveRangeAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveRangeAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveRangeAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRangeAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveRangeAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveRangeAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveRangeAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveRangeAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRangeAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveRangeAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveRangeAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRangeAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRangeAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRangeAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRangeAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRangeAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveRangeAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveRangeAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveRangeAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolveRangeAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRangeAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveRangeAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveRangeAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolveRangeAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveRangeAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveRangeAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolveRangeAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveRangeAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolveRangeAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolveRangeAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveRangeAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveRangeAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveRangeAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveRangeAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveRangeAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRangeAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRangeAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolveRangeAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveRangeAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveRangeAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolveRangeAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolveRangeAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveRangeAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveRangeAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolveRangeAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRangeAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRangeAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveRangeAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveRangeAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveRangeAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveRangeAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveRangeAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRangeAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveRangeAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveRangeAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolveRangeAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveRangeAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRangeAccessibleMethod t RangeAccessible, O.MethodInfo info RangeAccessible p) => OL.IsLabel t (RangeAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RangeAccessible
type instance O.AttributeList RangeAccessible = RangeAccessibleAttributeList
type RangeAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RangeAccessible = RangeAccessibleSignalList
type RangeAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

