{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog' widget is a dialog for selecting a font.
-- It implements the t'GI.Gtk.Interfaces.FontChooser.FontChooser' interface.
-- 
-- = GtkFontChooserDialog as GtkBuildable
-- 
-- The GtkFontChooserDialog implementation of the t'GI.Gtk.Interfaces.Buildable.Buildable'
-- interface exposes the buttons with the names “select_button”
-- and “cancel_button”.
-- 
-- /Since: 3.2/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FontChooserDialog
    ( 

-- * Exported types
    FontChooserDialog(..)                   ,
    IsFontChooserDialog                     ,
    toFontChooserDialog                     ,
    noFontChooserDialog                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontChooserDialogMethod          ,
#endif


-- ** new #method:new#

    fontChooserDialogNew                    ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FontChooser as Gtk.FontChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype FontChooserDialog = FontChooserDialog (ManagedPtr FontChooserDialog)
    deriving (Eq)
foreign import ccall "gtk_font_chooser_dialog_get_type"
    c_gtk_font_chooser_dialog_get_type :: IO GType

instance GObject FontChooserDialog where
    gobjectType = c_gtk_font_chooser_dialog_get_type
    

-- | Convert 'FontChooserDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontChooserDialog where
    toGValue o = do
        gtype <- c_gtk_font_chooser_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontChooserDialog)
        B.ManagedPtr.newObject FontChooserDialog ptr
        
    

-- | Type class for types which can be safely cast to `FontChooserDialog`, for instance with `toFontChooserDialog`.
class (GObject o, O.IsDescendantOf FontChooserDialog o) => IsFontChooserDialog o
instance (GObject o, O.IsDescendantOf FontChooserDialog o) => IsFontChooserDialog o

instance O.HasParentTypes FontChooserDialog
type instance O.ParentTypes FontChooserDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.FontChooser.FontChooser]

-- | Cast to `FontChooserDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontChooserDialog :: (MonadIO m, IsFontChooserDialog o) => o -> m FontChooserDialog
toFontChooserDialog = liftIO . unsafeCastTo FontChooserDialog

-- | A convenience alias for `Nothing` :: `Maybe` `FontChooserDialog`.
noFontChooserDialog :: Maybe FontChooserDialog
noFontChooserDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFontChooserDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontChooserDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFontChooserDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveFontChooserDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveFontChooserDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveFontChooserDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFontChooserDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveFontChooserDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFontChooserDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveFontChooserDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveFontChooserDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFontChooserDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFontChooserDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFontChooserDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveFontChooserDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFontChooserDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFontChooserDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveFontChooserDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveFontChooserDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontChooserDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontChooserDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFontChooserDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFontChooserDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFontChooserDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFontChooserDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFontChooserDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFontChooserDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFontChooserDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFontChooserDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFontChooserDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveFontChooserDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFontChooserDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFontChooserDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFontChooserDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFontChooserDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFontChooserDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFontChooserDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFontChooserDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveFontChooserDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFontChooserDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFontChooserDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFontChooserDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFontChooserDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFontChooserDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFontChooserDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFontChooserDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFontChooserDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFontChooserDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFontChooserDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFontChooserDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFontChooserDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFontChooserDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFontChooserDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFontChooserDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFontChooserDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFontChooserDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFontChooserDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFontChooserDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFontChooserDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFontChooserDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFontChooserDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFontChooserDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFontChooserDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFontChooserDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFontChooserDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontChooserDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFontChooserDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFontChooserDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontChooserDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveFontChooserDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveFontChooserDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontChooserDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFontChooserDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFontChooserDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFontChooserDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFontChooserDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFontChooserDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFontChooserDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFontChooserDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveFontChooserDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFontChooserDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFontChooserDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveFontChooserDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFontChooserDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFontChooserDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFontChooserDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveFontChooserDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFontChooserDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFontChooserDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFontChooserDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFontChooserDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFontChooserDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveFontChooserDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFontChooserDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFontChooserDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFontChooserDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontChooserDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFontChooserDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveFontChooserDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFontChooserDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFontChooserDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFontChooserDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFontChooserDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFontChooserDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFontChooserDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFontChooserDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFontChooserDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveFontChooserDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveFontChooserDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFontChooserDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFontChooserDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFontChooserDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFontChooserDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFontChooserDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFontChooserDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFontChooserDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveFontChooserDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontChooserDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontChooserDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFontChooserDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFontChooserDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFontChooserDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFontChooserDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFontChooserDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveFontChooserDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFontChooserDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFontChooserDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveFontChooserDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveFontChooserDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFontChooserDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveFontChooserDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFontChooserDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFontChooserDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFontChooserDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFontChooserDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFontChooserDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFontChooserDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFontChooserDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFontChooserDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontChooserDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontChooserDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFontChooserDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFontChooserDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFontChooserDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveFontChooserDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFontChooserDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveFontChooserDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFontChooserDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFontChooserDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFontChooserDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFontChooserDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFontChooserDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFontChooserDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFontChooserDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveFontChooserDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveFontChooserDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFontChooserDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveFontChooserDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveFontChooserDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveFontChooserDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveFontChooserDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontChooserDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFontChooserDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFontChooserDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFontChooserDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFontChooserDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFontChooserDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFontChooserDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFontChooserDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFontChooserDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFontChooserDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontChooserDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontChooserDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveFontChooserDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFontChooserDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFontChooserDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFontChooserDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontChooserDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFontChooserDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFontChooserDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveFontChooserDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFontChooserDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveFontChooserDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFontChooserDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFontChooserDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontChooserDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFontChooserDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFontChooserDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFontChooserDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveFontChooserDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontChooserDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveFontChooserDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFontChooserDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveFontChooserDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFontChooserDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFontChooserDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFontChooserDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFontChooserDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFontChooserDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFontChooserDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFontChooserDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFontChooserDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveFontChooserDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveFontChooserDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFontChooserDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFontChooserDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFontChooserDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveFontChooserDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFontChooserDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFontChooserDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFontChooserDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFontChooserDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFontChooserDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFontChooserDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveFontChooserDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontChooserDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveFontChooserDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveFontChooserDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveFontChooserDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveFontChooserDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveFontChooserDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFontChooserDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFontChooserDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFontChooserDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFontChooserDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFontChooserDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFontChooserDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveFontChooserDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFontChooserDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFontChooserDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFontChooserDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFontChooserDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveFontChooserDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFontChooserDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveFontChooserDialogMethod "getFont" o = Gtk.FontChooser.FontChooserGetFontMethodInfo
    ResolveFontChooserDialogMethod "getFontDesc" o = Gtk.FontChooser.FontChooserGetFontDescMethodInfo
    ResolveFontChooserDialogMethod "getFontFace" o = Gtk.FontChooser.FontChooserGetFontFaceMethodInfo
    ResolveFontChooserDialogMethod "getFontFamily" o = Gtk.FontChooser.FontChooserGetFontFamilyMethodInfo
    ResolveFontChooserDialogMethod "getFontFeatures" o = Gtk.FontChooser.FontChooserGetFontFeaturesMethodInfo
    ResolveFontChooserDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFontChooserDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFontChooserDialogMethod "getFontSize" o = Gtk.FontChooser.FontChooserGetFontSizeMethodInfo
    ResolveFontChooserDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFontChooserDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveFontChooserDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveFontChooserDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFontChooserDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveFontChooserDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFontChooserDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFontChooserDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveFontChooserDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFontChooserDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFontChooserDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveFontChooserDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveFontChooserDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveFontChooserDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveFontChooserDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFontChooserDialogMethod "getLanguage" o = Gtk.FontChooser.FontChooserGetLanguageMethodInfo
    ResolveFontChooserDialogMethod "getLevel" o = Gtk.FontChooser.FontChooserGetLevelMethodInfo
    ResolveFontChooserDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFontChooserDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFontChooserDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFontChooserDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFontChooserDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFontChooserDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFontChooserDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFontChooserDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveFontChooserDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveFontChooserDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveFontChooserDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFontChooserDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFontChooserDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFontChooserDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFontChooserDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveFontChooserDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFontChooserDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFontChooserDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFontChooserDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFontChooserDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFontChooserDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFontChooserDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveFontChooserDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFontChooserDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFontChooserDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFontChooserDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFontChooserDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFontChooserDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFontChooserDialogMethod "getPreviewText" o = Gtk.FontChooser.FontChooserGetPreviewTextMethodInfo
    ResolveFontChooserDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontChooserDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontChooserDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFontChooserDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFontChooserDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFontChooserDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFontChooserDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveFontChooserDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveFontChooserDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFontChooserDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveFontChooserDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveFontChooserDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFontChooserDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFontChooserDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveFontChooserDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFontChooserDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFontChooserDialogMethod "getShowPreviewEntry" o = Gtk.FontChooser.FontChooserGetShowPreviewEntryMethodInfo
    ResolveFontChooserDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveFontChooserDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFontChooserDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveFontChooserDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveFontChooserDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFontChooserDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFontChooserDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFontChooserDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFontChooserDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFontChooserDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFontChooserDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveFontChooserDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveFontChooserDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFontChooserDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFontChooserDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFontChooserDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFontChooserDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveFontChooserDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveFontChooserDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveFontChooserDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFontChooserDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFontChooserDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFontChooserDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFontChooserDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFontChooserDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFontChooserDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveFontChooserDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFontChooserDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveFontChooserDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFontChooserDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveFontChooserDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFontChooserDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveFontChooserDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFontChooserDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveFontChooserDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveFontChooserDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFontChooserDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFontChooserDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFontChooserDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFontChooserDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFontChooserDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFontChooserDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFontChooserDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontChooserDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontChooserDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveFontChooserDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveFontChooserDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveFontChooserDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveFontChooserDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveFontChooserDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveFontChooserDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveFontChooserDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFontChooserDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFontChooserDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFontChooserDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFontChooserDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFontChooserDialogMethod "setFilterFunc" o = Gtk.FontChooser.FontChooserSetFilterFuncMethodInfo
    ResolveFontChooserDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveFontChooserDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFontChooserDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFontChooserDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFontChooserDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFontChooserDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveFontChooserDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFontChooserDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveFontChooserDialogMethod "setFont" o = Gtk.FontChooser.FontChooserSetFontMethodInfo
    ResolveFontChooserDialogMethod "setFontDesc" o = Gtk.FontChooser.FontChooserSetFontDescMethodInfo
    ResolveFontChooserDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFontChooserDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFontChooserDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveFontChooserDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveFontChooserDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFontChooserDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveFontChooserDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFontChooserDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveFontChooserDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFontChooserDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFontChooserDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFontChooserDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveFontChooserDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveFontChooserDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveFontChooserDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveFontChooserDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveFontChooserDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveFontChooserDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveFontChooserDialogMethod "setLanguage" o = Gtk.FontChooser.FontChooserSetLanguageMethodInfo
    ResolveFontChooserDialogMethod "setLevel" o = Gtk.FontChooser.FontChooserSetLevelMethodInfo
    ResolveFontChooserDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFontChooserDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFontChooserDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFontChooserDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFontChooserDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFontChooserDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFontChooserDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFontChooserDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveFontChooserDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveFontChooserDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveFontChooserDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFontChooserDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFontChooserDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveFontChooserDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFontChooserDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFontChooserDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveFontChooserDialogMethod "setPreviewText" o = Gtk.FontChooser.FontChooserSetPreviewTextMethodInfo
    ResolveFontChooserDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontChooserDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFontChooserDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFontChooserDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFontChooserDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFontChooserDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveFontChooserDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFontChooserDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveFontChooserDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveFontChooserDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveFontChooserDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFontChooserDialogMethod "setShowPreviewEntry" o = Gtk.FontChooser.FontChooserSetShowPreviewEntryMethodInfo
    ResolveFontChooserDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFontChooserDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveFontChooserDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveFontChooserDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveFontChooserDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFontChooserDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFontChooserDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFontChooserDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFontChooserDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveFontChooserDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveFontChooserDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFontChooserDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFontChooserDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFontChooserDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveFontChooserDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveFontChooserDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveFontChooserDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFontChooserDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFontChooserDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFontChooserDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFontChooserDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFontChooserDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFontChooserDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveFontChooserDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontChooserDialogMethod t FontChooserDialog, O.MethodInfo info FontChooserDialog p) => OL.IsLabel t (FontChooserDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontChooserDialog
type instance O.AttributeList FontChooserDialog = FontChooserDialogAttributeList
type FontChooserDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("font", Gtk.FontChooser.FontChooserFontPropertyInfo), '("fontDesc", Gtk.FontChooser.FontChooserFontDescPropertyInfo), '("fontFeatures", Gtk.FontChooser.FontChooserFontFeaturesPropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("language", Gtk.FontChooser.FontChooserLanguagePropertyInfo), '("level", Gtk.FontChooser.FontChooserLevelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewText", Gtk.FontChooser.FontChooserPreviewTextPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showPreviewEntry", Gtk.FontChooser.FontChooserShowPreviewEntryPropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontChooserDialog = FontChooserDialogSignalList
type FontChooserDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("fontActivated", Gtk.FontChooser.FontChooserFontActivatedSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FontChooserDialog::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Title of the dialog, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "parent"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Window" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Transient parent of the dialog, or %NULL"
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
--               (TInterface
--                  Name { namespace = "Gtk" , name = "FontChooserDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_dialog_new" gtk_font_chooser_dialog_new :: 
    CString ->                              -- title : TBasicType TUTF8
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    IO (Ptr FontChooserDialog)

-- | Creates a new t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'.
-- 
-- /Since: 3.2/
fontChooserDialogNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Window.IsWindow a) =>
    Maybe (T.Text)
    -- ^ /@title@/: Title of the dialog, or 'P.Nothing'
    -> Maybe (a)
    -- ^ /@parent@/: Transient parent of the dialog, or 'P.Nothing'
    -> m FontChooserDialog
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'
fontChooserDialogNew title parent = liftIO $ do
    maybeTitle <- case title of
        Nothing -> return nullPtr
        Just jTitle -> do
            jTitle' <- textToCString jTitle
            return jTitle'
    maybeParent <- case parent of
        Nothing -> return nullPtr
        Just jParent -> do
            jParent' <- unsafeManagedPtrCastPtr jParent
            return jParent'
    result <- gtk_font_chooser_dialog_new maybeTitle maybeParent
    checkUnexpectedReturnNULL "fontChooserDialogNew" result
    result' <- (newObject FontChooserDialog) result
    whenJust parent touchManagedPtr
    freeMem maybeTitle
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

