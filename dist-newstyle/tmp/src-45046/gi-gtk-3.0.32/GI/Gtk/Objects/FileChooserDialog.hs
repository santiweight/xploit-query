{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' is a dialog box suitable for use with
-- “File\/Open” or “File\/Save as” commands.  This widget works by
-- putting a t'GI.Gtk.Objects.FileChooserWidget.FileChooserWidget' inside a t'GI.Gtk.Objects.Dialog.Dialog'.  It exposes
-- the t'GI.Gtk.Interfaces.FileChooser.FileChooser' interface, so you can use all of the
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser' functions on the file chooser dialog as well as
-- those for t'GI.Gtk.Objects.Dialog.Dialog'.
-- 
-- Note that t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' does not have any methods of its
-- own.  Instead, you should use the functions that work on a
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser'.
-- 
-- If you want to integrate well with the platform you should use the
-- t'GI.Gtk.Objects.FileChooserNative.FileChooserNative' API, which will use a platform-specific
-- dialog if available and fall back to GtkFileChooserDialog
-- otherwise.
-- 
-- ## Typical usage ## {@/gtkfilechooser/@-typical-usage}
-- 
-- In the simplest of cases, you can the following code to use
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' to select a file for opening:
-- 
-- >
-- >GtkWidget *dialog;
-- >GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
-- >gint res;
-- >
-- >dialog = gtk_file_chooser_dialog_new ("Open File",
-- >                                      parent_window,
-- >                                      action,
-- >                                      _("_Cancel"),
-- >                                      GTK_RESPONSE_CANCEL,
-- >                                      _("_Open"),
-- >                                      GTK_RESPONSE_ACCEPT,
-- >                                      NULL);
-- >
-- >res = gtk_dialog_run (GTK_DIALOG (dialog));
-- >if (res == GTK_RESPONSE_ACCEPT)
-- >  {
-- >    char *filename;
-- >    GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
-- >    filename = gtk_file_chooser_get_filename (chooser);
-- >    open_file (filename);
-- >    g_free (filename);
-- >  }
-- >
-- >gtk_widget_destroy (dialog);
-- 
-- 
-- To use a dialog for saving, you can use this:
-- 
-- >
-- >GtkWidget *dialog;
-- >GtkFileChooser *chooser;
-- >GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
-- >gint res;
-- >
-- >dialog = gtk_file_chooser_dialog_new ("Save File",
-- >                                      parent_window,
-- >                                      action,
-- >                                      _("_Cancel"),
-- >                                      GTK_RESPONSE_CANCEL,
-- >                                      _("_Save"),
-- >                                      GTK_RESPONSE_ACCEPT,
-- >                                      NULL);
-- >chooser = GTK_FILE_CHOOSER (dialog);
-- >
-- >gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
-- >
-- >if (user_edited_a_new_document)
-- >  gtk_file_chooser_set_current_name (chooser,
-- >                                     _("Untitled document"));
-- >else
-- >  gtk_file_chooser_set_filename (chooser,
-- >                                 existing_filename);
-- >
-- >res = gtk_dialog_run (GTK_DIALOG (dialog));
-- >if (res == GTK_RESPONSE_ACCEPT)
-- >  {
-- >    char *filename;
-- >
-- >    filename = gtk_file_chooser_get_filename (chooser);
-- >    save_to_file (filename);
-- >    g_free (filename);
-- >  }
-- >
-- >gtk_widget_destroy (dialog);
-- 
-- 
-- ## Setting up a file chooser dialog ## {@/gtkfilechooserdialog/@-setting-up}
-- 
-- There are various cases in which you may need to use a t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog':
-- 
-- * To select a file for opening. Use @/GTK_FILE_CHOOSER_ACTION_OPEN/@.
-- * To save a file for the first time. Use @/GTK_FILE_CHOOSER_ACTION_SAVE/@,
-- and suggest a name such as “Untitled” with 'GI.Gtk.Interfaces.FileChooser.fileChooserSetCurrentName'.
-- * To save a file under a different name. Use @/GTK_FILE_CHOOSER_ACTION_SAVE/@,
-- and set the existing filename with 'GI.Gtk.Interfaces.FileChooser.fileChooserSetFilename'.
-- * To choose a folder instead of a file. Use @/GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER/@.
-- 
-- 
-- Note that old versions of the file chooser’s documentation suggested
-- using 'GI.Gtk.Interfaces.FileChooser.fileChooserSetCurrentFolder' in various
-- situations, with the intention of letting the application
-- suggest a reasonable default folder.  This is no longer
-- considered to be a good policy, as now the file chooser is
-- able to make good suggestions on its own.  In general, you
-- should only cause the file chooser to show a specific folder
-- when it is appropriate to use 'GI.Gtk.Interfaces.FileChooser.fileChooserSetFilename',
-- i.e. when you are doing a Save As command and you already
-- have a file saved somewhere.
-- 
-- ## Response Codes ## {@/gtkfilechooserdialog/@-responses}
-- 
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' inherits from t'GI.Gtk.Objects.Dialog.Dialog', so buttons that
-- go in its action area have response codes such as
-- @/GTK_RESPONSE_ACCEPT/@ and @/GTK_RESPONSE_CANCEL/@.  For example, you
-- could call @/gtk_file_chooser_dialog_new()/@ as follows:
-- 
-- >
-- >GtkWidget *dialog;
-- >GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
-- >
-- >dialog = gtk_file_chooser_dialog_new ("Open File",
-- >                                      parent_window,
-- >                                      action,
-- >                                      _("_Cancel"),
-- >                                      GTK_RESPONSE_CANCEL,
-- >                                      _("_Open"),
-- >                                      GTK_RESPONSE_ACCEPT,
-- >                                      NULL);
-- 
-- 
-- This will create buttons for “Cancel” and “Open” that use stock
-- response identifiers from t'GI.Gtk.Enums.ResponseType'.  For most dialog
-- boxes you can use your own custom response codes rather than the
-- ones in t'GI.Gtk.Enums.ResponseType', but t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' assumes that
-- its “accept”-type action, e.g. an “Open” or “Save” button,
-- will have one of the following response codes:
-- 
-- * @/GTK_RESPONSE_ACCEPT/@
-- * @/GTK_RESPONSE_OK/@
-- * @/GTK_RESPONSE_YES/@
-- * @/GTK_RESPONSE_APPLY/@
-- 
-- 
-- This is because t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' must intercept responses
-- and switch to folders if appropriate, rather than letting the
-- dialog terminate — the implementation uses these known
-- response codes to know which responses can be blocked if
-- appropriate.
-- 
-- To summarize, make sure you use a
-- [stock response code][gtkfilechooserdialog-responses]
-- when you use t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' to ensure proper operation.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FileChooserDialog
    ( 

-- * Exported types
    FileChooserDialog(..)                   ,
    IsFileChooserDialog                     ,
    toFileChooserDialog                     ,
    noFileChooserDialog                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileChooserDialogMethod          ,
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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FileChooser as Gtk.FileChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype FileChooserDialog = FileChooserDialog (ManagedPtr FileChooserDialog)
    deriving (Eq)
foreign import ccall "gtk_file_chooser_dialog_get_type"
    c_gtk_file_chooser_dialog_get_type :: IO GType

instance GObject FileChooserDialog where
    gobjectType = c_gtk_file_chooser_dialog_get_type
    

-- | Convert 'FileChooserDialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FileChooserDialog where
    toGValue o = do
        gtype <- c_gtk_file_chooser_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FileChooserDialog)
        B.ManagedPtr.newObject FileChooserDialog ptr
        
    

-- | Type class for types which can be safely cast to `FileChooserDialog`, for instance with `toFileChooserDialog`.
class (GObject o, O.IsDescendantOf FileChooserDialog o) => IsFileChooserDialog o
instance (GObject o, O.IsDescendantOf FileChooserDialog o) => IsFileChooserDialog o

instance O.HasParentTypes FileChooserDialog
type instance O.ParentTypes FileChooserDialog = '[Gtk.Dialog.Dialog, Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.FileChooser.FileChooser]

-- | Cast to `FileChooserDialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileChooserDialog :: (MonadIO m, IsFileChooserDialog o) => o -> m FileChooserDialog
toFileChooserDialog = liftIO . unsafeCastTo FileChooserDialog

-- | A convenience alias for `Nothing` :: `Maybe` `FileChooserDialog`.
noFileChooserDialog :: Maybe FileChooserDialog
noFileChooserDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFileChooserDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileChooserDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFileChooserDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveFileChooserDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveFileChooserDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveFileChooserDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFileChooserDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveFileChooserDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFileChooserDialogMethod "addActionWidget" o = Gtk.Dialog.DialogAddActionWidgetMethodInfo
    ResolveFileChooserDialogMethod "addButton" o = Gtk.Dialog.DialogAddButtonMethodInfo
    ResolveFileChooserDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFileChooserDialogMethod "addChoice" o = Gtk.FileChooser.FileChooserAddChoiceMethodInfo
    ResolveFileChooserDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFileChooserDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFileChooserDialogMethod "addFilter" o = Gtk.FileChooser.FileChooserAddFilterMethodInfo
    ResolveFileChooserDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveFileChooserDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFileChooserDialogMethod "addShortcutFolder" o = Gtk.FileChooser.FileChooserAddShortcutFolderMethodInfo
    ResolveFileChooserDialogMethod "addShortcutFolderUri" o = Gtk.FileChooser.FileChooserAddShortcutFolderUriMethodInfo
    ResolveFileChooserDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFileChooserDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveFileChooserDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveFileChooserDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileChooserDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileChooserDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFileChooserDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFileChooserDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFileChooserDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFileChooserDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFileChooserDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFileChooserDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFileChooserDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFileChooserDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFileChooserDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveFileChooserDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFileChooserDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFileChooserDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFileChooserDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFileChooserDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFileChooserDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFileChooserDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFileChooserDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveFileChooserDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFileChooserDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFileChooserDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFileChooserDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFileChooserDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFileChooserDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFileChooserDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFileChooserDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFileChooserDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFileChooserDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFileChooserDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFileChooserDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFileChooserDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFileChooserDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFileChooserDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFileChooserDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFileChooserDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFileChooserDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFileChooserDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFileChooserDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFileChooserDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFileChooserDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFileChooserDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFileChooserDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFileChooserDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFileChooserDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFileChooserDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileChooserDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFileChooserDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFileChooserDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileChooserDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveFileChooserDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveFileChooserDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileChooserDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFileChooserDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFileChooserDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFileChooserDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFileChooserDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFileChooserDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFileChooserDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFileChooserDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveFileChooserDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFileChooserDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFileChooserDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveFileChooserDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFileChooserDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFileChooserDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFileChooserDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveFileChooserDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFileChooserDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFileChooserDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFileChooserDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFileChooserDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFileChooserDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveFileChooserDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFileChooserDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFileChooserDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFileChooserDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileChooserDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFileChooserDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveFileChooserDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFileChooserDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFileChooserDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFileChooserDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFileChooserDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFileChooserDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFileChooserDialogMethod "listFilters" o = Gtk.FileChooser.FileChooserListFiltersMethodInfo
    ResolveFileChooserDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFileChooserDialogMethod "listShortcutFolderUris" o = Gtk.FileChooser.FileChooserListShortcutFolderUrisMethodInfo
    ResolveFileChooserDialogMethod "listShortcutFolders" o = Gtk.FileChooser.FileChooserListShortcutFoldersMethodInfo
    ResolveFileChooserDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFileChooserDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveFileChooserDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveFileChooserDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFileChooserDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFileChooserDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFileChooserDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFileChooserDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFileChooserDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFileChooserDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFileChooserDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveFileChooserDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileChooserDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileChooserDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFileChooserDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFileChooserDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFileChooserDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFileChooserDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFileChooserDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveFileChooserDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFileChooserDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFileChooserDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveFileChooserDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveFileChooserDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFileChooserDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveFileChooserDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFileChooserDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFileChooserDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFileChooserDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFileChooserDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFileChooserDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFileChooserDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFileChooserDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFileChooserDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileChooserDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileChooserDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFileChooserDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFileChooserDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFileChooserDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveFileChooserDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFileChooserDialogMethod "removeChoice" o = Gtk.FileChooser.FileChooserRemoveChoiceMethodInfo
    ResolveFileChooserDialogMethod "removeFilter" o = Gtk.FileChooser.FileChooserRemoveFilterMethodInfo
    ResolveFileChooserDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveFileChooserDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFileChooserDialogMethod "removeShortcutFolder" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderMethodInfo
    ResolveFileChooserDialogMethod "removeShortcutFolderUri" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderUriMethodInfo
    ResolveFileChooserDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFileChooserDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFileChooserDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFileChooserDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFileChooserDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFileChooserDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFileChooserDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveFileChooserDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveFileChooserDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFileChooserDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveFileChooserDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveFileChooserDialogMethod "response" o = Gtk.Dialog.DialogResponseMethodInfo
    ResolveFileChooserDialogMethod "run" o = Gtk.Dialog.DialogRunMethodInfo
    ResolveFileChooserDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileChooserDialogMethod "selectAll" o = Gtk.FileChooser.FileChooserSelectAllMethodInfo
    ResolveFileChooserDialogMethod "selectFile" o = Gtk.FileChooser.FileChooserSelectFileMethodInfo
    ResolveFileChooserDialogMethod "selectFilename" o = Gtk.FileChooser.FileChooserSelectFilenameMethodInfo
    ResolveFileChooserDialogMethod "selectUri" o = Gtk.FileChooser.FileChooserSelectUriMethodInfo
    ResolveFileChooserDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFileChooserDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFileChooserDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFileChooserDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFileChooserDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFileChooserDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFileChooserDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFileChooserDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFileChooserDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFileChooserDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileChooserDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileChooserDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveFileChooserDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFileChooserDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFileChooserDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFileChooserDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileChooserDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFileChooserDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFileChooserDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveFileChooserDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFileChooserDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveFileChooserDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFileChooserDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFileChooserDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileChooserDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFileChooserDialogMethod "unselectAll" o = Gtk.FileChooser.FileChooserUnselectAllMethodInfo
    ResolveFileChooserDialogMethod "unselectFile" o = Gtk.FileChooser.FileChooserUnselectFileMethodInfo
    ResolveFileChooserDialogMethod "unselectFilename" o = Gtk.FileChooser.FileChooserUnselectFilenameMethodInfo
    ResolveFileChooserDialogMethod "unselectUri" o = Gtk.FileChooser.FileChooserUnselectUriMethodInfo
    ResolveFileChooserDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFileChooserDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFileChooserDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveFileChooserDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileChooserDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveFileChooserDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFileChooserDialogMethod "getAction" o = Gtk.FileChooser.FileChooserGetActionMethodInfo
    ResolveFileChooserDialogMethod "getActionArea" o = Gtk.Dialog.DialogGetActionAreaMethodInfo
    ResolveFileChooserDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFileChooserDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFileChooserDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFileChooserDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFileChooserDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFileChooserDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFileChooserDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFileChooserDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFileChooserDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveFileChooserDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveFileChooserDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFileChooserDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFileChooserDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFileChooserDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveFileChooserDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFileChooserDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFileChooserDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFileChooserDialogMethod "getChoice" o = Gtk.FileChooser.FileChooserGetChoiceMethodInfo
    ResolveFileChooserDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFileChooserDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFileChooserDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFileChooserDialogMethod "getContentArea" o = Gtk.Dialog.DialogGetContentAreaMethodInfo
    ResolveFileChooserDialogMethod "getCreateFolders" o = Gtk.FileChooser.FileChooserGetCreateFoldersMethodInfo
    ResolveFileChooserDialogMethod "getCurrentFolder" o = Gtk.FileChooser.FileChooserGetCurrentFolderMethodInfo
    ResolveFileChooserDialogMethod "getCurrentFolderFile" o = Gtk.FileChooser.FileChooserGetCurrentFolderFileMethodInfo
    ResolveFileChooserDialogMethod "getCurrentFolderUri" o = Gtk.FileChooser.FileChooserGetCurrentFolderUriMethodInfo
    ResolveFileChooserDialogMethod "getCurrentName" o = Gtk.FileChooser.FileChooserGetCurrentNameMethodInfo
    ResolveFileChooserDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileChooserDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveFileChooserDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveFileChooserDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveFileChooserDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveFileChooserDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveFileChooserDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFileChooserDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFileChooserDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFileChooserDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFileChooserDialogMethod "getDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserGetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFileChooserDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFileChooserDialogMethod "getExtraWidget" o = Gtk.FileChooser.FileChooserGetExtraWidgetMethodInfo
    ResolveFileChooserDialogMethod "getFile" o = Gtk.FileChooser.FileChooserGetFileMethodInfo
    ResolveFileChooserDialogMethod "getFilename" o = Gtk.FileChooser.FileChooserGetFilenameMethodInfo
    ResolveFileChooserDialogMethod "getFilenames" o = Gtk.FileChooser.FileChooserGetFilenamesMethodInfo
    ResolveFileChooserDialogMethod "getFiles" o = Gtk.FileChooser.FileChooserGetFilesMethodInfo
    ResolveFileChooserDialogMethod "getFilter" o = Gtk.FileChooser.FileChooserGetFilterMethodInfo
    ResolveFileChooserDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveFileChooserDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFileChooserDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFileChooserDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFileChooserDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFileChooserDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveFileChooserDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFileChooserDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveFileChooserDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFileChooserDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFileChooserDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFileChooserDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveFileChooserDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveFileChooserDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFileChooserDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveFileChooserDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFileChooserDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFileChooserDialogMethod "getHeaderBar" o = Gtk.Dialog.DialogGetHeaderBarMethodInfo
    ResolveFileChooserDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFileChooserDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFileChooserDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveFileChooserDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveFileChooserDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveFileChooserDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveFileChooserDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFileChooserDialogMethod "getLocalOnly" o = Gtk.FileChooser.FileChooserGetLocalOnlyMethodInfo
    ResolveFileChooserDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFileChooserDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFileChooserDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFileChooserDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFileChooserDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFileChooserDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFileChooserDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFileChooserDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveFileChooserDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveFileChooserDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveFileChooserDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFileChooserDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFileChooserDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFileChooserDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFileChooserDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveFileChooserDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFileChooserDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFileChooserDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFileChooserDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFileChooserDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFileChooserDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFileChooserDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveFileChooserDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFileChooserDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFileChooserDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFileChooserDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFileChooserDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFileChooserDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFileChooserDialogMethod "getPreviewFile" o = Gtk.FileChooser.FileChooserGetPreviewFileMethodInfo
    ResolveFileChooserDialogMethod "getPreviewFilename" o = Gtk.FileChooser.FileChooserGetPreviewFilenameMethodInfo
    ResolveFileChooserDialogMethod "getPreviewUri" o = Gtk.FileChooser.FileChooserGetPreviewUriMethodInfo
    ResolveFileChooserDialogMethod "getPreviewWidget" o = Gtk.FileChooser.FileChooserGetPreviewWidgetMethodInfo
    ResolveFileChooserDialogMethod "getPreviewWidgetActive" o = Gtk.FileChooser.FileChooserGetPreviewWidgetActiveMethodInfo
    ResolveFileChooserDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileChooserDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileChooserDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFileChooserDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFileChooserDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFileChooserDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFileChooserDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveFileChooserDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveFileChooserDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFileChooserDialogMethod "getResponseForWidget" o = Gtk.Dialog.DialogGetResponseForWidgetMethodInfo
    ResolveFileChooserDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveFileChooserDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFileChooserDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFileChooserDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveFileChooserDialogMethod "getSelectMultiple" o = Gtk.FileChooser.FileChooserGetSelectMultipleMethodInfo
    ResolveFileChooserDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFileChooserDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFileChooserDialogMethod "getShowHidden" o = Gtk.FileChooser.FileChooserGetShowHiddenMethodInfo
    ResolveFileChooserDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveFileChooserDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFileChooserDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveFileChooserDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveFileChooserDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFileChooserDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFileChooserDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFileChooserDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFileChooserDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFileChooserDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFileChooserDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveFileChooserDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveFileChooserDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFileChooserDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFileChooserDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFileChooserDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFileChooserDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveFileChooserDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveFileChooserDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveFileChooserDialogMethod "getUri" o = Gtk.FileChooser.FileChooserGetUriMethodInfo
    ResolveFileChooserDialogMethod "getUris" o = Gtk.FileChooser.FileChooserGetUrisMethodInfo
    ResolveFileChooserDialogMethod "getUsePreviewLabel" o = Gtk.FileChooser.FileChooserGetUsePreviewLabelMethodInfo
    ResolveFileChooserDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFileChooserDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFileChooserDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFileChooserDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFileChooserDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFileChooserDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFileChooserDialogMethod "getWidgetForResponse" o = Gtk.Dialog.DialogGetWidgetForResponseMethodInfo
    ResolveFileChooserDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFileChooserDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveFileChooserDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFileChooserDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveFileChooserDialogMethod "setAction" o = Gtk.FileChooser.FileChooserSetActionMethodInfo
    ResolveFileChooserDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFileChooserDialogMethod "setAlternativeButtonOrderFromArray" o = Gtk.Dialog.DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveFileChooserDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFileChooserDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveFileChooserDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveFileChooserDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFileChooserDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFileChooserDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFileChooserDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFileChooserDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFileChooserDialogMethod "setChoice" o = Gtk.FileChooser.FileChooserSetChoiceMethodInfo
    ResolveFileChooserDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFileChooserDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFileChooserDialogMethod "setCreateFolders" o = Gtk.FileChooser.FileChooserSetCreateFoldersMethodInfo
    ResolveFileChooserDialogMethod "setCurrentFolder" o = Gtk.FileChooser.FileChooserSetCurrentFolderMethodInfo
    ResolveFileChooserDialogMethod "setCurrentFolderFile" o = Gtk.FileChooser.FileChooserSetCurrentFolderFileMethodInfo
    ResolveFileChooserDialogMethod "setCurrentFolderUri" o = Gtk.FileChooser.FileChooserSetCurrentFolderUriMethodInfo
    ResolveFileChooserDialogMethod "setCurrentName" o = Gtk.FileChooser.FileChooserSetCurrentNameMethodInfo
    ResolveFileChooserDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileChooserDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileChooserDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveFileChooserDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveFileChooserDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveFileChooserDialogMethod "setDefaultResponse" o = Gtk.Dialog.DialogSetDefaultResponseMethodInfo
    ResolveFileChooserDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveFileChooserDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveFileChooserDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveFileChooserDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFileChooserDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFileChooserDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFileChooserDialogMethod "setDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserSetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFileChooserDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFileChooserDialogMethod "setExtraWidget" o = Gtk.FileChooser.FileChooserSetExtraWidgetMethodInfo
    ResolveFileChooserDialogMethod "setFile" o = Gtk.FileChooser.FileChooserSetFileMethodInfo
    ResolveFileChooserDialogMethod "setFilename" o = Gtk.FileChooser.FileChooserSetFilenameMethodInfo
    ResolveFileChooserDialogMethod "setFilter" o = Gtk.FileChooser.FileChooserSetFilterMethodInfo
    ResolveFileChooserDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveFileChooserDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFileChooserDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFileChooserDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFileChooserDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFileChooserDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveFileChooserDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFileChooserDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveFileChooserDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFileChooserDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFileChooserDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveFileChooserDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveFileChooserDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFileChooserDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveFileChooserDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFileChooserDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveFileChooserDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFileChooserDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFileChooserDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFileChooserDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveFileChooserDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveFileChooserDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveFileChooserDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveFileChooserDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveFileChooserDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveFileChooserDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveFileChooserDialogMethod "setLocalOnly" o = Gtk.FileChooser.FileChooserSetLocalOnlyMethodInfo
    ResolveFileChooserDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFileChooserDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFileChooserDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFileChooserDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFileChooserDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFileChooserDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFileChooserDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFileChooserDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveFileChooserDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveFileChooserDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveFileChooserDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFileChooserDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFileChooserDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveFileChooserDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFileChooserDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFileChooserDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveFileChooserDialogMethod "setPreviewWidget" o = Gtk.FileChooser.FileChooserSetPreviewWidgetMethodInfo
    ResolveFileChooserDialogMethod "setPreviewWidgetActive" o = Gtk.FileChooser.FileChooserSetPreviewWidgetActiveMethodInfo
    ResolveFileChooserDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileChooserDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFileChooserDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFileChooserDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFileChooserDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFileChooserDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveFileChooserDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFileChooserDialogMethod "setResponseSensitive" o = Gtk.Dialog.DialogSetResponseSensitiveMethodInfo
    ResolveFileChooserDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveFileChooserDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveFileChooserDialogMethod "setSelectMultiple" o = Gtk.FileChooser.FileChooserSetSelectMultipleMethodInfo
    ResolveFileChooserDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFileChooserDialogMethod "setShowHidden" o = Gtk.FileChooser.FileChooserSetShowHiddenMethodInfo
    ResolveFileChooserDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFileChooserDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveFileChooserDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveFileChooserDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveFileChooserDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFileChooserDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFileChooserDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFileChooserDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFileChooserDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveFileChooserDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveFileChooserDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFileChooserDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFileChooserDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFileChooserDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveFileChooserDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveFileChooserDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveFileChooserDialogMethod "setUri" o = Gtk.FileChooser.FileChooserSetUriMethodInfo
    ResolveFileChooserDialogMethod "setUsePreviewLabel" o = Gtk.FileChooser.FileChooserSetUsePreviewLabelMethodInfo
    ResolveFileChooserDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFileChooserDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFileChooserDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFileChooserDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFileChooserDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFileChooserDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFileChooserDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveFileChooserDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileChooserDialogMethod t FileChooserDialog, O.MethodInfo info FileChooserDialog p) => OL.IsLabel t (FileChooserDialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileChooserDialog
type instance O.AttributeList FileChooserDialog = FileChooserDialogAttributeList
type FileChooserDialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("action", Gtk.FileChooser.FileChooserActionPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("createFolders", Gtk.FileChooser.FileChooserCreateFoldersPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doOverwriteConfirmation", Gtk.FileChooser.FileChooserDoOverwriteConfirmationPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("extraWidget", Gtk.FileChooser.FileChooserExtraWidgetPropertyInfo), '("filter", Gtk.FileChooser.FileChooserFilterPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("localOnly", Gtk.FileChooser.FileChooserLocalOnlyPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewWidget", Gtk.FileChooser.FileChooserPreviewWidgetPropertyInfo), '("previewWidgetActive", Gtk.FileChooser.FileChooserPreviewWidgetActivePropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("selectMultiple", Gtk.FileChooser.FileChooserSelectMultiplePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showHidden", Gtk.FileChooser.FileChooserShowHiddenPropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", Gtk.Dialog.DialogUseHeaderBarPropertyInfo), '("usePreviewLabel", Gtk.FileChooser.FileChooserUsePreviewLabelPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileChooserDialog = FileChooserDialogSignalList
type FileChooserDialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", Gtk.Dialog.DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("confirmOverwrite", Gtk.FileChooser.FileChooserConfirmOverwriteSignalInfo), '("currentFolderChanged", Gtk.FileChooser.FileChooserCurrentFolderChangedSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("fileActivated", Gtk.FileChooser.FileChooserFileActivatedSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", Gtk.Dialog.DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionChanged", Gtk.FileChooser.FileChooserSelectionChangedSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("updatePreview", Gtk.FileChooser.FileChooserUpdatePreviewSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

