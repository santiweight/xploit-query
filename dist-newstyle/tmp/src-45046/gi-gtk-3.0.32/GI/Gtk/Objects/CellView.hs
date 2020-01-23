{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.CellView.CellView' displays a single row of a t'GI.Gtk.Interfaces.TreeModel.TreeModel' using a t'GI.Gtk.Objects.CellArea.CellArea'
-- and t'GI.Gtk.Objects.CellAreaContext.CellAreaContext'. A t'GI.Gtk.Objects.CellAreaContext.CellAreaContext' can be provided to the
-- t'GI.Gtk.Objects.CellView.CellView' at construction time in order to keep the cellview in context
-- of a group of cell views, this ensures that the renderers displayed will
-- be properly aligned with eachother (like the aligned cells in the menus
-- of t'GI.Gtk.Objects.ComboBox.ComboBox').
-- 
-- t'GI.Gtk.Objects.CellView.CellView' is t'GI.Gtk.Interfaces.Orientable.Orientable' in order to decide in which orientation
-- the underlying t'GI.Gtk.Objects.CellAreaContext.CellAreaContext' should be allocated. Taking the t'GI.Gtk.Objects.ComboBox.ComboBox'
-- menu as an example, cellviews should be oriented horizontally if the menus are
-- listed top-to-bottom and thus all share the same width but may have separate
-- individual heights (left-to-right menus should be allocated vertically since
-- they all share the same height but may have variable widths).
-- 
-- = CSS nodes
-- 
-- GtkCellView has a single CSS node with name cellview.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CellView
    ( 

-- * Exported types
    CellView(..)                            ,
    IsCellView                              ,
    toCellView                              ,
    noCellView                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCellViewMethod                   ,
#endif


-- ** getDisplayedRow #method:getDisplayedRow#

#if defined(ENABLE_OVERLOADING)
    CellViewGetDisplayedRowMethodInfo       ,
#endif
    cellViewGetDisplayedRow                 ,


-- ** getDrawSensitive #method:getDrawSensitive#

#if defined(ENABLE_OVERLOADING)
    CellViewGetDrawSensitiveMethodInfo      ,
#endif
    cellViewGetDrawSensitive                ,


-- ** getFitModel #method:getFitModel#

#if defined(ENABLE_OVERLOADING)
    CellViewGetFitModelMethodInfo           ,
#endif
    cellViewGetFitModel                     ,


-- ** getModel #method:getModel#

#if defined(ENABLE_OVERLOADING)
    CellViewGetModelMethodInfo              ,
#endif
    cellViewGetModel                        ,


-- ** getSizeOfRow #method:getSizeOfRow#

#if defined(ENABLE_OVERLOADING)
    CellViewGetSizeOfRowMethodInfo          ,
#endif
    cellViewGetSizeOfRow                    ,


-- ** new #method:new#

    cellViewNew                             ,


-- ** newWithContext #method:newWithContext#

    cellViewNewWithContext                  ,


-- ** newWithMarkup #method:newWithMarkup#

    cellViewNewWithMarkup                   ,


-- ** newWithPixbuf #method:newWithPixbuf#

    cellViewNewWithPixbuf                   ,


-- ** newWithText #method:newWithText#

    cellViewNewWithText                     ,


-- ** setBackgroundColor #method:setBackgroundColor#

#if defined(ENABLE_OVERLOADING)
    CellViewSetBackgroundColorMethodInfo    ,
#endif
    cellViewSetBackgroundColor              ,


-- ** setBackgroundRgba #method:setBackgroundRgba#

#if defined(ENABLE_OVERLOADING)
    CellViewSetBackgroundRgbaMethodInfo     ,
#endif
    cellViewSetBackgroundRgba               ,


-- ** setDisplayedRow #method:setDisplayedRow#

#if defined(ENABLE_OVERLOADING)
    CellViewSetDisplayedRowMethodInfo       ,
#endif
    cellViewSetDisplayedRow                 ,


-- ** setDrawSensitive #method:setDrawSensitive#

#if defined(ENABLE_OVERLOADING)
    CellViewSetDrawSensitiveMethodInfo      ,
#endif
    cellViewSetDrawSensitive                ,


-- ** setFitModel #method:setFitModel#

#if defined(ENABLE_OVERLOADING)
    CellViewSetFitModelMethodInfo           ,
#endif
    cellViewSetFitModel                     ,


-- ** setModel #method:setModel#

#if defined(ENABLE_OVERLOADING)
    CellViewSetModelMethodInfo              ,
#endif
    cellViewSetModel                        ,




 -- * Properties
-- ** background #attr:background#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellViewBackgroundPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewBackground                      ,
#endif
    clearCellViewBackground                 ,
    constructCellViewBackground             ,
    setCellViewBackground                   ,


-- ** backgroundGdk #attr:backgroundGdk#
-- | The background color as a t'GI.Gdk.Structs.Color.Color'

#if defined(ENABLE_OVERLOADING)
    CellViewBackgroundGdkPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewBackgroundGdk                   ,
#endif
    clearCellViewBackgroundGdk              ,
    constructCellViewBackgroundGdk          ,
    getCellViewBackgroundGdk                ,
    setCellViewBackgroundGdk                ,


-- ** backgroundRgba #attr:backgroundRgba#
-- | The background color as a t'GI.Gdk.Structs.RGBA.RGBA'
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    CellViewBackgroundRgbaPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewBackgroundRgba                  ,
#endif
    constructCellViewBackgroundRgba         ,
    getCellViewBackgroundRgba               ,
    setCellViewBackgroundRgba               ,


-- ** backgroundSet #attr:backgroundSet#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CellViewBackgroundSetPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewBackgroundSet                   ,
#endif
    constructCellViewBackgroundSet          ,
    getCellViewBackgroundSet                ,
    setCellViewBackgroundSet                ,


-- ** cellArea #attr:cellArea#
-- | The t'GI.Gtk.Objects.CellArea.CellArea' rendering cells
-- 
-- If no area is specified when creating the cell view with 'GI.Gtk.Objects.CellView.cellViewNewWithContext'
-- a horizontally oriented t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' will be used.
-- 
-- since 3.0

#if defined(ENABLE_OVERLOADING)
    CellViewCellAreaPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewCellArea                        ,
#endif
    constructCellViewCellArea               ,
    getCellViewCellArea                     ,


-- ** cellAreaContext #attr:cellAreaContext#
-- | The t'GI.Gtk.Objects.CellAreaContext.CellAreaContext' used to compute the geometry of the cell view.
-- 
-- A group of cell views can be assigned the same context in order to
-- ensure the sizes and cell alignments match across all the views with
-- the same context.
-- 
-- t'GI.Gtk.Objects.ComboBox.ComboBox' menus uses this to assign the same context to all cell views
-- in the menu items for a single menu (each submenu creates its own
-- context since the size of each submenu does not depend on parent
-- or sibling menus).
-- 
-- since 3.0

#if defined(ENABLE_OVERLOADING)
    CellViewCellAreaContextPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewCellAreaContext                 ,
#endif
    constructCellViewCellAreaContext        ,
    getCellViewCellAreaContext              ,


-- ** drawSensitive #attr:drawSensitive#
-- | Whether all cells should be draw as sensitive for this view regardless
-- of the actual cell properties (used to make menus with submenus appear
-- sensitive when the items in submenus might be insensitive).
-- 
-- since 3.0

#if defined(ENABLE_OVERLOADING)
    CellViewDrawSensitivePropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewDrawSensitive                   ,
#endif
    constructCellViewDrawSensitive          ,
    getCellViewDrawSensitive                ,
    setCellViewDrawSensitive                ,


-- ** fitModel #attr:fitModel#
-- | Whether the view should request enough space to always fit
-- the size of every row in the model (used by the combo box to
-- ensure the combo box size doesnt change when different items
-- are selected).
-- 
-- since 3.0

#if defined(ENABLE_OVERLOADING)
    CellViewFitModelPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewFitModel                        ,
#endif
    constructCellViewFitModel               ,
    getCellViewFitModel                     ,
    setCellViewFitModel                     ,


-- ** model #attr:model#
-- | The model for cell view
-- 
-- since 2.10

#if defined(ENABLE_OVERLOADING)
    CellViewModelPropertyInfo               ,
#endif
#if defined(ENABLE_OVERLOADING)
    cellViewModel                           ,
#endif
    clearCellViewModel                      ,
    constructCellViewModel                  ,
    getCellViewModel                        ,
    setCellViewModel                        ,




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

import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Structs.Color as Gdk.Color
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellLayout as Gtk.CellLayout
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellArea as Gtk.CellArea
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellAreaContext as Gtk.CellAreaContext
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.Requisition as Gtk.Requisition
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreePath as Gtk.TreePath

-- | Memory-managed wrapper type.
newtype CellView = CellView (ManagedPtr CellView)
    deriving (Eq)
foreign import ccall "gtk_cell_view_get_type"
    c_gtk_cell_view_get_type :: IO GType

instance GObject CellView where
    gobjectType = c_gtk_cell_view_get_type
    

-- | Convert 'CellView' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CellView where
    toGValue o = do
        gtype <- c_gtk_cell_view_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CellView)
        B.ManagedPtr.newObject CellView ptr
        
    

-- | Type class for types which can be safely cast to `CellView`, for instance with `toCellView`.
class (GObject o, O.IsDescendantOf CellView o) => IsCellView o
instance (GObject o, O.IsDescendantOf CellView o) => IsCellView o

instance O.HasParentTypes CellView
type instance O.ParentTypes CellView = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.CellLayout.CellLayout, Gtk.Orientable.Orientable]

-- | Cast to `CellView`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCellView :: (MonadIO m, IsCellView o) => o -> m CellView
toCellView = liftIO . unsafeCastTo CellView

-- | A convenience alias for `Nothing` :: `Maybe` `CellView`.
noCellView :: Maybe CellView
noCellView = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCellViewMethod (t :: Symbol) (o :: *) :: * where
    ResolveCellViewMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveCellViewMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveCellViewMethod "addAttribute" o = Gtk.CellLayout.CellLayoutAddAttributeMethodInfo
    ResolveCellViewMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCellViewMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveCellViewMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveCellViewMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveCellViewMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveCellViewMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCellViewMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCellViewMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveCellViewMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveCellViewMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveCellViewMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveCellViewMethod "clear" o = Gtk.CellLayout.CellLayoutClearMethodInfo
    ResolveCellViewMethod "clearAttributes" o = Gtk.CellLayout.CellLayoutClearAttributesMethodInfo
    ResolveCellViewMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveCellViewMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCellViewMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveCellViewMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveCellViewMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCellViewMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCellViewMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCellViewMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveCellViewMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveCellViewMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveCellViewMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveCellViewMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveCellViewMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveCellViewMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveCellViewMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveCellViewMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveCellViewMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveCellViewMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveCellViewMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveCellViewMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveCellViewMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveCellViewMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveCellViewMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveCellViewMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveCellViewMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveCellViewMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveCellViewMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveCellViewMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveCellViewMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveCellViewMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveCellViewMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveCellViewMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveCellViewMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveCellViewMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveCellViewMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveCellViewMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveCellViewMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveCellViewMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveCellViewMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveCellViewMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveCellViewMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveCellViewMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveCellViewMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCellViewMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveCellViewMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCellViewMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCellViewMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveCellViewMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveCellViewMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveCellViewMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveCellViewMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveCellViewMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveCellViewMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveCellViewMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveCellViewMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveCellViewMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveCellViewMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveCellViewMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveCellViewMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveCellViewMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveCellViewMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveCellViewMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveCellViewMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveCellViewMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveCellViewMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveCellViewMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveCellViewMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCellViewMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveCellViewMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveCellViewMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveCellViewMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveCellViewMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveCellViewMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveCellViewMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveCellViewMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveCellViewMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveCellViewMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveCellViewMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveCellViewMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveCellViewMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveCellViewMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveCellViewMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveCellViewMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveCellViewMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveCellViewMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCellViewMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCellViewMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveCellViewMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveCellViewMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveCellViewMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveCellViewMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveCellViewMethod "packEnd" o = Gtk.CellLayout.CellLayoutPackEndMethodInfo
    ResolveCellViewMethod "packStart" o = Gtk.CellLayout.CellLayoutPackStartMethodInfo
    ResolveCellViewMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCellViewMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveCellViewMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveCellViewMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveCellViewMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveCellViewMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveCellViewMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveCellViewMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveCellViewMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveCellViewMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveCellViewMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCellViewMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCellViewMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveCellViewMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveCellViewMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveCellViewMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveCellViewMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveCellViewMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveCellViewMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveCellViewMethod "reorder" o = Gtk.CellLayout.CellLayoutReorderMethodInfo
    ResolveCellViewMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveCellViewMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveCellViewMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveCellViewMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCellViewMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveCellViewMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveCellViewMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveCellViewMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveCellViewMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveCellViewMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveCellViewMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveCellViewMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveCellViewMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveCellViewMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCellViewMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCellViewMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveCellViewMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveCellViewMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveCellViewMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCellViewMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveCellViewMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveCellViewMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveCellViewMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveCellViewMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveCellViewMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCellViewMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveCellViewMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveCellViewMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCellViewMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveCellViewMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveCellViewMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveCellViewMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveCellViewMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveCellViewMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveCellViewMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveCellViewMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveCellViewMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveCellViewMethod "getArea" o = Gtk.CellLayout.CellLayoutGetAreaMethodInfo
    ResolveCellViewMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveCellViewMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveCellViewMethod "getCells" o = Gtk.CellLayout.CellLayoutGetCellsMethodInfo
    ResolveCellViewMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveCellViewMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveCellViewMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveCellViewMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveCellViewMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveCellViewMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCellViewMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveCellViewMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveCellViewMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveCellViewMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveCellViewMethod "getDisplayedRow" o = CellViewGetDisplayedRowMethodInfo
    ResolveCellViewMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveCellViewMethod "getDrawSensitive" o = CellViewGetDrawSensitiveMethodInfo
    ResolveCellViewMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveCellViewMethod "getFitModel" o = CellViewGetFitModelMethodInfo
    ResolveCellViewMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveCellViewMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveCellViewMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveCellViewMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveCellViewMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveCellViewMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveCellViewMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveCellViewMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveCellViewMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveCellViewMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCellViewMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveCellViewMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveCellViewMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveCellViewMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveCellViewMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveCellViewMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveCellViewMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveCellViewMethod "getModel" o = CellViewGetModelMethodInfo
    ResolveCellViewMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveCellViewMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveCellViewMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveCellViewMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveCellViewMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveCellViewMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveCellViewMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveCellViewMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveCellViewMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveCellViewMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveCellViewMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveCellViewMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveCellViewMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveCellViewMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveCellViewMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveCellViewMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveCellViewMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveCellViewMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCellViewMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCellViewMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveCellViewMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveCellViewMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveCellViewMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveCellViewMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveCellViewMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveCellViewMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveCellViewMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveCellViewMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveCellViewMethod "getSizeOfRow" o = CellViewGetSizeOfRowMethodInfo
    ResolveCellViewMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveCellViewMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveCellViewMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveCellViewMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveCellViewMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveCellViewMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveCellViewMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveCellViewMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveCellViewMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveCellViewMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveCellViewMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveCellViewMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveCellViewMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveCellViewMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveCellViewMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveCellViewMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveCellViewMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveCellViewMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveCellViewMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveCellViewMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveCellViewMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveCellViewMethod "setBackgroundColor" o = CellViewSetBackgroundColorMethodInfo
    ResolveCellViewMethod "setBackgroundRgba" o = CellViewSetBackgroundRgbaMethodInfo
    ResolveCellViewMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCellViewMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveCellViewMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveCellViewMethod "setCellDataFunc" o = Gtk.CellLayout.CellLayoutSetCellDataFuncMethodInfo
    ResolveCellViewMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveCellViewMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveCellViewMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveCellViewMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCellViewMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCellViewMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveCellViewMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveCellViewMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveCellViewMethod "setDisplayedRow" o = CellViewSetDisplayedRowMethodInfo
    ResolveCellViewMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveCellViewMethod "setDrawSensitive" o = CellViewSetDrawSensitiveMethodInfo
    ResolveCellViewMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveCellViewMethod "setFitModel" o = CellViewSetFitModelMethodInfo
    ResolveCellViewMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveCellViewMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveCellViewMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveCellViewMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveCellViewMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveCellViewMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveCellViewMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveCellViewMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveCellViewMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveCellViewMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveCellViewMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveCellViewMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveCellViewMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveCellViewMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveCellViewMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveCellViewMethod "setModel" o = CellViewSetModelMethodInfo
    ResolveCellViewMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveCellViewMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveCellViewMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveCellViewMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveCellViewMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveCellViewMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveCellViewMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCellViewMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveCellViewMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveCellViewMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveCellViewMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveCellViewMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveCellViewMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveCellViewMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveCellViewMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveCellViewMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveCellViewMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveCellViewMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveCellViewMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveCellViewMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveCellViewMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveCellViewMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveCellViewMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveCellViewMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveCellViewMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveCellViewMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCellViewMethod t CellView, O.MethodInfo info CellView p) => OL.IsLabel t (CellView -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "background"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@background@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #background 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewBackground :: (MonadIO m, IsCellView o) => o -> T.Text -> m ()
setCellViewBackground obj val = liftIO $ B.Properties.setObjectPropertyString obj "background" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@background@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewBackground :: (IsCellView o) => T.Text -> IO (GValueConstruct o)
constructCellViewBackground val = B.Properties.constructObjectPropertyString "background" (Just val)

-- | Set the value of the “@background@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #background
-- @
clearCellViewBackground :: (MonadIO m, IsCellView o) => o -> m ()
clearCellViewBackground obj = liftIO $ B.Properties.setObjectPropertyString obj "background" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundPropertyInfo
instance AttrInfo CellViewBackgroundPropertyInfo where
    type AttrAllowedOps CellViewBackgroundPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint CellViewBackgroundPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewBackgroundPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint CellViewBackgroundPropertyInfo = (~) T.Text
    type AttrTransferType CellViewBackgroundPropertyInfo = T.Text
    type AttrGetType CellViewBackgroundPropertyInfo = ()
    type AttrLabel CellViewBackgroundPropertyInfo = "background"
    type AttrOrigin CellViewBackgroundPropertyInfo = CellView
    attrGet = undefined
    attrSet = setCellViewBackground
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewBackground
    attrClear = clearCellViewBackground
#endif

-- VVV Prop "background-gdk"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Color"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@background-gdk@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #backgroundGdk
-- @
getCellViewBackgroundGdk :: (MonadIO m, IsCellView o) => o -> m (Maybe Gdk.Color.Color)
getCellViewBackgroundGdk obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "background-gdk" Gdk.Color.Color

-- | Set the value of the “@background-gdk@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #backgroundGdk 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewBackgroundGdk :: (MonadIO m, IsCellView o) => o -> Gdk.Color.Color -> m ()
setCellViewBackgroundGdk obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "background-gdk" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@background-gdk@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewBackgroundGdk :: (IsCellView o) => Gdk.Color.Color -> IO (GValueConstruct o)
constructCellViewBackgroundGdk val = B.Properties.constructObjectPropertyBoxed "background-gdk" (Just val)

-- | Set the value of the “@background-gdk@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #backgroundGdk
-- @
clearCellViewBackgroundGdk :: (MonadIO m, IsCellView o) => o -> m ()
clearCellViewBackgroundGdk obj = liftIO $ B.Properties.setObjectPropertyBoxed obj "background-gdk" (Nothing :: Maybe Gdk.Color.Color)

#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundGdkPropertyInfo
instance AttrInfo CellViewBackgroundGdkPropertyInfo where
    type AttrAllowedOps CellViewBackgroundGdkPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellViewBackgroundGdkPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewBackgroundGdkPropertyInfo = (~) Gdk.Color.Color
    type AttrTransferTypeConstraint CellViewBackgroundGdkPropertyInfo = (~) Gdk.Color.Color
    type AttrTransferType CellViewBackgroundGdkPropertyInfo = Gdk.Color.Color
    type AttrGetType CellViewBackgroundGdkPropertyInfo = (Maybe Gdk.Color.Color)
    type AttrLabel CellViewBackgroundGdkPropertyInfo = "background-gdk"
    type AttrOrigin CellViewBackgroundGdkPropertyInfo = CellView
    attrGet = getCellViewBackgroundGdk
    attrSet = setCellViewBackgroundGdk
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewBackgroundGdk
    attrClear = clearCellViewBackgroundGdk
#endif

-- VVV Prop "background-rgba"
   -- Type: TInterface (Name {namespace = "Gdk", name = "RGBA"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@background-rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #backgroundRgba
-- @
getCellViewBackgroundRgba :: (MonadIO m, IsCellView o) => o -> m (Maybe Gdk.RGBA.RGBA)
getCellViewBackgroundRgba obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "background-rgba" Gdk.RGBA.RGBA

-- | Set the value of the “@background-rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #backgroundRgba 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewBackgroundRgba :: (MonadIO m, IsCellView o) => o -> Gdk.RGBA.RGBA -> m ()
setCellViewBackgroundRgba obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "background-rgba" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@background-rgba@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewBackgroundRgba :: (IsCellView o) => Gdk.RGBA.RGBA -> IO (GValueConstruct o)
constructCellViewBackgroundRgba val = B.Properties.constructObjectPropertyBoxed "background-rgba" (Just val)

#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundRgbaPropertyInfo
instance AttrInfo CellViewBackgroundRgbaPropertyInfo where
    type AttrAllowedOps CellViewBackgroundRgbaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellViewBackgroundRgbaPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewBackgroundRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferTypeConstraint CellViewBackgroundRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferType CellViewBackgroundRgbaPropertyInfo = Gdk.RGBA.RGBA
    type AttrGetType CellViewBackgroundRgbaPropertyInfo = (Maybe Gdk.RGBA.RGBA)
    type AttrLabel CellViewBackgroundRgbaPropertyInfo = "background-rgba"
    type AttrOrigin CellViewBackgroundRgbaPropertyInfo = CellView
    attrGet = getCellViewBackgroundRgba
    attrSet = setCellViewBackgroundRgba
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewBackgroundRgba
    attrClear = undefined
#endif

-- VVV Prop "background-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@background-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #backgroundSet
-- @
getCellViewBackgroundSet :: (MonadIO m, IsCellView o) => o -> m Bool
getCellViewBackgroundSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "background-set"

-- | Set the value of the “@background-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #backgroundSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewBackgroundSet :: (MonadIO m, IsCellView o) => o -> Bool -> m ()
setCellViewBackgroundSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "background-set" val

-- | Construct a `GValueConstruct` with valid value for the “@background-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewBackgroundSet :: (IsCellView o) => Bool -> IO (GValueConstruct o)
constructCellViewBackgroundSet val = B.Properties.constructObjectPropertyBool "background-set" val

#if defined(ENABLE_OVERLOADING)
data CellViewBackgroundSetPropertyInfo
instance AttrInfo CellViewBackgroundSetPropertyInfo where
    type AttrAllowedOps CellViewBackgroundSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellViewBackgroundSetPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewBackgroundSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellViewBackgroundSetPropertyInfo = (~) Bool
    type AttrTransferType CellViewBackgroundSetPropertyInfo = Bool
    type AttrGetType CellViewBackgroundSetPropertyInfo = Bool
    type AttrLabel CellViewBackgroundSetPropertyInfo = "background-set"
    type AttrOrigin CellViewBackgroundSetPropertyInfo = CellView
    attrGet = getCellViewBackgroundSet
    attrSet = setCellViewBackgroundSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewBackgroundSet
    attrClear = undefined
#endif

-- VVV Prop "cell-area"
   -- Type: TInterface (Name {namespace = "Gtk", name = "CellArea"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@cell-area@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #cellArea
-- @
getCellViewCellArea :: (MonadIO m, IsCellView o) => o -> m (Maybe Gtk.CellArea.CellArea)
getCellViewCellArea obj = liftIO $ B.Properties.getObjectPropertyObject obj "cell-area" Gtk.CellArea.CellArea

-- | Construct a `GValueConstruct` with valid value for the “@cell-area@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewCellArea :: (IsCellView o, Gtk.CellArea.IsCellArea a) => a -> IO (GValueConstruct o)
constructCellViewCellArea val = B.Properties.constructObjectPropertyObject "cell-area" (Just val)

#if defined(ENABLE_OVERLOADING)
data CellViewCellAreaPropertyInfo
instance AttrInfo CellViewCellAreaPropertyInfo where
    type AttrAllowedOps CellViewCellAreaPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellViewCellAreaPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferTypeConstraint CellViewCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferType CellViewCellAreaPropertyInfo = Gtk.CellArea.CellArea
    type AttrGetType CellViewCellAreaPropertyInfo = (Maybe Gtk.CellArea.CellArea)
    type AttrLabel CellViewCellAreaPropertyInfo = "cell-area"
    type AttrOrigin CellViewCellAreaPropertyInfo = CellView
    attrGet = getCellViewCellArea
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.CellArea.CellArea v
    attrConstruct = constructCellViewCellArea
    attrClear = undefined
#endif

-- VVV Prop "cell-area-context"
   -- Type: TInterface (Name {namespace = "Gtk", name = "CellAreaContext"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@cell-area-context@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #cellAreaContext
-- @
getCellViewCellAreaContext :: (MonadIO m, IsCellView o) => o -> m (Maybe Gtk.CellAreaContext.CellAreaContext)
getCellViewCellAreaContext obj = liftIO $ B.Properties.getObjectPropertyObject obj "cell-area-context" Gtk.CellAreaContext.CellAreaContext

-- | Construct a `GValueConstruct` with valid value for the “@cell-area-context@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewCellAreaContext :: (IsCellView o, Gtk.CellAreaContext.IsCellAreaContext a) => a -> IO (GValueConstruct o)
constructCellViewCellAreaContext val = B.Properties.constructObjectPropertyObject "cell-area-context" (Just val)

#if defined(ENABLE_OVERLOADING)
data CellViewCellAreaContextPropertyInfo
instance AttrInfo CellViewCellAreaContextPropertyInfo where
    type AttrAllowedOps CellViewCellAreaContextPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellViewCellAreaContextPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewCellAreaContextPropertyInfo = Gtk.CellAreaContext.IsCellAreaContext
    type AttrTransferTypeConstraint CellViewCellAreaContextPropertyInfo = Gtk.CellAreaContext.IsCellAreaContext
    type AttrTransferType CellViewCellAreaContextPropertyInfo = Gtk.CellAreaContext.CellAreaContext
    type AttrGetType CellViewCellAreaContextPropertyInfo = (Maybe Gtk.CellAreaContext.CellAreaContext)
    type AttrLabel CellViewCellAreaContextPropertyInfo = "cell-area-context"
    type AttrOrigin CellViewCellAreaContextPropertyInfo = CellView
    attrGet = getCellViewCellAreaContext
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.CellAreaContext.CellAreaContext v
    attrConstruct = constructCellViewCellAreaContext
    attrClear = undefined
#endif

-- VVV Prop "draw-sensitive"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@draw-sensitive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #drawSensitive
-- @
getCellViewDrawSensitive :: (MonadIO m, IsCellView o) => o -> m Bool
getCellViewDrawSensitive obj = liftIO $ B.Properties.getObjectPropertyBool obj "draw-sensitive"

-- | Set the value of the “@draw-sensitive@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #drawSensitive 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewDrawSensitive :: (MonadIO m, IsCellView o) => o -> Bool -> m ()
setCellViewDrawSensitive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "draw-sensitive" val

-- | Construct a `GValueConstruct` with valid value for the “@draw-sensitive@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewDrawSensitive :: (IsCellView o) => Bool -> IO (GValueConstruct o)
constructCellViewDrawSensitive val = B.Properties.constructObjectPropertyBool "draw-sensitive" val

#if defined(ENABLE_OVERLOADING)
data CellViewDrawSensitivePropertyInfo
instance AttrInfo CellViewDrawSensitivePropertyInfo where
    type AttrAllowedOps CellViewDrawSensitivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellViewDrawSensitivePropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewDrawSensitivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellViewDrawSensitivePropertyInfo = (~) Bool
    type AttrTransferType CellViewDrawSensitivePropertyInfo = Bool
    type AttrGetType CellViewDrawSensitivePropertyInfo = Bool
    type AttrLabel CellViewDrawSensitivePropertyInfo = "draw-sensitive"
    type AttrOrigin CellViewDrawSensitivePropertyInfo = CellView
    attrGet = getCellViewDrawSensitive
    attrSet = setCellViewDrawSensitive
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewDrawSensitive
    attrClear = undefined
#endif

-- VVV Prop "fit-model"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@fit-model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #fitModel
-- @
getCellViewFitModel :: (MonadIO m, IsCellView o) => o -> m Bool
getCellViewFitModel obj = liftIO $ B.Properties.getObjectPropertyBool obj "fit-model"

-- | Set the value of the “@fit-model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #fitModel 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewFitModel :: (MonadIO m, IsCellView o) => o -> Bool -> m ()
setCellViewFitModel obj val = liftIO $ B.Properties.setObjectPropertyBool obj "fit-model" val

-- | Construct a `GValueConstruct` with valid value for the “@fit-model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewFitModel :: (IsCellView o) => Bool -> IO (GValueConstruct o)
constructCellViewFitModel val = B.Properties.constructObjectPropertyBool "fit-model" val

#if defined(ENABLE_OVERLOADING)
data CellViewFitModelPropertyInfo
instance AttrInfo CellViewFitModelPropertyInfo where
    type AttrAllowedOps CellViewFitModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CellViewFitModelPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewFitModelPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CellViewFitModelPropertyInfo = (~) Bool
    type AttrTransferType CellViewFitModelPropertyInfo = Bool
    type AttrGetType CellViewFitModelPropertyInfo = Bool
    type AttrLabel CellViewFitModelPropertyInfo = "fit-model"
    type AttrOrigin CellViewFitModelPropertyInfo = CellView
    attrGet = getCellViewFitModel
    attrSet = setCellViewFitModel
    attrTransfer _ v = do
        return v
    attrConstruct = constructCellViewFitModel
    attrClear = undefined
#endif

-- VVV Prop "model"
   -- Type: TInterface (Name {namespace = "Gtk", name = "TreeModel"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cellView #model
-- @
getCellViewModel :: (MonadIO m, IsCellView o) => o -> m (Maybe Gtk.TreeModel.TreeModel)
getCellViewModel obj = liftIO $ B.Properties.getObjectPropertyObject obj "model" Gtk.TreeModel.TreeModel

-- | Set the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cellView [ #model 'Data.GI.Base.Attributes.:=' value ]
-- @
setCellViewModel :: (MonadIO m, IsCellView o, Gtk.TreeModel.IsTreeModel a) => o -> a -> m ()
setCellViewModel obj val = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCellViewModel :: (IsCellView o, Gtk.TreeModel.IsTreeModel a) => a -> IO (GValueConstruct o)
constructCellViewModel val = B.Properties.constructObjectPropertyObject "model" (Just val)

-- | Set the value of the “@model@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #model
-- @
clearCellViewModel :: (MonadIO m, IsCellView o) => o -> m ()
clearCellViewModel obj = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Nothing :: Maybe Gtk.TreeModel.TreeModel)

#if defined(ENABLE_OVERLOADING)
data CellViewModelPropertyInfo
instance AttrInfo CellViewModelPropertyInfo where
    type AttrAllowedOps CellViewModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint CellViewModelPropertyInfo = IsCellView
    type AttrSetTypeConstraint CellViewModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferTypeConstraint CellViewModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferType CellViewModelPropertyInfo = Gtk.TreeModel.TreeModel
    type AttrGetType CellViewModelPropertyInfo = (Maybe Gtk.TreeModel.TreeModel)
    type AttrLabel CellViewModelPropertyInfo = "model"
    type AttrOrigin CellViewModelPropertyInfo = CellView
    attrGet = getCellViewModel
    attrSet = setCellViewModel
    attrTransfer _ v = do
        unsafeCastTo Gtk.TreeModel.TreeModel v
    attrConstruct = constructCellViewModel
    attrClear = clearCellViewModel
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CellView
type instance O.AttributeList CellView = CellViewAttributeList
type CellViewAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("background", CellViewBackgroundPropertyInfo), '("backgroundGdk", CellViewBackgroundGdkPropertyInfo), '("backgroundRgba", CellViewBackgroundRgbaPropertyInfo), '("backgroundSet", CellViewBackgroundSetPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("cellArea", CellViewCellAreaPropertyInfo), '("cellAreaContext", CellViewCellAreaContextPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawSensitive", CellViewDrawSensitivePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fitModel", CellViewFitModelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("model", CellViewModelPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cellViewBackground :: AttrLabelProxy "background"
cellViewBackground = AttrLabelProxy

cellViewBackgroundGdk :: AttrLabelProxy "backgroundGdk"
cellViewBackgroundGdk = AttrLabelProxy

cellViewBackgroundRgba :: AttrLabelProxy "backgroundRgba"
cellViewBackgroundRgba = AttrLabelProxy

cellViewBackgroundSet :: AttrLabelProxy "backgroundSet"
cellViewBackgroundSet = AttrLabelProxy

cellViewCellArea :: AttrLabelProxy "cellArea"
cellViewCellArea = AttrLabelProxy

cellViewCellAreaContext :: AttrLabelProxy "cellAreaContext"
cellViewCellAreaContext = AttrLabelProxy

cellViewDrawSensitive :: AttrLabelProxy "drawSensitive"
cellViewDrawSensitive = AttrLabelProxy

cellViewFitModel :: AttrLabelProxy "fitModel"
cellViewFitModel = AttrLabelProxy

cellViewModel :: AttrLabelProxy "model"
cellViewModel = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CellView = CellViewSignalList
type CellViewSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method CellView::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_new" gtk_cell_view_new :: 
    IO (Ptr CellView)

-- | Creates a new t'GI.Gtk.Objects.CellView.CellView' widget.
-- 
-- /Since: 2.6/
cellViewNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CellView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.CellView.CellView' widget.
cellViewNew  = liftIO $ do
    result <- gtk_cell_view_new
    checkUnexpectedReturnNULL "cellViewNew" result
    result' <- (newObject CellView) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellView::new_with_context
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "area"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellArea" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkCellArea to layout cells"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "context"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellAreaContext" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkCellAreaContext in which to calculate cell geometry"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_new_with_context" gtk_cell_view_new_with_context :: 
    Ptr Gtk.CellArea.CellArea ->            -- area : TInterface (Name {namespace = "Gtk", name = "CellArea"})
    Ptr Gtk.CellAreaContext.CellAreaContext -> -- context : TInterface (Name {namespace = "Gtk", name = "CellAreaContext"})
    IO (Ptr CellView)

-- | Creates a new t'GI.Gtk.Objects.CellView.CellView' widget with a specific t'GI.Gtk.Objects.CellArea.CellArea'
-- to layout cells and a specific t'GI.Gtk.Objects.CellAreaContext.CellAreaContext'.
-- 
-- Specifying the same context for a handfull of cells lets
-- the underlying area synchronize the geometry for those cells,
-- in this way alignments with cellviews for other rows are
-- possible.
-- 
-- /Since: 2.6/
cellViewNewWithContext ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.CellArea.IsCellArea a, Gtk.CellAreaContext.IsCellAreaContext b) =>
    a
    -- ^ /@area@/: the t'GI.Gtk.Objects.CellArea.CellArea' to layout cells
    -> b
    -- ^ /@context@/: the t'GI.Gtk.Objects.CellAreaContext.CellAreaContext' in which to calculate cell geometry
    -> m CellView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.CellView.CellView' widget.
cellViewNewWithContext area context = liftIO $ do
    area' <- unsafeManagedPtrCastPtr area
    context' <- unsafeManagedPtrCastPtr context
    result <- gtk_cell_view_new_with_context area' context'
    checkUnexpectedReturnNULL "cellViewNewWithContext" result
    result' <- (newObject CellView) result
    touchManagedPtr area
    touchManagedPtr context
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellView::new_with_markup
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "markup"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to display in the cell view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_new_with_markup" gtk_cell_view_new_with_markup :: 
    CString ->                              -- markup : TBasicType TUTF8
    IO (Ptr CellView)

-- | Creates a new t'GI.Gtk.Objects.CellView.CellView' widget, adds a t'GI.Gtk.Objects.CellRendererText.CellRendererText'
-- to it, and makes it show /@markup@/. The text can be
-- marked up with the [Pango text markup language][PangoMarkupFormat].
-- 
-- /Since: 2.6/
cellViewNewWithMarkup ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@markup@/: the text to display in the cell view
    -> m CellView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.CellView.CellView' widget.
cellViewNewWithMarkup markup = liftIO $ do
    markup' <- textToCString markup
    result <- gtk_cell_view_new_with_markup markup'
    checkUnexpectedReturnNULL "cellViewNewWithMarkup" result
    result' <- (newObject CellView) result
    freeMem markup'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellView::new_with_pixbuf
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "pixbuf"
--           , argType =
--               TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the image to display in the cell view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_new_with_pixbuf" gtk_cell_view_new_with_pixbuf :: 
    Ptr GdkPixbuf.Pixbuf.Pixbuf ->          -- pixbuf : TInterface (Name {namespace = "GdkPixbuf", name = "Pixbuf"})
    IO (Ptr CellView)

-- | Creates a new t'GI.Gtk.Objects.CellView.CellView' widget, adds a t'GI.Gtk.Objects.CellRendererPixbuf.CellRendererPixbuf'
-- to it, and makes it show /@pixbuf@/.
-- 
-- /Since: 2.6/
cellViewNewWithPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, GdkPixbuf.Pixbuf.IsPixbuf a) =>
    a
    -- ^ /@pixbuf@/: the image to display in the cell view
    -> m CellView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.CellView.CellView' widget.
cellViewNewWithPixbuf pixbuf = liftIO $ do
    pixbuf' <- unsafeManagedPtrCastPtr pixbuf
    result <- gtk_cell_view_new_with_pixbuf pixbuf'
    checkUnexpectedReturnNULL "cellViewNewWithPixbuf" result
    result' <- (newObject CellView) result
    touchManagedPtr pixbuf
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellView::new_with_text
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to display in the cell view"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CellView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_new_with_text" gtk_cell_view_new_with_text :: 
    CString ->                              -- text : TBasicType TUTF8
    IO (Ptr CellView)

-- | Creates a new t'GI.Gtk.Objects.CellView.CellView' widget, adds a t'GI.Gtk.Objects.CellRendererText.CellRendererText'
-- to it, and makes it show /@text@/.
-- 
-- /Since: 2.6/
cellViewNewWithText ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@text@/: the text to display in the cell view
    -> m CellView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.CellView.CellView' widget.
cellViewNewWithText text = liftIO $ do
    text' <- textToCString text
    result <- gtk_cell_view_new_with_text text'
    checkUnexpectedReturnNULL "cellViewNewWithText" result
    result' <- (newObject CellView) result
    freeMem text'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CellView::get_displayed_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TreePath" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_get_displayed_row" gtk_cell_view_get_displayed_row :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    IO (Ptr Gtk.TreePath.TreePath)

-- | Returns a t'GI.Gtk.Structs.TreePath.TreePath' referring to the currently
-- displayed row. If no row is currently displayed,
-- 'P.Nothing' is returned.
-- 
-- /Since: 2.6/
cellViewGetDisplayedRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> m (Maybe Gtk.TreePath.TreePath)
    -- ^ __Returns:__ the currently displayed row or 'P.Nothing'
cellViewGetDisplayedRow cellView = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    result <- gtk_cell_view_get_displayed_row cellView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Gtk.TreePath.TreePath) result'
        return result''
    touchManagedPtr cellView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data CellViewGetDisplayedRowMethodInfo
instance (signature ~ (m (Maybe Gtk.TreePath.TreePath)), MonadIO m, IsCellView a) => O.MethodInfo CellViewGetDisplayedRowMethodInfo a signature where
    overloadedMethod = cellViewGetDisplayedRow

#endif

-- method CellView::get_draw_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_get_draw_sensitive" gtk_cell_view_get_draw_sensitive :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    IO CInt

-- | Gets whether /@cellView@/ is configured to draw all of its
-- cells in a sensitive state.
-- 
-- /Since: 3.0/
cellViewGetDrawSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> m Bool
    -- ^ __Returns:__ whether /@cellView@/ draws all of its
    -- cells in a sensitive state
cellViewGetDrawSensitive cellView = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    result <- gtk_cell_view_get_draw_sensitive cellView'
    let result' = (/= 0) result
    touchManagedPtr cellView
    return result'

#if defined(ENABLE_OVERLOADING)
data CellViewGetDrawSensitiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCellView a) => O.MethodInfo CellViewGetDrawSensitiveMethodInfo a signature where
    overloadedMethod = cellViewGetDrawSensitive

#endif

-- method CellView::get_fit_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_get_fit_model" gtk_cell_view_get_fit_model :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    IO CInt

-- | Gets whether /@cellView@/ is configured to request space
-- to fit the entire t'GI.Gtk.Interfaces.TreeModel.TreeModel'.
-- 
-- /Since: 3.0/
cellViewGetFitModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> m Bool
    -- ^ __Returns:__ whether /@cellView@/ requests space to fit
    -- the entire t'GI.Gtk.Interfaces.TreeModel.TreeModel'.
cellViewGetFitModel cellView = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    result <- gtk_cell_view_get_fit_model cellView'
    let result' = (/= 0) result
    touchManagedPtr cellView
    return result'

#if defined(ENABLE_OVERLOADING)
data CellViewGetFitModelMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCellView a) => O.MethodInfo CellViewGetFitModelMethodInfo a signature where
    overloadedMethod = cellViewGetFitModel

#endif

-- method CellView::get_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TreeModel" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_get_model" gtk_cell_view_get_model :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    IO (Ptr Gtk.TreeModel.TreeModel)

-- | Returns the model for /@cellView@/. If no model is used 'P.Nothing' is
-- returned.
-- 
-- /Since: 2.16/
cellViewGetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> m (Maybe Gtk.TreeModel.TreeModel)
    -- ^ __Returns:__ a t'GI.Gtk.Interfaces.TreeModel.TreeModel' used or 'P.Nothing'
cellViewGetModel cellView = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    result <- gtk_cell_view_get_model cellView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.TreeModel.TreeModel) result'
        return result''
    touchManagedPtr cellView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data CellViewGetModelMethodInfo
instance (signature ~ (m (Maybe Gtk.TreeModel.TreeModel)), MonadIO m, IsCellView a) => O.MethodInfo CellViewGetModelMethodInfo a signature where
    overloadedMethod = cellViewGetModel

#endif

-- method CellView::get_size_of_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "path"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreePath" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreePath" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "requisition"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Requisition" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for the size"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_get_size_of_row" gtk_cell_view_get_size_of_row :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr Gtk.Requisition.Requisition ->      -- requisition : TInterface (Name {namespace = "Gtk", name = "Requisition"})
    IO CInt

{-# DEPRECATED cellViewGetSizeOfRow ["(Since version 3.0)","Combo box formerly used this to calculate the","sizes for cellviews, now you can achieve this by either using","the t'GI.Gtk.Objects.CellView.CellView':@/fit-model/@ property or by setting the currently","displayed row of the t'GI.Gtk.Objects.CellView.CellView' and using 'GI.Gtk.Objects.Widget.widgetGetPreferredSize'."] #-}
-- | Sets /@requisition@/ to the size needed by /@cellView@/ to display
-- the model row pointed to by /@path@/.
-- 
-- /Since: 2.6/
cellViewGetSizeOfRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath'
    -> m ((Bool, Gtk.Requisition.Requisition))
    -- ^ __Returns:__ 'P.True'
cellViewGetSizeOfRow cellView path = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    path' <- unsafeManagedPtrGetPtr path
    requisition <- callocBoxedBytes 8 :: IO (Ptr Gtk.Requisition.Requisition)
    result <- gtk_cell_view_get_size_of_row cellView' path' requisition
    let result' = (/= 0) result
    requisition' <- (wrapBoxed Gtk.Requisition.Requisition) requisition
    touchManagedPtr cellView
    touchManagedPtr path
    return (result', requisition')

#if defined(ENABLE_OVERLOADING)
data CellViewGetSizeOfRowMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m ((Bool, Gtk.Requisition.Requisition))), MonadIO m, IsCellView a) => O.MethodInfo CellViewGetSizeOfRowMethodInfo a signature where
    overloadedMethod = cellViewGetSizeOfRow

#endif

-- method CellView::set_background_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Color" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new background color"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_background_color" gtk_cell_view_set_background_color :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    Ptr Gdk.Color.Color ->                  -- color : TInterface (Name {namespace = "Gdk", name = "Color"})
    IO ()

{-# DEPRECATED cellViewSetBackgroundColor ["(Since version 3.4)","Use 'GI.Gtk.Objects.CellView.cellViewSetBackgroundRgba' instead."] #-}
-- | Sets the background color of /@view@/.
-- 
-- /Since: 2.6/
cellViewSetBackgroundColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Gdk.Color.Color
    -- ^ /@color@/: the new background color
    -> m ()
cellViewSetBackgroundColor cellView color = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    color' <- unsafeManagedPtrGetPtr color
    gtk_cell_view_set_background_color cellView' color'
    touchManagedPtr cellView
    touchManagedPtr color
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetBackgroundColorMethodInfo
instance (signature ~ (Gdk.Color.Color -> m ()), MonadIO m, IsCellView a) => O.MethodInfo CellViewSetBackgroundColorMethodInfo a signature where
    overloadedMethod = cellViewSetBackgroundColor

#endif

-- method CellView::set_background_rgba
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new background color"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_background_rgba" gtk_cell_view_set_background_rgba :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO ()

-- | Sets the background color of /@cellView@/.
-- 
-- /Since: 3.0/
cellViewSetBackgroundRgba ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Gdk.RGBA.RGBA
    -- ^ /@rgba@/: the new background color
    -> m ()
cellViewSetBackgroundRgba cellView rgba = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    rgba' <- unsafeManagedPtrGetPtr rgba
    gtk_cell_view_set_background_rgba cellView' rgba'
    touchManagedPtr cellView
    touchManagedPtr rgba
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetBackgroundRgbaMethodInfo
instance (signature ~ (Gdk.RGBA.RGBA -> m ()), MonadIO m, IsCellView a) => O.MethodInfo CellViewSetBackgroundRgbaMethodInfo a signature where
    overloadedMethod = cellViewSetBackgroundRgba

#endif

-- method CellView::set_displayed_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "path"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreePath" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreePath or %NULL to unset."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_displayed_row" gtk_cell_view_set_displayed_row :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO ()

-- | Sets the row of the model that is currently displayed
-- by the t'GI.Gtk.Objects.CellView.CellView'. If the path is unset, then the
-- contents of the cellview “stick” at their last value;
-- this is not normally a desired result, but may be
-- a needed intermediate state if say, the model for
-- the t'GI.Gtk.Objects.CellView.CellView' becomes temporarily empty.
-- 
-- /Since: 2.6/
cellViewSetDisplayedRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Maybe (Gtk.TreePath.TreePath)
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath' or 'P.Nothing' to unset.
    -> m ()
cellViewSetDisplayedRow cellView path = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    maybePath <- case path of
        Nothing -> return nullPtr
        Just jPath -> do
            jPath' <- unsafeManagedPtrGetPtr jPath
            return jPath'
    gtk_cell_view_set_displayed_row cellView' maybePath
    touchManagedPtr cellView
    whenJust path touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetDisplayedRowMethodInfo
instance (signature ~ (Maybe (Gtk.TreePath.TreePath) -> m ()), MonadIO m, IsCellView a) => O.MethodInfo CellViewSetDisplayedRowMethodInfo a signature where
    overloadedMethod = cellViewSetDisplayedRow

#endif

-- method CellView::set_draw_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "draw_sensitive"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to draw all cells in a sensitive state."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_draw_sensitive" gtk_cell_view_set_draw_sensitive :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    CInt ->                                 -- draw_sensitive : TBasicType TBoolean
    IO ()

-- | Sets whether /@cellView@/ should draw all of its
-- cells in a sensitive state, this is used by t'GI.Gtk.Objects.ComboBox.ComboBox' menus
-- to ensure that rows with insensitive cells that contain
-- children appear sensitive in the parent menu item.
-- 
-- /Since: 3.0/
cellViewSetDrawSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Bool
    -- ^ /@drawSensitive@/: whether to draw all cells in a sensitive state.
    -> m ()
cellViewSetDrawSensitive cellView drawSensitive = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    let drawSensitive' = (fromIntegral . fromEnum) drawSensitive
    gtk_cell_view_set_draw_sensitive cellView' drawSensitive'
    touchManagedPtr cellView
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetDrawSensitiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCellView a) => O.MethodInfo CellViewSetDrawSensitiveMethodInfo a signature where
    overloadedMethod = cellViewSetDrawSensitive

#endif

-- method CellView::set_fit_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fit_model"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @cell_view should request space for the whole model."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_fit_model" gtk_cell_view_set_fit_model :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    CInt ->                                 -- fit_model : TBasicType TBoolean
    IO ()

-- | Sets whether /@cellView@/ should request space to fit the entire t'GI.Gtk.Interfaces.TreeModel.TreeModel'.
-- 
-- This is used by t'GI.Gtk.Objects.ComboBox.ComboBox' to ensure that the cell view displayed on
-- the combo box’s button always gets enough space and does not resize
-- when selection changes.
-- 
-- /Since: 3.0/
cellViewSetFitModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Bool
    -- ^ /@fitModel@/: whether /@cellView@/ should request space for the whole model.
    -> m ()
cellViewSetFitModel cellView fitModel = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    let fitModel' = (fromIntegral . fromEnum) fitModel
    gtk_cell_view_set_fit_model cellView' fitModel'
    touchManagedPtr cellView
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetFitModelMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCellView a) => O.MethodInfo CellViewSetFitModelMethodInfo a signature where
    overloadedMethod = cellViewSetFitModel

#endif

-- method CellView::set_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "cell_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeModel" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreeModel" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_cell_view_set_model" gtk_cell_view_set_model :: 
    Ptr CellView ->                         -- cell_view : TInterface (Name {namespace = "Gtk", name = "CellView"})
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO ()

-- | Sets the model for /@cellView@/.  If /@cellView@/ already has a model
-- set, it will remove it before setting the new model.  If /@model@/ is
-- 'P.Nothing', then it will unset the old model.
-- 
-- /Since: 2.6/
cellViewSetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsCellView a, Gtk.TreeModel.IsTreeModel b) =>
    a
    -- ^ /@cellView@/: a t'GI.Gtk.Objects.CellView.CellView'
    -> Maybe (b)
    -- ^ /@model@/: a t'GI.Gtk.Interfaces.TreeModel.TreeModel'
    -> m ()
cellViewSetModel cellView model = liftIO $ do
    cellView' <- unsafeManagedPtrCastPtr cellView
    maybeModel <- case model of
        Nothing -> return nullPtr
        Just jModel -> do
            jModel' <- unsafeManagedPtrCastPtr jModel
            return jModel'
    gtk_cell_view_set_model cellView' maybeModel
    touchManagedPtr cellView
    whenJust model touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data CellViewSetModelMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsCellView a, Gtk.TreeModel.IsTreeModel b) => O.MethodInfo CellViewSetModelMethodInfo a signature where
    overloadedMethod = cellViewSetModel

#endif

