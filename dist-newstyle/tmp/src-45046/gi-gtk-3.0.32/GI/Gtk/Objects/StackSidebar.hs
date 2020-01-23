{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkStackSidebar enables you to quickly and easily provide a
-- consistent \"sidebar\" object for your user interface.
-- 
-- In order to use a GtkStackSidebar, you simply use a GtkStack to
-- organize your UI flow, and add the sidebar to your sidebar area. You
-- can use 'GI.Gtk.Objects.StackSidebar.stackSidebarSetStack' to connect the t'GI.Gtk.Objects.StackSidebar.StackSidebar'
-- to the t'GI.Gtk.Objects.Stack.Stack'.
-- 
-- = CSS nodes
-- 
-- GtkStackSidebar has a single CSS node with name stacksidebar and
-- style class .sidebar.
-- 
-- When circumstances require it, GtkStackSidebar adds the
-- .needs-attention style class to the widgets representing the stack
-- pages.
-- 
-- /Since: 3.16/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StackSidebar
    ( 

-- * Exported types
    StackSidebar(..)                        ,
    IsStackSidebar                          ,
    toStackSidebar                          ,
    noStackSidebar                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStackSidebarMethod               ,
#endif


-- ** getStack #method:getStack#

#if defined(ENABLE_OVERLOADING)
    StackSidebarGetStackMethodInfo          ,
#endif
    stackSidebarGetStack                    ,


-- ** new #method:new#

    stackSidebarNew                         ,


-- ** setStack #method:setStack#

#if defined(ENABLE_OVERLOADING)
    StackSidebarSetStackMethodInfo          ,
#endif
    stackSidebarSetStack                    ,




 -- * Properties
-- ** stack #attr:stack#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StackSidebarStackPropertyInfo           ,
#endif
    constructStackSidebarStack              ,
    getStackSidebarStack                    ,
    setStackSidebarStack                    ,
#if defined(ENABLE_OVERLOADING)
    stackSidebarStack                       ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Stack as Gtk.Stack
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype StackSidebar = StackSidebar (ManagedPtr StackSidebar)
    deriving (Eq)
foreign import ccall "gtk_stack_sidebar_get_type"
    c_gtk_stack_sidebar_get_type :: IO GType

instance GObject StackSidebar where
    gobjectType = c_gtk_stack_sidebar_get_type
    

-- | Convert 'StackSidebar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StackSidebar where
    toGValue o = do
        gtype <- c_gtk_stack_sidebar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StackSidebar)
        B.ManagedPtr.newObject StackSidebar ptr
        
    

-- | Type class for types which can be safely cast to `StackSidebar`, for instance with `toStackSidebar`.
class (GObject o, O.IsDescendantOf StackSidebar o) => IsStackSidebar o
instance (GObject o, O.IsDescendantOf StackSidebar o) => IsStackSidebar o

instance O.HasParentTypes StackSidebar
type instance O.ParentTypes StackSidebar = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `StackSidebar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStackSidebar :: (MonadIO m, IsStackSidebar o) => o -> m StackSidebar
toStackSidebar = liftIO . unsafeCastTo StackSidebar

-- | A convenience alias for `Nothing` :: `Maybe` `StackSidebar`.
noStackSidebar :: Maybe StackSidebar
noStackSidebar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStackSidebarMethod (t :: Symbol) (o :: *) :: * where
    ResolveStackSidebarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveStackSidebarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveStackSidebarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveStackSidebarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveStackSidebarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveStackSidebarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveStackSidebarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveStackSidebarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveStackSidebarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStackSidebarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStackSidebarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveStackSidebarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveStackSidebarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveStackSidebarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveStackSidebarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveStackSidebarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveStackSidebarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveStackSidebarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveStackSidebarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveStackSidebarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveStackSidebarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveStackSidebarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveStackSidebarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveStackSidebarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveStackSidebarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveStackSidebarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveStackSidebarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveStackSidebarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveStackSidebarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveStackSidebarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveStackSidebarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveStackSidebarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveStackSidebarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveStackSidebarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveStackSidebarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveStackSidebarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveStackSidebarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveStackSidebarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveStackSidebarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveStackSidebarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveStackSidebarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveStackSidebarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveStackSidebarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveStackSidebarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveStackSidebarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveStackSidebarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveStackSidebarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveStackSidebarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveStackSidebarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveStackSidebarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveStackSidebarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveStackSidebarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveStackSidebarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveStackSidebarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveStackSidebarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveStackSidebarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveStackSidebarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveStackSidebarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveStackSidebarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveStackSidebarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveStackSidebarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveStackSidebarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveStackSidebarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStackSidebarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveStackSidebarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveStackSidebarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStackSidebarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStackSidebarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveStackSidebarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveStackSidebarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveStackSidebarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveStackSidebarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveStackSidebarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveStackSidebarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveStackSidebarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveStackSidebarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveStackSidebarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveStackSidebarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveStackSidebarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveStackSidebarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveStackSidebarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveStackSidebarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveStackSidebarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveStackSidebarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveStackSidebarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveStackSidebarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveStackSidebarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveStackSidebarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStackSidebarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveStackSidebarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveStackSidebarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveStackSidebarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveStackSidebarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveStackSidebarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveStackSidebarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveStackSidebarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveStackSidebarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveStackSidebarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveStackSidebarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveStackSidebarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveStackSidebarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveStackSidebarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveStackSidebarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveStackSidebarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveStackSidebarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveStackSidebarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStackSidebarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStackSidebarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveStackSidebarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveStackSidebarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveStackSidebarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveStackSidebarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveStackSidebarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveStackSidebarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveStackSidebarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveStackSidebarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveStackSidebarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveStackSidebarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveStackSidebarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveStackSidebarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveStackSidebarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveStackSidebarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveStackSidebarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveStackSidebarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStackSidebarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStackSidebarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveStackSidebarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveStackSidebarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveStackSidebarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveStackSidebarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveStackSidebarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveStackSidebarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveStackSidebarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveStackSidebarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveStackSidebarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveStackSidebarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveStackSidebarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveStackSidebarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStackSidebarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveStackSidebarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveStackSidebarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveStackSidebarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveStackSidebarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveStackSidebarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveStackSidebarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveStackSidebarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveStackSidebarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveStackSidebarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStackSidebarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStackSidebarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveStackSidebarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveStackSidebarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveStackSidebarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStackSidebarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveStackSidebarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveStackSidebarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveStackSidebarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveStackSidebarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveStackSidebarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStackSidebarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveStackSidebarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveStackSidebarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveStackSidebarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStackSidebarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveStackSidebarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveStackSidebarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveStackSidebarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveStackSidebarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveStackSidebarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveStackSidebarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveStackSidebarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveStackSidebarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveStackSidebarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveStackSidebarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveStackSidebarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveStackSidebarMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveStackSidebarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveStackSidebarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveStackSidebarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveStackSidebarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveStackSidebarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveStackSidebarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveStackSidebarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStackSidebarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveStackSidebarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveStackSidebarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveStackSidebarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveStackSidebarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveStackSidebarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveStackSidebarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveStackSidebarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveStackSidebarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveStackSidebarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveStackSidebarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveStackSidebarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveStackSidebarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveStackSidebarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveStackSidebarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveStackSidebarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveStackSidebarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveStackSidebarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveStackSidebarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveStackSidebarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveStackSidebarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveStackSidebarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveStackSidebarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveStackSidebarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveStackSidebarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveStackSidebarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveStackSidebarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveStackSidebarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveStackSidebarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveStackSidebarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveStackSidebarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveStackSidebarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveStackSidebarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveStackSidebarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveStackSidebarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveStackSidebarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveStackSidebarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveStackSidebarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveStackSidebarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveStackSidebarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveStackSidebarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveStackSidebarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveStackSidebarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveStackSidebarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveStackSidebarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStackSidebarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStackSidebarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveStackSidebarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveStackSidebarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveStackSidebarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveStackSidebarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveStackSidebarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveStackSidebarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveStackSidebarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveStackSidebarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveStackSidebarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveStackSidebarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveStackSidebarMethod "getStack" o = StackSidebarGetStackMethodInfo
    ResolveStackSidebarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveStackSidebarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveStackSidebarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveStackSidebarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveStackSidebarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveStackSidebarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveStackSidebarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveStackSidebarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveStackSidebarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveStackSidebarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveStackSidebarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveStackSidebarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveStackSidebarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveStackSidebarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveStackSidebarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveStackSidebarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveStackSidebarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveStackSidebarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveStackSidebarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveStackSidebarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveStackSidebarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveStackSidebarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveStackSidebarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveStackSidebarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveStackSidebarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveStackSidebarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveStackSidebarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveStackSidebarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStackSidebarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStackSidebarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveStackSidebarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveStackSidebarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveStackSidebarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveStackSidebarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveStackSidebarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveStackSidebarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveStackSidebarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveStackSidebarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveStackSidebarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveStackSidebarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveStackSidebarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveStackSidebarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveStackSidebarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveStackSidebarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveStackSidebarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveStackSidebarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveStackSidebarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveStackSidebarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveStackSidebarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveStackSidebarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveStackSidebarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveStackSidebarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveStackSidebarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveStackSidebarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveStackSidebarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveStackSidebarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveStackSidebarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveStackSidebarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveStackSidebarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStackSidebarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveStackSidebarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveStackSidebarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveStackSidebarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveStackSidebarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveStackSidebarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveStackSidebarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveStackSidebarMethod "setStack" o = StackSidebarSetStackMethodInfo
    ResolveStackSidebarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveStackSidebarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveStackSidebarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveStackSidebarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveStackSidebarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveStackSidebarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveStackSidebarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveStackSidebarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveStackSidebarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveStackSidebarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveStackSidebarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveStackSidebarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveStackSidebarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveStackSidebarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStackSidebarMethod t StackSidebar, O.MethodInfo info StackSidebar p) => OL.IsLabel t (StackSidebar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "stack"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Stack"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@stack@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' stackSidebar #stack
-- @
getStackSidebarStack :: (MonadIO m, IsStackSidebar o) => o -> m (Maybe Gtk.Stack.Stack)
getStackSidebarStack obj = liftIO $ B.Properties.getObjectPropertyObject obj "stack" Gtk.Stack.Stack

-- | Set the value of the “@stack@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' stackSidebar [ #stack 'Data.GI.Base.Attributes.:=' value ]
-- @
setStackSidebarStack :: (MonadIO m, IsStackSidebar o, Gtk.Stack.IsStack a) => o -> a -> m ()
setStackSidebarStack obj val = liftIO $ B.Properties.setObjectPropertyObject obj "stack" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stack@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStackSidebarStack :: (IsStackSidebar o, Gtk.Stack.IsStack a) => a -> IO (GValueConstruct o)
constructStackSidebarStack val = B.Properties.constructObjectPropertyObject "stack" (Just val)

#if defined(ENABLE_OVERLOADING)
data StackSidebarStackPropertyInfo
instance AttrInfo StackSidebarStackPropertyInfo where
    type AttrAllowedOps StackSidebarStackPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StackSidebarStackPropertyInfo = IsStackSidebar
    type AttrSetTypeConstraint StackSidebarStackPropertyInfo = Gtk.Stack.IsStack
    type AttrTransferTypeConstraint StackSidebarStackPropertyInfo = Gtk.Stack.IsStack
    type AttrTransferType StackSidebarStackPropertyInfo = Gtk.Stack.Stack
    type AttrGetType StackSidebarStackPropertyInfo = (Maybe Gtk.Stack.Stack)
    type AttrLabel StackSidebarStackPropertyInfo = "stack"
    type AttrOrigin StackSidebarStackPropertyInfo = StackSidebar
    attrGet = getStackSidebarStack
    attrSet = setStackSidebarStack
    attrTransfer _ v = do
        unsafeCastTo Gtk.Stack.Stack v
    attrConstruct = constructStackSidebarStack
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StackSidebar
type instance O.AttributeList StackSidebar = StackSidebarAttributeList
type StackSidebarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("stack", StackSidebarStackPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
stackSidebarStack :: AttrLabelProxy "stack"
stackSidebarStack = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StackSidebar = StackSidebarSignalList
type StackSidebarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method StackSidebar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "StackSidebar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_stack_sidebar_new" gtk_stack_sidebar_new :: 
    IO (Ptr StackSidebar)

-- | Creates a new sidebar.
-- 
-- /Since: 3.16/
stackSidebarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StackSidebar
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.StackSidebar.StackSidebar'
stackSidebarNew  = liftIO $ do
    result <- gtk_stack_sidebar_new
    checkUnexpectedReturnNULL "stackSidebarNew" result
    result' <- (newObject StackSidebar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StackSidebar::get_stack
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StackSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStackSidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Stack" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_stack_sidebar_get_stack" gtk_stack_sidebar_get_stack :: 
    Ptr StackSidebar ->                     -- sidebar : TInterface (Name {namespace = "Gtk", name = "StackSidebar"})
    IO (Ptr Gtk.Stack.Stack)

-- | Retrieves the stack.
-- See 'GI.Gtk.Objects.StackSidebar.stackSidebarSetStack'.
-- 
-- /Since: 3.16/
stackSidebarGetStack ::
    (B.CallStack.HasCallStack, MonadIO m, IsStackSidebar a) =>
    a
    -- ^ /@sidebar@/: a t'GI.Gtk.Objects.StackSidebar.StackSidebar'
    -> m (Maybe Gtk.Stack.Stack)
    -- ^ __Returns:__ the associated t'GI.Gtk.Objects.Stack.Stack' or
    --     'P.Nothing' if none has been set explicitly
stackSidebarGetStack sidebar = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    result <- gtk_stack_sidebar_get_stack sidebar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Stack.Stack) result'
        return result''
    touchManagedPtr sidebar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StackSidebarGetStackMethodInfo
instance (signature ~ (m (Maybe Gtk.Stack.Stack)), MonadIO m, IsStackSidebar a) => O.MethodInfo StackSidebarGetStackMethodInfo a signature where
    overloadedMethod = stackSidebarGetStack

#endif

-- method StackSidebar::set_stack
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sidebar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StackSidebar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStackSidebar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "stack"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Stack" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStack" , sinceVersion = Nothing }
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

foreign import ccall "gtk_stack_sidebar_set_stack" gtk_stack_sidebar_set_stack :: 
    Ptr StackSidebar ->                     -- sidebar : TInterface (Name {namespace = "Gtk", name = "StackSidebar"})
    Ptr Gtk.Stack.Stack ->                  -- stack : TInterface (Name {namespace = "Gtk", name = "Stack"})
    IO ()

-- | Set the t'GI.Gtk.Objects.Stack.Stack' associated with this t'GI.Gtk.Objects.StackSidebar.StackSidebar'.
-- 
-- The sidebar widget will automatically update according to the order
-- (packing) and items within the given t'GI.Gtk.Objects.Stack.Stack'.
-- 
-- /Since: 3.16/
stackSidebarSetStack ::
    (B.CallStack.HasCallStack, MonadIO m, IsStackSidebar a, Gtk.Stack.IsStack b) =>
    a
    -- ^ /@sidebar@/: a t'GI.Gtk.Objects.StackSidebar.StackSidebar'
    -> b
    -- ^ /@stack@/: a t'GI.Gtk.Objects.Stack.Stack'
    -> m ()
stackSidebarSetStack sidebar stack = liftIO $ do
    sidebar' <- unsafeManagedPtrCastPtr sidebar
    stack' <- unsafeManagedPtrCastPtr stack
    gtk_stack_sidebar_set_stack sidebar' stack'
    touchManagedPtr sidebar
    touchManagedPtr stack
    return ()

#if defined(ENABLE_OVERLOADING)
data StackSidebarSetStackMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsStackSidebar a, Gtk.Stack.IsStack b) => O.MethodInfo StackSidebarSetStackMethodInfo a signature where
    overloadedMethod = stackSidebarSetStack

#endif

