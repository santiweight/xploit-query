{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.NotebookAccessible
    ( 

-- * Exported types
    NotebookAccessible(..)                  ,
    IsNotebookAccessible                    ,
    toNotebookAccessible                    ,
    noNotebookAccessible                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNotebookAccessibleMethod         ,
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
import qualified GI.Atk.Interfaces.Selection as Atk.Selection
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.ContainerAccessible as Gtk.ContainerAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.WidgetAccessible as Gtk.WidgetAccessible

-- | Memory-managed wrapper type.
newtype NotebookAccessible = NotebookAccessible (ManagedPtr NotebookAccessible)
    deriving (Eq)
foreign import ccall "gtk_notebook_accessible_get_type"
    c_gtk_notebook_accessible_get_type :: IO GType

instance GObject NotebookAccessible where
    gobjectType = c_gtk_notebook_accessible_get_type
    

-- | Convert 'NotebookAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue NotebookAccessible where
    toGValue o = do
        gtype <- c_gtk_notebook_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr NotebookAccessible)
        B.ManagedPtr.newObject NotebookAccessible ptr
        
    

-- | Type class for types which can be safely cast to `NotebookAccessible`, for instance with `toNotebookAccessible`.
class (GObject o, O.IsDescendantOf NotebookAccessible o) => IsNotebookAccessible o
instance (GObject o, O.IsDescendantOf NotebookAccessible o) => IsNotebookAccessible o

instance O.HasParentTypes NotebookAccessible
type instance O.ParentTypes NotebookAccessible = '[Gtk.ContainerAccessible.ContainerAccessible, Gtk.WidgetAccessible.WidgetAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Component.Component, Atk.Selection.Selection]

-- | Cast to `NotebookAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNotebookAccessible :: (MonadIO m, IsNotebookAccessible o) => o -> m NotebookAccessible
toNotebookAccessible = liftIO . unsafeCastTo NotebookAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `NotebookAccessible`.
noNotebookAccessible :: Maybe NotebookAccessible
noNotebookAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNotebookAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveNotebookAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveNotebookAccessibleMethod "addSelection" o = Atk.Selection.SelectionAddSelectionMethodInfo
    ResolveNotebookAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNotebookAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNotebookAccessibleMethod "clearSelection" o = Atk.Selection.SelectionClearSelectionMethodInfo
    ResolveNotebookAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveNotebookAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveNotebookAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNotebookAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNotebookAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNotebookAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveNotebookAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveNotebookAccessibleMethod "isChildSelected" o = Atk.Selection.SelectionIsChildSelectedMethodInfo
    ResolveNotebookAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNotebookAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNotebookAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNotebookAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveNotebookAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveNotebookAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNotebookAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveNotebookAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveNotebookAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveNotebookAccessibleMethod "refSelection" o = Atk.Selection.SelectionRefSelectionMethodInfo
    ResolveNotebookAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNotebookAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveNotebookAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveNotebookAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveNotebookAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveNotebookAccessibleMethod "removeSelection" o = Atk.Selection.SelectionRemoveSelectionMethodInfo
    ResolveNotebookAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNotebookAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveNotebookAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveNotebookAccessibleMethod "selectAllSelection" o = Atk.Selection.SelectionSelectAllSelectionMethodInfo
    ResolveNotebookAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNotebookAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNotebookAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNotebookAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNotebookAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNotebookAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveNotebookAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveNotebookAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveNotebookAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNotebookAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveNotebookAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveNotebookAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveNotebookAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveNotebookAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveNotebookAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveNotebookAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveNotebookAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveNotebookAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveNotebookAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveNotebookAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNotebookAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNotebookAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveNotebookAccessibleMethod "getSelectionCount" o = Atk.Selection.SelectionGetSelectionCountMethodInfo
    ResolveNotebookAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveNotebookAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveNotebookAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveNotebookAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNotebookAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNotebookAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveNotebookAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveNotebookAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveNotebookAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveNotebookAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveNotebookAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNotebookAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveNotebookAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveNotebookAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveNotebookAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNotebookAccessibleMethod t NotebookAccessible, O.MethodInfo info NotebookAccessible p) => OL.IsLabel t (NotebookAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NotebookAccessible
type instance O.AttributeList NotebookAccessible = NotebookAccessibleAttributeList
type NotebookAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NotebookAccessible = NotebookAccessibleSignalList
type NotebookAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("selectionChanged", Atk.Selection.SelectionSelectionChangedSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

