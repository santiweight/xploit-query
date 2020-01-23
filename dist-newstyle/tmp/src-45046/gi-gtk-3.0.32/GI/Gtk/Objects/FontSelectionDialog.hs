{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FontSelectionDialog
    ( 

-- * Exported types
    FontSelectionDialog(..)                 ,
    IsFontSelectionDialog                   ,
    toFontSelectionDialog                   ,
    noFontSelectionDialog                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontSelectionDialogMethod        ,
#endif


-- ** getCancelButton #method:getCancelButton#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogGetCancelButtonMethodInfo,
#endif
    fontSelectionDialogGetCancelButton      ,


-- ** getFontName #method:getFontName#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogGetFontNameMethodInfo,
#endif
    fontSelectionDialogGetFontName          ,


-- ** getFontSelection #method:getFontSelection#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogGetFontSelectionMethodInfo,
#endif
    fontSelectionDialogGetFontSelection     ,


-- ** getOkButton #method:getOkButton#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogGetOkButtonMethodInfo,
#endif
    fontSelectionDialogGetOkButton          ,


-- ** getPreviewText #method:getPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogGetPreviewTextMethodInfo,
#endif
    fontSelectionDialogGetPreviewText       ,


-- ** new #method:new#

    fontSelectionDialogNew                  ,


-- ** setFontName #method:setFontName#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogSetFontNameMethodInfo,
#endif
    fontSelectionDialogSetFontName          ,


-- ** setPreviewText #method:setPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontSelectionDialogSetPreviewTextMethodInfo,
#endif
    fontSelectionDialogSetPreviewText       ,




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
newtype FontSelectionDialog = FontSelectionDialog (ManagedPtr FontSelectionDialog)
    deriving (Eq)
foreign import ccall "gtk_font_selection_dialog_get_type"
    c_gtk_font_selection_dialog_get_type :: IO GType

instance GObject FontSelectionDialog where
    gobjectType = c_gtk_font_selection_dialog_get_type
    

-- | Convert 'FontSelectionDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontSelectionDialog where
    toGValue o = do
        gtype <- c_gtk_font_selection_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontSelectionDialog)
        B.ManagedPtr.newObject FontSelectionDialog ptr
        
    

-- | Type class for types which can be safely cast to `FontSelectionDialog`, for instance with `toFontSelectionDialog`.
class (GObject o, O.IsDescendantOf FontSelectionDialog o) => IsFontSelectionDialog o
instance (GObject o, O.IsDescendantOf FontSelectionDialog o) => IsFontSelectionDialog o

instance O.HasParentTypes FontSelectionDialog
type instance O.ParentTypes FontSelectionDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `FontSelectionDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontSelectionDialog :: (MonadIO m, IsFontSelectionDialog o) => o -> m FontSelectionDialog
toFontSelectionDialog = liftIO . unsafeCastTo FontSelectionDialog

-- | A convenience alias for `Nothing` :: `Maybe` `FontSelectionDialog`.
noFontSelectionDialog :: Maybe FontSelectionDialog
noFontSelectionDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFontSelectionDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontSelectionDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFontSelectionDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveFontSelectionDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveFontSelectionDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveFontSelectionDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFontSelectionDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveFontSelectionDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFontSelectionDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveFontSelectionDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveFontSelectionDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFontSelectionDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFontSelectionDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFontSelectionDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveFontSelectionDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFontSelectionDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFontSelectionDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveFontSelectionDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveFontSelectionDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontSelectionDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontSelectionDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFontSelectionDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFontSelectionDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFontSelectionDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFontSelectionDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFontSelectionDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFontSelectionDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFontSelectionDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFontSelectionDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFontSelectionDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveFontSelectionDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFontSelectionDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFontSelectionDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFontSelectionDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFontSelectionDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFontSelectionDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFontSelectionDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFontSelectionDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveFontSelectionDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFontSelectionDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFontSelectionDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFontSelectionDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFontSelectionDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFontSelectionDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFontSelectionDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFontSelectionDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFontSelectionDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFontSelectionDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFontSelectionDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFontSelectionDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFontSelectionDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFontSelectionDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFontSelectionDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFontSelectionDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFontSelectionDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFontSelectionDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFontSelectionDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFontSelectionDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFontSelectionDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFontSelectionDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFontSelectionDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFontSelectionDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontSelectionDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFontSelectionDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFontSelectionDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontSelectionDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveFontSelectionDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveFontSelectionDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontSelectionDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFontSelectionDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFontSelectionDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFontSelectionDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFontSelectionDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFontSelectionDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFontSelectionDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFontSelectionDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveFontSelectionDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFontSelectionDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFontSelectionDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveFontSelectionDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFontSelectionDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFontSelectionDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFontSelectionDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveFontSelectionDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFontSelectionDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFontSelectionDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFontSelectionDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFontSelectionDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFontSelectionDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveFontSelectionDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFontSelectionDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFontSelectionDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFontSelectionDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontSelectionDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFontSelectionDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveFontSelectionDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFontSelectionDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFontSelectionDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFontSelectionDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFontSelectionDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFontSelectionDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFontSelectionDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFontSelectionDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFontSelectionDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveFontSelectionDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveFontSelectionDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFontSelectionDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFontSelectionDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFontSelectionDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFontSelectionDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFontSelectionDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFontSelectionDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFontSelectionDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveFontSelectionDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontSelectionDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontSelectionDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFontSelectionDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFontSelectionDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFontSelectionDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFontSelectionDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFontSelectionDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveFontSelectionDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFontSelectionDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFontSelectionDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveFontSelectionDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveFontSelectionDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFontSelectionDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveFontSelectionDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFontSelectionDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFontSelectionDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFontSelectionDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFontSelectionDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFontSelectionDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFontSelectionDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFontSelectionDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFontSelectionDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontSelectionDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontSelectionDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFontSelectionDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFontSelectionDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFontSelectionDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveFontSelectionDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFontSelectionDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveFontSelectionDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFontSelectionDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFontSelectionDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFontSelectionDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFontSelectionDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFontSelectionDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFontSelectionDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFontSelectionDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveFontSelectionDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveFontSelectionDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFontSelectionDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveFontSelectionDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveFontSelectionDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveFontSelectionDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveFontSelectionDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontSelectionDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFontSelectionDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFontSelectionDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFontSelectionDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFontSelectionDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFontSelectionDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFontSelectionDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFontSelectionDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFontSelectionDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFontSelectionDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontSelectionDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontSelectionDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveFontSelectionDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFontSelectionDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFontSelectionDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFontSelectionDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontSelectionDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFontSelectionDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFontSelectionDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveFontSelectionDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFontSelectionDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveFontSelectionDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFontSelectionDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFontSelectionDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontSelectionDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFontSelectionDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFontSelectionDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFontSelectionDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveFontSelectionDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontSelectionDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveFontSelectionDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFontSelectionDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveFontSelectionDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFontSelectionDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFontSelectionDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFontSelectionDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFontSelectionDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFontSelectionDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFontSelectionDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFontSelectionDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFontSelectionDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveFontSelectionDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveFontSelectionDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFontSelectionDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFontSelectionDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFontSelectionDialogMethod "getCancelButton" o = FontSelectionDialogGetCancelButtonMethodInfo
    ResolveFontSelectionDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveFontSelectionDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFontSelectionDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFontSelectionDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFontSelectionDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFontSelectionDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFontSelectionDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFontSelectionDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveFontSelectionDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontSelectionDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveFontSelectionDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveFontSelectionDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveFontSelectionDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveFontSelectionDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveFontSelectionDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFontSelectionDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFontSelectionDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFontSelectionDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFontSelectionDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFontSelectionDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFontSelectionDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveFontSelectionDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFontSelectionDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFontSelectionDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFontSelectionDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFontSelectionDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveFontSelectionDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFontSelectionDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveFontSelectionDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFontSelectionDialogMethod "getFontName" o = FontSelectionDialogGetFontNameMethodInfo
    ResolveFontSelectionDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFontSelectionDialogMethod "getFontSelection" o = FontSelectionDialogGetFontSelectionMethodInfo
    ResolveFontSelectionDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFontSelectionDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveFontSelectionDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveFontSelectionDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFontSelectionDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveFontSelectionDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFontSelectionDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFontSelectionDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveFontSelectionDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFontSelectionDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFontSelectionDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveFontSelectionDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveFontSelectionDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveFontSelectionDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveFontSelectionDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFontSelectionDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFontSelectionDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFontSelectionDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFontSelectionDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFontSelectionDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFontSelectionDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFontSelectionDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFontSelectionDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveFontSelectionDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveFontSelectionDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveFontSelectionDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFontSelectionDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFontSelectionDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFontSelectionDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFontSelectionDialogMethod "getOkButton" o = FontSelectionDialogGetOkButtonMethodInfo
    ResolveFontSelectionDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveFontSelectionDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFontSelectionDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFontSelectionDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFontSelectionDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFontSelectionDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFontSelectionDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFontSelectionDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFontSelectionDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFontSelectionDialogMethod "getPreviewText" o = FontSelectionDialogGetPreviewTextMethodInfo
    ResolveFontSelectionDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontSelectionDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontSelectionDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFontSelectionDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFontSelectionDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFontSelectionDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFontSelectionDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveFontSelectionDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveFontSelectionDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFontSelectionDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveFontSelectionDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveFontSelectionDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFontSelectionDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFontSelectionDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveFontSelectionDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFontSelectionDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFontSelectionDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveFontSelectionDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFontSelectionDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveFontSelectionDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveFontSelectionDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFontSelectionDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFontSelectionDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFontSelectionDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFontSelectionDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFontSelectionDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFontSelectionDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveFontSelectionDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveFontSelectionDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFontSelectionDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFontSelectionDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFontSelectionDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFontSelectionDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveFontSelectionDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveFontSelectionDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveFontSelectionDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFontSelectionDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFontSelectionDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFontSelectionDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFontSelectionDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFontSelectionDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFontSelectionDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveFontSelectionDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFontSelectionDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveFontSelectionDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFontSelectionDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveFontSelectionDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFontSelectionDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveFontSelectionDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFontSelectionDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveFontSelectionDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveFontSelectionDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFontSelectionDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFontSelectionDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFontSelectionDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFontSelectionDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFontSelectionDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFontSelectionDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFontSelectionDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontSelectionDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontSelectionDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveFontSelectionDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveFontSelectionDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveFontSelectionDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveFontSelectionDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveFontSelectionDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveFontSelectionDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveFontSelectionDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFontSelectionDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFontSelectionDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFontSelectionDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFontSelectionDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFontSelectionDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveFontSelectionDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFontSelectionDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFontSelectionDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFontSelectionDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFontSelectionDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveFontSelectionDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFontSelectionDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveFontSelectionDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFontSelectionDialogMethod "setFontName" o = FontSelectionDialogSetFontNameMethodInfo
    ResolveFontSelectionDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFontSelectionDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveFontSelectionDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveFontSelectionDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFontSelectionDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveFontSelectionDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFontSelectionDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveFontSelectionDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFontSelectionDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFontSelectionDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFontSelectionDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveFontSelectionDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveFontSelectionDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveFontSelectionDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveFontSelectionDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveFontSelectionDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveFontSelectionDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveFontSelectionDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFontSelectionDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFontSelectionDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFontSelectionDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFontSelectionDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFontSelectionDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFontSelectionDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFontSelectionDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveFontSelectionDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveFontSelectionDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveFontSelectionDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFontSelectionDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFontSelectionDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveFontSelectionDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFontSelectionDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFontSelectionDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveFontSelectionDialogMethod "setPreviewText" o = FontSelectionDialogSetPreviewTextMethodInfo
    ResolveFontSelectionDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontSelectionDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFontSelectionDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFontSelectionDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFontSelectionDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFontSelectionDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveFontSelectionDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFontSelectionDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveFontSelectionDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveFontSelectionDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveFontSelectionDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFontSelectionDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFontSelectionDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveFontSelectionDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveFontSelectionDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveFontSelectionDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFontSelectionDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFontSelectionDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFontSelectionDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFontSelectionDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveFontSelectionDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveFontSelectionDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFontSelectionDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFontSelectionDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFontSelectionDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveFontSelectionDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveFontSelectionDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveFontSelectionDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFontSelectionDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFontSelectionDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFontSelectionDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFontSelectionDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFontSelectionDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFontSelectionDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveFontSelectionDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontSelectionDialogMethod t FontSelectionDialog, O.MethodInfo info FontSelectionDialog p) => OL.IsLabel t (FontSelectionDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontSelectionDialog
type instance O.AttributeList FontSelectionDialog = FontSelectionDialogAttributeList
type FontSelectionDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontSelectionDialog = FontSelectionDialogSignalList
type FontSelectionDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FontSelectionDialog::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the title of the dialog window"
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
--                  Name { namespace = "Gtk" , name = "FontSelectionDialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_dialog_new" gtk_font_selection_dialog_new :: 
    CString ->                              -- title : TBasicType TUTF8
    IO (Ptr FontSelectionDialog)

{-# DEPRECATED fontSelectionDialogNew ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Creates a new t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'.
fontSelectionDialogNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@title@/: the title of the dialog window
    -> m FontSelectionDialog
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
fontSelectionDialogNew title = liftIO $ do
    title' <- textToCString title
    result <- gtk_font_selection_dialog_new title'
    checkUnexpectedReturnNULL "fontSelectionDialogNew" result
    result' <- (newObject FontSelectionDialog) result
    freeMem title'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FontSelectionDialog::get_cancel_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
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

foreign import ccall "gtk_font_selection_dialog_get_cancel_button" gtk_font_selection_dialog_get_cancel_button :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionDialogGetCancelButton ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Gets the “Cancel” button.
-- 
-- /Since: 2.14/
fontSelectionDialogGetCancelButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Widget.Widget' used in the dialog
    --     for the “Cancel” button.
fontSelectionDialogGetCancelButton fsd = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    result <- gtk_font_selection_dialog_get_cancel_button fsd'
    checkUnexpectedReturnNULL "fontSelectionDialogGetCancelButton" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fsd
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogGetCancelButtonMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogGetCancelButtonMethodInfo a signature where
    overloadedMethod = fontSelectionDialogGetCancelButton

#endif

-- method FontSelectionDialog::get_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_dialog_get_font_name" gtk_font_selection_dialog_get_font_name :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    IO CString

{-# DEPRECATED fontSelectionDialogGetFontName ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Gets the currently-selected font name.
-- 
-- Note that this can be a different string than what you set with
-- 'GI.Gtk.Objects.FontSelectionDialog.fontSelectionDialogSetFontName', as the font selection widget
-- may normalize font names and thus return a string with a different
-- structure. For example, “Helvetica Italic Bold 12” could be normalized
-- to “Helvetica Bold Italic 12”.  Use 'GI.Pango.Structs.FontDescription.fontDescriptionEqual'
-- if you want to compare two font descriptions.
fontSelectionDialogGetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> m T.Text
    -- ^ __Returns:__ A string with the name of the current font, or 'P.Nothing' if no
    --     font is selected. You must free this string with 'GI.GLib.Functions.free'.
fontSelectionDialogGetFontName fsd = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    result <- gtk_font_selection_dialog_get_font_name fsd'
    checkUnexpectedReturnNULL "fontSelectionDialogGetFontName" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr fsd
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogGetFontNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogGetFontNameMethodInfo a signature where
    overloadedMethod = fontSelectionDialogGetFontName

#endif

-- method FontSelectionDialog::get_font_selection
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
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

foreign import ccall "gtk_font_selection_dialog_get_font_selection" gtk_font_selection_dialog_get_font_selection :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionDialogGetFontSelection ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Retrieves the t'GI.Gtk.Objects.FontSelection.FontSelection' widget embedded in the dialog.
-- 
-- /Since: 2.22/
fontSelectionDialogGetFontSelection ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the embedded t'GI.Gtk.Objects.FontSelection.FontSelection'
fontSelectionDialogGetFontSelection fsd = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    result <- gtk_font_selection_dialog_get_font_selection fsd'
    checkUnexpectedReturnNULL "fontSelectionDialogGetFontSelection" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fsd
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogGetFontSelectionMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogGetFontSelectionMethodInfo a signature where
    overloadedMethod = fontSelectionDialogGetFontSelection

#endif

-- method FontSelectionDialog::get_ok_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
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

foreign import ccall "gtk_font_selection_dialog_get_ok_button" gtk_font_selection_dialog_get_ok_button :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionDialogGetOkButton ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Gets the “OK” button.
-- 
-- /Since: 2.14/
fontSelectionDialogGetOkButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Widget.Widget' used in the dialog
    --     for the “OK” button.
fontSelectionDialogGetOkButton fsd = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    result <- gtk_font_selection_dialog_get_ok_button fsd'
    checkUnexpectedReturnNULL "fontSelectionDialogGetOkButton" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fsd
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogGetOkButtonMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogGetOkButtonMethodInfo a signature where
    overloadedMethod = fontSelectionDialogGetOkButton

#endif

-- method FontSelectionDialog::get_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_dialog_get_preview_text" gtk_font_selection_dialog_get_preview_text :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    IO CString

{-# DEPRECATED fontSelectionDialogGetPreviewText ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Gets the text displayed in the preview area.
fontSelectionDialogGetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> m T.Text
    -- ^ __Returns:__ the text displayed in the preview area.
    --     This string is owned by the widget and should not be
    --     modified or freed
fontSelectionDialogGetPreviewText fsd = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    result <- gtk_font_selection_dialog_get_preview_text fsd'
    checkUnexpectedReturnNULL "fontSelectionDialogGetPreviewText" result
    result' <- cstringToText result
    touchManagedPtr fsd
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogGetPreviewTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogGetPreviewTextMethodInfo a signature where
    overloadedMethod = fontSelectionDialogGetPreviewText

#endif

-- method FontSelectionDialog::set_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fontname"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a font name like \8220Helvetica 12\8221 or \8220Times Bold 18\8221"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_dialog_set_font_name" gtk_font_selection_dialog_set_font_name :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    CString ->                              -- fontname : TBasicType TUTF8
    IO CInt

{-# DEPRECATED fontSelectionDialogSetFontName ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Sets the currently selected font.
fontSelectionDialogSetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> T.Text
    -- ^ /@fontname@/: a font name like “Helvetica 12” or “Times Bold 18”
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the font selected in /@fsd@/ is now the
    --     /@fontname@/ specified, 'P.False' otherwise.
fontSelectionDialogSetFontName fsd fontname = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    fontname' <- textToCString fontname
    result <- gtk_font_selection_dialog_set_font_name fsd' fontname'
    let result' = (/= 0) result
    touchManagedPtr fsd
    freeMem fontname'
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogSetFontNameMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogSetFontNameMethodInfo a signature where
    overloadedMethod = fontSelectionDialogSetFontName

#endif

-- method FontSelectionDialog::set_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fsd"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "FontSelectionDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelectionDialog"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to display in the preview area"
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

foreign import ccall "gtk_font_selection_dialog_set_preview_text" gtk_font_selection_dialog_set_preview_text :: 
    Ptr FontSelectionDialog ->              -- fsd : TInterface (Name {namespace = "Gtk", name = "FontSelectionDialog"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

{-# DEPRECATED fontSelectionDialogSetPreviewText ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog'"] #-}
-- | Sets the text displayed in the preview area.
fontSelectionDialogSetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelectionDialog a) =>
    a
    -- ^ /@fsd@/: a t'GI.Gtk.Objects.FontSelectionDialog.FontSelectionDialog'
    -> T.Text
    -- ^ /@text@/: the text to display in the preview area
    -> m ()
fontSelectionDialogSetPreviewText fsd text = liftIO $ do
    fsd' <- unsafeManagedPtrCastPtr fsd
    text' <- textToCString text
    gtk_font_selection_dialog_set_preview_text fsd' text'
    touchManagedPtr fsd
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontSelectionDialogSetPreviewTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontSelectionDialog a) => O.MethodInfo FontSelectionDialogSetPreviewTextMethodInfo a signature where
    overloadedMethod = fontSelectionDialogSetPreviewText

#endif

