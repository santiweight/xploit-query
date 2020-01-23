{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.VBox.VBox' is a container that organizes child widgets into a single column.
-- 
-- Use the t'GI.Gtk.Objects.Box.Box' packing interface to determine the arrangement,
-- spacing, height, and alignment of t'GI.Gtk.Objects.VBox.VBox' children.
-- 
-- All children are allocated the same width.
-- 
-- GtkVBox has been deprecated. You can use t'GI.Gtk.Objects.Box.Box' instead, which is a
-- very quick and easy change. If you have derived your own classes from
-- GtkVBox, you can simply change the inheritance to derive directly
-- from t'GI.Gtk.Objects.Box.Box', and set the t'GI.Gtk.Interfaces.Orientable.Orientable':@/orientation/@ property to
-- 'GI.Gtk.Enums.OrientationVertical' in your instance init function, with a
-- call like:
-- 
-- === /C code/
-- >
-- >  gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
-- >                                  GTK_ORIENTATION_VERTICAL);
-- 
-- If you don’t need first-child or last-child styling and want your code
-- to be future-proof, the recommendation is to switch to t'GI.Gtk.Objects.Grid.Grid' instead
-- of nested boxes. For more information about migrating to t'GI.Gtk.Objects.Grid.Grid',
-- see [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.VBox
    ( 

-- * Exported types
    VBox(..)                                ,
    IsVBox                                  ,
    toVBox                                  ,
    noVBox                                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveVBoxMethod                       ,
#endif


-- ** new #method:new#

    vBoxNew                                 ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype VBox = VBox (ManagedPtr VBox)
    deriving (Eq)
foreign import ccall "gtk_vbox_get_type"
    c_gtk_vbox_get_type :: IO GType

instance GObject VBox where
    gobjectType = c_gtk_vbox_get_type
    

-- | Convert 'VBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue VBox where
    toGValue o = do
        gtype <- c_gtk_vbox_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr VBox)
        B.ManagedPtr.newObject VBox ptr
        
    

-- | Type class for types which can be safely cast to `VBox`, for instance with `toVBox`.
class (GObject o, O.IsDescendantOf VBox o) => IsVBox o
instance (GObject o, O.IsDescendantOf VBox o) => IsVBox o

instance O.HasParentTypes VBox
type instance O.ParentTypes VBox = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `VBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toVBox :: (MonadIO m, IsVBox o) => o -> m VBox
toVBox = liftIO . unsafeCastTo VBox

-- | A convenience alias for `Nothing` :: `Maybe` `VBox`.
noVBox :: Maybe VBox
noVBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveVBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveVBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveVBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveVBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveVBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveVBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveVBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveVBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveVBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveVBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveVBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveVBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveVBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveVBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveVBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveVBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveVBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveVBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveVBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveVBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveVBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveVBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveVBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveVBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveVBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveVBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveVBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveVBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveVBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveVBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveVBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveVBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveVBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveVBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveVBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveVBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveVBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveVBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveVBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveVBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveVBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveVBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveVBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveVBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveVBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveVBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveVBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveVBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveVBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveVBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveVBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveVBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveVBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveVBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveVBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveVBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveVBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveVBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveVBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveVBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveVBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveVBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveVBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveVBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveVBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveVBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveVBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveVBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveVBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveVBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveVBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveVBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveVBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveVBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveVBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveVBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveVBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveVBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveVBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveVBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveVBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveVBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveVBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveVBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveVBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveVBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveVBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveVBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveVBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveVBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveVBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveVBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveVBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveVBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveVBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveVBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveVBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveVBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveVBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveVBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveVBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveVBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveVBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveVBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveVBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveVBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveVBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveVBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveVBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveVBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveVBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveVBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveVBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveVBoxMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveVBoxMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveVBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveVBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveVBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveVBoxMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveVBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveVBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveVBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveVBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveVBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveVBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveVBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveVBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveVBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveVBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveVBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveVBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveVBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveVBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveVBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveVBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveVBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveVBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveVBoxMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveVBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveVBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveVBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveVBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveVBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveVBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveVBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveVBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveVBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveVBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveVBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveVBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveVBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveVBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveVBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveVBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveVBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveVBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveVBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveVBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveVBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveVBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveVBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveVBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveVBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveVBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveVBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveVBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveVBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveVBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveVBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveVBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveVBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveVBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveVBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveVBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveVBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveVBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveVBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveVBoxMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveVBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveVBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveVBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveVBoxMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveVBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveVBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveVBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveVBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveVBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveVBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveVBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveVBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveVBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveVBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveVBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveVBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveVBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveVBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveVBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveVBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveVBoxMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveVBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveVBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveVBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveVBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveVBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveVBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveVBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveVBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveVBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveVBoxMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveVBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveVBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveVBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveVBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveVBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveVBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveVBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveVBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveVBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveVBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveVBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveVBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveVBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveVBoxMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveVBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveVBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveVBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveVBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveVBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveVBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveVBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveVBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveVBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveVBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveVBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveVBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveVBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveVBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveVBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveVBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveVBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveVBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveVBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveVBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveVBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveVBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveVBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveVBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveVBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveVBoxMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveVBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveVBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveVBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveVBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveVBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveVBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveVBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveVBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveVBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveVBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveVBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveVBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveVBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveVBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveVBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveVBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveVBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveVBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveVBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveVBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveVBoxMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveVBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveVBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveVBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveVBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveVBoxMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveVBoxMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveVBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveVBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveVBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveVBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveVBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveVBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveVBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveVBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveVBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveVBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveVBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveVBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveVBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveVBoxMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveVBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveVBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveVBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveVBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveVBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveVBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveVBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveVBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveVBoxMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveVBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveVBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveVBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveVBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveVBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveVBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveVBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveVBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveVBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveVBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveVBoxMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveVBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveVBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveVBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveVBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveVBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveVBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveVBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveVBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveVBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveVBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveVBoxMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveVBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveVBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveVBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveVBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveVBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveVBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveVBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveVBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveVBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveVBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveVBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveVBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveVBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveVBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveVBoxMethod t VBox, O.MethodInfo info VBox p) => OL.IsLabel t (VBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList VBox
type instance O.AttributeList VBox = VBoxAttributeList
type VBoxAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList VBox = VBoxSignalList
type VBoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method VBox::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "homogeneous"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if all children are to be given equal space allotments."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the number of pixels to place by default between children."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "VBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_vbox_new" gtk_vbox_new :: 
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    Int32 ->                                -- spacing : TBasicType TInt
    IO (Ptr VBox)

{-# DEPRECATED vBoxNew ["(Since version 3.2)","You can use 'GI.Gtk.Objects.Box.boxNew' with 'GI.Gtk.Enums.OrientationVertical' instead,","  which is a quick and easy change. But the recommendation is to switch to","  t'GI.Gtk.Objects.Grid.Grid', since t'GI.Gtk.Objects.Box.Box' is going to go away eventually.","  See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid]."] #-}
-- | Creates a new t'GI.Gtk.Objects.VBox.VBox'.
vBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Bool
    -- ^ /@homogeneous@/: 'P.True' if all children are to be given equal space allotments.
    -> Int32
    -- ^ /@spacing@/: the number of pixels to place by default between children.
    -> m VBox
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.VBox.VBox'.
vBoxNew homogeneous spacing = liftIO $ do
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    result <- gtk_vbox_new homogeneous' spacing
    checkUnexpectedReturnNULL "vBoxNew" result
    result' <- (newObject VBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

