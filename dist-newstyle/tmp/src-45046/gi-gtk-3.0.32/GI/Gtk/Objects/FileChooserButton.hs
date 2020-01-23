{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.FileChooserButton.FileChooserButton' is a widget that lets the user select a
-- file.  It implements the t'GI.Gtk.Interfaces.FileChooser.FileChooser' interface.  Visually, it is a
-- file name with a button to bring up a t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog'.
-- The user can then use that dialog to change the file associated with
-- that button.  This widget does not support setting the
-- t'GI.Gtk.Interfaces.FileChooser.FileChooser':@/select-multiple/@ property to 'P.True'.
-- 
-- == Create a button to let the user select a file in \/etc
-- 
-- 
-- === /C code/
-- >
-- >{
-- >  GtkWidget *button;
-- >
-- >  button = gtk_file_chooser_button_new (_("Select a file"),
-- >                                        GTK_FILE_CHOOSER_ACTION_OPEN);
-- >  gtk_file_chooser_set_current_folder (GTK_FILE_CHOOSER (button),
-- >                                       "/etc");
-- >}
-- 
-- 
-- The t'GI.Gtk.Objects.FileChooserButton.FileChooserButton' supports the @/GtkFileChooserActions/@
-- 'GI.Gtk.Enums.FileChooserActionOpen' and 'GI.Gtk.Enums.FileChooserActionSelectFolder'.
-- 
-- > The t'GI.Gtk.Objects.FileChooserButton.FileChooserButton' will ellipsize the label, and will thus
-- > request little horizontal space.  To give the button more space,
-- > you should call 'GI.Gtk.Objects.Widget.widgetGetPreferredSize',
-- > 'GI.Gtk.Objects.FileChooserButton.fileChooserButtonSetWidthChars', or pack the button in
-- > such a way that other interface elements give space to the
-- > widget.
-- 
-- = CSS nodes
-- 
-- GtkFileChooserButton has a CSS node with name “filechooserbutton”, containing
-- a subnode for the internal button with name “button” and style class “.file”.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FileChooserButton
    ( 

-- * Exported types
    FileChooserButton(..)                   ,
    IsFileChooserButton                     ,
    toFileChooserButton                     ,
    noFileChooserButton                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileChooserButtonMethod          ,
#endif


-- ** getFocusOnClick #method:getFocusOnClick#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonGetFocusOnClickMethodInfo,
#endif
    fileChooserButtonGetFocusOnClick        ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonGetTitleMethodInfo     ,
#endif
    fileChooserButtonGetTitle               ,


-- ** getWidthChars #method:getWidthChars#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonGetWidthCharsMethodInfo,
#endif
    fileChooserButtonGetWidthChars          ,


-- ** new #method:new#

    fileChooserButtonNew                    ,


-- ** newWithDialog #method:newWithDialog#

    fileChooserButtonNewWithDialog          ,


-- ** setFocusOnClick #method:setFocusOnClick#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonSetFocusOnClickMethodInfo,
#endif
    fileChooserButtonSetFocusOnClick        ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonSetTitleMethodInfo     ,
#endif
    fileChooserButtonSetTitle               ,


-- ** setWidthChars #method:setWidthChars#

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonSetWidthCharsMethodInfo,
#endif
    fileChooserButtonSetWidthChars          ,




 -- * Properties
-- ** dialog #attr:dialog#
-- | Instance of the t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' associated with the button.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonDialogPropertyInfo     ,
#endif
    constructFileChooserButtonDialog        ,
#if defined(ENABLE_OVERLOADING)
    fileChooserButtonDialog                 ,
#endif


-- ** title #attr:title#
-- | Title to put on the t'GI.Gtk.Objects.FileChooserDialog.FileChooserDialog' associated with the button.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonTitlePropertyInfo      ,
#endif
    constructFileChooserButtonTitle         ,
#if defined(ENABLE_OVERLOADING)
    fileChooserButtonTitle                  ,
#endif
    getFileChooserButtonTitle               ,
    setFileChooserButtonTitle               ,


-- ** widthChars #attr:widthChars#
-- | The width of the entry and label inside the button, in characters.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    FileChooserButtonWidthCharsPropertyInfo ,
#endif
    constructFileChooserButtonWidthChars    ,
#if defined(ENABLE_OVERLOADING)
    fileChooserButtonWidthChars             ,
#endif
    getFileChooserButtonWidthChars          ,
    setFileChooserButtonWidthChars          ,




 -- * Signals
-- ** fileSet #signal:fileSet#

    C_FileChooserButtonFileSetCallback      ,
    FileChooserButtonFileSetCallback        ,
#if defined(ENABLE_OVERLOADING)
    FileChooserButtonFileSetSignalInfo      ,
#endif
    afterFileChooserButtonFileSet           ,
    genClosure_FileChooserButtonFileSet     ,
    mk_FileChooserButtonFileSetCallback     ,
    noFileChooserButtonFileSetCallback      ,
    onFileChooserButtonFileSet              ,
    wrap_FileChooserButtonFileSetCallback   ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Dialog as Gtk.Dialog
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype FileChooserButton = FileChooserButton (ManagedPtr FileChooserButton)
    deriving (Eq)
foreign import ccall "gtk_file_chooser_button_get_type"
    c_gtk_file_chooser_button_get_type :: IO GType

instance GObject FileChooserButton where
    gobjectType = c_gtk_file_chooser_button_get_type
    

-- | Convert 'FileChooserButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FileChooserButton where
    toGValue o = do
        gtype <- c_gtk_file_chooser_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FileChooserButton)
        B.ManagedPtr.newObject FileChooserButton ptr
        
    

-- | Type class for types which can be safely cast to `FileChooserButton`, for instance with `toFileChooserButton`.
class (GObject o, O.IsDescendantOf FileChooserButton o) => IsFileChooserButton o
instance (GObject o, O.IsDescendantOf FileChooserButton o) => IsFileChooserButton o

instance O.HasParentTypes FileChooserButton
type instance O.ParentTypes FileChooserButton = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.FileChooser.FileChooser, Gtk.Orientable.Orientable]

-- | Cast to `FileChooserButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileChooserButton :: (MonadIO m, IsFileChooserButton o) => o -> m FileChooserButton
toFileChooserButton = liftIO . unsafeCastTo FileChooserButton

-- | A convenience alias for `Nothing` :: `Maybe` `FileChooserButton`.
noFileChooserButton :: Maybe FileChooserButton
noFileChooserButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFileChooserButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileChooserButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFileChooserButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFileChooserButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFileChooserButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFileChooserButtonMethod "addChoice" o = Gtk.FileChooser.FileChooserAddChoiceMethodInfo
    ResolveFileChooserButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFileChooserButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFileChooserButtonMethod "addFilter" o = Gtk.FileChooser.FileChooserAddFilterMethodInfo
    ResolveFileChooserButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFileChooserButtonMethod "addShortcutFolder" o = Gtk.FileChooser.FileChooserAddShortcutFolderMethodInfo
    ResolveFileChooserButtonMethod "addShortcutFolderUri" o = Gtk.FileChooser.FileChooserAddShortcutFolderUriMethodInfo
    ResolveFileChooserButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFileChooserButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileChooserButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileChooserButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFileChooserButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFileChooserButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFileChooserButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFileChooserButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFileChooserButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFileChooserButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFileChooserButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFileChooserButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFileChooserButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFileChooserButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFileChooserButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFileChooserButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFileChooserButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFileChooserButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFileChooserButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFileChooserButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFileChooserButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFileChooserButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFileChooserButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFileChooserButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFileChooserButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFileChooserButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFileChooserButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFileChooserButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFileChooserButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFileChooserButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFileChooserButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFileChooserButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFileChooserButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFileChooserButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFileChooserButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFileChooserButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFileChooserButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFileChooserButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFileChooserButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFileChooserButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFileChooserButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFileChooserButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFileChooserButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFileChooserButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFileChooserButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFileChooserButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileChooserButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFileChooserButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFileChooserButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileChooserButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileChooserButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFileChooserButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFileChooserButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFileChooserButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFileChooserButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFileChooserButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFileChooserButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFileChooserButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFileChooserButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFileChooserButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFileChooserButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFileChooserButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFileChooserButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFileChooserButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFileChooserButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFileChooserButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFileChooserButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFileChooserButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFileChooserButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFileChooserButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFileChooserButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileChooserButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFileChooserButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFileChooserButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFileChooserButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFileChooserButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFileChooserButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFileChooserButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFileChooserButtonMethod "listFilters" o = Gtk.FileChooser.FileChooserListFiltersMethodInfo
    ResolveFileChooserButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFileChooserButtonMethod "listShortcutFolderUris" o = Gtk.FileChooser.FileChooserListShortcutFolderUrisMethodInfo
    ResolveFileChooserButtonMethod "listShortcutFolders" o = Gtk.FileChooser.FileChooserListShortcutFoldersMethodInfo
    ResolveFileChooserButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFileChooserButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFileChooserButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFileChooserButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFileChooserButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFileChooserButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFileChooserButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFileChooserButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFileChooserButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFileChooserButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileChooserButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileChooserButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFileChooserButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFileChooserButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFileChooserButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFileChooserButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFileChooserButtonMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveFileChooserButtonMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveFileChooserButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFileChooserButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFileChooserButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFileChooserButtonMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveFileChooserButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFileChooserButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFileChooserButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFileChooserButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFileChooserButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFileChooserButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFileChooserButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFileChooserButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFileChooserButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileChooserButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileChooserButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFileChooserButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFileChooserButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFileChooserButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFileChooserButtonMethod "removeChoice" o = Gtk.FileChooser.FileChooserRemoveChoiceMethodInfo
    ResolveFileChooserButtonMethod "removeFilter" o = Gtk.FileChooser.FileChooserRemoveFilterMethodInfo
    ResolveFileChooserButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFileChooserButtonMethod "removeShortcutFolder" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderMethodInfo
    ResolveFileChooserButtonMethod "removeShortcutFolderUri" o = Gtk.FileChooser.FileChooserRemoveShortcutFolderUriMethodInfo
    ResolveFileChooserButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFileChooserButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFileChooserButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFileChooserButtonMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveFileChooserButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFileChooserButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFileChooserButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFileChooserButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFileChooserButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileChooserButtonMethod "selectAll" o = Gtk.FileChooser.FileChooserSelectAllMethodInfo
    ResolveFileChooserButtonMethod "selectFile" o = Gtk.FileChooser.FileChooserSelectFileMethodInfo
    ResolveFileChooserButtonMethod "selectFilename" o = Gtk.FileChooser.FileChooserSelectFilenameMethodInfo
    ResolveFileChooserButtonMethod "selectUri" o = Gtk.FileChooser.FileChooserSelectUriMethodInfo
    ResolveFileChooserButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFileChooserButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFileChooserButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFileChooserButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFileChooserButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFileChooserButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFileChooserButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFileChooserButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFileChooserButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFileChooserButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileChooserButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileChooserButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFileChooserButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFileChooserButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFileChooserButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileChooserButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFileChooserButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFileChooserButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFileChooserButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFileChooserButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFileChooserButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileChooserButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFileChooserButtonMethod "unselectAll" o = Gtk.FileChooser.FileChooserUnselectAllMethodInfo
    ResolveFileChooserButtonMethod "unselectFile" o = Gtk.FileChooser.FileChooserUnselectFileMethodInfo
    ResolveFileChooserButtonMethod "unselectFilename" o = Gtk.FileChooser.FileChooserUnselectFilenameMethodInfo
    ResolveFileChooserButtonMethod "unselectUri" o = Gtk.FileChooser.FileChooserUnselectUriMethodInfo
    ResolveFileChooserButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFileChooserButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFileChooserButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileChooserButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFileChooserButtonMethod "getAction" o = Gtk.FileChooser.FileChooserGetActionMethodInfo
    ResolveFileChooserButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFileChooserButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFileChooserButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFileChooserButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFileChooserButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFileChooserButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFileChooserButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFileChooserButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFileChooserButtonMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveFileChooserButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFileChooserButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFileChooserButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFileChooserButtonMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveFileChooserButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFileChooserButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFileChooserButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFileChooserButtonMethod "getChoice" o = Gtk.FileChooser.FileChooserGetChoiceMethodInfo
    ResolveFileChooserButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFileChooserButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFileChooserButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFileChooserButtonMethod "getCreateFolders" o = Gtk.FileChooser.FileChooserGetCreateFoldersMethodInfo
    ResolveFileChooserButtonMethod "getCurrentFolder" o = Gtk.FileChooser.FileChooserGetCurrentFolderMethodInfo
    ResolveFileChooserButtonMethod "getCurrentFolderFile" o = Gtk.FileChooser.FileChooserGetCurrentFolderFileMethodInfo
    ResolveFileChooserButtonMethod "getCurrentFolderUri" o = Gtk.FileChooser.FileChooserGetCurrentFolderUriMethodInfo
    ResolveFileChooserButtonMethod "getCurrentName" o = Gtk.FileChooser.FileChooserGetCurrentNameMethodInfo
    ResolveFileChooserButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileChooserButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFileChooserButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFileChooserButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFileChooserButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFileChooserButtonMethod "getDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserGetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFileChooserButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFileChooserButtonMethod "getExtraWidget" o = Gtk.FileChooser.FileChooserGetExtraWidgetMethodInfo
    ResolveFileChooserButtonMethod "getFile" o = Gtk.FileChooser.FileChooserGetFileMethodInfo
    ResolveFileChooserButtonMethod "getFilename" o = Gtk.FileChooser.FileChooserGetFilenameMethodInfo
    ResolveFileChooserButtonMethod "getFilenames" o = Gtk.FileChooser.FileChooserGetFilenamesMethodInfo
    ResolveFileChooserButtonMethod "getFiles" o = Gtk.FileChooser.FileChooserGetFilesMethodInfo
    ResolveFileChooserButtonMethod "getFilter" o = Gtk.FileChooser.FileChooserGetFilterMethodInfo
    ResolveFileChooserButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFileChooserButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFileChooserButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFileChooserButtonMethod "getFocusOnClick" o = FileChooserButtonGetFocusOnClickMethodInfo
    ResolveFileChooserButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFileChooserButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFileChooserButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFileChooserButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFileChooserButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFileChooserButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFileChooserButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFileChooserButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFileChooserButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFileChooserButtonMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveFileChooserButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFileChooserButtonMethod "getLocalOnly" o = Gtk.FileChooser.FileChooserGetLocalOnlyMethodInfo
    ResolveFileChooserButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFileChooserButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFileChooserButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFileChooserButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFileChooserButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFileChooserButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFileChooserButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFileChooserButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFileChooserButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFileChooserButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFileChooserButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFileChooserButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFileChooserButtonMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveFileChooserButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFileChooserButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFileChooserButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFileChooserButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFileChooserButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFileChooserButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFileChooserButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFileChooserButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFileChooserButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFileChooserButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFileChooserButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFileChooserButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFileChooserButtonMethod "getPreviewFile" o = Gtk.FileChooser.FileChooserGetPreviewFileMethodInfo
    ResolveFileChooserButtonMethod "getPreviewFilename" o = Gtk.FileChooser.FileChooserGetPreviewFilenameMethodInfo
    ResolveFileChooserButtonMethod "getPreviewUri" o = Gtk.FileChooser.FileChooserGetPreviewUriMethodInfo
    ResolveFileChooserButtonMethod "getPreviewWidget" o = Gtk.FileChooser.FileChooserGetPreviewWidgetMethodInfo
    ResolveFileChooserButtonMethod "getPreviewWidgetActive" o = Gtk.FileChooser.FileChooserGetPreviewWidgetActiveMethodInfo
    ResolveFileChooserButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileChooserButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileChooserButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFileChooserButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFileChooserButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFileChooserButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFileChooserButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFileChooserButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFileChooserButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFileChooserButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFileChooserButtonMethod "getSelectMultiple" o = Gtk.FileChooser.FileChooserGetSelectMultipleMethodInfo
    ResolveFileChooserButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFileChooserButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFileChooserButtonMethod "getShowHidden" o = Gtk.FileChooser.FileChooserGetShowHiddenMethodInfo
    ResolveFileChooserButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFileChooserButtonMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveFileChooserButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFileChooserButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFileChooserButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFileChooserButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFileChooserButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFileChooserButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFileChooserButtonMethod "getTitle" o = FileChooserButtonGetTitleMethodInfo
    ResolveFileChooserButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFileChooserButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFileChooserButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFileChooserButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFileChooserButtonMethod "getUri" o = Gtk.FileChooser.FileChooserGetUriMethodInfo
    ResolveFileChooserButtonMethod "getUris" o = Gtk.FileChooser.FileChooserGetUrisMethodInfo
    ResolveFileChooserButtonMethod "getUsePreviewLabel" o = Gtk.FileChooser.FileChooserGetUsePreviewLabelMethodInfo
    ResolveFileChooserButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFileChooserButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFileChooserButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFileChooserButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFileChooserButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFileChooserButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFileChooserButtonMethod "getWidthChars" o = FileChooserButtonGetWidthCharsMethodInfo
    ResolveFileChooserButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFileChooserButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFileChooserButtonMethod "setAction" o = Gtk.FileChooser.FileChooserSetActionMethodInfo
    ResolveFileChooserButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFileChooserButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFileChooserButtonMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveFileChooserButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFileChooserButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFileChooserButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFileChooserButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFileChooserButtonMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveFileChooserButtonMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveFileChooserButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFileChooserButtonMethod "setChoice" o = Gtk.FileChooser.FileChooserSetChoiceMethodInfo
    ResolveFileChooserButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFileChooserButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFileChooserButtonMethod "setCreateFolders" o = Gtk.FileChooser.FileChooserSetCreateFoldersMethodInfo
    ResolveFileChooserButtonMethod "setCurrentFolder" o = Gtk.FileChooser.FileChooserSetCurrentFolderMethodInfo
    ResolveFileChooserButtonMethod "setCurrentFolderFile" o = Gtk.FileChooser.FileChooserSetCurrentFolderFileMethodInfo
    ResolveFileChooserButtonMethod "setCurrentFolderUri" o = Gtk.FileChooser.FileChooserSetCurrentFolderUriMethodInfo
    ResolveFileChooserButtonMethod "setCurrentName" o = Gtk.FileChooser.FileChooserSetCurrentNameMethodInfo
    ResolveFileChooserButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileChooserButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileChooserButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFileChooserButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFileChooserButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFileChooserButtonMethod "setDoOverwriteConfirmation" o = Gtk.FileChooser.FileChooserSetDoOverwriteConfirmationMethodInfo
    ResolveFileChooserButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFileChooserButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFileChooserButtonMethod "setExtraWidget" o = Gtk.FileChooser.FileChooserSetExtraWidgetMethodInfo
    ResolveFileChooserButtonMethod "setFile" o = Gtk.FileChooser.FileChooserSetFileMethodInfo
    ResolveFileChooserButtonMethod "setFilename" o = Gtk.FileChooser.FileChooserSetFilenameMethodInfo
    ResolveFileChooserButtonMethod "setFilter" o = Gtk.FileChooser.FileChooserSetFilterMethodInfo
    ResolveFileChooserButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFileChooserButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFileChooserButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFileChooserButtonMethod "setFocusOnClick" o = FileChooserButtonSetFocusOnClickMethodInfo
    ResolveFileChooserButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFileChooserButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFileChooserButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFileChooserButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFileChooserButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFileChooserButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFileChooserButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFileChooserButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFileChooserButtonMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveFileChooserButtonMethod "setLocalOnly" o = Gtk.FileChooser.FileChooserSetLocalOnlyMethodInfo
    ResolveFileChooserButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFileChooserButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFileChooserButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFileChooserButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFileChooserButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFileChooserButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFileChooserButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFileChooserButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFileChooserButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFileChooserButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFileChooserButtonMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveFileChooserButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFileChooserButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFileChooserButtonMethod "setPreviewWidget" o = Gtk.FileChooser.FileChooserSetPreviewWidgetMethodInfo
    ResolveFileChooserButtonMethod "setPreviewWidgetActive" o = Gtk.FileChooser.FileChooserSetPreviewWidgetActiveMethodInfo
    ResolveFileChooserButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileChooserButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFileChooserButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFileChooserButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFileChooserButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFileChooserButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFileChooserButtonMethod "setSelectMultiple" o = Gtk.FileChooser.FileChooserSetSelectMultipleMethodInfo
    ResolveFileChooserButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFileChooserButtonMethod "setShowHidden" o = Gtk.FileChooser.FileChooserSetShowHiddenMethodInfo
    ResolveFileChooserButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFileChooserButtonMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveFileChooserButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFileChooserButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFileChooserButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFileChooserButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFileChooserButtonMethod "setTitle" o = FileChooserButtonSetTitleMethodInfo
    ResolveFileChooserButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFileChooserButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFileChooserButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFileChooserButtonMethod "setUri" o = Gtk.FileChooser.FileChooserSetUriMethodInfo
    ResolveFileChooserButtonMethod "setUsePreviewLabel" o = Gtk.FileChooser.FileChooserSetUsePreviewLabelMethodInfo
    ResolveFileChooserButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFileChooserButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFileChooserButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFileChooserButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFileChooserButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFileChooserButtonMethod "setWidthChars" o = FileChooserButtonSetWidthCharsMethodInfo
    ResolveFileChooserButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFileChooserButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileChooserButtonMethod t FileChooserButton, O.MethodInfo info FileChooserButton p) => OL.IsLabel t (FileChooserButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal FileChooserButton::file-set
-- | The [fileSet](#signal:fileSet) signal is emitted when the user selects a file.
-- 
-- Note that this signal is only emitted when the user
-- changes the file.
-- 
-- /Since: 2.12/
type FileChooserButtonFileSetCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FileChooserButtonFileSetCallback`@.
noFileChooserButtonFileSetCallback :: Maybe FileChooserButtonFileSetCallback
noFileChooserButtonFileSetCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FileChooserButtonFileSetCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FileChooserButtonFileSetCallback`.
foreign import ccall "wrapper"
    mk_FileChooserButtonFileSetCallback :: C_FileChooserButtonFileSetCallback -> IO (FunPtr C_FileChooserButtonFileSetCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FileChooserButtonFileSet :: MonadIO m => FileChooserButtonFileSetCallback -> m (GClosure C_FileChooserButtonFileSetCallback)
genClosure_FileChooserButtonFileSet cb = liftIO $ do
    let cb' = wrap_FileChooserButtonFileSetCallback cb
    mk_FileChooserButtonFileSetCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FileChooserButtonFileSetCallback` into a `C_FileChooserButtonFileSetCallback`.
wrap_FileChooserButtonFileSetCallback ::
    FileChooserButtonFileSetCallback ->
    C_FileChooserButtonFileSetCallback
wrap_FileChooserButtonFileSetCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [fileSet](#signal:fileSet) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fileChooserButton #fileSet callback
-- @
-- 
-- 
onFileChooserButtonFileSet :: (IsFileChooserButton a, MonadIO m) => a -> FileChooserButtonFileSetCallback -> m SignalHandlerId
onFileChooserButtonFileSet obj cb = liftIO $ do
    let cb' = wrap_FileChooserButtonFileSetCallback cb
    cb'' <- mk_FileChooserButtonFileSetCallback cb'
    connectSignalFunPtr obj "file-set" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [fileSet](#signal:fileSet) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fileChooserButton #fileSet callback
-- @
-- 
-- 
afterFileChooserButtonFileSet :: (IsFileChooserButton a, MonadIO m) => a -> FileChooserButtonFileSetCallback -> m SignalHandlerId
afterFileChooserButtonFileSet obj cb = liftIO $ do
    let cb' = wrap_FileChooserButtonFileSetCallback cb
    cb'' <- mk_FileChooserButtonFileSetCallback cb'
    connectSignalFunPtr obj "file-set" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FileChooserButtonFileSetSignalInfo
instance SignalInfo FileChooserButtonFileSetSignalInfo where
    type HaskellCallbackType FileChooserButtonFileSetSignalInfo = FileChooserButtonFileSetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FileChooserButtonFileSetCallback cb
        cb'' <- mk_FileChooserButtonFileSetCallback cb'
        connectSignalFunPtr obj "file-set" cb'' connectMode detail

#endif

-- VVV Prop "dialog"
   -- Type: TInterface (Name {namespace = "Gtk", name = "FileChooser"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@dialog@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserButtonDialog :: (IsFileChooserButton o, Gtk.FileChooser.IsFileChooser a) => a -> IO (GValueConstruct o)
constructFileChooserButtonDialog val = B.Properties.constructObjectPropertyObject "dialog" (Just val)

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonDialogPropertyInfo
instance AttrInfo FileChooserButtonDialogPropertyInfo where
    type AttrAllowedOps FileChooserButtonDialogPropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint FileChooserButtonDialogPropertyInfo = IsFileChooserButton
    type AttrSetTypeConstraint FileChooserButtonDialogPropertyInfo = Gtk.FileChooser.IsFileChooser
    type AttrTransferTypeConstraint FileChooserButtonDialogPropertyInfo = Gtk.FileChooser.IsFileChooser
    type AttrTransferType FileChooserButtonDialogPropertyInfo = Gtk.FileChooser.FileChooser
    type AttrGetType FileChooserButtonDialogPropertyInfo = ()
    type AttrLabel FileChooserButtonDialogPropertyInfo = "dialog"
    type AttrOrigin FileChooserButtonDialogPropertyInfo = FileChooserButton
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.FileChooser.FileChooser v
    attrConstruct = constructFileChooserButtonDialog
    attrClear = undefined
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserButton #title
-- @
getFileChooserButtonTitle :: (MonadIO m, IsFileChooserButton o) => o -> m T.Text
getFileChooserButtonTitle obj = liftIO $ checkUnexpectedNothing "getFileChooserButtonTitle" $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fileChooserButton [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setFileChooserButtonTitle :: (MonadIO m, IsFileChooserButton o) => o -> T.Text -> m ()
setFileChooserButtonTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserButtonTitle :: (IsFileChooserButton o) => T.Text -> IO (GValueConstruct o)
constructFileChooserButtonTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonTitlePropertyInfo
instance AttrInfo FileChooserButtonTitlePropertyInfo where
    type AttrAllowedOps FileChooserButtonTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FileChooserButtonTitlePropertyInfo = IsFileChooserButton
    type AttrSetTypeConstraint FileChooserButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FileChooserButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferType FileChooserButtonTitlePropertyInfo = T.Text
    type AttrGetType FileChooserButtonTitlePropertyInfo = T.Text
    type AttrLabel FileChooserButtonTitlePropertyInfo = "title"
    type AttrOrigin FileChooserButtonTitlePropertyInfo = FileChooserButton
    attrGet = getFileChooserButtonTitle
    attrSet = setFileChooserButtonTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructFileChooserButtonTitle
    attrClear = undefined
#endif

-- VVV Prop "width-chars"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@width-chars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fileChooserButton #widthChars
-- @
getFileChooserButtonWidthChars :: (MonadIO m, IsFileChooserButton o) => o -> m Int32
getFileChooserButtonWidthChars obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "width-chars"

-- | Set the value of the “@width-chars@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fileChooserButton [ #widthChars 'Data.GI.Base.Attributes.:=' value ]
-- @
setFileChooserButtonWidthChars :: (MonadIO m, IsFileChooserButton o) => o -> Int32 -> m ()
setFileChooserButtonWidthChars obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "width-chars" val

-- | Construct a `GValueConstruct` with valid value for the “@width-chars@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFileChooserButtonWidthChars :: (IsFileChooserButton o) => Int32 -> IO (GValueConstruct o)
constructFileChooserButtonWidthChars val = B.Properties.constructObjectPropertyInt32 "width-chars" val

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonWidthCharsPropertyInfo
instance AttrInfo FileChooserButtonWidthCharsPropertyInfo where
    type AttrAllowedOps FileChooserButtonWidthCharsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FileChooserButtonWidthCharsPropertyInfo = IsFileChooserButton
    type AttrSetTypeConstraint FileChooserButtonWidthCharsPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint FileChooserButtonWidthCharsPropertyInfo = (~) Int32
    type AttrTransferType FileChooserButtonWidthCharsPropertyInfo = Int32
    type AttrGetType FileChooserButtonWidthCharsPropertyInfo = Int32
    type AttrLabel FileChooserButtonWidthCharsPropertyInfo = "width-chars"
    type AttrOrigin FileChooserButtonWidthCharsPropertyInfo = FileChooserButton
    attrGet = getFileChooserButtonWidthChars
    attrSet = setFileChooserButtonWidthChars
    attrTransfer _ v = do
        return v
    attrConstruct = constructFileChooserButtonWidthChars
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FileChooserButton
type instance O.AttributeList FileChooserButton = FileChooserButtonAttributeList
type FileChooserButtonAttributeList = ('[ '("action", Gtk.FileChooser.FileChooserActionPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("createFolders", Gtk.FileChooser.FileChooserCreateFoldersPropertyInfo), '("dialog", FileChooserButtonDialogPropertyInfo), '("doOverwriteConfirmation", Gtk.FileChooser.FileChooserDoOverwriteConfirmationPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("extraWidget", Gtk.FileChooser.FileChooserExtraWidgetPropertyInfo), '("filter", Gtk.FileChooser.FileChooserFilterPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("localOnly", Gtk.FileChooser.FileChooserLocalOnlyPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewWidget", Gtk.FileChooser.FileChooserPreviewWidgetPropertyInfo), '("previewWidgetActive", Gtk.FileChooser.FileChooserPreviewWidgetActivePropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("selectMultiple", Gtk.FileChooser.FileChooserSelectMultiplePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showHidden", Gtk.FileChooser.FileChooserShowHiddenPropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", FileChooserButtonTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("usePreviewLabel", Gtk.FileChooser.FileChooserUsePreviewLabelPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthChars", FileChooserButtonWidthCharsPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fileChooserButtonDialog :: AttrLabelProxy "dialog"
fileChooserButtonDialog = AttrLabelProxy

fileChooserButtonTitle :: AttrLabelProxy "title"
fileChooserButtonTitle = AttrLabelProxy

fileChooserButtonWidthChars :: AttrLabelProxy "widthChars"
fileChooserButtonWidthChars = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FileChooserButton = FileChooserButtonSignalList
type FileChooserButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("confirmOverwrite", Gtk.FileChooser.FileChooserConfirmOverwriteSignalInfo), '("currentFolderChanged", Gtk.FileChooser.FileChooserCurrentFolderChangedSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("fileActivated", Gtk.FileChooser.FileChooserFileActivatedSignalInfo), '("fileSet", FileChooserButtonFileSetSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionChanged", Gtk.FileChooser.FileChooserSelectionChangedSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("updatePreview", Gtk.FileChooser.FileChooserUpdatePreviewSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FileChooserButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the title of the browse dialog."
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
--                 { rawDocText = Just "the open mode for the widget."
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
--                  Name { namespace = "Gtk" , name = "FileChooserButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_chooser_button_new" gtk_file_chooser_button_new :: 
    CString ->                              -- title : TBasicType TUTF8
    CUInt ->                                -- action : TInterface (Name {namespace = "Gtk", name = "FileChooserAction"})
    IO (Ptr FileChooserButton)

-- | Creates a new file-selecting button widget.
-- 
-- /Since: 2.6/
fileChooserButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@title@/: the title of the browse dialog.
    -> Gtk.Enums.FileChooserAction
    -- ^ /@action@/: the open mode for the widget.
    -> m FileChooserButton
    -- ^ __Returns:__ a new button widget.
fileChooserButtonNew title action = liftIO $ do
    title' <- textToCString title
    let action' = (fromIntegral . fromEnum) action
    result <- gtk_file_chooser_button_new title' action'
    checkUnexpectedReturnNULL "fileChooserButtonNew" result
    result' <- (newObject FileChooserButton) result
    freeMem title'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FileChooserButton::new_with_dialog
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the widget to use as dialog"
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
--                  Name { namespace = "Gtk" , name = "FileChooserButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_chooser_button_new_with_dialog" gtk_file_chooser_button_new_with_dialog :: 
    Ptr Gtk.Dialog.Dialog ->                -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    IO (Ptr FileChooserButton)

-- | Creates a t'GI.Gtk.Objects.FileChooserButton.FileChooserButton' widget which uses /@dialog@/ as its
-- file-picking window.
-- 
-- Note that /@dialog@/ must be a t'GI.Gtk.Objects.Dialog.Dialog' (or subclass) which
-- implements the t'GI.Gtk.Interfaces.FileChooser.FileChooser' interface and must not have
-- 'GI.Gtk.Flags.DialogFlagsDestroyWithParent' set.
-- 
-- Also note that the dialog needs to have its confirmative button
-- added with response 'GI.Gtk.Enums.ResponseTypeAccept' or 'GI.Gtk.Enums.ResponseTypeOk' in
-- order for the button to take over the file selected in the dialog.
-- 
-- /Since: 2.6/
fileChooserButtonNewWithDialog ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Dialog.IsDialog a) =>
    a
    -- ^ /@dialog@/: the widget to use as dialog
    -> m FileChooserButton
    -- ^ __Returns:__ a new button widget.
fileChooserButtonNewWithDialog dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_file_chooser_button_new_with_dialog dialog'
    checkUnexpectedReturnNULL "fileChooserButtonNewWithDialog" result
    result' <- (newObject FileChooserButton) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FileChooserButton::get_focus_on_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileChooserButton"
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

foreign import ccall "gtk_file_chooser_button_get_focus_on_click" gtk_file_chooser_button_get_focus_on_click :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    IO CInt

{-# DEPRECATED fileChooserButtonGetFocusOnClick ["(Since version 3.20)","Use 'GI.Gtk.Objects.Widget.widgetGetFocusOnClick' instead"] #-}
-- | Returns whether the button grabs focus when it is clicked with the mouse.
-- See 'GI.Gtk.Objects.FileChooserButton.fileChooserButtonSetFocusOnClick'.
-- 
-- /Since: 2.10/
fileChooserButtonGetFocusOnClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.FileChooserButton.FileChooserButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the button grabs focus when it is clicked with
    --               the mouse.
fileChooserButtonGetFocusOnClick button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_file_chooser_button_get_focus_on_click button'
    let result' = (/= 0) result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonGetFocusOnClickMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonGetFocusOnClickMethodInfo a signature where
    overloadedMethod = fileChooserButtonGetFocusOnClick

#endif

-- method FileChooserButton::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the button widget to examine."
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

foreign import ccall "gtk_file_chooser_button_get_title" gtk_file_chooser_button_get_title :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    IO CString

-- | Retrieves the title of the browse dialog used by /@button@/. The returned value
-- should not be modified or freed.
-- 
-- /Since: 2.6/
fileChooserButtonGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: the button widget to examine.
    -> m T.Text
    -- ^ __Returns:__ a pointer to the browse dialog’s title.
fileChooserButtonGetTitle button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_file_chooser_button_get_title button'
    checkUnexpectedReturnNULL "fileChooserButtonGetTitle" result
    result' <- cstringToText result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonGetTitleMethodInfo a signature where
    overloadedMethod = fileChooserButtonGetTitle

#endif

-- method FileChooserButton::get_width_chars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the button widget to examine."
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_file_chooser_button_get_width_chars" gtk_file_chooser_button_get_width_chars :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    IO Int32

-- | Retrieves the width in characters of the /@button@/ widget’s entry and\/or label.
-- 
-- /Since: 2.6/
fileChooserButtonGetWidthChars ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: the button widget to examine.
    -> m Int32
    -- ^ __Returns:__ an integer width (in characters) that the button will use to size itself.
fileChooserButtonGetWidthChars button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_file_chooser_button_get_width_chars button'
    touchManagedPtr button
    return result

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonGetWidthCharsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonGetWidthCharsMethodInfo a signature where
    overloadedMethod = fileChooserButtonGetWidthChars

#endif

-- method FileChooserButton::set_focus_on_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFileChooserButton"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "focus_on_click"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether the button grabs focus when clicked with the mouse"
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

foreign import ccall "gtk_file_chooser_button_set_focus_on_click" gtk_file_chooser_button_set_focus_on_click :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    CInt ->                                 -- focus_on_click : TBasicType TBoolean
    IO ()

{-# DEPRECATED fileChooserButtonSetFocusOnClick ["(Since version 3.20)","Use 'GI.Gtk.Objects.Widget.widgetSetFocusOnClick' instead"] #-}
-- | Sets whether the button will grab focus when it is clicked with the mouse.
-- Making mouse clicks not grab focus is useful in places like toolbars where
-- you don’t want the keyboard focus removed from the main area of the
-- application.
-- 
-- /Since: 2.10/
fileChooserButtonSetFocusOnClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.FileChooserButton.FileChooserButton'
    -> Bool
    -- ^ /@focusOnClick@/: whether the button grabs focus when clicked with the mouse
    -> m ()
fileChooserButtonSetFocusOnClick button focusOnClick = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    let focusOnClick' = (fromIntegral . fromEnum) focusOnClick
    gtk_file_chooser_button_set_focus_on_click button' focusOnClick'
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonSetFocusOnClickMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonSetFocusOnClickMethodInfo a signature where
    overloadedMethod = fileChooserButtonSetFocusOnClick

#endif

-- method FileChooserButton::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the button widget to modify."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new browse dialog title."
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

foreign import ccall "gtk_file_chooser_button_set_title" gtk_file_chooser_button_set_title :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

-- | Modifies the /@title@/ of the browse dialog used by /@button@/.
-- 
-- /Since: 2.6/
fileChooserButtonSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: the button widget to modify.
    -> T.Text
    -- ^ /@title@/: the new browse dialog title.
    -> m ()
fileChooserButtonSetTitle button title = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    title' <- textToCString title
    gtk_file_chooser_button_set_title button' title'
    touchManagedPtr button
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonSetTitleMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonSetTitleMethodInfo a signature where
    overloadedMethod = fileChooserButtonSetTitle

#endif

-- method FileChooserButton::set_width_chars
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FileChooserButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the button widget to examine."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_chars"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new width, in characters."
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

foreign import ccall "gtk_file_chooser_button_set_width_chars" gtk_file_chooser_button_set_width_chars :: 
    Ptr FileChooserButton ->                -- button : TInterface (Name {namespace = "Gtk", name = "FileChooserButton"})
    Int32 ->                                -- n_chars : TBasicType TInt
    IO ()

-- | Sets the width (in characters) that /@button@/ will use to /@nChars@/.
-- 
-- /Since: 2.6/
fileChooserButtonSetWidthChars ::
    (B.CallStack.HasCallStack, MonadIO m, IsFileChooserButton a) =>
    a
    -- ^ /@button@/: the button widget to examine.
    -> Int32
    -- ^ /@nChars@/: the new width, in characters.
    -> m ()
fileChooserButtonSetWidthChars button nChars = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    gtk_file_chooser_button_set_width_chars button' nChars
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data FileChooserButtonSetWidthCharsMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsFileChooserButton a) => O.MethodInfo FileChooserButtonSetWidthCharsMethodInfo a signature where
    overloadedMethod = fileChooserButtonSetWidthChars

#endif

