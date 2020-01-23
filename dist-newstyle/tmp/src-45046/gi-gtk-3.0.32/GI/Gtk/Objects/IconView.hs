{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.IconView.IconView' provides an alternative view on a t'GI.Gtk.Interfaces.TreeModel.TreeModel'.
-- It displays the model as a grid of icons with labels. Like
-- t'GI.Gtk.Objects.TreeView.TreeView', it allows to select one or multiple items
-- (depending on the selection mode, see 'GI.Gtk.Objects.IconView.iconViewSetSelectionMode').
-- In addition to selection with the arrow keys, t'GI.Gtk.Objects.IconView.IconView' supports
-- rubberband selection, which is controlled by dragging the pointer.
-- 
-- Note that if the tree model is backed by an actual tree store (as
-- opposed to a flat list where the mapping to icons is obvious),
-- t'GI.Gtk.Objects.IconView.IconView' will only display the first level of the tree and
-- ignore the tree’s branches.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >iconview.view
-- >╰── [rubberband]
-- 
-- 
-- GtkIconView has a single CSS node with name iconview and style class .view.
-- For rubberband selection, a subnode with name rubberband is used.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.IconView
    ( 

-- * Exported types
    IconView(..)                            ,
    IsIconView                              ,
    toIconView                              ,
    noIconView                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIconViewMethod                   ,
#endif


-- ** convertWidgetToBinWindowCoords #method:convertWidgetToBinWindowCoords#

#if defined(ENABLE_OVERLOADING)
    IconViewConvertWidgetToBinWindowCoordsMethodInfo,
#endif
    iconViewConvertWidgetToBinWindowCoords  ,


-- ** createDragIcon #method:createDragIcon#

#if defined(ENABLE_OVERLOADING)
    IconViewCreateDragIconMethodInfo        ,
#endif
    iconViewCreateDragIcon                  ,


-- ** enableModelDragDest #method:enableModelDragDest#

#if defined(ENABLE_OVERLOADING)
    IconViewEnableModelDragDestMethodInfo   ,
#endif
    iconViewEnableModelDragDest             ,


-- ** enableModelDragSource #method:enableModelDragSource#

#if defined(ENABLE_OVERLOADING)
    IconViewEnableModelDragSourceMethodInfo ,
#endif
    iconViewEnableModelDragSource           ,


-- ** getActivateOnSingleClick #method:getActivateOnSingleClick#

#if defined(ENABLE_OVERLOADING)
    IconViewGetActivateOnSingleClickMethodInfo,
#endif
    iconViewGetActivateOnSingleClick        ,


-- ** getCellRect #method:getCellRect#

#if defined(ENABLE_OVERLOADING)
    IconViewGetCellRectMethodInfo           ,
#endif
    iconViewGetCellRect                     ,


-- ** getColumnSpacing #method:getColumnSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewGetColumnSpacingMethodInfo      ,
#endif
    iconViewGetColumnSpacing                ,


-- ** getColumns #method:getColumns#

#if defined(ENABLE_OVERLOADING)
    IconViewGetColumnsMethodInfo            ,
#endif
    iconViewGetColumns                      ,


-- ** getCursor #method:getCursor#

#if defined(ENABLE_OVERLOADING)
    IconViewGetCursorMethodInfo             ,
#endif
    iconViewGetCursor                       ,


-- ** getDestItemAtPos #method:getDestItemAtPos#

#if defined(ENABLE_OVERLOADING)
    IconViewGetDestItemAtPosMethodInfo      ,
#endif
    iconViewGetDestItemAtPos                ,


-- ** getDragDestItem #method:getDragDestItem#

#if defined(ENABLE_OVERLOADING)
    IconViewGetDragDestItemMethodInfo       ,
#endif
    iconViewGetDragDestItem                 ,


-- ** getItemAtPos #method:getItemAtPos#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemAtPosMethodInfo          ,
#endif
    iconViewGetItemAtPos                    ,


-- ** getItemColumn #method:getItemColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemColumnMethodInfo         ,
#endif
    iconViewGetItemColumn                   ,


-- ** getItemOrientation #method:getItemOrientation#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemOrientationMethodInfo    ,
#endif
    iconViewGetItemOrientation              ,


-- ** getItemPadding #method:getItemPadding#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemPaddingMethodInfo        ,
#endif
    iconViewGetItemPadding                  ,


-- ** getItemRow #method:getItemRow#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemRowMethodInfo            ,
#endif
    iconViewGetItemRow                      ,


-- ** getItemWidth #method:getItemWidth#

#if defined(ENABLE_OVERLOADING)
    IconViewGetItemWidthMethodInfo          ,
#endif
    iconViewGetItemWidth                    ,


-- ** getMargin #method:getMargin#

#if defined(ENABLE_OVERLOADING)
    IconViewGetMarginMethodInfo             ,
#endif
    iconViewGetMargin                       ,


-- ** getMarkupColumn #method:getMarkupColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewGetMarkupColumnMethodInfo       ,
#endif
    iconViewGetMarkupColumn                 ,


-- ** getModel #method:getModel#

#if defined(ENABLE_OVERLOADING)
    IconViewGetModelMethodInfo              ,
#endif
    iconViewGetModel                        ,


-- ** getPathAtPos #method:getPathAtPos#

#if defined(ENABLE_OVERLOADING)
    IconViewGetPathAtPosMethodInfo          ,
#endif
    iconViewGetPathAtPos                    ,


-- ** getPixbufColumn #method:getPixbufColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewGetPixbufColumnMethodInfo       ,
#endif
    iconViewGetPixbufColumn                 ,


-- ** getReorderable #method:getReorderable#

#if defined(ENABLE_OVERLOADING)
    IconViewGetReorderableMethodInfo        ,
#endif
    iconViewGetReorderable                  ,


-- ** getRowSpacing #method:getRowSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewGetRowSpacingMethodInfo         ,
#endif
    iconViewGetRowSpacing                   ,


-- ** getSelectedItems #method:getSelectedItems#

#if defined(ENABLE_OVERLOADING)
    IconViewGetSelectedItemsMethodInfo      ,
#endif
    iconViewGetSelectedItems                ,


-- ** getSelectionMode #method:getSelectionMode#

#if defined(ENABLE_OVERLOADING)
    IconViewGetSelectionModeMethodInfo      ,
#endif
    iconViewGetSelectionMode                ,


-- ** getSpacing #method:getSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewGetSpacingMethodInfo            ,
#endif
    iconViewGetSpacing                      ,


-- ** getTextColumn #method:getTextColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewGetTextColumnMethodInfo         ,
#endif
    iconViewGetTextColumn                   ,


-- ** getTooltipColumn #method:getTooltipColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewGetTooltipColumnMethodInfo      ,
#endif
    iconViewGetTooltipColumn                ,


-- ** getTooltipContext #method:getTooltipContext#

#if defined(ENABLE_OVERLOADING)
    IconViewGetTooltipContextMethodInfo     ,
#endif
    iconViewGetTooltipContext               ,


-- ** getVisibleRange #method:getVisibleRange#

#if defined(ENABLE_OVERLOADING)
    IconViewGetVisibleRangeMethodInfo       ,
#endif
    iconViewGetVisibleRange                 ,


-- ** itemActivated #method:itemActivated#

#if defined(ENABLE_OVERLOADING)
    IconViewItemActivatedMethodInfo         ,
#endif
    iconViewItemActivated                   ,


-- ** new #method:new#

    iconViewNew                             ,


-- ** newWithArea #method:newWithArea#

    iconViewNewWithArea                     ,


-- ** newWithModel #method:newWithModel#

    iconViewNewWithModel                    ,


-- ** pathIsSelected #method:pathIsSelected#

#if defined(ENABLE_OVERLOADING)
    IconViewPathIsSelectedMethodInfo        ,
#endif
    iconViewPathIsSelected                  ,


-- ** scrollToPath #method:scrollToPath#

#if defined(ENABLE_OVERLOADING)
    IconViewScrollToPathMethodInfo          ,
#endif
    iconViewScrollToPath                    ,


-- ** selectAll #method:selectAll#

#if defined(ENABLE_OVERLOADING)
    IconViewSelectAllMethodInfo             ,
#endif
    iconViewSelectAll                       ,


-- ** selectPath #method:selectPath#

#if defined(ENABLE_OVERLOADING)
    IconViewSelectPathMethodInfo            ,
#endif
    iconViewSelectPath                      ,


-- ** selectedForeach #method:selectedForeach#

#if defined(ENABLE_OVERLOADING)
    IconViewSelectedForeachMethodInfo       ,
#endif
    iconViewSelectedForeach                 ,


-- ** setActivateOnSingleClick #method:setActivateOnSingleClick#

#if defined(ENABLE_OVERLOADING)
    IconViewSetActivateOnSingleClickMethodInfo,
#endif
    iconViewSetActivateOnSingleClick        ,


-- ** setColumnSpacing #method:setColumnSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewSetColumnSpacingMethodInfo      ,
#endif
    iconViewSetColumnSpacing                ,


-- ** setColumns #method:setColumns#

#if defined(ENABLE_OVERLOADING)
    IconViewSetColumnsMethodInfo            ,
#endif
    iconViewSetColumns                      ,


-- ** setCursor #method:setCursor#

#if defined(ENABLE_OVERLOADING)
    IconViewSetCursorMethodInfo             ,
#endif
    iconViewSetCursor                       ,


-- ** setDragDestItem #method:setDragDestItem#

#if defined(ENABLE_OVERLOADING)
    IconViewSetDragDestItemMethodInfo       ,
#endif
    iconViewSetDragDestItem                 ,


-- ** setItemOrientation #method:setItemOrientation#

#if defined(ENABLE_OVERLOADING)
    IconViewSetItemOrientationMethodInfo    ,
#endif
    iconViewSetItemOrientation              ,


-- ** setItemPadding #method:setItemPadding#

#if defined(ENABLE_OVERLOADING)
    IconViewSetItemPaddingMethodInfo        ,
#endif
    iconViewSetItemPadding                  ,


-- ** setItemWidth #method:setItemWidth#

#if defined(ENABLE_OVERLOADING)
    IconViewSetItemWidthMethodInfo          ,
#endif
    iconViewSetItemWidth                    ,


-- ** setMargin #method:setMargin#

#if defined(ENABLE_OVERLOADING)
    IconViewSetMarginMethodInfo             ,
#endif
    iconViewSetMargin                       ,


-- ** setMarkupColumn #method:setMarkupColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewSetMarkupColumnMethodInfo       ,
#endif
    iconViewSetMarkupColumn                 ,


-- ** setModel #method:setModel#

#if defined(ENABLE_OVERLOADING)
    IconViewSetModelMethodInfo              ,
#endif
    iconViewSetModel                        ,


-- ** setPixbufColumn #method:setPixbufColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewSetPixbufColumnMethodInfo       ,
#endif
    iconViewSetPixbufColumn                 ,


-- ** setReorderable #method:setReorderable#

#if defined(ENABLE_OVERLOADING)
    IconViewSetReorderableMethodInfo        ,
#endif
    iconViewSetReorderable                  ,


-- ** setRowSpacing #method:setRowSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewSetRowSpacingMethodInfo         ,
#endif
    iconViewSetRowSpacing                   ,


-- ** setSelectionMode #method:setSelectionMode#

#if defined(ENABLE_OVERLOADING)
    IconViewSetSelectionModeMethodInfo      ,
#endif
    iconViewSetSelectionMode                ,


-- ** setSpacing #method:setSpacing#

#if defined(ENABLE_OVERLOADING)
    IconViewSetSpacingMethodInfo            ,
#endif
    iconViewSetSpacing                      ,


-- ** setTextColumn #method:setTextColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewSetTextColumnMethodInfo         ,
#endif
    iconViewSetTextColumn                   ,


-- ** setTooltipCell #method:setTooltipCell#

#if defined(ENABLE_OVERLOADING)
    IconViewSetTooltipCellMethodInfo        ,
#endif
    iconViewSetTooltipCell                  ,


-- ** setTooltipColumn #method:setTooltipColumn#

#if defined(ENABLE_OVERLOADING)
    IconViewSetTooltipColumnMethodInfo      ,
#endif
    iconViewSetTooltipColumn                ,


-- ** setTooltipItem #method:setTooltipItem#

#if defined(ENABLE_OVERLOADING)
    IconViewSetTooltipItemMethodInfo        ,
#endif
    iconViewSetTooltipItem                  ,


-- ** unselectAll #method:unselectAll#

#if defined(ENABLE_OVERLOADING)
    IconViewUnselectAllMethodInfo           ,
#endif
    iconViewUnselectAll                     ,


-- ** unselectPath #method:unselectPath#

#if defined(ENABLE_OVERLOADING)
    IconViewUnselectPathMethodInfo          ,
#endif
    iconViewUnselectPath                    ,


-- ** unsetModelDragDest #method:unsetModelDragDest#

#if defined(ENABLE_OVERLOADING)
    IconViewUnsetModelDragDestMethodInfo    ,
#endif
    iconViewUnsetModelDragDest              ,


-- ** unsetModelDragSource #method:unsetModelDragSource#

#if defined(ENABLE_OVERLOADING)
    IconViewUnsetModelDragSourceMethodInfo  ,
#endif
    iconViewUnsetModelDragSource            ,




 -- * Properties
-- ** activateOnSingleClick #attr:activateOnSingleClick#
-- | The activate-on-single-click property specifies whether the \"item-activated\" signal
-- will be emitted after a single click.
-- 
-- /Since: 3.8/

#if defined(ENABLE_OVERLOADING)
    IconViewActivateOnSingleClickPropertyInfo,
#endif
    constructIconViewActivateOnSingleClick  ,
    getIconViewActivateOnSingleClick        ,
#if defined(ENABLE_OVERLOADING)
    iconViewActivateOnSingleClick           ,
#endif
    setIconViewActivateOnSingleClick        ,


-- ** cellArea #attr:cellArea#
-- | The t'GI.Gtk.Objects.CellArea.CellArea' used to layout cell renderers for this view.
-- 
-- If no area is specified when creating the icon view with 'GI.Gtk.Objects.IconView.iconViewNewWithArea'
-- a t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' will be used.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    IconViewCellAreaPropertyInfo            ,
#endif
    constructIconViewCellArea               ,
    getIconViewCellArea                     ,
#if defined(ENABLE_OVERLOADING)
    iconViewCellArea                        ,
#endif


-- ** columnSpacing #attr:columnSpacing#
-- | The column-spacing property specifies the space which is inserted between
-- the columns of the icon view.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewColumnSpacingPropertyInfo       ,
#endif
    constructIconViewColumnSpacing          ,
    getIconViewColumnSpacing                ,
#if defined(ENABLE_OVERLOADING)
    iconViewColumnSpacing                   ,
#endif
    setIconViewColumnSpacing                ,


-- ** columns #attr:columns#
-- | The columns property contains the number of the columns in which the
-- items should be displayed. If it is -1, the number of columns will
-- be chosen automatically to fill the available area.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewColumnsPropertyInfo             ,
#endif
    constructIconViewColumns                ,
    getIconViewColumns                      ,
#if defined(ENABLE_OVERLOADING)
    iconViewColumns                         ,
#endif
    setIconViewColumns                      ,


-- ** itemOrientation #attr:itemOrientation#
-- | The item-orientation property specifies how the cells (i.e. the icon and
-- the text) of the item are positioned relative to each other.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewItemOrientationPropertyInfo     ,
#endif
    constructIconViewItemOrientation        ,
    getIconViewItemOrientation              ,
#if defined(ENABLE_OVERLOADING)
    iconViewItemOrientation                 ,
#endif
    setIconViewItemOrientation              ,


-- ** itemPadding #attr:itemPadding#
-- | The item-padding property specifies the padding around each
-- of the icon view\'s item.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    IconViewItemPaddingPropertyInfo         ,
#endif
    constructIconViewItemPadding            ,
    getIconViewItemPadding                  ,
#if defined(ENABLE_OVERLOADING)
    iconViewItemPadding                     ,
#endif
    setIconViewItemPadding                  ,


-- ** itemWidth #attr:itemWidth#
-- | The item-width property specifies the width to use for each item.
-- If it is set to -1, the icon view will automatically determine a
-- suitable item size.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewItemWidthPropertyInfo           ,
#endif
    constructIconViewItemWidth              ,
    getIconViewItemWidth                    ,
#if defined(ENABLE_OVERLOADING)
    iconViewItemWidth                       ,
#endif
    setIconViewItemWidth                    ,


-- ** margin #attr:margin#
-- | The margin property specifies the space which is inserted
-- at the edges of the icon view.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewMarginPropertyInfo              ,
#endif
    constructIconViewMargin                 ,
    getIconViewMargin                       ,
#if defined(ENABLE_OVERLOADING)
    iconViewMargin                          ,
#endif
    setIconViewMargin                       ,


-- ** markupColumn #attr:markupColumn#
-- | The [markupColumn](#signal:markupColumn) property contains the number of the model column
-- containing markup information to be displayed. The markup column must be
-- of type @/G_TYPE_STRING/@. If this property and the :text-column property
-- are both set to column numbers, it overrides the text column.
-- If both are set to -1, no texts are displayed.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewMarkupColumnPropertyInfo        ,
#endif
    constructIconViewMarkupColumn           ,
    getIconViewMarkupColumn                 ,
#if defined(ENABLE_OVERLOADING)
    iconViewMarkupColumn                    ,
#endif
    setIconViewMarkupColumn                 ,


-- ** model #attr:model#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    IconViewModelPropertyInfo               ,
#endif
    clearIconViewModel                      ,
    constructIconViewModel                  ,
    getIconViewModel                        ,
#if defined(ENABLE_OVERLOADING)
    iconViewModel                           ,
#endif
    setIconViewModel                        ,


-- ** pixbufColumn #attr:pixbufColumn#
-- | The [pixbufColumn](#signal:pixbufColumn) property contains the number of the model column
-- containing the pixbufs which are displayed. The pixbuf column must be
-- of type @/GDK_TYPE_PIXBUF/@. Setting this property to -1 turns off the
-- display of pixbufs.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewPixbufColumnPropertyInfo        ,
#endif
    constructIconViewPixbufColumn           ,
    getIconViewPixbufColumn                 ,
#if defined(ENABLE_OVERLOADING)
    iconViewPixbufColumn                    ,
#endif
    setIconViewPixbufColumn                 ,


-- ** reorderable #attr:reorderable#
-- | The reorderable property specifies if the items can be reordered
-- by DND.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    IconViewReorderablePropertyInfo         ,
#endif
    constructIconViewReorderable            ,
    getIconViewReorderable                  ,
#if defined(ENABLE_OVERLOADING)
    iconViewReorderable                     ,
#endif
    setIconViewReorderable                  ,


-- ** rowSpacing #attr:rowSpacing#
-- | The row-spacing property specifies the space which is inserted between
-- the rows of the icon view.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewRowSpacingPropertyInfo          ,
#endif
    constructIconViewRowSpacing             ,
    getIconViewRowSpacing                   ,
#if defined(ENABLE_OVERLOADING)
    iconViewRowSpacing                      ,
#endif
    setIconViewRowSpacing                   ,


-- ** selectionMode #attr:selectionMode#
-- | The [selectionMode](#signal:selectionMode) property specifies the selection mode of
-- icon view. If the mode is @/GTK_SELECTION_MULTIPLE/@, rubberband selection
-- is enabled, for the other modes, only keyboard selection is possible.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewSelectionModePropertyInfo       ,
#endif
    constructIconViewSelectionMode          ,
    getIconViewSelectionMode                ,
#if defined(ENABLE_OVERLOADING)
    iconViewSelectionMode                   ,
#endif
    setIconViewSelectionMode                ,


-- ** spacing #attr:spacing#
-- | The spacing property specifies the space which is inserted between
-- the cells (i.e. the icon and the text) of an item.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewSpacingPropertyInfo             ,
#endif
    constructIconViewSpacing                ,
    getIconViewSpacing                      ,
#if defined(ENABLE_OVERLOADING)
    iconViewSpacing                         ,
#endif
    setIconViewSpacing                      ,


-- ** textColumn #attr:textColumn#
-- | The [textColumn](#signal:textColumn) property contains the number of the model column
-- containing the texts which are displayed. The text column must be
-- of type @/G_TYPE_STRING/@. If this property and the :markup-column
-- property are both set to -1, no texts are displayed.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    IconViewTextColumnPropertyInfo          ,
#endif
    constructIconViewTextColumn             ,
    getIconViewTextColumn                   ,
#if defined(ENABLE_OVERLOADING)
    iconViewTextColumn                      ,
#endif
    setIconViewTextColumn                   ,


-- ** tooltipColumn #attr:tooltipColumn#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    IconViewTooltipColumnPropertyInfo       ,
#endif
    constructIconViewTooltipColumn          ,
    getIconViewTooltipColumn                ,
#if defined(ENABLE_OVERLOADING)
    iconViewTooltipColumn                   ,
#endif
    setIconViewTooltipColumn                ,




 -- * Signals
-- ** activateCursorItem #signal:activateCursorItem#

    C_IconViewActivateCursorItemCallback    ,
    IconViewActivateCursorItemCallback      ,
#if defined(ENABLE_OVERLOADING)
    IconViewActivateCursorItemSignalInfo    ,
#endif
    afterIconViewActivateCursorItem         ,
    genClosure_IconViewActivateCursorItem   ,
    mk_IconViewActivateCursorItemCallback   ,
    noIconViewActivateCursorItemCallback    ,
    onIconViewActivateCursorItem            ,
    wrap_IconViewActivateCursorItemCallback ,


-- ** itemActivated #signal:itemActivated#

    C_IconViewItemActivatedCallback         ,
    IconViewItemActivatedCallback           ,
#if defined(ENABLE_OVERLOADING)
    IconViewItemActivatedSignalInfo         ,
#endif
    afterIconViewItemActivated              ,
    genClosure_IconViewItemActivated        ,
    mk_IconViewItemActivatedCallback        ,
    noIconViewItemActivatedCallback         ,
    onIconViewItemActivated                 ,
    wrap_IconViewItemActivatedCallback      ,


-- ** moveCursor #signal:moveCursor#

    C_IconViewMoveCursorCallback            ,
    IconViewMoveCursorCallback              ,
#if defined(ENABLE_OVERLOADING)
    IconViewMoveCursorSignalInfo            ,
#endif
    afterIconViewMoveCursor                 ,
    genClosure_IconViewMoveCursor           ,
    mk_IconViewMoveCursorCallback           ,
    noIconViewMoveCursorCallback            ,
    onIconViewMoveCursor                    ,
    wrap_IconViewMoveCursorCallback         ,


-- ** selectAll #signal:selectAll#

    C_IconViewSelectAllCallback             ,
    IconViewSelectAllCallback               ,
#if defined(ENABLE_OVERLOADING)
    IconViewSelectAllSignalInfo             ,
#endif
    afterIconViewSelectAll                  ,
    genClosure_IconViewSelectAll            ,
    mk_IconViewSelectAllCallback            ,
    noIconViewSelectAllCallback             ,
    onIconViewSelectAll                     ,
    wrap_IconViewSelectAllCallback          ,


-- ** selectCursorItem #signal:selectCursorItem#

    C_IconViewSelectCursorItemCallback      ,
    IconViewSelectCursorItemCallback        ,
#if defined(ENABLE_OVERLOADING)
    IconViewSelectCursorItemSignalInfo      ,
#endif
    afterIconViewSelectCursorItem           ,
    genClosure_IconViewSelectCursorItem     ,
    mk_IconViewSelectCursorItemCallback     ,
    noIconViewSelectCursorItemCallback      ,
    onIconViewSelectCursorItem              ,
    wrap_IconViewSelectCursorItemCallback   ,


-- ** selectionChanged #signal:selectionChanged#

    C_IconViewSelectionChangedCallback      ,
    IconViewSelectionChangedCallback        ,
#if defined(ENABLE_OVERLOADING)
    IconViewSelectionChangedSignalInfo      ,
#endif
    afterIconViewSelectionChanged           ,
    genClosure_IconViewSelectionChanged     ,
    mk_IconViewSelectionChangedCallback     ,
    noIconViewSelectionChangedCallback      ,
    onIconViewSelectionChanged              ,
    wrap_IconViewSelectionChangedCallback   ,


-- ** toggleCursorItem #signal:toggleCursorItem#

    C_IconViewToggleCursorItemCallback      ,
    IconViewToggleCursorItemCallback        ,
#if defined(ENABLE_OVERLOADING)
    IconViewToggleCursorItemSignalInfo      ,
#endif
    afterIconViewToggleCursorItem           ,
    genClosure_IconViewToggleCursorItem     ,
    mk_IconViewToggleCursorItemCallback     ,
    noIconViewToggleCursorItemCallback      ,
    onIconViewToggleCursorItem              ,
    wrap_IconViewToggleCursorItemCallback   ,


-- ** unselectAll #signal:unselectAll#

    C_IconViewUnselectAllCallback           ,
    IconViewUnselectAllCallback             ,
#if defined(ENABLE_OVERLOADING)
    IconViewUnselectAllSignalInfo           ,
#endif
    afterIconViewUnselectAll                ,
    genClosure_IconViewUnselectAll          ,
    mk_IconViewUnselectAllCallback          ,
    noIconViewUnselectAllCallback           ,
    onIconViewUnselectAll                   ,
    wrap_IconViewUnselectAllCallback        ,




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
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Flags as Gdk.Flags
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellLayout as Gtk.CellLayout
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Scrollable as Gtk.Scrollable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellArea as Gtk.CellArea
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellRenderer as Gtk.CellRenderer
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Tooltip as Gtk.Tooltip
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.TargetEntry as Gtk.TargetEntry
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreeIter as Gtk.TreeIter
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreePath as Gtk.TreePath

-- | Memory-managed wrapper type.
newtype IconView = IconView (ManagedPtr IconView)
    deriving (Eq)
foreign import ccall "gtk_icon_view_get_type"
    c_gtk_icon_view_get_type :: IO GType

instance GObject IconView where
    gobjectType = c_gtk_icon_view_get_type
    

-- | Convert 'IconView' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IconView where
    toGValue o = do
        gtype <- c_gtk_icon_view_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IconView)
        B.ManagedPtr.newObject IconView ptr
        
    

-- | Type class for types which can be safely cast to `IconView`, for instance with `toIconView`.
class (GObject o, O.IsDescendantOf IconView o) => IsIconView o
instance (GObject o, O.IsDescendantOf IconView o) => IsIconView o

instance O.HasParentTypes IconView
type instance O.ParentTypes IconView = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.CellLayout.CellLayout, Gtk.Scrollable.Scrollable]

-- | Cast to `IconView`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIconView :: (MonadIO m, IsIconView o) => o -> m IconView
toIconView = liftIO . unsafeCastTo IconView

-- | A convenience alias for `Nothing` :: `Maybe` `IconView`.
noIconView :: Maybe IconView
noIconView = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIconViewMethod (t :: Symbol) (o :: *) :: * where
    ResolveIconViewMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveIconViewMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveIconViewMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveIconViewMethod "addAttribute" o = Gtk.CellLayout.CellLayoutAddAttributeMethodInfo
    ResolveIconViewMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveIconViewMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveIconViewMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveIconViewMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveIconViewMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveIconViewMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIconViewMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIconViewMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveIconViewMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveIconViewMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveIconViewMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveIconViewMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveIconViewMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveIconViewMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveIconViewMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveIconViewMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveIconViewMethod "clear" o = Gtk.CellLayout.CellLayoutClearMethodInfo
    ResolveIconViewMethod "clearAttributes" o = Gtk.CellLayout.CellLayoutClearAttributesMethodInfo
    ResolveIconViewMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveIconViewMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveIconViewMethod "convertWidgetToBinWindowCoords" o = IconViewConvertWidgetToBinWindowCoordsMethodInfo
    ResolveIconViewMethod "createDragIcon" o = IconViewCreateDragIconMethodInfo
    ResolveIconViewMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveIconViewMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveIconViewMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveIconViewMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveIconViewMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveIconViewMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveIconViewMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveIconViewMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveIconViewMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveIconViewMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveIconViewMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveIconViewMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveIconViewMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveIconViewMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveIconViewMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveIconViewMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveIconViewMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveIconViewMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveIconViewMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveIconViewMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveIconViewMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveIconViewMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveIconViewMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveIconViewMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveIconViewMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveIconViewMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveIconViewMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveIconViewMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveIconViewMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveIconViewMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveIconViewMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveIconViewMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveIconViewMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveIconViewMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveIconViewMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveIconViewMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveIconViewMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveIconViewMethod "enableModelDragDest" o = IconViewEnableModelDragDestMethodInfo
    ResolveIconViewMethod "enableModelDragSource" o = IconViewEnableModelDragSourceMethodInfo
    ResolveIconViewMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveIconViewMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveIconViewMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveIconViewMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveIconViewMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIconViewMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveIconViewMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveIconViewMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIconViewMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIconViewMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveIconViewMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveIconViewMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveIconViewMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveIconViewMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveIconViewMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveIconViewMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveIconViewMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveIconViewMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveIconViewMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveIconViewMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveIconViewMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveIconViewMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveIconViewMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveIconViewMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveIconViewMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveIconViewMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveIconViewMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveIconViewMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveIconViewMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveIconViewMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIconViewMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveIconViewMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveIconViewMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveIconViewMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveIconViewMethod "itemActivated" o = IconViewItemActivatedMethodInfo
    ResolveIconViewMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveIconViewMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveIconViewMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveIconViewMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveIconViewMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveIconViewMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveIconViewMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveIconViewMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveIconViewMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveIconViewMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveIconViewMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveIconViewMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveIconViewMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveIconViewMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIconViewMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIconViewMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveIconViewMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveIconViewMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveIconViewMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveIconViewMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveIconViewMethod "packEnd" o = Gtk.CellLayout.CellLayoutPackEndMethodInfo
    ResolveIconViewMethod "packStart" o = Gtk.CellLayout.CellLayoutPackStartMethodInfo
    ResolveIconViewMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveIconViewMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveIconViewMethod "pathIsSelected" o = IconViewPathIsSelectedMethodInfo
    ResolveIconViewMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveIconViewMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveIconViewMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveIconViewMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveIconViewMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveIconViewMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveIconViewMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveIconViewMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveIconViewMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveIconViewMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIconViewMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIconViewMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveIconViewMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveIconViewMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveIconViewMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveIconViewMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveIconViewMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveIconViewMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveIconViewMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveIconViewMethod "reorder" o = Gtk.CellLayout.CellLayoutReorderMethodInfo
    ResolveIconViewMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveIconViewMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveIconViewMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveIconViewMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveIconViewMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIconViewMethod "scrollToPath" o = IconViewScrollToPathMethodInfo
    ResolveIconViewMethod "selectAll" o = IconViewSelectAllMethodInfo
    ResolveIconViewMethod "selectPath" o = IconViewSelectPathMethodInfo
    ResolveIconViewMethod "selectedForeach" o = IconViewSelectedForeachMethodInfo
    ResolveIconViewMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveIconViewMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveIconViewMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveIconViewMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveIconViewMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveIconViewMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveIconViewMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveIconViewMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveIconViewMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveIconViewMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIconViewMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIconViewMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveIconViewMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveIconViewMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveIconViewMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIconViewMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveIconViewMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveIconViewMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveIconViewMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveIconViewMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveIconViewMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIconViewMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveIconViewMethod "unselectAll" o = IconViewUnselectAllMethodInfo
    ResolveIconViewMethod "unselectPath" o = IconViewUnselectPathMethodInfo
    ResolveIconViewMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveIconViewMethod "unsetModelDragDest" o = IconViewUnsetModelDragDestMethodInfo
    ResolveIconViewMethod "unsetModelDragSource" o = IconViewUnsetModelDragSourceMethodInfo
    ResolveIconViewMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveIconViewMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIconViewMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveIconViewMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveIconViewMethod "getActivateOnSingleClick" o = IconViewGetActivateOnSingleClickMethodInfo
    ResolveIconViewMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveIconViewMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveIconViewMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveIconViewMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveIconViewMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveIconViewMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveIconViewMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveIconViewMethod "getArea" o = Gtk.CellLayout.CellLayoutGetAreaMethodInfo
    ResolveIconViewMethod "getBorder" o = Gtk.Scrollable.ScrollableGetBorderMethodInfo
    ResolveIconViewMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveIconViewMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveIconViewMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveIconViewMethod "getCellRect" o = IconViewGetCellRectMethodInfo
    ResolveIconViewMethod "getCells" o = Gtk.CellLayout.CellLayoutGetCellsMethodInfo
    ResolveIconViewMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveIconViewMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveIconViewMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveIconViewMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveIconViewMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveIconViewMethod "getColumnSpacing" o = IconViewGetColumnSpacingMethodInfo
    ResolveIconViewMethod "getColumns" o = IconViewGetColumnsMethodInfo
    ResolveIconViewMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveIconViewMethod "getCursor" o = IconViewGetCursorMethodInfo
    ResolveIconViewMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIconViewMethod "getDestItemAtPos" o = IconViewGetDestItemAtPosMethodInfo
    ResolveIconViewMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveIconViewMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveIconViewMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveIconViewMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveIconViewMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveIconViewMethod "getDragDestItem" o = IconViewGetDragDestItemMethodInfo
    ResolveIconViewMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveIconViewMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveIconViewMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveIconViewMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveIconViewMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveIconViewMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveIconViewMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveIconViewMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveIconViewMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveIconViewMethod "getHadjustment" o = Gtk.Scrollable.ScrollableGetHadjustmentMethodInfo
    ResolveIconViewMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveIconViewMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveIconViewMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveIconViewMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveIconViewMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveIconViewMethod "getHscrollPolicy" o = Gtk.Scrollable.ScrollableGetHscrollPolicyMethodInfo
    ResolveIconViewMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveIconViewMethod "getItemAtPos" o = IconViewGetItemAtPosMethodInfo
    ResolveIconViewMethod "getItemColumn" o = IconViewGetItemColumnMethodInfo
    ResolveIconViewMethod "getItemOrientation" o = IconViewGetItemOrientationMethodInfo
    ResolveIconViewMethod "getItemPadding" o = IconViewGetItemPaddingMethodInfo
    ResolveIconViewMethod "getItemRow" o = IconViewGetItemRowMethodInfo
    ResolveIconViewMethod "getItemWidth" o = IconViewGetItemWidthMethodInfo
    ResolveIconViewMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveIconViewMethod "getMargin" o = IconViewGetMarginMethodInfo
    ResolveIconViewMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveIconViewMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveIconViewMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveIconViewMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveIconViewMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveIconViewMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveIconViewMethod "getMarkupColumn" o = IconViewGetMarkupColumnMethodInfo
    ResolveIconViewMethod "getModel" o = IconViewGetModelMethodInfo
    ResolveIconViewMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveIconViewMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveIconViewMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveIconViewMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveIconViewMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveIconViewMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveIconViewMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveIconViewMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveIconViewMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveIconViewMethod "getPathAtPos" o = IconViewGetPathAtPosMethodInfo
    ResolveIconViewMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveIconViewMethod "getPixbufColumn" o = IconViewGetPixbufColumnMethodInfo
    ResolveIconViewMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveIconViewMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveIconViewMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveIconViewMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveIconViewMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveIconViewMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveIconViewMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveIconViewMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIconViewMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIconViewMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveIconViewMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveIconViewMethod "getReorderable" o = IconViewGetReorderableMethodInfo
    ResolveIconViewMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveIconViewMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveIconViewMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveIconViewMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveIconViewMethod "getRowSpacing" o = IconViewGetRowSpacingMethodInfo
    ResolveIconViewMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveIconViewMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveIconViewMethod "getSelectedItems" o = IconViewGetSelectedItemsMethodInfo
    ResolveIconViewMethod "getSelectionMode" o = IconViewGetSelectionModeMethodInfo
    ResolveIconViewMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveIconViewMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveIconViewMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveIconViewMethod "getSpacing" o = IconViewGetSpacingMethodInfo
    ResolveIconViewMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveIconViewMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveIconViewMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveIconViewMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveIconViewMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveIconViewMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveIconViewMethod "getTextColumn" o = IconViewGetTextColumnMethodInfo
    ResolveIconViewMethod "getTooltipColumn" o = IconViewGetTooltipColumnMethodInfo
    ResolveIconViewMethod "getTooltipContext" o = IconViewGetTooltipContextMethodInfo
    ResolveIconViewMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveIconViewMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveIconViewMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveIconViewMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveIconViewMethod "getVadjustment" o = Gtk.Scrollable.ScrollableGetVadjustmentMethodInfo
    ResolveIconViewMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveIconViewMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveIconViewMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveIconViewMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveIconViewMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveIconViewMethod "getVisibleRange" o = IconViewGetVisibleRangeMethodInfo
    ResolveIconViewMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveIconViewMethod "getVscrollPolicy" o = Gtk.Scrollable.ScrollableGetVscrollPolicyMethodInfo
    ResolveIconViewMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveIconViewMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveIconViewMethod "setActivateOnSingleClick" o = IconViewSetActivateOnSingleClickMethodInfo
    ResolveIconViewMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveIconViewMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveIconViewMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveIconViewMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveIconViewMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveIconViewMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveIconViewMethod "setCellDataFunc" o = Gtk.CellLayout.CellLayoutSetCellDataFuncMethodInfo
    ResolveIconViewMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveIconViewMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveIconViewMethod "setColumnSpacing" o = IconViewSetColumnSpacingMethodInfo
    ResolveIconViewMethod "setColumns" o = IconViewSetColumnsMethodInfo
    ResolveIconViewMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveIconViewMethod "setCursor" o = IconViewSetCursorMethodInfo
    ResolveIconViewMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIconViewMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIconViewMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveIconViewMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveIconViewMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveIconViewMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveIconViewMethod "setDragDestItem" o = IconViewSetDragDestItemMethodInfo
    ResolveIconViewMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveIconViewMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveIconViewMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveIconViewMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveIconViewMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveIconViewMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveIconViewMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveIconViewMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveIconViewMethod "setHadjustment" o = Gtk.Scrollable.ScrollableSetHadjustmentMethodInfo
    ResolveIconViewMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveIconViewMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveIconViewMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveIconViewMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveIconViewMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveIconViewMethod "setHscrollPolicy" o = Gtk.Scrollable.ScrollableSetHscrollPolicyMethodInfo
    ResolveIconViewMethod "setItemOrientation" o = IconViewSetItemOrientationMethodInfo
    ResolveIconViewMethod "setItemPadding" o = IconViewSetItemPaddingMethodInfo
    ResolveIconViewMethod "setItemWidth" o = IconViewSetItemWidthMethodInfo
    ResolveIconViewMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveIconViewMethod "setMargin" o = IconViewSetMarginMethodInfo
    ResolveIconViewMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveIconViewMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveIconViewMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveIconViewMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveIconViewMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveIconViewMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveIconViewMethod "setMarkupColumn" o = IconViewSetMarkupColumnMethodInfo
    ResolveIconViewMethod "setModel" o = IconViewSetModelMethodInfo
    ResolveIconViewMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveIconViewMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveIconViewMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveIconViewMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveIconViewMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveIconViewMethod "setPixbufColumn" o = IconViewSetPixbufColumnMethodInfo
    ResolveIconViewMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIconViewMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveIconViewMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveIconViewMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveIconViewMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveIconViewMethod "setReorderable" o = IconViewSetReorderableMethodInfo
    ResolveIconViewMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveIconViewMethod "setRowSpacing" o = IconViewSetRowSpacingMethodInfo
    ResolveIconViewMethod "setSelectionMode" o = IconViewSetSelectionModeMethodInfo
    ResolveIconViewMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveIconViewMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveIconViewMethod "setSpacing" o = IconViewSetSpacingMethodInfo
    ResolveIconViewMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveIconViewMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveIconViewMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveIconViewMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveIconViewMethod "setTextColumn" o = IconViewSetTextColumnMethodInfo
    ResolveIconViewMethod "setTooltipCell" o = IconViewSetTooltipCellMethodInfo
    ResolveIconViewMethod "setTooltipColumn" o = IconViewSetTooltipColumnMethodInfo
    ResolveIconViewMethod "setTooltipItem" o = IconViewSetTooltipItemMethodInfo
    ResolveIconViewMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveIconViewMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveIconViewMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveIconViewMethod "setVadjustment" o = Gtk.Scrollable.ScrollableSetVadjustmentMethodInfo
    ResolveIconViewMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveIconViewMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveIconViewMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveIconViewMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveIconViewMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveIconViewMethod "setVscrollPolicy" o = Gtk.Scrollable.ScrollableSetVscrollPolicyMethodInfo
    ResolveIconViewMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveIconViewMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIconViewMethod t IconView, O.MethodInfo info IconView p) => OL.IsLabel t (IconView -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal IconView::activate-cursor-item
-- | A [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user activates the currently
-- focused item.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control activation
-- programmatically.
-- 
-- The default bindings for this signal are Space, Return and Enter.
type IconViewActivateCursorItemCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewActivateCursorItemCallback`@.
noIconViewActivateCursorItemCallback :: Maybe IconViewActivateCursorItemCallback
noIconViewActivateCursorItemCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewActivateCursorItemCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_IconViewActivateCursorItemCallback`.
foreign import ccall "wrapper"
    mk_IconViewActivateCursorItemCallback :: C_IconViewActivateCursorItemCallback -> IO (FunPtr C_IconViewActivateCursorItemCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewActivateCursorItem :: MonadIO m => IconViewActivateCursorItemCallback -> m (GClosure C_IconViewActivateCursorItemCallback)
genClosure_IconViewActivateCursorItem cb = liftIO $ do
    let cb' = wrap_IconViewActivateCursorItemCallback cb
    mk_IconViewActivateCursorItemCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewActivateCursorItemCallback` into a `C_IconViewActivateCursorItemCallback`.
wrap_IconViewActivateCursorItemCallback ::
    IconViewActivateCursorItemCallback ->
    C_IconViewActivateCursorItemCallback
wrap_IconViewActivateCursorItemCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [activateCursorItem](#signal:activateCursorItem) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #activateCursorItem callback
-- @
-- 
-- 
onIconViewActivateCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewActivateCursorItemCallback -> m SignalHandlerId
onIconViewActivateCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewActivateCursorItemCallback cb
    cb'' <- mk_IconViewActivateCursorItemCallback cb'
    connectSignalFunPtr obj "activate-cursor-item" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activateCursorItem](#signal:activateCursorItem) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #activateCursorItem callback
-- @
-- 
-- 
afterIconViewActivateCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewActivateCursorItemCallback -> m SignalHandlerId
afterIconViewActivateCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewActivateCursorItemCallback cb
    cb'' <- mk_IconViewActivateCursorItemCallback cb'
    connectSignalFunPtr obj "activate-cursor-item" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewActivateCursorItemSignalInfo
instance SignalInfo IconViewActivateCursorItemSignalInfo where
    type HaskellCallbackType IconViewActivateCursorItemSignalInfo = IconViewActivateCursorItemCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewActivateCursorItemCallback cb
        cb'' <- mk_IconViewActivateCursorItemCallback cb'
        connectSignalFunPtr obj "activate-cursor-item" cb'' connectMode detail

#endif

-- signal IconView::item-activated
-- | The [itemActivated](#signal:itemActivated) signal is emitted when the method
-- 'GI.Gtk.Objects.IconView.iconViewItemActivated' is called, when the user double
-- clicks an item with the \"activate-on-single-click\" property set
-- to 'P.False', or when the user single clicks an item when the
-- \"activate-on-single-click\" property set to 'P.True'. It is also
-- emitted when a non-editable item is selected and one of the keys:
-- Space, Return or Enter is pressed.
type IconViewItemActivatedCallback =
    Gtk.TreePath.TreePath
    -- ^ /@path@/: the t'GI.Gtk.Structs.TreePath.TreePath' for the activated item
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewItemActivatedCallback`@.
noIconViewItemActivatedCallback :: Maybe IconViewItemActivatedCallback
noIconViewItemActivatedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewItemActivatedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.TreePath.TreePath ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewItemActivatedCallback`.
foreign import ccall "wrapper"
    mk_IconViewItemActivatedCallback :: C_IconViewItemActivatedCallback -> IO (FunPtr C_IconViewItemActivatedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewItemActivated :: MonadIO m => IconViewItemActivatedCallback -> m (GClosure C_IconViewItemActivatedCallback)
genClosure_IconViewItemActivated cb = liftIO $ do
    let cb' = wrap_IconViewItemActivatedCallback cb
    mk_IconViewItemActivatedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewItemActivatedCallback` into a `C_IconViewItemActivatedCallback`.
wrap_IconViewItemActivatedCallback ::
    IconViewItemActivatedCallback ->
    C_IconViewItemActivatedCallback
wrap_IconViewItemActivatedCallback _cb _ path _ = do
    B.ManagedPtr.withTransient Gtk.TreePath.TreePath path $ \path' -> do
        _cb  path'


-- | Connect a signal handler for the [itemActivated](#signal:itemActivated) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #itemActivated callback
-- @
-- 
-- 
onIconViewItemActivated :: (IsIconView a, MonadIO m) => a -> IconViewItemActivatedCallback -> m SignalHandlerId
onIconViewItemActivated obj cb = liftIO $ do
    let cb' = wrap_IconViewItemActivatedCallback cb
    cb'' <- mk_IconViewItemActivatedCallback cb'
    connectSignalFunPtr obj "item-activated" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [itemActivated](#signal:itemActivated) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #itemActivated callback
-- @
-- 
-- 
afterIconViewItemActivated :: (IsIconView a, MonadIO m) => a -> IconViewItemActivatedCallback -> m SignalHandlerId
afterIconViewItemActivated obj cb = liftIO $ do
    let cb' = wrap_IconViewItemActivatedCallback cb
    cb'' <- mk_IconViewItemActivatedCallback cb'
    connectSignalFunPtr obj "item-activated" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewItemActivatedSignalInfo
instance SignalInfo IconViewItemActivatedSignalInfo where
    type HaskellCallbackType IconViewItemActivatedSignalInfo = IconViewItemActivatedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewItemActivatedCallback cb
        cb'' <- mk_IconViewItemActivatedCallback cb'
        connectSignalFunPtr obj "item-activated" cb'' connectMode detail

#endif

-- signal IconView::move-cursor
-- | The [moveCursor](#signal:moveCursor) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a cursor movement.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control the cursor
-- programmatically.
-- 
-- The default bindings for this signal include
-- 
-- * Arrow keys which move by individual steps
-- * Home\/End keys which move to the first\/last item
-- * PageUp\/PageDown which move by \"pages\"
-- 
-- All of these will extend the selection when combined with
-- the Shift modifier.
type IconViewMoveCursorCallback =
    Gtk.Enums.MovementStep
    -- ^ /@step@/: the granularity of the move, as a t'GI.Gtk.Enums.MovementStep'
    -> Int32
    -- ^ /@count@/: the number of /@step@/ units to move
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewMoveCursorCallback`@.
noIconViewMoveCursorCallback :: Maybe IconViewMoveCursorCallback
noIconViewMoveCursorCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewMoveCursorCallback =
    Ptr () ->                               -- object
    CUInt ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_IconViewMoveCursorCallback`.
foreign import ccall "wrapper"
    mk_IconViewMoveCursorCallback :: C_IconViewMoveCursorCallback -> IO (FunPtr C_IconViewMoveCursorCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewMoveCursor :: MonadIO m => IconViewMoveCursorCallback -> m (GClosure C_IconViewMoveCursorCallback)
genClosure_IconViewMoveCursor cb = liftIO $ do
    let cb' = wrap_IconViewMoveCursorCallback cb
    mk_IconViewMoveCursorCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewMoveCursorCallback` into a `C_IconViewMoveCursorCallback`.
wrap_IconViewMoveCursorCallback ::
    IconViewMoveCursorCallback ->
    C_IconViewMoveCursorCallback
wrap_IconViewMoveCursorCallback _cb _ step count _ = do
    let step' = (toEnum . fromIntegral) step
    result <- _cb  step' count
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [moveCursor](#signal:moveCursor) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #moveCursor callback
-- @
-- 
-- 
onIconViewMoveCursor :: (IsIconView a, MonadIO m) => a -> IconViewMoveCursorCallback -> m SignalHandlerId
onIconViewMoveCursor obj cb = liftIO $ do
    let cb' = wrap_IconViewMoveCursorCallback cb
    cb'' <- mk_IconViewMoveCursorCallback cb'
    connectSignalFunPtr obj "move-cursor" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveCursor](#signal:moveCursor) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #moveCursor callback
-- @
-- 
-- 
afterIconViewMoveCursor :: (IsIconView a, MonadIO m) => a -> IconViewMoveCursorCallback -> m SignalHandlerId
afterIconViewMoveCursor obj cb = liftIO $ do
    let cb' = wrap_IconViewMoveCursorCallback cb
    cb'' <- mk_IconViewMoveCursorCallback cb'
    connectSignalFunPtr obj "move-cursor" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewMoveCursorSignalInfo
instance SignalInfo IconViewMoveCursorSignalInfo where
    type HaskellCallbackType IconViewMoveCursorSignalInfo = IconViewMoveCursorCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewMoveCursorCallback cb
        cb'' <- mk_IconViewMoveCursorCallback cb'
        connectSignalFunPtr obj "move-cursor" cb'' connectMode detail

#endif

-- signal IconView::select-all
-- | A [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user selects all items.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control selection
-- programmatically.
-- 
-- The default binding for this signal is Ctrl-a.
type IconViewSelectAllCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewSelectAllCallback`@.
noIconViewSelectAllCallback :: Maybe IconViewSelectAllCallback
noIconViewSelectAllCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewSelectAllCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewSelectAllCallback`.
foreign import ccall "wrapper"
    mk_IconViewSelectAllCallback :: C_IconViewSelectAllCallback -> IO (FunPtr C_IconViewSelectAllCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewSelectAll :: MonadIO m => IconViewSelectAllCallback -> m (GClosure C_IconViewSelectAllCallback)
genClosure_IconViewSelectAll cb = liftIO $ do
    let cb' = wrap_IconViewSelectAllCallback cb
    mk_IconViewSelectAllCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewSelectAllCallback` into a `C_IconViewSelectAllCallback`.
wrap_IconViewSelectAllCallback ::
    IconViewSelectAllCallback ->
    C_IconViewSelectAllCallback
wrap_IconViewSelectAllCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [selectAll](#signal:selectAll) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #selectAll callback
-- @
-- 
-- 
onIconViewSelectAll :: (IsIconView a, MonadIO m) => a -> IconViewSelectAllCallback -> m SignalHandlerId
onIconViewSelectAll obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectAllCallback cb
    cb'' <- mk_IconViewSelectAllCallback cb'
    connectSignalFunPtr obj "select-all" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectAll](#signal:selectAll) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #selectAll callback
-- @
-- 
-- 
afterIconViewSelectAll :: (IsIconView a, MonadIO m) => a -> IconViewSelectAllCallback -> m SignalHandlerId
afterIconViewSelectAll obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectAllCallback cb
    cb'' <- mk_IconViewSelectAllCallback cb'
    connectSignalFunPtr obj "select-all" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewSelectAllSignalInfo
instance SignalInfo IconViewSelectAllSignalInfo where
    type HaskellCallbackType IconViewSelectAllSignalInfo = IconViewSelectAllCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewSelectAllCallback cb
        cb'' <- mk_IconViewSelectAllCallback cb'
        connectSignalFunPtr obj "select-all" cb'' connectMode detail

#endif

-- signal IconView::select-cursor-item
-- | A [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user selects the item that is currently
-- focused.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control selection
-- programmatically.
-- 
-- There is no default binding for this signal.
type IconViewSelectCursorItemCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewSelectCursorItemCallback`@.
noIconViewSelectCursorItemCallback :: Maybe IconViewSelectCursorItemCallback
noIconViewSelectCursorItemCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewSelectCursorItemCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewSelectCursorItemCallback`.
foreign import ccall "wrapper"
    mk_IconViewSelectCursorItemCallback :: C_IconViewSelectCursorItemCallback -> IO (FunPtr C_IconViewSelectCursorItemCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewSelectCursorItem :: MonadIO m => IconViewSelectCursorItemCallback -> m (GClosure C_IconViewSelectCursorItemCallback)
genClosure_IconViewSelectCursorItem cb = liftIO $ do
    let cb' = wrap_IconViewSelectCursorItemCallback cb
    mk_IconViewSelectCursorItemCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewSelectCursorItemCallback` into a `C_IconViewSelectCursorItemCallback`.
wrap_IconViewSelectCursorItemCallback ::
    IconViewSelectCursorItemCallback ->
    C_IconViewSelectCursorItemCallback
wrap_IconViewSelectCursorItemCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [selectCursorItem](#signal:selectCursorItem) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #selectCursorItem callback
-- @
-- 
-- 
onIconViewSelectCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewSelectCursorItemCallback -> m SignalHandlerId
onIconViewSelectCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectCursorItemCallback cb
    cb'' <- mk_IconViewSelectCursorItemCallback cb'
    connectSignalFunPtr obj "select-cursor-item" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectCursorItem](#signal:selectCursorItem) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #selectCursorItem callback
-- @
-- 
-- 
afterIconViewSelectCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewSelectCursorItemCallback -> m SignalHandlerId
afterIconViewSelectCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectCursorItemCallback cb
    cb'' <- mk_IconViewSelectCursorItemCallback cb'
    connectSignalFunPtr obj "select-cursor-item" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewSelectCursorItemSignalInfo
instance SignalInfo IconViewSelectCursorItemSignalInfo where
    type HaskellCallbackType IconViewSelectCursorItemSignalInfo = IconViewSelectCursorItemCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewSelectCursorItemCallback cb
        cb'' <- mk_IconViewSelectCursorItemCallback cb'
        connectSignalFunPtr obj "select-cursor-item" cb'' connectMode detail

#endif

-- signal IconView::selection-changed
-- | The [selectionChanged](#signal:selectionChanged) signal is emitted when the selection
-- (i.e. the set of selected items) changes.
type IconViewSelectionChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewSelectionChangedCallback`@.
noIconViewSelectionChangedCallback :: Maybe IconViewSelectionChangedCallback
noIconViewSelectionChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewSelectionChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewSelectionChangedCallback`.
foreign import ccall "wrapper"
    mk_IconViewSelectionChangedCallback :: C_IconViewSelectionChangedCallback -> IO (FunPtr C_IconViewSelectionChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewSelectionChanged :: MonadIO m => IconViewSelectionChangedCallback -> m (GClosure C_IconViewSelectionChangedCallback)
genClosure_IconViewSelectionChanged cb = liftIO $ do
    let cb' = wrap_IconViewSelectionChangedCallback cb
    mk_IconViewSelectionChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewSelectionChangedCallback` into a `C_IconViewSelectionChangedCallback`.
wrap_IconViewSelectionChangedCallback ::
    IconViewSelectionChangedCallback ->
    C_IconViewSelectionChangedCallback
wrap_IconViewSelectionChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [selectionChanged](#signal:selectionChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #selectionChanged callback
-- @
-- 
-- 
onIconViewSelectionChanged :: (IsIconView a, MonadIO m) => a -> IconViewSelectionChangedCallback -> m SignalHandlerId
onIconViewSelectionChanged obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectionChangedCallback cb
    cb'' <- mk_IconViewSelectionChangedCallback cb'
    connectSignalFunPtr obj "selection-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectionChanged](#signal:selectionChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #selectionChanged callback
-- @
-- 
-- 
afterIconViewSelectionChanged :: (IsIconView a, MonadIO m) => a -> IconViewSelectionChangedCallback -> m SignalHandlerId
afterIconViewSelectionChanged obj cb = liftIO $ do
    let cb' = wrap_IconViewSelectionChangedCallback cb
    cb'' <- mk_IconViewSelectionChangedCallback cb'
    connectSignalFunPtr obj "selection-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewSelectionChangedSignalInfo
instance SignalInfo IconViewSelectionChangedSignalInfo where
    type HaskellCallbackType IconViewSelectionChangedSignalInfo = IconViewSelectionChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewSelectionChangedCallback cb
        cb'' <- mk_IconViewSelectionChangedCallback cb'
        connectSignalFunPtr obj "selection-changed" cb'' connectMode detail

#endif

-- signal IconView::toggle-cursor-item
-- | A [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user toggles whether the currently
-- focused item is selected or not. The exact effect of this
-- depend on the selection mode.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control selection
-- programmatically.
-- 
-- There is no default binding for this signal is Ctrl-Space.
type IconViewToggleCursorItemCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewToggleCursorItemCallback`@.
noIconViewToggleCursorItemCallback :: Maybe IconViewToggleCursorItemCallback
noIconViewToggleCursorItemCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewToggleCursorItemCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewToggleCursorItemCallback`.
foreign import ccall "wrapper"
    mk_IconViewToggleCursorItemCallback :: C_IconViewToggleCursorItemCallback -> IO (FunPtr C_IconViewToggleCursorItemCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewToggleCursorItem :: MonadIO m => IconViewToggleCursorItemCallback -> m (GClosure C_IconViewToggleCursorItemCallback)
genClosure_IconViewToggleCursorItem cb = liftIO $ do
    let cb' = wrap_IconViewToggleCursorItemCallback cb
    mk_IconViewToggleCursorItemCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewToggleCursorItemCallback` into a `C_IconViewToggleCursorItemCallback`.
wrap_IconViewToggleCursorItemCallback ::
    IconViewToggleCursorItemCallback ->
    C_IconViewToggleCursorItemCallback
wrap_IconViewToggleCursorItemCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggleCursorItem](#signal:toggleCursorItem) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #toggleCursorItem callback
-- @
-- 
-- 
onIconViewToggleCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewToggleCursorItemCallback -> m SignalHandlerId
onIconViewToggleCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewToggleCursorItemCallback cb
    cb'' <- mk_IconViewToggleCursorItemCallback cb'
    connectSignalFunPtr obj "toggle-cursor-item" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggleCursorItem](#signal:toggleCursorItem) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #toggleCursorItem callback
-- @
-- 
-- 
afterIconViewToggleCursorItem :: (IsIconView a, MonadIO m) => a -> IconViewToggleCursorItemCallback -> m SignalHandlerId
afterIconViewToggleCursorItem obj cb = liftIO $ do
    let cb' = wrap_IconViewToggleCursorItemCallback cb
    cb'' <- mk_IconViewToggleCursorItemCallback cb'
    connectSignalFunPtr obj "toggle-cursor-item" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewToggleCursorItemSignalInfo
instance SignalInfo IconViewToggleCursorItemSignalInfo where
    type HaskellCallbackType IconViewToggleCursorItemSignalInfo = IconViewToggleCursorItemCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewToggleCursorItemCallback cb
        cb'' <- mk_IconViewToggleCursorItemCallback cb'
        connectSignalFunPtr obj "toggle-cursor-item" cb'' connectMode detail

#endif

-- signal IconView::unselect-all
-- | A [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user unselects all items.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control selection
-- programmatically.
-- 
-- The default binding for this signal is Ctrl-Shift-a.
type IconViewUnselectAllCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `IconViewUnselectAllCallback`@.
noIconViewUnselectAllCallback :: Maybe IconViewUnselectAllCallback
noIconViewUnselectAllCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_IconViewUnselectAllCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_IconViewUnselectAllCallback`.
foreign import ccall "wrapper"
    mk_IconViewUnselectAllCallback :: C_IconViewUnselectAllCallback -> IO (FunPtr C_IconViewUnselectAllCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_IconViewUnselectAll :: MonadIO m => IconViewUnselectAllCallback -> m (GClosure C_IconViewUnselectAllCallback)
genClosure_IconViewUnselectAll cb = liftIO $ do
    let cb' = wrap_IconViewUnselectAllCallback cb
    mk_IconViewUnselectAllCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `IconViewUnselectAllCallback` into a `C_IconViewUnselectAllCallback`.
wrap_IconViewUnselectAllCallback ::
    IconViewUnselectAllCallback ->
    C_IconViewUnselectAllCallback
wrap_IconViewUnselectAllCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [unselectAll](#signal:unselectAll) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' iconView #unselectAll callback
-- @
-- 
-- 
onIconViewUnselectAll :: (IsIconView a, MonadIO m) => a -> IconViewUnselectAllCallback -> m SignalHandlerId
onIconViewUnselectAll obj cb = liftIO $ do
    let cb' = wrap_IconViewUnselectAllCallback cb
    cb'' <- mk_IconViewUnselectAllCallback cb'
    connectSignalFunPtr obj "unselect-all" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [unselectAll](#signal:unselectAll) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' iconView #unselectAll callback
-- @
-- 
-- 
afterIconViewUnselectAll :: (IsIconView a, MonadIO m) => a -> IconViewUnselectAllCallback -> m SignalHandlerId
afterIconViewUnselectAll obj cb = liftIO $ do
    let cb' = wrap_IconViewUnselectAllCallback cb
    cb'' <- mk_IconViewUnselectAllCallback cb'
    connectSignalFunPtr obj "unselect-all" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data IconViewUnselectAllSignalInfo
instance SignalInfo IconViewUnselectAllSignalInfo where
    type HaskellCallbackType IconViewUnselectAllSignalInfo = IconViewUnselectAllCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_IconViewUnselectAllCallback cb
        cb'' <- mk_IconViewUnselectAllCallback cb'
        connectSignalFunPtr obj "unselect-all" cb'' connectMode detail

#endif

--- XXX Duplicated object with different types:
  --- Name {namespace = "Gtk", name = "IconView"} -> Property {propName = "margin", propType = TBasicType TInt, propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "The margin property specifies the space which is inserted\nat the edges of the icon view.", sinceVersion = Just "2.6"}, propDeprecated = Nothing}
  --- Name {namespace = "Gtk", name = "Widget"} -> Property {propName = "margin", propType = TBasicType TInt, propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "Sets all four sides' margin at once. If read, returns max\nmargin on any side.", sinceVersion = Just "3.0"}, propDeprecated = Nothing}
-- VVV Prop "activate-on-single-click"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@activate-on-single-click@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #activateOnSingleClick
-- @
getIconViewActivateOnSingleClick :: (MonadIO m, IsIconView o) => o -> m Bool
getIconViewActivateOnSingleClick obj = liftIO $ B.Properties.getObjectPropertyBool obj "activate-on-single-click"

-- | Set the value of the “@activate-on-single-click@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #activateOnSingleClick 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewActivateOnSingleClick :: (MonadIO m, IsIconView o) => o -> Bool -> m ()
setIconViewActivateOnSingleClick obj val = liftIO $ B.Properties.setObjectPropertyBool obj "activate-on-single-click" val

-- | Construct a `GValueConstruct` with valid value for the “@activate-on-single-click@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewActivateOnSingleClick :: (IsIconView o) => Bool -> IO (GValueConstruct o)
constructIconViewActivateOnSingleClick val = B.Properties.constructObjectPropertyBool "activate-on-single-click" val

#if defined(ENABLE_OVERLOADING)
data IconViewActivateOnSingleClickPropertyInfo
instance AttrInfo IconViewActivateOnSingleClickPropertyInfo where
    type AttrAllowedOps IconViewActivateOnSingleClickPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewActivateOnSingleClickPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewActivateOnSingleClickPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint IconViewActivateOnSingleClickPropertyInfo = (~) Bool
    type AttrTransferType IconViewActivateOnSingleClickPropertyInfo = Bool
    type AttrGetType IconViewActivateOnSingleClickPropertyInfo = Bool
    type AttrLabel IconViewActivateOnSingleClickPropertyInfo = "activate-on-single-click"
    type AttrOrigin IconViewActivateOnSingleClickPropertyInfo = IconView
    attrGet = getIconViewActivateOnSingleClick
    attrSet = setIconViewActivateOnSingleClick
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewActivateOnSingleClick
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
-- 'Data.GI.Base.Attributes.get' iconView #cellArea
-- @
getIconViewCellArea :: (MonadIO m, IsIconView o) => o -> m (Maybe Gtk.CellArea.CellArea)
getIconViewCellArea obj = liftIO $ B.Properties.getObjectPropertyObject obj "cell-area" Gtk.CellArea.CellArea

-- | Construct a `GValueConstruct` with valid value for the “@cell-area@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewCellArea :: (IsIconView o, Gtk.CellArea.IsCellArea a) => a -> IO (GValueConstruct o)
constructIconViewCellArea val = B.Properties.constructObjectPropertyObject "cell-area" (Just val)

#if defined(ENABLE_OVERLOADING)
data IconViewCellAreaPropertyInfo
instance AttrInfo IconViewCellAreaPropertyInfo where
    type AttrAllowedOps IconViewCellAreaPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint IconViewCellAreaPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferTypeConstraint IconViewCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferType IconViewCellAreaPropertyInfo = Gtk.CellArea.CellArea
    type AttrGetType IconViewCellAreaPropertyInfo = (Maybe Gtk.CellArea.CellArea)
    type AttrLabel IconViewCellAreaPropertyInfo = "cell-area"
    type AttrOrigin IconViewCellAreaPropertyInfo = IconView
    attrGet = getIconViewCellArea
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.CellArea.CellArea v
    attrConstruct = constructIconViewCellArea
    attrClear = undefined
#endif

-- VVV Prop "column-spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #columnSpacing
-- @
getIconViewColumnSpacing :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewColumnSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "column-spacing"

-- | Set the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #columnSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewColumnSpacing :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewColumnSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "column-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@column-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewColumnSpacing :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewColumnSpacing val = B.Properties.constructObjectPropertyInt32 "column-spacing" val

#if defined(ENABLE_OVERLOADING)
data IconViewColumnSpacingPropertyInfo
instance AttrInfo IconViewColumnSpacingPropertyInfo where
    type AttrAllowedOps IconViewColumnSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewColumnSpacingPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewColumnSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewColumnSpacingPropertyInfo = (~) Int32
    type AttrTransferType IconViewColumnSpacingPropertyInfo = Int32
    type AttrGetType IconViewColumnSpacingPropertyInfo = Int32
    type AttrLabel IconViewColumnSpacingPropertyInfo = "column-spacing"
    type AttrOrigin IconViewColumnSpacingPropertyInfo = IconView
    attrGet = getIconViewColumnSpacing
    attrSet = setIconViewColumnSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewColumnSpacing
    attrClear = undefined
#endif

-- VVV Prop "columns"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@columns@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #columns
-- @
getIconViewColumns :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewColumns obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "columns"

-- | Set the value of the “@columns@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #columns 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewColumns :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewColumns obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "columns" val

-- | Construct a `GValueConstruct` with valid value for the “@columns@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewColumns :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewColumns val = B.Properties.constructObjectPropertyInt32 "columns" val

#if defined(ENABLE_OVERLOADING)
data IconViewColumnsPropertyInfo
instance AttrInfo IconViewColumnsPropertyInfo where
    type AttrAllowedOps IconViewColumnsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewColumnsPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewColumnsPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewColumnsPropertyInfo = (~) Int32
    type AttrTransferType IconViewColumnsPropertyInfo = Int32
    type AttrGetType IconViewColumnsPropertyInfo = Int32
    type AttrLabel IconViewColumnsPropertyInfo = "columns"
    type AttrOrigin IconViewColumnsPropertyInfo = IconView
    attrGet = getIconViewColumns
    attrSet = setIconViewColumns
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewColumns
    attrClear = undefined
#endif

-- VVV Prop "item-orientation"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Orientation"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@item-orientation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #itemOrientation
-- @
getIconViewItemOrientation :: (MonadIO m, IsIconView o) => o -> m Gtk.Enums.Orientation
getIconViewItemOrientation obj = liftIO $ B.Properties.getObjectPropertyEnum obj "item-orientation"

-- | Set the value of the “@item-orientation@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #itemOrientation 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewItemOrientation :: (MonadIO m, IsIconView o) => o -> Gtk.Enums.Orientation -> m ()
setIconViewItemOrientation obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "item-orientation" val

-- | Construct a `GValueConstruct` with valid value for the “@item-orientation@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewItemOrientation :: (IsIconView o) => Gtk.Enums.Orientation -> IO (GValueConstruct o)
constructIconViewItemOrientation val = B.Properties.constructObjectPropertyEnum "item-orientation" val

#if defined(ENABLE_OVERLOADING)
data IconViewItemOrientationPropertyInfo
instance AttrInfo IconViewItemOrientationPropertyInfo where
    type AttrAllowedOps IconViewItemOrientationPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewItemOrientationPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewItemOrientationPropertyInfo = (~) Gtk.Enums.Orientation
    type AttrTransferTypeConstraint IconViewItemOrientationPropertyInfo = (~) Gtk.Enums.Orientation
    type AttrTransferType IconViewItemOrientationPropertyInfo = Gtk.Enums.Orientation
    type AttrGetType IconViewItemOrientationPropertyInfo = Gtk.Enums.Orientation
    type AttrLabel IconViewItemOrientationPropertyInfo = "item-orientation"
    type AttrOrigin IconViewItemOrientationPropertyInfo = IconView
    attrGet = getIconViewItemOrientation
    attrSet = setIconViewItemOrientation
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewItemOrientation
    attrClear = undefined
#endif

-- VVV Prop "item-padding"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@item-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #itemPadding
-- @
getIconViewItemPadding :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewItemPadding obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "item-padding"

-- | Set the value of the “@item-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #itemPadding 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewItemPadding :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewItemPadding obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "item-padding" val

-- | Construct a `GValueConstruct` with valid value for the “@item-padding@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewItemPadding :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewItemPadding val = B.Properties.constructObjectPropertyInt32 "item-padding" val

#if defined(ENABLE_OVERLOADING)
data IconViewItemPaddingPropertyInfo
instance AttrInfo IconViewItemPaddingPropertyInfo where
    type AttrAllowedOps IconViewItemPaddingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewItemPaddingPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewItemPaddingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewItemPaddingPropertyInfo = (~) Int32
    type AttrTransferType IconViewItemPaddingPropertyInfo = Int32
    type AttrGetType IconViewItemPaddingPropertyInfo = Int32
    type AttrLabel IconViewItemPaddingPropertyInfo = "item-padding"
    type AttrOrigin IconViewItemPaddingPropertyInfo = IconView
    attrGet = getIconViewItemPadding
    attrSet = setIconViewItemPadding
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewItemPadding
    attrClear = undefined
#endif

-- VVV Prop "item-width"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@item-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #itemWidth
-- @
getIconViewItemWidth :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewItemWidth obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "item-width"

-- | Set the value of the “@item-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #itemWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewItemWidth :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewItemWidth obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "item-width" val

-- | Construct a `GValueConstruct` with valid value for the “@item-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewItemWidth :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewItemWidth val = B.Properties.constructObjectPropertyInt32 "item-width" val

#if defined(ENABLE_OVERLOADING)
data IconViewItemWidthPropertyInfo
instance AttrInfo IconViewItemWidthPropertyInfo where
    type AttrAllowedOps IconViewItemWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewItemWidthPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewItemWidthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewItemWidthPropertyInfo = (~) Int32
    type AttrTransferType IconViewItemWidthPropertyInfo = Int32
    type AttrGetType IconViewItemWidthPropertyInfo = Int32
    type AttrLabel IconViewItemWidthPropertyInfo = "item-width"
    type AttrOrigin IconViewItemWidthPropertyInfo = IconView
    attrGet = getIconViewItemWidth
    attrSet = setIconViewItemWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewItemWidth
    attrClear = undefined
#endif

-- VVV Prop "margin"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #margin
-- @
getIconViewMargin :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewMargin obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "margin"

-- | Set the value of the “@margin@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #margin 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewMargin :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewMargin obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "margin" val

-- | Construct a `GValueConstruct` with valid value for the “@margin@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewMargin :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewMargin val = B.Properties.constructObjectPropertyInt32 "margin" val

#if defined(ENABLE_OVERLOADING)
data IconViewMarginPropertyInfo
instance AttrInfo IconViewMarginPropertyInfo where
    type AttrAllowedOps IconViewMarginPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewMarginPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewMarginPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewMarginPropertyInfo = (~) Int32
    type AttrTransferType IconViewMarginPropertyInfo = Int32
    type AttrGetType IconViewMarginPropertyInfo = Int32
    type AttrLabel IconViewMarginPropertyInfo = "margin"
    type AttrOrigin IconViewMarginPropertyInfo = IconView
    attrGet = getIconViewMargin
    attrSet = setIconViewMargin
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewMargin
    attrClear = undefined
#endif

-- VVV Prop "markup-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@markup-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #markupColumn
-- @
getIconViewMarkupColumn :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewMarkupColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "markup-column"

-- | Set the value of the “@markup-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #markupColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewMarkupColumn :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewMarkupColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "markup-column" val

-- | Construct a `GValueConstruct` with valid value for the “@markup-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewMarkupColumn :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewMarkupColumn val = B.Properties.constructObjectPropertyInt32 "markup-column" val

#if defined(ENABLE_OVERLOADING)
data IconViewMarkupColumnPropertyInfo
instance AttrInfo IconViewMarkupColumnPropertyInfo where
    type AttrAllowedOps IconViewMarkupColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewMarkupColumnPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewMarkupColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewMarkupColumnPropertyInfo = (~) Int32
    type AttrTransferType IconViewMarkupColumnPropertyInfo = Int32
    type AttrGetType IconViewMarkupColumnPropertyInfo = Int32
    type AttrLabel IconViewMarkupColumnPropertyInfo = "markup-column"
    type AttrOrigin IconViewMarkupColumnPropertyInfo = IconView
    attrGet = getIconViewMarkupColumn
    attrSet = setIconViewMarkupColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewMarkupColumn
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
-- 'Data.GI.Base.Attributes.get' iconView #model
-- @
getIconViewModel :: (MonadIO m, IsIconView o) => o -> m (Maybe Gtk.TreeModel.TreeModel)
getIconViewModel obj = liftIO $ B.Properties.getObjectPropertyObject obj "model" Gtk.TreeModel.TreeModel

-- | Set the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #model 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewModel :: (MonadIO m, IsIconView o, Gtk.TreeModel.IsTreeModel a) => o -> a -> m ()
setIconViewModel obj val = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewModel :: (IsIconView o, Gtk.TreeModel.IsTreeModel a) => a -> IO (GValueConstruct o)
constructIconViewModel val = B.Properties.constructObjectPropertyObject "model" (Just val)

-- | Set the value of the “@model@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #model
-- @
clearIconViewModel :: (MonadIO m, IsIconView o) => o -> m ()
clearIconViewModel obj = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Nothing :: Maybe Gtk.TreeModel.TreeModel)

#if defined(ENABLE_OVERLOADING)
data IconViewModelPropertyInfo
instance AttrInfo IconViewModelPropertyInfo where
    type AttrAllowedOps IconViewModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint IconViewModelPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferTypeConstraint IconViewModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferType IconViewModelPropertyInfo = Gtk.TreeModel.TreeModel
    type AttrGetType IconViewModelPropertyInfo = (Maybe Gtk.TreeModel.TreeModel)
    type AttrLabel IconViewModelPropertyInfo = "model"
    type AttrOrigin IconViewModelPropertyInfo = IconView
    attrGet = getIconViewModel
    attrSet = setIconViewModel
    attrTransfer _ v = do
        unsafeCastTo Gtk.TreeModel.TreeModel v
    attrConstruct = constructIconViewModel
    attrClear = clearIconViewModel
#endif

-- VVV Prop "pixbuf-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pixbuf-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #pixbufColumn
-- @
getIconViewPixbufColumn :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewPixbufColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "pixbuf-column"

-- | Set the value of the “@pixbuf-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #pixbufColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewPixbufColumn :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewPixbufColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "pixbuf-column" val

-- | Construct a `GValueConstruct` with valid value for the “@pixbuf-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewPixbufColumn :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewPixbufColumn val = B.Properties.constructObjectPropertyInt32 "pixbuf-column" val

#if defined(ENABLE_OVERLOADING)
data IconViewPixbufColumnPropertyInfo
instance AttrInfo IconViewPixbufColumnPropertyInfo where
    type AttrAllowedOps IconViewPixbufColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewPixbufColumnPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewPixbufColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewPixbufColumnPropertyInfo = (~) Int32
    type AttrTransferType IconViewPixbufColumnPropertyInfo = Int32
    type AttrGetType IconViewPixbufColumnPropertyInfo = Int32
    type AttrLabel IconViewPixbufColumnPropertyInfo = "pixbuf-column"
    type AttrOrigin IconViewPixbufColumnPropertyInfo = IconView
    attrGet = getIconViewPixbufColumn
    attrSet = setIconViewPixbufColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewPixbufColumn
    attrClear = undefined
#endif

-- VVV Prop "reorderable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@reorderable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #reorderable
-- @
getIconViewReorderable :: (MonadIO m, IsIconView o) => o -> m Bool
getIconViewReorderable obj = liftIO $ B.Properties.getObjectPropertyBool obj "reorderable"

-- | Set the value of the “@reorderable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #reorderable 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewReorderable :: (MonadIO m, IsIconView o) => o -> Bool -> m ()
setIconViewReorderable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "reorderable" val

-- | Construct a `GValueConstruct` with valid value for the “@reorderable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewReorderable :: (IsIconView o) => Bool -> IO (GValueConstruct o)
constructIconViewReorderable val = B.Properties.constructObjectPropertyBool "reorderable" val

#if defined(ENABLE_OVERLOADING)
data IconViewReorderablePropertyInfo
instance AttrInfo IconViewReorderablePropertyInfo where
    type AttrAllowedOps IconViewReorderablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewReorderablePropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewReorderablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint IconViewReorderablePropertyInfo = (~) Bool
    type AttrTransferType IconViewReorderablePropertyInfo = Bool
    type AttrGetType IconViewReorderablePropertyInfo = Bool
    type AttrLabel IconViewReorderablePropertyInfo = "reorderable"
    type AttrOrigin IconViewReorderablePropertyInfo = IconView
    attrGet = getIconViewReorderable
    attrSet = setIconViewReorderable
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewReorderable
    attrClear = undefined
#endif

-- VVV Prop "row-spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #rowSpacing
-- @
getIconViewRowSpacing :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewRowSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "row-spacing"

-- | Set the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #rowSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewRowSpacing :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewRowSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "row-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@row-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewRowSpacing :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewRowSpacing val = B.Properties.constructObjectPropertyInt32 "row-spacing" val

#if defined(ENABLE_OVERLOADING)
data IconViewRowSpacingPropertyInfo
instance AttrInfo IconViewRowSpacingPropertyInfo where
    type AttrAllowedOps IconViewRowSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewRowSpacingPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewRowSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewRowSpacingPropertyInfo = (~) Int32
    type AttrTransferType IconViewRowSpacingPropertyInfo = Int32
    type AttrGetType IconViewRowSpacingPropertyInfo = Int32
    type AttrLabel IconViewRowSpacingPropertyInfo = "row-spacing"
    type AttrOrigin IconViewRowSpacingPropertyInfo = IconView
    attrGet = getIconViewRowSpacing
    attrSet = setIconViewRowSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewRowSpacing
    attrClear = undefined
#endif

-- VVV Prop "selection-mode"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SelectionMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@selection-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #selectionMode
-- @
getIconViewSelectionMode :: (MonadIO m, IsIconView o) => o -> m Gtk.Enums.SelectionMode
getIconViewSelectionMode obj = liftIO $ B.Properties.getObjectPropertyEnum obj "selection-mode"

-- | Set the value of the “@selection-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #selectionMode 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewSelectionMode :: (MonadIO m, IsIconView o) => o -> Gtk.Enums.SelectionMode -> m ()
setIconViewSelectionMode obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "selection-mode" val

-- | Construct a `GValueConstruct` with valid value for the “@selection-mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewSelectionMode :: (IsIconView o) => Gtk.Enums.SelectionMode -> IO (GValueConstruct o)
constructIconViewSelectionMode val = B.Properties.constructObjectPropertyEnum "selection-mode" val

#if defined(ENABLE_OVERLOADING)
data IconViewSelectionModePropertyInfo
instance AttrInfo IconViewSelectionModePropertyInfo where
    type AttrAllowedOps IconViewSelectionModePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewSelectionModePropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewSelectionModePropertyInfo = (~) Gtk.Enums.SelectionMode
    type AttrTransferTypeConstraint IconViewSelectionModePropertyInfo = (~) Gtk.Enums.SelectionMode
    type AttrTransferType IconViewSelectionModePropertyInfo = Gtk.Enums.SelectionMode
    type AttrGetType IconViewSelectionModePropertyInfo = Gtk.Enums.SelectionMode
    type AttrLabel IconViewSelectionModePropertyInfo = "selection-mode"
    type AttrOrigin IconViewSelectionModePropertyInfo = IconView
    attrGet = getIconViewSelectionMode
    attrSet = setIconViewSelectionMode
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewSelectionMode
    attrClear = undefined
#endif

-- VVV Prop "spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #spacing
-- @
getIconViewSpacing :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "spacing"

-- | Set the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #spacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewSpacing :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewSpacing :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewSpacing val = B.Properties.constructObjectPropertyInt32 "spacing" val

#if defined(ENABLE_OVERLOADING)
data IconViewSpacingPropertyInfo
instance AttrInfo IconViewSpacingPropertyInfo where
    type AttrAllowedOps IconViewSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewSpacingPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewSpacingPropertyInfo = (~) Int32
    type AttrTransferType IconViewSpacingPropertyInfo = Int32
    type AttrGetType IconViewSpacingPropertyInfo = Int32
    type AttrLabel IconViewSpacingPropertyInfo = "spacing"
    type AttrOrigin IconViewSpacingPropertyInfo = IconView
    attrGet = getIconViewSpacing
    attrSet = setIconViewSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewSpacing
    attrClear = undefined
#endif

-- VVV Prop "text-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #textColumn
-- @
getIconViewTextColumn :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewTextColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "text-column"

-- | Set the value of the “@text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #textColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewTextColumn :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewTextColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "text-column" val

-- | Construct a `GValueConstruct` with valid value for the “@text-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewTextColumn :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewTextColumn val = B.Properties.constructObjectPropertyInt32 "text-column" val

#if defined(ENABLE_OVERLOADING)
data IconViewTextColumnPropertyInfo
instance AttrInfo IconViewTextColumnPropertyInfo where
    type AttrAllowedOps IconViewTextColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewTextColumnPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewTextColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewTextColumnPropertyInfo = (~) Int32
    type AttrTransferType IconViewTextColumnPropertyInfo = Int32
    type AttrGetType IconViewTextColumnPropertyInfo = Int32
    type AttrLabel IconViewTextColumnPropertyInfo = "text-column"
    type AttrOrigin IconViewTextColumnPropertyInfo = IconView
    attrGet = getIconViewTextColumn
    attrSet = setIconViewTextColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewTextColumn
    attrClear = undefined
#endif

-- VVV Prop "tooltip-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@tooltip-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' iconView #tooltipColumn
-- @
getIconViewTooltipColumn :: (MonadIO m, IsIconView o) => o -> m Int32
getIconViewTooltipColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "tooltip-column"

-- | Set the value of the “@tooltip-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' iconView [ #tooltipColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setIconViewTooltipColumn :: (MonadIO m, IsIconView o) => o -> Int32 -> m ()
setIconViewTooltipColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "tooltip-column" val

-- | Construct a `GValueConstruct` with valid value for the “@tooltip-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructIconViewTooltipColumn :: (IsIconView o) => Int32 -> IO (GValueConstruct o)
constructIconViewTooltipColumn val = B.Properties.constructObjectPropertyInt32 "tooltip-column" val

#if defined(ENABLE_OVERLOADING)
data IconViewTooltipColumnPropertyInfo
instance AttrInfo IconViewTooltipColumnPropertyInfo where
    type AttrAllowedOps IconViewTooltipColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint IconViewTooltipColumnPropertyInfo = IsIconView
    type AttrSetTypeConstraint IconViewTooltipColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint IconViewTooltipColumnPropertyInfo = (~) Int32
    type AttrTransferType IconViewTooltipColumnPropertyInfo = Int32
    type AttrGetType IconViewTooltipColumnPropertyInfo = Int32
    type AttrLabel IconViewTooltipColumnPropertyInfo = "tooltip-column"
    type AttrOrigin IconViewTooltipColumnPropertyInfo = IconView
    attrGet = getIconViewTooltipColumn
    attrSet = setIconViewTooltipColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructIconViewTooltipColumn
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IconView
type instance O.AttributeList IconView = IconViewAttributeList
type IconViewAttributeList = ('[ '("activateOnSingleClick", IconViewActivateOnSingleClickPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("cellArea", IconViewCellAreaPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("columnSpacing", IconViewColumnSpacingPropertyInfo), '("columns", IconViewColumnsPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("hadjustment", Gtk.Scrollable.ScrollableHadjustmentPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hscrollPolicy", Gtk.Scrollable.ScrollableHscrollPolicyPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("itemOrientation", IconViewItemOrientationPropertyInfo), '("itemPadding", IconViewItemPaddingPropertyInfo), '("itemWidth", IconViewItemWidthPropertyInfo), '("margin", IconViewMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("markupColumn", IconViewMarkupColumnPropertyInfo), '("model", IconViewModelPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("pixbufColumn", IconViewPixbufColumnPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("reorderable", IconViewReorderablePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rowSpacing", IconViewRowSpacingPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("selectionMode", IconViewSelectionModePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", IconViewSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("textColumn", IconViewTextColumnPropertyInfo), '("tooltipColumn", IconViewTooltipColumnPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("vadjustment", Gtk.Scrollable.ScrollableVadjustmentPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("vscrollPolicy", Gtk.Scrollable.ScrollableVscrollPolicyPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
iconViewActivateOnSingleClick :: AttrLabelProxy "activateOnSingleClick"
iconViewActivateOnSingleClick = AttrLabelProxy

iconViewCellArea :: AttrLabelProxy "cellArea"
iconViewCellArea = AttrLabelProxy

iconViewColumnSpacing :: AttrLabelProxy "columnSpacing"
iconViewColumnSpacing = AttrLabelProxy

iconViewColumns :: AttrLabelProxy "columns"
iconViewColumns = AttrLabelProxy

iconViewItemOrientation :: AttrLabelProxy "itemOrientation"
iconViewItemOrientation = AttrLabelProxy

iconViewItemPadding :: AttrLabelProxy "itemPadding"
iconViewItemPadding = AttrLabelProxy

iconViewItemWidth :: AttrLabelProxy "itemWidth"
iconViewItemWidth = AttrLabelProxy

iconViewMargin :: AttrLabelProxy "margin"
iconViewMargin = AttrLabelProxy

iconViewMarkupColumn :: AttrLabelProxy "markupColumn"
iconViewMarkupColumn = AttrLabelProxy

iconViewModel :: AttrLabelProxy "model"
iconViewModel = AttrLabelProxy

iconViewPixbufColumn :: AttrLabelProxy "pixbufColumn"
iconViewPixbufColumn = AttrLabelProxy

iconViewReorderable :: AttrLabelProxy "reorderable"
iconViewReorderable = AttrLabelProxy

iconViewRowSpacing :: AttrLabelProxy "rowSpacing"
iconViewRowSpacing = AttrLabelProxy

iconViewSelectionMode :: AttrLabelProxy "selectionMode"
iconViewSelectionMode = AttrLabelProxy

iconViewSpacing :: AttrLabelProxy "spacing"
iconViewSpacing = AttrLabelProxy

iconViewTextColumn :: AttrLabelProxy "textColumn"
iconViewTextColumn = AttrLabelProxy

iconViewTooltipColumn :: AttrLabelProxy "tooltipColumn"
iconViewTooltipColumn = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IconView = IconViewSignalList
type IconViewSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateCursorItem", IconViewActivateCursorItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("itemActivated", IconViewItemActivatedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCursor", IconViewMoveCursorSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectAll", IconViewSelectAllSignalInfo), '("selectCursorItem", IconViewSelectCursorItemSignalInfo), '("selectionChanged", IconViewSelectionChangedSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleCursorItem", IconViewToggleCursorItemSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("unselectAll", IconViewUnselectAllSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method IconView::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_new" gtk_icon_view_new :: 
    IO (Ptr IconView)

-- | Creates a new t'GI.Gtk.Objects.IconView.IconView' widget
-- 
-- /Since: 2.6/
iconViewNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IconView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.IconView.IconView' widget
iconViewNew  = liftIO $ do
    result <- gtk_icon_view_new
    checkUnexpectedReturnNULL "iconViewNew" result
    result' <- (newObject IconView) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconView::new_with_area
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "area"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellArea" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkCellArea to use to layout cells"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_new_with_area" gtk_icon_view_new_with_area :: 
    Ptr Gtk.CellArea.CellArea ->            -- area : TInterface (Name {namespace = "Gtk", name = "CellArea"})
    IO (Ptr IconView)

-- | Creates a new t'GI.Gtk.Objects.IconView.IconView' widget using the
-- specified /@area@/ to layout cells inside the icons.
-- 
-- /Since: 3.0/
iconViewNewWithArea ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.CellArea.IsCellArea a) =>
    a
    -- ^ /@area@/: the t'GI.Gtk.Objects.CellArea.CellArea' to use to layout cells
    -> m IconView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.IconView.IconView' widget
iconViewNewWithArea area = liftIO $ do
    area' <- unsafeManagedPtrCastPtr area
    result <- gtk_icon_view_new_with_area area'
    checkUnexpectedReturnNULL "iconViewNewWithArea" result
    result' <- (newObject IconView) result
    touchManagedPtr area
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconView::new_with_model
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeModel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The model." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconView" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_new_with_model" gtk_icon_view_new_with_model :: 
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO (Ptr IconView)

-- | Creates a new t'GI.Gtk.Objects.IconView.IconView' widget with the model /@model@/.
-- 
-- /Since: 2.6/
iconViewNewWithModel ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.TreeModel.IsTreeModel a) =>
    a
    -- ^ /@model@/: The model.
    -> m IconView
    -- ^ __Returns:__ A newly created t'GI.Gtk.Objects.IconView.IconView' widget.
iconViewNewWithModel model = liftIO $ do
    model' <- unsafeManagedPtrCastPtr model
    result <- gtk_icon_view_new_with_model model'
    checkUnexpectedReturnNULL "iconViewNewWithModel" result
    result' <- (newObject IconView) result
    touchManagedPtr model
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IconView::convert_widget_to_bin_window_coords
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wx"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "X coordinate relative to the widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wy"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Y coordinate relative to the widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "bx"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for bin_window X coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "by"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "return location for bin_window Y coordinate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_convert_widget_to_bin_window_coords" gtk_icon_view_convert_widget_to_bin_window_coords :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- wx : TBasicType TInt
    Int32 ->                                -- wy : TBasicType TInt
    Ptr Int32 ->                            -- bx : TBasicType TInt
    Ptr Int32 ->                            -- by : TBasicType TInt
    IO ()

-- | Converts widget coordinates to coordinates for the bin_window,
-- as expected by e.g. 'GI.Gtk.Objects.IconView.iconViewGetPathAtPos'.
-- 
-- /Since: 2.12/
iconViewConvertWidgetToBinWindowCoords ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@wx@/: X coordinate relative to the widget
    -> Int32
    -- ^ /@wy@/: Y coordinate relative to the widget
    -> m ((Int32, Int32))
iconViewConvertWidgetToBinWindowCoords iconView wx wy = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    bx <- allocMem :: IO (Ptr Int32)
    by <- allocMem :: IO (Ptr Int32)
    gtk_icon_view_convert_widget_to_bin_window_coords iconView' wx wy bx by
    bx' <- peek bx
    by' <- peek by
    touchManagedPtr iconView
    freeMem bx
    freeMem by
    return (bx', by')

#if defined(ENABLE_OVERLOADING)
data IconViewConvertWidgetToBinWindowCoordsMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ((Int32, Int32))), MonadIO m, IsIconView a) => O.MethodInfo IconViewConvertWidgetToBinWindowCoordsMethodInfo a signature where
    overloadedMethod = iconViewConvertWidgetToBinWindowCoords

#endif

-- method IconView::create_drag_icon
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkTreePath in @icon_view"
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
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_create_drag_icon" gtk_icon_view_create_drag_icon :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO (Ptr Cairo.Surface.Surface)

-- | Creates a t'GI.Cairo.Structs.Surface.Surface' representation of the item at /@path@/.
-- This image is used for a drag icon.
-- 
-- /Since: 2.8/
iconViewCreateDragIcon ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath' in /@iconView@/
    -> m Cairo.Surface.Surface
    -- ^ __Returns:__ a newly-allocated surface of the drag icon.
iconViewCreateDragIcon iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    result <- gtk_icon_view_create_drag_icon iconView' path'
    checkUnexpectedReturnNULL "iconViewCreateDragIcon" result
    result' <- (wrapBoxed Cairo.Surface.Surface) result
    touchManagedPtr iconView
    touchManagedPtr path
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewCreateDragIconMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m Cairo.Surface.Surface), MonadIO m, IsIconView a) => O.MethodInfo IconViewCreateDragIconMethodInfo a signature where
    overloadedMethod = iconViewCreateDragIcon

#endif

-- method IconView::enable_model_drag_dest
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "targets"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Gtk" , name = "TargetEntry" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the table of targets that the drag will\n          support"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_targets"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of items in @targets"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "actions"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "DragAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the bitmask of possible actions for a drag to this\n   widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_targets"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of items in @targets"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_enable_model_drag_dest" gtk_icon_view_enable_model_drag_dest :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TargetEntry.TargetEntry ->      -- targets : TCArray False (-1) 2 (TInterface (Name {namespace = "Gtk", name = "TargetEntry"}))
    Int32 ->                                -- n_targets : TBasicType TInt
    CUInt ->                                -- actions : TInterface (Name {namespace = "Gdk", name = "DragAction"})
    IO ()

-- | Turns /@iconView@/ into a drop destination for automatic DND. Calling this
-- method sets t'GI.Gtk.Objects.IconView.IconView':@/reorderable/@ to 'P.False'.
-- 
-- /Since: 2.8/
iconViewEnableModelDragDest ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> [Gtk.TargetEntry.TargetEntry]
    -- ^ /@targets@/: the table of targets that the drag will
    --           support
    -> [Gdk.Flags.DragAction]
    -- ^ /@actions@/: the bitmask of possible actions for a drag to this
    --    widget
    -> m ()
iconViewEnableModelDragDest iconView targets actions = liftIO $ do
    let nTargets = fromIntegral $ length targets
    iconView' <- unsafeManagedPtrCastPtr iconView
    targets' <- mapM unsafeManagedPtrGetPtr targets
    targets'' <- packBlockArray 16 targets'
    let actions' = gflagsToWord actions
    gtk_icon_view_enable_model_drag_dest iconView' targets'' nTargets actions'
    touchManagedPtr iconView
    mapM_ touchManagedPtr targets
    freeMem targets''
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewEnableModelDragDestMethodInfo
instance (signature ~ ([Gtk.TargetEntry.TargetEntry] -> [Gdk.Flags.DragAction] -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewEnableModelDragDestMethodInfo a signature where
    overloadedMethod = iconViewEnableModelDragDest

#endif

-- method IconView::enable_model_drag_source
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_button_mask"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "ModifierType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Mask of allowed buttons to start drag"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "targets"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 3
--                 (TInterface Name { namespace = "Gtk" , name = "TargetEntry" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the table of targets that the drag will\n          support"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_targets"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of items in @targets"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "actions"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "DragAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the bitmask of possible actions for a drag from this\n   widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_targets"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of items in @targets"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_enable_model_drag_source" gtk_icon_view_enable_model_drag_source :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    CUInt ->                                -- start_button_mask : TInterface (Name {namespace = "Gdk", name = "ModifierType"})
    Ptr Gtk.TargetEntry.TargetEntry ->      -- targets : TCArray False (-1) 3 (TInterface (Name {namespace = "Gtk", name = "TargetEntry"}))
    Int32 ->                                -- n_targets : TBasicType TInt
    CUInt ->                                -- actions : TInterface (Name {namespace = "Gdk", name = "DragAction"})
    IO ()

-- | Turns /@iconView@/ into a drag source for automatic DND. Calling this
-- method sets t'GI.Gtk.Objects.IconView.IconView':@/reorderable/@ to 'P.False'.
-- 
-- /Since: 2.8/
iconViewEnableModelDragSource ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> [Gdk.Flags.ModifierType]
    -- ^ /@startButtonMask@/: Mask of allowed buttons to start drag
    -> [Gtk.TargetEntry.TargetEntry]
    -- ^ /@targets@/: the table of targets that the drag will
    --           support
    -> [Gdk.Flags.DragAction]
    -- ^ /@actions@/: the bitmask of possible actions for a drag from this
    --    widget
    -> m ()
iconViewEnableModelDragSource iconView startButtonMask targets actions = liftIO $ do
    let nTargets = fromIntegral $ length targets
    iconView' <- unsafeManagedPtrCastPtr iconView
    let startButtonMask' = gflagsToWord startButtonMask
    targets' <- mapM unsafeManagedPtrGetPtr targets
    targets'' <- packBlockArray 16 targets'
    let actions' = gflagsToWord actions
    gtk_icon_view_enable_model_drag_source iconView' startButtonMask' targets'' nTargets actions'
    touchManagedPtr iconView
    mapM_ touchManagedPtr targets
    freeMem targets''
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewEnableModelDragSourceMethodInfo
instance (signature ~ ([Gdk.Flags.ModifierType] -> [Gtk.TargetEntry.TargetEntry] -> [Gdk.Flags.DragAction] -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewEnableModelDragSourceMethodInfo a signature where
    overloadedMethod = iconViewEnableModelDragSource

#endif

-- method IconView::get_activate_on_single_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_get_activate_on_single_click" gtk_icon_view_get_activate_on_single_click :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO CInt

-- | Gets the setting set by 'GI.Gtk.Objects.IconView.iconViewSetActivateOnSingleClick'.
-- 
-- /Since: 3.8/
iconViewGetActivateOnSingleClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if item-activated will be emitted on a single click
iconViewGetActivateOnSingleClick iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_activate_on_single_click iconView'
    let result' = (/= 0) result
    touchManagedPtr iconView
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewGetActivateOnSingleClickMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetActivateOnSingleClickMethodInfo a signature where
    overloadedMethod = iconViewGetActivateOnSingleClick

#endif

-- method IconView::get_cell_rect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRenderer or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "rectangle to fill with cell rect"
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

foreign import ccall "gtk_icon_view_get_cell_rect" gtk_icon_view_get_cell_rect :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr Gtk.CellRenderer.CellRenderer ->    -- cell : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO CInt

-- | Fills the bounding rectangle in widget coordinates for the cell specified by
-- /@path@/ and /@cell@/. If /@cell@/ is 'P.Nothing' the main cell area is used.
-- 
-- This function is only valid if /@iconView@/ is realized.
-- 
-- /Since: 3.6/
iconViewGetCellRect ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a, Gtk.CellRenderer.IsCellRenderer b) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath'
    -> Maybe (b)
    -- ^ /@cell@/: a t'GI.Gtk.Objects.CellRenderer.CellRenderer' or 'P.Nothing'
    -> m ((Bool, Gdk.Rectangle.Rectangle))
    -- ^ __Returns:__ 'P.False' if there is no such item, 'P.True' otherwise
iconViewGetCellRect iconView path cell = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    maybeCell <- case cell of
        Nothing -> return nullPtr
        Just jCell -> do
            jCell' <- unsafeManagedPtrCastPtr jCell
            return jCell'
    rect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    result <- gtk_icon_view_get_cell_rect iconView' path' maybeCell rect
    let result' = (/= 0) result
    rect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rect
    touchManagedPtr iconView
    touchManagedPtr path
    whenJust cell touchManagedPtr
    return (result', rect')

#if defined(ENABLE_OVERLOADING)
data IconViewGetCellRectMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> Maybe (b) -> m ((Bool, Gdk.Rectangle.Rectangle))), MonadIO m, IsIconView a, Gtk.CellRenderer.IsCellRenderer b) => O.MethodInfo IconViewGetCellRectMethodInfo a signature where
    overloadedMethod = iconViewGetCellRect

#endif

-- method IconView::get_column_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_column_spacing" gtk_icon_view_get_column_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [columnSpacing](#signal:columnSpacing) property.
-- 
-- /Since: 2.6/
iconViewGetColumnSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the space between columns
iconViewGetColumnSpacing iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_column_spacing iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetColumnSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetColumnSpacingMethodInfo a signature where
    overloadedMethod = iconViewGetColumnSpacing

#endif

-- method IconView::get_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_columns" gtk_icon_view_get_columns :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [columns](#signal:columns) property.
-- 
-- /Since: 2.6/
iconViewGetColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the number of columns, or -1
iconViewGetColumns iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_columns iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetColumnsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetColumnsMethodInfo a signature where
    overloadedMethod = iconViewGetColumns

#endif

-- method IconView::get_cursor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView" , sinceVersion = Nothing }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Return location for the current\n       cursor path, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Return location the current\n       focus cell, or %NULL"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_cursor" gtk_icon_view_get_cursor :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr (Ptr Gtk.CellRenderer.CellRenderer) -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    IO CInt

-- | Fills in /@path@/ and /@cell@/ with the current cursor path and cell.
-- If the cursor isn’t currently set, then */@path@/ will be 'P.Nothing'.
-- If no cell currently has focus, then */@cell@/ will be 'P.Nothing'.
-- 
-- The returned t'GI.Gtk.Structs.TreePath.TreePath' must be freed with 'GI.Gtk.Structs.TreePath.treePathFree'.
-- 
-- /Since: 2.8/
iconViewGetCursor ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'
    -> m ((Bool, Gtk.TreePath.TreePath, Gtk.CellRenderer.CellRenderer))
    -- ^ __Returns:__ 'P.True' if the cursor is set.
iconViewGetCursor iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    cell <- allocMem :: IO (Ptr (Ptr Gtk.CellRenderer.CellRenderer))
    result <- gtk_icon_view_get_cursor iconView' path cell
    let result' = (/= 0) result
    path' <- peek path
    path'' <- (wrapBoxed Gtk.TreePath.TreePath) path'
    cell' <- peek cell
    cell'' <- (newObject Gtk.CellRenderer.CellRenderer) cell'
    touchManagedPtr iconView
    freeMem path
    freeMem cell
    return (result', path'', cell'')

#if defined(ENABLE_OVERLOADING)
data IconViewGetCursorMethodInfo
instance (signature ~ (m ((Bool, Gtk.TreePath.TreePath, Gtk.CellRenderer.CellRenderer))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetCursorMethodInfo a signature where
    overloadedMethod = iconViewGetCursor

#endif

-- method IconView::get_dest_item_at_pos
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "drag_x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the position to determine the destination item for"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "drag_y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the position to determine the destination item for"
--                 , sinceVersion = Nothing
--                 }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Return location for the path of the item,\n   or %NULL."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "pos"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "IconViewDropPosition" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Return location for the drop position, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_dest_item_at_pos" gtk_icon_view_get_dest_item_at_pos :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- drag_x : TBasicType TInt
    Int32 ->                                -- drag_y : TBasicType TInt
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr CUInt ->                            -- pos : TInterface (Name {namespace = "Gtk", name = "IconViewDropPosition"})
    IO CInt

-- | Determines the destination item for a given position.
-- 
-- /Since: 2.8/
iconViewGetDestItemAtPos ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@dragX@/: the position to determine the destination item for
    -> Int32
    -- ^ /@dragY@/: the position to determine the destination item for
    -> m ((Bool, Gtk.TreePath.TreePath, Gtk.Enums.IconViewDropPosition))
    -- ^ __Returns:__ whether there is an item at the given position.
iconViewGetDestItemAtPos iconView dragX dragY = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    pos <- allocMem :: IO (Ptr CUInt)
    result <- gtk_icon_view_get_dest_item_at_pos iconView' dragX dragY path pos
    let result' = (/= 0) result
    path' <- peek path
    path'' <- (wrapBoxed Gtk.TreePath.TreePath) path'
    pos' <- peek pos
    let pos'' = (toEnum . fromIntegral) pos'
    touchManagedPtr iconView
    freeMem path
    freeMem pos
    return (result', path'', pos'')

#if defined(ENABLE_OVERLOADING)
data IconViewGetDestItemAtPosMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ((Bool, Gtk.TreePath.TreePath, Gtk.Enums.IconViewDropPosition))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetDestItemAtPosMethodInfo a signature where
    overloadedMethod = iconViewGetDestItemAtPos

#endif

-- method IconView::get_drag_dest_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Return location for the path of\n       the highlighted item, or %NULL."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "pos"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "IconViewDropPosition" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Return location for the drop position, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_drag_dest_item" gtk_icon_view_get_drag_dest_item :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr CUInt ->                            -- pos : TInterface (Name {namespace = "Gtk", name = "IconViewDropPosition"})
    IO ()

-- | Gets information about the item that is highlighted for feedback.
-- 
-- /Since: 2.8/
iconViewGetDragDestItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m ((Gtk.TreePath.TreePath, Gtk.Enums.IconViewDropPosition))
iconViewGetDragDestItem iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    pos <- allocMem :: IO (Ptr CUInt)
    gtk_icon_view_get_drag_dest_item iconView' path pos
    path' <- peek path
    path'' <- (wrapBoxed Gtk.TreePath.TreePath) path'
    pos' <- peek pos
    let pos'' = (toEnum . fromIntegral) pos'
    touchManagedPtr iconView
    freeMem path
    freeMem pos
    return (path'', pos'')

#if defined(ENABLE_OVERLOADING)
data IconViewGetDragDestItemMethodInfo
instance (signature ~ (m ((Gtk.TreePath.TreePath, Gtk.Enums.IconViewDropPosition))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetDragDestItemMethodInfo a signature where
    overloadedMethod = iconViewGetDragDestItem

#endif

-- method IconView::get_item_at_pos
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The x position to be identified"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The y position to be identified"
--                 , sinceVersion = Nothing
--                 }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return location for the path, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Return location for the renderer\n  responsible for the cell at (@x, @y), or %NULL"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_at_pos" gtk_icon_view_get_item_at_pos :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr (Ptr Gtk.CellRenderer.CellRenderer) -> -- cell : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    IO CInt

-- | Finds the path at the point (/@x@/, /@y@/), relative to bin_window coordinates.
-- In contrast to 'GI.Gtk.Objects.IconView.iconViewGetPathAtPos', this function also
-- obtains the cell at the specified position. The returned path should
-- be freed with 'GI.Gtk.Structs.TreePath.treePathFree'.
-- See 'GI.Gtk.Objects.IconView.iconViewConvertWidgetToBinWindowCoords' for converting
-- widget coordinates to bin_window coordinates.
-- 
-- /Since: 2.8/
iconViewGetItemAtPos ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Int32
    -- ^ /@x@/: The x position to be identified
    -> Int32
    -- ^ /@y@/: The y position to be identified
    -> m ((Bool, Gtk.TreePath.TreePath, Gtk.CellRenderer.CellRenderer))
    -- ^ __Returns:__ 'P.True' if an item exists at the specified position
iconViewGetItemAtPos iconView x y = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    cell <- allocMem :: IO (Ptr (Ptr Gtk.CellRenderer.CellRenderer))
    result <- gtk_icon_view_get_item_at_pos iconView' x y path cell
    let result' = (/= 0) result
    path' <- peek path
    path'' <- (wrapBoxed Gtk.TreePath.TreePath) path'
    cell' <- peek cell
    cell'' <- (newObject Gtk.CellRenderer.CellRenderer) cell'
    touchManagedPtr iconView
    freeMem path
    freeMem cell
    return (result', path'', cell'')

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemAtPosMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ((Bool, Gtk.TreePath.TreePath, Gtk.CellRenderer.CellRenderer))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemAtPosMethodInfo a signature where
    overloadedMethod = iconViewGetItemAtPos

#endif

-- method IconView::get_item_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkTreePath of the item"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_column" gtk_icon_view_get_item_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO Int32

-- | Gets the column in which the item /@path@/ is currently
-- displayed. Column numbers start at 0.
-- 
-- /Since: 2.22/
iconViewGetItemColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: the t'GI.Gtk.Structs.TreePath.TreePath' of the item
    -> m Int32
    -- ^ __Returns:__ The column in which the item is displayed
iconViewGetItemColumn iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    result <- gtk_icon_view_get_item_column iconView' path'
    touchManagedPtr iconView
    touchManagedPtr path
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemColumnMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemColumnMethodInfo a signature where
    overloadedMethod = iconViewGetItemColumn

#endif

-- method IconView::get_item_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Orientation" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_orientation" gtk_icon_view_get_item_orientation :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO CUInt

-- | Returns the value of the [itemOrientation](#signal:itemOrientation) property which determines
-- whether the labels are drawn beside the icons instead of below.
-- 
-- /Since: 2.6/
iconViewGetItemOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Gtk.Enums.Orientation
    -- ^ __Returns:__ the relative position of texts and icons
iconViewGetItemOrientation iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_item_orientation iconView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr iconView
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemOrientationMethodInfo
instance (signature ~ (m Gtk.Enums.Orientation), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemOrientationMethodInfo a signature where
    overloadedMethod = iconViewGetItemOrientation

#endif

-- method IconView::get_item_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_padding" gtk_icon_view_get_item_padding :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [itemPadding](#signal:itemPadding) property.
-- 
-- /Since: 2.18/
iconViewGetItemPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the padding around items
iconViewGetItemPadding iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_item_padding iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemPaddingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemPaddingMethodInfo a signature where
    overloadedMethod = iconViewGetItemPadding

#endif

-- method IconView::get_item_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkTreePath of the item"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_row" gtk_icon_view_get_item_row :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO Int32

-- | Gets the row in which the item /@path@/ is currently
-- displayed. Row numbers start at 0.
-- 
-- /Since: 2.22/
iconViewGetItemRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: the t'GI.Gtk.Structs.TreePath.TreePath' of the item
    -> m Int32
    -- ^ __Returns:__ The row in which the item is displayed
iconViewGetItemRow iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    result <- gtk_icon_view_get_item_row iconView' path'
    touchManagedPtr iconView
    touchManagedPtr path
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemRowMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemRowMethodInfo a signature where
    overloadedMethod = iconViewGetItemRow

#endif

-- method IconView::get_item_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_item_width" gtk_icon_view_get_item_width :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [itemWidth](#signal:itemWidth) property.
-- 
-- /Since: 2.6/
iconViewGetItemWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the width of a single item, or -1
iconViewGetItemWidth iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_item_width iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetItemWidthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetItemWidthMethodInfo a signature where
    overloadedMethod = iconViewGetItemWidth

#endif

-- method IconView::get_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_margin" gtk_icon_view_get_margin :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [margin](#signal:margin) property.
-- 
-- /Since: 2.6/
iconViewGetMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the space at the borders
iconViewGetMargin iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_margin iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetMarginMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetMarginMethodInfo a signature where
    overloadedMethod = iconViewGetMargin

#endif

-- method IconView::get_markup_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_markup_column" gtk_icon_view_get_markup_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the column with markup text for /@iconView@/.
-- 
-- /Since: 2.6/
iconViewGetMarkupColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m Int32
    -- ^ __Returns:__ the markup column, or -1 if it’s unset.
iconViewGetMarkupColumn iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_markup_column iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetMarkupColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetMarkupColumnMethodInfo a signature where
    overloadedMethod = iconViewGetMarkupColumn

#endif

-- method IconView::get_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_get_model" gtk_icon_view_get_model :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO (Ptr Gtk.TreeModel.TreeModel)

-- | Returns the model the t'GI.Gtk.Objects.IconView.IconView' is based on.  Returns 'P.Nothing' if the
-- model is unset.
-- 
-- /Since: 2.6/
iconViewGetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m (Maybe Gtk.TreeModel.TreeModel)
    -- ^ __Returns:__ A t'GI.Gtk.Interfaces.TreeModel.TreeModel', or 'P.Nothing' if none is
    --     currently being used.
iconViewGetModel iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_model iconView'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.TreeModel.TreeModel) result'
        return result''
    touchManagedPtr iconView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data IconViewGetModelMethodInfo
instance (signature ~ (m (Maybe Gtk.TreeModel.TreeModel)), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetModelMethodInfo a signature where
    overloadedMethod = iconViewGetModel

#endif

-- method IconView::get_path_at_pos
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The x position to be identified"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The y position to be identified"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TreePath" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_path_at_pos" gtk_icon_view_get_path_at_pos :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO (Ptr Gtk.TreePath.TreePath)

-- | Finds the path at the point (/@x@/, /@y@/), relative to bin_window coordinates.
-- See 'GI.Gtk.Objects.IconView.iconViewGetItemAtPos', if you are also interested in
-- the cell at the specified position.
-- See 'GI.Gtk.Objects.IconView.iconViewConvertWidgetToBinWindowCoords' for converting
-- widget coordinates to bin_window coordinates.
-- 
-- /Since: 2.6/
iconViewGetPathAtPos ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Int32
    -- ^ /@x@/: The x position to be identified
    -> Int32
    -- ^ /@y@/: The y position to be identified
    -> m (Maybe Gtk.TreePath.TreePath)
    -- ^ __Returns:__ The t'GI.Gtk.Structs.TreePath.TreePath' corresponding
    -- to the icon or 'P.Nothing' if no icon exists at that position.
iconViewGetPathAtPos iconView x y = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_path_at_pos iconView' x y
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapBoxed Gtk.TreePath.TreePath) result'
        return result''
    touchManagedPtr iconView
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data IconViewGetPathAtPosMethodInfo
instance (signature ~ (Int32 -> Int32 -> m (Maybe Gtk.TreePath.TreePath)), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetPathAtPosMethodInfo a signature where
    overloadedMethod = iconViewGetPathAtPos

#endif

-- method IconView::get_pixbuf_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_pixbuf_column" gtk_icon_view_get_pixbuf_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the column with pixbufs for /@iconView@/.
-- 
-- /Since: 2.6/
iconViewGetPixbufColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m Int32
    -- ^ __Returns:__ the pixbuf column, or -1 if it’s unset.
iconViewGetPixbufColumn iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_pixbuf_column iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetPixbufColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetPixbufColumnMethodInfo a signature where
    overloadedMethod = iconViewGetPixbufColumn

#endif

-- method IconView::get_reorderable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_get_reorderable" gtk_icon_view_get_reorderable :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO CInt

-- | Retrieves whether the user can reorder the list via drag-and-drop.
-- See 'GI.Gtk.Objects.IconView.iconViewSetReorderable'.
-- 
-- /Since: 2.8/
iconViewGetReorderable ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the list can be reordered.
iconViewGetReorderable iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_reorderable iconView'
    let result' = (/= 0) result
    touchManagedPtr iconView
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewGetReorderableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetReorderableMethodInfo a signature where
    overloadedMethod = iconViewGetReorderable

#endif

-- method IconView::get_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_row_spacing" gtk_icon_view_get_row_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [rowSpacing](#signal:rowSpacing) property.
-- 
-- /Since: 2.6/
iconViewGetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the space between rows
iconViewGetRowSpacing iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_row_spacing iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetRowSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetRowSpacingMethodInfo a signature where
    overloadedMethod = iconViewGetRowSpacing

#endif

-- method IconView::get_selected_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TGList
--                  (TInterface Name { namespace = "Gtk" , name = "TreePath" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_selected_items" gtk_icon_view_get_selected_items :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO (Ptr (GList (Ptr Gtk.TreePath.TreePath)))

-- | Creates a list of paths of all selected items. Additionally, if you are
-- planning on modifying the model after calling this function, you may
-- want to convert the returned list into a list of @/GtkTreeRowReferences/@.
-- To do this, you can use 'GI.Gtk.Structs.TreeRowReference.treeRowReferenceNew'.
-- 
-- To free the return value, use:
-- 
-- === /C code/
-- >
-- >g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
-- 
-- 
-- /Since: 2.6/
iconViewGetSelectedItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m [Gtk.TreePath.TreePath]
    -- ^ __Returns:__ A t'GI.GLib.Structs.List.List' containing a t'GI.Gtk.Structs.TreePath.TreePath' for each selected row.
iconViewGetSelectedItems iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_selected_items iconView'
    result' <- unpackGList result
    result'' <- mapM (wrapBoxed Gtk.TreePath.TreePath) result'
    g_list_free result
    touchManagedPtr iconView
    return result''

#if defined(ENABLE_OVERLOADING)
data IconViewGetSelectedItemsMethodInfo
instance (signature ~ (m [Gtk.TreePath.TreePath]), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetSelectedItemsMethodInfo a signature where
    overloadedMethod = iconViewGetSelectedItems

#endif

-- method IconView::get_selection_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SelectionMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_selection_mode" gtk_icon_view_get_selection_mode :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO CUInt

-- | Gets the selection mode of the /@iconView@/.
-- 
-- /Since: 2.6/
iconViewGetSelectionMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m Gtk.Enums.SelectionMode
    -- ^ __Returns:__ the current selection mode
iconViewGetSelectionMode iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_selection_mode iconView'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr iconView
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewGetSelectionModeMethodInfo
instance (signature ~ (m Gtk.Enums.SelectionMode), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetSelectionModeMethodInfo a signature where
    overloadedMethod = iconViewGetSelectionMode

#endif

-- method IconView::get_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_spacing" gtk_icon_view_get_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the value of the [spacing](#signal:spacing) property.
-- 
-- /Since: 2.6/
iconViewGetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the space between cells
iconViewGetSpacing iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_spacing iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetSpacingMethodInfo a signature where
    overloadedMethod = iconViewGetSpacing

#endif

-- method IconView::get_text_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_text_column" gtk_icon_view_get_text_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the column with text for /@iconView@/.
-- 
-- /Since: 2.6/
iconViewGetTextColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m Int32
    -- ^ __Returns:__ the text column, or -1 if it’s unset.
iconViewGetTextColumn iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_text_column iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetTextColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetTextColumnMethodInfo a signature where
    overloadedMethod = iconViewGetTextColumn

#endif

-- method IconView::get_tooltip_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_tooltip_column" gtk_icon_view_get_tooltip_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO Int32

-- | Returns the column of /@iconView@/’s model which is being used for
-- displaying tooltips on /@iconView@/’s rows.
-- 
-- /Since: 2.12/
iconViewGetTooltipColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m Int32
    -- ^ __Returns:__ the index of the tooltip column that is currently being
    -- used, or -1 if this is disabled.
iconViewGetTooltipColumn iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    result <- gtk_icon_view_get_tooltip_column iconView'
    touchManagedPtr iconView
    return result

#if defined(ENABLE_OVERLOADING)
data IconViewGetTooltipColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetTooltipColumnMethodInfo a signature where
    overloadedMethod = iconViewGetTooltipColumn

#endif

-- method IconView::get_tooltip_context
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionInout
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the x coordinate (relative to widget coordinates)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionInout
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the y coordinate (relative to widget coordinates)"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "keyboard_tip"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether this is a keyboard tooltip or not"
--                 , sinceVersion = Nothing
--                 }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a pointer to receive a\n        #GtkTreeModel or %NULL"
--                 , sinceVersion = Nothing
--                 }
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a pointer to receive a #GtkTreePath or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a pointer to receive a #GtkTreeIter or %NULL"
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

foreign import ccall "gtk_icon_view_get_tooltip_context" gtk_icon_view_get_tooltip_context :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Int32 ->                            -- x : TBasicType TInt
    Ptr Int32 ->                            -- y : TBasicType TInt
    CInt ->                                 -- keyboard_tip : TBasicType TBoolean
    Ptr (Ptr Gtk.TreeModel.TreeModel) ->    -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO CInt

-- | This function is supposed to be used in a [queryTooltip]("GI.Gtk.Objects.Widget#signal:queryTooltip")
-- signal handler for t'GI.Gtk.Objects.IconView.IconView'.  The /@x@/, /@y@/ and /@keyboardTip@/ values
-- which are received in the signal handler, should be passed to this
-- function without modification.
-- 
-- The return value indicates whether there is an icon view item at the given
-- coordinates ('P.True') or not ('P.False') for mouse tooltips. For keyboard
-- tooltips the item returned will be the cursor item. When 'P.True', then any of
-- /@model@/, /@path@/ and /@iter@/ which have been provided will be set to point to
-- that row and the corresponding model. /@x@/ and /@y@/ will always be converted
-- to be relative to /@iconView@/’s bin_window if /@keyboardTooltip@/ is 'P.False'.
-- 
-- /Since: 2.12/
iconViewGetTooltipContext ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: an t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@x@/: the x coordinate (relative to widget coordinates)
    -> Int32
    -- ^ /@y@/: the y coordinate (relative to widget coordinates)
    -> Bool
    -- ^ /@keyboardTip@/: whether this is a keyboard tooltip or not
    -> m ((Bool, Int32, Int32, Gtk.TreeModel.TreeModel, Gtk.TreePath.TreePath, Gtk.TreeIter.TreeIter))
    -- ^ __Returns:__ whether or not the given tooltip context points to a item
iconViewGetTooltipContext iconView x y keyboardTip = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    x' <- allocMem :: IO (Ptr Int32)
    poke x' x
    y' <- allocMem :: IO (Ptr Int32)
    poke y' y
    let keyboardTip' = (fromIntegral . fromEnum) keyboardTip
    model <- allocMem :: IO (Ptr (Ptr Gtk.TreeModel.TreeModel))
    path <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    result <- gtk_icon_view_get_tooltip_context iconView' x' y' keyboardTip' model path iter
    let result' = (/= 0) result
    x'' <- peek x'
    y'' <- peek y'
    model' <- peek model
    model'' <- (newObject Gtk.TreeModel.TreeModel) model'
    path' <- peek path
    path'' <- (wrapBoxed Gtk.TreePath.TreePath) path'
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr iconView
    freeMem x'
    freeMem y'
    freeMem model
    freeMem path
    return (result', x'', y'', model'', path'', iter')

#if defined(ENABLE_OVERLOADING)
data IconViewGetTooltipContextMethodInfo
instance (signature ~ (Int32 -> Int32 -> Bool -> m ((Bool, Int32, Int32, Gtk.TreeModel.TreeModel, Gtk.TreePath.TreePath, Gtk.TreeIter.TreeIter))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetTooltipContextMethodInfo a signature where
    overloadedMethod = iconViewGetTooltipContext

#endif

-- method IconView::get_visible_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_path"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreePath" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Return location for start of region,\n             or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "end_path"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreePath" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return location for end of region, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_get_visible_range" gtk_icon_view_get_visible_range :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- start_path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr (Ptr Gtk.TreePath.TreePath) ->      -- end_path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO CInt

-- | Sets /@startPath@/ and /@endPath@/ to be the first and last visible path.
-- Note that there may be invisible paths in between.
-- 
-- Both paths should be freed with 'GI.Gtk.Structs.TreePath.treePathFree' after use.
-- 
-- /Since: 2.8/
iconViewGetVisibleRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'
    -> m ((Bool, Gtk.TreePath.TreePath, Gtk.TreePath.TreePath))
    -- ^ __Returns:__ 'P.True', if valid paths were placed in /@startPath@/ and /@endPath@/
iconViewGetVisibleRange iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    startPath <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    endPath <- allocMem :: IO (Ptr (Ptr Gtk.TreePath.TreePath))
    result <- gtk_icon_view_get_visible_range iconView' startPath endPath
    let result' = (/= 0) result
    startPath' <- peek startPath
    startPath'' <- (wrapBoxed Gtk.TreePath.TreePath) startPath'
    endPath' <- peek endPath
    endPath'' <- (wrapBoxed Gtk.TreePath.TreePath) endPath'
    touchManagedPtr iconView
    freeMem startPath
    freeMem endPath
    return (result', startPath'', endPath'')

#if defined(ENABLE_OVERLOADING)
data IconViewGetVisibleRangeMethodInfo
instance (signature ~ (m ((Bool, Gtk.TreePath.TreePath, Gtk.TreePath.TreePath))), MonadIO m, IsIconView a) => O.MethodInfo IconViewGetVisibleRangeMethodInfo a signature where
    overloadedMethod = iconViewGetVisibleRange

#endif

-- method IconView::item_activated
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The #GtkTreePath to be activated"
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

foreign import ccall "gtk_icon_view_item_activated" gtk_icon_view_item_activated :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO ()

-- | Activates the item determined by /@path@/.
-- 
-- /Since: 2.6/
iconViewItemActivated ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: The t'GI.Gtk.Structs.TreePath.TreePath' to be activated
    -> m ()
iconViewItemActivated iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    gtk_icon_view_item_activated iconView' path'
    touchManagedPtr iconView
    touchManagedPtr path
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewItemActivatedMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewItemActivatedMethodInfo a signature where
    overloadedMethod = iconViewItemActivated

#endif

-- method IconView::path_is_selected
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "A #GtkTreePath to check selection on."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_path_is_selected" gtk_icon_view_path_is_selected :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO CInt

-- | Returns 'P.True' if the icon pointed to by /@path@/ is currently
-- selected. If /@path@/ does not point to a valid location, 'P.False' is returned.
-- 
-- /Since: 2.6/
iconViewPathIsSelected ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: A t'GI.Gtk.Structs.TreePath.TreePath' to check selection on.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@path@/ is selected.
iconViewPathIsSelected iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    result <- gtk_icon_view_path_is_selected iconView' path'
    let result' = (/= 0) result
    touchManagedPtr iconView
    touchManagedPtr path
    return result'

#if defined(ENABLE_OVERLOADING)
data IconViewPathIsSelectedMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m Bool), MonadIO m, IsIconView a) => O.MethodInfo IconViewPathIsSelectedMethodInfo a signature where
    overloadedMethod = iconViewPathIsSelected

#endif

-- method IconView::scroll_to_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The path of the item to move to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_align"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether to use alignment arguments, or %FALSE."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row_align"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The vertical alignment of the item specified by @path."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "col_align"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The horizontal alignment of the item specified by @path."
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

foreign import ccall "gtk_icon_view_scroll_to_path" gtk_icon_view_scroll_to_path :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    CInt ->                                 -- use_align : TBasicType TBoolean
    CFloat ->                               -- row_align : TBasicType TFloat
    CFloat ->                               -- col_align : TBasicType TFloat
    IO ()

-- | Moves the alignments of /@iconView@/ to the position specified by /@path@/.
-- /@rowAlign@/ determines where the row is placed, and /@colAlign@/ determines
-- where /@column@/ is placed.  Both are expected to be between 0.0 and 1.0.
-- 0.0 means left\/top alignment, 1.0 means right\/bottom alignment, 0.5 means
-- center.
-- 
-- If /@useAlign@/ is 'P.False', then the alignment arguments are ignored, and the
-- tree does the minimum amount of work to scroll the item onto the screen.
-- This means that the item will be scrolled to the edge closest to its current
-- position.  If the item is currently visible on the screen, nothing is done.
-- 
-- This function only works if the model is set, and /@path@/ is a valid row on
-- the model. If the model changes before the /@iconView@/ is realized, the
-- centered path will be modified to reflect this change.
-- 
-- /Since: 2.8/
iconViewScrollToPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: The path of the item to move to.
    -> Bool
    -- ^ /@useAlign@/: whether to use alignment arguments, or 'P.False'.
    -> Float
    -- ^ /@rowAlign@/: The vertical alignment of the item specified by /@path@/.
    -> Float
    -- ^ /@colAlign@/: The horizontal alignment of the item specified by /@path@/.
    -> m ()
iconViewScrollToPath iconView path useAlign rowAlign colAlign = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    let useAlign' = (fromIntegral . fromEnum) useAlign
    let rowAlign' = realToFrac rowAlign
    let colAlign' = realToFrac colAlign
    gtk_icon_view_scroll_to_path iconView' path' useAlign' rowAlign' colAlign'
    touchManagedPtr iconView
    touchManagedPtr path
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewScrollToPathMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> Bool -> Float -> Float -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewScrollToPathMethodInfo a signature where
    overloadedMethod = iconViewScrollToPath

#endif

-- method IconView::select_all
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_select_all" gtk_icon_view_select_all :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO ()

-- | Selects all the icons. /@iconView@/ must has its selection mode set
-- to @/GTK_SELECTION_MULTIPLE/@.
-- 
-- /Since: 2.6/
iconViewSelectAll ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m ()
iconViewSelectAll iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_select_all iconView'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSelectAllMethodInfo
instance (signature ~ (m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSelectAllMethodInfo a signature where
    overloadedMethod = iconViewSelectAll

#endif

-- method IconView::select_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The #GtkTreePath to be selected."
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

foreign import ccall "gtk_icon_view_select_path" gtk_icon_view_select_path :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO ()

-- | Selects the row at /@path@/.
-- 
-- /Since: 2.6/
iconViewSelectPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: The t'GI.Gtk.Structs.TreePath.TreePath' to be selected.
    -> m ()
iconViewSelectPath iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    gtk_icon_view_select_path iconView' path'
    touchManagedPtr iconView
    touchManagedPtr path
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSelectPathMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSelectPathMethodInfo a signature where
    overloadedMethod = iconViewSelectPath

#endif

-- method IconView::selected_foreach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "func"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "IconViewForeachFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The function to call for each selected icon."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeCall
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "User data to pass to the function."
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

foreign import ccall "gtk_icon_view_selected_foreach" gtk_icon_view_selected_foreach :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    FunPtr Gtk.Callbacks.C_IconViewForeachFunc -> -- func : TInterface (Name {namespace = "Gtk", name = "IconViewForeachFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    IO ()

-- | Calls a function for each selected icon. Note that the model or
-- selection cannot be modified from within this function.
-- 
-- /Since: 2.6/
iconViewSelectedForeach ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.Callbacks.IconViewForeachFunc
    -- ^ /@func@/: The function to call for each selected icon.
    -> m ()
iconViewSelectedForeach iconView func = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    func' <- Gtk.Callbacks.mk_IconViewForeachFunc (Gtk.Callbacks.wrap_IconViewForeachFunc Nothing (Gtk.Callbacks.drop_closures_IconViewForeachFunc func))
    let data_ = nullPtr
    gtk_icon_view_selected_foreach iconView' func' data_
    safeFreeFunPtr $ castFunPtrToPtr func'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSelectedForeachMethodInfo
instance (signature ~ (Gtk.Callbacks.IconViewForeachFunc -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSelectedForeachMethodInfo a signature where
    overloadedMethod = iconViewSelectedForeach

#endif

-- method IconView::set_activate_on_single_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "single"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to emit item-activated on a single click"
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

foreign import ccall "gtk_icon_view_set_activate_on_single_click" gtk_icon_view_set_activate_on_single_click :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    CInt ->                                 -- single : TBasicType TBoolean
    IO ()

-- | Causes the [itemActivated]("GI.Gtk.Objects.IconView#signal:itemActivated") signal to be emitted on
-- a single click instead of a double click.
-- 
-- /Since: 3.8/
iconViewSetActivateOnSingleClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Bool
    -- ^ /@single@/: 'P.True' to emit item-activated on a single click
    -> m ()
iconViewSetActivateOnSingleClick iconView single = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    let single' = (fromIntegral . fromEnum) single
    gtk_icon_view_set_activate_on_single_click iconView' single'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetActivateOnSingleClickMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetActivateOnSingleClickMethodInfo a signature where
    overloadedMethod = iconViewSetActivateOnSingleClick

#endif

-- method IconView::set_column_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column_spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the column spacing" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_column_spacing" gtk_icon_view_set_column_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- column_spacing : TBasicType TInt
    IO ()

-- | Sets the [columnSpacing](#signal:columnSpacing) property which specifies the space
-- which is inserted between the columns of the icon view.
-- 
-- /Since: 2.6/
iconViewSetColumnSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@columnSpacing@/: the column spacing
    -> m ()
iconViewSetColumnSpacing iconView columnSpacing = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_column_spacing iconView' columnSpacing
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetColumnSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetColumnSpacingMethodInfo a signature where
    overloadedMethod = iconViewSetColumnSpacing

#endif

-- method IconView::set_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of columns"
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

foreign import ccall "gtk_icon_view_set_columns" gtk_icon_view_set_columns :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- columns : TBasicType TInt
    IO ()

-- | Sets the [columns](#signal:columns) property which determines in how
-- many columns the icons are arranged. If /@columns@/ is
-- -1, the number of columns will be chosen automatically
-- to fill the available area.
-- 
-- /Since: 2.6/
iconViewSetColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@columns@/: the number of columns
    -> m ()
iconViewSetColumns iconView columns = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_columns iconView' columns
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetColumnsMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetColumnsMethodInfo a signature where
    overloadedMethod = iconViewSetColumns

#endif

-- method IconView::set_cursor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "A #GtkTreePath" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "One of the cell renderers of @icon_view, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "start_editing"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if the specified cell should start being edited."
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

foreign import ccall "gtk_icon_view_set_cursor" gtk_icon_view_set_cursor :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr Gtk.CellRenderer.CellRenderer ->    -- cell : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    CInt ->                                 -- start_editing : TBasicType TBoolean
    IO ()

-- | Sets the current keyboard focus to be at /@path@/, and selects it.  This is
-- useful when you want to focus the user’s attention on a particular item.
-- If /@cell@/ is not 'P.Nothing', then focus is given to the cell specified by
-- it. Additionally, if /@startEditing@/ is 'P.True', then editing should be
-- started in the specified cell.
-- 
-- This function is often followed by @gtk_widget_grab_focus
-- (icon_view)@ in order to give keyboard focus to the widget.
-- Please note that editing can only happen when the widget is realized.
-- 
-- /Since: 2.8/
iconViewSetCursor ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a, Gtk.CellRenderer.IsCellRenderer b) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: A t'GI.Gtk.Structs.TreePath.TreePath'
    -> Maybe (b)
    -- ^ /@cell@/: One of the cell renderers of /@iconView@/, or 'P.Nothing'
    -> Bool
    -- ^ /@startEditing@/: 'P.True' if the specified cell should start being edited.
    -> m ()
iconViewSetCursor iconView path cell startEditing = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    maybeCell <- case cell of
        Nothing -> return nullPtr
        Just jCell -> do
            jCell' <- unsafeManagedPtrCastPtr jCell
            return jCell'
    let startEditing' = (fromIntegral . fromEnum) startEditing
    gtk_icon_view_set_cursor iconView' path' maybeCell startEditing'
    touchManagedPtr iconView
    touchManagedPtr path
    whenJust cell touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetCursorMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> Maybe (b) -> Bool -> m ()), MonadIO m, IsIconView a, Gtk.CellRenderer.IsCellRenderer b) => O.MethodInfo IconViewSetCursorMethodInfo a signature where
    overloadedMethod = iconViewSetCursor

#endif

-- method IconView::set_drag_dest_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The path of the item to highlight, or %NULL."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pos"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "IconViewDropPosition" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Specifies where to drop, relative to the item"
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

foreign import ccall "gtk_icon_view_set_drag_dest_item" gtk_icon_view_set_drag_dest_item :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    CUInt ->                                -- pos : TInterface (Name {namespace = "Gtk", name = "IconViewDropPosition"})
    IO ()

-- | Sets the item that is highlighted for feedback.
-- 
-- /Since: 2.8/
iconViewSetDragDestItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Maybe (Gtk.TreePath.TreePath)
    -- ^ /@path@/: The path of the item to highlight, or 'P.Nothing'.
    -> Gtk.Enums.IconViewDropPosition
    -- ^ /@pos@/: Specifies where to drop, relative to the item
    -> m ()
iconViewSetDragDestItem iconView path pos = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    maybePath <- case path of
        Nothing -> return nullPtr
        Just jPath -> do
            jPath' <- unsafeManagedPtrGetPtr jPath
            return jPath'
    let pos' = (fromIntegral . fromEnum) pos
    gtk_icon_view_set_drag_dest_item iconView' maybePath pos'
    touchManagedPtr iconView
    whenJust path touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetDragDestItemMethodInfo
instance (signature ~ (Maybe (Gtk.TreePath.TreePath) -> Gtk.Enums.IconViewDropPosition -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetDragDestItemMethodInfo a signature where
    overloadedMethod = iconViewSetDragDestItem

#endif

-- method IconView::set_item_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the relative position of texts and icons"
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

foreign import ccall "gtk_icon_view_set_item_orientation" gtk_icon_view_set_item_orientation :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO ()

-- | Sets the [itemOrientation](#signal:itemOrientation) property which determines whether the labels
-- are drawn beside the icons instead of below.
-- 
-- /Since: 2.6/
iconViewSetItemOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Gtk.Enums.Orientation
    -- ^ /@orientation@/: the relative position of texts and icons
    -> m ()
iconViewSetItemOrientation iconView orientation = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    let orientation' = (fromIntegral . fromEnum) orientation
    gtk_icon_view_set_item_orientation iconView' orientation'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetItemOrientationMethodInfo
instance (signature ~ (Gtk.Enums.Orientation -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetItemOrientationMethodInfo a signature where
    overloadedMethod = iconViewSetItemOrientation

#endif

-- method IconView::set_item_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "item_padding"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the item padding" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_item_padding" gtk_icon_view_set_item_padding :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- item_padding : TBasicType TInt
    IO ()

-- | Sets the t'GI.Gtk.Objects.IconView.IconView':@/item-padding/@ property which specifies the padding
-- around each of the icon view’s items.
-- 
-- /Since: 2.18/
iconViewSetItemPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@itemPadding@/: the item padding
    -> m ()
iconViewSetItemPadding iconView itemPadding = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_item_padding iconView' itemPadding
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetItemPaddingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetItemPaddingMethodInfo a signature where
    overloadedMethod = iconViewSetItemPadding

#endif

-- method IconView::set_item_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "item_width"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the width for each item"
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

foreign import ccall "gtk_icon_view_set_item_width" gtk_icon_view_set_item_width :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- item_width : TBasicType TInt
    IO ()

-- | Sets the [itemWidth](#signal:itemWidth) property which specifies the width
-- to use for each item. If it is set to -1, the icon view will
-- automatically determine a suitable item size.
-- 
-- /Since: 2.6/
iconViewSetItemWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@itemWidth@/: the width for each item
    -> m ()
iconViewSetItemWidth iconView itemWidth = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_item_width iconView' itemWidth
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetItemWidthMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetItemWidthMethodInfo a signature where
    overloadedMethod = iconViewSetItemWidth

#endif

-- method IconView::set_margin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "margin"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the margin" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_margin" gtk_icon_view_set_margin :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- margin : TBasicType TInt
    IO ()

-- | Sets the [margin](#signal:margin) property which specifies the space
-- which is inserted at the top, bottom, left and right
-- of the icon view.
-- 
-- /Since: 2.6/
iconViewSetMargin ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@margin@/: the margin
    -> m ()
iconViewSetMargin iconView margin = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_margin iconView' margin
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetMarginMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetMarginMethodInfo a signature where
    overloadedMethod = iconViewSetMargin

#endif

-- method IconView::set_markup_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "A column in the currently used model, or -1 to display no text"
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

foreign import ccall "gtk_icon_view_set_markup_column" gtk_icon_view_set_markup_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- column : TBasicType TInt
    IO ()

-- | Sets the column with markup information for /@iconView@/ to be
-- /@column@/. The markup column must be of type @/G_TYPE_STRING/@.
-- If the markup column is set to something, it overrides
-- the text column set by 'GI.Gtk.Objects.IconView.iconViewSetTextColumn'.
-- 
-- /Since: 2.6/
iconViewSetMarkupColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Int32
    -- ^ /@column@/: A column in the currently used model, or -1 to display no text
    -> m ()
iconViewSetMarkupColumn iconView column = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_markup_column iconView' column
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetMarkupColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetMarkupColumnMethodInfo a signature where
    overloadedMethod = iconViewSetMarkupColumn

#endif

-- method IconView::set_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The model." , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_model" gtk_icon_view_set_model :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO ()

-- | Sets the model for a t'GI.Gtk.Objects.IconView.IconView'.
-- If the /@iconView@/ already has a model set, it will remove
-- it before setting the new model.  If /@model@/ is 'P.Nothing', then
-- it will unset the old model.
-- 
-- /Since: 2.6/
iconViewSetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a, Gtk.TreeModel.IsTreeModel b) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Maybe (b)
    -- ^ /@model@/: The model.
    -> m ()
iconViewSetModel iconView model = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    maybeModel <- case model of
        Nothing -> return nullPtr
        Just jModel -> do
            jModel' <- unsafeManagedPtrCastPtr jModel
            return jModel'
    gtk_icon_view_set_model iconView' maybeModel
    touchManagedPtr iconView
    whenJust model touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetModelMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsIconView a, Gtk.TreeModel.IsTreeModel b) => O.MethodInfo IconViewSetModelMethodInfo a signature where
    overloadedMethod = iconViewSetModel

#endif

-- method IconView::set_pixbuf_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A column in the currently used model, or -1 to disable"
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

foreign import ccall "gtk_icon_view_set_pixbuf_column" gtk_icon_view_set_pixbuf_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- column : TBasicType TInt
    IO ()

-- | Sets the column with pixbufs for /@iconView@/ to be /@column@/. The pixbuf
-- column must be of type @/GDK_TYPE_PIXBUF/@
-- 
-- /Since: 2.6/
iconViewSetPixbufColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Int32
    -- ^ /@column@/: A column in the currently used model, or -1 to disable
    -> m ()
iconViewSetPixbufColumn iconView column = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_pixbuf_column iconView' column
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetPixbufColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetPixbufColumnMethodInfo a signature where
    overloadedMethod = iconViewSetPixbufColumn

#endif

-- method IconView::set_reorderable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "reorderable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE, if the list of items can be reordered."
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

foreign import ccall "gtk_icon_view_set_reorderable" gtk_icon_view_set_reorderable :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    CInt ->                                 -- reorderable : TBasicType TBoolean
    IO ()

-- | This function is a convenience function to allow you to reorder models that
-- support the t'GI.Gtk.Structs.TreeDragSourceIface.TreeDragSourceIface' and the t'GI.Gtk.Structs.TreeDragDestIface.TreeDragDestIface'.  Both
-- t'GI.Gtk.Objects.TreeStore.TreeStore' and t'GI.Gtk.Objects.ListStore.ListStore' support these.  If /@reorderable@/ is 'P.True', then
-- the user can reorder the model by dragging and dropping rows.  The
-- developer can listen to these changes by connecting to the model\'s
-- row_inserted and row_deleted signals. The reordering is implemented by setting up
-- the icon view as a drag source and destination. Therefore, drag and
-- drop can not be used in a reorderable view for any other purpose.
-- 
-- This function does not give you any degree of control over the order -- any
-- reordering is allowed.  If more control is needed, you should probably
-- handle drag and drop manually.
-- 
-- /Since: 2.8/
iconViewSetReorderable ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Bool
    -- ^ /@reorderable@/: 'P.True', if the list of items can be reordered.
    -> m ()
iconViewSetReorderable iconView reorderable = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    let reorderable' = (fromIntegral . fromEnum) reorderable
    gtk_icon_view_set_reorderable iconView' reorderable'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetReorderableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetReorderableMethodInfo a signature where
    overloadedMethod = iconViewSetReorderable

#endif

-- method IconView::set_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row_spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the row spacing" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_row_spacing" gtk_icon_view_set_row_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- row_spacing : TBasicType TInt
    IO ()

-- | Sets the [rowSpacing](#signal:rowSpacing) property which specifies the space
-- which is inserted between the rows of the icon view.
-- 
-- /Since: 2.6/
iconViewSetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@rowSpacing@/: the row spacing
    -> m ()
iconViewSetRowSpacing iconView rowSpacing = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_row_spacing iconView' rowSpacing
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetRowSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetRowSpacingMethodInfo a signature where
    overloadedMethod = iconViewSetRowSpacing

#endif

-- method IconView::set_selection_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mode"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SelectionMode" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The selection mode" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_selection_mode" gtk_icon_view_set_selection_mode :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    CUInt ->                                -- mode : TInterface (Name {namespace = "Gtk", name = "SelectionMode"})
    IO ()

-- | Sets the selection mode of the /@iconView@/.
-- 
-- /Since: 2.6/
iconViewSetSelectionMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.Enums.SelectionMode
    -- ^ /@mode@/: The selection mode
    -> m ()
iconViewSetSelectionMode iconView mode = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    let mode' = (fromIntegral . fromEnum) mode
    gtk_icon_view_set_selection_mode iconView' mode'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetSelectionModeMethodInfo
instance (signature ~ (Gtk.Enums.SelectionMode -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetSelectionModeMethodInfo a signature where
    overloadedMethod = iconViewSetSelectionMode

#endif

-- method IconView::set_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the spacing" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_set_spacing" gtk_icon_view_set_spacing :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- spacing : TBasicType TInt
    IO ()

-- | Sets the [spacing](#signal:spacing) property which specifies the space
-- which is inserted between the cells (i.e. the icon and
-- the text) of an item.
-- 
-- /Since: 2.6/
iconViewSetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@spacing@/: the spacing
    -> m ()
iconViewSetSpacing iconView spacing = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_spacing iconView' spacing
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetSpacingMethodInfo a signature where
    overloadedMethod = iconViewSetSpacing

#endif

-- method IconView::set_text_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "A column in the currently used model, or -1 to display no text"
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

foreign import ccall "gtk_icon_view_set_text_column" gtk_icon_view_set_text_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- column : TBasicType TInt
    IO ()

-- | Sets the column with text for /@iconView@/ to be /@column@/. The text
-- column must be of type @/G_TYPE_STRING/@.
-- 
-- /Since: 2.6/
iconViewSetTextColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Int32
    -- ^ /@column@/: A column in the currently used model, or -1 to display no text
    -> m ()
iconViewSetTextColumn iconView column = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_text_column iconView' column
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetTextColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetTextColumnMethodInfo a signature where
    overloadedMethod = iconViewSetTextColumn

#endif

-- method IconView::set_tooltip_cell
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tooltip"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Tooltip" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTooltip" , sinceVersion = Nothing }
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
--           { argCName = "cell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellRenderer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCellRenderer or %NULL"
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

foreign import ccall "gtk_icon_view_set_tooltip_cell" gtk_icon_view_set_tooltip_cell :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.Tooltip.Tooltip ->              -- tooltip : TInterface (Name {namespace = "Gtk", name = "Tooltip"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    Ptr Gtk.CellRenderer.CellRenderer ->    -- cell : TInterface (Name {namespace = "Gtk", name = "CellRenderer"})
    IO ()

-- | Sets the tip area of /@tooltip@/ to the area which /@cell@/ occupies in
-- the item pointed to by /@path@/. See also 'GI.Gtk.Objects.Tooltip.tooltipSetTipArea'.
-- 
-- See also 'GI.Gtk.Objects.IconView.iconViewSetTooltipColumn' for a simpler alternative.
-- 
-- /Since: 2.12/
iconViewSetTooltipCell ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a, Gtk.Tooltip.IsTooltip b, Gtk.CellRenderer.IsCellRenderer c) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> b
    -- ^ /@tooltip@/: a t'GI.Gtk.Objects.Tooltip.Tooltip'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath'
    -> Maybe (c)
    -- ^ /@cell@/: a t'GI.Gtk.Objects.CellRenderer.CellRenderer' or 'P.Nothing'
    -> m ()
iconViewSetTooltipCell iconView tooltip path cell = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    tooltip' <- unsafeManagedPtrCastPtr tooltip
    path' <- unsafeManagedPtrGetPtr path
    maybeCell <- case cell of
        Nothing -> return nullPtr
        Just jCell -> do
            jCell' <- unsafeManagedPtrCastPtr jCell
            return jCell'
    gtk_icon_view_set_tooltip_cell iconView' tooltip' path' maybeCell
    touchManagedPtr iconView
    touchManagedPtr tooltip
    touchManagedPtr path
    whenJust cell touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetTooltipCellMethodInfo
instance (signature ~ (b -> Gtk.TreePath.TreePath -> Maybe (c) -> m ()), MonadIO m, IsIconView a, Gtk.Tooltip.IsTooltip b, Gtk.CellRenderer.IsCellRenderer c) => O.MethodInfo IconViewSetTooltipCellMethodInfo a signature where
    overloadedMethod = iconViewSetTooltipCell

#endif

-- method IconView::set_tooltip_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an integer, which is a valid column number for @icon_view\8217s model"
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

foreign import ccall "gtk_icon_view_set_tooltip_column" gtk_icon_view_set_tooltip_column :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Int32 ->                                -- column : TBasicType TInt
    IO ()

-- | If you only plan to have simple (text-only) tooltips on full items, you
-- can use this function to have t'GI.Gtk.Objects.IconView.IconView' handle these automatically
-- for you. /@column@/ should be set to the column in /@iconView@/’s model
-- containing the tooltip texts, or -1 to disable this feature.
-- 
-- When enabled, t'GI.Gtk.Objects.Widget.Widget':@/has-tooltip/@ will be set to 'P.True' and
-- /@iconView@/ will connect a [queryTooltip]("GI.Gtk.Objects.Widget#signal:queryTooltip") signal handler.
-- 
-- Note that the signal handler sets the text with 'GI.Gtk.Objects.Tooltip.tooltipSetMarkup',
-- so &, \<, etc have to be escaped in the text.
-- 
-- /Since: 2.12/
iconViewSetTooltipColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> Int32
    -- ^ /@column@/: an integer, which is a valid column number for /@iconView@/’s model
    -> m ()
iconViewSetTooltipColumn iconView column = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_set_tooltip_column iconView' column
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetTooltipColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewSetTooltipColumnMethodInfo a signature where
    overloadedMethod = iconViewSetTooltipColumn

#endif

-- method IconView::set_tooltip_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tooltip"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Tooltip" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTooltip" , sinceVersion = Nothing }
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
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_icon_view_set_tooltip_item" gtk_icon_view_set_tooltip_item :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.Tooltip.Tooltip ->              -- tooltip : TInterface (Name {namespace = "Gtk", name = "Tooltip"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO ()

-- | Sets the tip area of /@tooltip@/ to be the area covered by the item at /@path@/.
-- See also 'GI.Gtk.Objects.IconView.iconViewSetTooltipColumn' for a simpler alternative.
-- See also 'GI.Gtk.Objects.Tooltip.tooltipSetTipArea'.
-- 
-- /Since: 2.12/
iconViewSetTooltipItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a, Gtk.Tooltip.IsTooltip b) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> b
    -- ^ /@tooltip@/: a t'GI.Gtk.Objects.Tooltip.Tooltip'
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: a t'GI.Gtk.Structs.TreePath.TreePath'
    -> m ()
iconViewSetTooltipItem iconView tooltip path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    tooltip' <- unsafeManagedPtrCastPtr tooltip
    path' <- unsafeManagedPtrGetPtr path
    gtk_icon_view_set_tooltip_item iconView' tooltip' path'
    touchManagedPtr iconView
    touchManagedPtr tooltip
    touchManagedPtr path
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewSetTooltipItemMethodInfo
instance (signature ~ (b -> Gtk.TreePath.TreePath -> m ()), MonadIO m, IsIconView a, Gtk.Tooltip.IsTooltip b) => O.MethodInfo IconViewSetTooltipItemMethodInfo a signature where
    overloadedMethod = iconViewSetTooltipItem

#endif

-- method IconView::unselect_all
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_unselect_all" gtk_icon_view_unselect_all :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO ()

-- | Unselects all the icons.
-- 
-- /Since: 2.6/
iconViewUnselectAll ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> m ()
iconViewUnselectAll iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_unselect_all iconView'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewUnselectAllMethodInfo
instance (signature ~ (m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewUnselectAllMethodInfo a signature where
    overloadedMethod = iconViewUnselectAll

#endif

-- method IconView::unselect_path
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkIconView." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The #GtkTreePath to be unselected."
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

foreign import ccall "gtk_icon_view_unselect_path" gtk_icon_view_unselect_path :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    Ptr Gtk.TreePath.TreePath ->            -- path : TInterface (Name {namespace = "Gtk", name = "TreePath"})
    IO ()

-- | Unselects the row at /@path@/.
-- 
-- /Since: 2.6/
iconViewUnselectPath ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: A t'GI.Gtk.Objects.IconView.IconView'.
    -> Gtk.TreePath.TreePath
    -- ^ /@path@/: The t'GI.Gtk.Structs.TreePath.TreePath' to be unselected.
    -> m ()
iconViewUnselectPath iconView path = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    path' <- unsafeManagedPtrGetPtr path
    gtk_icon_view_unselect_path iconView' path'
    touchManagedPtr iconView
    touchManagedPtr path
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewUnselectPathMethodInfo
instance (signature ~ (Gtk.TreePath.TreePath -> m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewUnselectPathMethodInfo a signature where
    overloadedMethod = iconViewUnselectPath

#endif

-- method IconView::unset_model_drag_dest
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_unset_model_drag_dest" gtk_icon_view_unset_model_drag_dest :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO ()

-- | Undoes the effect of 'GI.Gtk.Objects.IconView.iconViewEnableModelDragDest'. Calling this
-- method sets t'GI.Gtk.Objects.IconView.IconView':@/reorderable/@ to 'P.False'.
-- 
-- /Since: 2.8/
iconViewUnsetModelDragDest ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m ()
iconViewUnsetModelDragDest iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_unset_model_drag_dest iconView'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewUnsetModelDragDestMethodInfo
instance (signature ~ (m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewUnsetModelDragDestMethodInfo a signature where
    overloadedMethod = iconViewUnsetModelDragDest

#endif

-- method IconView::unset_model_drag_source
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "icon_view"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconView" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkIconView" , sinceVersion = Nothing }
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

foreign import ccall "gtk_icon_view_unset_model_drag_source" gtk_icon_view_unset_model_drag_source :: 
    Ptr IconView ->                         -- icon_view : TInterface (Name {namespace = "Gtk", name = "IconView"})
    IO ()

-- | Undoes the effect of 'GI.Gtk.Objects.IconView.iconViewEnableModelDragSource'. Calling this
-- method sets t'GI.Gtk.Objects.IconView.IconView':@/reorderable/@ to 'P.False'.
-- 
-- /Since: 2.8/
iconViewUnsetModelDragSource ::
    (B.CallStack.HasCallStack, MonadIO m, IsIconView a) =>
    a
    -- ^ /@iconView@/: a t'GI.Gtk.Objects.IconView.IconView'
    -> m ()
iconViewUnsetModelDragSource iconView = liftIO $ do
    iconView' <- unsafeManagedPtrCastPtr iconView
    gtk_icon_view_unset_model_drag_source iconView'
    touchManagedPtr iconView
    return ()

#if defined(ENABLE_OVERLOADING)
data IconViewUnsetModelDragSourceMethodInfo
instance (signature ~ (m ()), MonadIO m, IsIconView a) => O.MethodInfo IconViewUnsetModelDragSourceMethodInfo a signature where
    overloadedMethod = iconViewUnsetModelDragSource

#endif

