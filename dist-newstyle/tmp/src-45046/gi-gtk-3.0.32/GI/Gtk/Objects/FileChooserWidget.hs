{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.FileChooserWidget.FileChooserWidget' is a widget for choosing files.
-- It exposes the t'GI.Gtk.Interfaces.FileChooser.FileChooser' interface, and you should
-- use the methods of this interface to interact with the
-- widget.
-- 
-- = CSS nodes
-- 
-- GtkFileChooserWidget has a single CSS node with name filechooser.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FileChooserWidget
    ( 

-- * Exported types
    FileChooserWidget(..)                   ,
    IsFileChooserWidget                     ,
    toFileChooserWidget                     ,
    noFileChooserWidget                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileChooserWidgetMethod          ,
#endif


-- ** new #method:new#

    fileChooserWidgetNew                    ,




 -- * Properties
-- ** searchMode #attr:searchMode#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetSearchModePropertyInfo ,
#endif
    constructFileChooserWidgetSearchMode    ,
#if defined(ENABLE_OVERLOADING)
    fileChooserWidgetSearchMode             ,
#endif
    getFileChooserWidgetSearchMode          ,
    setFileChooserWidgetSearchMode          ,


-- ** subtitle #attr:subtitle#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetSubtitlePropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    fileChooserWidgetSubtitle               ,
#endif
    getFileChooserWidgetSubtitle            ,




 -- * Signals
-- ** desktopFolder #signal:desktopFolder#

    C_FileChooserWidgetDesktopFolderCallback,
    FileChooserWidgetDesktopFolderCallback  ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetDesktopFolderSignalInfo,
#endif
    afterFileChooserWidgetDesktopFolder     ,
    genClosure_FileChooserWidgetDesktopFolder,
    mk_FileChooserWidgetDesktopFolderCallback,
    noFileChooserWidgetDesktopFolderCallback,
    onFileChooserWidgetDesktopFolder        ,
    wrap_FileChooserWidgetDesktopFolderCallback,


-- ** downFolder #signal:downFolder#

    C_FileChooserWidgetDownFolderCallback   ,
    FileChooserWidgetDownFolderCallback     ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetDownFolderSignalInfo   ,
#endif
    afterFileChooserWidgetDownFolder        ,
    genClosure_FileChooserWidgetDownFolder  ,
    mk_FileChooserWidgetDownFolderCallback  ,
    noFileChooserWidgetDownFolderCallback   ,
    onFileChooserWidgetDownFolder           ,
    wrap_FileChooserWidgetDownFolderCallback,


-- ** homeFolder #signal:homeFolder#

    C_FileChooserWidgetHomeFolderCallback   ,
    FileChooserWidgetHomeFolderCallback     ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetHomeFolderSignalInfo   ,
#endif
    afterFileChooserWidgetHomeFolder        ,
    genClosure_FileChooserWidgetHomeFolder  ,
    mk_FileChooserWidgetHomeFolderCallback  ,
    noFileChooserWidgetHomeFolderCallback   ,
    onFileChooserWidgetHomeFolder           ,
    wrap_FileChooserWidgetHomeFolderCallback,


-- ** locationPopup #signal:locationPopup#

    C_FileChooserWidgetLocationPopupCallback,
    FileChooserWidgetLocationPopupCallback  ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetLocationPopupSignalInfo,
#endif
    afterFileChooserWidgetLocationPopup     ,
    genClosure_FileChooserWidgetLocationPopup,
    mk_FileChooserWidgetLocationPopupCallback,
    noFileChooserWidgetLocationPopupCallback,
    onFileChooserWidgetLocationPopup        ,
    wrap_FileChooserWidgetLocationPopupCallback,


-- ** locationPopupOnPaste #signal:locationPopupOnPaste#

    C_FileChooserWidgetLocationPopupOnPasteCallback,
    FileChooserWidgetLocationPopupOnPasteCallback,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetLocationPopupOnPasteSignalInfo,
#endif
    afterFileChooserWidgetLocationPopupOnPaste,
    genClosure_FileChooserWidgetLocationPopupOnPaste,
    mk_FileChooserWidgetLocationPopupOnPasteCallback,
    noFileChooserWidgetLocationPopupOnPasteCallback,
    onFileChooserWidgetLocationPopupOnPaste ,
    wrap_FileChooserWidgetLocationPopupOnPasteCallback,


-- ** locationTogglePopup #signal:locationTogglePopup#

    C_FileChooserWidgetLocationTogglePopupCallback,
    FileChooserWidgetLocationTogglePopupCallback,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetLocationTogglePopupSignalInfo,
#endif
    afterFileChooserWidgetLocationTogglePopup,
    genClosure_FileChooserWidgetLocationTogglePopup,
    mk_FileChooserWidgetLocationTogglePopupCallback,
    noFileChooserWidgetLocationTogglePopupCallback,
    onFileChooserWidgetLocationTogglePopup  ,
    wrap_FileChooserWidgetLocationTogglePopupCallback,


-- ** placesShortcut #signal:placesShortcut#

    C_FileChooserWidgetPlacesShortcutCallback,
    FileChooserWidgetPlacesShortcutCallback ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetPlacesShortcutSignalInfo,
#endif
    afterFileChooserWidgetPlacesShortcut    ,
    genClosure_FileChooserWidgetPlacesShortcut,
    mk_FileChooserWidgetPlacesShortcutCallback,
    noFileChooserWidgetPlacesShortcutCallback,
    onFileChooserWidgetPlacesShortcut       ,
    wrap_FileChooserWidgetPlacesShortcutCallback,


-- ** quickBookmark #signal:quickBookmark#

    C_FileChooserWidgetQuickBookmarkCallback,
    FileChooserWidgetQuickBookmarkCallback  ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetQuickBookmarkSignalInfo,
#endif
    afterFileChooserWidgetQuickBookmark     ,
    genClosure_FileChooserWidgetQuickBookmark,
    mk_FileChooserWidgetQuickBookmarkCallback,
    noFileChooserWidgetQuickBookmarkCallback,
    onFileChooserWidgetQuickBookmark        ,
    wrap_FileChooserWidgetQuickBookmarkCallback,


-- ** recentShortcut #signal:recentShortcut#

    C_FileChooserWidgetRecentShortcutCallback,
    FileChooserWidgetRecentShortcutCallback ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetRecentShortcutSignalInfo,
#endif
    afterFileChooserWidgetRecentShortcut    ,
    genClosure_FileChooserWidgetRecentShortcut,
    mk_FileChooserWidgetRecentShortcutCallback,
    noFileChooserWidgetRecentShortcutCallback,
    onFileChooserWidgetRecentShortcut       ,
    wrap_FileChooserWidgetRecentShortcutCallback,


-- ** searchShortcut #signal:searchShortcut#

    C_FileChooserWidgetSearchShortcutCallback,
    FileChooserWidgetSearchShortcutCallback ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetSearchShortcutSignalInfo,
#endif
    afterFileChooserWidgetSearchShortcut    ,
    genClosure_FileChooserWidgetSearchShortcut,
    mk_FileChooserWidgetSearchShortcutCallback,
    noFileChooserWidgetSearchShortcutCallback,
    onFileChooserWidgetSearchShortcut       ,
    wrap_FileChooserWidgetSearchShortcutCallback,


-- ** showHidden #signal:showHidden#

    C_FileChooserWidgetShowHiddenCallback   ,
    FileChooserWidgetShowHiddenCallback     ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetShowHiddenSignalInfo   ,
#endif
    afterFileChooserWidgetShowHidden        ,
    genClosure_FileChooserWidgetShowHidden  ,
    mk_FileChooserWidgetShowHiddenCallback  ,
    noFileChooserWidgetShowHiddenCallback   ,
    onFileChooserWidgetShowHidden           ,
    wrap_FileChooserWidgetShowHiddenCallback,


-- ** upFolder #signal:upFolder#

    C_FileChooserWidgetUpFolderCallback     ,
    FileChooserWidgetUpFolderCallback       ,
#if defined(ENABLE_OVERLOADING)
    FileChooserWidgetUpFolderSignalInfo     ,
#endif
    afterFileChooserWidgetUpFolder          ,
    genClosure_FileChooserWidgetUpFolder    ,
    mk_FileChooserWidgetUpFolderCallback    ,
    noFileChooserWidgetUpFolderCallback     ,
    onFileChooserWidgetUpFolder             ,
    wrap_FileChooserWidgetUpFolderCallback  ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FileChooser as Gtk.FileChooser
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype FileChooserWidget = FileChooserWidget (ManagedPtr FileChooserWidget)
    deriving (Eq)
foreign import ccall "gtk_file_chooser_widget_get_type"
    c_gtk_file_chooser_widget_get_type :: IO GType

instance GObject FileChooserWidget where
    gobjectType = c_gtk_file_chooser_widget_get_type
    

-- | Convert 'FileChooserWidget' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FileChooserWidget where
    toGValue o = do
        gtype <- c_gtk_file_chooser_widget_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FileChooserWidget)
        B.ManagedPtr.newObject FileChooserWidget ptr
        
    

-- | Type class for types which can be safely cast to `FileChooserWidget`, for instance with `toFileChooserWidget`.
class (GObject o, O.IsDescendantOf FileChooserWidget o) => IsFileChooserWidget o
instance (GObject o, O.IsDescendantOf FileChooserWidget o) => IsFileChooserWidget o

instance O.HasParentTypes FileChooserWidget
type instance O.ParentTypes FileChooserWidget = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.FileChooser.FileChooser, Gtk.Orientable.Orientable]

-- | Cast to `FileChooserWidget`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileChooserWidget :: (MonadIO m, IsFileChooserWidget o) => o -> m FileChooserWidget
toFileChooserWidget = liftIO . unsafeCastTo FileChooserWidget

-- | A convenience alias for `Nothing` :: `Maybe` `FileChooserWidget`.
noFileChooserWidget :: Maybe FileChooserWidget
noFileChooserWidget = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFileChooserWidgetMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileChooserWidgetMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFileChooserWidgetMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFileChooserWidgetMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFileChooserWidgetMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFileChooserWidgetMethod "addChoice" o = Gtk.FileChooser.FileChooserAddChoiceMethodInfo
    ResolveFileChooserWidgetMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFileChooserWidgetMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFileChooserWidgetMethod "addFilter" o = Gtk.FileChooser.FileChooserAddFilterMethodInfo
    ResolveFileChooserWidgetMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFileChooserWidgetMethod "addShortcutFolder" o = Gtk.FileChooser.FileChooserAddShortcutFolderMethodInfo
    ResolveFileChooserWidgetMethod "addShortcutFolderUri" o = Gtk.FileChooser.FileChooserAddShortcutFolderUriMethodInfo
    ResolveFileChooserWidgetMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFileChooserWidgetMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileChooserWidgetMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileChooserWidgetMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFileChooserWidgetMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFileChooserWidgetMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFileChooserWidgetMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFileChooserWidgetMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFileChooserWidgetMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFileChooserWidgetMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFileChooserWidgetMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFileChooserWidgetMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFileChooserWidgetMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFileChooserWidgetMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFileChooserWidgetMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFileChooserWidgetMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFileChooserWidgetMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFileChooserWidgetMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFileChooserWidgetMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFileChooserWidgetMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFileChooserWidgetMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFileChooserWidgetMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFileChooserWidgetMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFileChooserWidgetMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFileChooserWidgetMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFileChooserWidgetMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFileChooserWidgetMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFileChooserWidgetMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFileChooserWidgetMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFileChooserWidgetMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFileChooserWidgetMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFileChooserWidgetMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFileChooserWidgetMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFileChooserWidgetMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFileChooserWidgetMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFileChooserWidgetMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFileChooserWidgetMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFileChooserWidgetMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFileChooserWidgetMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFileChooserWidgetMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFileChooserWidgetMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFileChooserWidgetMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFileChooserWidgetMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileChooserWidgetMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFileChooserWidgetMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFileChooserWidgetMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileChooserWidgetMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileChooserWidgetMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFileChooserWidgetMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFileChooserWidgetMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFileChooserWidgetMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFileChooserWidgetMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFileChooserWidgetMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFileChooserWidgetMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFileChooserWidgetMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFileChooserWidgetMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFileChooserWidgetMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFileChooserWidgetMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFileChooserWidgetMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFileChooserWidgetMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFileChooserWidgetMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFileChooserWidgetMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFileChooserWidgetMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFileChooserWidgetMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFileChooserWidgetMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFileChooserWidgetMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFileChooserWidgetMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFileChooserWidgetMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileChooserWidgetMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFileChooserWidgetMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFileChooserWidgetMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFileChooserWidgetMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFileChooserWidgetMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFileChooserWidgetMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFileChooserWidgetMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFileChooserWidgetMethod "listFilters" o = Gtk.FileChooser.FileChooserListFiltersMethodInfo
    ResolveFileChooserWidgetMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFileChooserWidgetMethod "listShortcutFolderUris" o = Gtk.FileChooser.FileChooserListShortcutFolderUrisMethodInfo
    ResolveFileChooserWidgetMethod "listShortcutFolders" o = Gtk.FileChooser.FileChooserListShortcutFoldersMethodInfo
    ResolveFileChooserWidgetMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFileChooserWidgetMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFileChooserWidgetMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFileChooserWidgetMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFileChooserWidgetMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFileChooserWidgetMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFileChooserWidgetMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFileChooserWidgetMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFileChooserWidgetMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFileChooserWidgetMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileChooserWidgetMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileChooserWidgetMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFileChooserWidgetMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFileChooserWidgetMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFileChooserWidgetMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFileChooserWidgetMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFileChooserWidgetMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveFileChooserWidgetMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveFileChooserWidgetMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFileChooserWidgetMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFileChooserWidgetMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFileChooserWidgetMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveFileChooserWidgetMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFileChooserWidgetMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFileChooserWidgetMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFileChooserWidgetMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFileChooserWidgetMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFileChooserWidgetMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFileChooserWidgetMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFileChooserWidgetMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFileChooserWidgetMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileChooserWidgetMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileChooserWidgetMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFileChooserWidgetMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFileChooserWidgetMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFileChooserWidgetMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFileChooserWidgetMethod "removeChoice" o = Gtk.FileChooser.FileChooserRemoveChoiceMethodInfo
    ResolveFileChooserWidgetMethod "removeFilter" o = Gtk.FileChooser.FileChooserRemoveFilterMethodInfo
    ResolveFileChooserWidgetMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFileChooserWidgetMethod "removeShortcutFolder" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderMethodInfo
    ResolveFileChooserWidgetMethod "removeShortcutFolderUri" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderUriMethodInfo
    ResolveFileChooserWidgetMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFileChooserWidgetMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFileChooserWidgetMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFileChooserWidgetMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveFileChooserWidgetMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFileChooserWidgetMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFileChooserWidgetMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFileChooserWidgetMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFileChooserWidgetMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileChooserWidgetMethod "selectAll" o = Gtk.FileChooser.FileChooserSelectAllMethodInfo
    ResolveFileChooserWidgetMethod "selectFile" o = Gtk.FileChooser.FileChooserSelectFileMethodInfo
    ResolveFileChooserWidgetMethod "selectFilename" o = Gtk.FileChooser.FileChooserSelectFilenameMethodInfo
    ResolveFileChooserWidgetMethod "selectUri" o = Gtk.FileChooser.FileChooserSelectUriMethodInfo
    ResolveFileChooserWidgetMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFileChooserWidgetMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFileChooserWidgetMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFileChooserWidgetMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFileChooserWidgetMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFileChooserWidgetMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFileChooserWidgetMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFileChooserWidgetMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFileChooserWidgetMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFileChooserWidgetMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileChooserWidgetMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileChooserWidgetMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFileChooserWidgetMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFileChooserWidgetMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFileChooserWidgetMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileChooserWidgetMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFileChooserWidgetMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFileChooserWidgetMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFileChooserWidgetMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFileChooserWidgetMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFileChooserWidgetMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileChooserWidgetMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFileChooserWidgetMethod "unselectAll" o = Gtk.FileChooser.FileChooserUnselectAllMethodInfo
    ResolveFileChooserWidgetMethod "unselectFile" o = Gtk.FileChooser.FileChooserUnselectFileMethodInfo
    ResolveFileChooserWidgetMethod "unselectFilename" o = Gtk.FileChooser.FileChooserUnselectFilenameMethodInfo
    ResolveFileChooserWidgetMethod "unselectUri" o = Gtk.FileChooser.FileChooserUnselectUriMethodInfo
    ResolveFileChooserWidgetMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFileChooserWidgetMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFileChooserWidgetMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileChooserWidgetMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFileChooserWidgetMethod "getAction" o = Gtk.FileChooser.FileChooserGetActionMethodInfo
    ResolveFileChooserWidgetMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFileChooserWidgetMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFileChooserWidgetMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFileChooserWidgetMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFileChooserWidgetMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFileChooserWidgetMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFileChooserWidgetMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFileChooserWidgetMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFileChooserWidgetMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveFileChooserWidgetMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFileChooserWidgetMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFileChooserWidgetMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFileChooserWidgetMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveFileChooserWidgetMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFileChooserWidgetMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFileChooserWidgetMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFileChooserWidgetMethod "getChoice" o = Gtk.FileChooser.FileChooserGetChoiceMethodInfo
    ResolveFileChooserWidgetMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFileChooserWidgetMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFileChooserWidgetMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFileChooserWidgetMethod "getCreateFolders" o = Gtk.FileChooser.FileChooserGetCreateFoldersMethodInfo
    ResolveFileChooserWidgetMethod "getCurrentFolder" o = Gtk.FileChooser.FileChooserGetCurrentFolderMethodInfo
    ResolveFileChooserWidgetMethod "getCurrentFolderFile" o = Gtk.FileChooser.FileChooserGetCurrentFolderFileMethodInfo
    ResolveFileChooserWidgetMethod "getCurrentFolderUri" o = Gtk.FileChooser.FileChooserGetCurrentFolderUriMethodInfo
    ResolveFileChooserWidgetMethod "getCurrentName" o = Gtk.FileChooser.FileChooserGetCurrentNameMethodInfo
    ResolveFileChooserWidgetMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileChooserWidgetMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFileChooserWidgetMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFileChooserWidgetMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFileChooserWidgetMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFileChooserWidgetMethod "getDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserGetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserWidgetMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFileChooserWidgetMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFileChooserWidgetMethod "getExtraWidget" o = Gtk.FileChooser.FileChooserGetExtraWidgetMethodInfo
    ResolveFileChooserWidgetMethod "getFile" o = Gtk.FileChooser.FileChooserGetFileMethodInfo
    ResolveFileChooserWidgetMethod "getFilename" o = Gtk.FileChooser.FileChooserGetFilenameMethodInfo
    ResolveFileChooserWidgetMethod "getFilenames" o = Gtk.FileChooser.FileChooserGetFilenamesMethodInfo
    ResolveFileChooserWidgetMethod "getFiles" o = Gtk.FileChooser.FileChooserGetFilesMethodInfo
    ResolveFileChooserWidgetMethod "getFilter" o = Gtk.FileChooser.FileChooserGetFilterMethodInfo
    ResolveFileChooserWidgetMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFileChooserWidgetMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFileChooserWidgetMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFileChooserWidgetMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFileChooserWidgetMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFileChooserWidgetMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFileChooserWidgetMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFileChooserWidgetMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFileChooserWidgetMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFileChooserWidgetMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFileChooserWidgetMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFileChooserWidgetMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFileChooserWidgetMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFileChooserWidgetMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveFileChooserWidgetMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFileChooserWidgetMethod "getLocalOnly" o = Gtk.FileChooser.FileChooserGetLocalOnlyMethodInfo
    ResolveFileChooserWidgetMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFileChooserWidgetMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFileChooserWidgetMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFileChooserWidgetMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFileChooserWidgetMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFileChooserWidgetMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFileChooserWidgetMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFileChooserWidgetMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFileChooserWidgetMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFileChooserWidgetMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFileChooserWidgetMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFileChooserWidgetMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFileChooserWidgetMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveFileChooserWidgetMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFileChooserWidgetMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFileChooserWidgetMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFileChooserWidgetMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFileChooserWidgetMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFileChooserWidgetMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFileChooserWidgetMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFileChooserWidgetMethod "getPreviewFile" o = Gtk.FileChooser.FileChooserGetPreviewFileMethodInfo
    ResolveFileChooserWidgetMethod "getPreviewFilename" o = Gtk.FileChooser.FileChooserGetPreviewFilenameMethodInfo
    ResolveFileChooserWidgetMethod "getPreviewUri" o = Gtk.FileChooser.FileChooserGetPreviewUriMethodInfo
    ResolveFileChooserWidgetMethod "getPreviewWidget" o = Gtk.FileChooser.FileChooserGetPreviewWidgetMethodInfo
    ResolveFileChooserWidgetMethod "getPreviewWidgetActive" o = Gtk.FileChooser.FileChooserGetPreviewWidgetActiveMethodInfo
    ResolveFileChooserWidgetMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileChooserWidgetMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileChooserWidgetMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFileChooserWidgetMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFileChooserWidgetMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFileChooserWidgetMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFileChooserWidgetMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFileChooserWidgetMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFileChooserWidgetMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFileChooserWidgetMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFileChooserWidgetMethod "getSelectMultiple" o = Gtk.FileChooser.FileChooserGetSelectMultipleMethodInfo
    ResolveFileChooserWidgetMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFileChooserWidgetMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFileChooserWidgetMethod "getShowHidden" o = Gtk.FileChooser.FileChooserGetShowHiddenMethodInfo
    ResolveFileChooserWidgetMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFileChooserWidgetMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveFileChooserWidgetMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFileChooserWidgetMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFileChooserWidgetMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFileChooserWidgetMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFileChooserWidgetMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFileChooserWidgetMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFileChooserWidgetMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFileChooserWidgetMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFileChooserWidgetMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFileChooserWidgetMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFileChooserWidgetMethod "getUri" o = Gtk.FileChooser.FileChooserGetUriMethodInfo
    ResolveFileChooserWidgetMethod "getUris" o = Gtk.FileChooser.FileChooserGetUrisMethodInfo
    ResolveFileChooserWidgetMethod "getUsePreviewLabel" o = Gtk.FileChooser.FileChooserGetUsePreviewLabelMethodInfo
    ResolveFileChooserWidgetMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFileChooserWidgetMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFileChooserWidgetMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFileChooserWidgetMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFileChooserWidgetMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFileChooserWidgetMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFileChooserWidgetMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFileChooserWidgetMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFileChooserWidgetMethod "setAction" o = Gtk.FileChooser.FileChooserSetActionMethodInfo
    ResolveFileChooserWidgetMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFileChooserWidgetMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFileChooserWidgetMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveFileChooserWidgetMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFileChooserWidgetMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFileChooserWidgetMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFileChooserWidgetMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFileChooserWidgetMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveFileChooserWidgetMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveFileChooserWidgetMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFileChooserWidgetMethod "setChoice" o = Gtk.FileChooser.FileChooserSetChoiceMethodInfo
    ResolveFileChooserWidgetMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFileChooserWidgetMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFileChooserWidgetMethod "setCreateFolders" o = Gtk.FileChooser.FileChooserSetCreateFoldersMethodInfo
    ResolveFileChooserWidgetMethod "setCurrentFolder" o = Gtk.FileChooser.FileChooserSetCurrentFolderMethodInfo
    ResolveFileChooserWidgetMethod "setCurrentFolderFile" o = Gtk.FileChooser.FileChooserSetCurrentFolderFileMethodInfo
    ResolveFileChooserWidgetMethod "setCurrentFolderUri" o = Gtk.FileChooser.FileChooserSetCurrentFolderUriMethodInfo
    ResolveFileChooserWidgetMethod "setCurrentName" o = Gtk.FileChooser.FileChooserSetCurrentNameMethodInfo
    ResolveFileChooserWidgetMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileChooserWidgetMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileChooserWidgetMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFileChooserWidgetMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFileChooserWidgetMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFileChooserWidgetMethod "setDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserSetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserWidgetMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFileChooserWidgetMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFileChooserWidgetMethod "setExtraWidget" o = Gtk.FileChooser.FileChooserSetExtraWidgetMethodInfo
    ResolveFileChooserWidgetMethod "setFile" o = Gtk.FileChooser.FileChooserSetFileMethodInfo
    ResolveFileChooserWidgetMethod "setFilename" o = Gtk.FileChooser.FileChooserSetFilenameMethodInfo
    ResolveFileChooserWidgetMethod "setFilter" o = Gtk.FileChooser.FileChooserSetFilterMethodInfo
    ResolveFileChooserWidgetMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFileChooserWidgetMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFileChooserWidgetMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFileChooserWidgetMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFileChooserWidgetMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFileChooserWidgetMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFileChooserWidgetMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFileChooserWidgetMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFileChooserWidgetMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFileChooserWidgetMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFileChooserWidgetMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFileChooserWidgetMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFileChooserWidgetMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveFileChooserWidgetMethod "setLocalOnly" o = Gtk.FileChooser.FileChooserSetLocalOnlyMethodInfo
    ResolveFileChooserWidgetMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFileChooserWidgetMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFileChooserWidgetMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFileChooserWidgetMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFileChooserWidgetMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFileChooserWidgetMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFileChooserWidgetMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFileChooserWidgetMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFileChooserWidgetMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFileChooserWidgetMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFileChooserWidgetMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveFileChooserWidgetMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFileChooserWidgetMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFileChooserWidgetMethod "setPreviewWidget" o = Gtk.FileChooser.FileChooserSetPreviewWidgetMethodInfo
    ResolveFileChooserWidgetMethod "setPreviewWidgetActive" o = Gtk.FileChooser.FileChooserSetPreviewWidgetActiveMethodInfo
    ResolveFileChooserWidgetMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileChooserWidgetMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFileChooserWidgetMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFileChooserWidgetMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFileChooserWidgetMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFileChooserWidgetMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFileChooserWidgetMethod "setSelectMultiple" o = Gtk.FileChooser.FileChooserSetSelectMultipleMethodInfo
    ResolveFileChooserWidgetMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFileChooserWidgetMethod "setShowHidden" o = Gtk.FileChooser.FileChooserSetShowHiddenMethodInfo
    ResolveFileChooserWidgetMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFileChooserWidgetMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveFileChooserWidgetMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFileChooserWidgetMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFileChooserWidgetMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFileChooserWidgetMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFileChooserWidgetMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFileChooserWidgetMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFileChooserWidgetMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFileChooserWidgetMethod "setUri" o = Gtk.FileChooser.FileChooserSetUriMethodInfo
    ResolveFileChooserWidgetMethod "setUsePreviewLabel" o = Gtk.FileChooser.FileChooserSetUsePreviewLabelMethodInfo
    ResolveFileChooserWidgetMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFileChooserWidgetMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFileChooserWidgetMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFileChooserWidgetMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFileChooserWidgetMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFileChooserWidgetMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFileChooserWidgetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileChooserWidgetMethod t FileChooserWidget, O.MethodInfo info FileChooserWidget p) => OL.IsLabel t (FileChooserWidget -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal FileChooserWidget::desktop-folder
-- | The [desktopFolder](#signal:desktopFolder) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show the user\'s Desktop
-- folder in the file list.
-- 
-- The default binding for this signal is @Alt + D@.
type FileChooserWidgetDesktopFolderCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetDesktopFolderCallback`@.
noFileChooserWidgetDesktopFolderCallback :: Maybe FileChooserWidgetDesktopFolderCallback
noFileChooserWidgetDesktopFolderCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetDesktopFolderCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetDesktopFolderCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetDesktopFolderCallback :: C_FileChooserWidgetDesktopFolderCallback -> IO (FunPtr C_FileChooserWidgetDesktopFolderCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetDesktopFolder :: MonadIO m => FileChooserWidgetDesktopFolderCallback -> m (GClosure C_FileChooserWidgetDesktopFolderCallback)
genClosure_FileChooserWidgetDesktopFolder cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDesktopFolderCallback cb
    mk_FileChooserWidgetDesktopFolderCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetDesktopFolderCallback` into a `C_FileChooserWidgetDesktopFolderCallback`.
wrap_FileChooserWidgetDesktopFolderCallback ::
    FileChooserWidgetDesktopFolderCallback ->
    C_FileChooserWidgetDesktopFolderCallback
wrap_FileChooserWidgetDesktopFolderCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [desktopFolder](#signal:desktopFolder) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #desktopFolder callback
-- @
-- 
-- 
onFileChooserWidgetDesktopFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetDesktopFolderCallback -> m SignalHandlerId
onFileChooserWidgetDesktopFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDesktopFolderCallback cb
    cb'' <- mk_FileChooserWidgetDesktopFolderCallback cb'
    connectSignalFunPtr obj "desktop-folder" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [desktopFolder](#signal:desktopFolder) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #desktopFolder callback
-- @
-- 
-- 
afterFileChooserWidgetDesktopFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetDesktopFolderCallback -> m SignalHandlerId
afterFileChooserWidgetDesktopFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDesktopFolderCallback cb
    cb'' <- mk_FileChooserWidgetDesktopFolderCallback cb'
    connectSignalFunPtr obj "desktop-folder" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetDesktopFolderSignalInfo
instance SignalInfo FileChooserWidgetDesktopFolderSignalInfo where
    type HaskellCallbackType FileChooserWidgetDesktopFolderSignalInfo = FileChooserWidgetDesktopFolderCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetDesktopFolderCallback cb
        cb'' <- mk_FileChooserWidgetDesktopFolderCallback cb'
        connectSignalFunPtr obj "desktop-folder" cb'' connectMode detail

#endif

-- signal FileChooserWidget::down-folder
-- | The [downFolder](#signal:downFolder) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser go to a child of the current folder
-- in the file hierarchy. The subfolder that will be used is displayed in the
-- path bar widget of the file chooser. For example, if the path bar is showing
-- \"\/foo\/bar\/baz\", with bar currently displayed, then this will cause the file
-- chooser to switch to the \"baz\" subfolder.
-- 
-- The default binding for this signal is @Alt + Down@.
type FileChooserWidgetDownFolderCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetDownFolderCallback`@.
noFileChooserWidgetDownFolderCallback :: Maybe FileChooserWidgetDownFolderCallback
noFileChooserWidgetDownFolderCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetDownFolderCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetDownFolderCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetDownFolderCallback :: C_FileChooserWidgetDownFolderCallback -> IO (FunPtr C_FileChooserWidgetDownFolderCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetDownFolder :: MonadIO m => FileChooserWidgetDownFolderCallback -> m (GClosure C_FileChooserWidgetDownFolderCallback)
genClosure_FileChooserWidgetDownFolder cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDownFolderCallback cb
    mk_FileChooserWidgetDownFolderCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetDownFolderCallback` into a `C_FileChooserWidgetDownFolderCallback`.
wrap_FileChooserWidgetDownFolderCallback ::
    FileChooserWidgetDownFolderCallback ->
    C_FileChooserWidgetDownFolderCallback
wrap_FileChooserWidgetDownFolderCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [downFolder](#signal:downFolder) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #downFolder callback
-- @
-- 
-- 
onFileChooserWidgetDownFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetDownFolderCallback -> m SignalHandlerId
onFileChooserWidgetDownFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDownFolderCallback cb
    cb'' <- mk_FileChooserWidgetDownFolderCallback cb'
    connectSignalFunPtr obj "down-folder" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [downFolder](#signal:downFolder) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #downFolder callback
-- @
-- 
-- 
afterFileChooserWidgetDownFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetDownFolderCallback -> m SignalHandlerId
afterFileChooserWidgetDownFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetDownFolderCallback cb
    cb'' <- mk_FileChooserWidgetDownFolderCallback cb'
    connectSignalFunPtr obj "down-folder" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetDownFolderSignalInfo
instance SignalInfo FileChooserWidgetDownFolderSignalInfo where
    type HaskellCallbackType FileChooserWidgetDownFolderSignalInfo = FileChooserWidgetDownFolderCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetDownFolderCallback cb
        cb'' <- mk_FileChooserWidgetDownFolderCallback cb'
        connectSignalFunPtr obj "down-folder" cb'' connectMode detail

#endif

-- signal FileChooserWidget::home-folder
-- | The [homeFolder](#signal:homeFolder) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show the user\'s home
-- folder in the file list.
-- 
-- The default binding for this signal is @Alt + Home@.
type FileChooserWidgetHomeFolderCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetHomeFolderCallback`@.
noFileChooserWidgetHomeFolderCallback :: Maybe FileChooserWidgetHomeFolderCallback
noFileChooserWidgetHomeFolderCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetHomeFolderCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetHomeFolderCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetHomeFolderCallback :: C_FileChooserWidgetHomeFolderCallback -> IO (FunPtr C_FileChooserWidgetHomeFolderCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetHomeFolder :: MonadIO m => FileChooserWidgetHomeFolderCallback -> m (GClosure C_FileChooserWidgetHomeFolderCallback)
genClosure_FileChooserWidgetHomeFolder cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetHomeFolderCallback cb
    mk_FileChooserWidgetHomeFolderCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetHomeFolderCallback` into a `C_FileChooserWidgetHomeFolderCallback`.
wrap_FileChooserWidgetHomeFolderCallback ::
    FileChooserWidgetHomeFolderCallback ->
    C_FileChooserWidgetHomeFolderCallback
wrap_FileChooserWidgetHomeFolderCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [homeFolder](#signal:homeFolder) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #homeFolder callback
-- @
-- 
-- 
onFileChooserWidgetHomeFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetHomeFolderCallback -> m SignalHandlerId
onFileChooserWidgetHomeFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetHomeFolderCallback cb
    cb'' <- mk_FileChooserWidgetHomeFolderCallback cb'
    connectSignalFunPtr obj "home-folder" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [homeFolder](#signal:homeFolder) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #homeFolder callback
-- @
-- 
-- 
afterFileChooserWidgetHomeFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetHomeFolderCallback -> m SignalHandlerId
afterFileChooserWidgetHomeFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetHomeFolderCallback cb
    cb'' <- mk_FileChooserWidgetHomeFolderCallback cb'
    connectSignalFunPtr obj "home-folder" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetHomeFolderSignalInfo
instance SignalInfo FileChooserWidgetHomeFolderSignalInfo where
    type HaskellCallbackType FileChooserWidgetHomeFolderSignalInfo = FileChooserWidgetHomeFolderCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetHomeFolderCallback cb
        cb'' <- mk_FileChooserWidgetHomeFolderCallback cb'
        connectSignalFunPtr obj "home-folder" cb'' connectMode detail

#endif

-- signal FileChooserWidget::location-popup
-- | The [locationPopup](#signal:locationPopup) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show a \"Location\" prompt which
-- the user can use to manually type the name of the file he wishes to select.
-- 
-- The default bindings for this signal are @Control + L@ with a /@path@/ string
-- of \"\" (the empty string).  It is also bound to @\/@ with a /@path@/ string of
-- \"@\/@\" (a slash):  this lets you type @\/@ and immediately type a path name.
-- On Unix systems, this is bound to @~@ (tilde) with a /@path@/ string of \"~\"
-- itself for access to home directories.
type FileChooserWidgetLocationPopupCallback =
    T.Text
    -- ^ /@path@/: a string that gets put in the text entry for the file name
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetLocationPopupCallback`@.
noFileChooserWidgetLocationPopupCallback :: Maybe FileChooserWidgetLocationPopupCallback
noFileChooserWidgetLocationPopupCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetLocationPopupCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetLocationPopupCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetLocationPopupCallback :: C_FileChooserWidgetLocationPopupCallback -> IO (FunPtr C_FileChooserWidgetLocationPopupCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetLocationPopup :: MonadIO m => FileChooserWidgetLocationPopupCallback -> m (GClosure C_FileChooserWidgetLocationPopupCallback)
genClosure_FileChooserWidgetLocationPopup cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupCallback cb
    mk_FileChooserWidgetLocationPopupCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetLocationPopupCallback` into a `C_FileChooserWidgetLocationPopupCallback`.
wrap_FileChooserWidgetLocationPopupCallback ::
    FileChooserWidgetLocationPopupCallback ->
    C_FileChooserWidgetLocationPopupCallback
wrap_FileChooserWidgetLocationPopupCallback _cb _ path _ = do
    path' <- cstringToText path
    _cb  path'


-- | Connect a signal handler for the [locationPopup](#signal:locationPopup) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #locationPopup callback
-- @
-- 
-- 
onFileChooserWidgetLocationPopup :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationPopupCallback -> m SignalHandlerId
onFileChooserWidgetLocationPopup obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupCallback cb
    cb'' <- mk_FileChooserWidgetLocationPopupCallback cb'
    connectSignalFunPtr obj "location-popup" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [locationPopup](#signal:locationPopup) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #locationPopup callback
-- @
-- 
-- 
afterFileChooserWidgetLocationPopup :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationPopupCallback -> m SignalHandlerId
afterFileChooserWidgetLocationPopup obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupCallback cb
    cb'' <- mk_FileChooserWidgetLocationPopupCallback cb'
    connectSignalFunPtr obj "location-popup" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetLocationPopupSignalInfo
instance SignalInfo FileChooserWidgetLocationPopupSignalInfo where
    type HaskellCallbackType FileChooserWidgetLocationPopupSignalInfo = FileChooserWidgetLocationPopupCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetLocationPopupCallback cb
        cb'' <- mk_FileChooserWidgetLocationPopupCallback cb'
        connectSignalFunPtr obj "location-popup" cb'' connectMode detail

#endif

-- signal FileChooserWidget::location-popup-on-paste
-- | The [locationPopupOnPaste](#signal:locationPopupOnPaste) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show a \"Location\" prompt when the user
-- pastes into a t'GI.Gtk.Objects.FileChooserWidget.FileChooserWidget'.
-- 
-- The default binding for this signal is @Control + V@.
type FileChooserWidgetLocationPopupOnPasteCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetLocationPopupOnPasteCallback`@.
noFileChooserWidgetLocationPopupOnPasteCallback :: Maybe FileChooserWidgetLocationPopupOnPasteCallback
noFileChooserWidgetLocationPopupOnPasteCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetLocationPopupOnPasteCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetLocationPopupOnPasteCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetLocationPopupOnPasteCallback :: C_FileChooserWidgetLocationPopupOnPasteCallback -> IO (FunPtr C_FileChooserWidgetLocationPopupOnPasteCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetLocationPopupOnPaste :: MonadIO m => FileChooserWidgetLocationPopupOnPasteCallback -> m (GClosure C_FileChooserWidgetLocationPopupOnPasteCallback)
genClosure_FileChooserWidgetLocationPopupOnPaste cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupOnPasteCallback cb
    mk_FileChooserWidgetLocationPopupOnPasteCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetLocationPopupOnPasteCallback` into a `C_FileChooserWidgetLocationPopupOnPasteCallback`.
wrap_FileChooserWidgetLocationPopupOnPasteCallback ::
    FileChooserWidgetLocationPopupOnPasteCallback ->
    C_FileChooserWidgetLocationPopupOnPasteCallback
wrap_FileChooserWidgetLocationPopupOnPasteCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [locationPopupOnPaste](#signal:locationPopupOnPaste) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #locationPopupOnPaste callback
-- @
-- 
-- 
onFileChooserWidgetLocationPopupOnPaste :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationPopupOnPasteCallback -> m SignalHandlerId
onFileChooserWidgetLocationPopupOnPaste obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupOnPasteCallback cb
    cb'' <- mk_FileChooserWidgetLocationPopupOnPasteCallback cb'
    connectSignalFunPtr obj "location-popup-on-paste" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [locationPopupOnPaste](#signal:locationPopupOnPaste) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #locationPopupOnPaste callback
-- @
-- 
-- 
afterFileChooserWidgetLocationPopupOnPaste :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationPopupOnPasteCallback -> m SignalHandlerId
afterFileChooserWidgetLocationPopupOnPaste obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationPopupOnPasteCallback cb
    cb'' <- mk_FileChooserWidgetLocationPopupOnPasteCallback cb'
    connectSignalFunPtr obj "location-popup-on-paste" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetLocationPopupOnPasteSignalInfo
instance SignalInfo FileChooserWidgetLocationPopupOnPasteSignalInfo where
    type HaskellCallbackType FileChooserWidgetLocationPopupOnPasteSignalInfo = FileChooserWidgetLocationPopupOnPasteCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetLocationPopupOnPasteCallback cb
        cb'' <- mk_FileChooserWidgetLocationPopupOnPasteCallback cb'
        connectSignalFunPtr obj "location-popup-on-paste" cb'' connectMode detail

#endif

-- signal FileChooserWidget::location-toggle-popup
-- | The [locationTogglePopup](#signal:locationTogglePopup) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to toggle the visibility of a \"Location\" prompt which the user
-- can use to manually type the name of the file he wishes to select.
-- 
-- The default binding for this signal is @Control + L@.
type FileChooserWidgetLocationTogglePopupCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetLocationTogglePopupCallback`@.
noFileChooserWidgetLocationTogglePopupCallback :: Maybe FileChooserWidgetLocationTogglePopupCallback
noFileChooserWidgetLocationTogglePopupCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetLocationTogglePopupCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetLocationTogglePopupCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetLocationTogglePopupCallback :: C_FileChooserWidgetLocationTogglePopupCallback -> IO (FunPtr C_FileChooserWidgetLocationTogglePopupCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetLocationTogglePopup :: MonadIO m => FileChooserWidgetLocationTogglePopupCallback -> m (GClosure C_FileChooserWidgetLocationTogglePopupCallback)
genClosure_FileChooserWidgetLocationTogglePopup cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationTogglePopupCallback cb
    mk_FileChooserWidgetLocationTogglePopupCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetLocationTogglePopupCallback` into a `C_FileChooserWidgetLocationTogglePopupCallback`.
wrap_FileChooserWidgetLocationTogglePopupCallback ::
    FileChooserWidgetLocationTogglePopupCallback ->
    C_FileChooserWidgetLocationTogglePopupCallback
wrap_FileChooserWidgetLocationTogglePopupCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [locationTogglePopup](#signal:locationTogglePopup) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #locationTogglePopup callback
-- @
-- 
-- 
onFileChooserWidgetLocationTogglePopup :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationTogglePopupCallback -> m SignalHandlerId
onFileChooserWidgetLocationTogglePopup obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationTogglePopupCallback cb
    cb'' <- mk_FileChooserWidgetLocationTogglePopupCallback cb'
    connectSignalFunPtr obj "location-toggle-popup" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [locationTogglePopup](#signal:locationTogglePopup) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #locationTogglePopup callback
-- @
-- 
-- 
afterFileChooserWidgetLocationTogglePopup :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetLocationTogglePopupCallback -> m SignalHandlerId
afterFileChooserWidgetLocationTogglePopup obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetLocationTogglePopupCallback cb
    cb'' <- mk_FileChooserWidgetLocationTogglePopupCallback cb'
    connectSignalFunPtr obj "location-toggle-popup" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetLocationTogglePopupSignalInfo
instance SignalInfo FileChooserWidgetLocationTogglePopupSignalInfo where
    type HaskellCallbackType FileChooserWidgetLocationTogglePopupSignalInfo = FileChooserWidgetLocationTogglePopupCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetLocationTogglePopupCallback cb
        cb'' <- mk_FileChooserWidgetLocationTogglePopupCallback cb'
        connectSignalFunPtr obj "location-toggle-popup" cb'' connectMode detail

#endif

-- signal FileChooserWidget::places-shortcut
-- | The [placesShortcut](#signal:placesShortcut) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to move the focus to the places sidebar.
-- 
-- The default binding for this signal is @Alt + P@.
type FileChooserWidgetPlacesShortcutCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetPlacesShortcutCallback`@.
noFileChooserWidgetPlacesShortcutCallback :: Maybe FileChooserWidgetPlacesShortcutCallback
noFileChooserWidgetPlacesShortcutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetPlacesShortcutCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetPlacesShortcutCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetPlacesShortcutCallback :: C_FileChooserWidgetPlacesShortcutCallback -> IO (FunPtr C_FileChooserWidgetPlacesShortcutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetPlacesShortcut :: MonadIO m => FileChooserWidgetPlacesShortcutCallback -> m (GClosure C_FileChooserWidgetPlacesShortcutCallback)
genClosure_FileChooserWidgetPlacesShortcut cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetPlacesShortcutCallback cb
    mk_FileChooserWidgetPlacesShortcutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetPlacesShortcutCallback` into a `C_FileChooserWidgetPlacesShortcutCallback`.
wrap_FileChooserWidgetPlacesShortcutCallback ::
    FileChooserWidgetPlacesShortcutCallback ->
    C_FileChooserWidgetPlacesShortcutCallback
wrap_FileChooserWidgetPlacesShortcutCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [placesShortcut](#signal:placesShortcut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #placesShortcut callback
-- @
-- 
-- 
onFileChooserWidgetPlacesShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetPlacesShortcutCallback -> m SignalHandlerId
onFileChooserWidgetPlacesShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetPlacesShortcutCallback cb
    cb'' <- mk_FileChooserWidgetPlacesShortcutCallback cb'
    connectSignalFunPtr obj "places-shortcut" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [placesShortcut](#signal:placesShortcut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #placesShortcut callback
-- @
-- 
-- 
afterFileChooserWidgetPlacesShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetPlacesShortcutCallback -> m SignalHandlerId
afterFileChooserWidgetPlacesShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetPlacesShortcutCallback cb
    cb'' <- mk_FileChooserWidgetPlacesShortcutCallback cb'
    connectSignalFunPtr obj "places-shortcut" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetPlacesShortcutSignalInfo
instance SignalInfo FileChooserWidgetPlacesShortcutSignalInfo where
    type HaskellCallbackType FileChooserWidgetPlacesShortcutSignalInfo = FileChooserWidgetPlacesShortcutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetPlacesShortcutCallback cb
        cb'' <- mk_FileChooserWidgetPlacesShortcutCallback cb'
        connectSignalFunPtr obj "places-shortcut" cb'' connectMode detail

#endif

-- signal FileChooserWidget::quick-bookmark
-- | The [quickBookmark](#signal:quickBookmark) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser switch to the bookmark specified
-- in the /@bookmarkIndex@/ parameter. For example, if you have three bookmarks,
-- you can pass 0, 1, 2 to this signal to switch to each of them, respectively.
-- 
-- The default binding for this signal is @Alt + 1@, @Alt + 2@,
-- etc. until @Alt + 0@.  Note that in the default binding, that
-- @Alt + 1@ is actually defined to switch to the bookmark at index
-- 0, and so on successively; @Alt + 0@ is defined to switch to the
-- bookmark at index 10.
type FileChooserWidgetQuickBookmarkCallback =
    Int32
    -- ^ /@bookmarkIndex@/: the number of the bookmark to switch to
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetQuickBookmarkCallback`@.
noFileChooserWidgetQuickBookmarkCallback :: Maybe FileChooserWidgetQuickBookmarkCallback
noFileChooserWidgetQuickBookmarkCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetQuickBookmarkCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetQuickBookmarkCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetQuickBookmarkCallback :: C_FileChooserWidgetQuickBookmarkCallback -> IO (FunPtr C_FileChooserWidgetQuickBookmarkCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetQuickBookmark :: MonadIO m => FileChooserWidgetQuickBookmarkCallback -> m (GClosure C_FileChooserWidgetQuickBookmarkCallback)
genClosure_FileChooserWidgetQuickBookmark cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetQuickBookmarkCallback cb
    mk_FileChooserWidgetQuickBookmarkCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetQuickBookmarkCallback` into a `C_FileChooserWidgetQuickBookmarkCallback`.
wrap_FileChooserWidgetQuickBookmarkCallback ::
    FileChooserWidgetQuickBookmarkCallback ->
    C_FileChooserWidgetQuickBookmarkCallback
wrap_FileChooserWidgetQuickBookmarkCallback _cb _ bookmarkIndex _ = do
    _cb  bookmarkIndex


-- | Connect a signal handler for the [quickBookmark](#signal:quickBookmark) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #quickBookmark callback
-- @
-- 
-- 
onFileChooserWidgetQuickBookmark :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetQuickBookmarkCallback -> m SignalHandlerId
onFileChooserWidgetQuickBookmark obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetQuickBookmarkCallback cb
    cb'' <- mk_FileChooserWidgetQuickBookmarkCallback cb'
    connectSignalFunPtr obj "quick-bookmark" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [quickBookmark](#signal:quickBookmark) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #quickBookmark callback
-- @
-- 
-- 
afterFileChooserWidgetQuickBookmark :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetQuickBookmarkCallback -> m SignalHandlerId
afterFileChooserWidgetQuickBookmark obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetQuickBookmarkCallback cb
    cb'' <- mk_FileChooserWidgetQuickBookmarkCallback cb'
    connectSignalFunPtr obj "quick-bookmark" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetQuickBookmarkSignalInfo
instance SignalInfo FileChooserWidgetQuickBookmarkSignalInfo where
    type HaskellCallbackType FileChooserWidgetQuickBookmarkSignalInfo = FileChooserWidgetQuickBookmarkCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetQuickBookmarkCallback cb
        cb'' <- mk_FileChooserWidgetQuickBookmarkCallback cb'
        connectSignalFunPtr obj "quick-bookmark" cb'' connectMode detail

#endif

-- signal FileChooserWidget::recent-shortcut
-- | The [recentShortcut](#signal:recentShortcut) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show the Recent location.
-- 
-- The default binding for this signal is @Alt + R@.
type FileChooserWidgetRecentShortcutCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetRecentShortcutCallback`@.
noFileChooserWidgetRecentShortcutCallback :: Maybe FileChooserWidgetRecentShortcutCallback
noFileChooserWidgetRecentShortcutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetRecentShortcutCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetRecentShortcutCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetRecentShortcutCallback :: C_FileChooserWidgetRecentShortcutCallback -> IO (FunPtr C_FileChooserWidgetRecentShortcutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetRecentShortcut :: MonadIO m => FileChooserWidgetRecentShortcutCallback -> m (GClosure C_FileChooserWidgetRecentShortcutCallback)
genClosure_FileChooserWidgetRecentShortcut cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetRecentShortcutCallback cb
    mk_FileChooserWidgetRecentShortcutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetRecentShortcutCallback` into a `C_FileChooserWidgetRecentShortcutCallback`.
wrap_FileChooserWidgetRecentShortcutCallback ::
    FileChooserWidgetRecentShortcutCallback ->
    C_FileChooserWidgetRecentShortcutCallback
wrap_FileChooserWidgetRecentShortcutCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [recentShortcut](#signal:recentShortcut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #recentShortcut callback
-- @
-- 
-- 
onFileChooserWidgetRecentShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetRecentShortcutCallback -> m SignalHandlerId
onFileChooserWidgetRecentShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetRecentShortcutCallback cb
    cb'' <- mk_FileChooserWidgetRecentShortcutCallback cb'
    connectSignalFunPtr obj "recent-shortcut" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [recentShortcut](#signal:recentShortcut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #recentShortcut callback
-- @
-- 
-- 
afterFileChooserWidgetRecentShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetRecentShortcutCallback -> m SignalHandlerId
afterFileChooserWidgetRecentShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetRecentShortcutCallback cb
    cb'' <- mk_FileChooserWidgetRecentShortcutCallback cb'
    connectSignalFunPtr obj "recent-shortcut" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetRecentShortcutSignalInfo
instance SignalInfo FileChooserWidgetRecentShortcutSignalInfo where
    type HaskellCallbackType FileChooserWidgetRecentShortcutSignalInfo = FileChooserWidgetRecentShortcutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetRecentShortcutCallback cb
        cb'' <- mk_FileChooserWidgetRecentShortcutCallback cb'
        connectSignalFunPtr obj "recent-shortcut" cb'' connectMode detail

#endif

-- signal FileChooserWidget::search-shortcut
-- | The [searchShortcut](#signal:searchShortcut) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser show the search entry.
-- 
-- The default binding for this signal is @Alt + S@.
type FileChooserWidgetSearchShortcutCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetSearchShortcutCallback`@.
noFileChooserWidgetSearchShortcutCallback :: Maybe FileChooserWidgetSearchShortcutCallback
noFileChooserWidgetSearchShortcutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetSearchShortcutCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetSearchShortcutCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetSearchShortcutCallback :: C_FileChooserWidgetSearchShortcutCallback -> IO (FunPtr C_FileChooserWidgetSearchShortcutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetSearchShortcut :: MonadIO m => FileChooserWidgetSearchShortcutCallback -> m (GClosure C_FileChooserWidgetSearchShortcutCallback)
genClosure_FileChooserWidgetSearchShortcut cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetSearchShortcutCallback cb
    mk_FileChooserWidgetSearchShortcutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetSearchShortcutCallback` into a `C_FileChooserWidgetSearchShortcutCallback`.
wrap_FileChooserWidgetSearchShortcutCallback ::
    FileChooserWidgetSearchShortcutCallback ->
    C_FileChooserWidgetSearchShortcutCallback
wrap_FileChooserWidgetSearchShortcutCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [searchShortcut](#signal:searchShortcut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #searchShortcut callback
-- @
-- 
-- 
onFileChooserWidgetSearchShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetSearchShortcutCallback -> m SignalHandlerId
onFileChooserWidgetSearchShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetSearchShortcutCallback cb
    cb'' <- mk_FileChooserWidgetSearchShortcutCallback cb'
    connectSignalFunPtr obj "search-shortcut" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [searchShortcut](#signal:searchShortcut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #searchShortcut callback
-- @
-- 
-- 
afterFileChooserWidgetSearchShortcut :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetSearchShortcutCallback -> m SignalHandlerId
afterFileChooserWidgetSearchShortcut obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetSearchShortcutCallback cb
    cb'' <- mk_FileChooserWidgetSearchShortcutCallback cb'
    connectSignalFunPtr obj "search-shortcut" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetSearchShortcutSignalInfo
instance SignalInfo FileChooserWidgetSearchShortcutSignalInfo where
    type HaskellCallbackType FileChooserWidgetSearchShortcutSignalInfo = FileChooserWidgetSearchShortcutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetSearchShortcutCallback cb
        cb'' <- mk_FileChooserWidgetSearchShortcutCallback cb'
        connectSignalFunPtr obj "search-shortcut" cb'' connectMode detail

#endif

-- signal FileChooserWidget::show-hidden
-- | The [showHidden](#signal:showHidden) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser display hidden files.
-- 
-- The default binding for this signal is @Control + H@.
type FileChooserWidgetShowHiddenCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetShowHiddenCallback`@.
noFileChooserWidgetShowHiddenCallback :: Maybe FileChooserWidgetShowHiddenCallback
noFileChooserWidgetShowHiddenCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetShowHiddenCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetShowHiddenCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetShowHiddenCallback :: C_FileChooserWidgetShowHiddenCallback -> IO (FunPtr C_FileChooserWidgetShowHiddenCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetShowHidden :: MonadIO m => FileChooserWidgetShowHiddenCallback -> m (GClosure C_FileChooserWidgetShowHiddenCallback)
genClosure_FileChooserWidgetShowHidden cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetShowHiddenCallback cb
    mk_FileChooserWidgetShowHiddenCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetShowHiddenCallback` into a `C_FileChooserWidgetShowHiddenCallback`.
wrap_FileChooserWidgetShowHiddenCallback ::
    FileChooserWidgetShowHiddenCallback ->
    C_FileChooserWidgetShowHiddenCallback
wrap_FileChooserWidgetShowHiddenCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [showHidden](#signal:showHidden) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #showHidden callback
-- @
-- 
-- 
onFileChooserWidgetShowHidden :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetShowHiddenCallback -> m SignalHandlerId
onFileChooserWidgetShowHidden obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetShowHiddenCallback cb
    cb'' <- mk_FileChooserWidgetShowHiddenCallback cb'
    connectSignalFunPtr obj "show-hidden" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showHidden](#signal:showHidden) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #showHidden callback
-- @
-- 
-- 
afterFileChooserWidgetShowHidden :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetShowHiddenCallback -> m SignalHandlerId
afterFileChooserWidgetShowHidden obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetShowHiddenCallback cb
    cb'' <- mk_FileChooserWidgetShowHiddenCallback cb'
    connectSignalFunPtr obj "show-hidden" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetShowHiddenSignalInfo
instance SignalInfo FileChooserWidgetShowHiddenSignalInfo where
    type HaskellCallbackType FileChooserWidgetShowHiddenSignalInfo = FileChooserWidgetShowHiddenCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetShowHiddenCallback cb
        cb'' <- mk_FileChooserWidgetShowHiddenCallback cb'
        connectSignalFunPtr obj "show-hidden" cb'' connectMode detail

#endif

-- signal FileChooserWidget::up-folder
-- | The [upFolder](#signal:upFolder) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user asks for it.
-- 
-- This is used to make the file chooser go to the parent of the current folder
-- in the file hierarchy.
-- 
-- The default binding for this signal is @Alt + Up@.
type FileChooserWidgetUpFolderCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserWidgetUpFolderCallback`@.
noFileChooserWidgetUpFolderCallback :: Maybe FileChooserWidgetUpFolderCallback
noFileChooserWidgetUpFolderCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserWidgetUpFolderCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserWidgetUpFolderCallback`.
foreign import ccall "wrapper"
    mk_FileChooserWidgetUpFolderCallback :: C_FileChooserWidgetUpFolderCallback -> IO (FunPtr C_FileChooserWidgetUpFolderCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserWidgetUpFolder :: MonadIO m => FileChooserWidgetUpFolderCallback -> m (GClosure C_FileChooserWidgetUpFolderCallback)
genClosure_FileChooserWidgetUpFolder cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetUpFolderCallback cb
    mk_FileChooserWidgetUpFolderCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserWidgetUpFolderCallback` into a `C_FileChooserWidgetUpFolderCallback`.
wrap_FileChooserWidgetUpFolderCallback ::
    FileChooserWidgetUpFolderCallback ->
    C_FileChooserWidgetUpFolderCallback
wrap_FileChooserWidgetUpFolderCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [upFolder](#signal:upFolder) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserWidget #upFolder callback
-- @
-- 
-- 
onFileChooserWidgetUpFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetUpFolderCallback -> m SignalHandlerId
onFileChooserWidgetUpFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetUpFolderCallback cb
    cb'' <- mk_FileChooserWidgetUpFolderCallback cb'
    connectSignalFunPtr obj "up-folder" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [upFolder](#signal:upFolder) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserWidget #upFolder callback
-- @
-- 
-- 
afterFileChooserWidgetUpFolder :: (IsFileChooserWidget a, MonadIO m) => a -> FileChooserWidgetUpFolderCallback -> m SignalHandlerId
afterFileChooserWidgetUpFolder obj cb = liftIO $ do
    let cb' = wrap_FileChooserWidgetUpFolderCallback cb
    cb'' <- mk_FileChooserWidgetUpFolderCallback cb'
    connectSignalFunPtr obj "up-folder" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetUpFolderSignalInfo
instance SignalInfo FileChooserWidgetUpFolderSignalInfo where
    type HaskellCallbackType FileChooserWidgetUpFolderSignalInfo = FileChooserWidgetUpFolderCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserWidgetUpFolderCallback cb
        cb'' <- mk_FileChooserWidgetUpFolderCallback cb'
        connectSignalFunPtr obj "up-folder" cb'' connectMode detail

#endif

-- VVV Prop "search-mode"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@search-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserWidget #searchMode
-- @
getFileChooserWidgetSearchMode :: (MonadIO m, IsFileChooserWidget o) => o -> m Bool
getFileChooserWidgetSearchMode obj = liftIO $ B.Properties.getObjectPropertyBool obj "search-mode"

-- | Set the value of the “@search-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fileChooserWidget [ #searchMode 'Data.GI.Base.Attributes.:=' value ]
-- @
setFileChooserWidgetSearchMode :: (MonadIO m, IsFileChooserWidget o) => o -> Bool -> m ()
setFileChooserWidgetSearchMode obj val = liftIO $ B.Properties.setObjectPropertyBool obj "search-mode" val

-- | Construct a `GValueConstruct` with valid value for the “@search-mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserWidgetSearchMode :: (IsFileChooserWidget o) => Bool -> IO (GValueConstruct o)
constructFileChooserWidgetSearchMode val = B.Properties.constructObjectPropertyBool "search-mode" val

#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetSearchModePropertyInfo
instance AttrInfo FileChooserWidgetSearchModePropertyInfo where
    type AttrAllowedOps FileChooserWidgetSearchModePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FileChooserWidgetSearchModePropertyInfo = IsFileChooserWidget
    type AttrSetTypeConstraint FileChooserWidgetSearchModePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FileChooserWidgetSearchModePropertyInfo = (~) Bool
    type AttrTransferType FileChooserWidgetSearchModePropertyInfo = Bool
    type AttrGetType FileChooserWidgetSearchModePropertyInfo = Bool
    type AttrLabel FileChooserWidgetSearchModePropertyInfo = "search-mode"
    type AttrOrigin FileChooserWidgetSearchModePropertyInfo = FileChooserWidget
    attrGet = getFileChooserWidgetSearchMode
    attrSet = setFileChooserWidgetSearchMode
    attrTransfer _ v = do
        return v
    attrConstruct = constructFileChooserWidgetSearchMode
    attrClear = undefined
#endif

-- VVV Prop "subtitle"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@subtitle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserWidget #subtitle
-- @
getFileChooserWidgetSubtitle :: (MonadIO m, IsFileChooserWidget o) => o -> m (Maybe T.Text)
getFileChooserWidgetSubtitle obj = liftIO $ B.Properties.getObjectPropertyString obj "subtitle"

#if defined(ENABLE_OVERLOADING)
data FileChooserWidgetSubtitlePropertyInfo
instance AttrInfo FileChooserWidgetSubtitlePropertyInfo where
    type AttrAllowedOps FileChooserWidgetSubtitlePropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserWidgetSubtitlePropertyInfo = IsFileChooserWidget
    type AttrSetTypeConstraint FileChooserWidgetSubtitlePropertyInfo = (~) ()
    type AttrTransferTypeConstraint FileChooserWidgetSubtitlePropertyInfo = (~) ()
    type AttrTransferType FileChooserWidgetSubtitlePropertyInfo = ()
    type AttrGetType FileChooserWidgetSubtitlePropertyInfo = (Maybe T.Text)
    type AttrLabel FileChooserWidgetSubtitlePropertyInfo = "subtitle"
    type AttrOrigin FileChooserWidgetSubtitlePropertyInfo = FileChooserWidget
    attrGet = getFileChooserWidgetSubtitle
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileChooserWidget
type instance O.AttributeList FileChooserWidget = FileChooserWidgetAttributeList
type FileChooserWidgetAttributeList = ('[ '("action", Gtk.FileChooser.FileChooserActionPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("createFolders", Gtk.FileChooser.FileChooserCreateFoldersPropertyInfo), '("doOverwriteConfirmation", Gtk.FileChooser.FileChooserDoOverwriteConfirmationPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("extraWidget", Gtk.FileChooser.FileChooserExtraWidgetPropertyInfo), '("filter", Gtk.FileChooser.FileChooserFilterPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("localOnly", Gtk.FileChooser.FileChooserLocalOnlyPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewWidget", Gtk.FileChooser.FileChooserPreviewWidgetPropertyInfo), '("previewWidgetActive", Gtk.FileChooser.FileChooserPreviewWidgetActivePropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("searchMode", FileChooserWidgetSearchModePropertyInfo), '("selectMultiple", Gtk.FileChooser.FileChooserSelectMultiplePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showHidden", Gtk.FileChooser.FileChooserShowHiddenPropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("subtitle", FileChooserWidgetSubtitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("usePreviewLabel", Gtk.FileChooser.FileChooserUsePreviewLabelPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fileChooserWidgetSearchMode :: AttrLabelProxy "searchMode"
fileChooserWidgetSearchMode = AttrLabelProxy

fileChooserWidgetSubtitle :: AttrLabelProxy "subtitle"
fileChooserWidgetSubtitle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileChooserWidget = FileChooserWidgetSignalList
type FileChooserWidgetSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("confirmOverwrite", Gtk.FileChooser.FileChooserConfirmOverwriteSignalInfo), '("currentFolderChanged", Gtk.FileChooser.FileChooserCurrentFolderChangedSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("desktopFolder", FileChooserWidgetDesktopFolderSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("downFolder", FileChooserWidgetDownFolderSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("fileActivated", Gtk.FileChooser.FileChooserFileActivatedSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("homeFolder", FileChooserWidgetHomeFolderSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("locationPopup", FileChooserWidgetLocationPopupSignalInfo), '("locationPopupOnPaste", FileChooserWidgetLocationPopupOnPasteSignalInfo), '("locationTogglePopup", FileChooserWidgetLocationTogglePopupSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("placesShortcut", FileChooserWidgetPlacesShortcutSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("quickBookmark", FileChooserWidgetQuickBookmarkSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("recentShortcut", FileChooserWidgetRecentShortcutSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("searchShortcut", FileChooserWidgetSearchShortcutSignalInfo), '("selectionChanged", Gtk.FileChooser.FileChooserSelectionChangedSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("showHidden", FileChooserWidgetShowHiddenSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("upFolder", FileChooserWidgetUpFolderSignalInfo), '("updatePreview", Gtk.FileChooser.FileChooserUpdatePreviewSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FileChooserWidget::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "action"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserAction" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Open or save mode for the widget"
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
--                  Name { namespace = "Gtk" , name = "FileChooserWidget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_chooser_widget_new" gtk_file_chooser_widget_new :: 
    CUInt ->                                -- action : TInterface (Name {namespace = "Gtk", name = "FileChooserAction"})
    IO (Ptr FileChooserWidget)

-- | Creates a new t'GI.Gtk.Objects.FileChooserWidget.FileChooserWidget'. This is a file chooser widget that can
-- be embedded in custom windows, and it is the same widget that is used by
-- t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog'.
-- 
-- /Since: 2.4/
fileChooserWidgetNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.FileChooserAction
    -- ^ /@action@/: Open or save mode for the widget
    -> m FileChooserWidget
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FileChooserWidget.FileChooserWidget'
fileChooserWidgetNew action = liftIO $ do
    let action' = (fromIntegral . fromEnum) action
    result <- gtk_file_chooser_widget_new action'
    checkUnexpectedReturnNULL "fileChooserWidgetNew" result
    result' <- (newObject FileChooserWidget) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

