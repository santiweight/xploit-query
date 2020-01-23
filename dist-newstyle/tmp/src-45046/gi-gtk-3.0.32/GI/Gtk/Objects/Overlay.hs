{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkOverlay is a container which contains a single main child, on top
-- of which it can place “overlay” widgets. The position of each overlay
-- widget is determined by its t'GI.Gtk.Objects.Widget.Widget':@/halign/@ and t'GI.Gtk.Objects.Widget.Widget':@/valign/@
-- properties. E.g. a widget with both alignments set to 'GI.Gtk.Enums.AlignStart'
-- will be placed at the top left corner of the GtkOverlay container,
-- whereas an overlay with halign set to 'GI.Gtk.Enums.AlignCenter' and valign set
-- to 'GI.Gtk.Enums.AlignEnd' will be placed a the bottom edge of the GtkOverlay,
-- horizontally centered. The position can be adjusted by setting the margin
-- properties of the child to non-zero values.
-- 
-- More complicated placement of overlays is possible by connecting
-- to the t'GI.Gtk.Objects.Overlay.Overlay'::@/get-child-position/@ signal.
-- 
-- An overlay’s minimum and natural sizes are those of its main child. The sizes
-- of overlay children are not considered when measuring these preferred sizes.
-- 
-- = GtkOverlay as GtkBuildable
-- 
-- The GtkOverlay implementation of the GtkBuildable interface
-- supports placing a child as an overlay by specifying “overlay” as
-- the “type” attribute of a @\<child>@ element.
-- 
-- = CSS nodes
-- 
-- GtkOverlay has a single CSS node with the name “overlay”. Overlay children
-- whose alignments cause them to be positioned at an edge get the style classes
-- “.left”, “.right”, “.top”, and\/or “.bottom” according to their position.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Overlay
    ( 

-- * Exported types
    Overlay(..)                             ,
    IsOverlay                               ,
    toOverlay                               ,
    noOverlay                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveOverlayMethod                    ,
#endif


-- ** addOverlay #method:addOverlay#

#if defined(ENABLE_OVERLOADING)
    OverlayAddOverlayMethodInfo             ,
#endif
    overlayAddOverlay                       ,


-- ** getOverlayPassThrough #method:getOverlayPassThrough#

#if defined(ENABLE_OVERLOADING)
    OverlayGetOverlayPassThroughMethodInfo  ,
#endif
    overlayGetOverlayPassThrough            ,


-- ** new #method:new#

    overlayNew                              ,


-- ** reorderOverlay #method:reorderOverlay#

#if defined(ENABLE_OVERLOADING)
    OverlayReorderOverlayMethodInfo         ,
#endif
    overlayReorderOverlay                   ,


-- ** setOverlayPassThrough #method:setOverlayPassThrough#

#if defined(ENABLE_OVERLOADING)
    OverlaySetOverlayPassThroughMethodInfo  ,
#endif
    overlaySetOverlayPassThrough            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Overlay = Overlay (ManagedPtr Overlay)
    deriving (Eq)
foreign import ccall "gtk_overlay_get_type"
    c_gtk_overlay_get_type :: IO GType

instance GObject Overlay where
    gobjectType = c_gtk_overlay_get_type
    

-- | Convert 'Overlay' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Overlay where
    toGValue o = do
        gtype <- c_gtk_overlay_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Overlay)
        B.ManagedPtr.newObject Overlay ptr
        
    

-- | Type class for types which can be safely cast to `Overlay`, for instance with `toOverlay`.
class (GObject o, O.IsDescendantOf Overlay o) => IsOverlay o
instance (GObject o, O.IsDescendantOf Overlay o) => IsOverlay o

instance O.HasParentTypes Overlay
type instance O.ParentTypes Overlay = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Overlay`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toOverlay :: (MonadIO m, IsOverlay o) => o -> m Overlay
toOverlay = liftIO . unsafeCastTo Overlay

-- | A convenience alias for `Nothing` :: `Maybe` `Overlay`.
noOverlay :: Maybe Overlay
noOverlay = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveOverlayMethod (t :: Symbol) (o :: *) :: * where
    ResolveOverlayMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveOverlayMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveOverlayMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveOverlayMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveOverlayMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveOverlayMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveOverlayMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveOverlayMethod "addOverlay" o = OverlayAddOverlayMethodInfo
    ResolveOverlayMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveOverlayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveOverlayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveOverlayMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveOverlayMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveOverlayMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveOverlayMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveOverlayMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveOverlayMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveOverlayMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveOverlayMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveOverlayMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveOverlayMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveOverlayMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveOverlayMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveOverlayMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveOverlayMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveOverlayMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveOverlayMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveOverlayMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveOverlayMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveOverlayMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveOverlayMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveOverlayMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveOverlayMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveOverlayMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveOverlayMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveOverlayMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveOverlayMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveOverlayMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveOverlayMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveOverlayMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveOverlayMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveOverlayMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveOverlayMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveOverlayMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveOverlayMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveOverlayMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveOverlayMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveOverlayMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveOverlayMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveOverlayMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveOverlayMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveOverlayMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveOverlayMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveOverlayMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveOverlayMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveOverlayMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveOverlayMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveOverlayMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveOverlayMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveOverlayMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveOverlayMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveOverlayMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveOverlayMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveOverlayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveOverlayMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveOverlayMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveOverlayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveOverlayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveOverlayMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveOverlayMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveOverlayMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveOverlayMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveOverlayMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveOverlayMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveOverlayMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveOverlayMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveOverlayMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveOverlayMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveOverlayMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveOverlayMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveOverlayMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveOverlayMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveOverlayMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveOverlayMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveOverlayMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveOverlayMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveOverlayMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveOverlayMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveOverlayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveOverlayMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveOverlayMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveOverlayMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveOverlayMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveOverlayMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveOverlayMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveOverlayMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveOverlayMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveOverlayMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveOverlayMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveOverlayMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveOverlayMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveOverlayMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveOverlayMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveOverlayMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveOverlayMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveOverlayMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveOverlayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveOverlayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveOverlayMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveOverlayMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveOverlayMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveOverlayMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveOverlayMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveOverlayMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveOverlayMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveOverlayMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveOverlayMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveOverlayMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveOverlayMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveOverlayMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveOverlayMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveOverlayMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveOverlayMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveOverlayMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveOverlayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveOverlayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveOverlayMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveOverlayMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveOverlayMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveOverlayMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveOverlayMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveOverlayMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveOverlayMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveOverlayMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveOverlayMethod "reorderOverlay" o = OverlayReorderOverlayMethodInfo
    ResolveOverlayMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveOverlayMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveOverlayMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveOverlayMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveOverlayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveOverlayMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveOverlayMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveOverlayMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveOverlayMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveOverlayMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveOverlayMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveOverlayMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveOverlayMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveOverlayMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveOverlayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveOverlayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveOverlayMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveOverlayMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveOverlayMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveOverlayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveOverlayMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveOverlayMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveOverlayMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveOverlayMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveOverlayMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveOverlayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveOverlayMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveOverlayMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveOverlayMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveOverlayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveOverlayMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveOverlayMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveOverlayMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveOverlayMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveOverlayMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveOverlayMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveOverlayMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveOverlayMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveOverlayMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveOverlayMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveOverlayMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveOverlayMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveOverlayMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveOverlayMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveOverlayMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveOverlayMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveOverlayMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveOverlayMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveOverlayMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveOverlayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveOverlayMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveOverlayMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveOverlayMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveOverlayMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveOverlayMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveOverlayMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveOverlayMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveOverlayMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveOverlayMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveOverlayMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveOverlayMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveOverlayMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveOverlayMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveOverlayMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveOverlayMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveOverlayMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveOverlayMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveOverlayMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveOverlayMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveOverlayMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveOverlayMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveOverlayMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveOverlayMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveOverlayMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveOverlayMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveOverlayMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveOverlayMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveOverlayMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveOverlayMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveOverlayMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveOverlayMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveOverlayMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveOverlayMethod "getOverlayPassThrough" o = OverlayGetOverlayPassThroughMethodInfo
    ResolveOverlayMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveOverlayMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveOverlayMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveOverlayMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveOverlayMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveOverlayMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveOverlayMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveOverlayMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveOverlayMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveOverlayMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveOverlayMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveOverlayMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveOverlayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveOverlayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveOverlayMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveOverlayMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveOverlayMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveOverlayMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveOverlayMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveOverlayMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveOverlayMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveOverlayMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveOverlayMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveOverlayMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveOverlayMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveOverlayMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveOverlayMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveOverlayMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveOverlayMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveOverlayMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveOverlayMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveOverlayMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveOverlayMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveOverlayMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveOverlayMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveOverlayMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveOverlayMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveOverlayMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveOverlayMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveOverlayMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveOverlayMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveOverlayMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveOverlayMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveOverlayMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveOverlayMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveOverlayMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveOverlayMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveOverlayMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveOverlayMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveOverlayMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveOverlayMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveOverlayMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveOverlayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveOverlayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveOverlayMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveOverlayMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveOverlayMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveOverlayMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveOverlayMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveOverlayMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveOverlayMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveOverlayMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveOverlayMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveOverlayMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveOverlayMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveOverlayMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveOverlayMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveOverlayMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveOverlayMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveOverlayMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveOverlayMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveOverlayMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveOverlayMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveOverlayMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveOverlayMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveOverlayMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveOverlayMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveOverlayMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveOverlayMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveOverlayMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveOverlayMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveOverlayMethod "setOverlayPassThrough" o = OverlaySetOverlayPassThroughMethodInfo
    ResolveOverlayMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveOverlayMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveOverlayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveOverlayMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveOverlayMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveOverlayMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveOverlayMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveOverlayMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveOverlayMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveOverlayMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveOverlayMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveOverlayMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveOverlayMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveOverlayMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveOverlayMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveOverlayMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveOverlayMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveOverlayMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveOverlayMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveOverlayMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveOverlayMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveOverlayMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveOverlayMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveOverlayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveOverlayMethod t Overlay, O.MethodInfo info Overlay p) => OL.IsLabel t (Overlay -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Overlay
type instance O.AttributeList Overlay = OverlayAttributeList
type OverlayAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Overlay = OverlaySignalList
type OverlaySignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Overlay::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Overlay" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_overlay_new" gtk_overlay_new :: 
    IO (Ptr Overlay)

-- | Creates a new t'GI.Gtk.Objects.Overlay.Overlay'.
-- 
-- /Since: 3.2/
overlayNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Overlay
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Overlay.Overlay' object.
overlayNew  = liftIO $ do
    result <- gtk_overlay_new
    checkUnexpectedReturnNULL "overlayNew" result
    result' <- (newObject Overlay) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Overlay::add_overlay
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "overlay"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Overlay" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkOverlay" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkWidget to be added to the container"
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

foreign import ccall "gtk_overlay_add_overlay" gtk_overlay_add_overlay :: 
    Ptr Overlay ->                          -- overlay : TInterface (Name {namespace = "Gtk", name = "Overlay"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@widget@/ to /@overlay@/.
-- 
-- The widget will be stacked on top of the main widget
-- added with 'GI.Gtk.Objects.Container.containerAdd'.
-- 
-- The position at which /@widget@/ is placed is determined
-- from its t'GI.Gtk.Objects.Widget.Widget':@/halign/@ and t'GI.Gtk.Objects.Widget.Widget':@/valign/@ properties.
-- 
-- /Since: 3.2/
overlayAddOverlay ::
    (B.CallStack.HasCallStack, MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@overlay@/: a t'GI.Gtk.Objects.Overlay.Overlay'
    -> b
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget' to be added to the container
    -> m ()
overlayAddOverlay overlay widget = liftIO $ do
    overlay' <- unsafeManagedPtrCastPtr overlay
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_overlay_add_overlay overlay' widget'
    touchManagedPtr overlay
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data OverlayAddOverlayMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) => O.MethodInfo OverlayAddOverlayMethodInfo a signature where
    overloadedMethod = overlayAddOverlay

#endif

-- method Overlay::get_overlay_pass_through
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "overlay"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Overlay" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkOverlay" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "an overlay child of #GtkOverlay"
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

foreign import ccall "gtk_overlay_get_overlay_pass_through" gtk_overlay_get_overlay_pass_through :: 
    Ptr Overlay ->                          -- overlay : TInterface (Name {namespace = "Gtk", name = "Overlay"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Convenience function to get the value of the t'GI.Gtk.Objects.Overlay.Overlay':@/pass-through/@
-- child property for /@widget@/.
-- 
-- /Since: 3.18/
overlayGetOverlayPassThrough ::
    (B.CallStack.HasCallStack, MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@overlay@/: a t'GI.Gtk.Objects.Overlay.Overlay'
    -> b
    -- ^ /@widget@/: an overlay child of t'GI.Gtk.Objects.Overlay.Overlay'
    -> m Bool
    -- ^ __Returns:__ whether the widget is a pass through child.
overlayGetOverlayPassThrough overlay widget = liftIO $ do
    overlay' <- unsafeManagedPtrCastPtr overlay
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_overlay_get_overlay_pass_through overlay' widget'
    let result' = (/= 0) result
    touchManagedPtr overlay
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
data OverlayGetOverlayPassThroughMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) => O.MethodInfo OverlayGetOverlayPassThroughMethodInfo a signature where
    overloadedMethod = overlayGetOverlayPassThrough

#endif

-- method Overlay::reorder_overlay
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "overlay"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Overlay" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkOverlay" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the overlaid #GtkWidget to move"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "index_"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the new index for @child in the list of overlay children\n  of @overlay, starting from 0. If negative, indicates the end of\n  the list"
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

foreign import ccall "gtk_overlay_reorder_overlay" gtk_overlay_reorder_overlay :: 
    Ptr Overlay ->                          -- overlay : TInterface (Name {namespace = "Gtk", name = "Overlay"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- index_ : TBasicType TInt
    IO ()

-- | Moves /@child@/ to a new /@index@/ in the list of /@overlay@/ children.
-- The list contains overlays in the order that these were
-- added to /@overlay@/ by default. See also t'GI.Gtk.Objects.Overlay.Overlay':@/index/@.
-- 
-- A widget’s index in the /@overlay@/ children list determines which order
-- the children are drawn if they overlap. The first child is drawn at
-- the bottom. It also affects the default focus chain order.
-- 
-- /Since: 3.18/
overlayReorderOverlay ::
    (B.CallStack.HasCallStack, MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@overlay@/: a t'GI.Gtk.Objects.Overlay.Overlay'
    -> b
    -- ^ /@child@/: the overlaid t'GI.Gtk.Objects.Widget.Widget' to move
    -> Int32
    -- ^ /@index_@/: the new index for /@child@/ in the list of overlay children
    --   of /@overlay@/, starting from 0. If negative, indicates the end of
    --   the list
    -> m ()
overlayReorderOverlay overlay child index_ = liftIO $ do
    overlay' <- unsafeManagedPtrCastPtr overlay
    child' <- unsafeManagedPtrCastPtr child
    gtk_overlay_reorder_overlay overlay' child' index_
    touchManagedPtr overlay
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data OverlayReorderOverlayMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) => O.MethodInfo OverlayReorderOverlayMethodInfo a signature where
    overloadedMethod = overlayReorderOverlay

#endif

-- method Overlay::set_overlay_pass_through
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "overlay"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Overlay" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkOverlay" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "an overlay child of #GtkOverlay"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pass_through"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether the child should pass the input through"
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

foreign import ccall "gtk_overlay_set_overlay_pass_through" gtk_overlay_set_overlay_pass_through :: 
    Ptr Overlay ->                          -- overlay : TInterface (Name {namespace = "Gtk", name = "Overlay"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- pass_through : TBasicType TBoolean
    IO ()

-- | Convenience function to set the value of the t'GI.Gtk.Objects.Overlay.Overlay':@/pass-through/@
-- child property for /@widget@/.
-- 
-- /Since: 3.18/
overlaySetOverlayPassThrough ::
    (B.CallStack.HasCallStack, MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@overlay@/: a t'GI.Gtk.Objects.Overlay.Overlay'
    -> b
    -- ^ /@widget@/: an overlay child of t'GI.Gtk.Objects.Overlay.Overlay'
    -> Bool
    -- ^ /@passThrough@/: whether the child should pass the input through
    -> m ()
overlaySetOverlayPassThrough overlay widget passThrough = liftIO $ do
    overlay' <- unsafeManagedPtrCastPtr overlay
    widget' <- unsafeManagedPtrCastPtr widget
    let passThrough' = (fromIntegral . fromEnum) passThrough
    gtk_overlay_set_overlay_pass_through overlay' widget' passThrough'
    touchManagedPtr overlay
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data OverlaySetOverlayPassThroughMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsOverlay a, Gtk.Widget.IsWidget b) => O.MethodInfo OverlaySetOverlayPassThroughMethodInfo a signature where
    overloadedMethod = overlaySetOverlayPassThrough

#endif

