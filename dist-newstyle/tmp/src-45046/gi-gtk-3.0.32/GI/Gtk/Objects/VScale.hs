{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.VScale.VScale' widget is used to allow the user to select a value using
-- a vertical slider. To create one, use 'GI.Gtk.Objects.HScale.hScaleNewWithRange'.
-- 
-- The position to show the current value, and the number of decimal places
-- shown can be set using the parent t'GI.Gtk.Objects.Scale.Scale' class’s functions.
-- 
-- GtkVScale has been deprecated, use t'GI.Gtk.Objects.Scale.Scale' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.VScale
    ( 

-- * Exported types
    VScale(..)                              ,
    IsVScale                                ,
    toVScale                                ,
    noVScale                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveVScaleMethod                     ,
#endif


-- ** new #method:new#

    vScaleNew                               ,


-- ** newWithRange #method:newWithRange#

    vScaleNewWithRange                      ,




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
newtype VScale = VScale (ManagedPtr VScale)
    deriving (Eq)
foreign import ccall "gtk_vscale_get_type"
    c_gtk_vscale_get_type :: IO GType

instance GObject VScale where
    gobjectType = c_gtk_vscale_get_type
    

-- | Convert 'VScale' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue VScale where
    toGValue o = do
        gtype <- c_gtk_vscale_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr VScale)
        B.ManagedPtr.newObject VScale ptr
        
    

-- | Type class for types which can be safely cast to `VScale`, for instance with `toVScale`.
class (GObject o, O.IsDescendantOf VScale o) => IsVScale o
instance (GObject o, O.IsDescendantOf VScale o) => IsVScale o

instance O.HasParentTypes VScale
type instance O.ParentTypes VScale = '[Gtk.Scale.Scale, Gtk.Range.Range, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `VScale`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toVScale :: (MonadIO m, IsVScale o) => o -> m VScale
toVScale = liftIO . unsafeCastTo VScale

-- | A convenience alias for `Nothing` :: `Maybe` `VScale`.
noVScale :: Maybe VScale
noVScale = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveVScaleMethod (t :: Symbol) (o :: *) :: * where
    ResolveVScaleMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveVScaleMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveVScaleMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveVScaleMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveVScaleMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveVScaleMethod "addMark" o = Gtk.Scale.ScaleAddMarkMethodInfo
    ResolveVScaleMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveVScaleMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveVScaleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveVScaleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveVScaleMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveVScaleMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveVScaleMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveVScaleMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveVScaleMethod "clearMarks" o = Gtk.Scale.ScaleClearMarksMethodInfo
    ResolveVScaleMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveVScaleMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveVScaleMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveVScaleMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveVScaleMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveVScaleMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveVScaleMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveVScaleMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveVScaleMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveVScaleMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveVScaleMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveVScaleMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveVScaleMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveVScaleMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveVScaleMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveVScaleMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveVScaleMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveVScaleMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveVScaleMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveVScaleMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveVScaleMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveVScaleMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveVScaleMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveVScaleMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveVScaleMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveVScaleMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveVScaleMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveVScaleMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveVScaleMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveVScaleMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveVScaleMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveVScaleMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveVScaleMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveVScaleMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveVScaleMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveVScaleMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveVScaleMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveVScaleMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveVScaleMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveVScaleMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveVScaleMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveVScaleMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveVScaleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveVScaleMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveVScaleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveVScaleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveVScaleMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveVScaleMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveVScaleMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveVScaleMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveVScaleMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveVScaleMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveVScaleMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveVScaleMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveVScaleMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveVScaleMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveVScaleMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveVScaleMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveVScaleMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveVScaleMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveVScaleMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveVScaleMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveVScaleMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveVScaleMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveVScaleMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveVScaleMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveVScaleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveVScaleMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveVScaleMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveVScaleMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveVScaleMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveVScaleMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveVScaleMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveVScaleMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveVScaleMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveVScaleMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveVScaleMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveVScaleMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveVScaleMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveVScaleMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveVScaleMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveVScaleMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveVScaleMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveVScaleMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveVScaleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveVScaleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveVScaleMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveVScaleMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveVScaleMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveVScaleMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveVScaleMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveVScaleMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveVScaleMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveVScaleMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveVScaleMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveVScaleMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveVScaleMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveVScaleMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveVScaleMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveVScaleMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveVScaleMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveVScaleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveVScaleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveVScaleMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveVScaleMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveVScaleMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveVScaleMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveVScaleMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveVScaleMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveVScaleMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveVScaleMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveVScaleMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveVScaleMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveVScaleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveVScaleMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveVScaleMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveVScaleMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveVScaleMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveVScaleMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveVScaleMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveVScaleMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveVScaleMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveVScaleMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveVScaleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveVScaleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveVScaleMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveVScaleMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveVScaleMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveVScaleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveVScaleMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveVScaleMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveVScaleMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveVScaleMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveVScaleMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveVScaleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveVScaleMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveVScaleMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveVScaleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveVScaleMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveVScaleMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveVScaleMethod "getAdjustment" o = Gtk.Range.RangeGetAdjustmentMethodInfo
    ResolveVScaleMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveVScaleMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveVScaleMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveVScaleMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveVScaleMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveVScaleMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveVScaleMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveVScaleMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveVScaleMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveVScaleMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveVScaleMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveVScaleMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveVScaleMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveVScaleMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveVScaleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveVScaleMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveVScaleMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveVScaleMethod "getDigits" o = Gtk.Scale.ScaleGetDigitsMethodInfo
    ResolveVScaleMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveVScaleMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveVScaleMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveVScaleMethod "getDrawValue" o = Gtk.Scale.ScaleGetDrawValueMethodInfo
    ResolveVScaleMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveVScaleMethod "getFillLevel" o = Gtk.Range.RangeGetFillLevelMethodInfo
    ResolveVScaleMethod "getFlippable" o = Gtk.Range.RangeGetFlippableMethodInfo
    ResolveVScaleMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveVScaleMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveVScaleMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveVScaleMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveVScaleMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveVScaleMethod "getHasOrigin" o = Gtk.Scale.ScaleGetHasOriginMethodInfo
    ResolveVScaleMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveVScaleMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveVScaleMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveVScaleMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveVScaleMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveVScaleMethod "getInverted" o = Gtk.Range.RangeGetInvertedMethodInfo
    ResolveVScaleMethod "getLayout" o = Gtk.Scale.ScaleGetLayoutMethodInfo
    ResolveVScaleMethod "getLayoutOffsets" o = Gtk.Scale.ScaleGetLayoutOffsetsMethodInfo
    ResolveVScaleMethod "getLowerStepperSensitivity" o = Gtk.Range.RangeGetLowerStepperSensitivityMethodInfo
    ResolveVScaleMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveVScaleMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveVScaleMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveVScaleMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveVScaleMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveVScaleMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveVScaleMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveVScaleMethod "getMinSliderSize" o = Gtk.Range.RangeGetMinSliderSizeMethodInfo
    ResolveVScaleMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveVScaleMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveVScaleMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveVScaleMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveVScaleMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveVScaleMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveVScaleMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveVScaleMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveVScaleMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveVScaleMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveVScaleMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveVScaleMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveVScaleMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveVScaleMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveVScaleMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveVScaleMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveVScaleMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveVScaleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveVScaleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveVScaleMethod "getRangeRect" o = Gtk.Range.RangeGetRangeRectMethodInfo
    ResolveVScaleMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveVScaleMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveVScaleMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveVScaleMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveVScaleMethod "getRestrictToFillLevel" o = Gtk.Range.RangeGetRestrictToFillLevelMethodInfo
    ResolveVScaleMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveVScaleMethod "getRoundDigits" o = Gtk.Range.RangeGetRoundDigitsMethodInfo
    ResolveVScaleMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveVScaleMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveVScaleMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveVScaleMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveVScaleMethod "getShowFillLevel" o = Gtk.Range.RangeGetShowFillLevelMethodInfo
    ResolveVScaleMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveVScaleMethod "getSliderRange" o = Gtk.Range.RangeGetSliderRangeMethodInfo
    ResolveVScaleMethod "getSliderSizeFixed" o = Gtk.Range.RangeGetSliderSizeFixedMethodInfo
    ResolveVScaleMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveVScaleMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveVScaleMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveVScaleMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveVScaleMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveVScaleMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveVScaleMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveVScaleMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveVScaleMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveVScaleMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveVScaleMethod "getUpperStepperSensitivity" o = Gtk.Range.RangeGetUpperStepperSensitivityMethodInfo
    ResolveVScaleMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveVScaleMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveVScaleMethod "getValue" o = Gtk.Range.RangeGetValueMethodInfo
    ResolveVScaleMethod "getValuePos" o = Gtk.Scale.ScaleGetValuePosMethodInfo
    ResolveVScaleMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveVScaleMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveVScaleMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveVScaleMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveVScaleMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveVScaleMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveVScaleMethod "setAdjustment" o = Gtk.Range.RangeSetAdjustmentMethodInfo
    ResolveVScaleMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveVScaleMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveVScaleMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveVScaleMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveVScaleMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveVScaleMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveVScaleMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveVScaleMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveVScaleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveVScaleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveVScaleMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveVScaleMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveVScaleMethod "setDigits" o = Gtk.Scale.ScaleSetDigitsMethodInfo
    ResolveVScaleMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveVScaleMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveVScaleMethod "setDrawValue" o = Gtk.Scale.ScaleSetDrawValueMethodInfo
    ResolveVScaleMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveVScaleMethod "setFillLevel" o = Gtk.Range.RangeSetFillLevelMethodInfo
    ResolveVScaleMethod "setFlippable" o = Gtk.Range.RangeSetFlippableMethodInfo
    ResolveVScaleMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveVScaleMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveVScaleMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveVScaleMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveVScaleMethod "setHasOrigin" o = Gtk.Scale.ScaleSetHasOriginMethodInfo
    ResolveVScaleMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveVScaleMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveVScaleMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveVScaleMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveVScaleMethod "setIncrements" o = Gtk.Range.RangeSetIncrementsMethodInfo
    ResolveVScaleMethod "setInverted" o = Gtk.Range.RangeSetInvertedMethodInfo
    ResolveVScaleMethod "setLowerStepperSensitivity" o = Gtk.Range.RangeSetLowerStepperSensitivityMethodInfo
    ResolveVScaleMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveVScaleMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveVScaleMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveVScaleMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveVScaleMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveVScaleMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveVScaleMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveVScaleMethod "setMinSliderSize" o = Gtk.Range.RangeSetMinSliderSizeMethodInfo
    ResolveVScaleMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveVScaleMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveVScaleMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveVScaleMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveVScaleMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveVScaleMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveVScaleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveVScaleMethod "setRange" o = Gtk.Range.RangeSetRangeMethodInfo
    ResolveVScaleMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveVScaleMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveVScaleMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveVScaleMethod "setRestrictToFillLevel" o = Gtk.Range.RangeSetRestrictToFillLevelMethodInfo
    ResolveVScaleMethod "setRoundDigits" o = Gtk.Range.RangeSetRoundDigitsMethodInfo
    ResolveVScaleMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveVScaleMethod "setShowFillLevel" o = Gtk.Range.RangeSetShowFillLevelMethodInfo
    ResolveVScaleMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveVScaleMethod "setSliderSizeFixed" o = Gtk.Range.RangeSetSliderSizeFixedMethodInfo
    ResolveVScaleMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveVScaleMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveVScaleMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveVScaleMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveVScaleMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveVScaleMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveVScaleMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveVScaleMethod "setUpperStepperSensitivity" o = Gtk.Range.RangeSetUpperStepperSensitivityMethodInfo
    ResolveVScaleMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveVScaleMethod "setValue" o = Gtk.Range.RangeSetValueMethodInfo
    ResolveVScaleMethod "setValuePos" o = Gtk.Scale.ScaleSetValuePosMethodInfo
    ResolveVScaleMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveVScaleMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveVScaleMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveVScaleMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveVScaleMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveVScaleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveVScaleMethod t VScale, O.MethodInfo info VScale p) => OL.IsLabel t (VScale -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList VScale
type instance O.AttributeList VScale = VScaleAttributeList
type VScaleAttributeList = ('[ '("adjustment", Gtk.Range.RangeAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("digits", Gtk.Scale.ScaleDigitsPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawValue", Gtk.Scale.ScaleDrawValuePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fillLevel", Gtk.Range.RangeFillLevelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasOrigin", Gtk.Scale.ScaleHasOriginPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", Gtk.Range.RangeInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("lowerStepperSensitivity", Gtk.Range.RangeLowerStepperSensitivityPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("restrictToFillLevel", Gtk.Range.RangeRestrictToFillLevelPropertyInfo), '("roundDigits", Gtk.Range.RangeRoundDigitsPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showFillLevel", Gtk.Range.RangeShowFillLevelPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("upperStepperSensitivity", Gtk.Range.RangeUpperStepperSensitivityPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("valuePos", Gtk.Scale.ScaleValuePosPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList VScale = VScaleSignalList
type VScaleSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("adjustBounds", Gtk.Range.RangeAdjustBoundsSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", Gtk.Range.RangeChangeValueSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("formatValue", Gtk.Scale.ScaleFormatValueSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSlider", Gtk.Range.RangeMoveSliderSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", Gtk.Range.RangeValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method VScale::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkAdjustment which sets the range of the scale."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "VScale" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_vscale_new" gtk_vscale_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr VScale)

{-# DEPRECATED vScaleNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Scale.scaleNew' with 'GI.Gtk.Enums.OrientationVertical' instead"] #-}
-- | Creates a new t'GI.Gtk.Objects.VScale.VScale'.
vScaleNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a) =>
    a
    -- ^ /@adjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' which sets the range of the scale.
    -> m VScale
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.VScale.VScale'.
vScaleNew adjustment = liftIO $ do
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    result <- gtk_vscale_new adjustment'
    checkUnexpectedReturnNULL "vScaleNew" result
    result' <- (newObject VScale) result
    touchManagedPtr adjustment
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method VScale::new_with_range
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "VScale" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_vscale_new_with_range" gtk_vscale_new_with_range :: 
    CDouble ->                              -- min : TBasicType TDouble
    CDouble ->                              -- max : TBasicType TDouble
    CDouble ->                              -- step : TBasicType TDouble
    IO (Ptr VScale)

{-# DEPRECATED vScaleNewWithRange ["(Since version 3.2)","Use 'GI.Gtk.Objects.Scale.scaleNewWithRange' with 'GI.Gtk.Enums.OrientationVertical' instead"] #-}
-- | Creates a new vertical scale widget that lets the user input a
-- number between /@min@/ and /@max@/ (including /@min@/ and /@max@/) with the
-- increment /@step@/.  /@step@/ must be nonzero; it’s the distance the
-- slider moves when using the arrow keys to adjust the scale value.
-- 
-- Note that the way in which the precision is derived works best if /@step@/
-- is a power of ten. If the resulting precision is not suitable for your
-- needs, use 'GI.Gtk.Objects.Scale.scaleSetDigits' to correct it.
vScaleNewWithRange ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@min@/: minimum value
    -> Double
    -- ^ /@max@/: maximum value
    -> Double
    -- ^ /@step@/: step increment (tick size) used with keyboard shortcuts
    -> m VScale
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.VScale.VScale'
vScaleNewWithRange min max step = liftIO $ do
    let min' = realToFrac min
    let max' = realToFrac max
    let step' = realToFrac step
    result <- gtk_vscale_new_with_range min' max' step'
    checkUnexpectedReturnNULL "vScaleNewWithRange" result
    result' <- (newObject VScale) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

