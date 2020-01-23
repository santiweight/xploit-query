{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ProgressBarAccessible
    ( 

-- * Exported types
    ProgressBarAccessible(..)               ,
    IsProgressBarAccessible                 ,
    toProgressBarAccessible                 ,
    noProgressBarAccessible                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveProgressBarAccessibleMethod      ,
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
newtype ProgressBarAccessible = ProgressBarAccessible (ManagedPtr ProgressBarAccessible)
    deriving (Eq)
foreign import ccall "gtk_progress_bar_accessible_get_type"
    c_gtk_progress_bar_accessible_get_type :: IO GType

instance GObject ProgressBarAccessible where
    gobjectType = c_gtk_progress_bar_accessible_get_type
    

-- | Convert 'ProgressBarAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ProgressBarAccessible where
    toGValue o = do
        gtype <- c_gtk_progress_bar_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ProgressBarAccessible)
        B.ManagedPtr.newObject ProgressBarAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ProgressBarAccessible`, for instance with `toProgressBarAccessible`.
class (GObject o, O.IsDescendantOf ProgressBarAccessible o) => IsProgressBarAccessible o
instance (GObject o, O.IsDescendantOf ProgressBarAccessible o) => IsProgressBarAccessible o

instance O.HasParentTypes ProgressBarAccessible
type instance O.ParentTypes ProgressBarAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Value.Value]

-- | Cast to `ProgressBarAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toProgressBarAccessible :: (MonadIO m, IsProgressBarAccessible o) => o -> m ProgressBarAccessible
toProgressBarAccessible = liftIO . unsafeCastTo ProgressBarAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ProgressBarAccessible`.
noProgressBarAccessible :: Maybe ProgressBarAccessible
noProgressBarAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveProgressBarAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveProgressBarAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveProgressBarAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveProgressBarAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveProgressBarAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveProgressBarAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveProgressBarAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveProgressBarAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveProgressBarAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveProgressBarAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveProgressBarAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveProgressBarAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveProgressBarAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveProgressBarAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveProgressBarAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveProgressBarAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveProgressBarAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveProgressBarAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveProgressBarAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveProgressBarAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveProgressBarAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveProgressBarAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveProgressBarAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveProgressBarAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveProgressBarAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveProgressBarAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveProgressBarAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveProgressBarAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveProgressBarAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveProgressBarAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveProgressBarAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveProgressBarAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveProgressBarAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveProgressBarAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveProgressBarAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveProgressBarAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveProgressBarAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolveProgressBarAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveProgressBarAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveProgressBarAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveProgressBarAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolveProgressBarAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveProgressBarAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveProgressBarAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolveProgressBarAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveProgressBarAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolveProgressBarAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolveProgressBarAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveProgressBarAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveProgressBarAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveProgressBarAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveProgressBarAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveProgressBarAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveProgressBarAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveProgressBarAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolveProgressBarAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveProgressBarAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveProgressBarAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolveProgressBarAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolveProgressBarAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveProgressBarAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveProgressBarAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolveProgressBarAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveProgressBarAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveProgressBarAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveProgressBarAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveProgressBarAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveProgressBarAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveProgressBarAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveProgressBarAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveProgressBarAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveProgressBarAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveProgressBarAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolveProgressBarAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveProgressBarAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveProgressBarAccessibleMethod t ProgressBarAccessible, O.MethodInfo info ProgressBarAccessible p) => OL.IsLabel t (ProgressBarAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ProgressBarAccessible
type instance O.AttributeList ProgressBarAccessible = ProgressBarAccessibleAttributeList
type ProgressBarAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ProgressBarAccessible = ProgressBarAccessibleSignalList
type ProgressBarAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

