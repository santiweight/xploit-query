{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.LevelBarAccessible
    ( 

-- * Exported types
    LevelBarAccessible(..)                  ,
    IsLevelBarAccessible                    ,
    toLevelBarAccessible                    ,
    noLevelBarAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveLevelBarAccessibleMethod         ,
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
newtype LevelBarAccessible = LevelBarAccessible (ManagedPtr LevelBarAccessible)
    deriving (Eq)
foreign import ccall "gtk_level_bar_accessible_get_type"
    c_gtk_level_bar_accessible_get_type :: IO GType

instance GObject LevelBarAccessible where
    gobjectType = c_gtk_level_bar_accessible_get_type
    

-- | Convert 'LevelBarAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue LevelBarAccessible where
    toGValue o = do
        gtype <- c_gtk_level_bar_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr LevelBarAccessible)
        B.ManagedPtr.newObject LevelBarAccessible ptr
        
    

-- | Type class for types which can be safely cast to `LevelBarAccessible`, for instance with `toLevelBarAccessible`.
class (GObject o, O.IsDescendantOf LevelBarAccessible o) => IsLevelBarAccessible o
instance (GObject o, O.IsDescendantOf LevelBarAccessible o) => IsLevelBarAccessible o

instance O.HasParentTypes LevelBarAccessible
type instance O.ParentTypes LevelBarAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Value.Value]

-- | Cast to `LevelBarAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toLevelBarAccessible :: (MonadIO m, IsLevelBarAccessible o) => o -> m LevelBarAccessible
toLevelBarAccessible = liftIO . unsafeCastTo LevelBarAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `LevelBarAccessible`.
noLevelBarAccessible :: Maybe LevelBarAccessible
noLevelBarAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveLevelBarAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveLevelBarAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveLevelBarAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveLevelBarAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveLevelBarAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveLevelBarAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveLevelBarAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveLevelBarAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveLevelBarAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveLevelBarAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveLevelBarAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveLevelBarAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveLevelBarAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveLevelBarAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveLevelBarAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveLevelBarAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveLevelBarAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveLevelBarAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveLevelBarAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveLevelBarAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveLevelBarAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveLevelBarAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveLevelBarAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveLevelBarAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveLevelBarAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveLevelBarAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveLevelBarAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveLevelBarAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveLevelBarAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveLevelBarAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveLevelBarAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveLevelBarAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveLevelBarAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveLevelBarAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveLevelBarAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveLevelBarAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveLevelBarAccessibleMethod "getCurrentValue" o = Atk.Value.ValueGetCurrentValueMethodInfo
    ResolveLevelBarAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveLevelBarAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveLevelBarAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveLevelBarAccessibleMethod "getIncrement" o = Atk.Value.ValueGetIncrementMethodInfo
    ResolveLevelBarAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveLevelBarAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveLevelBarAccessibleMethod "getMaximumValue" o = Atk.Value.ValueGetMaximumValueMethodInfo
    ResolveLevelBarAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveLevelBarAccessibleMethod "getMinimumIncrement" o = Atk.Value.ValueGetMinimumIncrementMethodInfo
    ResolveLevelBarAccessibleMethod "getMinimumValue" o = Atk.Value.ValueGetMinimumValueMethodInfo
    ResolveLevelBarAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveLevelBarAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveLevelBarAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveLevelBarAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveLevelBarAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveLevelBarAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveLevelBarAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveLevelBarAccessibleMethod "getRange" o = Atk.Value.ValueGetRangeMethodInfo
    ResolveLevelBarAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveLevelBarAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveLevelBarAccessibleMethod "getSubRanges" o = Atk.Value.ValueGetSubRangesMethodInfo
    ResolveLevelBarAccessibleMethod "getValueAndText" o = Atk.Value.ValueGetValueAndTextMethodInfo
    ResolveLevelBarAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveLevelBarAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveLevelBarAccessibleMethod "setCurrentValue" o = Atk.Value.ValueSetCurrentValueMethodInfo
    ResolveLevelBarAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveLevelBarAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveLevelBarAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveLevelBarAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveLevelBarAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveLevelBarAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveLevelBarAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveLevelBarAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveLevelBarAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveLevelBarAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveLevelBarAccessibleMethod "setValue" o = Atk.Value.ValueSetValueMethodInfo
    ResolveLevelBarAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveLevelBarAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveLevelBarAccessibleMethod t LevelBarAccessible, O.MethodInfo info LevelBarAccessible p) => OL.IsLabel t (LevelBarAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList LevelBarAccessible
type instance O.AttributeList LevelBarAccessible = LevelBarAccessibleAttributeList
type LevelBarAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList LevelBarAccessible = LevelBarAccessibleSignalList
type LevelBarAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("valueChanged", Atk.Value.ValueValueChangedSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

