{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SwitchAccessible
    ( 

-- * Exported types
    SwitchAccessible(..)                    ,
    IsSwitchAccessible                      ,
    toSwitchAccessible                      ,
    noSwitchAccessible                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSwitchAccessibleMethod           ,
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
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype SwitchAccessible = SwitchAccessible (ManagedPtr SwitchAccessible)
    deriving (Eq)
foreign import ccall "gtk_switch_accessible_get_type"
    c_gtk_switch_accessible_get_type :: IO GType

instance GObject SwitchAccessible where
    gobjectType = c_gtk_switch_accessible_get_type
    

-- | Convert 'SwitchAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SwitchAccessible where
    toGValue o = do
        gtype <- c_gtk_switch_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SwitchAccessible)
        B.ManagedPtr.newObject SwitchAccessible ptr
        
    

-- | Type class for types which can be safely cast to `SwitchAccessible`, for instance with `toSwitchAccessible`.
class (GObject o, O.IsDescendantOf SwitchAccessible o) => IsSwitchAccessible o
instance (GObject o, O.IsDescendantOf SwitchAccessible o) => IsSwitchAccessible o

instance O.HasParentTypes SwitchAccessible
type instance O.ParentTypes SwitchAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component]

-- | Cast to `SwitchAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSwitchAccessible :: (MonadIO m, IsSwitchAccessible o) => o -> m SwitchAccessible
toSwitchAccessible = liftIO . unsafeCastTo SwitchAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `SwitchAccessible`.
noSwitchAccessible :: Maybe SwitchAccessible
noSwitchAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSwitchAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveSwitchAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveSwitchAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSwitchAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSwitchAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveSwitchAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveSwitchAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveSwitchAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSwitchAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSwitchAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSwitchAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveSwitchAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveSwitchAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSwitchAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSwitchAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSwitchAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveSwitchAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveSwitchAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSwitchAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveSwitchAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveSwitchAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveSwitchAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSwitchAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveSwitchAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveSwitchAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveSwitchAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveSwitchAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSwitchAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveSwitchAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveSwitchAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSwitchAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSwitchAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSwitchAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSwitchAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSwitchAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveSwitchAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveSwitchAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveSwitchAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSwitchAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveSwitchAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveSwitchAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveSwitchAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveSwitchAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveSwitchAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveSwitchAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveSwitchAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveSwitchAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveSwitchAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveSwitchAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveSwitchAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveSwitchAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveSwitchAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSwitchAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSwitchAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveSwitchAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveSwitchAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveSwitchAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveSwitchAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSwitchAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSwitchAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveSwitchAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveSwitchAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveSwitchAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveSwitchAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveSwitchAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSwitchAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveSwitchAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveSwitchAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveSwitchAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSwitchAccessibleMethod t SwitchAccessible, O.MethodInfo info SwitchAccessible p) => OL.IsLabel t (SwitchAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SwitchAccessible
type instance O.AttributeList SwitchAccessible = SwitchAccessibleAttributeList
type SwitchAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SwitchAccessible = SwitchAccessibleSignalList
type SwitchAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

