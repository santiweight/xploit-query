{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.HSV.HSV' is the “color wheel” part of a complete color selector widget.
-- It allows to select a color by determining its HSV components in an
-- intuitive way. Moving the selection around the outer ring changes the hue,
-- and moving the selection point inside the inner triangle changes value and
-- saturation.
-- 
-- t'GI.Gtk.Objects.HSV.HSV' has been deprecated together with t'GI.Gtk.Objects.ColorSelection.ColorSelection', where
-- it was used.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HSV
    ( 

-- * Exported types
    HSV(..)                                 ,
    IsHSV                                   ,
    toHSV                                   ,
    noHSV                                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHSVMethod                        ,
#endif


-- ** getColor #method:getColor#

#if defined(ENABLE_OVERLOADING)
    HSVGetColorMethodInfo                   ,
#endif
    hSVGetColor                             ,


-- ** getMetrics #method:getMetrics#

#if defined(ENABLE_OVERLOADING)
    HSVGetMetricsMethodInfo                 ,
#endif
    hSVGetMetrics                           ,


-- ** isAdjusting #method:isAdjusting#

#if defined(ENABLE_OVERLOADING)
    HSVIsAdjustingMethodInfo                ,
#endif
    hSVIsAdjusting                          ,


-- ** new #method:new#

    hSVNew                                  ,


-- ** setColor #method:setColor#

#if defined(ENABLE_OVERLOADING)
    HSVSetColorMethodInfo                   ,
#endif
    hSVSetColor                             ,


-- ** setMetrics #method:setMetrics#

#if defined(ENABLE_OVERLOADING)
    HSVSetMetricsMethodInfo                 ,
#endif
    hSVSetMetrics                           ,


-- ** toRgb #method:toRgb#

    hSVToRgb                                ,




 -- * Signals
-- ** changed #signal:changed#

    C_HSVChangedCallback                    ,
    HSVChangedCallback                      ,
#if defined(ENABLE_OVERLOADING)
    HSVChangedSignalInfo                    ,
#endif
    afterHSVChanged                         ,
    genClosure_HSVChanged                   ,
    mk_HSVChangedCallback                   ,
    noHSVChangedCallback                    ,
    onHSVChanged                            ,
    wrap_HSVChangedCallback                 ,


-- ** move #signal:move#

    C_HSVMoveCallback                       ,
    HSVMoveCallback                         ,
#if defined(ENABLE_OVERLOADING)
    HSVMoveSignalInfo                       ,
#endif
    afterHSVMove                            ,
    genClosure_HSVMove                      ,
    mk_HSVMoveCallback                      ,
    noHSVMoveCallback                       ,
    onHSVMove                               ,
    wrap_HSVMoveCallback                    ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HSV = HSV (ManagedPtr HSV)
    deriving (Eq)
foreign import ccall "gtk_hsv_get_type"
    c_gtk_hsv_get_type :: IO GType

instance GObject HSV where
    gobjectType = c_gtk_hsv_get_type
    

-- | Convert 'HSV' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HSV where
    toGValue o = do
        gtype <- c_gtk_hsv_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HSV)
        B.ManagedPtr.newObject HSV ptr
        
    

-- | Type class for types which can be safely cast to `HSV`, for instance with `toHSV`.
class (GObject o, O.IsDescendantOf HSV o) => IsHSV o
instance (GObject o, O.IsDescendantOf HSV o) => IsHSV o

instance O.HasParentTypes HSV
type instance O.ParentTypes HSV = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `HSV`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHSV :: (MonadIO m, IsHSV o) => o -> m HSV
toHSV = liftIO . unsafeCastTo HSV

-- | A convenience alias for `Nothing` :: `Maybe` `HSV`.
noHSV :: Maybe HSV
noHSV = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHSVMethod (t :: Symbol) (o :: *) :: * where
    ResolveHSVMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHSVMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHSVMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHSVMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHSVMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHSVMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHSVMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHSVMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHSVMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHSVMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHSVMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHSVMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveHSVMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHSVMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHSVMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHSVMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHSVMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHSVMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHSVMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHSVMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHSVMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHSVMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHSVMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHSVMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHSVMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHSVMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHSVMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHSVMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHSVMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHSVMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHSVMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHSVMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHSVMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHSVMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHSVMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHSVMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHSVMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHSVMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHSVMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHSVMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHSVMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHSVMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHSVMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHSVMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHSVMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHSVMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHSVMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHSVMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHSVMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHSVMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHSVMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHSVMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHSVMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHSVMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHSVMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHSVMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHSVMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHSVMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHSVMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHSVMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHSVMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHSVMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHSVMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHSVMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHSVMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHSVMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHSVMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHSVMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHSVMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHSVMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHSVMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHSVMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHSVMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHSVMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHSVMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHSVMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHSVMethod "isAdjusting" o = HSVIsAdjustingMethodInfo
    ResolveHSVMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHSVMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHSVMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHSVMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHSVMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHSVMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHSVMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHSVMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHSVMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHSVMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHSVMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHSVMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHSVMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHSVMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHSVMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHSVMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHSVMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHSVMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHSVMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHSVMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHSVMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHSVMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHSVMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHSVMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHSVMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHSVMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHSVMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHSVMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHSVMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHSVMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHSVMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHSVMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHSVMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHSVMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHSVMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHSVMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHSVMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHSVMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHSVMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHSVMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHSVMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHSVMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHSVMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHSVMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHSVMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHSVMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHSVMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHSVMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHSVMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHSVMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHSVMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHSVMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHSVMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHSVMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHSVMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHSVMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHSVMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHSVMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHSVMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHSVMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHSVMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHSVMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHSVMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHSVMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHSVMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHSVMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHSVMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHSVMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHSVMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHSVMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHSVMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHSVMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHSVMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHSVMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHSVMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHSVMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHSVMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHSVMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHSVMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHSVMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHSVMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHSVMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHSVMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHSVMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHSVMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHSVMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHSVMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHSVMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHSVMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHSVMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHSVMethod "getColor" o = HSVGetColorMethodInfo
    ResolveHSVMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHSVMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHSVMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHSVMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHSVMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHSVMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHSVMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHSVMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHSVMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHSVMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHSVMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHSVMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHSVMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHSVMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHSVMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHSVMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHSVMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHSVMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHSVMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHSVMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHSVMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHSVMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHSVMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHSVMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHSVMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHSVMethod "getMetrics" o = HSVGetMetricsMethodInfo
    ResolveHSVMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHSVMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHSVMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHSVMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHSVMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHSVMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHSVMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHSVMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHSVMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHSVMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHSVMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHSVMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHSVMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHSVMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHSVMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHSVMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHSVMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHSVMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHSVMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHSVMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHSVMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHSVMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHSVMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHSVMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHSVMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHSVMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHSVMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHSVMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHSVMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHSVMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHSVMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHSVMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHSVMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHSVMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHSVMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHSVMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHSVMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHSVMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHSVMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHSVMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHSVMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHSVMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHSVMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHSVMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHSVMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHSVMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHSVMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHSVMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHSVMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHSVMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHSVMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHSVMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHSVMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHSVMethod "setColor" o = HSVSetColorMethodInfo
    ResolveHSVMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHSVMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHSVMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHSVMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHSVMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHSVMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHSVMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHSVMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHSVMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHSVMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHSVMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHSVMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHSVMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHSVMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHSVMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHSVMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHSVMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHSVMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHSVMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHSVMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHSVMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHSVMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHSVMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHSVMethod "setMetrics" o = HSVSetMetricsMethodInfo
    ResolveHSVMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHSVMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHSVMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHSVMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHSVMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHSVMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHSVMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHSVMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHSVMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHSVMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHSVMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHSVMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHSVMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHSVMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHSVMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHSVMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHSVMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHSVMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHSVMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHSVMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHSVMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHSVMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHSVMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHSVMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHSVMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHSVMethod t HSV, O.MethodInfo info HSV p) => OL.IsLabel t (HSV -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal HSV::changed
-- | /No description available in the introspection data./
type HSVChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `HSVChangedCallback`@.
noHSVChangedCallback :: Maybe HSVChangedCallback
noHSVChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_HSVChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_HSVChangedCallback`.
foreign import ccall "wrapper"
    mk_HSVChangedCallback :: C_HSVChangedCallback -> IO (FunPtr C_HSVChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_HSVChanged :: MonadIO m => HSVChangedCallback -> m (GClosure C_HSVChangedCallback)
genClosure_HSVChanged cb = liftIO $ do
    let cb' = wrap_HSVChangedCallback cb
    mk_HSVChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `HSVChangedCallback` into a `C_HSVChangedCallback`.
wrap_HSVChangedCallback ::
    HSVChangedCallback ->
    C_HSVChangedCallback
wrap_HSVChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' hSV #changed callback
-- @
-- 
-- 
onHSVChanged :: (IsHSV a, MonadIO m) => a -> HSVChangedCallback -> m SignalHandlerId
onHSVChanged obj cb = liftIO $ do
    let cb' = wrap_HSVChangedCallback cb
    cb'' <- mk_HSVChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' hSV #changed callback
-- @
-- 
-- 
afterHSVChanged :: (IsHSV a, MonadIO m) => a -> HSVChangedCallback -> m SignalHandlerId
afterHSVChanged obj cb = liftIO $ do
    let cb' = wrap_HSVChangedCallback cb
    cb'' <- mk_HSVChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data HSVChangedSignalInfo
instance SignalInfo HSVChangedSignalInfo where
    type HaskellCallbackType HSVChangedSignalInfo = HSVChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_HSVChangedCallback cb
        cb'' <- mk_HSVChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- signal HSV::move
-- | /No description available in the introspection data./
type HSVMoveCallback =
    Gtk.Enums.DirectionType
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `HSVMoveCallback`@.
noHSVMoveCallback :: Maybe HSVMoveCallback
noHSVMoveCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_HSVMoveCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_HSVMoveCallback`.
foreign import ccall "wrapper"
    mk_HSVMoveCallback :: C_HSVMoveCallback -> IO (FunPtr C_HSVMoveCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_HSVMove :: MonadIO m => HSVMoveCallback -> m (GClosure C_HSVMoveCallback)
genClosure_HSVMove cb = liftIO $ do
    let cb' = wrap_HSVMoveCallback cb
    mk_HSVMoveCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `HSVMoveCallback` into a `C_HSVMoveCallback`.
wrap_HSVMoveCallback ::
    HSVMoveCallback ->
    C_HSVMoveCallback
wrap_HSVMoveCallback _cb _ object _ = do
    let object' = (toEnum . fromIntegral) object
    _cb  object'


-- | Connect a signal handler for the [move](#signal:move) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' hSV #move callback
-- @
-- 
-- 
onHSVMove :: (IsHSV a, MonadIO m) => a -> HSVMoveCallback -> m SignalHandlerId
onHSVMove obj cb = liftIO $ do
    let cb' = wrap_HSVMoveCallback cb
    cb'' <- mk_HSVMoveCallback cb'
    connectSignalFunPtr obj "move" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [move](#signal:move) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' hSV #move callback
-- @
-- 
-- 
afterHSVMove :: (IsHSV a, MonadIO m) => a -> HSVMoveCallback -> m SignalHandlerId
afterHSVMove obj cb = liftIO $ do
    let cb' = wrap_HSVMoveCallback cb
    cb'' <- mk_HSVMoveCallback cb'
    connectSignalFunPtr obj "move" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data HSVMoveSignalInfo
instance SignalInfo HSVMoveSignalInfo where
    type HaskellCallbackType HSVMoveSignalInfo = HSVMoveCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_HSVMoveCallback cb
        cb'' <- mk_HSVMoveCallback cb'
        connectSignalFunPtr obj "move" cb'' connectMode detail

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HSV
type instance O.AttributeList HSV = HSVAttributeList
type HSVAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HSV = HSVSignalList
type HSVSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changed", HSVChangedSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("move", HSVMoveSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HSV::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HSV" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hsv_new" gtk_hsv_new :: 
    IO (Ptr HSV)

-- | Creates a new HSV color selector.
-- 
-- /Since: 2.14/
hSVNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m HSV
    -- ^ __Returns:__ A newly-created HSV color selector.
hSVNew  = liftIO $ do
    result <- gtk_hsv_new
    checkUnexpectedReturnNULL "hSVNew" result
    result' <- (newObject HSV) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method HSV::get_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hsv"
--           , argType = TInterface Name { namespace = "Gtk" , name = "HSV" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An HSV color selector"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "h"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the hue"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "s"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the saturation"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "v"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the value"
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

foreign import ccall "gtk_hsv_get_color" gtk_hsv_get_color :: 
    Ptr HSV ->                              -- hsv : TInterface (Name {namespace = "Gtk", name = "HSV"})
    Ptr CDouble ->                          -- h : TBasicType TDouble
    Ptr CDouble ->                          -- s : TBasicType TDouble
    Ptr CDouble ->                          -- v : TBasicType TDouble
    IO ()

-- | Queries the current color in an HSV color selector.
-- Returned values will be in the [0.0, 1.0] range.
-- 
-- /Since: 2.14/
hSVGetColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsHSV a) =>
    a
    -- ^ /@hsv@/: An HSV color selector
    -> m ((Double, Double, Double))
hSVGetColor hsv = liftIO $ do
    hsv' <- unsafeManagedPtrCastPtr hsv
    h <- allocMem :: IO (Ptr CDouble)
    s <- allocMem :: IO (Ptr CDouble)
    v <- allocMem :: IO (Ptr CDouble)
    gtk_hsv_get_color hsv' h s v
    h' <- peek h
    let h'' = realToFrac h'
    s' <- peek s
    let s'' = realToFrac s'
    v' <- peek v
    let v'' = realToFrac v'
    touchManagedPtr hsv
    freeMem h
    freeMem s
    freeMem v
    return (h'', s'', v'')

#if defined(ENABLE_OVERLOADING)
data HSVGetColorMethodInfo
instance (signature ~ (m ((Double, Double, Double))), MonadIO m, IsHSV a) => O.MethodInfo HSVGetColorMethodInfo a signature where
    overloadedMethod = hSVGetColor

#endif

-- method HSV::get_metrics
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hsv"
--           , argType = TInterface Name { namespace = "Gtk" , name = "HSV" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An HSV color selector"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the diameter of the hue ring"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "ring_width"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the width of the hue ring"
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

foreign import ccall "gtk_hsv_get_metrics" gtk_hsv_get_metrics :: 
    Ptr HSV ->                              -- hsv : TInterface (Name {namespace = "Gtk", name = "HSV"})
    Ptr Int32 ->                            -- size : TBasicType TInt
    Ptr Int32 ->                            -- ring_width : TBasicType TInt
    IO ()

-- | Queries the size and ring width of an HSV color selector.
-- 
-- /Since: 2.14/
hSVGetMetrics ::
    (B.CallStack.HasCallStack, MonadIO m, IsHSV a) =>
    a
    -- ^ /@hsv@/: An HSV color selector
    -> m ((Int32, Int32))
hSVGetMetrics hsv = liftIO $ do
    hsv' <- unsafeManagedPtrCastPtr hsv
    size <- allocMem :: IO (Ptr Int32)
    ringWidth <- allocMem :: IO (Ptr Int32)
    gtk_hsv_get_metrics hsv' size ringWidth
    size' <- peek size
    ringWidth' <- peek ringWidth
    touchManagedPtr hsv
    freeMem size
    freeMem ringWidth
    return (size', ringWidth')

#if defined(ENABLE_OVERLOADING)
data HSVGetMetricsMethodInfo
instance (signature ~ (m ((Int32, Int32))), MonadIO m, IsHSV a) => O.MethodInfo HSVGetMetricsMethodInfo a signature where
    overloadedMethod = hSVGetMetrics

#endif

-- method HSV::is_adjusting
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hsv"
--           , argType = TInterface Name { namespace = "Gtk" , name = "HSV" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkHSV" , sinceVersion = Nothing }
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

foreign import ccall "gtk_hsv_is_adjusting" gtk_hsv_is_adjusting :: 
    Ptr HSV ->                              -- hsv : TInterface (Name {namespace = "Gtk", name = "HSV"})
    IO CInt

-- | An HSV color selector can be said to be adjusting if multiple rapid
-- changes are being made to its value, for example, when the user is
-- adjusting the value with the mouse. This function queries whether
-- the HSV color selector is being adjusted or not.
-- 
-- /Since: 2.14/
hSVIsAdjusting ::
    (B.CallStack.HasCallStack, MonadIO m, IsHSV a) =>
    a
    -- ^ /@hsv@/: A t'GI.Gtk.Objects.HSV.HSV'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if clients can ignore changes to the color value,
    --     since they may be transitory, or 'P.False' if they should consider
    --     the color value status to be final.
hSVIsAdjusting hsv = liftIO $ do
    hsv' <- unsafeManagedPtrCastPtr hsv
    result <- gtk_hsv_is_adjusting hsv'
    let result' = (/= 0) result
    touchManagedPtr hsv
    return result'

#if defined(ENABLE_OVERLOADING)
data HSVIsAdjustingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHSV a) => O.MethodInfo HSVIsAdjustingMethodInfo a signature where
    overloadedMethod = hSVIsAdjusting

#endif

-- method HSV::set_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hsv"
--           , argType = TInterface Name { namespace = "Gtk" , name = "HSV" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An HSV color selector"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "h"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Just "Hue" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "s"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Saturation" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "v"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value" , sinceVersion = Nothing }
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

foreign import ccall "gtk_hsv_set_color" gtk_hsv_set_color :: 
    Ptr HSV ->                              -- hsv : TInterface (Name {namespace = "Gtk", name = "HSV"})
    CDouble ->                              -- h : TBasicType TDouble
    CDouble ->                              -- s : TBasicType TDouble
    CDouble ->                              -- v : TBasicType TDouble
    IO ()

-- | Sets the current color in an HSV color selector.
-- Color component values must be in the [0.0, 1.0] range.
-- 
-- /Since: 2.14/
hSVSetColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsHSV a) =>
    a
    -- ^ /@hsv@/: An HSV color selector
    -> Double
    -- ^ /@h@/: Hue
    -> Double
    -- ^ /@s@/: Saturation
    -> Double
    -- ^ /@v@/: Value
    -> m ()
hSVSetColor hsv h s v = liftIO $ do
    hsv' <- unsafeManagedPtrCastPtr hsv
    let h' = realToFrac h
    let s' = realToFrac s
    let v' = realToFrac v
    gtk_hsv_set_color hsv' h' s' v'
    touchManagedPtr hsv
    return ()

#if defined(ENABLE_OVERLOADING)
data HSVSetColorMethodInfo
instance (signature ~ (Double -> Double -> Double -> m ()), MonadIO m, IsHSV a) => O.MethodInfo HSVSetColorMethodInfo a signature where
    overloadedMethod = hSVSetColor

#endif

-- method HSV::set_metrics
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "hsv"
--           , argType = TInterface Name { namespace = "Gtk" , name = "HSV" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An HSV color selector"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "size"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Diameter for the hue ring"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ring_width"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Width of the hue ring"
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

foreign import ccall "gtk_hsv_set_metrics" gtk_hsv_set_metrics :: 
    Ptr HSV ->                              -- hsv : TInterface (Name {namespace = "Gtk", name = "HSV"})
    Int32 ->                                -- size : TBasicType TInt
    Int32 ->                                -- ring_width : TBasicType TInt
    IO ()

-- | Sets the size and ring width of an HSV color selector.
-- 
-- /Since: 2.14/
hSVSetMetrics ::
    (B.CallStack.HasCallStack, MonadIO m, IsHSV a) =>
    a
    -- ^ /@hsv@/: An HSV color selector
    -> Int32
    -- ^ /@size@/: Diameter for the hue ring
    -> Int32
    -- ^ /@ringWidth@/: Width of the hue ring
    -> m ()
hSVSetMetrics hsv size ringWidth = liftIO $ do
    hsv' <- unsafeManagedPtrCastPtr hsv
    gtk_hsv_set_metrics hsv' size ringWidth
    touchManagedPtr hsv
    return ()

#if defined(ENABLE_OVERLOADING)
data HSVSetMetricsMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ()), MonadIO m, IsHSV a) => O.MethodInfo HSVSetMetricsMethodInfo a signature where
    overloadedMethod = hSVSetMetrics

#endif

-- method HSV::to_rgb
-- method type : MemberFunction
-- Args: [ Arg
--           { argCName = "h"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Just "Hue" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "s"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Saturation" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "v"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "r"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the red component"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "g"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the green component"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "b"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Return value for the blue component"
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

foreign import ccall "gtk_hsv_to_rgb" gtk_hsv_to_rgb :: 
    CDouble ->                              -- h : TBasicType TDouble
    CDouble ->                              -- s : TBasicType TDouble
    CDouble ->                              -- v : TBasicType TDouble
    Ptr CDouble ->                          -- r : TBasicType TDouble
    Ptr CDouble ->                          -- g : TBasicType TDouble
    Ptr CDouble ->                          -- b : TBasicType TDouble
    IO ()

-- | Converts a color from HSV space to RGB.
-- 
-- Input values must be in the [0.0, 1.0] range;
-- output values will be in the same range.
-- 
-- /Since: 2.14/
hSVToRgb ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@h@/: Hue
    -> Double
    -- ^ /@s@/: Saturation
    -> Double
    -- ^ /@v@/: Value
    -> m ((Double, Double, Double))
hSVToRgb h s v = liftIO $ do
    let h' = realToFrac h
    let s' = realToFrac s
    let v' = realToFrac v
    r <- allocMem :: IO (Ptr CDouble)
    g <- allocMem :: IO (Ptr CDouble)
    b <- allocMem :: IO (Ptr CDouble)
    gtk_hsv_to_rgb h' s' v' r g b
    r' <- peek r
    let r'' = realToFrac r'
    g' <- peek g
    let g'' = realToFrac g'
    b' <- peek b
    let b'' = realToFrac b'
    freeMem r
    freeMem g
    freeMem b
    return (r'', g'', b'')

#if defined(ENABLE_OVERLOADING)
#endif

