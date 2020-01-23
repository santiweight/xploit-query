{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.FileChooserNative.FileChooserNative' is an abstraction of a dialog box suitable
-- for use with “File\/Open” or “File\/Save as” commands. By default, this
-- just uses a t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' to implement the actual dialog.
-- However, on certain platforms, such as Windows and macOS, the native platform
-- file chooser is used instead. When the application is running in a
-- sandboxed environment without direct filesystem access (such as Flatpak),
-- t'GI.Gtk.Objects.FileChooserNative.FileChooserNative' may call the proper APIs (portals) to let the user
-- choose a file and make it available to the application.
-- 
-- While the API of t'GI.Gtk.Objects.FileChooserNative.FileChooserNative' closely mirrors t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog', the main
-- difference is that there is no access to any t'GI.Gtk.Objects.Window.Window' or t'GI.Gtk.Objects.Widget.Widget' for the dialog.
-- This is required, as there may not be one in the case of a platform native dialog.
-- Showing, hiding and running the dialog is handled by the t'GI.Gtk.Objects.NativeDialog.NativeDialog' functions.
-- 
-- ## Typical usage ## {@/gtkfilechoosernative/@-typical-usage}
-- 
-- In the simplest of cases, you can the following code to use
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' to select a file for opening:
-- 
-- >
-- >GtkFileChooserNative *native;
-- >GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
-- >gint res;
-- >
-- >native = gtk_file_chooser_native_new ("Open File",
-- >                                      parent_window,
-- >                                      action,
-- >                                      "_Open",
-- >                                      "_Cancel");
-- >
-- >res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
-- >if (res == GTK_RESPONSE_ACCEPT)
-- >  {
-- >    char *filename;
-- >    GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
-- >    filename = gtk_file_chooser_get_filename (chooser);
-- >    open_file (filename);
-- >    g_free (filename);
-- >  }
-- >
-- >g_object_unref (native);
-- 
-- 
-- To use a dialog for saving, you can use this:
-- 
-- >
-- >GtkFileChooserNative *native;
-- >GtkFileChooser *chooser;
-- >GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
-- >gint res;
-- >
-- >native = gtk_file_chooser_native_new ("Save File",
-- >                                      parent_window,
-- >                                      action,
-- >                                      "_Save",
-- >                                      "_Cancel");
-- >chooser = GTK_FILE_CHOOSER (native);
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
-- >res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
-- >if (res == GTK_RESPONSE_ACCEPT)
-- >  {
-- >    char *filename;
-- >
-- >    filename = gtk_file_chooser_get_filename (chooser);
-- >    save_to_file (filename);
-- >    g_free (filename);
-- >  }
-- >
-- >g_object_unref (native);
-- 
-- 
-- For more information on how to best set up a file dialog, see t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog'.
-- 
-- ## Response Codes ## {@/gtkfilechooserdialognative/@-responses}
-- 
-- t'GI.Gtk.Objects.FileChooserNative.FileChooserNative' inherits from t'GI.Gtk.Objects.NativeDialog.NativeDialog', which means it
-- will return @/GTK_RESPONSE_ACCEPT/@ if the user accepted, and
-- @/GTK_RESPONSE_CANCEL/@ if he pressed cancel. It can also return
-- @/GTK_RESPONSE_DELETE_EVENT/@ if the window was unexpectedly closed.
-- 
-- ## Differences from t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' ##  {@/gtkfilechooserdialognative/@-differences}
-- 
-- There are a few things in the GtkFileChooser API that are not
-- possible to use with t'GI.Gtk.Objects.FileChooserNative.FileChooserNative', as such use would
-- prohibit the use of a native dialog.
-- 
-- There is no support for the signals that are emitted when the user
-- navigates in the dialog, including:
-- * [currentFolderChanged]("GI.Gtk.Interfaces.FileChooser#signal:currentFolderChanged")
-- * [selectionChanged]("GI.Gtk.Interfaces.FileChooser#signal:selectionChanged")
-- * [fileActivated]("GI.Gtk.Interfaces.FileChooser#signal:fileActivated")
-- * [confirmOverwrite]("GI.Gtk.Interfaces.FileChooser#signal:confirmOverwrite")
-- 
-- You can also not use the methods that directly control user navigation:
-- * 'GI.Gtk.Interfaces.FileChooser.fileChooserUnselectFilename'
-- * 'GI.Gtk.Interfaces.FileChooser.fileChooserSelectAll'
-- * 'GI.Gtk.Interfaces.FileChooser.fileChooserUnselectAll'
-- 
-- If you need any of the above you will have to use t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' directly.
-- 
-- No operations that change the the dialog work while the dialog is
-- visible. Set all the properties that are required before showing the dialog.
-- 
-- ## Win32 details ## {@/gtkfilechooserdialognative/@-win32}
-- 
-- On windows the IFileDialog implementation (added in Windows Vista) is
-- used. It supports many of the features that t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog'
-- does, but there are some things it does not handle:
-- 
-- * Extra widgets added with 'GI.Gtk.Interfaces.FileChooser.fileChooserSetExtraWidget'.
-- 
-- * Use of custom previews by connecting to [updatePreview]("GI.Gtk.Interfaces.FileChooser#signal:updatePreview").
-- 
-- * Any t'GI.Gtk.Objects.FileFilter.FileFilter' added using a mimetype or custom filter.
-- 
-- If any of these features are used the regular t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog'
-- will be used in place of the native one.
-- 
-- ## Portal details ## {@/gtkfilechooserdialognative/@-portal}
-- 
-- When the org.freedesktop.portal.FileChooser portal is available on the
-- session bus, it is used to bring up an out-of-process file chooser. Depending
-- on the kind of session the application is running in, this may or may not
-- be a GTK+ file chooser. In this situation, the following things are not
-- supported and will be silently ignored:
-- 
-- * Extra widgets added with 'GI.Gtk.Interfaces.FileChooser.fileChooserSetExtraWidget'.
-- 
-- * Use of custom previews by connecting to [updatePreview]("GI.Gtk.Interfaces.FileChooser#signal:updatePreview").
-- 
-- * Any t'GI.Gtk.Objects.FileFilter.FileFilter' added with a custom filter.
-- 
-- ## macOS details ## {@/gtkfilechooserdialognative/@-macos}
-- 
-- On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
-- file chooser dialogs. Some features provided by t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' are
-- not supported:
-- 
-- * Extra widgets added with 'GI.Gtk.Interfaces.FileChooser.fileChooserSetExtraWidget', unless the
--   widget is an instance of GtkLabel, in which case the label text will be used
--   to set the NSSavePanel message instance property.
-- 
-- * Use of custom previews by connecting to [updatePreview]("GI.Gtk.Interfaces.FileChooser#signal:updatePreview").
-- 
-- * Any t'GI.Gtk.Objects.FileFilter.FileFilter' added with a custom filter.
-- 
-- * Shortcut folders.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FileChooserNative
    ( 

-- * Exported types
    FileChooserNative(..)                   ,
    IsFileChooserNative                     ,
    toFileChooserNative                     ,
    noFileChooserNative                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileChooserNativeMethod          ,
#endif


-- ** getAcceptLabel #method:getAcceptLabel#

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeGetAcceptLabelMethodInfo,
#endif
    fileChooserNativeGetAcceptLabel         ,


-- ** getCancelLabel #method:getCancelLabel#

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeGetCancelLabelMethodInfo,
#endif
    fileChooserNativeGetCancelLabel         ,


-- ** new #method:new#

    fileChooserNativeNew                    ,


-- ** setAcceptLabel #method:setAcceptLabel#

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeSetAcceptLabelMethodInfo,
#endif
    fileChooserNativeSetAcceptLabel         ,


-- ** setCancelLabel #method:setCancelLabel#

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeSetCancelLabelMethodInfo,
#endif
    fileChooserNativeSetCancelLabel         ,




 -- * Properties
-- ** acceptLabel #attr:acceptLabel#
-- | The text used for the label on the accept button in the dialog, or
-- 'P.Nothing' to use the default text.

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeAcceptLabelPropertyInfo,
#endif
    clearFileChooserNativeAcceptLabel       ,
    constructFileChooserNativeAcceptLabel   ,
#if defined(ENABLE_OVERLOADING)
    fileChooserNativeAcceptLabel            ,
#endif
    getFileChooserNativeAcceptLabel         ,
    setFileChooserNativeAcceptLabel         ,


-- ** cancelLabel #attr:cancelLabel#
-- | The text used for the label on the cancel button in the dialog, or
-- 'P.Nothing' to use the default text.

#if defined(ENABLE_OVERLOADING)
    FileChooserNativeCancelLabelPropertyInfo,
#endif
    clearFileChooserNativeCancelLabel       ,
    constructFileChooserNativeCancelLabel   ,
#if defined(ENABLE_OVERLOADING)
    fileChooserNativeCancelLabel            ,
#endif
    getFileChooserNativeCancelLabel         ,
    setFileChooserNativeCancelLabel         ,




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

import qualified GI.GObject.Objects.Object as GObject.Object
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FileChooser as Gtk.FileChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.NativeDialog as Gtk.NativeDialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype FileChooserNative = FileChooserNative (ManagedPtr FileChooserNative)
    deriving (Eq)
foreign import ccall "gtk_file_chooser_native_get_type"
    c_gtk_file_chooser_native_get_type :: IO GType

instance GObject FileChooserNative where
    gobjectType = c_gtk_file_chooser_native_get_type
    

-- | Convert 'FileChooserNative' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FileChooserNative where
    toGValue o = do
        gtype <- c_gtk_file_chooser_native_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FileChooserNative)
        B.ManagedPtr.newObject FileChooserNative ptr
        
    

-- | Type class for types which can be safely cast to `FileChooserNative`, for instance with `toFileChooserNative`.
class (GObject o, O.IsDescendantOf FileChooserNative o) => IsFileChooserNative o
instance (GObject o, O.IsDescendantOf FileChooserNative o) => IsFileChooserNative o

instance O.HasParentTypes FileChooserNative
type instance O.ParentTypes FileChooserNative = '[Gtk.NativeDialog.NativeDialog, GObject.Object.Object, Gtk.FileChooser.FileChooser]

-- | Cast to `FileChooserNative`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileChooserNative :: (MonadIO m, IsFileChooserNative o) => o -> m FileChooserNative
toFileChooserNative = liftIO . unsafeCastTo FileChooserNative

-- | A convenience alias for `Nothing` :: `Maybe` `FileChooserNative`.
noFileChooserNative :: Maybe FileChooserNative
noFileChooserNative = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFileChooserNativeMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileChooserNativeMethod "addChoice" o = Gtk.FileChooser.FileChooserAddChoiceMethodInfo
    ResolveFileChooserNativeMethod "addFilter" o = Gtk.FileChooser.FileChooserAddFilterMethodInfo
    ResolveFileChooserNativeMethod "addShortcutFolder" o = Gtk.FileChooser.FileChooserAddShortcutFolderMethodInfo
    ResolveFileChooserNativeMethod "addShortcutFolderUri" o = Gtk.FileChooser.FileChooserAddShortcutFolderUriMethodInfo
    ResolveFileChooserNativeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileChooserNativeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileChooserNativeMethod "destroy" o = Gtk.NativeDialog.NativeDialogDestroyMethodInfo
    ResolveFileChooserNativeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileChooserNativeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileChooserNativeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileChooserNativeMethod "hide" o = Gtk.NativeDialog.NativeDialogHideMethodInfo
    ResolveFileChooserNativeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileChooserNativeMethod "listFilters" o = Gtk.FileChooser.FileChooserListFiltersMethodInfo
    ResolveFileChooserNativeMethod "listShortcutFolderUris" o = Gtk.FileChooser.FileChooserListShortcutFolderUrisMethodInfo
    ResolveFileChooserNativeMethod "listShortcutFolders" o = Gtk.FileChooser.FileChooserListShortcutFoldersMethodInfo
    ResolveFileChooserNativeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileChooserNativeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileChooserNativeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileChooserNativeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileChooserNativeMethod "removeChoice" o = Gtk.FileChooser.FileChooserRemoveChoiceMethodInfo
    ResolveFileChooserNativeMethod "removeFilter" o = Gtk.FileChooser.FileChooserRemoveFilterMethodInfo
    ResolveFileChooserNativeMethod "removeShortcutFolder" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderMethodInfo
    ResolveFileChooserNativeMethod "removeShortcutFolderUri" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderUriMethodInfo
    ResolveFileChooserNativeMethod "run" o = Gtk.NativeDialog.NativeDialogRunMethodInfo
    ResolveFileChooserNativeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileChooserNativeMethod "selectAll" o = Gtk.FileChooser.FileChooserSelectAllMethodInfo
    ResolveFileChooserNativeMethod "selectFile" o = Gtk.FileChooser.FileChooserSelectFileMethodInfo
    ResolveFileChooserNativeMethod "selectFilename" o = Gtk.FileChooser.FileChooserSelectFilenameMethodInfo
    ResolveFileChooserNativeMethod "selectUri" o = Gtk.FileChooser.FileChooserSelectUriMethodInfo
    ResolveFileChooserNativeMethod "show" o = Gtk.NativeDialog.NativeDialogShowMethodInfo
    ResolveFileChooserNativeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileChooserNativeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileChooserNativeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileChooserNativeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileChooserNativeMethod "unselectAll" o = Gtk.FileChooser.FileChooserUnselectAllMethodInfo
    ResolveFileChooserNativeMethod "unselectFile" o = Gtk.FileChooser.FileChooserUnselectFileMethodInfo
    ResolveFileChooserNativeMethod "unselectFilename" o = Gtk.FileChooser.FileChooserUnselectFilenameMethodInfo
    ResolveFileChooserNativeMethod "unselectUri" o = Gtk.FileChooser.FileChooserUnselectUriMethodInfo
    ResolveFileChooserNativeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileChooserNativeMethod "getAcceptLabel" o = FileChooserNativeGetAcceptLabelMethodInfo
    ResolveFileChooserNativeMethod "getAction" o = Gtk.FileChooser.FileChooserGetActionMethodInfo
    ResolveFileChooserNativeMethod "getCancelLabel" o = FileChooserNativeGetCancelLabelMethodInfo
    ResolveFileChooserNativeMethod "getChoice" o = Gtk.FileChooser.FileChooserGetChoiceMethodInfo
    ResolveFileChooserNativeMethod "getCreateFolders" o = Gtk.FileChooser.FileChooserGetCreateFoldersMethodInfo
    ResolveFileChooserNativeMethod "getCurrentFolder" o = Gtk.FileChooser.FileChooserGetCurrentFolderMethodInfo
    ResolveFileChooserNativeMethod "getCurrentFolderFile" o = Gtk.FileChooser.FileChooserGetCurrentFolderFileMethodInfo
    ResolveFileChooserNativeMethod "getCurrentFolderUri" o = Gtk.FileChooser.FileChooserGetCurrentFolderUriMethodInfo
    ResolveFileChooserNativeMethod "getCurrentName" o = Gtk.FileChooser.FileChooserGetCurrentNameMethodInfo
    ResolveFileChooserNativeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileChooserNativeMethod "getDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserGetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserNativeMethod "getExtraWidget" o = Gtk.FileChooser.FileChooserGetExtraWidgetMethodInfo
    ResolveFileChooserNativeMethod "getFile" o = Gtk.FileChooser.FileChooserGetFileMethodInfo
    ResolveFileChooserNativeMethod "getFilename" o = Gtk.FileChooser.FileChooserGetFilenameMethodInfo
    ResolveFileChooserNativeMethod "getFilenames" o = Gtk.FileChooser.FileChooserGetFilenamesMethodInfo
    ResolveFileChooserNativeMethod "getFiles" o = Gtk.FileChooser.FileChooserGetFilesMethodInfo
    ResolveFileChooserNativeMethod "getFilter" o = Gtk.FileChooser.FileChooserGetFilterMethodInfo
    ResolveFileChooserNativeMethod "getLocalOnly" o = Gtk.FileChooser.FileChooserGetLocalOnlyMethodInfo
    ResolveFileChooserNativeMethod "getModal" o = Gtk.NativeDialog.NativeDialogGetModalMethodInfo
    ResolveFileChooserNativeMethod "getPreviewFile" o = Gtk.FileChooser.FileChooserGetPreviewFileMethodInfo
    ResolveFileChooserNativeMethod "getPreviewFilename" o = Gtk.FileChooser.FileChooserGetPreviewFilenameMethodInfo
    ResolveFileChooserNativeMethod "getPreviewUri" o = Gtk.FileChooser.FileChooserGetPreviewUriMethodInfo
    ResolveFileChooserNativeMethod "getPreviewWidget" o = Gtk.FileChooser.FileChooserGetPreviewWidgetMethodInfo
    ResolveFileChooserNativeMethod "getPreviewWidgetActive" o = Gtk.FileChooser.FileChooserGetPreviewWidgetActiveMethodInfo
    ResolveFileChooserNativeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileChooserNativeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileChooserNativeMethod "getSelectMultiple" o = Gtk.FileChooser.FileChooserGetSelectMultipleMethodInfo
    ResolveFileChooserNativeMethod "getShowHidden" o = Gtk.FileChooser.FileChooserGetShowHiddenMethodInfo
    ResolveFileChooserNativeMethod "getTitle" o = Gtk.NativeDialog.NativeDialogGetTitleMethodInfo
    ResolveFileChooserNativeMethod "getTransientFor" o = Gtk.NativeDialog.NativeDialogGetTransientForMethodInfo
    ResolveFileChooserNativeMethod "getUri" o = Gtk.FileChooser.FileChooserGetUriMethodInfo
    ResolveFileChooserNativeMethod "getUris" o = Gtk.FileChooser.FileChooserGetUrisMethodInfo
    ResolveFileChooserNativeMethod "getUsePreviewLabel" o = Gtk.FileChooser.FileChooserGetUsePreviewLabelMethodInfo
    ResolveFileChooserNativeMethod "getVisible" o = Gtk.NativeDialog.NativeDialogGetVisibleMethodInfo
    ResolveFileChooserNativeMethod "setAcceptLabel" o = FileChooserNativeSetAcceptLabelMethodInfo
    ResolveFileChooserNativeMethod "setAction" o = Gtk.FileChooser.FileChooserSetActionMethodInfo
    ResolveFileChooserNativeMethod "setCancelLabel" o = FileChooserNativeSetCancelLabelMethodInfo
    ResolveFileChooserNativeMethod "setChoice" o = Gtk.FileChooser.FileChooserSetChoiceMethodInfo
    ResolveFileChooserNativeMethod "setCreateFolders" o = Gtk.FileChooser.FileChooserSetCreateFoldersMethodInfo
    ResolveFileChooserNativeMethod "setCurrentFolder" o = Gtk.FileChooser.FileChooserSetCurrentFolderMethodInfo
    ResolveFileChooserNativeMethod "setCurrentFolderFile" o = Gtk.FileChooser.FileChooserSetCurrentFolderFileMethodInfo
    ResolveFileChooserNativeMethod "setCurrentFolderUri" o = Gtk.FileChooser.FileChooserSetCurrentFolderUriMethodInfo
    ResolveFileChooserNativeMethod "setCurrentName" o = Gtk.FileChooser.FileChooserSetCurrentNameMethodInfo
    ResolveFileChooserNativeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileChooserNativeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileChooserNativeMethod "setDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserSetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserNativeMethod "setExtraWidget" o = Gtk.FileChooser.FileChooserSetExtraWidgetMethodInfo
    ResolveFileChooserNativeMethod "setFile" o = Gtk.FileChooser.FileChooserSetFileMethodInfo
    ResolveFileChooserNativeMethod "setFilename" o = Gtk.FileChooser.FileChooserSetFilenameMethodInfo
    ResolveFileChooserNativeMethod "setFilter" o = Gtk.FileChooser.FileChooserSetFilterMethodInfo
    ResolveFileChooserNativeMethod "setLocalOnly" o = Gtk.FileChooser.FileChooserSetLocalOnlyMethodInfo
    ResolveFileChooserNativeMethod "setModal" o = Gtk.NativeDialog.NativeDialogSetModalMethodInfo
    ResolveFileChooserNativeMethod "setPreviewWidget" o = Gtk.FileChooser.FileChooserSetPreviewWidgetMethodInfo
    ResolveFileChooserNativeMethod "setPreviewWidgetActive" o = Gtk.FileChooser.FileChooserSetPreviewWidgetActiveMethodInfo
    ResolveFileChooserNativeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileChooserNativeMethod "setSelectMultiple" o = Gtk.FileChooser.FileChooserSetSelectMultipleMethodInfo
    ResolveFileChooserNativeMethod "setShowHidden" o = Gtk.FileChooser.FileChooserSetShowHiddenMethodInfo
    ResolveFileChooserNativeMethod "setTitle" o = Gtk.NativeDialog.NativeDialogSetTitleMethodInfo
    ResolveFileChooserNativeMethod "setTransientFor" o = Gtk.NativeDialog.NativeDialogSetTransientForMethodInfo
    ResolveFileChooserNativeMethod "setUri" o = Gtk.FileChooser.FileChooserSetUriMethodInfo
    ResolveFileChooserNativeMethod "setUsePreviewLabel" o = Gtk.FileChooser.FileChooserSetUsePreviewLabelMethodInfo
    ResolveFileChooserNativeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileChooserNativeMethod t FileChooserNative, O.MethodInfo info FileChooserNative p) => OL.IsLabel t (FileChooserNative -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "accept-label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@accept-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserNative #acceptLabel
-- @
getFileChooserNativeAcceptLabel :: (MonadIO m, IsFileChooserNative o) => o -> m (Maybe T.Text)
getFileChooserNativeAcceptLabel obj = liftIO $ B.Properties.getObjectPropertyString obj "accept-label"

-- | Set the value of the “@accept-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fileChooserNative [ #acceptLabel 'Data.GI.Base.Attributes.:=' value ]
-- @
setFileChooserNativeAcceptLabel :: (MonadIO m, IsFileChooserNative o) => o -> T.Text -> m ()
setFileChooserNativeAcceptLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "accept-label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@accept-label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserNativeAcceptLabel :: (IsFileChooserNative o) => T.Text -> IO (GValueConstruct o)
constructFileChooserNativeAcceptLabel val = B.Properties.constructObjectPropertyString "accept-label" (Just val)

-- | Set the value of the “@accept-label@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #acceptLabel
-- @
clearFileChooserNativeAcceptLabel :: (MonadIO m, IsFileChooserNative o) => o -> m ()
clearFileChooserNativeAcceptLabel obj = liftIO $ B.Properties.setObjectPropertyString obj "accept-label" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeAcceptLabelPropertyInfo
instance AttrInfo FileChooserNativeAcceptLabelPropertyInfo where
    type AttrAllowedOps FileChooserNativeAcceptLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserNativeAcceptLabelPropertyInfo = IsFileChooserNative
    type AttrSetTypeConstraint FileChooserNativeAcceptLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FileChooserNativeAcceptLabelPropertyInfo = (~) T.Text
    type AttrTransferType FileChooserNativeAcceptLabelPropertyInfo = T.Text
    type AttrGetType FileChooserNativeAcceptLabelPropertyInfo = (Maybe T.Text)
    type AttrLabel FileChooserNativeAcceptLabelPropertyInfo = "accept-label"
    type AttrOrigin FileChooserNativeAcceptLabelPropertyInfo = FileChooserNative
    attrGet = getFileChooserNativeAcceptLabel
    attrSet = setFileChooserNativeAcceptLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructFileChooserNativeAcceptLabel
    attrClear = clearFileChooserNativeAcceptLabel
#endif

-- VVV Prop "cancel-label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@cancel-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserNative #cancelLabel
-- @
getFileChooserNativeCancelLabel :: (MonadIO m, IsFileChooserNative o) => o -> m (Maybe T.Text)
getFileChooserNativeCancelLabel obj = liftIO $ B.Properties.getObjectPropertyString obj "cancel-label"

-- | Set the value of the “@cancel-label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fileChooserNative [ #cancelLabel 'Data.GI.Base.Attributes.:=' value ]
-- @
setFileChooserNativeCancelLabel :: (MonadIO m, IsFileChooserNative o) => o -> T.Text -> m ()
setFileChooserNativeCancelLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "cancel-label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@cancel-label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserNativeCancelLabel :: (IsFileChooserNative o) => T.Text -> IO (GValueConstruct o)
constructFileChooserNativeCancelLabel val = B.Properties.constructObjectPropertyString "cancel-label" (Just val)

-- | Set the value of the “@cancel-label@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #cancelLabel
-- @
clearFileChooserNativeCancelLabel :: (MonadIO m, IsFileChooserNative o) => o -> m ()
clearFileChooserNativeCancelLabel obj = liftIO $ B.Properties.setObjectPropertyString obj "cancel-label" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeCancelLabelPropertyInfo
instance AttrInfo FileChooserNativeCancelLabelPropertyInfo where
    type AttrAllowedOps FileChooserNativeCancelLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserNativeCancelLabelPropertyInfo = IsFileChooserNative
    type AttrSetTypeConstraint FileChooserNativeCancelLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FileChooserNativeCancelLabelPropertyInfo = (~) T.Text
    type AttrTransferType FileChooserNativeCancelLabelPropertyInfo = T.Text
    type AttrGetType FileChooserNativeCancelLabelPropertyInfo = (Maybe T.Text)
    type AttrLabel FileChooserNativeCancelLabelPropertyInfo = "cancel-label"
    type AttrOrigin FileChooserNativeCancelLabelPropertyInfo = FileChooserNative
    attrGet = getFileChooserNativeCancelLabel
    attrSet = setFileChooserNativeCancelLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructFileChooserNativeCancelLabel
    attrClear = clearFileChooserNativeCancelLabel
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileChooserNative
type instance O.AttributeList FileChooserNative = FileChooserNativeAttributeList
type FileChooserNativeAttributeList = ('[ '("acceptLabel", FileChooserNativeAcceptLabelPropertyInfo), '("action", Gtk.FileChooser.FileChooserActionPropertyInfo), '("cancelLabel", FileChooserNativeCancelLabelPropertyInfo), '("createFolders", Gtk.FileChooser.FileChooserCreateFoldersPropertyInfo), '("doOverwriteConfirmation", Gtk.FileChooser.FileChooserDoOverwriteConfirmationPropertyInfo), '("extraWidget", Gtk.FileChooser.FileChooserExtraWidgetPropertyInfo), '("filter", Gtk.FileChooser.FileChooserFilterPropertyInfo), '("localOnly", Gtk.FileChooser.FileChooserLocalOnlyPropertyInfo), '("modal", Gtk.NativeDialog.NativeDialogModalPropertyInfo), '("previewWidget", Gtk.FileChooser.FileChooserPreviewWidgetPropertyInfo), '("previewWidgetActive", Gtk.FileChooser.FileChooserPreviewWidgetActivePropertyInfo), '("selectMultiple", Gtk.FileChooser.FileChooserSelectMultiplePropertyInfo), '("showHidden", Gtk.FileChooser.FileChooserShowHiddenPropertyInfo), '("title", Gtk.NativeDialog.NativeDialogTitlePropertyInfo), '("transientFor", Gtk.NativeDialog.NativeDialogTransientForPropertyInfo), '("usePreviewLabel", Gtk.FileChooser.FileChooserUsePreviewLabelPropertyInfo), '("visible", Gtk.NativeDialog.NativeDialogVisiblePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fileChooserNativeAcceptLabel :: AttrLabelProxy "acceptLabel"
fileChooserNativeAcceptLabel = AttrLabelProxy

fileChooserNativeCancelLabel :: AttrLabelProxy "cancelLabel"
fileChooserNativeCancelLabel = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileChooserNative = FileChooserNativeSignalList
type FileChooserNativeSignalList = ('[ '("confirmOverwrite", Gtk.FileChooser.FileChooserConfirmOverwriteSignalInfo), '("currentFolderChanged", Gtk.FileChooser.FileChooserCurrentFolderChangedSignalInfo), '("fileActivated", Gtk.FileChooser.FileChooserFileActivatedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("response", Gtk.NativeDialog.NativeDialogResponseSignalInfo), '("selectionChanged", Gtk.FileChooser.FileChooserSelectionChangedSignalInfo), '("updatePreview", Gtk.FileChooser.FileChooserUpdatePreviewSignalInfo)] :: [(Symbol, *)])

#endif

-- method FileChooserNative::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Title of the native, or %NULL"
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
--                 { rawDocText = Just "Transient parent of the native, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Open or save mode for the dialog"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accept_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "text to go in the accept button, or %NULL for the default"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancel_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "text to go in the cancel button, or %NULL for the default"
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
--                  Name { namespace = "Gtk" , name = "FileChooserNative" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_chooser_native_new" gtk_file_chooser_native_new :: 
    CString ->                              -- title : TBasicType TUTF8
    Ptr Gtk.Window.Window ->                -- parent : TInterface (Name {namespace = "Gtk", name = "Window"})
    CUInt ->                                -- action : TInterface (Name {namespace = "Gtk", name = "FileChooserAction"})
    CString ->                              -- accept_label : TBasicType TUTF8
    CString ->                              -- cancel_label : TBasicType TUTF8
    IO (Ptr FileChooserNative)

-- | Creates a new t'GI.Gtk.Objects.FileChooserNative.FileChooserNative'.
-- 
-- /Since: 3.20/
fileChooserNativeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Window.IsWindow a) =>
    Maybe (T.Text)
    -- ^ /@title@/: Title of the native, or 'P.Nothing'
    -> Maybe (a)
    -- ^ /@parent@/: Transient parent of the native, or 'P.Nothing'
    -> Gtk.Enums.FileChooserAction
    -- ^ /@action@/: Open or save mode for the dialog
    -> Maybe (T.Text)
    -- ^ /@acceptLabel@/: text to go in the accept button, or 'P.Nothing' for the default
    -> Maybe (T.Text)
    -- ^ /@cancelLabel@/: text to go in the cancel button, or 'P.Nothing' for the default
    -> m FileChooserNative
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FileChooserNative.FileChooserNative'
fileChooserNativeNew title parent action acceptLabel cancelLabel = liftIO $ do
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
    let action' = (fromIntegral . fromEnum) action
    maybeAcceptLabel <- case acceptLabel of
        Nothing -> return nullPtr
        Just jAcceptLabel -> do
            jAcceptLabel' <- textToCString jAcceptLabel
            return jAcceptLabel'
    maybeCancelLabel <- case cancelLabel of
        Nothing -> return nullPtr
        Just jCancelLabel -> do
            jCancelLabel' <- textToCString jCancelLabel
            return jCancelLabel'
    result <- gtk_file_chooser_native_new maybeTitle maybeParent action' maybeAcceptLabel maybeCancelLabel
    checkUnexpectedReturnNULL "fileChooserNativeNew" result
    result' <- (wrapObject FileChooserNative) result
    whenJust parent touchManagedPtr
    freeMem maybeTitle
    freeMem maybeAcceptLabel
    freeMem maybeCancelLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FileChooserNative::get_accept_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserNative" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtFileChooserNative"
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

foreign import ccall "gtk_file_chooser_native_get_accept_label" gtk_file_chooser_native_get_accept_label :: 
    Ptr FileChooserNative ->                -- self : TInterface (Name {namespace = "Gtk", name = "FileChooserNative"})
    IO CString

-- | Retrieves the custom label text for the accept button.
-- 
-- /Since: 3.20/
fileChooserNativeGetAcceptLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserNative a) =>
    a
    -- ^ /@self@/: a @/GtFileChooserNative/@
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The custom label, or 'P.Nothing' for the default. This string
    -- is owned by GTK+ and should not be modified or freed
fileChooserNativeGetAcceptLabel self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_file_chooser_native_get_accept_label self'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr self
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeGetAcceptLabelMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFileChooserNative a) => O.MethodInfo FileChooserNativeGetAcceptLabelMethodInfo a signature where
    overloadedMethod = fileChooserNativeGetAcceptLabel

#endif

-- method FileChooserNative::get_cancel_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserNative" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtFileChooserNative"
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

foreign import ccall "gtk_file_chooser_native_get_cancel_label" gtk_file_chooser_native_get_cancel_label :: 
    Ptr FileChooserNative ->                -- self : TInterface (Name {namespace = "Gtk", name = "FileChooserNative"})
    IO CString

-- | Retrieves the custom label text for the cancel button.
-- 
-- /Since: 3.20/
fileChooserNativeGetCancelLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserNative a) =>
    a
    -- ^ /@self@/: a @/GtFileChooserNative/@
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The custom label, or 'P.Nothing' for the default. This string
    -- is owned by GTK+ and should not be modified or freed
fileChooserNativeGetCancelLabel self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_file_chooser_native_get_cancel_label self'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr self
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeGetCancelLabelMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFileChooserNative a) => O.MethodInfo FileChooserNativeGetCancelLabelMethodInfo a signature where
    overloadedMethod = fileChooserNativeGetCancelLabel

#endif

-- method FileChooserNative::set_accept_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserNative" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtFileChooserNative"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accept_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "custom label or %NULL for the default"
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

foreign import ccall "gtk_file_chooser_native_set_accept_label" gtk_file_chooser_native_set_accept_label :: 
    Ptr FileChooserNative ->                -- self : TInterface (Name {namespace = "Gtk", name = "FileChooserNative"})
    CString ->                              -- accept_label : TBasicType TUTF8
    IO ()

-- | Sets the custom label text for the accept button.
-- 
-- If characters in /@label@/ are preceded by an underscore, they are underlined.
-- If you need a literal underscore character in a label, use “__” (two
-- underscores). The first underlined character represents a keyboard
-- accelerator called a mnemonic.
-- Pressing Alt and that key activates the button.
-- 
-- /Since: 3.20/
fileChooserNativeSetAcceptLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserNative a) =>
    a
    -- ^ /@self@/: a @/GtFileChooserNative/@
    -> Maybe (T.Text)
    -- ^ /@acceptLabel@/: custom label or 'P.Nothing' for the default
    -> m ()
fileChooserNativeSetAcceptLabel self acceptLabel = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    maybeAcceptLabel <- case acceptLabel of
        Nothing -> return nullPtr
        Just jAcceptLabel -> do
            jAcceptLabel' <- textToCString jAcceptLabel
            return jAcceptLabel'
    gtk_file_chooser_native_set_accept_label self' maybeAcceptLabel
    touchManagedPtr self
    freeMem maybeAcceptLabel
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeSetAcceptLabelMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsFileChooserNative a) => O.MethodInfo FileChooserNativeSetAcceptLabelMethodInfo a signature where
    overloadedMethod = fileChooserNativeSetAcceptLabel

#endif

-- method FileChooserNative::set_cancel_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserNative" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtFileChooserNative"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cancel_label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "custom label or %NULL for the default"
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

foreign import ccall "gtk_file_chooser_native_set_cancel_label" gtk_file_chooser_native_set_cancel_label :: 
    Ptr FileChooserNative ->                -- self : TInterface (Name {namespace = "Gtk", name = "FileChooserNative"})
    CString ->                              -- cancel_label : TBasicType TUTF8
    IO ()

-- | Sets the custom label text for the cancel button.
-- 
-- If characters in /@label@/ are preceded by an underscore, they are underlined.
-- If you need a literal underscore character in a label, use “__” (two
-- underscores). The first underlined character represents a keyboard
-- accelerator called a mnemonic.
-- Pressing Alt and that key activates the button.
-- 
-- /Since: 3.20/
fileChooserNativeSetCancelLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserNative a) =>
    a
    -- ^ /@self@/: a @/GtFileChooserNative/@
    -> Maybe (T.Text)
    -- ^ /@cancelLabel@/: custom label or 'P.Nothing' for the default
    -> m ()
fileChooserNativeSetCancelLabel self cancelLabel = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    maybeCancelLabel <- case cancelLabel of
        Nothing -> return nullPtr
        Just jCancelLabel -> do
            jCancelLabel' <- textToCString jCancelLabel
            return jCancelLabel'
    gtk_file_chooser_native_set_cancel_label self' maybeCancelLabel
    touchManagedPtr self
    freeMem maybeCancelLabel
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserNativeSetCancelLabelMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsFileChooserNative a) => O.MethodInfo FileChooserNativeSetCancelLabelMethodInfo a signature where
    overloadedMethod = fileChooserNativeSetCancelLabel

#endif

