{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.HScale.HScale' widget is used to allow the user to select a value using
-- a horizontal slider. To create one, use 'GI.Gtk.Objects.HScale.hScaleNewWithRange'.
-- 
-- The position to show the current value, and the number of decimal places
-- shown can be set using the parent t'GI.Gtk.Objects.Scale.Scale' class’s functions.
-- 
-- GtkHScale has been deprecated, use t'GI.Gtk.Objects.Scale.Scale' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HScale
    ( 

-- * Exported types
    HScale(..)                              ,
    IsHScale                                ,
    toHScale                                ,
    noHScale                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHScaleMethod                     ,
#endif


-- ** new #method:new#

    hScaleNew                               ,


-- ** newWithRange #method:newWithRange#

    hScaleNewWithRange                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Range as Gtk.Range
import {-# SOURCE #-} qualified GI.Gtk.Objects.Scale as Gtk.Scale
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HScale = HScale (ManagedPtr HScale)
    deriving (Eq)
foreign import ccall "gtk_hscale_get_type"
    c_gtk_hscale_get_type :: IO GType

instance GObject HScale where
    gobjectType = c_gtk_hscale_get_type
    

-- | Convert 'HScale' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HScale where
    toGValue o = do
        gtype <- c_gtk_hscale_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HScale)
        B.ManagedPtr.newObject HScale ptr
        
    

-- | Type class for types which can be safely cast to `HScale`, for instance with `toHScale`.
class (GObject o, O.IsDescendantOf HScale o) => IsHScale o
instance (GObject o, O.IsDescendantOf HScale o) => IsHScale o

instance O.HasParentTypes HScale
type instance O.ParentTypes HScale = '[Gtk.Scale.Scale, Gtk.Range.Range, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `HScale`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHScale :: (MonadIO m, IsHScale o) => o -> m HScale
toHScale = liftIO . unsafeCastTo HScale

-- | A convenience alias for `Nothing` :: `Maybe` `HScale`.
noHScale :: Maybe HScale
noHScale = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHScaleMethod (t :: Symbol) (o :: *) :: * where
    ResolveHScaleMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHScaleMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHScaleMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHScaleMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHScaleMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHScaleMethod "addMark" o = Gtk.Scale.ScaleAddMarkMethodInfo
    ResolveHScaleMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHScaleMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHScaleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHScaleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHScaleMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHScaleMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHScaleMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveHScaleMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHScaleMethod "clearMarks" o = Gtk.Scale.ScaleClearMarksMethodInfo
    ResolveHScaleMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHScaleMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHScaleMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHScaleMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHScaleMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHScaleMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHScaleMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHScaleMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHScaleMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHScaleMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHScaleMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHScaleMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHScaleMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHScaleMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHScaleMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHScaleMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHScaleMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHScaleMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHScaleMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHScaleMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHScaleMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHScaleMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHScaleMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHScaleMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHScaleMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHScaleMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHScaleMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHScaleMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHScaleMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHScaleMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHScaleMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHScaleMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHScaleMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHScaleMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHScaleMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHScaleMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHScaleMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHScaleMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHScaleMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHScaleMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHScaleMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHScaleMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHScaleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHScaleMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHScaleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHScaleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHScaleMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHScaleMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHScaleMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHScaleMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHScaleMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHScaleMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHScaleMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHScaleMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHScaleMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHScaleMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHScaleMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHScaleMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHScaleMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHScaleMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHScaleMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHScaleMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHScaleMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHScaleMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHScaleMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHScaleMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHScaleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHScaleMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHScaleMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHScaleMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHScaleMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHScaleMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHScaleMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHScaleMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHScaleMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHScaleMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHScaleMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHScaleMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHScaleMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHScaleMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHScaleMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHScaleMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHScaleMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHScaleMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHScaleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHScaleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHScaleMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHScaleMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHScaleMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHScaleMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHScaleMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHScaleMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHScaleMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHScaleMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHScaleMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHScaleMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHScaleMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHScaleMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHScaleMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHScaleMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHScaleMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHScaleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHScaleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHScaleMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHScaleMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHScaleMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHScaleMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHScaleMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHScaleMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHScaleMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHScaleMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHScaleMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHScaleMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHScaleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHScaleMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHScaleMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHScaleMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHScaleMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHScaleMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHScaleMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHScaleMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHScaleMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHScaleMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHScaleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHScaleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHScaleMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHScaleMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHScaleMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHScaleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHScaleMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHScaleMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHScaleMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHScaleMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHScaleMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHScaleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHScaleMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHScaleMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHScaleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHScaleMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHScaleMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHScaleMethod "getAdjustment" o = Gtk.Range.RangeGetAdjustmentMethodInfo
    ResolveHScaleMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHScaleMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHScaleMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHScaleMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHScaleMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHScaleMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHScaleMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHScaleMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHScaleMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHScaleMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHScaleMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHScaleMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHScaleMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHScaleMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHScaleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHScaleMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHScaleMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHScaleMethod "getDigits" o = Gtk.Scale.ScaleGetDigitsMethodInfo
    ResolveHScaleMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHScaleMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHScaleMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHScaleMethod "getDrawValue" o = Gtk.Scale.ScaleGetDrawValueMethodInfo
    ResolveHScaleMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHScaleMethod "getFillLevel" o = Gtk.Range.RangeGetFillLevelMethodInfo
    ResolveHScaleMethod "getFlippable" o = Gtk.Range.RangeGetFlippableMethodInfo
    ResolveHScaleMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHScaleMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHScaleMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHScaleMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHScaleMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHScaleMethod "getHasOrigin" o = Gtk.Scale.ScaleGetHasOriginMethodInfo
    ResolveHScaleMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHScaleMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHScaleMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHScaleMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHScaleMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHScaleMethod "getInverted" o = Gtk.Range.RangeGetInvertedMethodInfo
    ResolveHScaleMethod "getLayout" o = Gtk.Scale.ScaleGetLayoutMethodInfo
    ResolveHScaleMethod "getLayoutOffsets" o = Gtk.Scale.ScaleGetLayoutOffsetsMethodInfo
    ResolveHScaleMethod "getLowerStepperSensitivity" o = Gtk.Range.RangeGetLowerStepperSensitivityMethodInfo
    ResolveHScaleMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHScaleMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHScaleMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHScaleMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHScaleMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHScaleMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHScaleMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHScaleMethod "getMinSliderSize" o = Gtk.Range.RangeGetMinSliderSizeMethodInfo
    ResolveHScaleMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHScaleMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHScaleMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHScaleMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHScaleMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHScaleMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveHScaleMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHScaleMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHScaleMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHScaleMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHScaleMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHScaleMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHScaleMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHScaleMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHScaleMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHScaleMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHScaleMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHScaleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHScaleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHScaleMethod "getRangeRect" o = Gtk.Range.RangeGetRangeRectMethodInfo
    ResolveHScaleMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHScaleMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHScaleMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHScaleMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHScaleMethod "getRestrictToFillLevel" o = Gtk.Range.RangeGetRestrictToFillLevelMethodInfo
    ResolveHScaleMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHScaleMethod "getRoundDigits" o = Gtk.Range.RangeGetRoundDigitsMethodInfo
    ResolveHScaleMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHScaleMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHScaleMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHScaleMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHScaleMethod "getShowFillLevel" o = Gtk.Range.RangeGetShowFillLevelMethodInfo
    ResolveHScaleMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHScaleMethod "getSliderRange" o = Gtk.Range.RangeGetSliderRangeMethodInfo
    ResolveHScaleMethod "getSliderSizeFixed" o = Gtk.Range.RangeGetSliderSizeFixedMethodInfo
    ResolveHScaleMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHScaleMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHScaleMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHScaleMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHScaleMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHScaleMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHScaleMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHScaleMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHScaleMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHScaleMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHScaleMethod "getUpperStepperSensitivity" o = Gtk.Range.RangeGetUpperStepperSensitivityMethodInfo
    ResolveHScaleMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHScaleMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHScaleMethod "getValue" o = Gtk.Range.RangeGetValueMethodInfo
    ResolveHScaleMethod "getValuePos" o = Gtk.Scale.ScaleGetValuePosMethodInfo
    ResolveHScaleMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHScaleMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHScaleMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHScaleMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHScaleMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHScaleMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHScaleMethod "setAdjustment" o = Gtk.Range.RangeSetAdjustmentMethodInfo
    ResolveHScaleMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHScaleMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHScaleMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHScaleMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHScaleMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHScaleMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHScaleMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHScaleMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHScaleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHScaleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHScaleMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHScaleMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHScaleMethod "setDigits" o = Gtk.Scale.ScaleSetDigitsMethodInfo
    ResolveHScaleMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHScaleMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHScaleMethod "setDrawValue" o = Gtk.Scale.ScaleSetDrawValueMethodInfo
    ResolveHScaleMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHScaleMethod "setFillLevel" o = Gtk.Range.RangeSetFillLevelMethodInfo
    ResolveHScaleMethod "setFlippable" o = Gtk.Range.RangeSetFlippableMethodInfo
    ResolveHScaleMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHScaleMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHScaleMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHScaleMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHScaleMethod "setHasOrigin" o = Gtk.Scale.ScaleSetHasOriginMethodInfo
    ResolveHScaleMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHScaleMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHScaleMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHScaleMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHScaleMethod "setIncrements" o = Gtk.Range.RangeSetIncrementsMethodInfo
    ResolveHScaleMethod "setInverted" o = Gtk.Range.RangeSetInvertedMethodInfo
    ResolveHScaleMethod "setLowerStepperSensitivity" o = Gtk.Range.RangeSetLowerStepperSensitivityMethodInfo
    ResolveHScaleMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHScaleMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHScaleMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHScaleMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHScaleMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHScaleMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHScaleMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHScaleMethod "setMinSliderSize" o = Gtk.Range.RangeSetMinSliderSizeMethodInfo
    ResolveHScaleMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHScaleMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHScaleMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHScaleMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveHScaleMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHScaleMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHScaleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHScaleMethod "setRange" o = Gtk.Range.RangeSetRangeMethodInfo
    ResolveHScaleMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHScaleMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHScaleMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHScaleMethod "setRestrictToFillLevel" o = Gtk.Range.RangeSetRestrictToFillLevelMethodInfo
    ResolveHScaleMethod "setRoundDigits" o = Gtk.Range.RangeSetRoundDigitsMethodInfo
    ResolveHScaleMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHScaleMethod "setShowFillLevel" o = Gtk.Range.RangeSetShowFillLevelMethodInfo
    ResolveHScaleMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHScaleMethod "setSliderSizeFixed" o = Gtk.Range.RangeSetSliderSizeFixedMethodInfo
    ResolveHScaleMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHScaleMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHScaleMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHScaleMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHScaleMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHScaleMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHScaleMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHScaleMethod "setUpperStepperSensitivity" o = Gtk.Range.RangeSetUpperStepperSensitivityMethodInfo
    ResolveHScaleMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHScaleMethod "setValue" o = Gtk.Range.RangeSetValueMethodInfo
    ResolveHScaleMethod "setValuePos" o = Gtk.Scale.ScaleSetValuePosMethodInfo
    ResolveHScaleMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHScaleMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHScaleMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHScaleMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHScaleMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHScaleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHScaleMethod t HScale, O.MethodInfo info HScale p) => OL.IsLabel t (HScale -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HScale
type instance O.AttributeList HScale = HScaleAttributeList
type HScaleAttributeList = ('[ '("adjustment", Gtk.Range.RangeAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("digits", Gtk.Scale.ScaleDigitsPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawValue", Gtk.Scale.ScaleDrawValuePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fillLevel", Gtk.Range.RangeFillLevelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasOrigin", Gtk.Scale.ScaleHasOriginPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", Gtk.Range.RangeInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("lowerStepperSensitivity", Gtk.Range.RangeLowerStepperSensitivityPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("restrictToFillLevel", Gtk.Range.RangeRestrictToFillLevelPropertyInfo), '("roundDigits", Gtk.Range.RangeRoundDigitsPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showFillLevel", Gtk.Range.RangeShowFillLevelPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("upperStepperSensitivity", Gtk.Range.RangeUpperStepperSensitivityPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("valuePos", Gtk.Scale.ScaleValuePosPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HScale = HScaleSignalList
type HScaleSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("adjustBounds", Gtk.Range.RangeAdjustBoundsSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", Gtk.Range.RangeChangeValueSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("formatValue", Gtk.Scale.ScaleFormatValueSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSlider", Gtk.Range.RangeMoveSliderSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", Gtk.Range.RangeValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HScale::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkAdjustment which sets the range of\nthe scale."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HScale" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hscale_new" gtk_hscale_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr HScale)

{-# DEPRECATED hScaleNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Scale.scaleNew' with 'GI.Gtk.Enums.OrientationHorizontal' instead"] #-}
-- | Creates a new t'GI.Gtk.Objects.HScale.HScale'.
hScaleNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a) =>
    Maybe (a)
    -- ^ /@adjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' which sets the range of
    -- the scale.
    -> m HScale
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.HScale.HScale'.
hScaleNew adjustment = liftIO $ do
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    result <- gtk_hscale_new maybeAdjustment
    checkUnexpectedReturnNULL "hScaleNew" result
    result' <- (newObject HScale) result
    whenJust adjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method HScale::new_with_range
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "min"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "minimum value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "max"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "maximum value" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "step increment (tick size) used with keyboard shortcuts"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HScale" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hscale_new_with_range" gtk_hscale_new_with_range :: 
    CDouble ->                              -- min : TBasicType TDouble
    CDouble ->                              -- max : TBasicType TDouble
    CDouble ->                              -- step : TBasicType TDouble
    IO (Ptr HScale)

{-# DEPRECATED hScaleNewWithRange ["(Since version 3.2)","Use 'GI.Gtk.Objects.Scale.scaleNewWithRange' with 'GI.Gtk.Enums.OrientationHorizontal' instead"] #-}
-- | Creates a new horizontal scale widget that lets the user input a
-- number between /@min@/ and /@max@/ (including /@min@/ and /@max@/) with the
-- increment /@step@/.  /@step@/ must be nonzero; it’s the distance the
-- slider moves when using the arrow keys to adjust the scale value.
-- 
-- Note that the way in which the precision is derived works best if /@step@/
-- is a power of ten. If the resulting precision is not suitable for your
-- needs, use 'GI.Gtk.Objects.Scale.scaleSetDigits' to correct it.
hScaleNewWithRange ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@min@/: minimum value
    -> Double
    -- ^ /@max@/: maximum value
    -> Double
    -- ^ /@step@/: step increment (tick size) used with keyboard shortcuts
    -> m HScale
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.HScale.HScale'
hScaleNewWithRange min max step = liftIO $ do
    let min' = realToFrac min
    let max' = realToFrac max
    let step' = realToFrac step
    result <- gtk_hscale_new_with_range min' max' step'
    checkUnexpectedReturnNULL "hScaleNewWithRange" result
    result' <- (newObject HScale) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

