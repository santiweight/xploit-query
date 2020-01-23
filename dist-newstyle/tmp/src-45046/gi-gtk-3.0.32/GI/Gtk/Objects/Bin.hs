{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Bin.Bin' widget is a container with just one child.
-- It is not very useful itself, but it is useful for deriving subclasses,
-- since it provides common code needed for handling a single child widget.
-- 
-- Many GTK+ widgets are subclasses of t'GI.Gtk.Objects.Bin.Bin', including t'GI.Gtk.Objects.Window.Window',
-- t'GI.Gtk.Objects.Button.Button', t'GI.Gtk.Objects.Frame.Frame', t'GI.Gtk.Objects.HandleBox.HandleBox' or t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Bin
    ( 

-- * Exported types
    Bin(..)                                 ,
    IsBin                                   ,
    toBin                                   ,
    noBin                                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveBinMethod                        ,
#endif


-- ** getChild #method:getChild#

#if defined(ENABLE_OVERLOADING)
    BinGetChildMethodInfo                   ,
#endif
    binGetChild                             ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Bin = Bin (ManagedPtr Bin)
    deriving (Eq)
foreign import ccall "gtk_bin_get_type"
    c_gtk_bin_get_type :: IO GType

instance GObject Bin where
    gobjectType = c_gtk_bin_get_type
    

-- | Convert 'Bin' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Bin where
    toGValue o = do
        gtype <- c_gtk_bin_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Bin)
        B.ManagedPtr.newObject Bin ptr
        
    

-- | Type class for types which can be safely cast to `Bin`, for instance with `toBin`.
class (GObject o, O.IsDescendantOf Bin o) => IsBin o
instance (GObject o, O.IsDescendantOf Bin o) => IsBin o

instance O.HasParentTypes Bin
type instance O.ParentTypes Bin = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Bin`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBin :: (MonadIO m, IsBin o) => o -> m Bin
toBin = liftIO . unsafeCastTo Bin

-- | A convenience alias for `Nothing` :: `Maybe` `Bin`.
noBin :: Maybe Bin
noBin = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveBinMethod (t :: Symbol) (o :: *) :: * where
    ResolveBinMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveBinMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveBinMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveBinMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveBinMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveBinMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveBinMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveBinMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveBinMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBinMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBinMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveBinMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveBinMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveBinMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveBinMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveBinMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveBinMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveBinMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveBinMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveBinMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveBinMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveBinMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveBinMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveBinMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveBinMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveBinMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveBinMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveBinMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveBinMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveBinMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveBinMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveBinMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveBinMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveBinMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveBinMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveBinMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveBinMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveBinMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveBinMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveBinMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveBinMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveBinMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveBinMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveBinMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveBinMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveBinMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveBinMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveBinMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveBinMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveBinMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveBinMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveBinMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveBinMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveBinMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveBinMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveBinMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveBinMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveBinMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveBinMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveBinMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveBinMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveBinMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveBinMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBinMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveBinMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveBinMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBinMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBinMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveBinMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveBinMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveBinMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveBinMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveBinMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveBinMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveBinMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveBinMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveBinMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveBinMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveBinMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveBinMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveBinMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveBinMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveBinMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveBinMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveBinMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveBinMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveBinMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveBinMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBinMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveBinMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveBinMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveBinMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveBinMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveBinMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveBinMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveBinMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveBinMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveBinMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveBinMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveBinMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveBinMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveBinMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveBinMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveBinMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveBinMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveBinMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBinMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBinMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveBinMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveBinMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveBinMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveBinMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveBinMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveBinMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveBinMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveBinMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveBinMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveBinMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveBinMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveBinMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveBinMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveBinMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveBinMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveBinMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBinMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBinMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveBinMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveBinMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveBinMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveBinMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveBinMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveBinMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveBinMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveBinMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveBinMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveBinMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveBinMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveBinMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBinMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveBinMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveBinMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveBinMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveBinMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveBinMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveBinMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveBinMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveBinMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveBinMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBinMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBinMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveBinMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveBinMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveBinMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBinMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveBinMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveBinMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveBinMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveBinMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveBinMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBinMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveBinMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveBinMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveBinMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBinMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveBinMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveBinMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveBinMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveBinMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveBinMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveBinMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveBinMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveBinMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveBinMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveBinMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveBinMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveBinMethod "getChild" o = BinGetChildMethodInfo
    ResolveBinMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveBinMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveBinMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveBinMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveBinMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveBinMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveBinMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBinMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveBinMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveBinMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveBinMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveBinMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveBinMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveBinMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveBinMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveBinMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveBinMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveBinMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveBinMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveBinMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveBinMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveBinMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveBinMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveBinMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveBinMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveBinMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveBinMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveBinMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveBinMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveBinMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveBinMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveBinMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveBinMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveBinMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveBinMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveBinMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveBinMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveBinMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveBinMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveBinMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveBinMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveBinMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveBinMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveBinMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveBinMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveBinMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveBinMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveBinMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveBinMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveBinMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveBinMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveBinMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBinMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBinMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveBinMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveBinMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveBinMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveBinMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveBinMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveBinMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveBinMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveBinMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveBinMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveBinMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveBinMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveBinMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveBinMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveBinMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveBinMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveBinMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveBinMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveBinMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveBinMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveBinMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveBinMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveBinMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveBinMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveBinMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveBinMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveBinMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveBinMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveBinMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveBinMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveBinMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveBinMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveBinMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveBinMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveBinMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveBinMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveBinMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveBinMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveBinMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBinMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBinMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveBinMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveBinMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveBinMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveBinMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveBinMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveBinMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveBinMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveBinMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveBinMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveBinMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveBinMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveBinMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveBinMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveBinMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveBinMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveBinMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveBinMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveBinMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveBinMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveBinMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveBinMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveBinMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveBinMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveBinMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveBinMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveBinMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveBinMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveBinMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveBinMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBinMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveBinMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveBinMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveBinMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveBinMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveBinMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveBinMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveBinMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveBinMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveBinMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveBinMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveBinMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveBinMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveBinMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveBinMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveBinMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveBinMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveBinMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveBinMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveBinMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveBinMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBinMethod t Bin, O.MethodInfo info Bin p) => OL.IsLabel t (Bin -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Bin
type instance O.AttributeList Bin = BinAttributeList
type BinAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Bin = BinSignalList
type BinSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Bin::get_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bin"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Bin" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBin" , sinceVersion = Nothing }
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

foreign import ccall "gtk_bin_get_child" gtk_bin_get_child :: 
    Ptr Bin ->                              -- bin : TInterface (Name {namespace = "Gtk", name = "Bin"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the child of the t'GI.Gtk.Objects.Bin.Bin', or 'P.Nothing' if the bin contains
-- no child widget. The returned widget does not have a reference
-- added, so you do not need to unref it.
binGetChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsBin a) =>
    a
    -- ^ /@bin@/: a t'GI.Gtk.Objects.Bin.Bin'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the child of /@bin@/, or 'P.Nothing' if it does
    -- not have a child.
binGetChild bin = liftIO $ do
    bin' <- unsafeManagedPtrCastPtr bin
    result <- gtk_bin_get_child bin'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr bin
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BinGetChildMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsBin a) => O.MethodInfo BinGetChildMethodInfo a signature where
    overloadedMethod = binGetChild

#endif

