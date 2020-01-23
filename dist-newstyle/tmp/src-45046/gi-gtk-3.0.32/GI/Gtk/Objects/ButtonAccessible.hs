{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ButtonAccessible
    ( 

-- * Exported types
    ButtonAccessible(..)                    ,
    IsButtonAccessible                      ,
    toButtonAccessible                      ,
    noButtonAccessible                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveButtonAccessibleMethod           ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ButtonAccessible = ButtonAccessible (ManagedPtr ButtonAccessible)
    deriving (Eq)
foreign import ccall "gtk_button_accessible_get_type"
    c_gtk_button_accessible_get_type :: IO GType

instance GObject ButtonAccessible where
    gobjectType = c_gtk_button_accessible_get_type
    

-- | Convert 'ButtonAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ButtonAccessible where
    toGValue o = do
        gtype <- c_gtk_button_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ButtonAccessible)
        B.ManagedPtr.newObject ButtonAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ButtonAccessible`, for instance with `toButtonAccessible`.
class (GObject o, O.IsDescendantOf ButtonAccessible o) => IsButtonAccessible o
instance (GObject o, O.IsDescendantOf ButtonAccessible o) => IsButtonAccessible o

instance O.HasParentTypes ButtonAccessible
type instance O.ParentTypes ButtonAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Image.Image]

-- | Cast to `ButtonAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toButtonAccessible :: (MonadIO m, IsButtonAccessible o) => o -> m ButtonAccessible
toButtonAccessible = liftIO . unsafeCastTo ButtonAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ButtonAccessible`.
noButtonAccessible :: Maybe ButtonAccessible
noButtonAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveButtonAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveButtonAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveButtonAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveButtonAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveButtonAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveButtonAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveButtonAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveButtonAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveButtonAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveButtonAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveButtonAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveButtonAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveButtonAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveButtonAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveButtonAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveButtonAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveButtonAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveButtonAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveButtonAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveButtonAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveButtonAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveButtonAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveButtonAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveButtonAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveButtonAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveButtonAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveButtonAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveButtonAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveButtonAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveButtonAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveButtonAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveButtonAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveButtonAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveButtonAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveButtonAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveButtonAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveButtonAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveButtonAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveButtonAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveButtonAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveButtonAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveButtonAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveButtonAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveButtonAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveButtonAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveButtonAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveButtonAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveButtonAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveButtonAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveButtonAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveButtonAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveButtonAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveButtonAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveButtonAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveButtonAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveButtonAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveButtonAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveButtonAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveButtonAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveButtonAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveButtonAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveButtonAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveButtonAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveButtonAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveButtonAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveButtonAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveButtonAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveButtonAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveButtonAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveButtonAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveButtonAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveButtonAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveButtonAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveButtonAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveButtonAccessibleMethod t ButtonAccessible, O.MethodInfo info ButtonAccessible p) => OL.IsLabel t (ButtonAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ButtonAccessible
type instance O.AttributeList ButtonAccessible = ButtonAccessibleAttributeList
type ButtonAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ButtonAccessible = ButtonAccessibleSignalList
type ButtonAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

