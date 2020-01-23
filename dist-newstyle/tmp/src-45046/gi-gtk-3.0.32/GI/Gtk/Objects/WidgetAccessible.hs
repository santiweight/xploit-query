{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.WidgetAccessible
    ( 

-- * Exported types
    WidgetAccessible(..)                    ,
    IsWidgetAccessible                      ,
    toWidgetAccessible                      ,
    noWidgetAccessible                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveWidgetAccessibleMethod           ,
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
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible

-- | Memory-managed wrapper type.
newtype WidgetAccessible = WidgetAccessible (ManagedPtr WidgetAccessible)
    deriving (Eq)
foreign import ccall "gtk_widget_accessible_get_type"
    c_gtk_widget_accessible_get_type :: IO GType

instance GObject WidgetAccessible where
    gobjectType = c_gtk_widget_accessible_get_type
    

-- | Convert 'WidgetAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue WidgetAccessible where
    toGValue o = do
        gtype <- c_gtk_widget_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr WidgetAccessible)
        B.ManagedPtr.newObject WidgetAccessible ptr
        
    

-- | Type class for types which can be safely cast to `WidgetAccessible`, for instance with `toWidgetAccessible`.
class (GObject o, O.IsDescendantOf WidgetAccessible o) => IsWidgetAccessible o
instance (GObject o, O.IsDescendantOf WidgetAccessible o) => IsWidgetAccessible o

instance O.HasParentTypes WidgetAccessible
type instance O.ParentTypes WidgetAccessible = '[Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component]

-- | Cast to `WidgetAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toWidgetAccessible :: (MonadIO m, IsWidgetAccessible o) => o -> m WidgetAccessible
toWidgetAccessible = liftIO . unsafeCastTo WidgetAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `WidgetAccessible`.
noWidgetAccessible :: Maybe WidgetAccessible
noWidgetAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveWidgetAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveWidgetAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveWidgetAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWidgetAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWidgetAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveWidgetAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveWidgetAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWidgetAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWidgetAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWidgetAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveWidgetAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveWidgetAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWidgetAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWidgetAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWidgetAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveWidgetAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveWidgetAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWidgetAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveWidgetAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveWidgetAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveWidgetAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWidgetAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveWidgetAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveWidgetAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveWidgetAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveWidgetAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWidgetAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveWidgetAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveWidgetAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWidgetAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWidgetAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWidgetAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWidgetAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWidgetAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveWidgetAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveWidgetAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveWidgetAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWidgetAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveWidgetAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveWidgetAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveWidgetAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveWidgetAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveWidgetAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveWidgetAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveWidgetAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveWidgetAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveWidgetAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveWidgetAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWidgetAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWidgetAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveWidgetAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveWidgetAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveWidgetAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveWidgetAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWidgetAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWidgetAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveWidgetAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveWidgetAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveWidgetAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveWidgetAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveWidgetAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWidgetAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveWidgetAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveWidgetAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveWidgetAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWidgetAccessibleMethod t WidgetAccessible, O.MethodInfo info WidgetAccessible p) => OL.IsLabel t (WidgetAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WidgetAccessible
type instance O.AttributeList WidgetAccessible = WidgetAccessibleAttributeList
type WidgetAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WidgetAccessible = WidgetAccessibleSignalList
type WidgetAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

