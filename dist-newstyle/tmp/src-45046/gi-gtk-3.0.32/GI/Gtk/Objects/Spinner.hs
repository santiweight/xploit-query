{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkSpinner widget displays an icon-size spinning animation.
-- It is often used as an alternative to a t'GI.Gtk.Objects.ProgressBar.ProgressBar' for
-- displaying indefinite activity, instead of actual progress.
-- 
-- To start the animation, use 'GI.Gtk.Objects.Spinner.spinnerStart', to stop it
-- use 'GI.Gtk.Objects.Spinner.spinnerStop'.
-- 
-- = CSS nodes
-- 
-- GtkSpinner has a single CSS node with the name spinner. When the animation is
-- active, the :checked pseudoclass is added to this node.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Spinner
    ( 

-- * Exported types
    Spinner(..)                             ,
    IsSpinner                               ,
    toSpinner                               ,
    noSpinner                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSpinnerMethod                    ,
#endif


-- ** new #method:new#

    spinnerNew                              ,


-- ** start #method:start#

#if defined(ENABLE_OVERLOADING)
    SpinnerStartMethodInfo                  ,
#endif
    spinnerStart                            ,


-- ** stop #method:stop#

#if defined(ENABLE_OVERLOADING)
    SpinnerStopMethodInfo                   ,
#endif
    spinnerStop                             ,




 -- * Properties
-- ** active #attr:active#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinnerActivePropertyInfo               ,
#endif
    constructSpinnerActive                  ,
    getSpinnerActive                        ,
    setSpinnerActive                        ,
#if defined(ENABLE_OVERLOADING)
    spinnerActive                           ,
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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Spinner = Spinner (ManagedPtr Spinner)
    deriving (Eq)
foreign import ccall "gtk_spinner_get_type"
    c_gtk_spinner_get_type :: IO GType

instance GObject Spinner where
    gobjectType = c_gtk_spinner_get_type
    

-- | Convert 'Spinner' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Spinner where
    toGValue o = do
        gtype <- c_gtk_spinner_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Spinner)
        B.ManagedPtr.newObject Spinner ptr
        
    

-- | Type class for types which can be safely cast to `Spinner`, for instance with `toSpinner`.
class (GObject o, O.IsDescendantOf Spinner o) => IsSpinner o
instance (GObject o, O.IsDescendantOf Spinner o) => IsSpinner o

instance O.HasParentTypes Spinner
type instance O.ParentTypes Spinner = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Spinner`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSpinner :: (MonadIO m, IsSpinner o) => o -> m Spinner
toSpinner = liftIO . unsafeCastTo Spinner

-- | A convenience alias for `Nothing` :: `Maybe` `Spinner`.
noSpinner :: Maybe Spinner
noSpinner = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSpinnerMethod (t :: Symbol) (o :: *) :: * where
    ResolveSpinnerMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSpinnerMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSpinnerMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSpinnerMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSpinnerMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSpinnerMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSpinnerMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSpinnerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSpinnerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSpinnerMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSpinnerMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSpinnerMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveSpinnerMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSpinnerMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSpinnerMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSpinnerMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSpinnerMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSpinnerMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSpinnerMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSpinnerMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSpinnerMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSpinnerMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSpinnerMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSpinnerMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSpinnerMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSpinnerMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSpinnerMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSpinnerMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSpinnerMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSpinnerMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSpinnerMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSpinnerMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSpinnerMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSpinnerMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSpinnerMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSpinnerMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSpinnerMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSpinnerMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSpinnerMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSpinnerMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSpinnerMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSpinnerMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSpinnerMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSpinnerMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSpinnerMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSpinnerMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSpinnerMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSpinnerMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSpinnerMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSpinnerMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSpinnerMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSpinnerMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSpinnerMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSpinnerMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSpinnerMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSpinnerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSpinnerMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSpinnerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSpinnerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSpinnerMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSpinnerMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSpinnerMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSpinnerMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSpinnerMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSpinnerMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSpinnerMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSpinnerMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSpinnerMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSpinnerMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSpinnerMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSpinnerMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSpinnerMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSpinnerMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSpinnerMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSpinnerMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSpinnerMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSpinnerMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSpinnerMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSpinnerMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSpinnerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSpinnerMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSpinnerMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSpinnerMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSpinnerMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSpinnerMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSpinnerMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSpinnerMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSpinnerMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSpinnerMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSpinnerMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSpinnerMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSpinnerMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSpinnerMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSpinnerMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSpinnerMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSpinnerMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSpinnerMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSpinnerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSpinnerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSpinnerMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSpinnerMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSpinnerMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSpinnerMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSpinnerMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSpinnerMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSpinnerMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSpinnerMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSpinnerMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSpinnerMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSpinnerMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSpinnerMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSpinnerMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSpinnerMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSpinnerMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSpinnerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSpinnerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSpinnerMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSpinnerMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSpinnerMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSpinnerMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSpinnerMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSpinnerMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSpinnerMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSpinnerMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSpinnerMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSpinnerMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSpinnerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSpinnerMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSpinnerMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSpinnerMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSpinnerMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSpinnerMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSpinnerMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSpinnerMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSpinnerMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSpinnerMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSpinnerMethod "start" o = SpinnerStartMethodInfo
    ResolveSpinnerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSpinnerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSpinnerMethod "stop" o = SpinnerStopMethodInfo
    ResolveSpinnerMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSpinnerMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSpinnerMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSpinnerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSpinnerMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSpinnerMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSpinnerMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSpinnerMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSpinnerMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSpinnerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSpinnerMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSpinnerMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSpinnerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSpinnerMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSpinnerMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSpinnerMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSpinnerMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSpinnerMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSpinnerMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSpinnerMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSpinnerMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSpinnerMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSpinnerMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSpinnerMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSpinnerMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSpinnerMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSpinnerMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSpinnerMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSpinnerMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSpinnerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSpinnerMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSpinnerMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSpinnerMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSpinnerMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSpinnerMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSpinnerMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSpinnerMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSpinnerMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSpinnerMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSpinnerMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSpinnerMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSpinnerMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSpinnerMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSpinnerMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSpinnerMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSpinnerMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSpinnerMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSpinnerMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSpinnerMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSpinnerMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSpinnerMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSpinnerMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSpinnerMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSpinnerMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSpinnerMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSpinnerMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSpinnerMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSpinnerMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSpinnerMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSpinnerMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSpinnerMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSpinnerMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSpinnerMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSpinnerMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSpinnerMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSpinnerMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSpinnerMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSpinnerMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSpinnerMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSpinnerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSpinnerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSpinnerMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSpinnerMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSpinnerMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSpinnerMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSpinnerMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSpinnerMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSpinnerMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSpinnerMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSpinnerMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSpinnerMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSpinnerMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSpinnerMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSpinnerMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSpinnerMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSpinnerMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSpinnerMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSpinnerMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSpinnerMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSpinnerMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSpinnerMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSpinnerMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSpinnerMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSpinnerMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSpinnerMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSpinnerMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSpinnerMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSpinnerMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSpinnerMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSpinnerMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSpinnerMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSpinnerMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSpinnerMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSpinnerMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSpinnerMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSpinnerMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSpinnerMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSpinnerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSpinnerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSpinnerMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSpinnerMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSpinnerMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSpinnerMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSpinnerMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSpinnerMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSpinnerMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSpinnerMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSpinnerMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSpinnerMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSpinnerMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSpinnerMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSpinnerMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSpinnerMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSpinnerMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSpinnerMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSpinnerMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSpinnerMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSpinnerMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSpinnerMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSpinnerMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSpinnerMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSpinnerMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSpinnerMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSpinnerMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSpinnerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSpinnerMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSpinnerMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSpinnerMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSpinnerMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSpinnerMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSpinnerMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSpinnerMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSpinnerMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSpinnerMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSpinnerMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSpinnerMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSpinnerMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSpinnerMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSpinnerMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSpinnerMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSpinnerMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSpinnerMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSpinnerMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSpinnerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSpinnerMethod t Spinner, O.MethodInfo info Spinner p) => OL.IsLabel t (Spinner -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinner #active
-- @
getSpinnerActive :: (MonadIO m, IsSpinner o) => o -> m Bool
getSpinnerActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinner [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinnerActive :: (MonadIO m, IsSpinner o) => o -> Bool -> m ()
setSpinnerActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinnerActive :: (IsSpinner o) => Bool -> IO (GValueConstruct o)
constructSpinnerActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data SpinnerActivePropertyInfo
instance AttrInfo SpinnerActivePropertyInfo where
    type AttrAllowedOps SpinnerActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinnerActivePropertyInfo = IsSpinner
    type AttrSetTypeConstraint SpinnerActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SpinnerActivePropertyInfo = (~) Bool
    type AttrTransferType SpinnerActivePropertyInfo = Bool
    type AttrGetType SpinnerActivePropertyInfo = Bool
    type AttrLabel SpinnerActivePropertyInfo = "active"
    type AttrOrigin SpinnerActivePropertyInfo = Spinner
    attrGet = getSpinnerActive
    attrSet = setSpinnerActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinnerActive
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Spinner
type instance O.AttributeList Spinner = SpinnerAttributeList
type SpinnerAttributeList = ('[ '("active", SpinnerActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
spinnerActive :: AttrLabelProxy "active"
spinnerActive = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Spinner = SpinnerSignalList
type SpinnerSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Spinner::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Spinner" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spinner_new" gtk_spinner_new :: 
    IO (Ptr Spinner)

-- | Returns a new spinner widget. Not yet started.
-- 
-- /Since: 2.20/
spinnerNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Spinner
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Spinner.Spinner'
spinnerNew  = liftIO $ do
    result <- gtk_spinner_new
    checkUnexpectedReturnNULL "spinnerNew" result
    result' <- (newObject Spinner) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Spinner::start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spinner"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Spinner" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinner" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spinner_start" gtk_spinner_start :: 
    Ptr Spinner ->                          -- spinner : TInterface (Name {namespace = "Gtk", name = "Spinner"})
    IO ()

-- | Starts the animation of the spinner.
-- 
-- /Since: 2.20/
spinnerStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinner a) =>
    a
    -- ^ /@spinner@/: a t'GI.Gtk.Objects.Spinner.Spinner'
    -> m ()
spinnerStart spinner = liftIO $ do
    spinner' <- unsafeManagedPtrCastPtr spinner
    gtk_spinner_start spinner'
    touchManagedPtr spinner
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinnerStartMethodInfo
instance (signature ~ (m ()), MonadIO m, IsSpinner a) => O.MethodInfo SpinnerStartMethodInfo a signature where
    overloadedMethod = spinnerStart

#endif

-- method Spinner::stop
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spinner"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Spinner" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinner" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spinner_stop" gtk_spinner_stop :: 
    Ptr Spinner ->                          -- spinner : TInterface (Name {namespace = "Gtk", name = "Spinner"})
    IO ()

-- | Stops the animation of the spinner.
-- 
-- /Since: 2.20/
spinnerStop ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinner a) =>
    a
    -- ^ /@spinner@/: a t'GI.Gtk.Objects.Spinner.Spinner'
    -> m ()
spinnerStop spinner = liftIO $ do
    spinner' <- unsafeManagedPtrCastPtr spinner
    gtk_spinner_stop spinner'
    touchManagedPtr spinner
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinnerStopMethodInfo
instance (signature ~ (m ()), MonadIO m, IsSpinner a) => O.MethodInfo SpinnerStopMethodInfo a signature where
    overloadedMethod = spinnerStop

#endif

