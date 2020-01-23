{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.DrawingArea.DrawingArea' widget is used for creating custom user interface
-- elements. It’s essentially a blank widget; you can draw on it. After
-- creating a drawing area, the application may want to connect to:
-- 
-- * Mouse and button press signals to respond to input from
-- the user. (Use 'GI.Gtk.Objects.Widget.widgetAddEvents' to enable events
-- you wish to receive.)
-- * The [realize]("GI.Gtk.Objects.Widget#signal:realize") signal to take any necessary actions
-- when the widget is instantiated on a particular display.
-- (Create GDK resources in response to this signal.)
-- * The [sizeAllocate]("GI.Gtk.Objects.Widget#signal:sizeAllocate") signal to take any necessary
-- actions when the widget changes size.
-- * The [draw]("GI.Gtk.Objects.Widget#signal:draw") signal to handle redrawing the
-- contents of the widget.
-- 
-- 
-- The following code portion demonstrates using a drawing
-- area to display a circle in the normal widget foreground
-- color.
-- 
-- Note that GDK automatically clears the exposed area before sending
-- the expose event, and that drawing is implicitly clipped to the exposed
-- area. If you want to have a theme-provided background, you need
-- to call 'GI.Gtk.Functions.renderBackground' in your [draw](#signal:draw) method.
-- 
-- == Simple GtkDrawingArea usage
-- 
-- 
-- === /C code/
-- >
-- >gboolean
-- >draw_callback (GtkWidget *widget, cairo_t *cr, gpointer data)
-- >{
-- >  guint width, height;
-- >  GdkRGBA color;
-- >  GtkStyleContext *context;
-- >
-- >  context = gtk_widget_get_style_context (widget);
-- >
-- >  width = gtk_widget_get_allocated_width (widget);
-- >  height = gtk_widget_get_allocated_height (widget);
-- >
-- >  gtk_render_background (context, cr, 0, 0, width, height);
-- >
-- >  cairo_arc (cr,
-- >             width / 2.0, height / 2.0,
-- >             MIN (width, height) / 2.0,
-- >             0, 2 * G_PI);
-- >
-- >  gtk_style_context_get_color (context,
-- >                               gtk_style_context_get_state (context),
-- >                               &color);
-- >  gdk_cairo_set_source_rgba (cr, &color);
-- >
-- >  cairo_fill (cr);
-- >
-- > return FALSE;
-- >}
-- >[...]
-- >  GtkWidget *drawing_area = gtk_drawing_area_new ();
-- >  gtk_widget_set_size_request (drawing_area, 100, 100);
-- >  g_signal_connect (G_OBJECT (drawing_area), "draw",
-- >                    G_CALLBACK (draw_callback), NULL);
-- 
-- 
-- Draw signals are normally delivered when a drawing area first comes
-- onscreen, or when it’s covered by another window and then uncovered.
-- You can also force an expose event by adding to the “damage region”
-- of the drawing area’s window; 'GI.Gtk.Objects.Widget.widgetQueueDrawArea' and
-- 'GI.Gdk.Objects.Window.windowInvalidateRect' are equally good ways to do this.
-- You’ll then get a draw signal for the invalid region.
-- 
-- The available routines for drawing are documented on the
-- [GDK Drawing Primitives][gdk3-Cairo-Interaction] page
-- and the cairo documentation.
-- 
-- To receive mouse events on a drawing area, you will need to enable
-- them with 'GI.Gtk.Objects.Widget.widgetAddEvents'. To receive keyboard events, you
-- will need to set the “can-focus” property on the drawing area, and you
-- should probably draw some user-visible indication that the drawing
-- area is focused. Use 'GI.Gtk.Objects.Widget.widgetHasFocus' in your expose event
-- handler to decide whether to draw the focus indicator. See
-- 'GI.Gtk.Functions.renderFocus' for one way to draw focus.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.DrawingArea
    ( 

-- * Exported types
    DrawingArea(..)                         ,
    IsDrawingArea                           ,
    toDrawingArea                           ,
    noDrawingArea                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDrawingAreaMethod                ,
#endif


-- ** new #method:new#

    drawingAreaNew                          ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype DrawingArea = DrawingArea (ManagedPtr DrawingArea)
    deriving (Eq)
foreign import ccall "gtk_drawing_area_get_type"
    c_gtk_drawing_area_get_type :: IO GType

instance GObject DrawingArea where
    gobjectType = c_gtk_drawing_area_get_type
    

-- | Convert 'DrawingArea' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DrawingArea where
    toGValue o = do
        gtype <- c_gtk_drawing_area_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DrawingArea)
        B.ManagedPtr.newObject DrawingArea ptr
        
    

-- | Type class for types which can be safely cast to `DrawingArea`, for instance with `toDrawingArea`.
class (GObject o, O.IsDescendantOf DrawingArea o) => IsDrawingArea o
instance (GObject o, O.IsDescendantOf DrawingArea o) => IsDrawingArea o

instance O.HasParentTypes DrawingArea
type instance O.ParentTypes DrawingArea = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `DrawingArea`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDrawingArea :: (MonadIO m, IsDrawingArea o) => o -> m DrawingArea
toDrawingArea = liftIO . unsafeCastTo DrawingArea

-- | A convenience alias for `Nothing` :: `Maybe` `DrawingArea`.
noDrawingArea :: Maybe DrawingArea
noDrawingArea = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDrawingAreaMethod (t :: Symbol) (o :: *) :: * where
    ResolveDrawingAreaMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveDrawingAreaMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveDrawingAreaMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveDrawingAreaMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveDrawingAreaMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveDrawingAreaMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveDrawingAreaMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveDrawingAreaMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDrawingAreaMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDrawingAreaMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveDrawingAreaMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveDrawingAreaMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveDrawingAreaMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveDrawingAreaMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveDrawingAreaMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveDrawingAreaMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveDrawingAreaMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveDrawingAreaMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveDrawingAreaMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveDrawingAreaMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveDrawingAreaMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveDrawingAreaMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveDrawingAreaMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveDrawingAreaMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveDrawingAreaMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveDrawingAreaMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveDrawingAreaMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveDrawingAreaMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveDrawingAreaMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveDrawingAreaMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveDrawingAreaMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveDrawingAreaMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveDrawingAreaMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveDrawingAreaMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveDrawingAreaMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveDrawingAreaMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveDrawingAreaMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveDrawingAreaMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveDrawingAreaMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveDrawingAreaMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveDrawingAreaMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveDrawingAreaMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveDrawingAreaMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveDrawingAreaMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveDrawingAreaMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveDrawingAreaMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveDrawingAreaMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveDrawingAreaMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveDrawingAreaMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveDrawingAreaMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveDrawingAreaMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveDrawingAreaMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveDrawingAreaMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveDrawingAreaMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveDrawingAreaMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveDrawingAreaMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDrawingAreaMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveDrawingAreaMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDrawingAreaMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDrawingAreaMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveDrawingAreaMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveDrawingAreaMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveDrawingAreaMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveDrawingAreaMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveDrawingAreaMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveDrawingAreaMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveDrawingAreaMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveDrawingAreaMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveDrawingAreaMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveDrawingAreaMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveDrawingAreaMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveDrawingAreaMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveDrawingAreaMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveDrawingAreaMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveDrawingAreaMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveDrawingAreaMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveDrawingAreaMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveDrawingAreaMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveDrawingAreaMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveDrawingAreaMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDrawingAreaMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveDrawingAreaMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveDrawingAreaMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveDrawingAreaMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveDrawingAreaMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveDrawingAreaMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveDrawingAreaMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveDrawingAreaMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveDrawingAreaMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveDrawingAreaMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveDrawingAreaMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveDrawingAreaMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveDrawingAreaMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveDrawingAreaMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveDrawingAreaMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveDrawingAreaMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveDrawingAreaMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveDrawingAreaMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDrawingAreaMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDrawingAreaMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveDrawingAreaMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveDrawingAreaMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveDrawingAreaMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveDrawingAreaMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveDrawingAreaMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveDrawingAreaMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveDrawingAreaMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveDrawingAreaMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveDrawingAreaMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveDrawingAreaMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveDrawingAreaMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveDrawingAreaMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveDrawingAreaMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveDrawingAreaMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveDrawingAreaMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDrawingAreaMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDrawingAreaMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveDrawingAreaMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveDrawingAreaMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveDrawingAreaMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveDrawingAreaMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveDrawingAreaMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveDrawingAreaMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveDrawingAreaMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveDrawingAreaMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveDrawingAreaMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveDrawingAreaMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDrawingAreaMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveDrawingAreaMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveDrawingAreaMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveDrawingAreaMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveDrawingAreaMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveDrawingAreaMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveDrawingAreaMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveDrawingAreaMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveDrawingAreaMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveDrawingAreaMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDrawingAreaMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDrawingAreaMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveDrawingAreaMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveDrawingAreaMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveDrawingAreaMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDrawingAreaMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveDrawingAreaMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveDrawingAreaMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveDrawingAreaMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveDrawingAreaMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveDrawingAreaMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDrawingAreaMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveDrawingAreaMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveDrawingAreaMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDrawingAreaMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveDrawingAreaMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveDrawingAreaMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveDrawingAreaMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveDrawingAreaMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveDrawingAreaMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveDrawingAreaMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveDrawingAreaMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveDrawingAreaMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveDrawingAreaMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveDrawingAreaMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveDrawingAreaMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveDrawingAreaMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveDrawingAreaMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveDrawingAreaMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveDrawingAreaMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveDrawingAreaMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDrawingAreaMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveDrawingAreaMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveDrawingAreaMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveDrawingAreaMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveDrawingAreaMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveDrawingAreaMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveDrawingAreaMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveDrawingAreaMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveDrawingAreaMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveDrawingAreaMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveDrawingAreaMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveDrawingAreaMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveDrawingAreaMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveDrawingAreaMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveDrawingAreaMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveDrawingAreaMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveDrawingAreaMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveDrawingAreaMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveDrawingAreaMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveDrawingAreaMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveDrawingAreaMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveDrawingAreaMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveDrawingAreaMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveDrawingAreaMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveDrawingAreaMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveDrawingAreaMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveDrawingAreaMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveDrawingAreaMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveDrawingAreaMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveDrawingAreaMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveDrawingAreaMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveDrawingAreaMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveDrawingAreaMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveDrawingAreaMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveDrawingAreaMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveDrawingAreaMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveDrawingAreaMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveDrawingAreaMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveDrawingAreaMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveDrawingAreaMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDrawingAreaMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDrawingAreaMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveDrawingAreaMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveDrawingAreaMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveDrawingAreaMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveDrawingAreaMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveDrawingAreaMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveDrawingAreaMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveDrawingAreaMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveDrawingAreaMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveDrawingAreaMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveDrawingAreaMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveDrawingAreaMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveDrawingAreaMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveDrawingAreaMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveDrawingAreaMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveDrawingAreaMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveDrawingAreaMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveDrawingAreaMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveDrawingAreaMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveDrawingAreaMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveDrawingAreaMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveDrawingAreaMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveDrawingAreaMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveDrawingAreaMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveDrawingAreaMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveDrawingAreaMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveDrawingAreaMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveDrawingAreaMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveDrawingAreaMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveDrawingAreaMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveDrawingAreaMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveDrawingAreaMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveDrawingAreaMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveDrawingAreaMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveDrawingAreaMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveDrawingAreaMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveDrawingAreaMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDrawingAreaMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDrawingAreaMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveDrawingAreaMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveDrawingAreaMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveDrawingAreaMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveDrawingAreaMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveDrawingAreaMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveDrawingAreaMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveDrawingAreaMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveDrawingAreaMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveDrawingAreaMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveDrawingAreaMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveDrawingAreaMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveDrawingAreaMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveDrawingAreaMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveDrawingAreaMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveDrawingAreaMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveDrawingAreaMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveDrawingAreaMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveDrawingAreaMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveDrawingAreaMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveDrawingAreaMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveDrawingAreaMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveDrawingAreaMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveDrawingAreaMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveDrawingAreaMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveDrawingAreaMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDrawingAreaMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveDrawingAreaMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveDrawingAreaMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveDrawingAreaMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveDrawingAreaMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveDrawingAreaMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveDrawingAreaMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveDrawingAreaMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveDrawingAreaMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveDrawingAreaMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveDrawingAreaMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveDrawingAreaMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveDrawingAreaMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveDrawingAreaMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveDrawingAreaMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveDrawingAreaMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveDrawingAreaMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveDrawingAreaMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveDrawingAreaMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDrawingAreaMethod t DrawingArea, O.MethodInfo info DrawingArea p) => OL.IsLabel t (DrawingArea -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DrawingArea
type instance O.AttributeList DrawingArea = DrawingAreaAttributeList
type DrawingAreaAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DrawingArea = DrawingAreaSignalList
type DrawingAreaSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method DrawingArea::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "DrawingArea" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_drawing_area_new" gtk_drawing_area_new :: 
    IO (Ptr DrawingArea)

-- | Creates a new drawing area.
drawingAreaNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m DrawingArea
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.DrawingArea.DrawingArea'
drawingAreaNew  = liftIO $ do
    result <- gtk_drawing_area_new
    checkUnexpectedReturnNULL "drawingAreaNew" result
    result' <- (newObject DrawingArea) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

