{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Scrollbar.Scrollbar' widget is a horizontal or vertical scrollbar,
-- depending on the value of the t'GI.Gtk.Interfaces.Orientable.Orientable':@/orientation/@ property.
-- 
-- Its position and movement are controlled by the adjustment that is passed to
-- or created by 'GI.Gtk.Objects.Scrollbar.scrollbarNew'. See t'GI.Gtk.Objects.Adjustment.Adjustment' for more details. The
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ field sets the position of the thumb and must be between
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/lower/@ and t'GI.Gtk.Objects.Adjustment.Adjustment':@/upper/@ - t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-size/@. The
-- t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-size/@ represents the size of the visible scrollable area.
-- The fields t'GI.Gtk.Objects.Adjustment.Adjustment':@/step-increment/@ and t'GI.Gtk.Objects.Adjustment.Adjustment':@/page-increment/@
-- fields are added to or subtracted from the t'GI.Gtk.Objects.Adjustment.Adjustment':@/value/@ when the user
-- asks to move by a step (using e.g. the cursor arrow keys or, if present, the
-- stepper buttons) or by a page (using e.g. the Page Down\/Up keys).
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >scrollbar[.fine-tune]
-- >╰── contents
-- >    ├── [button.up]
-- >    ├── [button.down]
-- >    ├── trough
-- >    │   ╰── slider
-- >    ├── [button.up]
-- >    ╰── [button.down]
-- 
-- 
-- GtkScrollbar has a main CSS node with name scrollbar and a subnode for its
-- contents, with subnodes named trough and slider.
-- 
-- The main node gets the style class .fine-tune added when the scrollbar is
-- in \'fine-tuning\' mode.
-- 
-- If steppers are enabled, they are represented by up to four additional
-- subnodes with name button. These get the style classes .up and .down to
-- indicate in which direction they are moving.
-- 
-- Other style classes that may be added to scrollbars inside t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
-- include the positional classes (.left, .right, .top, .bottom) and style
-- classes related to overlay scrolling (.overlay-indicator, .dragging, .hovering).

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Scrollbar
    ( 

-- * Exported types
    Scrollbar(..)                           ,
    IsScrollbar                             ,
    toScrollbar                             ,
    noScrollbar                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScrollbarMethod                  ,
#endif


-- ** new #method:new#

    scrollbarNew                            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Range as Gtk.Range
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Scrollbar = Scrollbar (ManagedPtr Scrollbar)
    deriving (Eq)
foreign import ccall "gtk_scrollbar_get_type"
    c_gtk_scrollbar_get_type :: IO GType

instance GObject Scrollbar where
    gobjectType = c_gtk_scrollbar_get_type
    

-- | Convert 'Scrollbar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Scrollbar where
    toGValue o = do
        gtype <- c_gtk_scrollbar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Scrollbar)
        B.ManagedPtr.newObject Scrollbar ptr
        
    

-- | Type class for types which can be safely cast to `Scrollbar`, for instance with `toScrollbar`.
class (GObject o, O.IsDescendantOf Scrollbar o) => IsScrollbar o
instance (GObject o, O.IsDescendantOf Scrollbar o) => IsScrollbar o

instance O.HasParentTypes Scrollbar
type instance O.ParentTypes Scrollbar = '[Gtk.Range.Range, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Scrollbar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScrollbar :: (MonadIO m, IsScrollbar o) => o -> m Scrollbar
toScrollbar = liftIO . unsafeCastTo Scrollbar

-- | A convenience alias for `Nothing` :: `Maybe` `Scrollbar`.
noScrollbar :: Maybe Scrollbar
noScrollbar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveScrollbarMethod (t :: Symbol) (o :: *) :: * where
    ResolveScrollbarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveScrollbarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveScrollbarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveScrollbarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveScrollbarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveScrollbarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveScrollbarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveScrollbarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScrollbarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScrollbarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveScrollbarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveScrollbarMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveScrollbarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveScrollbarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveScrollbarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveScrollbarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveScrollbarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveScrollbarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveScrollbarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveScrollbarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveScrollbarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveScrollbarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveScrollbarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveScrollbarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveScrollbarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveScrollbarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveScrollbarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveScrollbarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveScrollbarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveScrollbarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveScrollbarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveScrollbarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveScrollbarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveScrollbarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveScrollbarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveScrollbarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveScrollbarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveScrollbarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveScrollbarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveScrollbarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveScrollbarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveScrollbarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveScrollbarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveScrollbarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveScrollbarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveScrollbarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveScrollbarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveScrollbarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveScrollbarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveScrollbarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveScrollbarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveScrollbarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveScrollbarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveScrollbarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveScrollbarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveScrollbarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScrollbarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveScrollbarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScrollbarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScrollbarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveScrollbarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveScrollbarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveScrollbarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveScrollbarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveScrollbarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveScrollbarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveScrollbarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveScrollbarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveScrollbarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveScrollbarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveScrollbarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveScrollbarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveScrollbarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveScrollbarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveScrollbarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveScrollbarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveScrollbarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveScrollbarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveScrollbarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveScrollbarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScrollbarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveScrollbarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveScrollbarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveScrollbarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveScrollbarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveScrollbarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveScrollbarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveScrollbarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveScrollbarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveScrollbarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveScrollbarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveScrollbarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveScrollbarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveScrollbarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveScrollbarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveScrollbarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveScrollbarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveScrollbarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScrollbarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScrollbarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveScrollbarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveScrollbarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveScrollbarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveScrollbarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveScrollbarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveScrollbarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveScrollbarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveScrollbarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveScrollbarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveScrollbarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveScrollbarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveScrollbarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveScrollbarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveScrollbarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveScrollbarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScrollbarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScrollbarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveScrollbarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveScrollbarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveScrollbarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveScrollbarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveScrollbarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveScrollbarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveScrollbarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveScrollbarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveScrollbarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveScrollbarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScrollbarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveScrollbarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveScrollbarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveScrollbarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveScrollbarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveScrollbarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveScrollbarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveScrollbarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveScrollbarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveScrollbarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScrollbarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScrollbarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveScrollbarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveScrollbarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveScrollbarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScrollbarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveScrollbarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveScrollbarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveScrollbarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveScrollbarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveScrollbarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScrollbarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveScrollbarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveScrollbarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScrollbarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveScrollbarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveScrollbarMethod "getAdjustment" o = Gtk.Range.RangeGetAdjustmentMethodInfo
    ResolveScrollbarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveScrollbarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveScrollbarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveScrollbarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveScrollbarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveScrollbarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveScrollbarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveScrollbarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveScrollbarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveScrollbarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveScrollbarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveScrollbarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveScrollbarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveScrollbarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveScrollbarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScrollbarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveScrollbarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveScrollbarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveScrollbarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveScrollbarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveScrollbarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveScrollbarMethod "getFillLevel" o = Gtk.Range.RangeGetFillLevelMethodInfo
    ResolveScrollbarMethod "getFlippable" o = Gtk.Range.RangeGetFlippableMethodInfo
    ResolveScrollbarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveScrollbarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveScrollbarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveScrollbarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveScrollbarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveScrollbarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveScrollbarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveScrollbarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveScrollbarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveScrollbarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveScrollbarMethod "getInverted" o = Gtk.Range.RangeGetInvertedMethodInfo
    ResolveScrollbarMethod "getLowerStepperSensitivity" o = Gtk.Range.RangeGetLowerStepperSensitivityMethodInfo
    ResolveScrollbarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveScrollbarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveScrollbarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveScrollbarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveScrollbarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveScrollbarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveScrollbarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveScrollbarMethod "getMinSliderSize" o = Gtk.Range.RangeGetMinSliderSizeMethodInfo
    ResolveScrollbarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveScrollbarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveScrollbarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveScrollbarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveScrollbarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveScrollbarMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveScrollbarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveScrollbarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveScrollbarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveScrollbarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveScrollbarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveScrollbarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveScrollbarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveScrollbarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveScrollbarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveScrollbarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveScrollbarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveScrollbarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScrollbarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScrollbarMethod "getRangeRect" o = Gtk.Range.RangeGetRangeRectMethodInfo
    ResolveScrollbarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveScrollbarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveScrollbarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveScrollbarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveScrollbarMethod "getRestrictToFillLevel" o = Gtk.Range.RangeGetRestrictToFillLevelMethodInfo
    ResolveScrollbarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveScrollbarMethod "getRoundDigits" o = Gtk.Range.RangeGetRoundDigitsMethodInfo
    ResolveScrollbarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveScrollbarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveScrollbarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveScrollbarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveScrollbarMethod "getShowFillLevel" o = Gtk.Range.RangeGetShowFillLevelMethodInfo
    ResolveScrollbarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveScrollbarMethod "getSliderRange" o = Gtk.Range.RangeGetSliderRangeMethodInfo
    ResolveScrollbarMethod "getSliderSizeFixed" o = Gtk.Range.RangeGetSliderSizeFixedMethodInfo
    ResolveScrollbarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveScrollbarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveScrollbarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveScrollbarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveScrollbarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveScrollbarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveScrollbarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveScrollbarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveScrollbarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveScrollbarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveScrollbarMethod "getUpperStepperSensitivity" o = Gtk.Range.RangeGetUpperStepperSensitivityMethodInfo
    ResolveScrollbarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveScrollbarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveScrollbarMethod "getValue" o = Gtk.Range.RangeGetValueMethodInfo
    ResolveScrollbarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveScrollbarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveScrollbarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveScrollbarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveScrollbarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveScrollbarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveScrollbarMethod "setAdjustment" o = Gtk.Range.RangeSetAdjustmentMethodInfo
    ResolveScrollbarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveScrollbarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveScrollbarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveScrollbarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveScrollbarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveScrollbarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveScrollbarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveScrollbarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveScrollbarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScrollbarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScrollbarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveScrollbarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveScrollbarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveScrollbarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveScrollbarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveScrollbarMethod "setFillLevel" o = Gtk.Range.RangeSetFillLevelMethodInfo
    ResolveScrollbarMethod "setFlippable" o = Gtk.Range.RangeSetFlippableMethodInfo
    ResolveScrollbarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveScrollbarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveScrollbarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveScrollbarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveScrollbarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveScrollbarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveScrollbarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveScrollbarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveScrollbarMethod "setIncrements" o = Gtk.Range.RangeSetIncrementsMethodInfo
    ResolveScrollbarMethod "setInverted" o = Gtk.Range.RangeSetInvertedMethodInfo
    ResolveScrollbarMethod "setLowerStepperSensitivity" o = Gtk.Range.RangeSetLowerStepperSensitivityMethodInfo
    ResolveScrollbarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveScrollbarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveScrollbarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveScrollbarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveScrollbarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveScrollbarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveScrollbarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveScrollbarMethod "setMinSliderSize" o = Gtk.Range.RangeSetMinSliderSizeMethodInfo
    ResolveScrollbarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveScrollbarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveScrollbarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveScrollbarMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveScrollbarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveScrollbarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveScrollbarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScrollbarMethod "setRange" o = Gtk.Range.RangeSetRangeMethodInfo
    ResolveScrollbarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveScrollbarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveScrollbarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveScrollbarMethod "setRestrictToFillLevel" o = Gtk.Range.RangeSetRestrictToFillLevelMethodInfo
    ResolveScrollbarMethod "setRoundDigits" o = Gtk.Range.RangeSetRoundDigitsMethodInfo
    ResolveScrollbarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveScrollbarMethod "setShowFillLevel" o = Gtk.Range.RangeSetShowFillLevelMethodInfo
    ResolveScrollbarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveScrollbarMethod "setSliderSizeFixed" o = Gtk.Range.RangeSetSliderSizeFixedMethodInfo
    ResolveScrollbarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveScrollbarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveScrollbarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveScrollbarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveScrollbarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveScrollbarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveScrollbarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveScrollbarMethod "setUpperStepperSensitivity" o = Gtk.Range.RangeSetUpperStepperSensitivityMethodInfo
    ResolveScrollbarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveScrollbarMethod "setValue" o = Gtk.Range.RangeSetValueMethodInfo
    ResolveScrollbarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveScrollbarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveScrollbarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveScrollbarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveScrollbarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveScrollbarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScrollbarMethod t Scrollbar, O.MethodInfo info Scrollbar p) => OL.IsLabel t (Scrollbar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Scrollbar
type instance O.AttributeList Scrollbar = ScrollbarAttributeList
type ScrollbarAttributeList = ('[ '("adjustment", Gtk.Range.RangeAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("fillLevel", Gtk.Range.RangeFillLevelPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", Gtk.Range.RangeInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("lowerStepperSensitivity", Gtk.Range.RangeLowerStepperSensitivityPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("restrictToFillLevel", Gtk.Range.RangeRestrictToFillLevelPropertyInfo), '("roundDigits", Gtk.Range.RangeRoundDigitsPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showFillLevel", Gtk.Range.RangeShowFillLevelPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("upperStepperSensitivity", Gtk.Range.RangeUpperStepperSensitivityPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Scrollbar = ScrollbarSignalList
type ScrollbarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("adjustBounds", Gtk.Range.RangeAdjustBoundsSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", Gtk.Range.RangeChangeValueSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSlider", Gtk.Range.RangeMoveSliderSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", Gtk.Range.RangeValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Scrollbar::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the scrollbar\8217s orientation."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkAdjustment to use, or %NULL to create a new adjustment."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Scrollbar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrollbar_new" gtk_scrollbar_new :: 
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr Scrollbar)

-- | Creates a new scrollbar with the given orientation.
-- 
-- /Since: 3.0/
scrollbarNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a) =>
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the scrollbar’s orientation.
    -> Maybe (a)
    -- ^ /@adjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' to use, or 'P.Nothing' to create a new adjustment.
    -> m Scrollbar
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.Scrollbar.Scrollbar'.
scrollbarNew orientation adjustment = liftIO $ do
    let orientation' = (fromIntegral . fromEnum) orientation
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    result <- gtk_scrollbar_new orientation' maybeAdjustment
    checkUnexpectedReturnNULL "scrollbarNew" result
    result' <- (newObject Scrollbar) result
    whenJust adjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

