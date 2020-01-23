{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The VPaned widget is a container widget with two
-- children arranged vertically. The division between
-- the two panes is adjustable by the user by dragging
-- a handle. See t'GI.Gtk.Objects.Paned.Paned' for details.
-- 
-- GtkVPaned has been deprecated, use t'GI.Gtk.Objects.Paned.Paned' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.VPaned
    ( 

-- * Exported types
    VPaned(..)                              ,
    IsVPaned                                ,
    toVPaned                                ,
    noVPaned                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveVPanedMethod                     ,
#endif


-- ** new #method:new#

    vPanedNew                               ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Paned as Gtk.Paned
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype VPaned = VPaned (ManagedPtr VPaned)
    deriving (Eq)
foreign import ccall "gtk_vpaned_get_type"
    c_gtk_vpaned_get_type :: IO GType

instance GObject VPaned where
    gobjectType = c_gtk_vpaned_get_type
    

-- | Convert 'VPaned' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue VPaned where
    toGValue o = do
        gtype <- c_gtk_vpaned_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr VPaned)
        B.ManagedPtr.newObject VPaned ptr
        
    

-- | Type class for types which can be safely cast to `VPaned`, for instance with `toVPaned`.
class (GObject o, O.IsDescendantOf VPaned o) => IsVPaned o
instance (GObject o, O.IsDescendantOf VPaned o) => IsVPaned o

instance O.HasParentTypes VPaned
type instance O.ParentTypes VPaned = '[Gtk.Paned.Paned, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `VPaned`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toVPaned :: (MonadIO m, IsVPaned o) => o -> m VPaned
toVPaned = liftIO . unsafeCastTo VPaned

-- | A convenience alias for `Nothing` :: `Maybe` `VPaned`.
noVPaned :: Maybe VPaned
noVPaned = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveVPanedMethod (t :: Symbol) (o :: *) :: * where
    ResolveVPanedMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveVPanedMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveVPanedMethod "add1" o = Gtk.Paned.PanedAdd1MethodInfo
    ResolveVPanedMethod "add2" o = Gtk.Paned.PanedAdd2MethodInfo
    ResolveVPanedMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveVPanedMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveVPanedMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveVPanedMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveVPanedMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveVPanedMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveVPanedMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveVPanedMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveVPanedMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveVPanedMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveVPanedMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveVPanedMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveVPanedMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveVPanedMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveVPanedMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveVPanedMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveVPanedMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveVPanedMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveVPanedMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveVPanedMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveVPanedMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveVPanedMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveVPanedMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveVPanedMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveVPanedMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveVPanedMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveVPanedMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveVPanedMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveVPanedMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveVPanedMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveVPanedMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveVPanedMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveVPanedMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveVPanedMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveVPanedMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveVPanedMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveVPanedMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveVPanedMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveVPanedMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveVPanedMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveVPanedMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveVPanedMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveVPanedMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveVPanedMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveVPanedMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveVPanedMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveVPanedMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveVPanedMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveVPanedMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveVPanedMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveVPanedMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveVPanedMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveVPanedMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveVPanedMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveVPanedMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveVPanedMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveVPanedMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveVPanedMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveVPanedMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveVPanedMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveVPanedMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveVPanedMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveVPanedMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveVPanedMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveVPanedMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveVPanedMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveVPanedMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveVPanedMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveVPanedMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveVPanedMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveVPanedMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveVPanedMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveVPanedMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveVPanedMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveVPanedMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveVPanedMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveVPanedMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveVPanedMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveVPanedMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveVPanedMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveVPanedMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveVPanedMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveVPanedMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveVPanedMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveVPanedMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveVPanedMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveVPanedMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveVPanedMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveVPanedMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveVPanedMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveVPanedMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveVPanedMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveVPanedMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveVPanedMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveVPanedMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveVPanedMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveVPanedMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveVPanedMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveVPanedMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveVPanedMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveVPanedMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveVPanedMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveVPanedMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveVPanedMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveVPanedMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveVPanedMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveVPanedMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveVPanedMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveVPanedMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveVPanedMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveVPanedMethod "pack1" o = Gtk.Paned.PanedPack1MethodInfo
    ResolveVPanedMethod "pack2" o = Gtk.Paned.PanedPack2MethodInfo
    ResolveVPanedMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveVPanedMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveVPanedMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveVPanedMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveVPanedMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveVPanedMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveVPanedMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveVPanedMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveVPanedMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveVPanedMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveVPanedMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveVPanedMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveVPanedMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveVPanedMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveVPanedMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveVPanedMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveVPanedMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveVPanedMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveVPanedMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveVPanedMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveVPanedMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveVPanedMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveVPanedMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveVPanedMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveVPanedMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveVPanedMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveVPanedMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveVPanedMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveVPanedMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveVPanedMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveVPanedMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveVPanedMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveVPanedMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveVPanedMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveVPanedMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveVPanedMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveVPanedMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveVPanedMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveVPanedMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveVPanedMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveVPanedMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveVPanedMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveVPanedMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveVPanedMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveVPanedMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveVPanedMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveVPanedMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveVPanedMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveVPanedMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveVPanedMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveVPanedMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveVPanedMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveVPanedMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveVPanedMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveVPanedMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveVPanedMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveVPanedMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveVPanedMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveVPanedMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveVPanedMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveVPanedMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveVPanedMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveVPanedMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveVPanedMethod "getChild1" o = Gtk.Paned.PanedGetChild1MethodInfo
    ResolveVPanedMethod "getChild2" o = Gtk.Paned.PanedGetChild2MethodInfo
    ResolveVPanedMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveVPanedMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveVPanedMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveVPanedMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveVPanedMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveVPanedMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveVPanedMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveVPanedMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveVPanedMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveVPanedMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveVPanedMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveVPanedMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveVPanedMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveVPanedMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveVPanedMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveVPanedMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveVPanedMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveVPanedMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveVPanedMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveVPanedMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveVPanedMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveVPanedMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveVPanedMethod "getHandleWindow" o = Gtk.Paned.PanedGetHandleWindowMethodInfo
    ResolveVPanedMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveVPanedMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveVPanedMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveVPanedMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveVPanedMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveVPanedMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveVPanedMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveVPanedMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveVPanedMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveVPanedMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveVPanedMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveVPanedMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveVPanedMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveVPanedMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveVPanedMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveVPanedMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveVPanedMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveVPanedMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveVPanedMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveVPanedMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveVPanedMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveVPanedMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveVPanedMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveVPanedMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveVPanedMethod "getPosition" o = Gtk.Paned.PanedGetPositionMethodInfo
    ResolveVPanedMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveVPanedMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveVPanedMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveVPanedMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveVPanedMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveVPanedMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveVPanedMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveVPanedMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveVPanedMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveVPanedMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveVPanedMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveVPanedMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveVPanedMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveVPanedMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveVPanedMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveVPanedMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveVPanedMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveVPanedMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveVPanedMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveVPanedMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveVPanedMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveVPanedMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveVPanedMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveVPanedMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveVPanedMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveVPanedMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveVPanedMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveVPanedMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveVPanedMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveVPanedMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveVPanedMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveVPanedMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveVPanedMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveVPanedMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveVPanedMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveVPanedMethod "getWideHandle" o = Gtk.Paned.PanedGetWideHandleMethodInfo
    ResolveVPanedMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveVPanedMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveVPanedMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveVPanedMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveVPanedMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveVPanedMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveVPanedMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveVPanedMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveVPanedMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveVPanedMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveVPanedMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveVPanedMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveVPanedMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveVPanedMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveVPanedMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveVPanedMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveVPanedMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveVPanedMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveVPanedMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveVPanedMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveVPanedMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveVPanedMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveVPanedMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveVPanedMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveVPanedMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveVPanedMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveVPanedMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveVPanedMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveVPanedMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveVPanedMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveVPanedMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveVPanedMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveVPanedMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveVPanedMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveVPanedMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveVPanedMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveVPanedMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveVPanedMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveVPanedMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveVPanedMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveVPanedMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveVPanedMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveVPanedMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveVPanedMethod "setPosition" o = Gtk.Paned.PanedSetPositionMethodInfo
    ResolveVPanedMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveVPanedMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveVPanedMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveVPanedMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveVPanedMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveVPanedMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveVPanedMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveVPanedMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveVPanedMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveVPanedMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveVPanedMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveVPanedMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveVPanedMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveVPanedMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveVPanedMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveVPanedMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveVPanedMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveVPanedMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveVPanedMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveVPanedMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveVPanedMethod "setWideHandle" o = Gtk.Paned.PanedSetWideHandleMethodInfo
    ResolveVPanedMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveVPanedMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveVPanedMethod t VPaned, O.MethodInfo info VPaned p) => OL.IsLabel t (VPaned -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList VPaned
type instance O.AttributeList VPaned = VPanedAttributeList
type VPanedAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxPosition", Gtk.Paned.PanedMaxPositionPropertyInfo), '("minPosition", Gtk.Paned.PanedMinPositionPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("position", Gtk.Paned.PanedPositionPropertyInfo), '("positionSet", Gtk.Paned.PanedPositionSetPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("wideHandle", Gtk.Paned.PanedWideHandlePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList VPaned = VPanedSignalList
type VPanedSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("acceptPosition", Gtk.Paned.PanedAcceptPositionSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancelPosition", Gtk.Paned.PanedCancelPositionSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("cycleChildFocus", Gtk.Paned.PanedCycleChildFocusSignalInfo), '("cycleHandleFocus", Gtk.Paned.PanedCycleHandleFocusSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveHandle", Gtk.Paned.PanedMoveHandleSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleHandleFocus", Gtk.Paned.PanedToggleHandleFocusSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method VPaned::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "VPaned" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_vpaned_new" gtk_vpaned_new :: 
    IO (Ptr VPaned)

{-# DEPRECATED vPanedNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Paned.panedNew' with 'GI.Gtk.Enums.OrientationVertical' instead"] #-}
-- | Create a new t'GI.Gtk.Objects.VPaned.VPaned'
vPanedNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m VPaned
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.VPaned.VPaned'
vPanedNew  = liftIO $ do
    result <- gtk_vpaned_new
    checkUnexpectedReturnNULL "vPanedNew" result
    result' <- (newObject VPaned) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

