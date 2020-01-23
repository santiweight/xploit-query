{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ImageCellAccessible
    ( 

-- * Exported types
    ImageCellAccessible(..)                 ,
    IsImageCellAccessible                   ,
    toImageCellAccessible                   ,
    noImageCellAccessible                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveImageCellAccessibleMethod        ,
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
import qualified GI.Atk.Interfaces.TableCell as Atk.TableCell
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Objects.Accessible as Gtk.Accessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAccessible as Gtk.CellAccessible
import {-# SOURCE #-} qualified GI.Gtk.Objects.RendererCellAccessible as Gtk.RendererCellAccessible

-- | Memory-managed wrapper type.
newtype ImageCellAccessible = ImageCellAccessible (ManagedPtr ImageCellAccessible)
    deriving (Eq)
foreign import ccall "gtk_image_cell_accessible_get_type"
    c_gtk_image_cell_accessible_get_type :: IO GType

instance GObject ImageCellAccessible where
    gobjectType = c_gtk_image_cell_accessible_get_type
    

-- | Convert 'ImageCellAccessible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ImageCellAccessible where
    toGValue o = do
        gtype <- c_gtk_image_cell_accessible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ImageCellAccessible)
        B.ManagedPtr.newObject ImageCellAccessible ptr
        
    

-- | Type class for types which can be safely cast to `ImageCellAccessible`, for instance with `toImageCellAccessible`.
class (GObject o, O.IsDescendantOf ImageCellAccessible o) => IsImageCellAccessible o
instance (GObject o, O.IsDescendantOf ImageCellAccessible o) => IsImageCellAccessible o

instance O.HasParentTypes ImageCellAccessible
type instance O.ParentTypes ImageCellAccessible = '[Gtk.RendererCellAccessible.RendererCellAccessible, Gtk.CellAccessible.CellAccessible, Gtk.Accessible.Accessible, Atk.Object.Object, GObject.Object.Object, Atk.Action.Action, Atk.Component.Component, Atk.Image.Image, Atk.TableCell.TableCell]

-- | Cast to `ImageCellAccessible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toImageCellAccessible :: (MonadIO m, IsImageCellAccessible o) => o -> m ImageCellAccessible
toImageCellAccessible = liftIO . unsafeCastTo ImageCellAccessible

-- | A convenience alias for `Nothing` :: `Maybe` `ImageCellAccessible`.
noImageCellAccessible :: Maybe ImageCellAccessible
noImageCellAccessible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveImageCellAccessibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveImageCellAccessibleMethod "addRelationship" o = Atk.Object.ObjectAddRelationshipMethodInfo
    ResolveImageCellAccessibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveImageCellAccessibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveImageCellAccessibleMethod "connectWidgetDestroyed" o = Gtk.Accessible.AccessibleConnectWidgetDestroyedMethodInfo
    ResolveImageCellAccessibleMethod "contains" o = Atk.Component.ComponentContainsMethodInfo
    ResolveImageCellAccessibleMethod "doAction" o = Atk.Action.ActionDoActionMethodInfo
    ResolveImageCellAccessibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveImageCellAccessibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveImageCellAccessibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveImageCellAccessibleMethod "grabFocus" o = Atk.Component.ComponentGrabFocusMethodInfo
    ResolveImageCellAccessibleMethod "initialize" o = Atk.Object.ObjectInitializeMethodInfo
    ResolveImageCellAccessibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveImageCellAccessibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveImageCellAccessibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveImageCellAccessibleMethod "notifyStateChange" o = Atk.Object.ObjectNotifyStateChangeMethodInfo
    ResolveImageCellAccessibleMethod "peekParent" o = Atk.Object.ObjectPeekParentMethodInfo
    ResolveImageCellAccessibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveImageCellAccessibleMethod "refAccessibleAtPoint" o = Atk.Component.ComponentRefAccessibleAtPointMethodInfo
    ResolveImageCellAccessibleMethod "refAccessibleChild" o = Atk.Object.ObjectRefAccessibleChildMethodInfo
    ResolveImageCellAccessibleMethod "refRelationSet" o = Atk.Object.ObjectRefRelationSetMethodInfo
    ResolveImageCellAccessibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveImageCellAccessibleMethod "refStateSet" o = Atk.Object.ObjectRefStateSetMethodInfo
    ResolveImageCellAccessibleMethod "removeFocusHandler" o = Atk.Component.ComponentRemoveFocusHandlerMethodInfo
    ResolveImageCellAccessibleMethod "removePropertyChangeHandler" o = Atk.Object.ObjectRemovePropertyChangeHandlerMethodInfo
    ResolveImageCellAccessibleMethod "removeRelationship" o = Atk.Object.ObjectRemoveRelationshipMethodInfo
    ResolveImageCellAccessibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveImageCellAccessibleMethod "scrollTo" o = Atk.Component.ComponentScrollToMethodInfo
    ResolveImageCellAccessibleMethod "scrollToPoint" o = Atk.Component.ComponentScrollToPointMethodInfo
    ResolveImageCellAccessibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveImageCellAccessibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveImageCellAccessibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveImageCellAccessibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveImageCellAccessibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveImageCellAccessibleMethod "getAccessibleId" o = Atk.Object.ObjectGetAccessibleIdMethodInfo
    ResolveImageCellAccessibleMethod "getAlpha" o = Atk.Component.ComponentGetAlphaMethodInfo
    ResolveImageCellAccessibleMethod "getAttributes" o = Atk.Object.ObjectGetAttributesMethodInfo
    ResolveImageCellAccessibleMethod "getColumnHeaderCells" o = Atk.TableCell.TableCellGetColumnHeaderCellsMethodInfo
    ResolveImageCellAccessibleMethod "getColumnSpan" o = Atk.TableCell.TableCellGetColumnSpanMethodInfo
    ResolveImageCellAccessibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveImageCellAccessibleMethod "getDescription" o = Atk.Object.ObjectGetDescriptionMethodInfo
    ResolveImageCellAccessibleMethod "getExtents" o = Atk.Component.ComponentGetExtentsMethodInfo
    ResolveImageCellAccessibleMethod "getImageDescription" o = Atk.Image.ImageGetImageDescriptionMethodInfo
    ResolveImageCellAccessibleMethod "getImageLocale" o = Atk.Image.ImageGetImageLocaleMethodInfo
    ResolveImageCellAccessibleMethod "getImagePosition" o = Atk.Image.ImageGetImagePositionMethodInfo
    ResolveImageCellAccessibleMethod "getImageSize" o = Atk.Image.ImageGetImageSizeMethodInfo
    ResolveImageCellAccessibleMethod "getIndexInParent" o = Atk.Object.ObjectGetIndexInParentMethodInfo
    ResolveImageCellAccessibleMethod "getKeybinding" o = Atk.Action.ActionGetKeybindingMethodInfo
    ResolveImageCellAccessibleMethod "getLayer" o = Atk.Object.ObjectGetLayerMethodInfo
    ResolveImageCellAccessibleMethod "getLocalizedName" o = Atk.Action.ActionGetLocalizedNameMethodInfo
    ResolveImageCellAccessibleMethod "getMdiZorder" o = Atk.Object.ObjectGetMdiZorderMethodInfo
    ResolveImageCellAccessibleMethod "getNAccessibleChildren" o = Atk.Object.ObjectGetNAccessibleChildrenMethodInfo
    ResolveImageCellAccessibleMethod "getNActions" o = Atk.Action.ActionGetNActionsMethodInfo
    ResolveImageCellAccessibleMethod "getName" o = Atk.Object.ObjectGetNameMethodInfo
    ResolveImageCellAccessibleMethod "getObjectLocale" o = Atk.Object.ObjectGetObjectLocaleMethodInfo
    ResolveImageCellAccessibleMethod "getParent" o = Atk.Object.ObjectGetParentMethodInfo
    ResolveImageCellAccessibleMethod "getPosition" o = Atk.Component.ComponentGetPositionMethodInfo
    ResolveImageCellAccessibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveImageCellAccessibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveImageCellAccessibleMethod "getRole" o = Atk.Object.ObjectGetRoleMethodInfo
    ResolveImageCellAccessibleMethod "getRowColumnSpan" o = Atk.TableCell.TableCellGetRowColumnSpanMethodInfo
    ResolveImageCellAccessibleMethod "getRowHeaderCells" o = Atk.TableCell.TableCellGetRowHeaderCellsMethodInfo
    ResolveImageCellAccessibleMethod "getRowSpan" o = Atk.TableCell.TableCellGetRowSpanMethodInfo
    ResolveImageCellAccessibleMethod "getSize" o = Atk.Component.ComponentGetSizeMethodInfo
    ResolveImageCellAccessibleMethod "getTable" o = Atk.TableCell.TableCellGetTableMethodInfo
    ResolveImageCellAccessibleMethod "getWidget" o = Gtk.Accessible.AccessibleGetWidgetMethodInfo
    ResolveImageCellAccessibleMethod "setAccessibleId" o = Atk.Object.ObjectSetAccessibleIdMethodInfo
    ResolveImageCellAccessibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveImageCellAccessibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveImageCellAccessibleMethod "setDescription" o = Atk.Object.ObjectSetDescriptionMethodInfo
    ResolveImageCellAccessibleMethod "setExtents" o = Atk.Component.ComponentSetExtentsMethodInfo
    ResolveImageCellAccessibleMethod "setImageDescription" o = Atk.Image.ImageSetImageDescriptionMethodInfo
    ResolveImageCellAccessibleMethod "setName" o = Atk.Object.ObjectSetNameMethodInfo
    ResolveImageCellAccessibleMethod "setParent" o = Atk.Object.ObjectSetParentMethodInfo
    ResolveImageCellAccessibleMethod "setPosition" o = Atk.Component.ComponentSetPositionMethodInfo
    ResolveImageCellAccessibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveImageCellAccessibleMethod "setRole" o = Atk.Object.ObjectSetRoleMethodInfo
    ResolveImageCellAccessibleMethod "setSize" o = Atk.Component.ComponentSetSizeMethodInfo
    ResolveImageCellAccessibleMethod "setWidget" o = Gtk.Accessible.AccessibleSetWidgetMethodInfo
    ResolveImageCellAccessibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveImageCellAccessibleMethod t ImageCellAccessible, O.MethodInfo info ImageCellAccessible p) => OL.IsLabel t (ImageCellAccessible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ImageCellAccessible
type instance O.AttributeList ImageCellAccessible = ImageCellAccessibleAttributeList
type ImageCellAccessibleAttributeList = ('[ '("accessibleComponentLayer", Atk.Object.ObjectAccessibleComponentLayerPropertyInfo), '("accessibleComponentMdiZorder", Atk.Object.ObjectAccessibleComponentMdiZorderPropertyInfo), '("accessibleDescription", Atk.Object.ObjectAccessibleDescriptionPropertyInfo), '("accessibleHypertextNlinks", Atk.Object.ObjectAccessibleHypertextNlinksPropertyInfo), '("accessibleName", Atk.Object.ObjectAccessibleNamePropertyInfo), '("accessibleParent", Atk.Object.ObjectAccessibleParentPropertyInfo), '("accessibleRole", Atk.Object.ObjectAccessibleRolePropertyInfo), '("accessibleTableCaption", Atk.Object.ObjectAccessibleTableCaptionPropertyInfo), '("accessibleTableCaptionObject", Atk.Object.ObjectAccessibleTableCaptionObjectPropertyInfo), '("accessibleTableColumnDescription", Atk.Object.ObjectAccessibleTableColumnDescriptionPropertyInfo), '("accessibleTableColumnHeader", Atk.Object.ObjectAccessibleTableColumnHeaderPropertyInfo), '("accessibleTableRowDescription", Atk.Object.ObjectAccessibleTableRowDescriptionPropertyInfo), '("accessibleTableRowHeader", Atk.Object.ObjectAccessibleTableRowHeaderPropertyInfo), '("accessibleTableSummary", Atk.Object.ObjectAccessibleTableSummaryPropertyInfo), '("accessibleValue", Atk.Object.ObjectAccessibleValuePropertyInfo), '("renderer", Gtk.RendererCellAccessible.RendererCellAccessibleRendererPropertyInfo), '("widget", Gtk.Accessible.AccessibleWidgetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ImageCellAccessible = ImageCellAccessibleSignalList
type ImageCellAccessibleSignalList = ('[ '("activeDescendantChanged", Atk.Object.ObjectActiveDescendantChangedSignalInfo), '("boundsChanged", Atk.Component.ComponentBoundsChangedSignalInfo), '("childrenChanged", Atk.Object.ObjectChildrenChangedSignalInfo), '("focusEvent", Atk.Object.ObjectFocusEventSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("propertyChange", Atk.Object.ObjectPropertyChangeSignalInfo), '("stateChange", Atk.Object.ObjectStateChangeSignalInfo), '("visibleDataChanged", Atk.Object.ObjectVisibleDataChangedSignalInfo)] :: [(Symbol, *)])

#endif

