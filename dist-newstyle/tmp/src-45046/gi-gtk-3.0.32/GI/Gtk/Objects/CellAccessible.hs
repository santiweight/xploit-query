{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellAccessible
    ( 

-- * Exported types
    CellAccessible(..)                      ,
    IsCellAccessible                        ,
    toCellAccessible                        ,
    noCellAccessible                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellAccessibleMethod             ,
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

-- | Memory-managed wrapper type.
newtype CellAccessible = CellAccessible (ManagedPtr CellAccessible)
    deriving (Eq)
foreign import ccall "gtk_cell_accessible_get_type"
    c_gtk_cell_accessible_get_type :: IO GType

instance GObject CellAccessible where
    gobjectType = c_gtk_cell_accessible_get_type
    

-- | Convert 'CellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellAccessible where
    toGValue o = do
        gtype <- c_gtk_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellAccessible)
        B.ManagedPtr.newObject CellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `CellAccessible`, for instance with `toCellAccessible`.
class (GObject o, O.IsDescendantOf CellAccessible o) => IsCellAccessible o
instance (GObject o, O.IsDescendantOf CellAccessible o) => IsCellAccessible o

instance O.HasParentTypes CellAccessible
type instance O.ParentTypes CellAccessible = '[Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.TableCell.TableCell]

-- | Cast to `CellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellAccessible :: (MonadIO m, IsCellAccessible o) => o -> m CellAccessible
toCellAccessible = liftIO . unsafeCastTo CellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `CellAccessible`.
noCellAccessible :: Maybe CellAccessible
noCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellAccessibleMethod t CellAccessible, O.MethodInfo info CellAccessible p) => OL.IsLabel t (CellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellAccessible
type instance O.AttributeList CellAccessible = CellAccessibleAttributeList
type CellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellAccessible = CellAccessibleSignalList
type CellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

