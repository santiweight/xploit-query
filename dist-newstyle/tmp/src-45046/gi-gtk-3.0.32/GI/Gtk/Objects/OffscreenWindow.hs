{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkOffscreenWindow is strictly intended to be used for obtaining
-- snapshots of widgets that are not part of a normal widget hierarchy.
-- Since t'GI.Gtk.Objects.OffscreenWindow.OffscreenWindow' is a toplevel widget you cannot obtain
-- snapshots of a full window with it since you cannot pack a toplevel
-- widget in another toplevel.
-- 
-- The idea is to take a widget and manually set the state of it,
-- add it to a GtkOffscreenWindow and then retrieve the snapshot
-- as a t'GI.Cairo.Structs.Surface.Surface' or t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf'.
-- 
-- GtkOffscreenWindow derives from t'GI.Gtk.Objects.Window.Window' only as an implementation
-- detail.  Applications should not use any API specific to t'GI.Gtk.Objects.Window.Window'
-- to operate on this object.  It should be treated as a t'GI.Gtk.Objects.Bin.Bin' that
-- has no parent widget.
-- 
-- When contained offscreen widgets are redrawn, GtkOffscreenWindow
-- will emit a [damageEvent]("GI.Gtk.Objects.Widget#signal:damageEvent") signal.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.OffscreenWindow
    ( 

-- * Exported types
    OffscreenWindow(..)                     ,
    IsOffscreenWindow                       ,
    toOffscreenWindow                       ,
    noOffscreenWindow                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveOffscreenWindowMethod            ,
#endif


-- ** getPixbuf #method:getPixbuf#

#if defined(ENABLE_OVERLOADING)
    OffscreenWindowGetPixbufMethodInfo      ,
#endif
    offscreenWindowGetPixbuf                ,


-- ** getSurface #method:getSurface#

#if defined(ENABLE_OVERLOADING)
    OffscreenWindowGetSurfaceMethodInfo     ,
#endif
    offscreenWindowGetSurface               ,


-- ** new #method:new#

    offscreenWindowNew                      ,




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
import qualified GI.Cairo.Structs.Surface as Cairo.Surface
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.GdkPixbuf.Objects.Pixbuf as GdkPixbuf.Pixbuf
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype OffscreenWindow = OffscreenWindow (ManagedPtr OffscreenWindow)
    deriving (Eq)
foreign import ccall "gtk_offscreen_window_get_type"
    c_gtk_offscreen_window_get_type :: IO GType

instance GObject OffscreenWindow where
    gobjectType = c_gtk_offscreen_window_get_type
    

-- | Convert 'OffscreenWindow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue OffscreenWindow where
    toGValue o = do
        gtype <- c_gtk_offscreen_window_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr OffscreenWindow)
        B.ManagedPtr.newObject OffscreenWindow ptr
        
    

-- | Type class for types which can be safely cast to `OffscreenWindow`, for instance with `toOffscreenWindow`.
class (GObject o, O.IsDescendantOf OffscreenWindow o) => IsOffscreenWindow o
instance (GObject o, O.IsDescendantOf OffscreenWindow o) => IsOffscreenWindow o

instance O.HasParentTypes OffscreenWindow
type instance O.ParentTypes OffscreenWindow = '[Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `OffscreenWindow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toOffscreenWindow :: (MonadIO m, IsOffscreenWindow o) => o -> m OffscreenWindow
toOffscreenWindow = liftIO . unsafeCastTo OffscreenWindow

-- | A convenience alias for `Nothing` :: `Maybe` `OffscreenWindow`.
noOffscreenWindow :: Maybe OffscreenWindow
noOffscreenWindow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveOffscreenWindowMethod (t :: Symbol) (o :: *) :: * where
    ResolveOffscreenWindowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveOffscreenWindowMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveOffscreenWindowMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveOffscreenWindowMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveOffscreenWindowMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveOffscreenWindowMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveOffscreenWindowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveOffscreenWindowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveOffscreenWindowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveOffscreenWindowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveOffscreenWindowMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveOffscreenWindowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveOffscreenWindowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveOffscreenWindowMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveOffscreenWindowMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveOffscreenWindowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveOffscreenWindowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveOffscreenWindowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveOffscreenWindowMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveOffscreenWindowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveOffscreenWindowMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveOffscreenWindowMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveOffscreenWindowMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveOffscreenWindowMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveOffscreenWindowMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveOffscreenWindowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveOffscreenWindowMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveOffscreenWindowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveOffscreenWindowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveOffscreenWindowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveOffscreenWindowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveOffscreenWindowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveOffscreenWindowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveOffscreenWindowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveOffscreenWindowMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveOffscreenWindowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveOffscreenWindowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveOffscreenWindowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveOffscreenWindowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveOffscreenWindowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveOffscreenWindowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveOffscreenWindowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveOffscreenWindowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveOffscreenWindowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveOffscreenWindowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveOffscreenWindowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveOffscreenWindowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveOffscreenWindowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveOffscreenWindowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveOffscreenWindowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveOffscreenWindowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveOffscreenWindowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveOffscreenWindowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveOffscreenWindowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveOffscreenWindowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveOffscreenWindowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveOffscreenWindowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveOffscreenWindowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveOffscreenWindowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveOffscreenWindowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveOffscreenWindowMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveOffscreenWindowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveOffscreenWindowMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveOffscreenWindowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveOffscreenWindowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveOffscreenWindowMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveOffscreenWindowMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveOffscreenWindowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveOffscreenWindowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveOffscreenWindowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveOffscreenWindowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveOffscreenWindowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveOffscreenWindowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveOffscreenWindowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveOffscreenWindowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveOffscreenWindowMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveOffscreenWindowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveOffscreenWindowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveOffscreenWindowMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveOffscreenWindowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveOffscreenWindowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveOffscreenWindowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveOffscreenWindowMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveOffscreenWindowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveOffscreenWindowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveOffscreenWindowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveOffscreenWindowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveOffscreenWindowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveOffscreenWindowMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveOffscreenWindowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveOffscreenWindowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveOffscreenWindowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveOffscreenWindowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveOffscreenWindowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveOffscreenWindowMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveOffscreenWindowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveOffscreenWindowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveOffscreenWindowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveOffscreenWindowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveOffscreenWindowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveOffscreenWindowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveOffscreenWindowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveOffscreenWindowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveOffscreenWindowMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveOffscreenWindowMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveOffscreenWindowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveOffscreenWindowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveOffscreenWindowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveOffscreenWindowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveOffscreenWindowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveOffscreenWindowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveOffscreenWindowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveOffscreenWindowMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveOffscreenWindowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveOffscreenWindowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveOffscreenWindowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveOffscreenWindowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveOffscreenWindowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveOffscreenWindowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveOffscreenWindowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveOffscreenWindowMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveOffscreenWindowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveOffscreenWindowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveOffscreenWindowMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveOffscreenWindowMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveOffscreenWindowMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveOffscreenWindowMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveOffscreenWindowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveOffscreenWindowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveOffscreenWindowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveOffscreenWindowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveOffscreenWindowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveOffscreenWindowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveOffscreenWindowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveOffscreenWindowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveOffscreenWindowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveOffscreenWindowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveOffscreenWindowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveOffscreenWindowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveOffscreenWindowMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveOffscreenWindowMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveOffscreenWindowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveOffscreenWindowMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveOffscreenWindowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveOffscreenWindowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveOffscreenWindowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveOffscreenWindowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveOffscreenWindowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveOffscreenWindowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveOffscreenWindowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveOffscreenWindowMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveOffscreenWindowMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveOffscreenWindowMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveOffscreenWindowMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveOffscreenWindowMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveOffscreenWindowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveOffscreenWindowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveOffscreenWindowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveOffscreenWindowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveOffscreenWindowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveOffscreenWindowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveOffscreenWindowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveOffscreenWindowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveOffscreenWindowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveOffscreenWindowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveOffscreenWindowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveOffscreenWindowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveOffscreenWindowMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveOffscreenWindowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveOffscreenWindowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveOffscreenWindowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveOffscreenWindowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveOffscreenWindowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveOffscreenWindowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveOffscreenWindowMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveOffscreenWindowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveOffscreenWindowMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveOffscreenWindowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveOffscreenWindowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveOffscreenWindowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveOffscreenWindowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveOffscreenWindowMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveOffscreenWindowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveOffscreenWindowMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveOffscreenWindowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveOffscreenWindowMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveOffscreenWindowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveOffscreenWindowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveOffscreenWindowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveOffscreenWindowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveOffscreenWindowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveOffscreenWindowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveOffscreenWindowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveOffscreenWindowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveOffscreenWindowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveOffscreenWindowMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveOffscreenWindowMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveOffscreenWindowMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveOffscreenWindowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveOffscreenWindowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveOffscreenWindowMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveOffscreenWindowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveOffscreenWindowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveOffscreenWindowMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveOffscreenWindowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveOffscreenWindowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveOffscreenWindowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveOffscreenWindowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveOffscreenWindowMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveOffscreenWindowMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveOffscreenWindowMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveOffscreenWindowMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveOffscreenWindowMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveOffscreenWindowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveOffscreenWindowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveOffscreenWindowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveOffscreenWindowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveOffscreenWindowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveOffscreenWindowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveOffscreenWindowMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveOffscreenWindowMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveOffscreenWindowMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveOffscreenWindowMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveOffscreenWindowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveOffscreenWindowMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveOffscreenWindowMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveOffscreenWindowMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveOffscreenWindowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveOffscreenWindowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveOffscreenWindowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveOffscreenWindowMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveOffscreenWindowMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveOffscreenWindowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveOffscreenWindowMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveOffscreenWindowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveOffscreenWindowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveOffscreenWindowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveOffscreenWindowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveOffscreenWindowMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveOffscreenWindowMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveOffscreenWindowMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveOffscreenWindowMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveOffscreenWindowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveOffscreenWindowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveOffscreenWindowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveOffscreenWindowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveOffscreenWindowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveOffscreenWindowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveOffscreenWindowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveOffscreenWindowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveOffscreenWindowMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveOffscreenWindowMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveOffscreenWindowMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveOffscreenWindowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveOffscreenWindowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveOffscreenWindowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveOffscreenWindowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveOffscreenWindowMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveOffscreenWindowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveOffscreenWindowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveOffscreenWindowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveOffscreenWindowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveOffscreenWindowMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveOffscreenWindowMethod "getPixbuf" o = OffscreenWindowGetPixbufMethodInfo
    ResolveOffscreenWindowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveOffscreenWindowMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveOffscreenWindowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveOffscreenWindowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveOffscreenWindowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveOffscreenWindowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveOffscreenWindowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveOffscreenWindowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveOffscreenWindowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveOffscreenWindowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveOffscreenWindowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveOffscreenWindowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveOffscreenWindowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveOffscreenWindowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveOffscreenWindowMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveOffscreenWindowMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveOffscreenWindowMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveOffscreenWindowMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveOffscreenWindowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveOffscreenWindowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveOffscreenWindowMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveOffscreenWindowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveOffscreenWindowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveOffscreenWindowMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveOffscreenWindowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveOffscreenWindowMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveOffscreenWindowMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveOffscreenWindowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveOffscreenWindowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveOffscreenWindowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveOffscreenWindowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveOffscreenWindowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveOffscreenWindowMethod "getSurface" o = OffscreenWindowGetSurfaceMethodInfo
    ResolveOffscreenWindowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveOffscreenWindowMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveOffscreenWindowMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveOffscreenWindowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveOffscreenWindowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveOffscreenWindowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveOffscreenWindowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveOffscreenWindowMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveOffscreenWindowMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveOffscreenWindowMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveOffscreenWindowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveOffscreenWindowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveOffscreenWindowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveOffscreenWindowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveOffscreenWindowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveOffscreenWindowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveOffscreenWindowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveOffscreenWindowMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveOffscreenWindowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveOffscreenWindowMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveOffscreenWindowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveOffscreenWindowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveOffscreenWindowMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveOffscreenWindowMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveOffscreenWindowMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveOffscreenWindowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveOffscreenWindowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveOffscreenWindowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveOffscreenWindowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveOffscreenWindowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveOffscreenWindowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveOffscreenWindowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveOffscreenWindowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveOffscreenWindowMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveOffscreenWindowMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveOffscreenWindowMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveOffscreenWindowMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveOffscreenWindowMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveOffscreenWindowMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveOffscreenWindowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveOffscreenWindowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveOffscreenWindowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveOffscreenWindowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveOffscreenWindowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveOffscreenWindowMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveOffscreenWindowMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveOffscreenWindowMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveOffscreenWindowMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveOffscreenWindowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveOffscreenWindowMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveOffscreenWindowMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveOffscreenWindowMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveOffscreenWindowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveOffscreenWindowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveOffscreenWindowMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveOffscreenWindowMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveOffscreenWindowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveOffscreenWindowMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveOffscreenWindowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveOffscreenWindowMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveOffscreenWindowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveOffscreenWindowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveOffscreenWindowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveOffscreenWindowMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveOffscreenWindowMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveOffscreenWindowMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveOffscreenWindowMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveOffscreenWindowMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveOffscreenWindowMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveOffscreenWindowMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveOffscreenWindowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveOffscreenWindowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveOffscreenWindowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveOffscreenWindowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveOffscreenWindowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveOffscreenWindowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveOffscreenWindowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveOffscreenWindowMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveOffscreenWindowMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveOffscreenWindowMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveOffscreenWindowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveOffscreenWindowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveOffscreenWindowMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveOffscreenWindowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveOffscreenWindowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveOffscreenWindowMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveOffscreenWindowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveOffscreenWindowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveOffscreenWindowMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveOffscreenWindowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveOffscreenWindowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveOffscreenWindowMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveOffscreenWindowMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveOffscreenWindowMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveOffscreenWindowMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveOffscreenWindowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveOffscreenWindowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveOffscreenWindowMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveOffscreenWindowMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveOffscreenWindowMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveOffscreenWindowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveOffscreenWindowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveOffscreenWindowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveOffscreenWindowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveOffscreenWindowMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveOffscreenWindowMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveOffscreenWindowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveOffscreenWindowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveOffscreenWindowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveOffscreenWindowMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveOffscreenWindowMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveOffscreenWindowMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveOffscreenWindowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveOffscreenWindowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveOffscreenWindowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveOffscreenWindowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveOffscreenWindowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveOffscreenWindowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveOffscreenWindowMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveOffscreenWindowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveOffscreenWindowMethod t OffscreenWindow, O.MethodInfo info OffscreenWindow p) => OL.IsLabel t (OffscreenWindow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList OffscreenWindow
type instance O.AttributeList OffscreenWindow = OffscreenWindowAttributeList
type OffscreenWindowAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList OffscreenWindow = OffscreenWindowSignalList
type OffscreenWindowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method OffscreenWindow::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "OffscreenWindow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_offscreen_window_new" gtk_offscreen_window_new :: 
    IO (Ptr OffscreenWindow)

-- | Creates a toplevel container widget that is used to retrieve
-- snapshots of widgets without showing them on the screen.
-- 
-- /Since: 2.20/
offscreenWindowNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m OffscreenWindow
    -- ^ __Returns:__ A pointer to a t'GI.Gtk.Objects.Widget.Widget'
offscreenWindowNew  = liftIO $ do
    result <- gtk_offscreen_window_new
    checkUnexpectedReturnNULL "offscreenWindowNew" result
    result' <- (newObject OffscreenWindow) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method OffscreenWindow::get_pixbuf
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "offscreen"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "OffscreenWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkOffscreenWindow contained widget."
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
-- returnType: Just
--               (TInterface Name { namespace = "GdkPixbuf" , name = "Pixbuf" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_offscreen_window_get_pixbuf" gtk_offscreen_window_get_pixbuf :: 
    Ptr OffscreenWindow ->                  -- offscreen : TInterface (Name {namespace = "Gtk", name = "OffscreenWindow"})
    IO (Ptr GdkPixbuf.Pixbuf.Pixbuf)

-- | Retrieves a snapshot of the contained widget in the form of
-- a t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf'.  This is a new pixbuf with a reference count of 1,
-- and the application should unreference it once it is no longer
-- needed.
-- 
-- /Since: 2.20/
offscreenWindowGetPixbuf ::
    (B.CallStack.HasCallStack, MonadIO m, IsOffscreenWindow a) =>
    a
    -- ^ /@offscreen@/: the t'GI.Gtk.Objects.OffscreenWindow.OffscreenWindow' contained widget.
    -> m (Maybe GdkPixbuf.Pixbuf.Pixbuf)
    -- ^ __Returns:__ A t'GI.GdkPixbuf.Objects.Pixbuf.Pixbuf' pointer, or 'P.Nothing'.
offscreenWindowGetPixbuf offscreen = liftIO $ do
    offscreen' <- unsafeManagedPtrCastPtr offscreen
    result <- gtk_offscreen_window_get_pixbuf offscreen'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject GdkPixbuf.Pixbuf.Pixbuf) result'
        return result''
    touchManagedPtr offscreen
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data OffscreenWindowGetPixbufMethodInfo
instance (signature ~ (m (Maybe GdkPixbuf.Pixbuf.Pixbuf)), MonadIO m, IsOffscreenWindow a) => O.MethodInfo OffscreenWindowGetPixbufMethodInfo a signature where
    overloadedMethod = offscreenWindowGetPixbuf

#endif

-- method OffscreenWindow::get_surface
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "offscreen"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "OffscreenWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkOffscreenWindow contained widget."
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
-- returnType: Just (TInterface Name { namespace = "cairo" , name = "Surface" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_offscreen_window_get_surface" gtk_offscreen_window_get_surface :: 
    Ptr OffscreenWindow ->                  -- offscreen : TInterface (Name {namespace = "Gtk", name = "OffscreenWindow"})
    IO (Ptr Cairo.Surface.Surface)

-- | Retrieves a snapshot of the contained widget in the form of
-- a t'GI.Cairo.Structs.Surface.Surface'.  If you need to keep this around over window
-- resizes then you should add a reference to it.
-- 
-- /Since: 2.20/
offscreenWindowGetSurface ::
    (B.CallStack.HasCallStack, MonadIO m, IsOffscreenWindow a) =>
    a
    -- ^ /@offscreen@/: the t'GI.Gtk.Objects.OffscreenWindow.OffscreenWindow' contained widget.
    -> m (Maybe Cairo.Surface.Surface)
    -- ^ __Returns:__ A t'GI.Cairo.Structs.Surface.Surface' pointer to the offscreen
    --     surface, or 'P.Nothing'.
offscreenWindowGetSurface offscreen = liftIO $ do
    offscreen' <- unsafeManagedPtrCastPtr offscreen
    result <- gtk_offscreen_window_get_surface offscreen'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newBoxed Cairo.Surface.Surface) result'
        return result''
    touchManagedPtr offscreen
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data OffscreenWindowGetSurfaceMethodInfo
instance (signature ~ (m (Maybe Cairo.Surface.Surface)), MonadIO m, IsOffscreenWindow a) => O.MethodInfo OffscreenWindowGetSurfaceMethodInfo a signature where
    overloadedMethod = offscreenWindowGetSurface

#endif

