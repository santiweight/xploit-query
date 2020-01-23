{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog' widget is a dialog for choosing
-- a color. It implements the t'GI.Gtk.Interfaces.ColorChooser.ColorChooser' interface.
-- 
-- /Since: 3.4/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ColorChooserDialog
    ( 

-- * Exported types
    ColorChooserDialog(..)                  ,
    IsColorChooserDialog                    ,
    toColorChooserDialog                    ,
    noColorChooserDialog                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColorChooserDialogMethod         ,
#endif


-- ** new #method:new#

    colorChooserDialogNew                   ,




 -- * Properties
-- ** showEditor #attr:showEditor#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColorChooserDialogShowEditorPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorChooserDialogShowEditor            ,
#endif
    constructColorChooserDialogShowEditor   ,
    getColorChooserDialogShowEditor         ,
    setColorChooserDialogShowEditor         ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.ColorChooser as Gtk.ColorChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype ColorChooserDialog = ColorChooserDialog (ManagedPtr ColorChooserDialog)
    deriving (Eq)
foreign import ccall "gtk_color_chooser_dialog_get_type"
    c_gtk_color_chooser_dialog_get_type :: IO GType

instance GObject ColorChooserDialog where
    gobjectType = c_gtk_color_chooser_dialog_get_type
    

-- | Convert 'ColorChooserDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ColorChooserDialog where
    toGValue o = do
        gtype <- c_gtk_color_chooser_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ColorChooserDialog)
        B.ManagedPtr.newObject ColorChooserDialog ptr
        
    

-- | Type class for types which can be safely cast to `ColorChooserDialog`, for instance with `toColorChooserDialog`.
class (GObject o, O.IsDescendantOf ColorChooserDialog o) => IsColorChooserDialog o
instance (GObject o, O.IsDescendantOf ColorChooserDialog o) => IsColorChooserDialog o

instance O.HasParentTypes ColorChooserDialog
type instance O.ParentTypes ColorChooserDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.ColorChooser.ColorChooser]

-- | Cast to `ColorChooserDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColorChooserDialog :: (MonadIO m, IsColorChooserDialog o) => o -> m ColorChooserDialog
toColorChooserDialog = liftIO . unsafeCastTo ColorChooserDialog

-- | A convenience alias for `Nothing` :: `Maybe` `ColorChooserDialog`.
noColorChooserDialog :: Maybe ColorChooserDialog
noColorChooserDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveColorChooserDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveColorChooserDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveColorChooserDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveColorChooserDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveColorChooserDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveColorChooserDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveColorChooserDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveColorChooserDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveColorChooserDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveColorChooserDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveColorChooserDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveColorChooserDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveColorChooserDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveColorChooserDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveColorChooserDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveColorChooserDialogMethod "addPalette" o = Gtk.ColorChooser.ColorChooserAddPaletteMethodInfo
    ResolveColorChooserDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveColorChooserDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveColorChooserDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveColorChooserDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorChooserDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorChooserDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveColorChooserDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveColorChooserDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveColorChooserDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveColorChooserDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveColorChooserDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveColorChooserDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveColorChooserDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveColorChooserDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveColorChooserDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveColorChooserDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveColorChooserDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveColorChooserDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveColorChooserDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveColorChooserDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveColorChooserDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveColorChooserDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveColorChooserDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveColorChooserDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveColorChooserDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveColorChooserDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveColorChooserDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveColorChooserDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveColorChooserDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveColorChooserDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveColorChooserDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveColorChooserDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveColorChooserDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveColorChooserDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveColorChooserDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveColorChooserDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveColorChooserDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveColorChooserDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveColorChooserDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveColorChooserDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveColorChooserDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveColorChooserDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveColorChooserDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveColorChooserDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveColorChooserDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveColorChooserDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveColorChooserDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveColorChooserDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveColorChooserDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveColorChooserDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorChooserDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveColorChooserDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveColorChooserDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorChooserDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveColorChooserDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveColorChooserDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorChooserDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveColorChooserDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveColorChooserDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveColorChooserDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveColorChooserDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveColorChooserDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveColorChooserDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveColorChooserDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveColorChooserDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveColorChooserDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveColorChooserDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveColorChooserDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveColorChooserDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveColorChooserDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveColorChooserDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveColorChooserDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveColorChooserDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveColorChooserDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveColorChooserDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveColorChooserDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveColorChooserDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveColorChooserDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveColorChooserDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveColorChooserDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveColorChooserDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorChooserDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveColorChooserDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveColorChooserDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveColorChooserDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveColorChooserDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveColorChooserDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveColorChooserDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveColorChooserDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveColorChooserDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveColorChooserDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveColorChooserDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveColorChooserDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveColorChooserDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveColorChooserDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveColorChooserDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveColorChooserDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveColorChooserDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveColorChooserDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveColorChooserDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveColorChooserDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveColorChooserDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorChooserDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorChooserDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveColorChooserDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveColorChooserDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveColorChooserDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveColorChooserDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveColorChooserDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveColorChooserDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveColorChooserDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveColorChooserDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveColorChooserDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveColorChooserDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveColorChooserDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveColorChooserDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveColorChooserDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveColorChooserDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveColorChooserDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveColorChooserDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveColorChooserDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveColorChooserDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveColorChooserDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveColorChooserDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorChooserDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorChooserDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveColorChooserDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveColorChooserDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveColorChooserDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveColorChooserDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveColorChooserDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveColorChooserDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveColorChooserDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveColorChooserDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveColorChooserDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveColorChooserDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveColorChooserDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveColorChooserDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveColorChooserDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveColorChooserDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveColorChooserDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveColorChooserDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveColorChooserDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveColorChooserDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveColorChooserDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveColorChooserDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorChooserDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveColorChooserDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveColorChooserDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveColorChooserDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveColorChooserDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveColorChooserDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveColorChooserDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveColorChooserDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveColorChooserDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveColorChooserDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorChooserDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorChooserDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveColorChooserDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveColorChooserDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveColorChooserDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveColorChooserDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorChooserDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveColorChooserDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveColorChooserDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveColorChooserDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveColorChooserDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveColorChooserDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveColorChooserDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveColorChooserDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorChooserDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveColorChooserDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveColorChooserDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveColorChooserDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveColorChooserDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorChooserDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveColorChooserDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveColorChooserDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveColorChooserDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveColorChooserDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveColorChooserDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveColorChooserDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveColorChooserDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveColorChooserDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveColorChooserDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveColorChooserDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveColorChooserDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveColorChooserDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveColorChooserDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveColorChooserDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveColorChooserDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveColorChooserDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveColorChooserDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveColorChooserDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveColorChooserDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveColorChooserDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveColorChooserDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveColorChooserDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveColorChooserDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveColorChooserDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorChooserDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveColorChooserDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveColorChooserDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveColorChooserDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveColorChooserDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveColorChooserDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveColorChooserDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveColorChooserDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveColorChooserDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveColorChooserDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveColorChooserDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveColorChooserDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveColorChooserDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveColorChooserDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveColorChooserDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveColorChooserDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveColorChooserDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveColorChooserDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveColorChooserDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveColorChooserDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveColorChooserDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveColorChooserDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveColorChooserDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveColorChooserDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveColorChooserDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveColorChooserDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveColorChooserDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveColorChooserDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveColorChooserDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveColorChooserDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveColorChooserDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveColorChooserDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveColorChooserDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveColorChooserDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveColorChooserDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveColorChooserDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveColorChooserDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveColorChooserDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveColorChooserDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveColorChooserDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveColorChooserDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveColorChooserDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveColorChooserDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveColorChooserDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveColorChooserDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveColorChooserDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveColorChooserDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveColorChooserDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveColorChooserDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveColorChooserDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveColorChooserDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveColorChooserDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveColorChooserDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveColorChooserDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveColorChooserDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveColorChooserDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveColorChooserDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveColorChooserDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveColorChooserDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveColorChooserDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveColorChooserDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveColorChooserDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveColorChooserDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveColorChooserDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveColorChooserDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorChooserDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorChooserDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveColorChooserDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveColorChooserDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveColorChooserDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveColorChooserDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveColorChooserDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveColorChooserDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveColorChooserDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveColorChooserDialogMethod "getRgba" o = Gtk.ColorChooser.ColorChooserGetRgbaMethodInfo
    ResolveColorChooserDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveColorChooserDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveColorChooserDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveColorChooserDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveColorChooserDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveColorChooserDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveColorChooserDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveColorChooserDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveColorChooserDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveColorChooserDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveColorChooserDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveColorChooserDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveColorChooserDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveColorChooserDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveColorChooserDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveColorChooserDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveColorChooserDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveColorChooserDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveColorChooserDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveColorChooserDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveColorChooserDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveColorChooserDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveColorChooserDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveColorChooserDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveColorChooserDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveColorChooserDialogMethod "getUseAlpha" o = Gtk.ColorChooser.ColorChooserGetUseAlphaMethodInfo
    ResolveColorChooserDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveColorChooserDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveColorChooserDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveColorChooserDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveColorChooserDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveColorChooserDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveColorChooserDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveColorChooserDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveColorChooserDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveColorChooserDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveColorChooserDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveColorChooserDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveColorChooserDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveColorChooserDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveColorChooserDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveColorChooserDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveColorChooserDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveColorChooserDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveColorChooserDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveColorChooserDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveColorChooserDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveColorChooserDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveColorChooserDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveColorChooserDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorChooserDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorChooserDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveColorChooserDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveColorChooserDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveColorChooserDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveColorChooserDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveColorChooserDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveColorChooserDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveColorChooserDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveColorChooserDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveColorChooserDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveColorChooserDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveColorChooserDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveColorChooserDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveColorChooserDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveColorChooserDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveColorChooserDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveColorChooserDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveColorChooserDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveColorChooserDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveColorChooserDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveColorChooserDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveColorChooserDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveColorChooserDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveColorChooserDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveColorChooserDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveColorChooserDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveColorChooserDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveColorChooserDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveColorChooserDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveColorChooserDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveColorChooserDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveColorChooserDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveColorChooserDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveColorChooserDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveColorChooserDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveColorChooserDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveColorChooserDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveColorChooserDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveColorChooserDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveColorChooserDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveColorChooserDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveColorChooserDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveColorChooserDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveColorChooserDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveColorChooserDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveColorChooserDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveColorChooserDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveColorChooserDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveColorChooserDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveColorChooserDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveColorChooserDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveColorChooserDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveColorChooserDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveColorChooserDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveColorChooserDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorChooserDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveColorChooserDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveColorChooserDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveColorChooserDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveColorChooserDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveColorChooserDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveColorChooserDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveColorChooserDialogMethod "setRgba" o = Gtk.ColorChooser.ColorChooserSetRgbaMethodInfo
    ResolveColorChooserDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveColorChooserDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveColorChooserDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveColorChooserDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveColorChooserDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveColorChooserDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveColorChooserDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveColorChooserDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveColorChooserDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveColorChooserDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveColorChooserDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveColorChooserDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveColorChooserDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveColorChooserDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveColorChooserDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveColorChooserDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveColorChooserDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveColorChooserDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveColorChooserDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveColorChooserDialogMethod "setUseAlpha" o = Gtk.ColorChooser.ColorChooserSetUseAlphaMethodInfo
    ResolveColorChooserDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveColorChooserDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveColorChooserDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveColorChooserDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveColorChooserDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveColorChooserDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveColorChooserDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveColorChooserDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorChooserDialogMethod t ColorChooserDialog, O.MethodInfo info ColorChooserDialog p) => OL.IsLabel t (ColorChooserDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "show-editor"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorChooserDialog #showEditor
-- @
getColorChooserDialogShowEditor :: (MonadIO m, IsColorChooserDialog o) => o -> m Bool
getColorChooserDialogShowEditor obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-editor"

-- | Set the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorChooserDialog [ #showEditor 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorChooserDialogShowEditor :: (MonadIO m, IsColorChooserDialog o) => o -> Bool -> m ()
setColorChooserDialogShowEditor obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-editor" val

-- | Construct a `GValueConstruct` with valid value for the “@show-editor@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorChooserDialogShowEditor :: (IsColorChooserDialog o) => Bool -> IO (GValueConstruct o)
constructColorChooserDialogShowEditor val = B.Properties.constructObjectPropertyBool "show-editor" val

#if defined(ENABLE_OVERLOADING)
data ColorChooserDialogShowEditorPropertyInfo
instance AttrInfo ColorChooserDialogShowEditorPropertyInfo where
    type AttrAllowedOps ColorChooserDialogShowEditorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorChooserDialogShowEditorPropertyInfo = IsColorChooserDialog
    type AttrSetTypeConstraint ColorChooserDialogShowEditorPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ColorChooserDialogShowEditorPropertyInfo = (~) Bool
    type AttrTransferType ColorChooserDialogShowEditorPropertyInfo = Bool
    type AttrGetType ColorChooserDialogShowEditorPropertyInfo = Bool
    type AttrLabel ColorChooserDialogShowEditorPropertyInfo = "show-editor"
    type AttrOrigin ColorChooserDialogShowEditorPropertyInfo = ColorChooserDialog
    attrGet = getColorChooserDialogShowEditor
    attrSet = setColorChooserDialogShowEditor
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorChooserDialogShowEditor
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorChooserDialog
type instance O.AttributeList ColorChooserDialog = ColorChooserDialogAttributeList
type ColorChooserDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rgba", Gtk.ColorChooser.ColorChooserRgbaPropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showEditor", ColorChooserDialogShowEditorPropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useAlpha", Gtk.ColorChooser.ColorChooserUseAlphaPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
colorChooserDialogShowEditor :: AttrLabelProxy "showEditor"
colorChooserDialogShowEditor = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorChooserDialog = ColorChooserDialogSignalList
type ColorChooserDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("colorActivated", Gtk.ColorChooser.ColorChooserColorActivatedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ColorChooserDialog::new
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
--                  Name { namespace = "Gtk" , name = "ColorChooserDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_chooser_dialog_new" gtk_color_chooser_dialog_new :: 
    CString ->                              -- title : TBasicType TUTF8
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    IO (Ptr ColorChooserDialog)

-- | Creates a new t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog'.
-- 
-- /Since: 3.4/
colorChooserDialogNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Window.IsWindow a) =>
    Maybe (T.Text)
    -- ^ /@title@/: Title of the dialog, or 'P.Nothing'
    -> Maybe (a)
    -- ^ /@parent@/: Transient parent of the dialog, or 'P.Nothing'
    -> m ColorChooserDialog
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ColorChooserDialog.ColorChooserDialog'
colorChooserDialogNew title parent = liftIO $ do
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
    result <- gtk_color_chooser_dialog_new maybeTitle maybeParent
    checkUnexpectedReturnNULL "colorChooserDialogNew" result
    result' <- (newObject ColorChooserDialog) result
    whenJust parent touchManagedPtr
    freeMem maybeTitle
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

