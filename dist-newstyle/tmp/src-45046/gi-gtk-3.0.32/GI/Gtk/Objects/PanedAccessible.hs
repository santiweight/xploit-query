{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.PanedAccessible
    ( 

-- * Exported types
    PanedAccessible(..)                     ,
    IsPanedAccessible                       ,
    toPanedAccessible                       ,
    noPanedAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePanedAccessibleMethod            ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype PanedAccessible = PanedAccessible (ManagedPtr PanedAccessible)
    deriving (Eq)
foreign import ccall "gtk_paned_accessible_get_type"
    c_gtk_paned_accessible_get_type :: IO GType

instance GObject PanedAccessible where
    gobjectType = c_gtk_paned_accessible_get_type
    

-- | Convert 'PanedAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue PanedAccessible where
    toGValue o = do
        gtype <- c_gtk_paned_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr PanedAccessible)
        B.ManagedPtr.newObject PanedAccessible ptr
        
    

-- | Type class for types which can be safely cast to `PanedAccessible`, for instance with `toPanedAccessible`.
class (GObject o, O.IsDescendantOf PanedAccessible o) => IsPanedAccessible o
instance (GObject o, O.IsDescendantOf PanedAccessible o) => IsPanedAccessible o

instance O.HasParentTypes PanedAccessible
type instance O.ParentTypes PanedAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Value.Value]

-- | Cast to `PanedAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPanedAccessible :: (MonadIO m, IsPanedAccessible o) => o -> m PanedAccessible
toPanedAccessible = liftIO . unsafeCastTo PanedAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `PanedAccessible`.
noPanedAccessible :: Maybe PanedAccessible
noPanedAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolvePanedAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolvePanedAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolvePanedAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePanedAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePanedAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolvePanedAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolvePanedAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePanedAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePanedAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePanedAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolvePanedAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolvePanedAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePanedAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePanedAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePanedAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolvePanedAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolvePanedAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePanedAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolvePanedAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolvePanedAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolvePanedAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePanedAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolvePanedAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolvePanedAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolvePanedAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolvePanedAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePanedAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolvePanedAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolvePanedAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePanedAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePanedAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePanedAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePanedAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePanedAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolvePanedAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolvePanedAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolvePanedAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolvePanedAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePanedAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolvePanedAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolvePanedAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolvePanedAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolvePanedAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolvePanedAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolvePanedAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolvePanedAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolvePanedAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolvePanedAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolvePanedAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolvePanedAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolvePanedAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolvePanedAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolvePanedAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePanedAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePanedAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolvePanedAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolvePanedAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolvePanedAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolvePanedAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolvePanedAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolvePanedAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolvePanedAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolvePanedAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePanedAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePanedAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolvePanedAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolvePanedAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolvePanedAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolvePanedAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolvePanedAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePanedAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolvePanedAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolvePanedAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolvePanedAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolvePanedAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePanedAccessibleMethod t PanedAccessible, O.MethodInfo info PanedAccessible p) => OL.IsLabel t (PanedAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList PanedAccessible
type instance O.AttributeList PanedAccessible = PanedAccessibleAttributeList
type PanedAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList PanedAccessible = PanedAccessibleSignalList
type PanedAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

