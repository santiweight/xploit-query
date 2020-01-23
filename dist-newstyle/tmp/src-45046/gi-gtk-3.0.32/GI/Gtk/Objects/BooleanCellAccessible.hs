{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.BooleanCellAccessible
    ( 

-- * Exported types
    BooleanCellAccessible(..)               ,
    IsBooleanCellAccessible                 ,
    toBooleanCellAccessible                 ,
    noBooleanCellAccessible                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveBooleanCellAccessibleMethod      ,
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
import qualified GI.Atk.Interfaces.TableCell as Atk.TableCell
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAccessible as Gtk.CellAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.RendererCellAccessible as Gtk.RendererCellAccessible

-- | Memory-managed wrapper type.
newtype BooleanCellAccessible = BooleanCellAccessible (ManagedPtr BooleanCellAccessible)
    deriving (Eq)
foreign import ccall "gtk_boolean_cell_accessible_get_type"
    c_gtk_boolean_cell_accessible_get_type :: IO GType

instance GObject BooleanCellAccessible where
    gobjectType = c_gtk_boolean_cell_accessible_get_type
    

-- | Convert 'BooleanCellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue BooleanCellAccessible where
    toGValue o = do
        gtype <- c_gtk_boolean_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr BooleanCellAccessible)
        B.ManagedPtr.newObject BooleanCellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `BooleanCellAccessible`, for instance with `toBooleanCellAccessible`.
class (GObject o, O.IsDescendantOf BooleanCellAccessible o) => IsBooleanCellAccessible o
instance (GObject o, O.IsDescendantOf BooleanCellAccessible o) => IsBooleanCellAccessible o

instance O.HasParentTypes BooleanCellAccessible
type instance O.ParentTypes BooleanCellAccessible = '[Gtk.RendererCellAccessible.RendererCellAccessible, Gtk.CellAccessible.CellAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.TableCell.TableCell]

-- | Cast to `BooleanCellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBooleanCellAccessible :: (MonadIO m, IsBooleanCellAccessible o) => o -> m BooleanCellAccessible
toBooleanCellAccessible = liftIO . unsafeCastTo BooleanCellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `BooleanCellAccessible`.
noBooleanCellAccessible :: Maybe BooleanCellAccessible
noBooleanCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveBooleanCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveBooleanCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveBooleanCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBooleanCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBooleanCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveBooleanCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveBooleanCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveBooleanCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBooleanCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBooleanCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBooleanCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveBooleanCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveBooleanCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBooleanCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBooleanCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBooleanCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveBooleanCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveBooleanCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBooleanCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveBooleanCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveBooleanCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveBooleanCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBooleanCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveBooleanCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveBooleanCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveBooleanCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveBooleanCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBooleanCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveBooleanCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveBooleanCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBooleanCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBooleanCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBooleanCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBooleanCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBooleanCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveBooleanCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveBooleanCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveBooleanCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveBooleanCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveBooleanCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBooleanCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveBooleanCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveBooleanCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveBooleanCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveBooleanCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveBooleanCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveBooleanCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveBooleanCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveBooleanCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveBooleanCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveBooleanCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveBooleanCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveBooleanCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveBooleanCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBooleanCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBooleanCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveBooleanCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveBooleanCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveBooleanCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveBooleanCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveBooleanCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveBooleanCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveBooleanCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveBooleanCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBooleanCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBooleanCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveBooleanCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveBooleanCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveBooleanCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveBooleanCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveBooleanCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBooleanCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveBooleanCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveBooleanCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveBooleanCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBooleanCellAccessibleMethod t BooleanCellAccessible, O.MethodInfo info BooleanCellAccessible p) => OL.IsLabel t (BooleanCellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList BooleanCellAccessible
type instance O.AttributeList BooleanCellAccessible = BooleanCellAccessibleAttributeList
type BooleanCellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("renderer", Gtk.RendererCellAccessible.RendererCellAccessibleRendererPropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList BooleanCellAccessible = BooleanCellAccessibleSignalList
type BooleanCellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

