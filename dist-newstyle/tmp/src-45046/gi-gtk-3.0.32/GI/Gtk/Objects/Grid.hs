{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkGrid is a container which arranges its child widgets in
-- rows and columns, with arbitrary positions and horizontal\/vertical spans.
-- 
-- Children are added using 'GI.Gtk.Objects.Grid.gridAttach'. They can span multiple
-- rows or columns. It is also possible to add a child next to an
-- existing child, using 'GI.Gtk.Objects.Grid.gridAttachNextTo'. The behaviour of
-- GtkGrid when several children occupy the same grid cell is undefined.
-- 
-- GtkGrid can be used like a t'GI.Gtk.Objects.Box.Box' by just using 'GI.Gtk.Objects.Container.containerAdd',
-- which will place children next to each other in the direction determined
-- by the t'GI.Gtk.Interfaces.Orientable.Orientable':@/orientation/@ property. However, if all you want is a
-- single row or column, then t'GI.Gtk.Objects.Box.Box' is the preferred widget.
-- 
-- = CSS nodes
-- 
-- GtkGrid uses a single CSS node with name grid.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Grid
    ( 

-- * Exported types
    Grid(..)                                ,
    IsGrid                                  ,
    toGrid                                  ,
    noGrid                                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGridMethod                       ,
#endif


-- ** attach #method:attach#

#if defined(ENABLE_OVERLOADING)
    GridAttachMethodInfo                    ,
#endif
    gridAttach                              ,


-- ** attachNextTo #method:attachNextTo#

#if defined(ENABLE_OVERLOADING)
    GridAttachNextToMethodInfo              ,
#endif
    gridAttachNextTo                        ,


-- ** getBaselineRow #method:getBaselineRow#

#if defined(ENABLE_OVERLOADING)
    GridGetBaselineRowMethodInfo            ,
#endif
    gridGetBaselineRow                      ,


-- ** getChildAt #method:getChildAt#

#if defined(ENABLE_OVERLOADING)
    GridGetChildAtMethodInfo                ,
#endif
    gridGetChildAt                          ,


-- ** getColumnHomogeneous #method:getColumnHomogeneous#

#if defined(ENABLE_OVERLOADING)
    GridGetColumnHomogeneousMethodInfo      ,
#endif
    gridGetColumnHomogeneous                ,


-- ** getColumnSpacing #method:getColumnSpacing#

#if defined(ENABLE_OVERLOADING)
    GridGetColumnSpacingMethodInfo          ,
#endif
    gridGetColumnSpacing                    ,


-- ** getRowBaselinePosition #method:getRowBaselinePosition#

#if defined(ENABLE_OVERLOADING)
    GridGetRowBaselinePositionMethodInfo    ,
#endif
    gridGetRowBaselinePosition              ,


-- ** getRowHomogeneous #method:getRowHomogeneous#

#if defined(ENABLE_OVERLOADING)
    GridGetRowHomogeneousMethodInfo         ,
#endif
    gridGetRowHomogeneous                   ,


-- ** getRowSpacing #method:getRowSpacing#

#if defined(ENABLE_OVERLOADING)
    GridGetRowSpacingMethodInfo             ,
#endif
    gridGetRowSpacing                       ,


-- ** insertColumn #method:insertColumn#

#if defined(ENABLE_OVERLOADING)
    GridInsertColumnMethodInfo              ,
#endif
    gridInsertColumn                        ,


-- ** insertNextTo #method:insertNextTo#

#if defined(ENABLE_OVERLOADING)
    GridInsertNextToMethodInfo              ,
#endif
    gridInsertNextTo                        ,


-- ** insertRow #method:insertRow#

#if defined(ENABLE_OVERLOADING)
    GridInsertRowMethodInfo                 ,
#endif
    gridInsertRow                           ,


-- ** new #method:new#

    gridNew                                 ,


-- ** removeColumn #method:removeColumn#

#if defined(ENABLE_OVERLOADING)
    GridRemoveColumnMethodInfo              ,
#endif
    gridRemoveColumn                        ,


-- ** removeRow #method:removeRow#

#if defined(ENABLE_OVERLOADING)
    GridRemoveRowMethodInfo                 ,
#endif
    gridRemoveRow                           ,


-- ** setBaselineRow #method:setBaselineRow#

#if defined(ENABLE_OVERLOADING)
    GridSetBaselineRowMethodInfo            ,
#endif
    gridSetBaselineRow                      ,


-- ** setColumnHomogeneous #method:setColumnHomogeneous#

#if defined(ENABLE_OVERLOADING)
    GridSetColumnHomogeneousMethodInfo      ,
#endif
    gridSetColumnHomogeneous                ,


-- ** setColumnSpacing #method:setColumnSpacing#

#if defined(ENABLE_OVERLOADING)
    GridSetColumnSpacingMethodInfo          ,
#endif
    gridSetColumnSpacing                    ,


-- ** setRowBaselinePosition #method:setRowBaselinePosition#

#if defined(ENABLE_OVERLOADING)
    GridSetRowBaselinePositionMethodInfo    ,
#endif
    gridSetRowBaselinePosition              ,


-- ** setRowHomogeneous #method:setRowHomogeneous#

#if defined(ENABLE_OVERLOADING)
    GridSetRowHomogeneousMethodInfo         ,
#endif
    gridSetRowHomogeneous                   ,


-- ** setRowSpacing #method:setRowSpacing#

#if defined(ENABLE_OVERLOADING)
    GridSetRowSpacingMethodInfo             ,
#endif
    gridSetRowSpacing                       ,




 -- * Properties
-- ** baselineRow #attr:baselineRow#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GridBaselineRowPropertyInfo             ,
#endif
    constructGridBaselineRow                ,
    getGridBaselineRow                      ,
#if defined(ENABLE_OVERLOADING)
    gridBaselineRow                         ,
#endif
    setGridBaselineRow                      ,


-- ** columnHomogeneous #attr:columnHomogeneous#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GridColumnHomogeneousPropertyInfo       ,
#endif
    constructGridColumnHomogeneous          ,
    getGridColumnHomogeneous                ,
#if defined(ENABLE_OVERLOADING)
    gridColumnHomogeneous                   ,
#endif
    setGridColumnHomogeneous                ,


-- ** columnSpacing #attr:columnSpacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GridColumnSpacingPropertyInfo           ,
#endif
    constructGridColumnSpacing              ,
    getGridColumnSpacing                    ,
#if defined(ENABLE_OVERLOADING)
    gridColumnSpacing                       ,
#endif
    setGridColumnSpacing                    ,


-- ** rowHomogeneous #attr:rowHomogeneous#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GridRowHomogeneousPropertyInfo          ,
#endif
    constructGridRowHomogeneous             ,
    getGridRowHomogeneous                   ,
#if defined(ENABLE_OVERLOADING)
    gridRowHomogeneous                      ,
#endif
    setGridRowHomogeneous                   ,


-- ** rowSpacing #attr:rowSpacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GridRowSpacingPropertyInfo              ,
#endif
    constructGridRowSpacing                 ,
    getGridRowSpacing                       ,
#if defined(ENABLE_OVERLOADING)
    gridRowSpacing                          ,
#endif
    setGridRowSpacing                       ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Grid = Grid (ManagedPtr Grid)
    deriving (Eq)
foreign import ccall "gtk_grid_get_type"
    c_gtk_grid_get_type :: IO GType

instance GObject Grid where
    gobjectType = c_gtk_grid_get_type
    

-- | Convert 'Grid' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Grid where
    toGValue o = do
        gtype <- c_gtk_grid_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Grid)
        B.ManagedPtr.newObject Grid ptr
        
    

-- | Type class for types which can be safely cast to `Grid`, for instance with `toGrid`.
class (GObject o, O.IsDescendantOf Grid o) => IsGrid o
instance (GObject o, O.IsDescendantOf Grid o) => IsGrid o

instance O.HasParentTypes Grid
type instance O.ParentTypes Grid = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Grid`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGrid :: (MonadIO m, IsGrid o) => o -> m Grid
toGrid = liftIO . unsafeCastTo Grid

-- | A convenience alias for `Nothing` :: `Maybe` `Grid`.
noGrid :: Maybe Grid
noGrid = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGridMethod (t :: Symbol) (o :: *) :: * where
    ResolveGridMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveGridMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveGridMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveGridMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveGridMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveGridMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveGridMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveGridMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveGridMethod "attach" o = GridAttachMethodInfo
    ResolveGridMethod "attachNextTo" o = GridAttachNextToMethodInfo
    ResolveGridMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGridMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGridMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveGridMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveGridMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveGridMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveGridMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveGridMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveGridMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveGridMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveGridMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveGridMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveGridMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveGridMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveGridMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveGridMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveGridMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveGridMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveGridMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveGridMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveGridMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveGridMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveGridMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveGridMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveGridMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveGridMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveGridMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveGridMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveGridMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveGridMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveGridMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveGridMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveGridMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveGridMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveGridMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveGridMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveGridMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveGridMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveGridMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveGridMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveGridMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveGridMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveGridMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveGridMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveGridMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveGridMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveGridMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveGridMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveGridMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveGridMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveGridMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveGridMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveGridMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveGridMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveGridMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGridMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveGridMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveGridMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGridMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGridMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveGridMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveGridMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveGridMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveGridMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveGridMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveGridMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveGridMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveGridMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveGridMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveGridMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveGridMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveGridMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveGridMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveGridMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveGridMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveGridMethod "insertColumn" o = GridInsertColumnMethodInfo
    ResolveGridMethod "insertNextTo" o = GridInsertNextToMethodInfo
    ResolveGridMethod "insertRow" o = GridInsertRowMethodInfo
    ResolveGridMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveGridMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveGridMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveGridMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveGridMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGridMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveGridMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveGridMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveGridMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveGridMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveGridMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveGridMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveGridMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveGridMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveGridMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveGridMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveGridMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveGridMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveGridMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveGridMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveGridMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveGridMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveGridMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGridMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGridMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveGridMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveGridMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveGridMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveGridMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveGridMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveGridMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveGridMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveGridMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveGridMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveGridMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveGridMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveGridMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveGridMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveGridMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveGridMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveGridMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGridMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGridMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveGridMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveGridMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveGridMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveGridMethod "removeColumn" o = GridRemoveColumnMethodInfo
    ResolveGridMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveGridMethod "removeRow" o = GridRemoveRowMethodInfo
    ResolveGridMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveGridMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveGridMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveGridMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveGridMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveGridMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveGridMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveGridMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGridMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveGridMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveGridMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveGridMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveGridMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveGridMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveGridMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveGridMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveGridMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveGridMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGridMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGridMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveGridMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveGridMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveGridMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGridMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveGridMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveGridMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveGridMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveGridMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveGridMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGridMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveGridMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveGridMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveGridMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGridMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveGridMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveGridMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveGridMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveGridMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveGridMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveGridMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveGridMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveGridMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveGridMethod "getBaselineRow" o = GridGetBaselineRowMethodInfo
    ResolveGridMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveGridMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveGridMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveGridMethod "getChildAt" o = GridGetChildAtMethodInfo
    ResolveGridMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveGridMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveGridMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveGridMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveGridMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveGridMethod "getColumnHomogeneous" o = GridGetColumnHomogeneousMethodInfo
    ResolveGridMethod "getColumnSpacing" o = GridGetColumnSpacingMethodInfo
    ResolveGridMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveGridMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGridMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveGridMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveGridMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveGridMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveGridMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveGridMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveGridMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveGridMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveGridMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveGridMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveGridMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveGridMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveGridMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveGridMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveGridMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveGridMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveGridMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveGridMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveGridMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveGridMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveGridMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveGridMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveGridMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveGridMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveGridMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveGridMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveGridMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveGridMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveGridMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveGridMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveGridMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveGridMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveGridMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveGridMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveGridMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveGridMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveGridMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveGridMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveGridMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveGridMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveGridMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveGridMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveGridMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveGridMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveGridMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveGridMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGridMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGridMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveGridMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveGridMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveGridMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveGridMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveGridMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveGridMethod "getRowBaselinePosition" o = GridGetRowBaselinePositionMethodInfo
    ResolveGridMethod "getRowHomogeneous" o = GridGetRowHomogeneousMethodInfo
    ResolveGridMethod "getRowSpacing" o = GridGetRowSpacingMethodInfo
    ResolveGridMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveGridMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveGridMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveGridMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveGridMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveGridMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveGridMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveGridMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveGridMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveGridMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveGridMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveGridMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveGridMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveGridMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveGridMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveGridMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveGridMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveGridMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveGridMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveGridMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveGridMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveGridMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveGridMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveGridMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveGridMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveGridMethod "setBaselineRow" o = GridSetBaselineRowMethodInfo
    ResolveGridMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveGridMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveGridMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveGridMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveGridMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveGridMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveGridMethod "setColumnHomogeneous" o = GridSetColumnHomogeneousMethodInfo
    ResolveGridMethod "setColumnSpacing" o = GridSetColumnSpacingMethodInfo
    ResolveGridMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveGridMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGridMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGridMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveGridMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveGridMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveGridMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveGridMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveGridMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveGridMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveGridMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveGridMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveGridMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveGridMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveGridMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveGridMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveGridMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveGridMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveGridMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveGridMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveGridMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveGridMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveGridMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveGridMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveGridMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveGridMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveGridMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveGridMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveGridMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveGridMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveGridMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveGridMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveGridMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveGridMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGridMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveGridMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveGridMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveGridMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveGridMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveGridMethod "setRowBaselinePosition" o = GridSetRowBaselinePositionMethodInfo
    ResolveGridMethod "setRowHomogeneous" o = GridSetRowHomogeneousMethodInfo
    ResolveGridMethod "setRowSpacing" o = GridSetRowSpacingMethodInfo
    ResolveGridMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveGridMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveGridMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveGridMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveGridMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveGridMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveGridMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveGridMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveGridMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveGridMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveGridMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveGridMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveGridMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveGridMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveGridMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveGridMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGridMethod t Grid, O.MethodInfo info Grid p) => OL.IsLabel t (Grid -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "baseline-row"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@baseline-row@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' grid #baselineRow
-- @
getGridBaselineRow :: (MonadIO m, IsGrid o) => o -> m Int32
getGridBaselineRow obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "baseline-row"

-- | Set the value of the “@baseline-row@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' grid [ #baselineRow 'Data.GI.Base.Attributes.:=' value ]
-- @
setGridBaselineRow :: (MonadIO m, IsGrid o) => o -> Int32 -> m ()
setGridBaselineRow obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "baseline-row" val

-- | Construct a `GValueConstruct` with valid value for the “@baseline-row@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGridBaselineRow :: (IsGrid o) => Int32 -> IO (GValueConstruct o)
constructGridBaselineRow val = B.Properties.constructObjectPropertyInt32 "baseline-row" val

#if defined(ENABLE_OVERLOADING)
data GridBaselineRowPropertyInfo
instance AttrInfo GridBaselineRowPropertyInfo where
    type AttrAllowedOps GridBaselineRowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GridBaselineRowPropertyInfo = IsGrid
    type AttrSetTypeConstraint GridBaselineRowPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint GridBaselineRowPropertyInfo = (~) Int32
    type AttrTransferType GridBaselineRowPropertyInfo = Int32
    type AttrGetType GridBaselineRowPropertyInfo = Int32
    type AttrLabel GridBaselineRowPropertyInfo = "baseline-row"
    type AttrOrigin GridBaselineRowPropertyInfo = Grid
    attrGet = getGridBaselineRow
    attrSet = setGridBaselineRow
    attrTransfer _ v = do
        return v
    attrConstruct = constructGridBaselineRow
    attrClear = undefined
#endif

-- VVV Prop "column-homogeneous"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@column-homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' grid #columnHomogeneous
-- @
getGridColumnHomogeneous :: (MonadIO m, IsGrid o) => o -> m Bool
getGridColumnHomogeneous obj = liftIO $ B.Properties.getObjectPropertyBool obj "column-homogeneous"

-- | Set the value of the “@column-homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' grid [ #columnHomogeneous 'Data.GI.Base.Attributes.:=' value ]
-- @
setGridColumnHomogeneous :: (MonadIO m, IsGrid o) => o -> Bool -> m ()
setGridColumnHomogeneous obj val = liftIO $ B.Properties.setObjectPropertyBool obj "column-homogeneous" val

-- | Construct a `GValueConstruct` with valid value for the “@column-homogeneous@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGridColumnHomogeneous :: (IsGrid o) => Bool -> IO (GValueConstruct o)
constructGridColumnHomogeneous val = B.Properties.constructObjectPropertyBool "column-homogeneous" val

#if defined(ENABLE_OVERLOADING)
data GridColumnHomogeneousPropertyInfo
instance AttrInfo GridColumnHomogeneousPropertyInfo where
    type AttrAllowedOps GridColumnHomogeneousPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GridColumnHomogeneousPropertyInfo = IsGrid
    type AttrSetTypeConstraint GridColumnHomogeneousPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint GridColumnHomogeneousPropertyInfo = (~) Bool
    type AttrTransferType GridColumnHomogeneousPropertyInfo = Bool
    type AttrGetType GridColumnHomogeneousPropertyInfo = Bool
    type AttrLabel GridColumnHomogeneousPropertyInfo = "column-homogeneous"
    type AttrOrigin GridColumnHomogeneousPropertyInfo = Grid
    attrGet = getGridColumnHomogeneous
    attrSet = setGridColumnHomogeneous
    attrTransfer _ v = do
        return v
    attrConstruct = constructGridColumnHomogeneous
    attrClear = undefined
#endif

-- VVV Prop "column-spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' grid #columnSpacing
-- @
getGridColumnSpacing :: (MonadIO m, IsGrid o) => o -> m Int32
getGridColumnSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "column-spacing"

-- | Set the value of the “@column-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' grid [ #columnSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setGridColumnSpacing :: (MonadIO m, IsGrid o) => o -> Int32 -> m ()
setGridColumnSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "column-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@column-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGridColumnSpacing :: (IsGrid o) => Int32 -> IO (GValueConstruct o)
constructGridColumnSpacing val = B.Properties.constructObjectPropertyInt32 "column-spacing" val

#if defined(ENABLE_OVERLOADING)
data GridColumnSpacingPropertyInfo
instance AttrInfo GridColumnSpacingPropertyInfo where
    type AttrAllowedOps GridColumnSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GridColumnSpacingPropertyInfo = IsGrid
    type AttrSetTypeConstraint GridColumnSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint GridColumnSpacingPropertyInfo = (~) Int32
    type AttrTransferType GridColumnSpacingPropertyInfo = Int32
    type AttrGetType GridColumnSpacingPropertyInfo = Int32
    type AttrLabel GridColumnSpacingPropertyInfo = "column-spacing"
    type AttrOrigin GridColumnSpacingPropertyInfo = Grid
    attrGet = getGridColumnSpacing
    attrSet = setGridColumnSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructGridColumnSpacing
    attrClear = undefined
#endif

-- VVV Prop "row-homogeneous"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@row-homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' grid #rowHomogeneous
-- @
getGridRowHomogeneous :: (MonadIO m, IsGrid o) => o -> m Bool
getGridRowHomogeneous obj = liftIO $ B.Properties.getObjectPropertyBool obj "row-homogeneous"

-- | Set the value of the “@row-homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' grid [ #rowHomogeneous 'Data.GI.Base.Attributes.:=' value ]
-- @
setGridRowHomogeneous :: (MonadIO m, IsGrid o) => o -> Bool -> m ()
setGridRowHomogeneous obj val = liftIO $ B.Properties.setObjectPropertyBool obj "row-homogeneous" val

-- | Construct a `GValueConstruct` with valid value for the “@row-homogeneous@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGridRowHomogeneous :: (IsGrid o) => Bool -> IO (GValueConstruct o)
constructGridRowHomogeneous val = B.Properties.constructObjectPropertyBool "row-homogeneous" val

#if defined(ENABLE_OVERLOADING)
data GridRowHomogeneousPropertyInfo
instance AttrInfo GridRowHomogeneousPropertyInfo where
    type AttrAllowedOps GridRowHomogeneousPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GridRowHomogeneousPropertyInfo = IsGrid
    type AttrSetTypeConstraint GridRowHomogeneousPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint GridRowHomogeneousPropertyInfo = (~) Bool
    type AttrTransferType GridRowHomogeneousPropertyInfo = Bool
    type AttrGetType GridRowHomogeneousPropertyInfo = Bool
    type AttrLabel GridRowHomogeneousPropertyInfo = "row-homogeneous"
    type AttrOrigin GridRowHomogeneousPropertyInfo = Grid
    attrGet = getGridRowHomogeneous
    attrSet = setGridRowHomogeneous
    attrTransfer _ v = do
        return v
    attrConstruct = constructGridRowHomogeneous
    attrClear = undefined
#endif

-- VVV Prop "row-spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' grid #rowSpacing
-- @
getGridRowSpacing :: (MonadIO m, IsGrid o) => o -> m Int32
getGridRowSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "row-spacing"

-- | Set the value of the “@row-spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' grid [ #rowSpacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setGridRowSpacing :: (MonadIO m, IsGrid o) => o -> Int32 -> m ()
setGridRowSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "row-spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@row-spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGridRowSpacing :: (IsGrid o) => Int32 -> IO (GValueConstruct o)
constructGridRowSpacing val = B.Properties.constructObjectPropertyInt32 "row-spacing" val

#if defined(ENABLE_OVERLOADING)
data GridRowSpacingPropertyInfo
instance AttrInfo GridRowSpacingPropertyInfo where
    type AttrAllowedOps GridRowSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint GridRowSpacingPropertyInfo = IsGrid
    type AttrSetTypeConstraint GridRowSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint GridRowSpacingPropertyInfo = (~) Int32
    type AttrTransferType GridRowSpacingPropertyInfo = Int32
    type AttrGetType GridRowSpacingPropertyInfo = Int32
    type AttrLabel GridRowSpacingPropertyInfo = "row-spacing"
    type AttrOrigin GridRowSpacingPropertyInfo = Grid
    attrGet = getGridRowSpacing
    attrSet = setGridRowSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructGridRowSpacing
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Grid
type instance O.AttributeList Grid = GridAttributeList
type GridAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselineRow", GridBaselineRowPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("columnHomogeneous", GridColumnHomogeneousPropertyInfo), '("columnSpacing", GridColumnSpacingPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rowHomogeneous", GridRowHomogeneousPropertyInfo), '("rowSpacing", GridRowSpacingPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gridBaselineRow :: AttrLabelProxy "baselineRow"
gridBaselineRow = AttrLabelProxy

gridColumnHomogeneous :: AttrLabelProxy "columnHomogeneous"
gridColumnHomogeneous = AttrLabelProxy

gridColumnSpacing :: AttrLabelProxy "columnSpacing"
gridColumnSpacing = AttrLabelProxy

gridRowHomogeneous :: AttrLabelProxy "rowHomogeneous"
gridRowHomogeneous = AttrLabelProxy

gridRowSpacing :: AttrLabelProxy "rowSpacing"
gridRowSpacing = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Grid = GridSignalList
type GridSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Grid::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Grid" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_grid_new" gtk_grid_new :: 
    IO (Ptr Grid)

-- | Creates a new grid widget.
gridNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Grid
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.Grid.Grid'
gridNew  = liftIO $ do
    result <- gtk_grid_new
    checkUnexpectedReturnNULL "gridNew" result
    result' <- (newObject Grid) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Grid::attach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the widget to add" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "left"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the column number to attach the left side of @child to"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "top"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the row number to attach the top side of @child to"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of columns that @child will span"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of rows that @child will span"
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

foreign import ccall "gtk_grid_attach" gtk_grid_attach :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- left : TBasicType TInt
    Int32 ->                                -- top : TBasicType TInt
    Int32 ->                                -- width : TBasicType TInt
    Int32 ->                                -- height : TBasicType TInt
    IO ()

-- | Adds a widget to the grid.
-- 
-- The position of /@child@/ is determined by /@left@/ and /@top@/. The
-- number of “cells” that /@child@/ will occupy is determined by
-- /@width@/ and /@height@/.
gridAttach ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> b
    -- ^ /@child@/: the widget to add
    -> Int32
    -- ^ /@left@/: the column number to attach the left side of /@child@/ to
    -> Int32
    -- ^ /@top@/: the row number to attach the top side of /@child@/ to
    -> Int32
    -- ^ /@width@/: the number of columns that /@child@/ will span
    -> Int32
    -- ^ /@height@/: the number of rows that /@child@/ will span
    -> m ()
gridAttach grid child left top width height = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    child' <- unsafeManagedPtrCastPtr child
    gtk_grid_attach grid' child' left top width height
    touchManagedPtr grid
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data GridAttachMethodInfo
instance (signature ~ (b -> Int32 -> Int32 -> Int32 -> Int32 -> m ()), MonadIO m, IsGrid a, Gtk.Widget.IsWidget b) => O.MethodInfo GridAttachMethodInfo a signature where
    overloadedMethod = gridAttach

#endif

-- method Grid::attach_next_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the widget to add" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sibling"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the child of @grid that @child will be placed\n    next to, or %NULL to place @child at the beginning or end"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "side"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the side of @sibling that @child is positioned next to"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of columns that @child will span"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of rows that @child will span"
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

foreign import ccall "gtk_grid_attach_next_to" gtk_grid_attach_next_to :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- sibling : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- side : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    Int32 ->                                -- width : TBasicType TInt
    Int32 ->                                -- height : TBasicType TInt
    IO ()

-- | Adds a widget to the grid.
-- 
-- The widget is placed next to /@sibling@/, on the side determined by
-- /@side@/. When /@sibling@/ is 'P.Nothing', the widget is placed in row (for
-- left or right placement) or column 0 (for top or bottom placement),
-- at the end indicated by /@side@/.
-- 
-- Attaching widgets labeled [1], [2], [3] with /@sibling@/ == 'P.Nothing' and
-- /@side@/ == 'GI.Gtk.Enums.PositionTypeLeft' yields a layout of [3][2][1].
gridAttachNextTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> b
    -- ^ /@child@/: the widget to add
    -> Maybe (c)
    -- ^ /@sibling@/: the child of /@grid@/ that /@child@/ will be placed
    --     next to, or 'P.Nothing' to place /@child@/ at the beginning or end
    -> Gtk.Enums.PositionType
    -- ^ /@side@/: the side of /@sibling@/ that /@child@/ is positioned next to
    -> Int32
    -- ^ /@width@/: the number of columns that /@child@/ will span
    -> Int32
    -- ^ /@height@/: the number of rows that /@child@/ will span
    -> m ()
gridAttachNextTo grid child sibling side width height = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    child' <- unsafeManagedPtrCastPtr child
    maybeSibling <- case sibling of
        Nothing -> return nullPtr
        Just jSibling -> do
            jSibling' <- unsafeManagedPtrCastPtr jSibling
            return jSibling'
    let side' = (fromIntegral . fromEnum) side
    gtk_grid_attach_next_to grid' child' maybeSibling side' width height
    touchManagedPtr grid
    touchManagedPtr child
    whenJust sibling touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data GridAttachNextToMethodInfo
instance (signature ~ (b -> Maybe (c) -> Gtk.Enums.PositionType -> Int32 -> Int32 -> m ()), MonadIO m, IsGrid a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo GridAttachNextToMethodInfo a signature where
    overloadedMethod = gridAttachNextTo

#endif

-- method Grid::get_baseline_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_get_baseline_row" gtk_grid_get_baseline_row :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    IO Int32

-- | Returns which row defines the global baseline of /@grid@/.
-- 
-- /Since: 3.10/
gridGetBaselineRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> m Int32
    -- ^ __Returns:__ the row index defining the global baseline
gridGetBaselineRow grid = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_baseline_row grid'
    touchManagedPtr grid
    return result

#if defined(ENABLE_OVERLOADING)
data GridGetBaselineRowMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsGrid a) => O.MethodInfo GridGetBaselineRowMethodInfo a signature where
    overloadedMethod = gridGetBaselineRow

#endif

-- method Grid::get_child_at
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "left"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the left edge of the cell"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "top"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the top edge of the cell"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_grid_get_child_at" gtk_grid_get_child_at :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- left : TBasicType TInt
    Int32 ->                                -- top : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the child of /@grid@/ whose area covers the grid
-- cell whose upper left corner is at /@left@/, /@top@/.
-- 
-- /Since: 3.2/
gridGetChildAt ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@left@/: the left edge of the cell
    -> Int32
    -- ^ /@top@/: the top edge of the cell
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the child at the given position, or 'P.Nothing'
gridGetChildAt grid left top = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_child_at grid' left top
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr grid
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data GridGetChildAtMethodInfo
instance (signature ~ (Int32 -> Int32 -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsGrid a) => O.MethodInfo GridGetChildAtMethodInfo a signature where
    overloadedMethod = gridGetChildAt

#endif

-- method Grid::get_column_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_get_column_homogeneous" gtk_grid_get_column_homogeneous :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    IO CInt

-- | Returns whether all columns of /@grid@/ have the same width.
gridGetColumnHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> m Bool
    -- ^ __Returns:__ whether all columns of /@grid@/ have the same width.
gridGetColumnHomogeneous grid = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_column_homogeneous grid'
    let result' = (/= 0) result
    touchManagedPtr grid
    return result'

#if defined(ENABLE_OVERLOADING)
data GridGetColumnHomogeneousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGrid a) => O.MethodInfo GridGetColumnHomogeneousMethodInfo a signature where
    overloadedMethod = gridGetColumnHomogeneous

#endif

-- method Grid::get_column_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_get_column_spacing" gtk_grid_get_column_spacing :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    IO Word32

-- | Returns the amount of space between the columns of /@grid@/.
gridGetColumnSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> m Word32
    -- ^ __Returns:__ the column spacing of /@grid@/
gridGetColumnSpacing grid = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_column_spacing grid'
    touchManagedPtr grid
    return result

#if defined(ENABLE_OVERLOADING)
data GridGetColumnSpacingMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsGrid a) => O.MethodInfo GridGetColumnSpacingMethodInfo a signature where
    overloadedMethod = gridGetColumnSpacing

#endif

-- method Grid::get_row_baseline_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a row index" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "BaselinePosition" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_grid_get_row_baseline_position" gtk_grid_get_row_baseline_position :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- row : TBasicType TInt
    IO CUInt

-- | Returns the baseline position of /@row@/ as set
-- by 'GI.Gtk.Objects.Grid.gridSetRowBaselinePosition' or the default value
-- 'GI.Gtk.Enums.BaselinePositionCenter'.
-- 
-- /Since: 3.10/
gridGetRowBaselinePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@row@/: a row index
    -> m Gtk.Enums.BaselinePosition
    -- ^ __Returns:__ the baseline position of /@row@/
gridGetRowBaselinePosition grid row = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_row_baseline_position grid' row
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr grid
    return result'

#if defined(ENABLE_OVERLOADING)
data GridGetRowBaselinePositionMethodInfo
instance (signature ~ (Int32 -> m Gtk.Enums.BaselinePosition), MonadIO m, IsGrid a) => O.MethodInfo GridGetRowBaselinePositionMethodInfo a signature where
    overloadedMethod = gridGetRowBaselinePosition

#endif

-- method Grid::get_row_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_get_row_homogeneous" gtk_grid_get_row_homogeneous :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    IO CInt

-- | Returns whether all rows of /@grid@/ have the same height.
gridGetRowHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> m Bool
    -- ^ __Returns:__ whether all rows of /@grid@/ have the same height.
gridGetRowHomogeneous grid = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_row_homogeneous grid'
    let result' = (/= 0) result
    touchManagedPtr grid
    return result'

#if defined(ENABLE_OVERLOADING)
data GridGetRowHomogeneousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsGrid a) => O.MethodInfo GridGetRowHomogeneousMethodInfo a signature where
    overloadedMethod = gridGetRowHomogeneous

#endif

-- method Grid::get_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_get_row_spacing" gtk_grid_get_row_spacing :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    IO Word32

-- | Returns the amount of space between the rows of /@grid@/.
gridGetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> m Word32
    -- ^ __Returns:__ the row spacing of /@grid@/
gridGetRowSpacing grid = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    result <- gtk_grid_get_row_spacing grid'
    touchManagedPtr grid
    return result

#if defined(ENABLE_OVERLOADING)
data GridGetRowSpacingMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsGrid a) => O.MethodInfo GridGetRowSpacingMethodInfo a signature where
    overloadedMethod = gridGetRowSpacing

#endif

-- method Grid::insert_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position to insert the column at"
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

foreign import ccall "gtk_grid_insert_column" gtk_grid_insert_column :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Inserts a column at the specified position.
-- 
-- Children which are attached at or to the right of this position
-- are moved one column to the right. Children which span across this
-- position are grown to span the new column.
-- 
-- /Since: 3.2/
gridInsertColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@position@/: the position to insert the column at
    -> m ()
gridInsertColumn grid position = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_insert_column grid' position
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridInsertColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridInsertColumnMethodInfo a signature where
    overloadedMethod = gridInsertColumn

#endif

-- method Grid::insert_next_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sibling"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the child of @grid that the new row or column will be\n    placed next to"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "side"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the side of @sibling that @child is positioned next to"
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

foreign import ccall "gtk_grid_insert_next_to" gtk_grid_insert_next_to :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Ptr Gtk.Widget.Widget ->                -- sibling : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- side : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    IO ()

-- | Inserts a row or column at the specified position.
-- 
-- The new row or column is placed next to /@sibling@/, on the side
-- determined by /@side@/. If /@side@/ is 'GI.Gtk.Enums.PositionTypeTop' or 'GI.Gtk.Enums.PositionTypeBottom',
-- a row is inserted. If /@side@/ is 'GI.Gtk.Enums.PositionTypeLeft' of 'GI.Gtk.Enums.PositionTypeRight',
-- a column is inserted.
-- 
-- /Since: 3.2/
gridInsertNextTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> b
    -- ^ /@sibling@/: the child of /@grid@/ that the new row or column will be
    --     placed next to
    -> Gtk.Enums.PositionType
    -- ^ /@side@/: the side of /@sibling@/ that /@child@/ is positioned next to
    -> m ()
gridInsertNextTo grid sibling side = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    sibling' <- unsafeManagedPtrCastPtr sibling
    let side' = (fromIntegral . fromEnum) side
    gtk_grid_insert_next_to grid' sibling' side'
    touchManagedPtr grid
    touchManagedPtr sibling
    return ()

#if defined(ENABLE_OVERLOADING)
data GridInsertNextToMethodInfo
instance (signature ~ (b -> Gtk.Enums.PositionType -> m ()), MonadIO m, IsGrid a, Gtk.Widget.IsWidget b) => O.MethodInfo GridInsertNextToMethodInfo a signature where
    overloadedMethod = gridInsertNextTo

#endif

-- method Grid::insert_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position to insert the row at"
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

foreign import ccall "gtk_grid_insert_row" gtk_grid_insert_row :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Inserts a row at the specified position.
-- 
-- Children which are attached at or below this position
-- are moved one row down. Children which span across this
-- position are grown to span the new row.
-- 
-- /Since: 3.2/
gridInsertRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@position@/: the position to insert the row at
    -> m ()
gridInsertRow grid position = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_insert_row grid' position
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridInsertRowMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridInsertRowMethodInfo a signature where
    overloadedMethod = gridInsertRow

#endif

-- method Grid::remove_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position of the column to remove"
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

foreign import ccall "gtk_grid_remove_column" gtk_grid_remove_column :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Removes a column from the grid.
-- 
-- Children that are placed in this column are removed,
-- spanning children that overlap this column have their
-- width reduced by one, and children after the column
-- are moved to the left.
-- 
-- /Since: 3.10/
gridRemoveColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@position@/: the position of the column to remove
    -> m ()
gridRemoveColumn grid position = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_remove_column grid' position
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridRemoveColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridRemoveColumnMethodInfo a signature where
    overloadedMethod = gridRemoveColumn

#endif

-- method Grid::remove_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position of the row to remove"
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

foreign import ccall "gtk_grid_remove_row" gtk_grid_remove_row :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Removes a row from the grid.
-- 
-- Children that are placed in this row are removed,
-- spanning children that overlap this row have their
-- height reduced by one, and children below the row
-- are moved up.
-- 
-- /Since: 3.10/
gridRemoveRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@position@/: the position of the row to remove
    -> m ()
gridRemoveRow grid position = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_remove_row grid' position
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridRemoveRowMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridRemoveRowMethodInfo a signature where
    overloadedMethod = gridRemoveRow

#endif

-- method Grid::set_baseline_row
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the row index" , sinceVersion = Nothing }
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

foreign import ccall "gtk_grid_set_baseline_row" gtk_grid_set_baseline_row :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- row : TBasicType TInt
    IO ()

-- | Sets which row defines the global baseline for the entire grid.
-- Each row in the grid can have its own local baseline, but only
-- one of those is global, meaning it will be the baseline in the
-- parent of the /@grid@/.
-- 
-- /Since: 3.10/
gridSetBaselineRow ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@row@/: the row index
    -> m ()
gridSetBaselineRow grid row = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_set_baseline_row grid' row
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetBaselineRowMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetBaselineRowMethodInfo a signature where
    overloadedMethod = gridSetBaselineRow

#endif

-- method Grid::set_column_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "%TRUE to make columns homogeneous"
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

foreign import ccall "gtk_grid_set_column_homogeneous" gtk_grid_set_column_homogeneous :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO ()

-- | Sets whether all columns of /@grid@/ will have the same width.
gridSetColumnHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Bool
    -- ^ /@homogeneous@/: 'P.True' to make columns homogeneous
    -> m ()
gridSetColumnHomogeneous grid homogeneous = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    gtk_grid_set_column_homogeneous grid' homogeneous'
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetColumnHomogeneousMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetColumnHomogeneousMethodInfo a signature where
    overloadedMethod = gridSetColumnHomogeneous

#endif

-- method Grid::set_column_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the amount of space to insert between columns"
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

foreign import ccall "gtk_grid_set_column_spacing" gtk_grid_set_column_spacing :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

-- | Sets the amount of space between columns of /@grid@/.
gridSetColumnSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Word32
    -- ^ /@spacing@/: the amount of space to insert between columns
    -> m ()
gridSetColumnSpacing grid spacing = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_set_column_spacing grid' spacing
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetColumnSpacingMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetColumnSpacingMethodInfo a signature where
    overloadedMethod = gridSetColumnSpacing

#endif

-- method Grid::set_row_baseline_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a row index" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pos"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "BaselinePosition" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBaselinePosition"
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

foreign import ccall "gtk_grid_set_row_baseline_position" gtk_grid_set_row_baseline_position :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Int32 ->                                -- row : TBasicType TInt
    CUInt ->                                -- pos : TInterface (Name {namespace = "Gtk", name = "BaselinePosition"})
    IO ()

-- | Sets how the baseline should be positioned on /@row@/ of the
-- grid, in case that row is assigned more space than is requested.
-- 
-- /Since: 3.10/
gridSetRowBaselinePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Int32
    -- ^ /@row@/: a row index
    -> Gtk.Enums.BaselinePosition
    -- ^ /@pos@/: a t'GI.Gtk.Enums.BaselinePosition'
    -> m ()
gridSetRowBaselinePosition grid row pos = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    let pos' = (fromIntegral . fromEnum) pos
    gtk_grid_set_row_baseline_position grid' row pos'
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetRowBaselinePositionMethodInfo
instance (signature ~ (Int32 -> Gtk.Enums.BaselinePosition -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetRowBaselinePositionMethodInfo a signature where
    overloadedMethod = gridSetRowBaselinePosition

#endif

-- method Grid::set_row_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "%TRUE to make rows homogeneous"
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

foreign import ccall "gtk_grid_set_row_homogeneous" gtk_grid_set_row_homogeneous :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO ()

-- | Sets whether all rows of /@grid@/ will have the same height.
gridSetRowHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Bool
    -- ^ /@homogeneous@/: 'P.True' to make rows homogeneous
    -> m ()
gridSetRowHomogeneous grid homogeneous = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    gtk_grid_set_row_homogeneous grid' homogeneous'
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetRowHomogeneousMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetRowHomogeneousMethodInfo a signature where
    overloadedMethod = gridSetRowHomogeneous

#endif

-- method Grid::set_row_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "grid"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Grid" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkGrid" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the amount of space to insert between rows"
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

foreign import ccall "gtk_grid_set_row_spacing" gtk_grid_set_row_spacing :: 
    Ptr Grid ->                             -- grid : TInterface (Name {namespace = "Gtk", name = "Grid"})
    Word32 ->                               -- spacing : TBasicType TUInt
    IO ()

-- | Sets the amount of space between rows of /@grid@/.
gridSetRowSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsGrid a) =>
    a
    -- ^ /@grid@/: a t'GI.Gtk.Objects.Grid.Grid'
    -> Word32
    -- ^ /@spacing@/: the amount of space to insert between rows
    -> m ()
gridSetRowSpacing grid spacing = liftIO $ do
    grid' <- unsafeManagedPtrCastPtr grid
    gtk_grid_set_row_spacing grid' spacing
    touchManagedPtr grid
    return ()

#if defined(ENABLE_OVERLOADING)
data GridSetRowSpacingMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsGrid a) => O.MethodInfo GridSetRowSpacingMethodInfo a signature where
    overloadedMethod = gridSetRowSpacing

#endif

