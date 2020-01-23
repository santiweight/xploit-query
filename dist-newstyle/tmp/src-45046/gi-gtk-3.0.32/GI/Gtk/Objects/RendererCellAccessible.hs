{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RendererCellAccessible
    ( 

-- * Exported types
    RendererCellAccessible(..)              ,
    IsRendererCellAccessible                ,
    toRendererCellAccessible                ,
    noRendererCellAccessible                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRendererCellAccessibleMethod     ,
#endif


-- ** new #method:new#

    rendererCellAccessibleNew               ,




 -- * Properties
-- ** renderer #attr:renderer#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RendererCellAccessibleRendererPropertyInfo,
#endif
    constructRendererCellAccessibleRenderer ,
    getRendererCellAccessibleRenderer       ,
#if defined(ENABLE_OVERLOADING)
    rendererCellAccessibleRenderer          ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer

-- | Memory-managed wrapper type.
newtype RendererCellAccessible = RendererCellAccessible (ManagedPtr RendererCellAccessible)
    deriving (Eq)
foreign import ccall "gtk_renderer_cell_accessible_get_type"
    c_gtk_renderer_cell_accessible_get_type :: IO GType

instance GObject RendererCellAccessible where
    gobjectType = c_gtk_renderer_cell_accessible_get_type
    

-- | Convert 'RendererCellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RendererCellAccessible where
    toGValue o = do
        gtype <- c_gtk_renderer_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RendererCellAccessible)
        B.ManagedPtr.newObject RendererCellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `RendererCellAccessible`, for instance with `toRendererCellAccessible`.
class (GObject o, O.IsDescendantOf RendererCellAccessible o) => IsRendererCellAccessible o
instance (GObject o, O.IsDescendantOf RendererCellAccessible o) => IsRendererCellAccessible o

instance O.HasParentTypes RendererCellAccessible
type instance O.ParentTypes RendererCellAccessible = '[Gtk.CellAccessible.CellAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.TableCell.TableCell]

-- | Cast to `RendererCellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRendererCellAccessible :: (MonadIO m, IsRendererCellAccessible o) => o -> m RendererCellAccessible
toRendererCellAccessible = liftIO . unsafeCastTo RendererCellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `RendererCellAccessible`.
noRendererCellAccessible :: Maybe RendererCellAccessible
noRendererCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRendererCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveRendererCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveRendererCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRendererCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRendererCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveRendererCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveRendererCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveRendererCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRendererCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRendererCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRendererCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveRendererCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveRendererCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRendererCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRendererCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRendererCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveRendererCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveRendererCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRendererCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveRendererCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveRendererCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveRendererCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRendererCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveRendererCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveRendererCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveRendererCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveRendererCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRendererCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveRendererCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveRendererCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRendererCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRendererCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRendererCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRendererCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRendererCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveRendererCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveRendererCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveRendererCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveRendererCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveRendererCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRendererCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveRendererCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveRendererCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveRendererCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveRendererCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveRendererCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveRendererCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveRendererCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveRendererCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveRendererCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveRendererCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveRendererCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveRendererCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveRendererCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRendererCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRendererCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveRendererCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveRendererCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveRendererCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveRendererCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveRendererCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveRendererCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveRendererCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveRendererCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRendererCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRendererCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveRendererCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveRendererCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveRendererCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveRendererCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveRendererCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRendererCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveRendererCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveRendererCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveRendererCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRendererCellAccessibleMethod t RendererCellAccessible, O.MethodInfo info RendererCellAccessible p) => OL.IsLabel t (RendererCellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "renderer"
   -- Type: TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@renderer@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' rendererCellAccessible #renderer
-- @
getRendererCellAccessibleRenderer :: (MonadIO m, IsRendererCellAccessible o) => o -> m (Maybe Gtk.CellRenderer.CellRenderer)
getRendererCellAccessibleRenderer obj = liftIO $ B.Properties.getObjectPropertyObject obj "renderer" Gtk.CellRenderer.CellRenderer

-- | Construct a `GValueConstruct` with valid value for the “@renderer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRendererCellAccessibleRenderer :: (IsRendererCellAccessible o, Gtk.CellRenderer.IsCellRenderer a) => a -> IO (GValueConstruct o)
constructRendererCellAccessibleRenderer val = B.Properties.constructObjectPropertyObject "renderer" (Just val)

#if defined(ENABLE_OVERLOADING)
data RendererCellAccessibleRendererPropertyInfo
instance AttrInfo RendererCellAccessibleRendererPropertyInfo where
    type AttrAllowedOps RendererCellAccessibleRendererPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint RendererCellAccessibleRendererPropertyInfo = IsRendererCellAccessible
    type AttrSetTypeConstraint RendererCellAccessibleRendererPropertyInfo = Gtk.CellRenderer.IsCellRenderer
    type AttrTransferTypeConstraint RendererCellAccessibleRendererPropertyInfo = Gtk.CellRenderer.IsCellRenderer
    type AttrTransferType RendererCellAccessibleRendererPropertyInfo = Gtk.CellRenderer.CellRenderer
    type AttrGetType RendererCellAccessibleRendererPropertyInfo = (Maybe Gtk.CellRenderer.CellRenderer)
    type AttrLabel RendererCellAccessibleRendererPropertyInfo = "renderer"
    type AttrOrigin RendererCellAccessibleRendererPropertyInfo = RendererCellAccessible
    attrGet = getRendererCellAccessibleRenderer
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.CellRenderer.CellRenderer v
    attrConstruct = constructRendererCellAccessibleRenderer
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RendererCellAccessible
type instance O.AttributeList RendererCellAccessible = RendererCellAccessibleAttributeList
type RendererCellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("renderer", RendererCellAccessibleRendererPropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
rendererCellAccessibleRenderer :: AttrLabelProxy "renderer"
rendererCellAccessibleRenderer = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RendererCellAccessible = RendererCellAccessibleSignalList
type RendererCellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

-- method RendererCellAccessible::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "renderer"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "RendererCellAccessible" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_renderer_cell_accessible_new" gtk_renderer_cell_accessible_new :: 
    Ptr Gtk.CellRenderer.CellRenderer ->    -- renderer : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    IO (Ptr RendererCellAccessible)

-- | /No description available in the introspection data./
rendererCellAccessibleNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.CellRenderer.IsCellRenderer a) =>
    a
    -> m RendererCellAccessible
rendererCellAccessibleNew renderer = liftIO $ do
    renderer' <- unsafeManagedPtrCastPtr renderer
    result <- gtk_renderer_cell_accessible_new renderer'
    checkUnexpectedReturnNULL "rendererCellAccessibleNew" result
    result' <- (wrapObject RendererCellAccessible) result
    touchManagedPtr renderer
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

