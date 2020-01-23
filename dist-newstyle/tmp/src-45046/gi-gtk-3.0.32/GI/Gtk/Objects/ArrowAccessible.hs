{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ArrowAccessible
    ( 

-- * Exported types
    ArrowAccessible(..)                     ,
    IsArrowAccessible                       ,
    toArrowAccessible                       ,
    noArrowAccessible                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveArrowAccessibleMethod            ,
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
import qualified GI.Atk.Interfaces.Image as Atk.Image
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype ArrowAccessible = ArrowAccessible (ManagedPtr ArrowAccessible)
    deriving (Eq)
foreign import ccall "gtk_arrow_accessible_get_type"
    c_gtk_arrow_accessible_get_type :: IO GType

instance GObject ArrowAccessible where
    gobjectType = c_gtk_arrow_accessible_get_type
    

-- | Convert 'ArrowAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ArrowAccessible where
    toGValue o = do
        gtype <- c_gtk_arrow_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ArrowAccessible)
        B.ManagedPtr.newObject ArrowAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ArrowAccessible`, for instance with `toArrowAccessible`.
class (GObject o, O.IsDescendantOf ArrowAccessible o) => IsArrowAccessible o
instance (GObject o, O.IsDescendantOf ArrowAccessible o) => IsArrowAccessible o

instance O.HasParentTypes ArrowAccessible
type instance O.ParentTypes ArrowAccessible = '[Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Image.Image]

-- | Cast to `ArrowAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toArrowAccessible :: (MonadIO m, IsArrowAccessible o) => o -> m ArrowAccessible
toArrowAccessible = liftIO . unsafeCastTo ArrowAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ArrowAccessible`.
noArrowAccessible :: Maybe ArrowAccessible
noArrowAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveArrowAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveArrowAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveArrowAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveArrowAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveArrowAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveArrowAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveArrowAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveArrowAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveArrowAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveArrowAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveArrowAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveArrowAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveArrowAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveArrowAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveArrowAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveArrowAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveArrowAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveArrowAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveArrowAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveArrowAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveArrowAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveArrowAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveArrowAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveArrowAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveArrowAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveArrowAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveArrowAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveArrowAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveArrowAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveArrowAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveArrowAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveArrowAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveArrowAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveArrowAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveArrowAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveArrowAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveArrowAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveArrowAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveArrowAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveArrowAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveArrowAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveArrowAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveArrowAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveArrowAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveArrowAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveArrowAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveArrowAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveArrowAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveArrowAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveArrowAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveArrowAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveArrowAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveArrowAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveArrowAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveArrowAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveArrowAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveArrowAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveArrowAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveArrowAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveArrowAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveArrowAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveArrowAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveArrowAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveArrowAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveArrowAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveArrowAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveArrowAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveArrowAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveArrowAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveArrowAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveArrowAccessibleMethod t ArrowAccessible, O.MethodInfo info ArrowAccessible p) => OL.IsLabel t (ArrowAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ArrowAccessible
type instance O.AttributeList ArrowAccessible = ArrowAccessibleAttributeList
type ArrowAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ArrowAccessible = ArrowAccessibleSignalList
type ArrowAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

