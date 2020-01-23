{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The HPaned widget is a container widget with two
-- children arranged horizontally. The division between
-- the two panes is adjustable by the user by dragging
-- a handle. See t'GI.Gtk.Objects.Paned.Paned' for details.
-- 
-- GtkHPaned has been deprecated, use t'GI.Gtk.Objects.Paned.Paned' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HPaned
    ( 

-- * Exported types
    HPaned(..)                              ,
    IsHPaned                                ,
    toHPaned                                ,
    noHPaned                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHPanedMethod                     ,
#endif


-- ** new #method:new#

    hPanedNew                               ,




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
newtype HPaned = HPaned (ManagedPtr HPaned)
    deriving (Eq)
foreign import ccall "gtk_hpaned_get_type"
    c_gtk_hpaned_get_type :: IO GType

instance GObject HPaned where
    gobjectType = c_gtk_hpaned_get_type
    

-- | Convert 'HPaned' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HPaned where
    toGValue o = do
        gtype <- c_gtk_hpaned_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HPaned)
        B.ManagedPtr.newObject HPaned ptr
        
    

-- | Type class for types which can be safely cast to `HPaned`, for instance with `toHPaned`.
class (GObject o, O.IsDescendantOf HPaned o) => IsHPaned o
instance (GObject o, O.IsDescendantOf HPaned o) => IsHPaned o

instance O.HasParentTypes HPaned
type instance O.ParentTypes HPaned = '[Gtk.Paned.Paned, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `HPaned`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHPaned :: (MonadIO m, IsHPaned o) => o -> m HPaned
toHPaned = liftIO . unsafeCastTo HPaned

-- | A convenience alias for `Nothing` :: `Maybe` `HPaned`.
noHPaned :: Maybe HPaned
noHPaned = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHPanedMethod (t :: Symbol) (o :: *) :: * where
    ResolveHPanedMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHPanedMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveHPanedMethod "add1" o = Gtk.Paned.PanedAdd1MethodInfo
    ResolveHPanedMethod "add2" o = Gtk.Paned.PanedAdd2MethodInfo
    ResolveHPanedMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHPanedMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHPanedMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHPanedMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHPanedMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHPanedMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHPanedMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHPanedMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHPanedMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHPanedMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveHPanedMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHPanedMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveHPanedMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveHPanedMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveHPanedMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveHPanedMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveHPanedMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHPanedMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHPanedMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHPanedMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHPanedMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHPanedMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHPanedMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHPanedMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHPanedMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHPanedMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHPanedMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHPanedMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHPanedMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHPanedMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHPanedMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHPanedMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHPanedMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHPanedMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHPanedMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHPanedMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHPanedMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHPanedMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHPanedMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHPanedMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHPanedMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHPanedMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHPanedMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHPanedMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHPanedMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHPanedMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHPanedMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHPanedMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHPanedMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHPanedMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHPanedMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHPanedMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHPanedMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHPanedMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHPanedMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHPanedMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHPanedMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHPanedMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHPanedMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHPanedMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveHPanedMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHPanedMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveHPanedMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHPanedMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHPanedMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHPanedMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHPanedMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHPanedMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHPanedMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHPanedMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHPanedMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHPanedMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHPanedMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHPanedMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHPanedMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHPanedMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHPanedMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHPanedMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHPanedMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHPanedMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHPanedMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHPanedMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHPanedMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHPanedMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHPanedMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHPanedMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHPanedMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHPanedMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHPanedMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHPanedMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHPanedMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHPanedMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHPanedMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHPanedMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHPanedMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHPanedMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHPanedMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHPanedMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHPanedMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHPanedMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHPanedMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHPanedMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHPanedMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHPanedMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHPanedMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHPanedMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHPanedMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHPanedMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHPanedMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHPanedMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHPanedMethod "pack1" o = Gtk.Paned.PanedPack1MethodInfo
    ResolveHPanedMethod "pack2" o = Gtk.Paned.PanedPack2MethodInfo
    ResolveHPanedMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHPanedMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHPanedMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveHPanedMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHPanedMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHPanedMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHPanedMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHPanedMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHPanedMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHPanedMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHPanedMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHPanedMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHPanedMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHPanedMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHPanedMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHPanedMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveHPanedMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHPanedMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHPanedMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHPanedMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHPanedMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHPanedMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHPanedMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHPanedMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHPanedMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveHPanedMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHPanedMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHPanedMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHPanedMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHPanedMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHPanedMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHPanedMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHPanedMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHPanedMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHPanedMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHPanedMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHPanedMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHPanedMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHPanedMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHPanedMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHPanedMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHPanedMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHPanedMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHPanedMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHPanedMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHPanedMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHPanedMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHPanedMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHPanedMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveHPanedMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHPanedMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHPanedMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHPanedMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHPanedMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHPanedMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHPanedMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHPanedMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHPanedMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHPanedMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHPanedMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHPanedMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveHPanedMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHPanedMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHPanedMethod "getChild1" o = Gtk.Paned.PanedGetChild1MethodInfo
    ResolveHPanedMethod "getChild2" o = Gtk.Paned.PanedGetChild2MethodInfo
    ResolveHPanedMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHPanedMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHPanedMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveHPanedMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHPanedMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHPanedMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHPanedMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHPanedMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHPanedMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHPanedMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHPanedMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHPanedMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHPanedMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHPanedMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveHPanedMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveHPanedMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveHPanedMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHPanedMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveHPanedMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHPanedMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHPanedMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHPanedMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHPanedMethod "getHandleWindow" o = Gtk.Paned.PanedGetHandleWindowMethodInfo
    ResolveHPanedMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHPanedMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHPanedMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHPanedMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHPanedMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHPanedMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHPanedMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHPanedMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHPanedMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHPanedMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHPanedMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHPanedMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHPanedMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHPanedMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHPanedMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHPanedMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHPanedMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHPanedMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveHPanedMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHPanedMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHPanedMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHPanedMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHPanedMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveHPanedMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHPanedMethod "getPosition" o = Gtk.Paned.PanedGetPositionMethodInfo
    ResolveHPanedMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHPanedMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHPanedMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHPanedMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHPanedMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHPanedMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHPanedMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHPanedMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHPanedMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHPanedMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHPanedMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHPanedMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHPanedMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveHPanedMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHPanedMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHPanedMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHPanedMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHPanedMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHPanedMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHPanedMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHPanedMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHPanedMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHPanedMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHPanedMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHPanedMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHPanedMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHPanedMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHPanedMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHPanedMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHPanedMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHPanedMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHPanedMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHPanedMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHPanedMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHPanedMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHPanedMethod "getWideHandle" o = Gtk.Paned.PanedGetWideHandleMethodInfo
    ResolveHPanedMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHPanedMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHPanedMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHPanedMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHPanedMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveHPanedMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHPanedMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHPanedMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHPanedMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHPanedMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHPanedMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHPanedMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHPanedMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHPanedMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHPanedMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHPanedMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHPanedMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHPanedMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHPanedMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveHPanedMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveHPanedMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveHPanedMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHPanedMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveHPanedMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHPanedMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHPanedMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHPanedMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHPanedMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHPanedMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHPanedMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHPanedMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHPanedMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHPanedMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHPanedMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHPanedMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHPanedMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHPanedMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHPanedMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHPanedMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHPanedMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHPanedMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveHPanedMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHPanedMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHPanedMethod "setPosition" o = Gtk.Paned.PanedSetPositionMethodInfo
    ResolveHPanedMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHPanedMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHPanedMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveHPanedMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHPanedMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHPanedMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveHPanedMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHPanedMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHPanedMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHPanedMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHPanedMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHPanedMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHPanedMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHPanedMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHPanedMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHPanedMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHPanedMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHPanedMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHPanedMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHPanedMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHPanedMethod "setWideHandle" o = Gtk.Paned.PanedSetWideHandleMethodInfo
    ResolveHPanedMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHPanedMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHPanedMethod t HPaned, O.MethodInfo info HPaned p) => OL.IsLabel t (HPaned -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HPaned
type instance O.AttributeList HPaned = HPanedAttributeList
type HPanedAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxPosition", Gtk.Paned.PanedMaxPositionPropertyInfo), '("minPosition", Gtk.Paned.PanedMinPositionPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("position", Gtk.Paned.PanedPositionPropertyInfo), '("positionSet", Gtk.Paned.PanedPositionSetPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("wideHandle", Gtk.Paned.PanedWideHandlePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HPaned = HPanedSignalList
type HPanedSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("acceptPosition", Gtk.Paned.PanedAcceptPositionSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancelPosition", Gtk.Paned.PanedCancelPositionSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("cycleChildFocus", Gtk.Paned.PanedCycleChildFocusSignalInfo), '("cycleHandleFocus", Gtk.Paned.PanedCycleHandleFocusSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveHandle", Gtk.Paned.PanedMoveHandleSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleHandleFocus", Gtk.Paned.PanedToggleHandleFocusSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HPaned::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HPaned" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hpaned_new" gtk_hpaned_new :: 
    IO (Ptr HPaned)

{-# DEPRECATED hPanedNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Paned.panedNew' with 'GI.Gtk.Enums.OrientationHorizontal' instead"] #-}
-- | Create a new t'GI.Gtk.Objects.HPaned.HPaned'
hPanedNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m HPaned
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.HPaned.HPaned'
hPanedNew  = liftIO $ do
    result <- gtk_hpaned_new
    checkUnexpectedReturnNULL "hPanedNew" result
    result' <- (newObject HPaned) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

