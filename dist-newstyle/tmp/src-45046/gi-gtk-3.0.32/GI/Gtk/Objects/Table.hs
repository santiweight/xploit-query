{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Table.Table' functions allow the programmer to arrange widgets in rows and
-- columns, making it easy to align many widgets next to each other,
-- horizontally and vertically.
-- 
-- Tables are created with a call to 'GI.Gtk.Objects.Table.tableNew', the size of which can
-- later be changed with 'GI.Gtk.Objects.Table.tableResize'.
-- 
-- Widgets can be added to a table using 'GI.Gtk.Objects.Table.tableAttach' or the more
-- convenient (but slightly less flexible) 'GI.Gtk.Objects.Table.tableAttachDefaults'.
-- 
-- To alter the space next to a specific row, use 'GI.Gtk.Objects.Table.tableSetRowSpacing',
-- and for a column, 'GI.Gtk.Objects.Table.tableSetColSpacing'.
-- The gaps between all rows or columns can be changed by
-- calling 'GI.Gtk.Objects.Table.tableSetRowSpacings' or 'GI.Gtk.Objects.Table.tableSetColSpacings'
-- respectively. Note that spacing is added between the
-- children, while padding added by 'GI.Gtk.Objects.Table.tableAttach' is added on
-- either side of the widget it belongs to.
-- 
-- 'GI.Gtk.Objects.Table.tableSetHomogeneous', can be used to set whether all cells in the
-- table will resize themselves to the size of the largest widget in the table.
-- 
-- > t'GI.Gtk.Objects.Table.Table' has been deprecated. Use t'GI.Gtk.Objects.Grid.Grid' instead. It provides the same
-- > capabilities as GtkTable for arranging widgets in a rectangular grid, but
-- > does support height-for-width geometry management.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Table
    ( 

-- * Exported types
    Table(..)                               ,
    IsTable                                 ,
    toTable                                 ,
    noTable                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTableMethod                      ,
#endif


-- ** attach #method:attach#

#if defined(ENABLE_OVERLOADING)
    TableAttachMethodInfo                   ,
#endif
    tableAttach                             ,


-- ** attachDefaults #method:attachDefaults#

#if defined(ENABLE_OVERLOADING)
    TableAttachDefaultsMethodInfo           ,
#endif
    tableAttachDefaults                     ,


-- ** getColSpacing #method:getColSpacing#

#if defined(ENABLE_OVERLOADING)
    TableGetColSpacingMethodInfo            ,
#endif
    tableGetColSpacing                      ,


-- ** getDefaultColSpacing #method:getDefaultColSpacing#

#if defined(ENABLE_OVERLOADING)
    TableGetDefaultColSpacingMethodInfo     ,
#endif
    tableGetDefaultColSpacing               ,


-- ** getDefaultRowSpacing #method:getDefaultRowSpacing#

#if defined(ENABLE_OVERLOADING)
    TableGetDefaultRowSpacingMethodInfo     ,
#endif
    tableGetDefaultRowSpacing               ,


-- ** getHomogeneous #method:getHomogeneous#

#if defined(ENABLE_OVERLOADING)
    TableGetHomogeneousMethodInfo           ,
#endif
    tableGetHomogeneous                     ,


-- ** getRowSpacing #method:getRowSpacing#

#if defined(ENABLE_OVERLOADING)
    TableGetRowSpacingMethodInfo            ,
#endif
    tableGetRowSpacing                      ,


-- ** getSize #method:getSize#

#if defined(ENABLE_OVERLOADING)
    TableGetSizeMethodInfo                  ,
#endif
    tableGetSize                            ,


-- ** new #method:new#

    tableNew                                ,


-- ** resize #method:resize#

#if defined(ENABLE_OVERLOADING)
    TableResizeMethodInfo                   ,
#endif
    tableResize                             ,


-- ** setColSpacing #method:setColSpacing#

#if defined(ENABLE_OVERLOADING)
    TableSetColSpacingMethodInfo            ,
#endif
    tableSetColSpacing                      ,


-- ** setColSpacings #method:setColSpacings#

#if defined(ENABLE_OVERLOADING)
    TableSetColSpacingsMethodInfo           ,
#endif
    tableSetColSpacings                     ,


-- ** setHomogeneous #method:setHomogeneous#

#if defined(ENABLE_OVERLOADING)
    TableSetHomogeneousMethodInfo           ,
#endif
    tableSetHomogeneous                     ,


-- ** setRowSpacing #method:setRowSpacing#

#if defined(ENABLE_OVERLOADING)
    TableSetRowSpacingMethodInfo            ,
#endif
    tableSetRowSpacing                      ,


-- ** setRowSpacings #method:setRowSpacings#

#if defined(ENABLE_OVERLOADING)
    TableSetRowSpacingsMethodInfo           ,
#endif
    tableSetRowSpacings                     ,




 -- * Properties
-- ** columnSpacing #attr:columnSpacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableColumnSpacingPropertyInfo          ,
#endif
    constructTableColumnSpacing             ,
    getTableColumnSpacing                   ,
    setTableColumnSpacing                   ,
#if defined(ENABLE_OVERLOADING)
    tableColumnSpacing                      ,
#endif


-- ** homogeneous #attr:homogeneous#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableHomogeneousPropertyInfo            ,
#endif
    constructTableHomogeneous               ,
    getTableHomogeneous                     ,
    setTableHomogeneous                     ,
#if defined(ENABLE_OVERLOADING)
    tableHomogeneous                        ,
#endif


-- ** nColumns #attr:nColumns#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableNColumnsPropertyInfo               ,
#endif
    constructTableNColumns                  ,
    getTableNColumns                        ,
    setTableNColumns                        ,
#if defined(ENABLE_OVERLOADING)
    tableNColumns                           ,
#endif


-- ** nRows #attr:nRows#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableNRowsPropertyInfo                  ,
#endif
    constructTableNRows                     ,
    getTableNRows                           ,
    setTableNRows                           ,
#if defined(ENABLE_OVERLOADING)
    tableNRows                              ,
#endif


-- ** rowSpacing #attr:rowSpacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableRowSpacingPropertyInfo             ,
#endif
    constructTableRowSpacing                ,
    getTableRowSpacing                      ,
    setTableRowSpacing                      ,
#if defined(ENABLE_OVERLOADING)
    tableRowSpacing                         ,
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

import qualified GI.Atk.Interfaces.ImplementorIface as Atk.ImplementorIface
import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Flags as Gtk.Flags
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Table = Table (ManagedPtr Table)
    deriving (Eq)
foreign import ccall "gtk_table_get_type"
    c_gtk_table_get_type :: IO GType

instance GObject Table where
    gobjectType = c_gtk_table_get_type
    

-- | Convert 'Table' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Table where
    toGValue o = do
        gtype <- c_gtk_table_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Table)
        B.ManagedPtr.newObject Table ptr
        
    

-- | Type class for types which can be safely cast to `Table`, for instance with `toTable`.
class (GObject o, O.IsDescendantOf Table o) => IsTable o
instance (GObject o, O.IsDescendantOf Table o) => IsTable o

instance O.HasParentTypes Table
type instance O.ParentTypes Table = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Table`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTable :: (MonadIO m, IsTable o) => o -> m Table
toTable = liftIO . unsafeCastTo Table

-- | A convenience alias for `Nothing` :: `Maybe` `Table`.
noTable :: Maybe Table
noTable = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTableMethod (t :: Symbol) (o :: *) :: * where
    ResolveTableMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveTableMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveTableMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveTableMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveTableMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveTableMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveTableMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveTableMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveTableMethod "attach" o = TableAttachMethodInfo
    ResolveTableMethod "attachDefaults" o = TableAttachDefaultsMethodInfo
    ResolveTableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTableMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveTableMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveTableMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveTableMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveTableMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveTableMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveTableMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveTableMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveTableMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveTableMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveTableMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveTableMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveTableMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveTableMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveTableMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveTableMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveTableMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveTableMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveTableMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveTableMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveTableMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveTableMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveTableMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveTableMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveTableMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveTableMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveTableMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveTableMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveTableMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveTableMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveTableMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveTableMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveTableMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveTableMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveTableMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveTableMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveTableMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveTableMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveTableMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveTableMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveTableMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveTableMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveTableMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveTableMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveTableMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveTableMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveTableMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveTableMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveTableMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveTableMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveTableMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveTableMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveTableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTableMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveTableMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveTableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTableMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveTableMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveTableMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveTableMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveTableMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveTableMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveTableMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveTableMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveTableMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveTableMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveTableMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveTableMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveTableMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveTableMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveTableMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveTableMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveTableMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveTableMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveTableMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveTableMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveTableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTableMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveTableMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveTableMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveTableMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveTableMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveTableMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveTableMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveTableMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveTableMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveTableMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveTableMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveTableMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveTableMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveTableMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveTableMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveTableMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveTableMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveTableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTableMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveTableMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveTableMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveTableMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveTableMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveTableMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveTableMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveTableMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveTableMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveTableMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveTableMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveTableMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveTableMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveTableMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveTableMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveTableMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveTableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTableMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveTableMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveTableMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveTableMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveTableMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveTableMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveTableMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveTableMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveTableMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveTableMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveTableMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveTableMethod "resize" o = TableResizeMethodInfo
    ResolveTableMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveTableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTableMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveTableMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveTableMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveTableMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveTableMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveTableMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveTableMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveTableMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveTableMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveTableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTableMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveTableMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveTableMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveTableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTableMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveTableMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveTableMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveTableMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveTableMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveTableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTableMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveTableMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveTableMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveTableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTableMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveTableMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveTableMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveTableMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveTableMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveTableMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveTableMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveTableMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveTableMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveTableMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveTableMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveTableMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveTableMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveTableMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveTableMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveTableMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveTableMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveTableMethod "getColSpacing" o = TableGetColSpacingMethodInfo
    ResolveTableMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveTableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTableMethod "getDefaultColSpacing" o = TableGetDefaultColSpacingMethodInfo
    ResolveTableMethod "getDefaultRowSpacing" o = TableGetDefaultRowSpacingMethodInfo
    ResolveTableMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveTableMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveTableMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveTableMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveTableMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveTableMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveTableMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveTableMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveTableMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveTableMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveTableMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveTableMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveTableMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveTableMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveTableMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveTableMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveTableMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveTableMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveTableMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveTableMethod "getHomogeneous" o = TableGetHomogeneousMethodInfo
    ResolveTableMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveTableMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveTableMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveTableMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveTableMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveTableMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveTableMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveTableMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveTableMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveTableMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveTableMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveTableMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveTableMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveTableMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveTableMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveTableMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveTableMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveTableMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveTableMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveTableMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveTableMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveTableMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveTableMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveTableMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveTableMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveTableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTableMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveTableMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveTableMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveTableMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveTableMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveTableMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveTableMethod "getRowSpacing" o = TableGetRowSpacingMethodInfo
    ResolveTableMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveTableMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveTableMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveTableMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveTableMethod "getSize" o = TableGetSizeMethodInfo
    ResolveTableMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveTableMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveTableMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveTableMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveTableMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveTableMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveTableMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveTableMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveTableMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveTableMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveTableMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveTableMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveTableMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveTableMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveTableMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveTableMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveTableMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveTableMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveTableMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveTableMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveTableMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveTableMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveTableMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveTableMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveTableMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveTableMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveTableMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveTableMethod "setColSpacing" o = TableSetColSpacingMethodInfo
    ResolveTableMethod "setColSpacings" o = TableSetColSpacingsMethodInfo
    ResolveTableMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveTableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTableMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveTableMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveTableMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveTableMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveTableMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveTableMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveTableMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveTableMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveTableMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveTableMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveTableMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveTableMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveTableMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveTableMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveTableMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveTableMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveTableMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveTableMethod "setHomogeneous" o = TableSetHomogeneousMethodInfo
    ResolveTableMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveTableMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveTableMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveTableMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveTableMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveTableMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveTableMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveTableMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveTableMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveTableMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveTableMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveTableMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveTableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTableMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveTableMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveTableMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveTableMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveTableMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveTableMethod "setRowSpacing" o = TableSetRowSpacingMethodInfo
    ResolveTableMethod "setRowSpacings" o = TableSetRowSpacingsMethodInfo
    ResolveTableMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveTableMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveTableMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveTableMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveTableMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveTableMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveTableMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveTableMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveTableMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveTableMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveTableMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveTableMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveTableMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveTableMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveTableMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveTableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTableMethod t Table, O.MethodInfo info Table p) => OL.IsLabel t (Table -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "column-spacing"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' table #columnSpacing
-- @
getTableColumnSpacing :: (MonadIO m, IsTable o) => o -> m Word32
getTableColumnSpacing obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "column-spacing"

-- | Set the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' table [ #columnSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setTableColumnSpacing :: (MonadIO m, IsTable o) => o -> Word32 -> m ()
setTableColumnSpacing obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "column-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@column-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableColumnSpacing :: (IsTable o) => Word32 -> IO (GValueConstruct o)
constructTableColumnSpacing val = B.Properties.constructObjectPropertyUInt32 "column-spacing" val

#if defined(ENABLE_OVERLOADING)
data TableColumnSpacingPropertyInfo
instance AttrInfo TableColumnSpacingPropertyInfo where
    type AttrAllowedOps TableColumnSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TableColumnSpacingPropertyInfo = IsTable
    type AttrSetTypeConstraint TableColumnSpacingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint TableColumnSpacingPropertyInfo = (~) Word32
    type AttrTransferType TableColumnSpacingPropertyInfo = Word32
    type AttrGetType TableColumnSpacingPropertyInfo = Word32
    type AttrLabel TableColumnSpacingPropertyInfo = "column-spacing"
    type AttrOrigin TableColumnSpacingPropertyInfo = Table
    attrGet = getTableColumnSpacing
    attrSet = setTableColumnSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableColumnSpacing
    attrClear = undefined
#endif

-- VVV Prop "homogeneous"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' table #homogeneous
-- @
getTableHomogeneous :: (MonadIO m, IsTable o) => o -> m Bool
getTableHomogeneous obj = liftIO $ B.Properties.getObjectPropertyBool obj "homogeneous"

-- | Set the value of the “@homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' table [ #homogeneous 'Data.GI.Base.Attributes.:=' value ]
-- @
setTableHomogeneous :: (MonadIO m, IsTable o) => o -> Bool -> m ()
setTableHomogeneous obj val = liftIO $ B.Properties.setObjectPropertyBool obj "homogeneous" val

-- | Construct a `GValueConstruct` with valid value for the “@homogeneous@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableHomogeneous :: (IsTable o) => Bool -> IO (GValueConstruct o)
constructTableHomogeneous val = B.Properties.constructObjectPropertyBool "homogeneous" val

#if defined(ENABLE_OVERLOADING)
data TableHomogeneousPropertyInfo
instance AttrInfo TableHomogeneousPropertyInfo where
    type AttrAllowedOps TableHomogeneousPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TableHomogeneousPropertyInfo = IsTable
    type AttrSetTypeConstraint TableHomogeneousPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint TableHomogeneousPropertyInfo = (~) Bool
    type AttrTransferType TableHomogeneousPropertyInfo = Bool
    type AttrGetType TableHomogeneousPropertyInfo = Bool
    type AttrLabel TableHomogeneousPropertyInfo = "homogeneous"
    type AttrOrigin TableHomogeneousPropertyInfo = Table
    attrGet = getTableHomogeneous
    attrSet = setTableHomogeneous
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableHomogeneous
    attrClear = undefined
#endif

-- VVV Prop "n-columns"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@n-columns@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' table #nColumns
-- @
getTableNColumns :: (MonadIO m, IsTable o) => o -> m Word32
getTableNColumns obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "n-columns"

-- | Set the value of the “@n-columns@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' table [ #nColumns 'Data.GI.Base.Attributes.:=' value ]
-- @
setTableNColumns :: (MonadIO m, IsTable o) => o -> Word32 -> m ()
setTableNColumns obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "n-columns" val

-- | Construct a `GValueConstruct` with valid value for the “@n-columns@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableNColumns :: (IsTable o) => Word32 -> IO (GValueConstruct o)
constructTableNColumns val = B.Properties.constructObjectPropertyUInt32 "n-columns" val

#if defined(ENABLE_OVERLOADING)
data TableNColumnsPropertyInfo
instance AttrInfo TableNColumnsPropertyInfo where
    type AttrAllowedOps TableNColumnsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TableNColumnsPropertyInfo = IsTable
    type AttrSetTypeConstraint TableNColumnsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint TableNColumnsPropertyInfo = (~) Word32
    type AttrTransferType TableNColumnsPropertyInfo = Word32
    type AttrGetType TableNColumnsPropertyInfo = Word32
    type AttrLabel TableNColumnsPropertyInfo = "n-columns"
    type AttrOrigin TableNColumnsPropertyInfo = Table
    attrGet = getTableNColumns
    attrSet = setTableNColumns
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableNColumns
    attrClear = undefined
#endif

-- VVV Prop "n-rows"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@n-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' table #nRows
-- @
getTableNRows :: (MonadIO m, IsTable o) => o -> m Word32
getTableNRows obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "n-rows"

-- | Set the value of the “@n-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' table [ #nRows 'Data.GI.Base.Attributes.:=' value ]
-- @
setTableNRows :: (MonadIO m, IsTable o) => o -> Word32 -> m ()
setTableNRows obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "n-rows" val

-- | Construct a `GValueConstruct` with valid value for the “@n-rows@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableNRows :: (IsTable o) => Word32 -> IO (GValueConstruct o)
constructTableNRows val = B.Properties.constructObjectPropertyUInt32 "n-rows" val

#if defined(ENABLE_OVERLOADING)
data TableNRowsPropertyInfo
instance AttrInfo TableNRowsPropertyInfo where
    type AttrAllowedOps TableNRowsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TableNRowsPropertyInfo = IsTable
    type AttrSetTypeConstraint TableNRowsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint TableNRowsPropertyInfo = (~) Word32
    type AttrTransferType TableNRowsPropertyInfo = Word32
    type AttrGetType TableNRowsPropertyInfo = Word32
    type AttrLabel TableNRowsPropertyInfo = "n-rows"
    type AttrOrigin TableNRowsPropertyInfo = Table
    attrGet = getTableNRows
    attrSet = setTableNRows
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableNRows
    attrClear = undefined
#endif

-- VVV Prop "row-spacing"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' table #rowSpacing
-- @
getTableRowSpacing :: (MonadIO m, IsTable o) => o -> m Word32
getTableRowSpacing obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "row-spacing"

-- | Set the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' table [ #rowSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setTableRowSpacing :: (MonadIO m, IsTable o) => o -> Word32 -> m ()
setTableRowSpacing obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "row-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@row-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableRowSpacing :: (IsTable o) => Word32 -> IO (GValueConstruct o)
constructTableRowSpacing val = B.Properties.constructObjectPropertyUInt32 "row-spacing" val

#if defined(ENABLE_OVERLOADING)
data TableRowSpacingPropertyInfo
instance AttrInfo TableRowSpacingPropertyInfo where
    type AttrAllowedOps TableRowSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint TableRowSpacingPropertyInfo = IsTable
    type AttrSetTypeConstraint TableRowSpacingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint TableRowSpacingPropertyInfo = (~) Word32
    type AttrTransferType TableRowSpacingPropertyInfo = Word32
    type AttrGetType TableRowSpacingPropertyInfo = Word32
    type AttrLabel TableRowSpacingPropertyInfo = "row-spacing"
    type AttrOrigin TableRowSpacingPropertyInfo = Table
    attrGet = getTableRowSpacing
    attrSet = setTableRowSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableRowSpacing
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Table
type instance O.AttributeList Table = TableAttributeList
type TableAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("columnSpacing", TableColumnSpacingPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", TableHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("nColumns", TableNColumnsPropertyInfo), '("nRows", TableNRowsPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rowSpacing", TableRowSpacingPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
tableColumnSpacing :: AttrLabelProxy "columnSpacing"
tableColumnSpacing = AttrLabelProxy

tableHomogeneous :: AttrLabelProxy "homogeneous"
tableHomogeneous = AttrLabelProxy

tableNColumns :: AttrLabelProxy "nColumns"
tableNColumns = AttrLabelProxy

tableNRows :: AttrLabelProxy "nRows"
tableNRows = AttrLabelProxy

tableRowSpacing :: AttrLabelProxy "rowSpacing"
tableRowSpacing = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Table = TableSignalList
type TableSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Table::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "rows"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of rows the new table should have."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The number of columns the new table should have."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "homogeneous"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "If set to %TRUE, all table cells are resized to the size of\n  the cell containing the largest widget."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Table" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_table_new" gtk_table_new :: 
    Word32 ->                               -- rows : TBasicType TUInt
    Word32 ->                               -- columns : TBasicType TUInt
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO (Ptr Table)

{-# DEPRECATED tableNew ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridNew'."] #-}
-- | Used to create a new table widget. An initial size must be given by
-- specifying how many rows and columns the table should have, although
-- this can be changed later with 'GI.Gtk.Objects.Table.tableResize'.  /@rows@/ and /@columns@/
-- must both be in the range 1 .. 65535. For historical reasons, 0 is accepted
-- as well and is silently interpreted as 1.
tableNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Word32
    -- ^ /@rows@/: The number of rows the new table should have.
    -> Word32
    -- ^ /@columns@/: The number of columns the new table should have.
    -> Bool
    -- ^ /@homogeneous@/: If set to 'P.True', all table cells are resized to the size of
    --   the cell containing the largest widget.
    -> m Table
    -- ^ __Returns:__ A pointer to the newly created table widget.
tableNew rows columns homogeneous = liftIO $ do
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    result <- gtk_table_new rows columns homogeneous'
    checkUnexpectedReturnNULL "tableNew" result
    result' <- (newObject Table) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Table::attach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkTable to add a new widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The widget to add." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "left_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the column number to attach the left side of a child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the column number to attach the right side of a child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "top_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the row number to attach the top of a child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "bottom_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the row number to attach the bottom of a child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xoptions"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AttachOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Used to specify the properties of the child widget when the table is resized."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yoptions"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AttachOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The same as xoptions, except this field determines behaviour of vertical resizing."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xpadding"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "An integer value specifying the padding on the left and right of the widget being added to the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ypadding"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The amount of padding above and below the child widget."
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

foreign import ccall "gtk_table_attach" gtk_table_attach :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Word32 ->                               -- left_attach : TBasicType TUInt
    Word32 ->                               -- right_attach : TBasicType TUInt
    Word32 ->                               -- top_attach : TBasicType TUInt
    Word32 ->                               -- bottom_attach : TBasicType TUInt
    CUInt ->                                -- xoptions : TInterface (Name {namespace = "Gtk", name = "AttachOptions"})
    CUInt ->                                -- yoptions : TInterface (Name {namespace = "Gtk", name = "AttachOptions"})
    Word32 ->                               -- xpadding : TBasicType TUInt
    Word32 ->                               -- ypadding : TBasicType TUInt
    IO ()

{-# DEPRECATED tableAttach ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridAttach' with t'GI.Gtk.Objects.Grid.Grid'. Note that the attach","    arguments differ between those two functions."] #-}
-- | Adds a widget to a table. The number of “cells” that a widget will occupy is
-- specified by /@leftAttach@/, /@rightAttach@/, /@topAttach@/ and /@bottomAttach@/.
-- These each represent the leftmost, rightmost, uppermost and lowest column
-- and row numbers of the table. (Columns and rows are indexed from zero).
-- 
-- To make a button occupy the lower right cell of a 2x2 table, use
-- >
-- >gtk_table_attach (table, button,
-- >                  1, 2, // left, right attach
-- >                  1, 2, // top, bottom attach
-- >                  xoptions, yoptions,
-- >                  xpadding, ypadding);
-- 
-- If you want to make the button span the entire bottom row, use /@leftAttach@/ == 0 and /@rightAttach@/ = 2 instead.
tableAttach ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@table@/: The t'GI.Gtk.Objects.Table.Table' to add a new widget to.
    -> b
    -- ^ /@child@/: The widget to add.
    -> Word32
    -- ^ /@leftAttach@/: the column number to attach the left side of a child widget to.
    -> Word32
    -- ^ /@rightAttach@/: the column number to attach the right side of a child widget to.
    -> Word32
    -- ^ /@topAttach@/: the row number to attach the top of a child widget to.
    -> Word32
    -- ^ /@bottomAttach@/: the row number to attach the bottom of a child widget to.
    -> [Gtk.Flags.AttachOptions]
    -- ^ /@xoptions@/: Used to specify the properties of the child widget when the table is resized.
    -> [Gtk.Flags.AttachOptions]
    -- ^ /@yoptions@/: The same as xoptions, except this field determines behaviour of vertical resizing.
    -> Word32
    -- ^ /@xpadding@/: An integer value specifying the padding on the left and right of the widget being added to the table.
    -> Word32
    -- ^ /@ypadding@/: The amount of padding above and below the child widget.
    -> m ()
tableAttach table child leftAttach rightAttach topAttach bottomAttach xoptions yoptions xpadding ypadding = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    child' <- unsafeManagedPtrCastPtr child
    let xoptions' = gflagsToWord xoptions
    let yoptions' = gflagsToWord yoptions
    gtk_table_attach table' child' leftAttach rightAttach topAttach bottomAttach xoptions' yoptions' xpadding ypadding
    touchManagedPtr table
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data TableAttachMethodInfo
instance (signature ~ (b -> Word32 -> Word32 -> Word32 -> Word32 -> [Gtk.Flags.AttachOptions] -> [Gtk.Flags.AttachOptions] -> Word32 -> Word32 -> m ()), MonadIO m, IsTable a, Gtk.Widget.IsWidget b) => O.MethodInfo TableAttachMethodInfo a signature where
    overloadedMethod = tableAttach

#endif

-- method Table::attach_defaults
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The table to add a new child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The child widget to add."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "left_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The column number to attach the left side of the child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The column number to attach the right side of the child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "top_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The row number to attach the top of the child widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "bottom_attach"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The row number to attach the bottom of the child widget to."
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

foreign import ccall "gtk_table_attach_defaults" gtk_table_attach_defaults :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Word32 ->                               -- left_attach : TBasicType TUInt
    Word32 ->                               -- right_attach : TBasicType TUInt
    Word32 ->                               -- top_attach : TBasicType TUInt
    Word32 ->                               -- bottom_attach : TBasicType TUInt
    IO ()

{-# DEPRECATED tableAttachDefaults ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridAttach' with t'GI.Gtk.Objects.Grid.Grid'. Note that the attach","    arguments differ between those two functions."] #-}
-- | As there are many options associated with 'GI.Gtk.Objects.Table.tableAttach', this convenience
-- function provides the programmer with a means to add children to a table with
-- identical padding and expansion options. The values used for the t'GI.Gtk.Flags.AttachOptions'
-- are @GTK_EXPAND | GTK_FILL@, and the padding is set to 0.
tableAttachDefaults ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@table@/: The table to add a new child widget to.
    -> b
    -- ^ /@widget@/: The child widget to add.
    -> Word32
    -- ^ /@leftAttach@/: The column number to attach the left side of the child widget to.
    -> Word32
    -- ^ /@rightAttach@/: The column number to attach the right side of the child widget to.
    -> Word32
    -- ^ /@topAttach@/: The row number to attach the top of the child widget to.
    -> Word32
    -- ^ /@bottomAttach@/: The row number to attach the bottom of the child widget to.
    -> m ()
tableAttachDefaults table widget leftAttach rightAttach topAttach bottomAttach = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_table_attach_defaults table' widget' leftAttach rightAttach topAttach bottomAttach
    touchManagedPtr table
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data TableAttachDefaultsMethodInfo
instance (signature ~ (b -> Word32 -> Word32 -> Word32 -> Word32 -> m ()), MonadIO m, IsTable a, Gtk.Widget.IsWidget b) => O.MethodInfo TableAttachDefaultsMethodInfo a signature where
    overloadedMethod = tableAttachDefaults

#endif

-- method Table::get_col_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a column in the table, 0 indicates the first column"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_table_get_col_spacing" gtk_table_get_col_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- column : TBasicType TUInt
    IO Word32

{-# DEPRECATED tableGetColSpacing ["(Since version 3.4)","t'GI.Gtk.Objects.Grid.Grid' does not offer a replacement for this","    functionality."] #-}
-- | Gets the amount of space between column /@col@/, and
-- column /@col@/ + 1. See 'GI.Gtk.Objects.Table.tableSetColSpacing'.
tableGetColSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> Word32
    -- ^ /@column@/: a column in the table, 0 indicates the first column
    -> m Word32
    -- ^ __Returns:__ the column spacing
tableGetColSpacing table column = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- gtk_table_get_col_spacing table' column
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetColSpacingMethodInfo
instance (signature ~ (Word32 -> m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetColSpacingMethodInfo a signature where
    overloadedMethod = tableGetColSpacing

#endif

-- method Table::get_default_col_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_table_get_default_col_spacing" gtk_table_get_default_col_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    IO Word32

{-# DEPRECATED tableGetDefaultColSpacing ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridGetColumnSpacing' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Gets the default column spacing for the table. This is
-- the spacing that will be used for newly added columns.
-- (See 'GI.Gtk.Objects.Table.tableSetColSpacings')
tableGetDefaultColSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> m Word32
    -- ^ __Returns:__ the default column spacing
tableGetDefaultColSpacing table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- gtk_table_get_default_col_spacing table'
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetDefaultColSpacingMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetDefaultColSpacingMethodInfo a signature where
    overloadedMethod = tableGetDefaultColSpacing

#endif

-- method Table::get_default_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_table_get_default_row_spacing" gtk_table_get_default_row_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    IO Word32

{-# DEPRECATED tableGetDefaultRowSpacing ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridGetRowSpacing' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Gets the default row spacing for the table. This is
-- the spacing that will be used for newly added rows.
-- (See 'GI.Gtk.Objects.Table.tableSetRowSpacings')
tableGetDefaultRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> m Word32
    -- ^ __Returns:__ the default row spacing
tableGetDefaultRowSpacing table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- gtk_table_get_default_row_spacing table'
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetDefaultRowSpacingMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetDefaultRowSpacingMethodInfo a signature where
    overloadedMethod = tableGetDefaultRowSpacing

#endif

-- method Table::get_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
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

foreign import ccall "gtk_table_get_homogeneous" gtk_table_get_homogeneous :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    IO CInt

{-# DEPRECATED tableGetHomogeneous ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridGetRowHomogeneous' and","    'GI.Gtk.Objects.Grid.gridGetColumnHomogeneous' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Returns whether the table cells are all constrained to the same
-- width and height. (See gtk_table_set_homogeneous ())
tableGetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the cells are all constrained to the same size
tableGetHomogeneous table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- gtk_table_get_homogeneous table'
    let result' = (/= 0) result
    touchManagedPtr table
    return result'

#if defined(ENABLE_OVERLOADING)
data TableGetHomogeneousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTable a) => O.MethodInfo TableGetHomogeneousMethodInfo a signature where
    overloadedMethod = tableGetHomogeneous

#endif

-- method Table::get_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a row in the table, 0 indicates the first row"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_table_get_row_spacing" gtk_table_get_row_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- row : TBasicType TUInt
    IO Word32

{-# DEPRECATED tableGetRowSpacing ["(Since version 3.4)","t'GI.Gtk.Objects.Grid.Grid' does not offer a replacement for this","    functionality."] #-}
-- | Gets the amount of space between row /@row@/, and
-- row /@row@/ + 1. See 'GI.Gtk.Objects.Table.tableSetRowSpacing'.
tableGetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> Word32
    -- ^ /@row@/: a row in the table, 0 indicates the first row
    -> m Word32
    -- ^ __Returns:__ the row spacing
tableGetRowSpacing table row = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- gtk_table_get_row_spacing table' row
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetRowSpacingMethodInfo
instance (signature ~ (Word32 -> m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetRowSpacingMethodInfo a signature where
    overloadedMethod = tableGetRowSpacing

#endif

-- method Table::get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rows"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for the number of\n  rows, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "return location for the number\n  of columns, or %NULL"
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

foreign import ccall "gtk_table_get_size" gtk_table_get_size :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Ptr Word32 ->                           -- rows : TBasicType TUInt
    Ptr Word32 ->                           -- columns : TBasicType TUInt
    IO ()

{-# DEPRECATED tableGetSize ["(Since version 3.4)","t'GI.Gtk.Objects.Grid.Grid' does not expose the number of columns and","    rows."] #-}
-- | Gets the number of rows and columns in the table.
-- 
-- /Since: 2.22/
tableGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'
    -> m ((Word32, Word32))
tableGetSize table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    rows <- allocMem :: IO (Ptr Word32)
    columns <- allocMem :: IO (Ptr Word32)
    gtk_table_get_size table' rows columns
    rows' <- peek rows
    columns' <- peek columns
    touchManagedPtr table
    freeMem rows
    freeMem columns
    return (rows', columns')

#if defined(ENABLE_OVERLOADING)
data TableGetSizeMethodInfo
instance (signature ~ (m ((Word32, Word32))), MonadIO m, IsTable a) => O.MethodInfo TableGetSizeMethodInfo a signature where
    overloadedMethod = tableGetSize

#endif

-- method Table::resize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkTable you wish to change the size of."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rows"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new number of rows."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new number of columns."
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

foreign import ccall "gtk_table_resize" gtk_table_resize :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- rows : TBasicType TUInt
    Word32 ->                               -- columns : TBasicType TUInt
    IO ()

{-# DEPRECATED tableResize ["(Since version 3.4)","t'GI.Gtk.Objects.Grid.Grid' resizes automatically."] #-}
-- | If you need to change a table’s size after
-- it has been created, this function allows you to do so.
tableResize ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: The t'GI.Gtk.Objects.Table.Table' you wish to change the size of.
    -> Word32
    -- ^ /@rows@/: The new number of rows.
    -> Word32
    -- ^ /@columns@/: The new number of columns.
    -> m ()
tableResize table rows columns = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    gtk_table_resize table' rows columns
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableResizeMethodInfo
instance (signature ~ (Word32 -> Word32 -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableResizeMethodInfo a signature where
    overloadedMethod = tableResize

#endif

-- method Table::set_col_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the column whose spacing should be changed."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "number of pixels that the spacing should take up."
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

foreign import ccall "gtk_table_set_col_spacing" gtk_table_set_col_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- column : TBasicType TUInt
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

{-# DEPRECATED tableSetColSpacing ["(Since version 3.4)","Use 'GI.Gtk.Objects.Widget.widgetSetMarginStart' and","    'GI.Gtk.Objects.Widget.widgetSetMarginEnd' on the widgets contained in the row if","    you need this functionality. t'GI.Gtk.Objects.Grid.Grid' does not support per-row spacing."] #-}
-- | Alters the amount of space between a given table column and the following
-- column.
tableSetColSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'.
    -> Word32
    -- ^ /@column@/: the column whose spacing should be changed.
    -> Word32
    -- ^ /@spacing@/: number of pixels that the spacing should take up.
    -> m ()
tableSetColSpacing table column spacing = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    gtk_table_set_col_spacing table' column spacing
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableSetColSpacingMethodInfo
instance (signature ~ (Word32 -> Word32 -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableSetColSpacingMethodInfo a signature where
    overloadedMethod = tableSetColSpacing

#endif

-- method Table::set_col_spacings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the number of pixels of space to place between every column\n  in the table."
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

foreign import ccall "gtk_table_set_col_spacings" gtk_table_set_col_spacings :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

{-# DEPRECATED tableSetColSpacings ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridSetColumnSpacing' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Sets the space between every column in /@table@/ equal to /@spacing@/.
tableSetColSpacings ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'.
    -> Word32
    -- ^ /@spacing@/: the number of pixels of space to place between every column
    --   in the table.
    -> m ()
tableSetColSpacings table spacing = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    gtk_table_set_col_spacings table' spacing
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableSetColSpacingsMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableSetColSpacingsMethodInfo a signature where
    overloadedMethod = tableSetColSpacings

#endif

-- method Table::set_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #GtkTable you wish to set the homogeneous properties of."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "homogeneous"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Set to %TRUE to ensure all table cells are the same size. Set\n  to %FALSE if this is not your desired behaviour."
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

foreign import ccall "gtk_table_set_homogeneous" gtk_table_set_homogeneous :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO ()

{-# DEPRECATED tableSetHomogeneous ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridSetRowHomogeneous' and","    'GI.Gtk.Objects.Grid.gridSetColumnHomogeneous' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Changes the homogenous property of table cells, ie. whether all cells are
-- an equal size or not.
tableSetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: The t'GI.Gtk.Objects.Table.Table' you wish to set the homogeneous properties of.
    -> Bool
    -- ^ /@homogeneous@/: Set to 'P.True' to ensure all table cells are the same size. Set
    --   to 'P.False' if this is not your desired behaviour.
    -> m ()
tableSetHomogeneous table homogeneous = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    gtk_table_set_homogeneous table' homogeneous'
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableSetHomogeneousMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableSetHomogeneousMethodInfo a signature where
    overloadedMethod = tableSetHomogeneous

#endif

-- method Table::set_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GtkTable containing the row whose properties you wish to change."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "row number whose spacing will be changed."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "number of pixels that the spacing should take up."
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

foreign import ccall "gtk_table_set_row_spacing" gtk_table_set_row_spacing :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- row : TBasicType TUInt
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

{-# DEPRECATED tableSetRowSpacing ["(Since version 3.4)","Use 'GI.Gtk.Objects.Widget.widgetSetMarginTop' and","    'GI.Gtk.Objects.Widget.widgetSetMarginBottom' on the widgets contained in the row if","    you need this functionality. t'GI.Gtk.Objects.Grid.Grid' does not support per-row spacing."] #-}
-- | Changes the space between a given table row and the subsequent row.
tableSetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table' containing the row whose properties you wish to change.
    -> Word32
    -- ^ /@row@/: row number whose spacing will be changed.
    -> Word32
    -- ^ /@spacing@/: number of pixels that the spacing should take up.
    -> m ()
tableSetRowSpacing table row spacing = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    gtk_table_set_row_spacing table' row spacing
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableSetRowSpacingMethodInfo
instance (signature ~ (Word32 -> Word32 -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableSetRowSpacingMethodInfo a signature where
    overloadedMethod = tableSetRowSpacing

#endif

-- method Table::set_row_spacings
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the number of pixels of space to place between every row in the table."
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

foreign import ccall "gtk_table_set_row_spacings" gtk_table_set_row_spacings :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Gtk", name = "Table"})
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

{-# DEPRECATED tableSetRowSpacings ["(Since version 3.4)","Use 'GI.Gtk.Objects.Grid.gridSetRowSpacing' with t'GI.Gtk.Objects.Grid.Grid'."] #-}
-- | Sets the space between every row in /@table@/ equal to /@spacing@/.
tableSetRowSpacings ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: a t'GI.Gtk.Objects.Table.Table'.
    -> Word32
    -- ^ /@spacing@/: the number of pixels of space to place between every row in the table.
    -> m ()
tableSetRowSpacings table spacing = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    gtk_table_set_row_spacings table' spacing
    touchManagedPtr table
    return ()

#if defined(ENABLE_OVERLOADING)
data TableSetRowSpacingsMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsTable a) => O.MethodInfo TableSetRowSpacingsMethodInfo a signature where
    overloadedMethod = tableSetRowSpacings

#endif

