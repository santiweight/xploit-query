{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ColorSelectionDialog
    ( 

-- * Exported types
    ColorSelectionDialog(..)                ,
    IsColorSelectionDialog                  ,
    toColorSelectionDialog                  ,
    noColorSelectionDialog                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColorSelectionDialogMethod       ,
#endif


-- ** getColorSelection #method:getColorSelection#

#if defined(ENABLE_OVERLOADING)
    ColorSelectionDialogGetColorSelectionMethodInfo,
#endif
    colorSelectionDialogGetColorSelection   ,


-- ** new #method:new#

    colorSelectionDialogNew                 ,




 -- * Properties
-- ** cancelButton #attr:cancelButton#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColorSelectionDialogCancelButtonPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorSelectionDialogCancelButton        ,
#endif
    getColorSelectionDialogCancelButton     ,


-- ** colorSelection #attr:colorSelection#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColorSelectionDialogColorSelectionPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorSelectionDialogColorSelection      ,
#endif
    getColorSelectionDialogColorSelection   ,


-- ** helpButton #attr:helpButton#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColorSelectionDialogHelpButtonPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorSelectionDialogHelpButton          ,
#endif
    getColorSelectionDialogHelpButton       ,


-- ** okButton #attr:okButton#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColorSelectionDialogOkButtonPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    colorSelectionDialogOkButton            ,
#endif
    getColorSelectionDialogOkButton         ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype ColorSelectionDialog = ColorSelectionDialog (ManagedPtr ColorSelectionDialog)
    deriving (Eq)
foreign import ccall "gtk_color_selection_dialog_get_type"
    c_gtk_color_selection_dialog_get_type :: IO GType

instance GObject ColorSelectionDialog where
    gobjectType = c_gtk_color_selection_dialog_get_type
    

-- | Convert 'ColorSelectionDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ColorSelectionDialog where
    toGValue o = do
        gtype <- c_gtk_color_selection_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ColorSelectionDialog)
        B.ManagedPtr.newObject ColorSelectionDialog ptr
        
    

-- | Type class for types which can be safely cast to `ColorSelectionDialog`, for instance with `toColorSelectionDialog`.
class (GObject o, O.IsDescendantOf ColorSelectionDialog o) => IsColorSelectionDialog o
instance (GObject o, O.IsDescendantOf ColorSelectionDialog o) => IsColorSelectionDialog o

instance O.HasParentTypes ColorSelectionDialog
type instance O.ParentTypes ColorSelectionDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `ColorSelectionDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColorSelectionDialog :: (MonadIO m, IsColorSelectionDialog o) => o -> m ColorSelectionDialog
toColorSelectionDialog = liftIO . unsafeCastTo ColorSelectionDialog

-- | A convenience alias for `Nothing` :: `Maybe` `ColorSelectionDialog`.
noColorSelectionDialog :: Maybe ColorSelectionDialog
noColorSelectionDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveColorSelectionDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveColorSelectionDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveColorSelectionDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveColorSelectionDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveColorSelectionDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveColorSelectionDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveColorSelectionDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveColorSelectionDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveColorSelectionDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveColorSelectionDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveColorSelectionDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveColorSelectionDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveColorSelectionDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveColorSelectionDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveColorSelectionDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveColorSelectionDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveColorSelectionDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveColorSelectionDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveColorSelectionDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorSelectionDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorSelectionDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveColorSelectionDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveColorSelectionDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveColorSelectionDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveColorSelectionDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveColorSelectionDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveColorSelectionDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveColorSelectionDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveColorSelectionDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveColorSelectionDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveColorSelectionDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveColorSelectionDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveColorSelectionDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveColorSelectionDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveColorSelectionDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveColorSelectionDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveColorSelectionDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveColorSelectionDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveColorSelectionDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveColorSelectionDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveColorSelectionDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveColorSelectionDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveColorSelectionDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveColorSelectionDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveColorSelectionDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveColorSelectionDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveColorSelectionDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveColorSelectionDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveColorSelectionDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveColorSelectionDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveColorSelectionDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveColorSelectionDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveColorSelectionDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveColorSelectionDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveColorSelectionDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveColorSelectionDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveColorSelectionDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveColorSelectionDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveColorSelectionDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveColorSelectionDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveColorSelectionDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveColorSelectionDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorSelectionDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveColorSelectionDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveColorSelectionDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorSelectionDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveColorSelectionDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveColorSelectionDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorSelectionDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveColorSelectionDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveColorSelectionDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveColorSelectionDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveColorSelectionDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveColorSelectionDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveColorSelectionDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveColorSelectionDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveColorSelectionDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveColorSelectionDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveColorSelectionDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveColorSelectionDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveColorSelectionDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveColorSelectionDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveColorSelectionDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveColorSelectionDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveColorSelectionDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveColorSelectionDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveColorSelectionDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveColorSelectionDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveColorSelectionDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveColorSelectionDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveColorSelectionDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveColorSelectionDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveColorSelectionDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorSelectionDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveColorSelectionDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveColorSelectionDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveColorSelectionDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveColorSelectionDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveColorSelectionDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveColorSelectionDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveColorSelectionDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveColorSelectionDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveColorSelectionDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveColorSelectionDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveColorSelectionDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveColorSelectionDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveColorSelectionDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveColorSelectionDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveColorSelectionDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveColorSelectionDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveColorSelectionDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveColorSelectionDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveColorSelectionDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveColorSelectionDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorSelectionDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorSelectionDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveColorSelectionDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveColorSelectionDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveColorSelectionDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveColorSelectionDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveColorSelectionDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveColorSelectionDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveColorSelectionDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveColorSelectionDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveColorSelectionDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveColorSelectionDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveColorSelectionDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveColorSelectionDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveColorSelectionDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveColorSelectionDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveColorSelectionDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveColorSelectionDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveColorSelectionDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveColorSelectionDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveColorSelectionDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveColorSelectionDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorSelectionDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorSelectionDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveColorSelectionDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveColorSelectionDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveColorSelectionDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveColorSelectionDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveColorSelectionDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveColorSelectionDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveColorSelectionDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveColorSelectionDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveColorSelectionDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveColorSelectionDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveColorSelectionDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveColorSelectionDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveColorSelectionDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveColorSelectionDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveColorSelectionDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveColorSelectionDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveColorSelectionDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveColorSelectionDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveColorSelectionDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveColorSelectionDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorSelectionDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveColorSelectionDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveColorSelectionDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveColorSelectionDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveColorSelectionDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveColorSelectionDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveColorSelectionDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveColorSelectionDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveColorSelectionDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveColorSelectionDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorSelectionDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorSelectionDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveColorSelectionDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveColorSelectionDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveColorSelectionDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveColorSelectionDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorSelectionDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveColorSelectionDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveColorSelectionDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveColorSelectionDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveColorSelectionDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveColorSelectionDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveColorSelectionDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveColorSelectionDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorSelectionDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveColorSelectionDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveColorSelectionDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveColorSelectionDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveColorSelectionDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorSelectionDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveColorSelectionDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveColorSelectionDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveColorSelectionDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveColorSelectionDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveColorSelectionDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveColorSelectionDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveColorSelectionDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveColorSelectionDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveColorSelectionDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveColorSelectionDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveColorSelectionDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveColorSelectionDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveColorSelectionDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveColorSelectionDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveColorSelectionDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveColorSelectionDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveColorSelectionDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveColorSelectionDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveColorSelectionDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveColorSelectionDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveColorSelectionDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveColorSelectionDialogMethod "getColorSelection" o = ColorSelectionDialogGetColorSelectionMethodInfo
    ResolveColorSelectionDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveColorSelectionDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveColorSelectionDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorSelectionDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveColorSelectionDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveColorSelectionDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveColorSelectionDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveColorSelectionDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveColorSelectionDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveColorSelectionDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveColorSelectionDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveColorSelectionDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveColorSelectionDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveColorSelectionDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveColorSelectionDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveColorSelectionDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveColorSelectionDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveColorSelectionDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveColorSelectionDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveColorSelectionDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveColorSelectionDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveColorSelectionDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveColorSelectionDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveColorSelectionDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveColorSelectionDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveColorSelectionDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveColorSelectionDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveColorSelectionDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveColorSelectionDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveColorSelectionDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveColorSelectionDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveColorSelectionDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveColorSelectionDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveColorSelectionDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveColorSelectionDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveColorSelectionDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveColorSelectionDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveColorSelectionDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveColorSelectionDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveColorSelectionDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveColorSelectionDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveColorSelectionDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveColorSelectionDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveColorSelectionDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveColorSelectionDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveColorSelectionDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveColorSelectionDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveColorSelectionDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveColorSelectionDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveColorSelectionDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveColorSelectionDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveColorSelectionDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveColorSelectionDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveColorSelectionDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveColorSelectionDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveColorSelectionDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveColorSelectionDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveColorSelectionDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveColorSelectionDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveColorSelectionDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveColorSelectionDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveColorSelectionDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveColorSelectionDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorSelectionDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorSelectionDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveColorSelectionDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveColorSelectionDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveColorSelectionDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveColorSelectionDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveColorSelectionDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveColorSelectionDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveColorSelectionDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveColorSelectionDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveColorSelectionDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveColorSelectionDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveColorSelectionDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveColorSelectionDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveColorSelectionDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveColorSelectionDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveColorSelectionDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveColorSelectionDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveColorSelectionDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveColorSelectionDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveColorSelectionDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveColorSelectionDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveColorSelectionDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveColorSelectionDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveColorSelectionDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveColorSelectionDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveColorSelectionDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveColorSelectionDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveColorSelectionDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveColorSelectionDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveColorSelectionDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveColorSelectionDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveColorSelectionDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveColorSelectionDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveColorSelectionDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveColorSelectionDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveColorSelectionDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveColorSelectionDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveColorSelectionDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveColorSelectionDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveColorSelectionDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveColorSelectionDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveColorSelectionDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveColorSelectionDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveColorSelectionDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveColorSelectionDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveColorSelectionDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveColorSelectionDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveColorSelectionDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveColorSelectionDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveColorSelectionDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveColorSelectionDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveColorSelectionDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveColorSelectionDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveColorSelectionDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveColorSelectionDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveColorSelectionDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveColorSelectionDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorSelectionDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorSelectionDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveColorSelectionDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveColorSelectionDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveColorSelectionDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveColorSelectionDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveColorSelectionDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveColorSelectionDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveColorSelectionDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveColorSelectionDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveColorSelectionDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveColorSelectionDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveColorSelectionDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveColorSelectionDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveColorSelectionDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveColorSelectionDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveColorSelectionDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveColorSelectionDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveColorSelectionDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveColorSelectionDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveColorSelectionDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveColorSelectionDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveColorSelectionDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveColorSelectionDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveColorSelectionDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveColorSelectionDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveColorSelectionDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveColorSelectionDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveColorSelectionDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveColorSelectionDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveColorSelectionDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveColorSelectionDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveColorSelectionDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveColorSelectionDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveColorSelectionDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveColorSelectionDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveColorSelectionDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveColorSelectionDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveColorSelectionDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveColorSelectionDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveColorSelectionDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveColorSelectionDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveColorSelectionDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveColorSelectionDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveColorSelectionDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveColorSelectionDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveColorSelectionDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveColorSelectionDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveColorSelectionDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveColorSelectionDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveColorSelectionDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveColorSelectionDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveColorSelectionDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveColorSelectionDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveColorSelectionDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveColorSelectionDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorSelectionDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveColorSelectionDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveColorSelectionDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveColorSelectionDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveColorSelectionDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveColorSelectionDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveColorSelectionDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveColorSelectionDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveColorSelectionDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveColorSelectionDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveColorSelectionDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveColorSelectionDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveColorSelectionDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveColorSelectionDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveColorSelectionDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveColorSelectionDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveColorSelectionDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveColorSelectionDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveColorSelectionDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveColorSelectionDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveColorSelectionDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveColorSelectionDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveColorSelectionDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveColorSelectionDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveColorSelectionDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveColorSelectionDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveColorSelectionDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveColorSelectionDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveColorSelectionDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveColorSelectionDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveColorSelectionDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveColorSelectionDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveColorSelectionDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveColorSelectionDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorSelectionDialogMethod t ColorSelectionDialog, O.MethodInfo info ColorSelectionDialog p) => OL.IsLabel t (ColorSelectionDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "cancel-button"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@cancel-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorSelectionDialog #cancelButton
-- @
getColorSelectionDialogCancelButton :: (MonadIO m, IsColorSelectionDialog o) => o -> m (Maybe Gtk.Widget.Widget)
getColorSelectionDialogCancelButton obj = liftIO $ B.Properties.getObjectPropertyObject obj "cancel-button" Gtk.Widget.Widget

#if defined(ENABLE_OVERLOADING)
data ColorSelectionDialogCancelButtonPropertyInfo
instance AttrInfo ColorSelectionDialogCancelButtonPropertyInfo where
    type AttrAllowedOps ColorSelectionDialogCancelButtonPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColorSelectionDialogCancelButtonPropertyInfo = IsColorSelectionDialog
    type AttrSetTypeConstraint ColorSelectionDialogCancelButtonPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ColorSelectionDialogCancelButtonPropertyInfo = (~) ()
    type AttrTransferType ColorSelectionDialogCancelButtonPropertyInfo = ()
    type AttrGetType ColorSelectionDialogCancelButtonPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ColorSelectionDialogCancelButtonPropertyInfo = "cancel-button"
    type AttrOrigin ColorSelectionDialogCancelButtonPropertyInfo = ColorSelectionDialog
    attrGet = getColorSelectionDialogCancelButton
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "color-selection"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@color-selection@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorSelectionDialog #colorSelection
-- @
getColorSelectionDialogColorSelection :: (MonadIO m, IsColorSelectionDialog o) => o -> m Gtk.Widget.Widget
getColorSelectionDialogColorSelection obj = liftIO $ checkUnexpectedNothing "getColorSelectionDialogColorSelection" $ B.Properties.getObjectPropertyObject obj "color-selection" Gtk.Widget.Widget

#if defined(ENABLE_OVERLOADING)
data ColorSelectionDialogColorSelectionPropertyInfo
instance AttrInfo ColorSelectionDialogColorSelectionPropertyInfo where
    type AttrAllowedOps ColorSelectionDialogColorSelectionPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColorSelectionDialogColorSelectionPropertyInfo = IsColorSelectionDialog
    type AttrSetTypeConstraint ColorSelectionDialogColorSelectionPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ColorSelectionDialogColorSelectionPropertyInfo = (~) ()
    type AttrTransferType ColorSelectionDialogColorSelectionPropertyInfo = ()
    type AttrGetType ColorSelectionDialogColorSelectionPropertyInfo = Gtk.Widget.Widget
    type AttrLabel ColorSelectionDialogColorSelectionPropertyInfo = "color-selection"
    type AttrOrigin ColorSelectionDialogColorSelectionPropertyInfo = ColorSelectionDialog
    attrGet = getColorSelectionDialogColorSelection
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "help-button"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@help-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorSelectionDialog #helpButton
-- @
getColorSelectionDialogHelpButton :: (MonadIO m, IsColorSelectionDialog o) => o -> m (Maybe Gtk.Widget.Widget)
getColorSelectionDialogHelpButton obj = liftIO $ B.Properties.getObjectPropertyObject obj "help-button" Gtk.Widget.Widget

#if defined(ENABLE_OVERLOADING)
data ColorSelectionDialogHelpButtonPropertyInfo
instance AttrInfo ColorSelectionDialogHelpButtonPropertyInfo where
    type AttrAllowedOps ColorSelectionDialogHelpButtonPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColorSelectionDialogHelpButtonPropertyInfo = IsColorSelectionDialog
    type AttrSetTypeConstraint ColorSelectionDialogHelpButtonPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ColorSelectionDialogHelpButtonPropertyInfo = (~) ()
    type AttrTransferType ColorSelectionDialogHelpButtonPropertyInfo = ()
    type AttrGetType ColorSelectionDialogHelpButtonPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ColorSelectionDialogHelpButtonPropertyInfo = "help-button"
    type AttrOrigin ColorSelectionDialogHelpButtonPropertyInfo = ColorSelectionDialog
    attrGet = getColorSelectionDialogHelpButton
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "ok-button"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@ok-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorSelectionDialog #okButton
-- @
getColorSelectionDialogOkButton :: (MonadIO m, IsColorSelectionDialog o) => o -> m (Maybe Gtk.Widget.Widget)
getColorSelectionDialogOkButton obj = liftIO $ B.Properties.getObjectPropertyObject obj "ok-button" Gtk.Widget.Widget

#if defined(ENABLE_OVERLOADING)
data ColorSelectionDialogOkButtonPropertyInfo
instance AttrInfo ColorSelectionDialogOkButtonPropertyInfo where
    type AttrAllowedOps ColorSelectionDialogOkButtonPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColorSelectionDialogOkButtonPropertyInfo = IsColorSelectionDialog
    type AttrSetTypeConstraint ColorSelectionDialogOkButtonPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ColorSelectionDialogOkButtonPropertyInfo = (~) ()
    type AttrTransferType ColorSelectionDialogOkButtonPropertyInfo = ()
    type AttrGetType ColorSelectionDialogOkButtonPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ColorSelectionDialogOkButtonPropertyInfo = "ok-button"
    type AttrOrigin ColorSelectionDialogOkButtonPropertyInfo = ColorSelectionDialog
    attrGet = getColorSelectionDialogOkButton
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorSelectionDialog
type instance O.AttributeList ColorSelectionDialog = ColorSelectionDialogAttributeList
type ColorSelectionDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("cancelButton", ColorSelectionDialogCancelButtonPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("colorSelection", ColorSelectionDialogColorSelectionPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("helpButton", ColorSelectionDialogHelpButtonPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("okButton", ColorSelectionDialogOkButtonPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
colorSelectionDialogCancelButton :: AttrLabelProxy "cancelButton"
colorSelectionDialogCancelButton = AttrLabelProxy

colorSelectionDialogColorSelection :: AttrLabelProxy "colorSelection"
colorSelectionDialogColorSelection = AttrLabelProxy

colorSelectionDialogHelpButton :: AttrLabelProxy "helpButton"
colorSelectionDialogHelpButton = AttrLabelProxy

colorSelectionDialogOkButton :: AttrLabelProxy "okButton"
colorSelectionDialogOkButton = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorSelectionDialog = ColorSelectionDialogSignalList
type ColorSelectionDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ColorSelectionDialog::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a string containing the title text for the dialog."
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
--                  Name { namespace = "Gtk" , name = "ColorSelectionDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_selection_dialog_new" gtk_color_selection_dialog_new :: 
    CString ->                              -- title : TBasicType TUTF8
    IO (Ptr ColorSelectionDialog)

-- | Creates a new t'GI.Gtk.Objects.ColorSelectionDialog.ColorSelectionDialog'.
colorSelectionDialogNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@title@/: a string containing the title text for the dialog.
    -> m ColorSelectionDialog
    -- ^ __Returns:__ a t'GI.Gtk.Objects.ColorSelectionDialog.ColorSelectionDialog'.
colorSelectionDialogNew title = liftIO $ do
    title' <- textToCString title
    result <- gtk_color_selection_dialog_new title'
    checkUnexpectedReturnNULL "colorSelectionDialogNew" result
    result' <- (newObject ColorSelectionDialog) result
    freeMem title'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ColorSelectionDialog::get_color_selection
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "colorsel"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "ColorSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorSelectionDialog"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_selection_dialog_get_color_selection" gtk_color_selection_dialog_get_color_selection :: 
    Ptr ColorSelectionDialog ->             -- colorsel : TInterface (Name {namespace = "Gtk", name = "ColorSelectionDialog"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the t'GI.Gtk.Objects.ColorSelection.ColorSelection' widget embedded in the dialog.
-- 
-- /Since: 2.14/
colorSelectionDialogGetColorSelection ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorSelectionDialog a) =>
    a
    -- ^ /@colorsel@/: a t'GI.Gtk.Objects.ColorSelectionDialog.ColorSelectionDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the embedded t'GI.Gtk.Objects.ColorSelection.ColorSelection'
colorSelectionDialogGetColorSelection colorsel = liftIO $ do
    colorsel' <- unsafeManagedPtrCastPtr colorsel
    result <- gtk_color_selection_dialog_get_color_selection colorsel'
    checkUnexpectedReturnNULL "colorSelectionDialogGetColorSelection" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr colorsel
    return result'

#if defined(ENABLE_OVERLOADING)
data ColorSelectionDialogGetColorSelectionMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsColorSelectionDialog a) => O.MethodInfo ColorSelectionDialogGetColorSelectionMethodInfo a signature where
    overloadedMethod = colorSelectionDialogGetColorSelection

#endif

