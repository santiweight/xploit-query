{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.HScrollbar.HScrollbar' widget is a widget arranged horizontally creating a
-- scrollbar. See t'GI.Gtk.Objects.Scrollbar.Scrollbar' for details on
-- scrollbars. t'GI.Gtk.Objects.Adjustment.Adjustment' pointers may be added to handle the
-- adjustment of the scrollbar or it may be left 'P.Nothing' in which case one
-- will be created for you. See t'GI.Gtk.Objects.Scrollbar.Scrollbar' for a description of what the
-- fields in an adjustment represent for a scrollbar.
-- 
-- GtkHScrollbar has been deprecated, use t'GI.Gtk.Objects.Scrollbar.Scrollbar' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HScrollbar
    ( 

-- * Exported types
    HScrollbar(..)                          ,
    IsHScrollbar                            ,
    toHScrollbar                            ,
    noHScrollbar                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHScrollbarMethod                 ,
#endif


-- ** new #method:new#

    hScrollbarNew                           ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Scrollbar as Gtk.Scrollbar
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HScrollbar = HScrollbar (ManagedPtr HScrollbar)
    deriving (Eq)
foreign import ccall "gtk_hscrollbar_get_type"
    c_gtk_hscrollbar_get_type :: IO GType

instance GObject HScrollbar where
    gobjectType = c_gtk_hscrollbar_get_type
    

-- | Convert 'HScrollbar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HScrollbar where
    toGValue o = do
        gtype <- c_gtk_hscrollbar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HScrollbar)
        B.ManagedPtr.newObject HScrollbar ptr
        
    

-- | Type class for types which can be safely cast to `HScrollbar`, for instance with `toHScrollbar`.
class (GObject o, O.IsDescendantOf HScrollbar o) => IsHScrollbar o
instance (GObject o, O.IsDescendantOf HScrollbar o) => IsHScrollbar o

instance O.HasParentTypes HScrollbar
type instance O.ParentTypes HScrollbar = '[Gtk.Scrollbar.Scrollbar, Gtk.Range.Range, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `HScrollbar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHScrollbar :: (MonadIO m, IsHScrollbar o) => o -> m HScrollbar
toHScrollbar = liftIO . unsafeCastTo HScrollbar

-- | A convenience alias for `Nothing` :: `Maybe` `HScrollbar`.
noHScrollbar :: Maybe HScrollbar
noHScrollbar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHScrollbarMethod (t :: Symbol) (o :: *) :: * where
    ResolveHScrollbarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHScrollbarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHScrollbarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHScrollbarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHScrollbarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHScrollbarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHScrollbarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHScrollbarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHScrollbarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHScrollbarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHScrollbarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHScrollbarMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveHScrollbarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHScrollbarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHScrollbarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHScrollbarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHScrollbarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHScrollbarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHScrollbarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHScrollbarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHScrollbarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHScrollbarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHScrollbarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHScrollbarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHScrollbarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHScrollbarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHScrollbarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHScrollbarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHScrollbarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHScrollbarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHScrollbarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHScrollbarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHScrollbarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHScrollbarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHScrollbarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHScrollbarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHScrollbarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHScrollbarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHScrollbarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHScrollbarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHScrollbarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHScrollbarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHScrollbarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHScrollbarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHScrollbarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHScrollbarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHScrollbarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHScrollbarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHScrollbarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHScrollbarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHScrollbarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHScrollbarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHScrollbarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHScrollbarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHScrollbarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHScrollbarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHScrollbarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHScrollbarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHScrollbarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHScrollbarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHScrollbarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHScrollbarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHScrollbarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHScrollbarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHScrollbarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHScrollbarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHScrollbarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHScrollbarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHScrollbarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHScrollbarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHScrollbarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHScrollbarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHScrollbarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHScrollbarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHScrollbarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHScrollbarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHScrollbarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHScrollbarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHScrollbarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHScrollbarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHScrollbarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHScrollbarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHScrollbarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHScrollbarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHScrollbarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHScrollbarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHScrollbarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHScrollbarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHScrollbarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHScrollbarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHScrollbarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHScrollbarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHScrollbarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHScrollbarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHScrollbarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHScrollbarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHScrollbarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHScrollbarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHScrollbarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHScrollbarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHScrollbarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHScrollbarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHScrollbarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHScrollbarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHScrollbarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHScrollbarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHScrollbarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHScrollbarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHScrollbarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHScrollbarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHScrollbarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHScrollbarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHScrollbarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHScrollbarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHScrollbarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHScrollbarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHScrollbarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHScrollbarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHScrollbarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHScrollbarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHScrollbarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHScrollbarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHScrollbarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHScrollbarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHScrollbarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHScrollbarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHScrollbarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHScrollbarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHScrollbarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHScrollbarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHScrollbarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHScrollbarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHScrollbarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHScrollbarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHScrollbarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHScrollbarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHScrollbarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHScrollbarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHScrollbarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHScrollbarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHScrollbarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHScrollbarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHScrollbarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHScrollbarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHScrollbarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHScrollbarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHScrollbarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHScrollbarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHScrollbarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHScrollbarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHScrollbarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHScrollbarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHScrollbarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHScrollbarMethod "getAdjustment" o = Gtk.Range.RangeGetAdjustmentMethodInfo
    ResolveHScrollbarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHScrollbarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHScrollbarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHScrollbarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHScrollbarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHScrollbarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHScrollbarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHScrollbarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHScrollbarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHScrollbarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHScrollbarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHScrollbarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHScrollbarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHScrollbarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHScrollbarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHScrollbarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHScrollbarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHScrollbarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHScrollbarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHScrollbarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHScrollbarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHScrollbarMethod "getFillLevel" o = Gtk.Range.RangeGetFillLevelMethodInfo
    ResolveHScrollbarMethod "getFlippable" o = Gtk.Range.RangeGetFlippableMethodInfo
    ResolveHScrollbarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHScrollbarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHScrollbarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHScrollbarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHScrollbarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHScrollbarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHScrollbarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHScrollbarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHScrollbarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHScrollbarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHScrollbarMethod "getInverted" o = Gtk.Range.RangeGetInvertedMethodInfo
    ResolveHScrollbarMethod "getLowerStepperSensitivity" o = Gtk.Range.RangeGetLowerStepperSensitivityMethodInfo
    ResolveHScrollbarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHScrollbarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHScrollbarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHScrollbarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHScrollbarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHScrollbarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHScrollbarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHScrollbarMethod "getMinSliderSize" o = Gtk.Range.RangeGetMinSliderSizeMethodInfo
    ResolveHScrollbarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHScrollbarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHScrollbarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHScrollbarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHScrollbarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHScrollbarMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveHScrollbarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHScrollbarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHScrollbarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHScrollbarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHScrollbarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHScrollbarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHScrollbarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHScrollbarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHScrollbarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHScrollbarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHScrollbarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHScrollbarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHScrollbarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHScrollbarMethod "getRangeRect" o = Gtk.Range.RangeGetRangeRectMethodInfo
    ResolveHScrollbarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHScrollbarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHScrollbarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHScrollbarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHScrollbarMethod "getRestrictToFillLevel" o = Gtk.Range.RangeGetRestrictToFillLevelMethodInfo
    ResolveHScrollbarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHScrollbarMethod "getRoundDigits" o = Gtk.Range.RangeGetRoundDigitsMethodInfo
    ResolveHScrollbarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHScrollbarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHScrollbarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHScrollbarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHScrollbarMethod "getShowFillLevel" o = Gtk.Range.RangeGetShowFillLevelMethodInfo
    ResolveHScrollbarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHScrollbarMethod "getSliderRange" o = Gtk.Range.RangeGetSliderRangeMethodInfo
    ResolveHScrollbarMethod "getSliderSizeFixed" o = Gtk.Range.RangeGetSliderSizeFixedMethodInfo
    ResolveHScrollbarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHScrollbarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHScrollbarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHScrollbarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHScrollbarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHScrollbarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHScrollbarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHScrollbarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHScrollbarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHScrollbarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHScrollbarMethod "getUpperStepperSensitivity" o = Gtk.Range.RangeGetUpperStepperSensitivityMethodInfo
    ResolveHScrollbarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHScrollbarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHScrollbarMethod "getValue" o = Gtk.Range.RangeGetValueMethodInfo
    ResolveHScrollbarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHScrollbarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHScrollbarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHScrollbarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHScrollbarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHScrollbarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHScrollbarMethod "setAdjustment" o = Gtk.Range.RangeSetAdjustmentMethodInfo
    ResolveHScrollbarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHScrollbarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHScrollbarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHScrollbarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHScrollbarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHScrollbarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHScrollbarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHScrollbarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHScrollbarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHScrollbarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHScrollbarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHScrollbarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHScrollbarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHScrollbarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHScrollbarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHScrollbarMethod "setFillLevel" o = Gtk.Range.RangeSetFillLevelMethodInfo
    ResolveHScrollbarMethod "setFlippable" o = Gtk.Range.RangeSetFlippableMethodInfo
    ResolveHScrollbarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHScrollbarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHScrollbarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHScrollbarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHScrollbarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHScrollbarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHScrollbarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHScrollbarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHScrollbarMethod "setIncrements" o = Gtk.Range.RangeSetIncrementsMethodInfo
    ResolveHScrollbarMethod "setInverted" o = Gtk.Range.RangeSetInvertedMethodInfo
    ResolveHScrollbarMethod "setLowerStepperSensitivity" o = Gtk.Range.RangeSetLowerStepperSensitivityMethodInfo
    ResolveHScrollbarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHScrollbarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHScrollbarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHScrollbarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHScrollbarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHScrollbarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHScrollbarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHScrollbarMethod "setMinSliderSize" o = Gtk.Range.RangeSetMinSliderSizeMethodInfo
    ResolveHScrollbarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHScrollbarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHScrollbarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHScrollbarMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveHScrollbarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHScrollbarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHScrollbarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHScrollbarMethod "setRange" o = Gtk.Range.RangeSetRangeMethodInfo
    ResolveHScrollbarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHScrollbarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHScrollbarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHScrollbarMethod "setRestrictToFillLevel" o = Gtk.Range.RangeSetRestrictToFillLevelMethodInfo
    ResolveHScrollbarMethod "setRoundDigits" o = Gtk.Range.RangeSetRoundDigitsMethodInfo
    ResolveHScrollbarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHScrollbarMethod "setShowFillLevel" o = Gtk.Range.RangeSetShowFillLevelMethodInfo
    ResolveHScrollbarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHScrollbarMethod "setSliderSizeFixed" o = Gtk.Range.RangeSetSliderSizeFixedMethodInfo
    ResolveHScrollbarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHScrollbarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHScrollbarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHScrollbarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHScrollbarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHScrollbarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHScrollbarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHScrollbarMethod "setUpperStepperSensitivity" o = Gtk.Range.RangeSetUpperStepperSensitivityMethodInfo
    ResolveHScrollbarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHScrollbarMethod "setValue" o = Gtk.Range.RangeSetValueMethodInfo
    ResolveHScrollbarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHScrollbarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHScrollbarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHScrollbarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHScrollbarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHScrollbarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHScrollbarMethod t HScrollbar, O.MethodInfo info HScrollbar p) => OL.IsLabel t (HScrollbar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HScrollbar
type instance O.AttributeList HScrollbar = HScrollbarAttributeList
type HScrollbarAttributeList = ('[ '("adjustment", Gtk.Range.RangeAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fillLevel", Gtk.Range.RangeFillLevelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", Gtk.Range.RangeInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("lowerStepperSensitivity", Gtk.Range.RangeLowerStepperSensitivityPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("restrictToFillLevel", Gtk.Range.RangeRestrictToFillLevelPropertyInfo), '("roundDigits", Gtk.Range.RangeRoundDigitsPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showFillLevel", Gtk.Range.RangeShowFillLevelPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("upperStepperSensitivity", Gtk.Range.RangeUpperStepperSensitivityPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HScrollbar = HScrollbarSignalList
type HScrollbarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("adjustBounds", Gtk.Range.RangeAdjustBoundsSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", Gtk.Range.RangeChangeValueSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSlider", Gtk.Range.RangeMoveSliderSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", Gtk.Range.RangeValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HScrollbar::new
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
--                     Just
--                       "the #GtkAdjustment to use, or %NULL to create a new adjustment"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HScrollbar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hscrollbar_new" gtk_hscrollbar_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr HScrollbar)

{-# DEPRECATED hScrollbarNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Scrollbar.scrollbarNew' with 'GI.Gtk.Enums.OrientationHorizontal' instead"] #-}
-- | Creates a new horizontal scrollbar.
hScrollbarNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a) =>
    Maybe (a)
    -- ^ /@adjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' to use, or 'P.Nothing' to create a new adjustment
    -> m HScrollbar
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.HScrollbar.HScrollbar'
hScrollbarNew adjustment = liftIO $ do
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    result <- gtk_hscrollbar_new maybeAdjustment
    checkUnexpectedReturnNULL "hScrollbarNew" result
    result' <- (newObject HScrollbar) result
    whenJust adjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

