{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Viewport.Viewport' widget acts as an adaptor class, implementing
-- scrollability for child widgets that lack their own scrolling
-- capabilities. Use GtkViewport to scroll child widgets such as
-- t'GI.Gtk.Objects.Grid.Grid', t'GI.Gtk.Objects.Box.Box', and so on.
-- 
-- If a widget has native scrolling abilities, such as t'GI.Gtk.Objects.TextView.TextView',
-- t'GI.Gtk.Objects.TreeView.TreeView' or t'GI.Gtk.Objects.IconView.IconView', it can be added to a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
-- with 'GI.Gtk.Objects.Container.containerAdd'. If a widget does not, you must first add the
-- widget to a t'GI.Gtk.Objects.Viewport.Viewport', then add the viewport to the scrolled window.
-- 'GI.Gtk.Objects.Container.containerAdd' does this automatically if a child that does not
-- implement t'GI.Gtk.Interfaces.Scrollable.Scrollable' is added to a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow', so you can
-- ignore the presence of the viewport.
-- 
-- The GtkViewport will start scrolling content only if allocated less
-- than the child widget’s minimum size in a given orientation.
-- 
-- = CSS nodes
-- 
-- GtkViewport has a single CSS node with name viewport.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Viewport
    ( 

-- * Exported types
    Viewport(..)                            ,
    IsViewport                              ,
    toViewport                              ,
    noViewport                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveViewportMethod                   ,
#endif


-- ** getBinWindow #method:getBinWindow#

#if defined(ENABLE_OVERLOADING)
    ViewportGetBinWindowMethodInfo          ,
#endif
    viewportGetBinWindow                    ,


-- ** getHadjustment #method:getHadjustment#

#if defined(ENABLE_OVERLOADING)
    ViewportGetHadjustmentMethodInfo        ,
#endif
    viewportGetHadjustment                  ,


-- ** getShadowType #method:getShadowType#

#if defined(ENABLE_OVERLOADING)
    ViewportGetShadowTypeMethodInfo         ,
#endif
    viewportGetShadowType                   ,


-- ** getVadjustment #method:getVadjustment#

#if defined(ENABLE_OVERLOADING)
    ViewportGetVadjustmentMethodInfo        ,
#endif
    viewportGetVadjustment                  ,


-- ** getViewWindow #method:getViewWindow#

#if defined(ENABLE_OVERLOADING)
    ViewportGetViewWindowMethodInfo         ,
#endif
    viewportGetViewWindow                   ,


-- ** new #method:new#

    viewportNew                             ,


-- ** setHadjustment #method:setHadjustment#

#if defined(ENABLE_OVERLOADING)
    ViewportSetHadjustmentMethodInfo        ,
#endif
    viewportSetHadjustment                  ,


-- ** setShadowType #method:setShadowType#

#if defined(ENABLE_OVERLOADING)
    ViewportSetShadowTypeMethodInfo         ,
#endif
    viewportSetShadowType                   ,


-- ** setVadjustment #method:setVadjustment#

#if defined(ENABLE_OVERLOADING)
    ViewportSetVadjustmentMethodInfo        ,
#endif
    viewportSetVadjustment                  ,




 -- * Properties
-- ** shadowType #attr:shadowType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ViewportShadowTypePropertyInfo          ,
#endif
    constructViewportShadowType             ,
    getViewportShadowType                   ,
    setViewportShadowType                   ,
#if defined(ENABLE_OVERLOADING)
    viewportShadowType                      ,
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
import qualified GI.Gdk.Objects.Window as Gdk.Window
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Scrollable as Gtk.Scrollable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Viewport = Viewport (ManagedPtr Viewport)
    deriving (Eq)
foreign import ccall "gtk_viewport_get_type"
    c_gtk_viewport_get_type :: IO GType

instance GObject Viewport where
    gobjectType = c_gtk_viewport_get_type
    

-- | Convert 'Viewport' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Viewport where
    toGValue o = do
        gtype <- c_gtk_viewport_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Viewport)
        B.ManagedPtr.newObject Viewport ptr
        
    

-- | Type class for types which can be safely cast to `Viewport`, for instance with `toViewport`.
class (GObject o, O.IsDescendantOf Viewport o) => IsViewport o
instance (GObject o, O.IsDescendantOf Viewport o) => IsViewport o

instance O.HasParentTypes Viewport
type instance O.ParentTypes Viewport = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Scrollable.Scrollable]

-- | Cast to `Viewport`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toViewport :: (MonadIO m, IsViewport o) => o -> m Viewport
toViewport = liftIO . unsafeCastTo Viewport

-- | A convenience alias for `Nothing` :: `Maybe` `Viewport`.
noViewport :: Maybe Viewport
noViewport = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveViewportMethod (t :: Symbol) (o :: *) :: * where
    ResolveViewportMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveViewportMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveViewportMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveViewportMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveViewportMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveViewportMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveViewportMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveViewportMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveViewportMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveViewportMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveViewportMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveViewportMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveViewportMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveViewportMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveViewportMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveViewportMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveViewportMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveViewportMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveViewportMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveViewportMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveViewportMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveViewportMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveViewportMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveViewportMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveViewportMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveViewportMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveViewportMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveViewportMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveViewportMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveViewportMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveViewportMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveViewportMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveViewportMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveViewportMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveViewportMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveViewportMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveViewportMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveViewportMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveViewportMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveViewportMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveViewportMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveViewportMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveViewportMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveViewportMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveViewportMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveViewportMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveViewportMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveViewportMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveViewportMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveViewportMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveViewportMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveViewportMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveViewportMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveViewportMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveViewportMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveViewportMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveViewportMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveViewportMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveViewportMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveViewportMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveViewportMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveViewportMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveViewportMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveViewportMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveViewportMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveViewportMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveViewportMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveViewportMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveViewportMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveViewportMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveViewportMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveViewportMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveViewportMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveViewportMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveViewportMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveViewportMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveViewportMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveViewportMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveViewportMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveViewportMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveViewportMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveViewportMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveViewportMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveViewportMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveViewportMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveViewportMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveViewportMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveViewportMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveViewportMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveViewportMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveViewportMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveViewportMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveViewportMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveViewportMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveViewportMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveViewportMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveViewportMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveViewportMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveViewportMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveViewportMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveViewportMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveViewportMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveViewportMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveViewportMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveViewportMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveViewportMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveViewportMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveViewportMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveViewportMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveViewportMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveViewportMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveViewportMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveViewportMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveViewportMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveViewportMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveViewportMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveViewportMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveViewportMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveViewportMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveViewportMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveViewportMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveViewportMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveViewportMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveViewportMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveViewportMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveViewportMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveViewportMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveViewportMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveViewportMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveViewportMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveViewportMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveViewportMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveViewportMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveViewportMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveViewportMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveViewportMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveViewportMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveViewportMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveViewportMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveViewportMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveViewportMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveViewportMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveViewportMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveViewportMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveViewportMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveViewportMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveViewportMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveViewportMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveViewportMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveViewportMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveViewportMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveViewportMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveViewportMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveViewportMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveViewportMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveViewportMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveViewportMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveViewportMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveViewportMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveViewportMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveViewportMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveViewportMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveViewportMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveViewportMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveViewportMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveViewportMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveViewportMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveViewportMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveViewportMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveViewportMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveViewportMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveViewportMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveViewportMethod "getBinWindow" o = ViewportGetBinWindowMethodInfo
    ResolveViewportMethod "getBorder" o = Gtk.Scrollable.ScrollableGetBorderMethodInfo
    ResolveViewportMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveViewportMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveViewportMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveViewportMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveViewportMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveViewportMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveViewportMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveViewportMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveViewportMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveViewportMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveViewportMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveViewportMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveViewportMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveViewportMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveViewportMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveViewportMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveViewportMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveViewportMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveViewportMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveViewportMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveViewportMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveViewportMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveViewportMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveViewportMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveViewportMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveViewportMethod "getHadjustment" o = ViewportGetHadjustmentMethodInfo
    ResolveViewportMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveViewportMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveViewportMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveViewportMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveViewportMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveViewportMethod "getHscrollPolicy" o = Gtk.Scrollable.ScrollableGetHscrollPolicyMethodInfo
    ResolveViewportMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveViewportMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveViewportMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveViewportMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveViewportMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveViewportMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveViewportMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveViewportMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveViewportMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveViewportMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveViewportMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveViewportMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveViewportMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveViewportMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveViewportMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveViewportMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveViewportMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveViewportMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveViewportMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveViewportMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveViewportMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveViewportMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveViewportMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveViewportMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveViewportMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveViewportMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveViewportMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveViewportMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveViewportMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveViewportMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveViewportMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveViewportMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveViewportMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveViewportMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveViewportMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveViewportMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveViewportMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveViewportMethod "getShadowType" o = ViewportGetShadowTypeMethodInfo
    ResolveViewportMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveViewportMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveViewportMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveViewportMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveViewportMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveViewportMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveViewportMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveViewportMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveViewportMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveViewportMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveViewportMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveViewportMethod "getVadjustment" o = ViewportGetVadjustmentMethodInfo
    ResolveViewportMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveViewportMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveViewportMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveViewportMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveViewportMethod "getViewWindow" o = ViewportGetViewWindowMethodInfo
    ResolveViewportMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveViewportMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveViewportMethod "getVscrollPolicy" o = Gtk.Scrollable.ScrollableGetVscrollPolicyMethodInfo
    ResolveViewportMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveViewportMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveViewportMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveViewportMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveViewportMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveViewportMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveViewportMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveViewportMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveViewportMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveViewportMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveViewportMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveViewportMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveViewportMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveViewportMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveViewportMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveViewportMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveViewportMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveViewportMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveViewportMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveViewportMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveViewportMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveViewportMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveViewportMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveViewportMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveViewportMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveViewportMethod "setHadjustment" o = ViewportSetHadjustmentMethodInfo
    ResolveViewportMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveViewportMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveViewportMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveViewportMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveViewportMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveViewportMethod "setHscrollPolicy" o = Gtk.Scrollable.ScrollableSetHscrollPolicyMethodInfo
    ResolveViewportMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveViewportMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveViewportMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveViewportMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveViewportMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveViewportMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveViewportMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveViewportMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveViewportMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveViewportMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveViewportMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveViewportMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveViewportMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveViewportMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveViewportMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveViewportMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveViewportMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveViewportMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveViewportMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveViewportMethod "setShadowType" o = ViewportSetShadowTypeMethodInfo
    ResolveViewportMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveViewportMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveViewportMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveViewportMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveViewportMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveViewportMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveViewportMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveViewportMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveViewportMethod "setVadjustment" o = ViewportSetVadjustmentMethodInfo
    ResolveViewportMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveViewportMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveViewportMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveViewportMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveViewportMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveViewportMethod "setVscrollPolicy" o = Gtk.Scrollable.ScrollableSetVscrollPolicyMethodInfo
    ResolveViewportMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveViewportMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveViewportMethod t Viewport, O.MethodInfo info Viewport p) => OL.IsLabel t (Viewport -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "shadow-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ShadowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' viewport #shadowType
-- @
getViewportShadowType :: (MonadIO m, IsViewport o) => o -> m Gtk.Enums.ShadowType
getViewportShadowType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "shadow-type"

-- | Set the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' viewport [ #shadowType 'Data.GI.Base.Attributes.:=' value ]
-- @
setViewportShadowType :: (MonadIO m, IsViewport o) => o -> Gtk.Enums.ShadowType -> m ()
setViewportShadowType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "shadow-type" val

-- | Construct a `GValueConstruct` with valid value for the “@shadow-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructViewportShadowType :: (IsViewport o) => Gtk.Enums.ShadowType -> IO (GValueConstruct o)
constructViewportShadowType val = B.Properties.constructObjectPropertyEnum "shadow-type" val

#if defined(ENABLE_OVERLOADING)
data ViewportShadowTypePropertyInfo
instance AttrInfo ViewportShadowTypePropertyInfo where
    type AttrAllowedOps ViewportShadowTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ViewportShadowTypePropertyInfo = IsViewport
    type AttrSetTypeConstraint ViewportShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferTypeConstraint ViewportShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferType ViewportShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrGetType ViewportShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrLabel ViewportShadowTypePropertyInfo = "shadow-type"
    type AttrOrigin ViewportShadowTypePropertyInfo = Viewport
    attrGet = getViewportShadowType
    attrSet = setViewportShadowType
    attrTransfer _ v = do
        return v
    attrConstruct = constructViewportShadowType
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Viewport
type instance O.AttributeList Viewport = ViewportAttributeList
type ViewportAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("hadjustment", Gtk.Scrollable.ScrollableHadjustmentPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hscrollPolicy", Gtk.Scrollable.ScrollableHscrollPolicyPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", ViewportShadowTypePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("vadjustment", Gtk.Scrollable.ScrollableVadjustmentPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("vscrollPolicy", Gtk.Scrollable.ScrollableVscrollPolicyPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
viewportShadowType :: AttrLabelProxy "shadowType"
viewportShadowType = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Viewport = ViewportSignalList
type ViewportSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Viewport::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "hadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "horizontal adjustment"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "vadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "vertical adjustment"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Viewport" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_new" gtk_viewport_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- hadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    Ptr Gtk.Adjustment.Adjustment ->        -- vadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr Viewport)

-- | Creates a new t'GI.Gtk.Objects.Viewport.Viewport' with the given adjustments, or with default
-- adjustments if none are given.
viewportNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a, Gtk.Adjustment.IsAdjustment b) =>
    Maybe (a)
    -- ^ /@hadjustment@/: horizontal adjustment
    -> Maybe (b)
    -- ^ /@vadjustment@/: vertical adjustment
    -> m Viewport
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Viewport.Viewport'
viewportNew hadjustment vadjustment = liftIO $ do
    maybeHadjustment <- case hadjustment of
        Nothing -> return nullPtr
        Just jHadjustment -> do
            jHadjustment' <- unsafeManagedPtrCastPtr jHadjustment
            return jHadjustment'
    maybeVadjustment <- case vadjustment of
        Nothing -> return nullPtr
        Just jVadjustment -> do
            jVadjustment' <- unsafeManagedPtrCastPtr jVadjustment
            return jVadjustment'
    result <- gtk_viewport_new maybeHadjustment maybeVadjustment
    checkUnexpectedReturnNULL "viewportNew" result
    result' <- (newObject Viewport) result
    whenJust hadjustment touchManagedPtr
    whenJust vadjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Viewport::get_bin_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_get_bin_window" gtk_viewport_get_bin_window :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    IO (Ptr Gdk.Window.Window)

-- | Gets the bin window of the t'GI.Gtk.Objects.Viewport.Viewport'.
-- 
-- /Since: 2.20/
viewportGetBinWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'
    -> m Gdk.Window.Window
    -- ^ __Returns:__ a t'GI.Gdk.Objects.Window.Window'
viewportGetBinWindow viewport = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    result <- gtk_viewport_get_bin_window viewport'
    checkUnexpectedReturnNULL "viewportGetBinWindow" result
    result' <- (newObject Gdk.Window.Window) result
    touchManagedPtr viewport
    return result'

#if defined(ENABLE_OVERLOADING)
data ViewportGetBinWindowMethodInfo
instance (signature ~ (m Gdk.Window.Window), MonadIO m, IsViewport a) => O.MethodInfo ViewportGetBinWindowMethodInfo a signature where
    overloadedMethod = viewportGetBinWindow

#endif

-- method Viewport::get_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_get_hadjustment" gtk_viewport_get_hadjustment :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    IO (Ptr Gtk.Adjustment.Adjustment)

{-# DEPRECATED viewportGetHadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableGetHadjustment'"] #-}
-- | Returns the horizontal adjustment of the viewport.
viewportGetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'.
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ the horizontal adjustment of /@viewport@/.
viewportGetHadjustment viewport = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    result <- gtk_viewport_get_hadjustment viewport'
    checkUnexpectedReturnNULL "viewportGetHadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr viewport
    return result'

#if defined(ENABLE_OVERLOADING)
data ViewportGetHadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsViewport a) => O.MethodInfo ViewportGetHadjustmentMethodInfo a signature where
    overloadedMethod = viewportGetHadjustment

#endif

-- method Viewport::get_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ShadowType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_get_shadow_type" gtk_viewport_get_shadow_type :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    IO CUInt

-- | Gets the shadow type of the t'GI.Gtk.Objects.Viewport.Viewport'. See
-- 'GI.Gtk.Objects.Viewport.viewportSetShadowType'.
viewportGetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'
    -> m Gtk.Enums.ShadowType
    -- ^ __Returns:__ the shadow type
viewportGetShadowType viewport = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    result <- gtk_viewport_get_shadow_type viewport'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr viewport
    return result'

#if defined(ENABLE_OVERLOADING)
data ViewportGetShadowTypeMethodInfo
instance (signature ~ (m Gtk.Enums.ShadowType), MonadIO m, IsViewport a) => O.MethodInfo ViewportGetShadowTypeMethodInfo a signature where
    overloadedMethod = viewportGetShadowType

#endif

-- method Viewport::get_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_get_vadjustment" gtk_viewport_get_vadjustment :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    IO (Ptr Gtk.Adjustment.Adjustment)

{-# DEPRECATED viewportGetVadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableGetVadjustment'"] #-}
-- | Returns the vertical adjustment of the viewport.
viewportGetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'.
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ the vertical adjustment of /@viewport@/.
viewportGetVadjustment viewport = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    result <- gtk_viewport_get_vadjustment viewport'
    checkUnexpectedReturnNULL "viewportGetVadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr viewport
    return result'

#if defined(ENABLE_OVERLOADING)
data ViewportGetVadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsViewport a) => O.MethodInfo ViewportGetVadjustmentMethodInfo a signature where
    overloadedMethod = viewportGetVadjustment

#endif

-- method Viewport::get_view_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_get_view_window" gtk_viewport_get_view_window :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    IO (Ptr Gdk.Window.Window)

-- | Gets the view window of the t'GI.Gtk.Objects.Viewport.Viewport'.
-- 
-- /Since: 2.22/
viewportGetViewWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'
    -> m Gdk.Window.Window
    -- ^ __Returns:__ a t'GI.Gdk.Objects.Window.Window'
viewportGetViewWindow viewport = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    result <- gtk_viewport_get_view_window viewport'
    checkUnexpectedReturnNULL "viewportGetViewWindow" result
    result' <- (newObject Gdk.Window.Window) result
    touchManagedPtr viewport
    return result'

#if defined(ENABLE_OVERLOADING)
data ViewportGetViewWindowMethodInfo
instance (signature ~ (m Gdk.Window.Window), MonadIO m, IsViewport a) => O.MethodInfo ViewportGetViewWindowMethodInfo a signature where
    overloadedMethod = viewportGetViewWindow

#endif

-- method Viewport::set_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkAdjustment." , sinceVersion = Nothing }
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

foreign import ccall "gtk_viewport_set_hadjustment" gtk_viewport_set_hadjustment :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

{-# DEPRECATED viewportSetHadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableSetHadjustment'"] #-}
-- | Sets the horizontal adjustment of the viewport.
viewportSetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'.
    -> Maybe (b)
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'.
    -> m ()
viewportSetHadjustment viewport adjustment = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    gtk_viewport_set_hadjustment viewport' maybeAdjustment
    touchManagedPtr viewport
    whenJust adjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ViewportSetHadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsViewport a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ViewportSetHadjustmentMethodInfo a signature where
    overloadedMethod = viewportSetHadjustment

#endif

-- method Viewport::set_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShadowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new shadow type."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_viewport_set_shadow_type" gtk_viewport_set_shadow_type :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "ShadowType"})
    IO ()

-- | Sets the shadow type of the viewport.
viewportSetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'.
    -> Gtk.Enums.ShadowType
    -- ^ /@type@/: the new shadow type.
    -> m ()
viewportSetShadowType viewport type_ = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    let type_' = (fromIntegral . fromEnum) type_
    gtk_viewport_set_shadow_type viewport' type_'
    touchManagedPtr viewport
    return ()

#if defined(ENABLE_OVERLOADING)
data ViewportSetShadowTypeMethodInfo
instance (signature ~ (Gtk.Enums.ShadowType -> m ()), MonadIO m, IsViewport a) => O.MethodInfo ViewportSetShadowTypeMethodInfo a signature where
    overloadedMethod = viewportSetShadowType

#endif

-- method Viewport::set_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "viewport"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Viewport" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkViewport." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkAdjustment." , sinceVersion = Nothing }
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

foreign import ccall "gtk_viewport_set_vadjustment" gtk_viewport_set_vadjustment :: 
    Ptr Viewport ->                         -- viewport : TInterface (Name {namespace = "Gtk", name = "Viewport"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

{-# DEPRECATED viewportSetVadjustment ["(Since version 3.0)","Use 'GI.Gtk.Interfaces.Scrollable.scrollableSetVadjustment'"] #-}
-- | Sets the vertical adjustment of the viewport.
viewportSetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsViewport a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@viewport@/: a t'GI.Gtk.Objects.Viewport.Viewport'.
    -> Maybe (b)
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment'.
    -> m ()
viewportSetVadjustment viewport adjustment = liftIO $ do
    viewport' <- unsafeManagedPtrCastPtr viewport
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    gtk_viewport_set_vadjustment viewport' maybeAdjustment
    touchManagedPtr viewport
    whenJust adjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ViewportSetVadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsViewport a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ViewportSetVadjustmentMethodInfo a signature where
    overloadedMethod = viewportSetVadjustment

#endif

