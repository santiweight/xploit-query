{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget' widget lets the user select a
-- color. By default, the chooser presents a predefined palette
-- of colors, plus a small number of settable custom colors.
-- It is also possible to select a different color with the
-- single-color editor. To enter the single-color editing mode,
-- use the context menu of any color of the palette, or use the
-- \'+\' button to add a new custom color.
-- 
-- The chooser automatically remembers the last selection, as well
-- as custom colors.
-- 
-- To change the initially selected color, use 'GI.Gtk.Interfaces.ColorChooser.colorChooserSetRgba'.
-- To get the selected color use 'GI.Gtk.Interfaces.ColorChooser.colorChooserGetRgba'.
-- 
-- The t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget' is used in the t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog'
-- to provide a dialog for selecting colors.
-- 
-- = CSS names
-- 
-- GtkColorChooserWidget has a single CSS node with name colorchooser.
-- 
-- /Since: 3.4/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ColorChooserWidget
    ( 

-- * Exported types
    ColorChooserWidget(..)                  ,
    IsColorChooserWidget                    ,
    toColorChooserWidget                    ,
    noColorChooserWidget                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColorChooserWidgetMethod         ,
#endif


-- ** new #method:new#

    colorChooserWidgetNew                   ,




 -- * Properties
-- ** showEditor #attr:showEditor#
-- | The [showEditor](#signal:showEditor) property is 'P.True' when the color chooser
-- is showing the single-color editor. It can be set to switch
-- the color chooser into single-color editing mode.
-- 
-- /Since: 3.4/

#if defined(ENABLE_OVERLOADING)
    ColorChooserWidgetShowEditorPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorChooserWidgetShowEditor            ,
#endif
    constructColorChooserWidgetShowEditor   ,
    getColorChooserWidgetShowEditor         ,
    setColorChooserWidgetShowEditor         ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.ColorChooser as Gtk.ColorChooser
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ColorChooserWidget = ColorChooserWidget (ManagedPtr ColorChooserWidget)
    deriving (Eq)
foreign import ccall "gtk_color_chooser_widget_get_type"
    c_gtk_color_chooser_widget_get_type :: IO GType

instance GObject ColorChooserWidget where
    gobjectType = c_gtk_color_chooser_widget_get_type
    

-- | Convert 'ColorChooserWidget' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ColorChooserWidget where
    toGValue o = do
        gtype <- c_gtk_color_chooser_widget_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ColorChooserWidget)
        B.ManagedPtr.newObject ColorChooserWidget ptr
        
    

-- | Type class for types which can be safely cast to `ColorChooserWidget`, for instance with `toColorChooserWidget`.
class (GObject o, O.IsDescendantOf ColorChooserWidget o) => IsColorChooserWidget o
instance (GObject o, O.IsDescendantOf ColorChooserWidget o) => IsColorChooserWidget o

instance O.HasParentTypes ColorChooserWidget
type instance O.ParentTypes ColorChooserWidget = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.ColorChooser.ColorChooser, Gtk.Orientable.Orientable]

-- | Cast to `ColorChooserWidget`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColorChooserWidget :: (MonadIO m, IsColorChooserWidget o) => o -> m ColorChooserWidget
toColorChooserWidget = liftIO . unsafeCastTo ColorChooserWidget

-- | A convenience alias for `Nothing` :: `Maybe` `ColorChooserWidget`.
noColorChooserWidget :: Maybe ColorChooserWidget
noColorChooserWidget = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveColorChooserWidgetMethod (t :: Symbol) (o :: *) :: * where
    ResolveColorChooserWidgetMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveColorChooserWidgetMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveColorChooserWidgetMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveColorChooserWidgetMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveColorChooserWidgetMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveColorChooserWidgetMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveColorChooserWidgetMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveColorChooserWidgetMethod "addPalette" o = Gtk.ColorChooser.ColorChooserAddPaletteMethodInfo
    ResolveColorChooserWidgetMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveColorChooserWidgetMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorChooserWidgetMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorChooserWidgetMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveColorChooserWidgetMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveColorChooserWidgetMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveColorChooserWidgetMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveColorChooserWidgetMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveColorChooserWidgetMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveColorChooserWidgetMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveColorChooserWidgetMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveColorChooserWidgetMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveColorChooserWidgetMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveColorChooserWidgetMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveColorChooserWidgetMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveColorChooserWidgetMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveColorChooserWidgetMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveColorChooserWidgetMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveColorChooserWidgetMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveColorChooserWidgetMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveColorChooserWidgetMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveColorChooserWidgetMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveColorChooserWidgetMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveColorChooserWidgetMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveColorChooserWidgetMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveColorChooserWidgetMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveColorChooserWidgetMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveColorChooserWidgetMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveColorChooserWidgetMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveColorChooserWidgetMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveColorChooserWidgetMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveColorChooserWidgetMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveColorChooserWidgetMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveColorChooserWidgetMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveColorChooserWidgetMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveColorChooserWidgetMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveColorChooserWidgetMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveColorChooserWidgetMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveColorChooserWidgetMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveColorChooserWidgetMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveColorChooserWidgetMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveColorChooserWidgetMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveColorChooserWidgetMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorChooserWidgetMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveColorChooserWidgetMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveColorChooserWidgetMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorChooserWidgetMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorChooserWidgetMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveColorChooserWidgetMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveColorChooserWidgetMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveColorChooserWidgetMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveColorChooserWidgetMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveColorChooserWidgetMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveColorChooserWidgetMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveColorChooserWidgetMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveColorChooserWidgetMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveColorChooserWidgetMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveColorChooserWidgetMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveColorChooserWidgetMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveColorChooserWidgetMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveColorChooserWidgetMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveColorChooserWidgetMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveColorChooserWidgetMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveColorChooserWidgetMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveColorChooserWidgetMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveColorChooserWidgetMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveColorChooserWidgetMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveColorChooserWidgetMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorChooserWidgetMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveColorChooserWidgetMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveColorChooserWidgetMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveColorChooserWidgetMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveColorChooserWidgetMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveColorChooserWidgetMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveColorChooserWidgetMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveColorChooserWidgetMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveColorChooserWidgetMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveColorChooserWidgetMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveColorChooserWidgetMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveColorChooserWidgetMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveColorChooserWidgetMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveColorChooserWidgetMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveColorChooserWidgetMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveColorChooserWidgetMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveColorChooserWidgetMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveColorChooserWidgetMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorChooserWidgetMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorChooserWidgetMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveColorChooserWidgetMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveColorChooserWidgetMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveColorChooserWidgetMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveColorChooserWidgetMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveColorChooserWidgetMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveColorChooserWidgetMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveColorChooserWidgetMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveColorChooserWidgetMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveColorChooserWidgetMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveColorChooserWidgetMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveColorChooserWidgetMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveColorChooserWidgetMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveColorChooserWidgetMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveColorChooserWidgetMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveColorChooserWidgetMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveColorChooserWidgetMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveColorChooserWidgetMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveColorChooserWidgetMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveColorChooserWidgetMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorChooserWidgetMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorChooserWidgetMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveColorChooserWidgetMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveColorChooserWidgetMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveColorChooserWidgetMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveColorChooserWidgetMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveColorChooserWidgetMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveColorChooserWidgetMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveColorChooserWidgetMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveColorChooserWidgetMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveColorChooserWidgetMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveColorChooserWidgetMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveColorChooserWidgetMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveColorChooserWidgetMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveColorChooserWidgetMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorChooserWidgetMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveColorChooserWidgetMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveColorChooserWidgetMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveColorChooserWidgetMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveColorChooserWidgetMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveColorChooserWidgetMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveColorChooserWidgetMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveColorChooserWidgetMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveColorChooserWidgetMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveColorChooserWidgetMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorChooserWidgetMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorChooserWidgetMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveColorChooserWidgetMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveColorChooserWidgetMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveColorChooserWidgetMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorChooserWidgetMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveColorChooserWidgetMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveColorChooserWidgetMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveColorChooserWidgetMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveColorChooserWidgetMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveColorChooserWidgetMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorChooserWidgetMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveColorChooserWidgetMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveColorChooserWidgetMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveColorChooserWidgetMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorChooserWidgetMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveColorChooserWidgetMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveColorChooserWidgetMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveColorChooserWidgetMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveColorChooserWidgetMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveColorChooserWidgetMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveColorChooserWidgetMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveColorChooserWidgetMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveColorChooserWidgetMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveColorChooserWidgetMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveColorChooserWidgetMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveColorChooserWidgetMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveColorChooserWidgetMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveColorChooserWidgetMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveColorChooserWidgetMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveColorChooserWidgetMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveColorChooserWidgetMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveColorChooserWidgetMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveColorChooserWidgetMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveColorChooserWidgetMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveColorChooserWidgetMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorChooserWidgetMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveColorChooserWidgetMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveColorChooserWidgetMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveColorChooserWidgetMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveColorChooserWidgetMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveColorChooserWidgetMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveColorChooserWidgetMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveColorChooserWidgetMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveColorChooserWidgetMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveColorChooserWidgetMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveColorChooserWidgetMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveColorChooserWidgetMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveColorChooserWidgetMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveColorChooserWidgetMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveColorChooserWidgetMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveColorChooserWidgetMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveColorChooserWidgetMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveColorChooserWidgetMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveColorChooserWidgetMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveColorChooserWidgetMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveColorChooserWidgetMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveColorChooserWidgetMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveColorChooserWidgetMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveColorChooserWidgetMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveColorChooserWidgetMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveColorChooserWidgetMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveColorChooserWidgetMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveColorChooserWidgetMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveColorChooserWidgetMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveColorChooserWidgetMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveColorChooserWidgetMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveColorChooserWidgetMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveColorChooserWidgetMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveColorChooserWidgetMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveColorChooserWidgetMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveColorChooserWidgetMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveColorChooserWidgetMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveColorChooserWidgetMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveColorChooserWidgetMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveColorChooserWidgetMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveColorChooserWidgetMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveColorChooserWidgetMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorChooserWidgetMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorChooserWidgetMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveColorChooserWidgetMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveColorChooserWidgetMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveColorChooserWidgetMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveColorChooserWidgetMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveColorChooserWidgetMethod "getRgba" o = Gtk.ColorChooser.ColorChooserGetRgbaMethodInfo
    ResolveColorChooserWidgetMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveColorChooserWidgetMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveColorChooserWidgetMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveColorChooserWidgetMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveColorChooserWidgetMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveColorChooserWidgetMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveColorChooserWidgetMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveColorChooserWidgetMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveColorChooserWidgetMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveColorChooserWidgetMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveColorChooserWidgetMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveColorChooserWidgetMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveColorChooserWidgetMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveColorChooserWidgetMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveColorChooserWidgetMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveColorChooserWidgetMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveColorChooserWidgetMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveColorChooserWidgetMethod "getUseAlpha" o = Gtk.ColorChooser.ColorChooserGetUseAlphaMethodInfo
    ResolveColorChooserWidgetMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveColorChooserWidgetMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveColorChooserWidgetMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveColorChooserWidgetMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveColorChooserWidgetMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveColorChooserWidgetMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveColorChooserWidgetMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveColorChooserWidgetMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveColorChooserWidgetMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveColorChooserWidgetMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveColorChooserWidgetMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveColorChooserWidgetMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveColorChooserWidgetMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveColorChooserWidgetMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveColorChooserWidgetMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveColorChooserWidgetMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveColorChooserWidgetMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveColorChooserWidgetMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveColorChooserWidgetMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveColorChooserWidgetMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveColorChooserWidgetMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorChooserWidgetMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorChooserWidgetMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveColorChooserWidgetMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveColorChooserWidgetMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveColorChooserWidgetMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveColorChooserWidgetMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveColorChooserWidgetMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveColorChooserWidgetMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveColorChooserWidgetMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveColorChooserWidgetMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveColorChooserWidgetMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveColorChooserWidgetMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveColorChooserWidgetMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveColorChooserWidgetMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveColorChooserWidgetMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveColorChooserWidgetMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveColorChooserWidgetMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveColorChooserWidgetMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveColorChooserWidgetMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveColorChooserWidgetMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveColorChooserWidgetMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveColorChooserWidgetMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveColorChooserWidgetMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveColorChooserWidgetMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveColorChooserWidgetMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveColorChooserWidgetMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveColorChooserWidgetMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveColorChooserWidgetMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveColorChooserWidgetMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveColorChooserWidgetMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveColorChooserWidgetMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveColorChooserWidgetMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveColorChooserWidgetMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorChooserWidgetMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveColorChooserWidgetMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveColorChooserWidgetMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveColorChooserWidgetMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveColorChooserWidgetMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveColorChooserWidgetMethod "setRgba" o = Gtk.ColorChooser.ColorChooserSetRgbaMethodInfo
    ResolveColorChooserWidgetMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveColorChooserWidgetMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveColorChooserWidgetMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveColorChooserWidgetMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveColorChooserWidgetMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveColorChooserWidgetMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveColorChooserWidgetMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveColorChooserWidgetMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveColorChooserWidgetMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveColorChooserWidgetMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveColorChooserWidgetMethod "setUseAlpha" o = Gtk.ColorChooser.ColorChooserSetUseAlphaMethodInfo
    ResolveColorChooserWidgetMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveColorChooserWidgetMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveColorChooserWidgetMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveColorChooserWidgetMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveColorChooserWidgetMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveColorChooserWidgetMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveColorChooserWidgetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorChooserWidgetMethod t ColorChooserWidget, O.MethodInfo info ColorChooserWidget p) => OL.IsLabel t (ColorChooserWidget -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "show-editor"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorChooserWidget #showEditor
-- @
getColorChooserWidgetShowEditor :: (MonadIO m, IsColorChooserWidget o) => o -> m Bool
getColorChooserWidgetShowEditor obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-editor"

-- | Set the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorChooserWidget [ #showEditor 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorChooserWidgetShowEditor :: (MonadIO m, IsColorChooserWidget o) => o -> Bool -> m ()
setColorChooserWidgetShowEditor obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-editor" val

-- | Construct a `GValueConstruct` with valid value for the “@show-editor@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorChooserWidgetShowEditor :: (IsColorChooserWidget o) => Bool -> IO (GValueConstruct o)
constructColorChooserWidgetShowEditor val = B.Properties.constructObjectPropertyBool "show-editor" val

#if defined(ENABLE_OVERLOADING)
data ColorChooserWidgetShowEditorPropertyInfo
instance AttrInfo ColorChooserWidgetShowEditorPropertyInfo where
    type AttrAllowedOps ColorChooserWidgetShowEditorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorChooserWidgetShowEditorPropertyInfo = IsColorChooserWidget
    type AttrSetTypeConstraint ColorChooserWidgetShowEditorPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ColorChooserWidgetShowEditorPropertyInfo = (~) Bool
    type AttrTransferType ColorChooserWidgetShowEditorPropertyInfo = Bool
    type AttrGetType ColorChooserWidgetShowEditorPropertyInfo = Bool
    type AttrLabel ColorChooserWidgetShowEditorPropertyInfo = "show-editor"
    type AttrOrigin ColorChooserWidgetShowEditorPropertyInfo = ColorChooserWidget
    attrGet = getColorChooserWidgetShowEditor
    attrSet = setColorChooserWidgetShowEditor
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorChooserWidgetShowEditor
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorChooserWidget
type instance O.AttributeList ColorChooserWidget = ColorChooserWidgetAttributeList
type ColorChooserWidgetAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rgba", Gtk.ColorChooser.ColorChooserRgbaPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showEditor", ColorChooserWidgetShowEditorPropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useAlpha", Gtk.ColorChooser.ColorChooserUseAlphaPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
colorChooserWidgetShowEditor :: AttrLabelProxy "showEditor"
colorChooserWidgetShowEditor = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorChooserWidget = ColorChooserWidgetSignalList
type ColorChooserWidgetSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("colorActivated", Gtk.ColorChooser.ColorChooserColorActivatedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ColorChooserWidget::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "ColorChooserWidget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_chooser_widget_new" gtk_color_chooser_widget_new :: 
    IO (Ptr ColorChooserWidget)

-- | Creates a new t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget'.
-- 
-- /Since: 3.4/
colorChooserWidgetNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ColorChooserWidget
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ColorChooserWidget.ColorChooserWidget'
colorChooserWidgetNew  = liftIO $ do
    result <- gtk_color_chooser_widget_new
    checkUnexpectedReturnNULL "colorChooserWidgetNew" result
    result' <- (newObject ColorChooserWidget) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

