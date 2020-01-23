{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.MessageDialog.MessageDialog' presents a dialog with some message text. It’s simply a
-- convenience widget; you could construct the equivalent of t'GI.Gtk.Objects.MessageDialog.MessageDialog'
-- from t'GI.Gtk.Objects.Dialog.Dialog' without too much effort, but t'GI.Gtk.Objects.MessageDialog.MessageDialog' saves typing.
-- 
-- One difference from t'GI.Gtk.Objects.Dialog.Dialog' is that t'GI.Gtk.Objects.MessageDialog.MessageDialog' sets the
-- t'GI.Gtk.Objects.Window.Window':@/skip-taskbar-hint/@ property to 'P.True', so that the dialog is hidden
-- from the taskbar by default.
-- 
-- The easiest way to do a modal message dialog is to use 'GI.Gtk.Objects.Dialog.dialogRun', though
-- you can also pass in the 'GI.Gtk.Flags.DialogFlagsModal' flag, 'GI.Gtk.Objects.Dialog.dialogRun' automatically
-- makes the dialog modal and waits for the user to respond to it. 'GI.Gtk.Objects.Dialog.dialogRun'
-- returns when any dialog button is clicked.
-- 
-- An example for using a modal dialog:
-- 
-- === /C code/
-- >
-- > GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
-- > dialog = gtk_message_dialog_new (parent_window,
-- >                                  flags,
-- >                                  GTK_MESSAGE_ERROR,
-- >                                  GTK_BUTTONS_CLOSE,
-- >                                  "Error reading “%s”: %s",
-- >                                  filename,
-- >                                  g_strerror (errno));
-- > gtk_dialog_run (GTK_DIALOG (dialog));
-- > gtk_widget_destroy (dialog);
-- 
-- 
-- You might do a non-modal t'GI.Gtk.Objects.MessageDialog.MessageDialog' as follows:
-- 
-- An example for a non-modal dialog:
-- 
-- === /C code/
-- >
-- > GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
-- > dialog = gtk_message_dialog_new (parent_window,
-- >                                  flags,
-- >                                  GTK_MESSAGE_ERROR,
-- >                                  GTK_BUTTONS_CLOSE,
-- >                                  "Error reading “%s”: %s",
-- >                                  filename,
-- >                                  g_strerror (errno));
-- >
-- > // Destroy the dialog when the user responds to it
-- > // (e.g. clicks a button)
-- >
-- > g_signal_connect_swapped (dialog, "response",
-- >                           G_CALLBACK (gtk_widget_destroy),
-- >                           dialog);
-- 
-- 
-- = GtkMessageDialog as GtkBuildable
-- 
-- The GtkMessageDialog implementation of the GtkBuildable interface exposes
-- the message area as an internal child with the name “message_area”.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MessageDialog
    ( 

-- * Exported types
    MessageDialog(..)                       ,
    IsMessageDialog                         ,
    toMessageDialog                         ,
    noMessageDialog                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMessageDialogMethod              ,
#endif


-- ** getImage #method:getImage#

#if defined(ENABLE_OVERLOADING)
    MessageDialogGetImageMethodInfo         ,
#endif
    messageDialogGetImage                   ,


-- ** getMessageArea #method:getMessageArea#

#if defined(ENABLE_OVERLOADING)
    MessageDialogGetMessageAreaMethodInfo   ,
#endif
    messageDialogGetMessageArea             ,


-- ** setImage #method:setImage#

#if defined(ENABLE_OVERLOADING)
    MessageDialogSetImageMethodInfo         ,
#endif
    messageDialogSetImage                   ,


-- ** setMarkup #method:setMarkup#

#if defined(ENABLE_OVERLOADING)
    MessageDialogSetMarkupMethodInfo        ,
#endif
    messageDialogSetMarkup                  ,




 -- * Properties
-- ** buttons #attr:buttons#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    MessageDialogButtonsPropertyInfo        ,
#endif
    constructMessageDialogButtons           ,
#if defined(ENABLE_OVERLOADING)
    messageDialogButtons                    ,
#endif


-- ** image #attr:image#
-- | The image for this dialog.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    MessageDialogImagePropertyInfo          ,
#endif
    constructMessageDialogImage             ,
    getMessageDialogImage                   ,
#if defined(ENABLE_OVERLOADING)
    messageDialogImage                      ,
#endif
    setMessageDialogImage                   ,


-- ** messageArea #attr:messageArea#
-- | The t'GI.Gtk.Objects.Box.Box' that corresponds to the message area of this dialog.  See
-- 'GI.Gtk.Objects.MessageDialog.messageDialogGetMessageArea' for a detailed description of this
-- area.
-- 
-- /Since: 2.22/

#if defined(ENABLE_OVERLOADING)
    MessageDialogMessageAreaPropertyInfo    ,
#endif
    getMessageDialogMessageArea             ,
#if defined(ENABLE_OVERLOADING)
    messageDialogMessageArea                ,
#endif


-- ** messageType #attr:messageType#
-- | The type of the message.

#if defined(ENABLE_OVERLOADING)
    MessageDialogMessageTypePropertyInfo    ,
#endif
    constructMessageDialogMessageType       ,
    getMessageDialogMessageType             ,
#if defined(ENABLE_OVERLOADING)
    messageDialogMessageType                ,
#endif
    setMessageDialogMessageType             ,


-- ** secondaryText #attr:secondaryText#
-- | The secondary text of the message dialog.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    MessageDialogSecondaryTextPropertyInfo  ,
#endif
    clearMessageDialogSecondaryText         ,
    constructMessageDialogSecondaryText     ,
    getMessageDialogSecondaryText           ,
#if defined(ENABLE_OVERLOADING)
    messageDialogSecondaryText              ,
#endif
    setMessageDialogSecondaryText           ,


-- ** secondaryUseMarkup #attr:secondaryUseMarkup#
-- | 'P.True' if the secondary text of the dialog includes Pango markup.
-- See 'GI.Pango.Functions.parseMarkup'.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    MessageDialogSecondaryUseMarkupPropertyInfo,
#endif
    constructMessageDialogSecondaryUseMarkup,
    getMessageDialogSecondaryUseMarkup      ,
#if defined(ENABLE_OVERLOADING)
    messageDialogSecondaryUseMarkup         ,
#endif
    setMessageDialogSecondaryUseMarkup      ,


-- ** text #attr:text#
-- | The primary text of the message dialog. If the dialog has
-- a secondary text, this will appear as the title.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    MessageDialogTextPropertyInfo           ,
#endif
    clearMessageDialogText                  ,
    constructMessageDialogText              ,
    getMessageDialogText                    ,
#if defined(ENABLE_OVERLOADING)
    messageDialogText                       ,
#endif
    setMessageDialogText                    ,


-- ** useMarkup #attr:useMarkup#
-- | 'P.True' if the primary text of the dialog includes Pango markup.
-- See 'GI.Pango.Functions.parseMarkup'.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    MessageDialogUseMarkupPropertyInfo      ,
#endif
    constructMessageDialogUseMarkup         ,
    getMessageDialogUseMarkup               ,
#if defined(ENABLE_OVERLOADING)
    messageDialogUseMarkup                  ,
#endif
    setMessageDialogUseMarkup               ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype MessageDialog = MessageDialog (ManagedPtr MessageDialog)
    deriving (Eq)
foreign import ccall "gtk_message_dialog_get_type"
    c_gtk_message_dialog_get_type :: IO GType

instance GObject MessageDialog where
    gobjectType = c_gtk_message_dialog_get_type
    

-- | Convert 'MessageDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MessageDialog where
    toGValue o = do
        gtype <- c_gtk_message_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MessageDialog)
        B.ManagedPtr.newObject MessageDialog ptr
        
    

-- | Type class for types which can be safely cast to `MessageDialog`, for instance with `toMessageDialog`.
class (GObject o, O.IsDescendantOf MessageDialog o) => IsMessageDialog o
instance (GObject o, O.IsDescendantOf MessageDialog o) => IsMessageDialog o

instance O.HasParentTypes MessageDialog
type instance O.ParentTypes MessageDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `MessageDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMessageDialog :: (MonadIO m, IsMessageDialog o) => o -> m MessageDialog
toMessageDialog = liftIO . unsafeCastTo MessageDialog

-- | A convenience alias for `Nothing` :: `Maybe` `MessageDialog`.
noMessageDialog :: Maybe MessageDialog
noMessageDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMessageDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveMessageDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMessageDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveMessageDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveMessageDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveMessageDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveMessageDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveMessageDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMessageDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveMessageDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveMessageDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMessageDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMessageDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMessageDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveMessageDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMessageDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMessageDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveMessageDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveMessageDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMessageDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMessageDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMessageDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveMessageDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMessageDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveMessageDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveMessageDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveMessageDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveMessageDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveMessageDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMessageDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveMessageDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMessageDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMessageDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMessageDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMessageDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMessageDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMessageDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMessageDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveMessageDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMessageDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMessageDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMessageDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMessageDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMessageDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMessageDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMessageDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMessageDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMessageDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMessageDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMessageDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMessageDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMessageDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMessageDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMessageDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMessageDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMessageDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMessageDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMessageDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMessageDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMessageDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMessageDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMessageDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMessageDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMessageDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMessageDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMessageDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMessageDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMessageDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMessageDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMessageDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMessageDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMessageDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMessageDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMessageDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveMessageDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMessageDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveMessageDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMessageDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMessageDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveMessageDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveMessageDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMessageDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMessageDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMessageDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMessageDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMessageDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMessageDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMessageDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMessageDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveMessageDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMessageDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMessageDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveMessageDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMessageDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMessageDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMessageDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveMessageDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMessageDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMessageDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMessageDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMessageDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMessageDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveMessageDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMessageDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMessageDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMessageDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMessageDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMessageDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveMessageDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMessageDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMessageDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMessageDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMessageDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMessageDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMessageDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMessageDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMessageDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveMessageDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveMessageDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMessageDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMessageDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMessageDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMessageDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMessageDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMessageDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMessageDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveMessageDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMessageDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMessageDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMessageDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMessageDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMessageDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMessageDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMessageDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveMessageDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMessageDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMessageDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveMessageDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveMessageDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveMessageDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveMessageDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMessageDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMessageDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMessageDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMessageDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMessageDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMessageDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMessageDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMessageDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMessageDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMessageDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMessageDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMessageDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveMessageDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveMessageDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMessageDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveMessageDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMessageDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMessageDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMessageDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMessageDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMessageDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMessageDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMessageDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveMessageDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveMessageDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveMessageDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveMessageDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveMessageDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveMessageDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveMessageDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMessageDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMessageDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMessageDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMessageDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMessageDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMessageDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMessageDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMessageDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMessageDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMessageDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMessageDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMessageDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveMessageDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMessageDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMessageDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMessageDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMessageDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMessageDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMessageDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveMessageDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMessageDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveMessageDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMessageDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMessageDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMessageDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMessageDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveMessageDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMessageDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveMessageDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMessageDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveMessageDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMessageDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveMessageDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMessageDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMessageDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMessageDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMessageDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMessageDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMessageDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMessageDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMessageDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveMessageDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveMessageDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveMessageDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMessageDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMessageDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveMessageDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMessageDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMessageDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveMessageDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMessageDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMessageDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMessageDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveMessageDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMessageDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveMessageDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveMessageDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveMessageDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveMessageDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveMessageDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMessageDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMessageDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveMessageDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMessageDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMessageDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMessageDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveMessageDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveMessageDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveMessageDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveMessageDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveMessageDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveMessageDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveMessageDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveMessageDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMessageDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMessageDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMessageDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveMessageDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveMessageDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMessageDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveMessageDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMessageDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMessageDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveMessageDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMessageDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMessageDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveMessageDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveMessageDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveMessageDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveMessageDialogMethod "getImage" o = MessageDialogGetImageMethodInfo
    ResolveMessageDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMessageDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMessageDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMessageDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMessageDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMessageDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMessageDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMessageDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMessageDialogMethod "getMessageArea" o = MessageDialogGetMessageAreaMethodInfo
    ResolveMessageDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveMessageDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveMessageDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveMessageDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMessageDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMessageDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMessageDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMessageDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveMessageDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMessageDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMessageDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMessageDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMessageDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveMessageDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMessageDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveMessageDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMessageDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMessageDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMessageDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMessageDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMessageDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMessageDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMessageDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMessageDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMessageDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMessageDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMessageDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMessageDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveMessageDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveMessageDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveMessageDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveMessageDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveMessageDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMessageDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMessageDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveMessageDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMessageDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMessageDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveMessageDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMessageDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveMessageDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveMessageDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMessageDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMessageDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMessageDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMessageDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMessageDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMessageDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveMessageDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveMessageDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMessageDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMessageDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMessageDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMessageDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveMessageDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveMessageDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveMessageDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMessageDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMessageDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMessageDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMessageDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMessageDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMessageDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveMessageDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMessageDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveMessageDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMessageDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveMessageDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMessageDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveMessageDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMessageDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveMessageDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveMessageDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveMessageDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMessageDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMessageDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMessageDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMessageDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMessageDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMessageDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMessageDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMessageDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveMessageDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveMessageDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveMessageDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveMessageDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveMessageDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveMessageDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveMessageDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMessageDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMessageDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveMessageDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMessageDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMessageDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveMessageDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveMessageDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveMessageDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveMessageDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveMessageDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveMessageDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveMessageDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveMessageDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMessageDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMessageDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveMessageDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveMessageDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMessageDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveMessageDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMessageDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveMessageDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMessageDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMessageDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMessageDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveMessageDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveMessageDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveMessageDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveMessageDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveMessageDialogMethod "setImage" o = MessageDialogSetImageMethodInfo
    ResolveMessageDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveMessageDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveMessageDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMessageDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMessageDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMessageDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMessageDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMessageDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMessageDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMessageDialogMethod "setMarkup" o = MessageDialogSetMarkupMethodInfo
    ResolveMessageDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveMessageDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveMessageDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveMessageDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMessageDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMessageDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveMessageDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMessageDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMessageDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveMessageDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMessageDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMessageDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveMessageDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMessageDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMessageDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveMessageDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveMessageDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveMessageDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveMessageDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveMessageDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMessageDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMessageDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveMessageDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveMessageDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveMessageDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMessageDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMessageDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMessageDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMessageDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveMessageDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveMessageDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveMessageDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveMessageDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMessageDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveMessageDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveMessageDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveMessageDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMessageDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMessageDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMessageDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMessageDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMessageDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMessageDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveMessageDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMessageDialogMethod t MessageDialog, O.MethodInfo info MessageDialog p) => OL.IsLabel t (MessageDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "buttons"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ButtonsType"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@buttons@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogButtons :: (IsMessageDialog o) => Gtk.Enums.ButtonsType -> IO (GValueConstruct o)
constructMessageDialogButtons val = B.Properties.constructObjectPropertyEnum "buttons" val

#if defined(ENABLE_OVERLOADING)
data MessageDialogButtonsPropertyInfo
instance AttrInfo MessageDialogButtonsPropertyInfo where
    type AttrAllowedOps MessageDialogButtonsPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint MessageDialogButtonsPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogButtonsPropertyInfo = (~) Gtk.Enums.ButtonsType
    type AttrTransferTypeConstraint MessageDialogButtonsPropertyInfo = (~) Gtk.Enums.ButtonsType
    type AttrTransferType MessageDialogButtonsPropertyInfo = Gtk.Enums.ButtonsType
    type AttrGetType MessageDialogButtonsPropertyInfo = ()
    type AttrLabel MessageDialogButtonsPropertyInfo = "buttons"
    type AttrOrigin MessageDialogButtonsPropertyInfo = MessageDialog
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogButtons
    attrClear = undefined
#endif

-- VVV Prop "image"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #image
-- @
getMessageDialogImage :: (MonadIO m, IsMessageDialog o) => o -> m Gtk.Widget.Widget
getMessageDialogImage obj = liftIO $ checkUnexpectedNothing "getMessageDialogImage" $ B.Properties.getObjectPropertyObject obj "image" Gtk.Widget.Widget

-- | Set the value of the “@image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #image 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogImage :: (MonadIO m, IsMessageDialog o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setMessageDialogImage obj val = liftIO $ B.Properties.setObjectPropertyObject obj "image" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@image@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogImage :: (IsMessageDialog o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructMessageDialogImage val = B.Properties.constructObjectPropertyObject "image" (Just val)

#if defined(ENABLE_OVERLOADING)
data MessageDialogImagePropertyInfo
instance AttrInfo MessageDialogImagePropertyInfo where
    type AttrAllowedOps MessageDialogImagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MessageDialogImagePropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogImagePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint MessageDialogImagePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType MessageDialogImagePropertyInfo = Gtk.Widget.Widget
    type AttrGetType MessageDialogImagePropertyInfo = Gtk.Widget.Widget
    type AttrLabel MessageDialogImagePropertyInfo = "image"
    type AttrOrigin MessageDialogImagePropertyInfo = MessageDialog
    attrGet = getMessageDialogImage
    attrSet = setMessageDialogImage
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructMessageDialogImage
    attrClear = undefined
#endif

-- VVV Prop "message-area"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@message-area@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #messageArea
-- @
getMessageDialogMessageArea :: (MonadIO m, IsMessageDialog o) => o -> m Gtk.Widget.Widget
getMessageDialogMessageArea obj = liftIO $ checkUnexpectedNothing "getMessageDialogMessageArea" $ B.Properties.getObjectPropertyObject obj "message-area" Gtk.Widget.Widget

#if defined(ENABLE_OVERLOADING)
data MessageDialogMessageAreaPropertyInfo
instance AttrInfo MessageDialogMessageAreaPropertyInfo where
    type AttrAllowedOps MessageDialogMessageAreaPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MessageDialogMessageAreaPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogMessageAreaPropertyInfo = (~) ()
    type AttrTransferTypeConstraint MessageDialogMessageAreaPropertyInfo = (~) ()
    type AttrTransferType MessageDialogMessageAreaPropertyInfo = ()
    type AttrGetType MessageDialogMessageAreaPropertyInfo = Gtk.Widget.Widget
    type AttrLabel MessageDialogMessageAreaPropertyInfo = "message-area"
    type AttrOrigin MessageDialogMessageAreaPropertyInfo = MessageDialog
    attrGet = getMessageDialogMessageArea
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "message-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "MessageType"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@message-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #messageType
-- @
getMessageDialogMessageType :: (MonadIO m, IsMessageDialog o) => o -> m Gtk.Enums.MessageType
getMessageDialogMessageType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "message-type"

-- | Set the value of the “@message-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #messageType 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogMessageType :: (MonadIO m, IsMessageDialog o) => o -> Gtk.Enums.MessageType -> m ()
setMessageDialogMessageType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "message-type" val

-- | Construct a `GValueConstruct` with valid value for the “@message-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogMessageType :: (IsMessageDialog o) => Gtk.Enums.MessageType -> IO (GValueConstruct o)
constructMessageDialogMessageType val = B.Properties.constructObjectPropertyEnum "message-type" val

#if defined(ENABLE_OVERLOADING)
data MessageDialogMessageTypePropertyInfo
instance AttrInfo MessageDialogMessageTypePropertyInfo where
    type AttrAllowedOps MessageDialogMessageTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MessageDialogMessageTypePropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogMessageTypePropertyInfo = (~) Gtk.Enums.MessageType
    type AttrTransferTypeConstraint MessageDialogMessageTypePropertyInfo = (~) Gtk.Enums.MessageType
    type AttrTransferType MessageDialogMessageTypePropertyInfo = Gtk.Enums.MessageType
    type AttrGetType MessageDialogMessageTypePropertyInfo = Gtk.Enums.MessageType
    type AttrLabel MessageDialogMessageTypePropertyInfo = "message-type"
    type AttrOrigin MessageDialogMessageTypePropertyInfo = MessageDialog
    attrGet = getMessageDialogMessageType
    attrSet = setMessageDialogMessageType
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogMessageType
    attrClear = undefined
#endif

-- VVV Prop "secondary-text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@secondary-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #secondaryText
-- @
getMessageDialogSecondaryText :: (MonadIO m, IsMessageDialog o) => o -> m (Maybe T.Text)
getMessageDialogSecondaryText obj = liftIO $ B.Properties.getObjectPropertyString obj "secondary-text"

-- | Set the value of the “@secondary-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #secondaryText 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogSecondaryText :: (MonadIO m, IsMessageDialog o) => o -> T.Text -> m ()
setMessageDialogSecondaryText obj val = liftIO $ B.Properties.setObjectPropertyString obj "secondary-text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@secondary-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogSecondaryText :: (IsMessageDialog o) => T.Text -> IO (GValueConstruct o)
constructMessageDialogSecondaryText val = B.Properties.constructObjectPropertyString "secondary-text" (Just val)

-- | Set the value of the “@secondary-text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #secondaryText
-- @
clearMessageDialogSecondaryText :: (MonadIO m, IsMessageDialog o) => o -> m ()
clearMessageDialogSecondaryText obj = liftIO $ B.Properties.setObjectPropertyString obj "secondary-text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data MessageDialogSecondaryTextPropertyInfo
instance AttrInfo MessageDialogSecondaryTextPropertyInfo where
    type AttrAllowedOps MessageDialogSecondaryTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MessageDialogSecondaryTextPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogSecondaryTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint MessageDialogSecondaryTextPropertyInfo = (~) T.Text
    type AttrTransferType MessageDialogSecondaryTextPropertyInfo = T.Text
    type AttrGetType MessageDialogSecondaryTextPropertyInfo = (Maybe T.Text)
    type AttrLabel MessageDialogSecondaryTextPropertyInfo = "secondary-text"
    type AttrOrigin MessageDialogSecondaryTextPropertyInfo = MessageDialog
    attrGet = getMessageDialogSecondaryText
    attrSet = setMessageDialogSecondaryText
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogSecondaryText
    attrClear = clearMessageDialogSecondaryText
#endif

-- VVV Prop "secondary-use-markup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@secondary-use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #secondaryUseMarkup
-- @
getMessageDialogSecondaryUseMarkup :: (MonadIO m, IsMessageDialog o) => o -> m Bool
getMessageDialogSecondaryUseMarkup obj = liftIO $ B.Properties.getObjectPropertyBool obj "secondary-use-markup"

-- | Set the value of the “@secondary-use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #secondaryUseMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogSecondaryUseMarkup :: (MonadIO m, IsMessageDialog o) => o -> Bool -> m ()
setMessageDialogSecondaryUseMarkup obj val = liftIO $ B.Properties.setObjectPropertyBool obj "secondary-use-markup" val

-- | Construct a `GValueConstruct` with valid value for the “@secondary-use-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogSecondaryUseMarkup :: (IsMessageDialog o) => Bool -> IO (GValueConstruct o)
constructMessageDialogSecondaryUseMarkup val = B.Properties.constructObjectPropertyBool "secondary-use-markup" val

#if defined(ENABLE_OVERLOADING)
data MessageDialogSecondaryUseMarkupPropertyInfo
instance AttrInfo MessageDialogSecondaryUseMarkupPropertyInfo where
    type AttrAllowedOps MessageDialogSecondaryUseMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MessageDialogSecondaryUseMarkupPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogSecondaryUseMarkupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint MessageDialogSecondaryUseMarkupPropertyInfo = (~) Bool
    type AttrTransferType MessageDialogSecondaryUseMarkupPropertyInfo = Bool
    type AttrGetType MessageDialogSecondaryUseMarkupPropertyInfo = Bool
    type AttrLabel MessageDialogSecondaryUseMarkupPropertyInfo = "secondary-use-markup"
    type AttrOrigin MessageDialogSecondaryUseMarkupPropertyInfo = MessageDialog
    attrGet = getMessageDialogSecondaryUseMarkup
    attrSet = setMessageDialogSecondaryUseMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogSecondaryUseMarkup
    attrClear = undefined
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #text
-- @
getMessageDialogText :: (MonadIO m, IsMessageDialog o) => o -> m (Maybe T.Text)
getMessageDialogText obj = liftIO $ B.Properties.getObjectPropertyString obj "text"

-- | Set the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #text 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogText :: (MonadIO m, IsMessageDialog o) => o -> T.Text -> m ()
setMessageDialogText obj val = liftIO $ B.Properties.setObjectPropertyString obj "text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogText :: (IsMessageDialog o) => T.Text -> IO (GValueConstruct o)
constructMessageDialogText val = B.Properties.constructObjectPropertyString "text" (Just val)

-- | Set the value of the “@text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #text
-- @
clearMessageDialogText :: (MonadIO m, IsMessageDialog o) => o -> m ()
clearMessageDialogText obj = liftIO $ B.Properties.setObjectPropertyString obj "text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data MessageDialogTextPropertyInfo
instance AttrInfo MessageDialogTextPropertyInfo where
    type AttrAllowedOps MessageDialogTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MessageDialogTextPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint MessageDialogTextPropertyInfo = (~) T.Text
    type AttrTransferType MessageDialogTextPropertyInfo = T.Text
    type AttrGetType MessageDialogTextPropertyInfo = (Maybe T.Text)
    type AttrLabel MessageDialogTextPropertyInfo = "text"
    type AttrOrigin MessageDialogTextPropertyInfo = MessageDialog
    attrGet = getMessageDialogText
    attrSet = setMessageDialogText
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogText
    attrClear = clearMessageDialogText
#endif

-- VVV Prop "use-markup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' messageDialog #useMarkup
-- @
getMessageDialogUseMarkup :: (MonadIO m, IsMessageDialog o) => o -> m Bool
getMessageDialogUseMarkup obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-markup"

-- | Set the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' messageDialog [ #useMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setMessageDialogUseMarkup :: (MonadIO m, IsMessageDialog o) => o -> Bool -> m ()
setMessageDialogUseMarkup obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-markup" val

-- | Construct a `GValueConstruct` with valid value for the “@use-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMessageDialogUseMarkup :: (IsMessageDialog o) => Bool -> IO (GValueConstruct o)
constructMessageDialogUseMarkup val = B.Properties.constructObjectPropertyBool "use-markup" val

#if defined(ENABLE_OVERLOADING)
data MessageDialogUseMarkupPropertyInfo
instance AttrInfo MessageDialogUseMarkupPropertyInfo where
    type AttrAllowedOps MessageDialogUseMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MessageDialogUseMarkupPropertyInfo = IsMessageDialog
    type AttrSetTypeConstraint MessageDialogUseMarkupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint MessageDialogUseMarkupPropertyInfo = (~) Bool
    type AttrTransferType MessageDialogUseMarkupPropertyInfo = Bool
    type AttrGetType MessageDialogUseMarkupPropertyInfo = Bool
    type AttrLabel MessageDialogUseMarkupPropertyInfo = "use-markup"
    type AttrOrigin MessageDialogUseMarkupPropertyInfo = MessageDialog
    attrGet = getMessageDialogUseMarkup
    attrSet = setMessageDialogUseMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructMessageDialogUseMarkup
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MessageDialog
type instance O.AttributeList MessageDialog = MessageDialogAttributeList
type MessageDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("buttons", MessageDialogButtonsPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("image", MessageDialogImagePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("messageArea", MessageDialogMessageAreaPropertyInfo), '("messageType", MessageDialogMessageTypePropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("secondaryText", MessageDialogSecondaryTextPropertyInfo), '("secondaryUseMarkup", MessageDialogSecondaryUseMarkupPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("text", MessageDialogTextPropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("useMarkup", MessageDialogUseMarkupPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
messageDialogButtons :: AttrLabelProxy "buttons"
messageDialogButtons = AttrLabelProxy

messageDialogImage :: AttrLabelProxy "image"
messageDialogImage = AttrLabelProxy

messageDialogMessageArea :: AttrLabelProxy "messageArea"
messageDialogMessageArea = AttrLabelProxy

messageDialogMessageType :: AttrLabelProxy "messageType"
messageDialogMessageType = AttrLabelProxy

messageDialogSecondaryText :: AttrLabelProxy "secondaryText"
messageDialogSecondaryText = AttrLabelProxy

messageDialogSecondaryUseMarkup :: AttrLabelProxy "secondaryUseMarkup"
messageDialogSecondaryUseMarkup = AttrLabelProxy

messageDialogText :: AttrLabelProxy "text"
messageDialogText = AttrLabelProxy

messageDialogUseMarkup :: AttrLabelProxy "useMarkup"
messageDialogUseMarkup = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MessageDialog = MessageDialogSignalList
type MessageDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method MessageDialog::get_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MessageDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMessageDialog"
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

foreign import ccall "gtk_message_dialog_get_image" gtk_message_dialog_get_image :: 
    Ptr MessageDialog ->                    -- dialog : TInterface (Name {namespace = "Gtk", name = "MessageDialog"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED messageDialogGetImage ["(Since version 3.12)","Use t'GI.Gtk.Objects.Dialog.Dialog' for dialogs with images"] #-}
-- | Gets the dialog’s image.
-- 
-- /Since: 2.14/
messageDialogGetImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsMessageDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.MessageDialog.MessageDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the dialog’s image
messageDialogGetImage dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_message_dialog_get_image dialog'
    checkUnexpectedReturnNULL "messageDialogGetImage" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data MessageDialogGetImageMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsMessageDialog a) => O.MethodInfo MessageDialogGetImageMethodInfo a signature where
    overloadedMethod = messageDialogGetImage

#endif

-- method MessageDialog::get_message_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message_dialog"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MessageDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMessageDialog"
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

foreign import ccall "gtk_message_dialog_get_message_area" gtk_message_dialog_get_message_area :: 
    Ptr MessageDialog ->                    -- message_dialog : TInterface (Name {namespace = "Gtk", name = "MessageDialog"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the message area of the dialog. This is the box where the
-- dialog’s primary and secondary labels are packed. You can add your
-- own extra content to that box and it will appear below those labels.
-- See 'GI.Gtk.Objects.Dialog.dialogGetContentArea' for the corresponding
-- function in the parent t'GI.Gtk.Objects.Dialog.Dialog'.
-- 
-- /Since: 2.22/
messageDialogGetMessageArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsMessageDialog a) =>
    a
    -- ^ /@messageDialog@/: a t'GI.Gtk.Objects.MessageDialog.MessageDialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Box.Box' corresponding to the
    --     “message area” in the /@messageDialog@/.
messageDialogGetMessageArea messageDialog = liftIO $ do
    messageDialog' <- unsafeManagedPtrCastPtr messageDialog
    result <- gtk_message_dialog_get_message_area messageDialog'
    checkUnexpectedReturnNULL "messageDialogGetMessageArea" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr messageDialog
    return result'

#if defined(ENABLE_OVERLOADING)
data MessageDialogGetMessageAreaMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsMessageDialog a) => O.MethodInfo MessageDialogGetMessageAreaMethodInfo a signature where
    overloadedMethod = messageDialogGetMessageArea

#endif

-- method MessageDialog::set_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MessageDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMessageDialog"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "image"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the image" , sinceVersion = Nothing }
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

foreign import ccall "gtk_message_dialog_set_image" gtk_message_dialog_set_image :: 
    Ptr MessageDialog ->                    -- dialog : TInterface (Name {namespace = "Gtk", name = "MessageDialog"})
    Ptr Gtk.Widget.Widget ->                -- image : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

{-# DEPRECATED messageDialogSetImage ["(Since version 3.12)","Use t'GI.Gtk.Objects.Dialog.Dialog' to create dialogs with images"] #-}
-- | Sets the dialog’s image to /@image@/.
-- 
-- /Since: 2.10/
messageDialogSetImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsMessageDialog a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.MessageDialog.MessageDialog'
    -> b
    -- ^ /@image@/: the image
    -> m ()
messageDialogSetImage dialog image = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    image' <- unsafeManagedPtrCastPtr image
    gtk_message_dialog_set_image dialog' image'
    touchManagedPtr dialog
    touchManagedPtr image
    return ()

#if defined(ENABLE_OVERLOADING)
data MessageDialogSetImageMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMessageDialog a, Gtk.Widget.IsWidget b) => O.MethodInfo MessageDialogSetImageMethodInfo a signature where
    overloadedMethod = messageDialogSetImage

#endif

-- method MessageDialog::set_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "message_dialog"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MessageDialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMessageDialog"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "str"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "markup string (see [Pango markup format][PangoMarkupFormat])"
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

foreign import ccall "gtk_message_dialog_set_markup" gtk_message_dialog_set_markup :: 
    Ptr MessageDialog ->                    -- message_dialog : TInterface (Name {namespace = "Gtk", name = "MessageDialog"})
    CString ->                              -- str : TBasicType TUTF8
    IO ()

-- | Sets the text of the message dialog to be /@str@/, which is marked
-- up with the [Pango text markup language][PangoMarkupFormat].
-- 
-- /Since: 2.4/
messageDialogSetMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsMessageDialog a) =>
    a
    -- ^ /@messageDialog@/: a t'GI.Gtk.Objects.MessageDialog.MessageDialog'
    -> T.Text
    -- ^ /@str@/: markup string (see [Pango markup format][PangoMarkupFormat])
    -> m ()
messageDialogSetMarkup messageDialog str = liftIO $ do
    messageDialog' <- unsafeManagedPtrCastPtr messageDialog
    str' <- textToCString str
    gtk_message_dialog_set_markup messageDialog' str'
    touchManagedPtr messageDialog
    freeMem str'
    return ()

#if defined(ENABLE_OVERLOADING)
data MessageDialogSetMarkupMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsMessageDialog a) => O.MethodInfo MessageDialogSetMarkupMethodInfo a signature where
    overloadedMethod = messageDialogSetMarkup

#endif

