{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkShortcutsWindow shows brief information about the keyboard shortcuts
-- and gestures of an application. The shortcuts can be grouped, and you can
-- have multiple sections in this window, corresponding to the major modes of
-- your application.
-- 
-- Additionally, the shortcuts can be filtered by the current view, to avoid
-- showing information that is not relevant in the current application context.
-- 
-- The recommended way to construct a GtkShortcutsWindow is with GtkBuilder,
-- by populating a t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow' with one or more t'GI.Gtk.Objects.ShortcutsSection.ShortcutsSection'
-- objects, which contain @/GtkShortcutsGroups/@ that in turn contain objects of
-- class t'GI.Gtk.Objects.ShortcutsShortcut.ShortcutsShortcut'.
-- 
-- = A simple example:
-- 
-- <<https://developer.gnome.org/gtk3/stable/gedit-shortcuts.png>>
-- 
-- This example has as single section. As you can see, the shortcut groups
-- are arranged in columns, and spread across several pages if there are too
-- many to find on a single page.
-- 
-- The .ui file for this example can be found <https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-gedit.ui here>.
-- 
-- = An example with multiple views:
-- 
-- <<https://developer.gnome.org/gtk3/stable/clocks-shortcuts.png>>
-- 
-- This example shows a t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow' that has been configured to show only
-- the shortcuts relevant to the \"stopwatch\" view.
-- 
-- The .ui file for this example can be found <https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-clocks.ui here>.
-- 
-- = An example with multiple sections:
-- 
-- <<https://developer.gnome.org/gtk3/stable/builder-shortcuts.png>>
-- 
-- This example shows a t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow' with two sections, \"Editor Shortcuts\"
-- and \"Terminal Shortcuts\".
-- 
-- The .ui file for this example can be found <https://git.gnome.org/browse/gtk+/tree/demos/gtk-demo/shortcuts-builder.ui here>.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ShortcutsWindow
    ( 

-- * Exported types
    ShortcutsWindow(..)                     ,
    IsShortcutsWindow                       ,
    toShortcutsWindow                       ,
    noShortcutsWindow                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveShortcutsWindowMethod            ,
#endif




 -- * Properties
-- ** sectionName #attr:sectionName#
-- | The name of the section to show.
-- 
-- This should be the section-name of one of the t'GI.Gtk.Objects.ShortcutsSection.ShortcutsSection'
-- objects that are in this shortcuts window.

#if defined(ENABLE_OVERLOADING)
    ShortcutsWindowSectionNamePropertyInfo  ,
#endif
    clearShortcutsWindowSectionName         ,
    constructShortcutsWindowSectionName     ,
    getShortcutsWindowSectionName           ,
    setShortcutsWindowSectionName           ,
#if defined(ENABLE_OVERLOADING)
    shortcutsWindowSectionName              ,
#endif


-- ** viewName #attr:viewName#
-- | The view name by which to filter the contents.
-- 
-- This should correspond to the t'GI.Gtk.Objects.ShortcutsGroup.ShortcutsGroup':@/view/@ property of some of
-- the t'GI.Gtk.Objects.ShortcutsGroup.ShortcutsGroup' objects that are inside this shortcuts window.
-- 
-- Set this to 'P.Nothing' to show all groups.

#if defined(ENABLE_OVERLOADING)
    ShortcutsWindowViewNamePropertyInfo     ,
#endif
    clearShortcutsWindowViewName            ,
    constructShortcutsWindowViewName        ,
    getShortcutsWindowViewName              ,
    setShortcutsWindowViewName              ,
#if defined(ENABLE_OVERLOADING)
    shortcutsWindowViewName                 ,
#endif




 -- * Signals
-- ** close #signal:close#

    C_ShortcutsWindowCloseCallback          ,
    ShortcutsWindowCloseCallback            ,
#if defined(ENABLE_OVERLOADING)
    ShortcutsWindowCloseSignalInfo          ,
#endif
    afterShortcutsWindowClose               ,
    genClosure_ShortcutsWindowClose         ,
    mk_ShortcutsWindowCloseCallback         ,
    noShortcutsWindowCloseCallback          ,
    onShortcutsWindowClose                  ,
    wrap_ShortcutsWindowCloseCallback       ,


-- ** search #signal:search#

    C_ShortcutsWindowSearchCallback         ,
    ShortcutsWindowSearchCallback           ,
#if defined(ENABLE_OVERLOADING)
    ShortcutsWindowSearchSignalInfo         ,
#endif
    afterShortcutsWindowSearch              ,
    genClosure_ShortcutsWindowSearch        ,
    mk_ShortcutsWindowSearchCallback        ,
    noShortcutsWindowSearchCallback         ,
    onShortcutsWindowSearch                 ,
    wrap_ShortcutsWindowSearchCallback      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype ShortcutsWindow = ShortcutsWindow (ManagedPtr ShortcutsWindow)
    deriving (Eq)
foreign import ccall "gtk_shortcuts_window_get_type"
    c_gtk_shortcuts_window_get_type :: IO GType

instance GObject ShortcutsWindow where
    gobjectType = c_gtk_shortcuts_window_get_type
    

-- | Convert 'ShortcutsWindow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ShortcutsWindow where
    toGValue o = do
        gtype <- c_gtk_shortcuts_window_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ShortcutsWindow)
        B.ManagedPtr.newObject ShortcutsWindow ptr
        
    

-- | Type class for types which can be safely cast to `ShortcutsWindow`, for instance with `toShortcutsWindow`.
class (GObject o, O.IsDescendantOf ShortcutsWindow o) => IsShortcutsWindow o
instance (GObject o, O.IsDescendantOf ShortcutsWindow o) => IsShortcutsWindow o

instance O.HasParentTypes ShortcutsWindow
type instance O.ParentTypes ShortcutsWindow = '[Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `ShortcutsWindow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toShortcutsWindow :: (MonadIO m, IsShortcutsWindow o) => o -> m ShortcutsWindow
toShortcutsWindow = liftIO . unsafeCastTo ShortcutsWindow

-- | A convenience alias for `Nothing` :: `Maybe` `ShortcutsWindow`.
noShortcutsWindow :: Maybe ShortcutsWindow
noShortcutsWindow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveShortcutsWindowMethod (t :: Symbol) (o :: *) :: * where
    ResolveShortcutsWindowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveShortcutsWindowMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveShortcutsWindowMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveShortcutsWindowMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveShortcutsWindowMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveShortcutsWindowMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveShortcutsWindowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveShortcutsWindowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveShortcutsWindowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveShortcutsWindowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveShortcutsWindowMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveShortcutsWindowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveShortcutsWindowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveShortcutsWindowMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveShortcutsWindowMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveShortcutsWindowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveShortcutsWindowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveShortcutsWindowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveShortcutsWindowMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveShortcutsWindowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveShortcutsWindowMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveShortcutsWindowMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveShortcutsWindowMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveShortcutsWindowMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveShortcutsWindowMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveShortcutsWindowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveShortcutsWindowMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveShortcutsWindowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveShortcutsWindowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveShortcutsWindowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveShortcutsWindowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveShortcutsWindowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveShortcutsWindowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveShortcutsWindowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveShortcutsWindowMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveShortcutsWindowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveShortcutsWindowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveShortcutsWindowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveShortcutsWindowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveShortcutsWindowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveShortcutsWindowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveShortcutsWindowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveShortcutsWindowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveShortcutsWindowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveShortcutsWindowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveShortcutsWindowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveShortcutsWindowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveShortcutsWindowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveShortcutsWindowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveShortcutsWindowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveShortcutsWindowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveShortcutsWindowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveShortcutsWindowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveShortcutsWindowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveShortcutsWindowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveShortcutsWindowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveShortcutsWindowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveShortcutsWindowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveShortcutsWindowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveShortcutsWindowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveShortcutsWindowMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveShortcutsWindowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveShortcutsWindowMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveShortcutsWindowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveShortcutsWindowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveShortcutsWindowMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveShortcutsWindowMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveShortcutsWindowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveShortcutsWindowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveShortcutsWindowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveShortcutsWindowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveShortcutsWindowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveShortcutsWindowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveShortcutsWindowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveShortcutsWindowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveShortcutsWindowMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveShortcutsWindowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveShortcutsWindowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveShortcutsWindowMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveShortcutsWindowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveShortcutsWindowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveShortcutsWindowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveShortcutsWindowMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveShortcutsWindowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveShortcutsWindowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveShortcutsWindowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveShortcutsWindowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveShortcutsWindowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveShortcutsWindowMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveShortcutsWindowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveShortcutsWindowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveShortcutsWindowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveShortcutsWindowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveShortcutsWindowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveShortcutsWindowMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveShortcutsWindowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveShortcutsWindowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveShortcutsWindowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveShortcutsWindowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveShortcutsWindowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveShortcutsWindowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveShortcutsWindowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveShortcutsWindowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveShortcutsWindowMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveShortcutsWindowMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveShortcutsWindowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveShortcutsWindowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveShortcutsWindowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveShortcutsWindowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveShortcutsWindowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveShortcutsWindowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveShortcutsWindowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveShortcutsWindowMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveShortcutsWindowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveShortcutsWindowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveShortcutsWindowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveShortcutsWindowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveShortcutsWindowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveShortcutsWindowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveShortcutsWindowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveShortcutsWindowMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveShortcutsWindowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveShortcutsWindowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveShortcutsWindowMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveShortcutsWindowMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveShortcutsWindowMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveShortcutsWindowMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveShortcutsWindowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveShortcutsWindowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveShortcutsWindowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveShortcutsWindowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveShortcutsWindowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveShortcutsWindowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveShortcutsWindowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveShortcutsWindowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveShortcutsWindowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveShortcutsWindowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveShortcutsWindowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveShortcutsWindowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveShortcutsWindowMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveShortcutsWindowMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveShortcutsWindowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveShortcutsWindowMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveShortcutsWindowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveShortcutsWindowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveShortcutsWindowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveShortcutsWindowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveShortcutsWindowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveShortcutsWindowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveShortcutsWindowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveShortcutsWindowMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveShortcutsWindowMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveShortcutsWindowMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveShortcutsWindowMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveShortcutsWindowMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveShortcutsWindowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveShortcutsWindowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveShortcutsWindowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveShortcutsWindowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveShortcutsWindowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveShortcutsWindowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveShortcutsWindowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveShortcutsWindowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveShortcutsWindowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveShortcutsWindowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveShortcutsWindowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveShortcutsWindowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveShortcutsWindowMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveShortcutsWindowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveShortcutsWindowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveShortcutsWindowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveShortcutsWindowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveShortcutsWindowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveShortcutsWindowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveShortcutsWindowMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveShortcutsWindowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveShortcutsWindowMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveShortcutsWindowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveShortcutsWindowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveShortcutsWindowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveShortcutsWindowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveShortcutsWindowMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveShortcutsWindowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveShortcutsWindowMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveShortcutsWindowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveShortcutsWindowMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveShortcutsWindowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveShortcutsWindowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveShortcutsWindowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveShortcutsWindowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveShortcutsWindowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveShortcutsWindowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveShortcutsWindowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveShortcutsWindowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveShortcutsWindowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveShortcutsWindowMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveShortcutsWindowMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveShortcutsWindowMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveShortcutsWindowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveShortcutsWindowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveShortcutsWindowMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveShortcutsWindowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveShortcutsWindowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveShortcutsWindowMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveShortcutsWindowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveShortcutsWindowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveShortcutsWindowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveShortcutsWindowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveShortcutsWindowMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveShortcutsWindowMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveShortcutsWindowMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveShortcutsWindowMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveShortcutsWindowMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveShortcutsWindowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveShortcutsWindowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveShortcutsWindowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveShortcutsWindowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveShortcutsWindowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveShortcutsWindowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveShortcutsWindowMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveShortcutsWindowMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveShortcutsWindowMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveShortcutsWindowMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveShortcutsWindowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveShortcutsWindowMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveShortcutsWindowMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveShortcutsWindowMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveShortcutsWindowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveShortcutsWindowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveShortcutsWindowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveShortcutsWindowMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveShortcutsWindowMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveShortcutsWindowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveShortcutsWindowMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveShortcutsWindowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveShortcutsWindowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveShortcutsWindowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveShortcutsWindowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveShortcutsWindowMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveShortcutsWindowMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveShortcutsWindowMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveShortcutsWindowMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveShortcutsWindowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveShortcutsWindowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveShortcutsWindowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveShortcutsWindowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveShortcutsWindowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveShortcutsWindowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveShortcutsWindowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveShortcutsWindowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveShortcutsWindowMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveShortcutsWindowMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveShortcutsWindowMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveShortcutsWindowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveShortcutsWindowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveShortcutsWindowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveShortcutsWindowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveShortcutsWindowMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveShortcutsWindowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveShortcutsWindowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveShortcutsWindowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveShortcutsWindowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveShortcutsWindowMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveShortcutsWindowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveShortcutsWindowMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveShortcutsWindowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveShortcutsWindowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveShortcutsWindowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveShortcutsWindowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveShortcutsWindowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveShortcutsWindowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveShortcutsWindowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveShortcutsWindowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveShortcutsWindowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveShortcutsWindowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveShortcutsWindowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveShortcutsWindowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveShortcutsWindowMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveShortcutsWindowMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveShortcutsWindowMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveShortcutsWindowMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveShortcutsWindowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveShortcutsWindowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveShortcutsWindowMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveShortcutsWindowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveShortcutsWindowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveShortcutsWindowMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveShortcutsWindowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveShortcutsWindowMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveShortcutsWindowMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveShortcutsWindowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveShortcutsWindowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveShortcutsWindowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveShortcutsWindowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveShortcutsWindowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveShortcutsWindowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveShortcutsWindowMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveShortcutsWindowMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveShortcutsWindowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveShortcutsWindowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveShortcutsWindowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveShortcutsWindowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveShortcutsWindowMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveShortcutsWindowMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveShortcutsWindowMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveShortcutsWindowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveShortcutsWindowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveShortcutsWindowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveShortcutsWindowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveShortcutsWindowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveShortcutsWindowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveShortcutsWindowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveShortcutsWindowMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveShortcutsWindowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveShortcutsWindowMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveShortcutsWindowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveShortcutsWindowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveShortcutsWindowMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveShortcutsWindowMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveShortcutsWindowMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveShortcutsWindowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveShortcutsWindowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveShortcutsWindowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveShortcutsWindowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveShortcutsWindowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveShortcutsWindowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveShortcutsWindowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveShortcutsWindowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveShortcutsWindowMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveShortcutsWindowMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveShortcutsWindowMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveShortcutsWindowMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveShortcutsWindowMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveShortcutsWindowMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveShortcutsWindowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveShortcutsWindowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveShortcutsWindowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveShortcutsWindowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveShortcutsWindowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveShortcutsWindowMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveShortcutsWindowMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveShortcutsWindowMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveShortcutsWindowMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveShortcutsWindowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveShortcutsWindowMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveShortcutsWindowMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveShortcutsWindowMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveShortcutsWindowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveShortcutsWindowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveShortcutsWindowMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveShortcutsWindowMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveShortcutsWindowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveShortcutsWindowMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveShortcutsWindowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveShortcutsWindowMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveShortcutsWindowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveShortcutsWindowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveShortcutsWindowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveShortcutsWindowMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveShortcutsWindowMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveShortcutsWindowMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveShortcutsWindowMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveShortcutsWindowMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveShortcutsWindowMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveShortcutsWindowMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveShortcutsWindowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveShortcutsWindowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveShortcutsWindowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveShortcutsWindowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveShortcutsWindowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveShortcutsWindowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveShortcutsWindowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveShortcutsWindowMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveShortcutsWindowMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveShortcutsWindowMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveShortcutsWindowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveShortcutsWindowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveShortcutsWindowMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveShortcutsWindowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveShortcutsWindowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveShortcutsWindowMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveShortcutsWindowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveShortcutsWindowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveShortcutsWindowMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveShortcutsWindowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveShortcutsWindowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveShortcutsWindowMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveShortcutsWindowMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveShortcutsWindowMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveShortcutsWindowMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveShortcutsWindowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveShortcutsWindowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveShortcutsWindowMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveShortcutsWindowMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveShortcutsWindowMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveShortcutsWindowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveShortcutsWindowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveShortcutsWindowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveShortcutsWindowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveShortcutsWindowMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveShortcutsWindowMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveShortcutsWindowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveShortcutsWindowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveShortcutsWindowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveShortcutsWindowMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveShortcutsWindowMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveShortcutsWindowMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveShortcutsWindowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveShortcutsWindowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveShortcutsWindowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveShortcutsWindowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveShortcutsWindowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveShortcutsWindowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveShortcutsWindowMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveShortcutsWindowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveShortcutsWindowMethod t ShortcutsWindow, O.MethodInfo info ShortcutsWindow p) => OL.IsLabel t (ShortcutsWindow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ShortcutsWindow::close
-- | The [close](#signal:close) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user uses a keybinding to close
-- the window.
-- 
-- The default binding for this signal is the Escape key.
type ShortcutsWindowCloseCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ShortcutsWindowCloseCallback`@.
noShortcutsWindowCloseCallback :: Maybe ShortcutsWindowCloseCallback
noShortcutsWindowCloseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ShortcutsWindowCloseCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ShortcutsWindowCloseCallback`.
foreign import ccall "wrapper"
    mk_ShortcutsWindowCloseCallback :: C_ShortcutsWindowCloseCallback -> IO (FunPtr C_ShortcutsWindowCloseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ShortcutsWindowClose :: MonadIO m => ShortcutsWindowCloseCallback -> m (GClosure C_ShortcutsWindowCloseCallback)
genClosure_ShortcutsWindowClose cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowCloseCallback cb
    mk_ShortcutsWindowCloseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ShortcutsWindowCloseCallback` into a `C_ShortcutsWindowCloseCallback`.
wrap_ShortcutsWindowCloseCallback ::
    ShortcutsWindowCloseCallback ->
    C_ShortcutsWindowCloseCallback
wrap_ShortcutsWindowCloseCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' shortcutsWindow #close callback
-- @
-- 
-- 
onShortcutsWindowClose :: (IsShortcutsWindow a, MonadIO m) => a -> ShortcutsWindowCloseCallback -> m SignalHandlerId
onShortcutsWindowClose obj cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowCloseCallback cb
    cb'' <- mk_ShortcutsWindowCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' shortcutsWindow #close callback
-- @
-- 
-- 
afterShortcutsWindowClose :: (IsShortcutsWindow a, MonadIO m) => a -> ShortcutsWindowCloseCallback -> m SignalHandlerId
afterShortcutsWindowClose obj cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowCloseCallback cb
    cb'' <- mk_ShortcutsWindowCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ShortcutsWindowCloseSignalInfo
instance SignalInfo ShortcutsWindowCloseSignalInfo where
    type HaskellCallbackType ShortcutsWindowCloseSignalInfo = ShortcutsWindowCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ShortcutsWindowCloseCallback cb
        cb'' <- mk_ShortcutsWindowCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail

#endif

-- signal ShortcutsWindow::search
-- | The [search](#signal:search) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user uses a keybinding to start a search.
-- 
-- The default binding for this signal is Control-F.
type ShortcutsWindowSearchCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ShortcutsWindowSearchCallback`@.
noShortcutsWindowSearchCallback :: Maybe ShortcutsWindowSearchCallback
noShortcutsWindowSearchCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ShortcutsWindowSearchCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ShortcutsWindowSearchCallback`.
foreign import ccall "wrapper"
    mk_ShortcutsWindowSearchCallback :: C_ShortcutsWindowSearchCallback -> IO (FunPtr C_ShortcutsWindowSearchCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ShortcutsWindowSearch :: MonadIO m => ShortcutsWindowSearchCallback -> m (GClosure C_ShortcutsWindowSearchCallback)
genClosure_ShortcutsWindowSearch cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowSearchCallback cb
    mk_ShortcutsWindowSearchCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ShortcutsWindowSearchCallback` into a `C_ShortcutsWindowSearchCallback`.
wrap_ShortcutsWindowSearchCallback ::
    ShortcutsWindowSearchCallback ->
    C_ShortcutsWindowSearchCallback
wrap_ShortcutsWindowSearchCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [search](#signal:search) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' shortcutsWindow #search callback
-- @
-- 
-- 
onShortcutsWindowSearch :: (IsShortcutsWindow a, MonadIO m) => a -> ShortcutsWindowSearchCallback -> m SignalHandlerId
onShortcutsWindowSearch obj cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowSearchCallback cb
    cb'' <- mk_ShortcutsWindowSearchCallback cb'
    connectSignalFunPtr obj "search" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [search](#signal:search) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' shortcutsWindow #search callback
-- @
-- 
-- 
afterShortcutsWindowSearch :: (IsShortcutsWindow a, MonadIO m) => a -> ShortcutsWindowSearchCallback -> m SignalHandlerId
afterShortcutsWindowSearch obj cb = liftIO $ do
    let cb' = wrap_ShortcutsWindowSearchCallback cb
    cb'' <- mk_ShortcutsWindowSearchCallback cb'
    connectSignalFunPtr obj "search" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ShortcutsWindowSearchSignalInfo
instance SignalInfo ShortcutsWindowSearchSignalInfo where
    type HaskellCallbackType ShortcutsWindowSearchSignalInfo = ShortcutsWindowSearchCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ShortcutsWindowSearchCallback cb
        cb'' <- mk_ShortcutsWindowSearchCallback cb'
        connectSignalFunPtr obj "search" cb'' connectMode detail

#endif

-- VVV Prop "section-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@section-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsWindow #sectionName
-- @
getShortcutsWindowSectionName :: (MonadIO m, IsShortcutsWindow o) => o -> m (Maybe T.Text)
getShortcutsWindowSectionName obj = liftIO $ B.Properties.getObjectPropertyString obj "section-name"

-- | Set the value of the “@section-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsWindow [ #sectionName 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsWindowSectionName :: (MonadIO m, IsShortcutsWindow o) => o -> T.Text -> m ()
setShortcutsWindowSectionName obj val = liftIO $ B.Properties.setObjectPropertyString obj "section-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@section-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsWindowSectionName :: (IsShortcutsWindow o) => T.Text -> IO (GValueConstruct o)
constructShortcutsWindowSectionName val = B.Properties.constructObjectPropertyString "section-name" (Just val)

-- | Set the value of the “@section-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #sectionName
-- @
clearShortcutsWindowSectionName :: (MonadIO m, IsShortcutsWindow o) => o -> m ()
clearShortcutsWindowSectionName obj = liftIO $ B.Properties.setObjectPropertyString obj "section-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsWindowSectionNamePropertyInfo
instance AttrInfo ShortcutsWindowSectionNamePropertyInfo where
    type AttrAllowedOps ShortcutsWindowSectionNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsWindowSectionNamePropertyInfo = IsShortcutsWindow
    type AttrSetTypeConstraint ShortcutsWindowSectionNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsWindowSectionNamePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsWindowSectionNamePropertyInfo = T.Text
    type AttrGetType ShortcutsWindowSectionNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsWindowSectionNamePropertyInfo = "section-name"
    type AttrOrigin ShortcutsWindowSectionNamePropertyInfo = ShortcutsWindow
    attrGet = getShortcutsWindowSectionName
    attrSet = setShortcutsWindowSectionName
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsWindowSectionName
    attrClear = clearShortcutsWindowSectionName
#endif

-- VVV Prop "view-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@view-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsWindow #viewName
-- @
getShortcutsWindowViewName :: (MonadIO m, IsShortcutsWindow o) => o -> m (Maybe T.Text)
getShortcutsWindowViewName obj = liftIO $ B.Properties.getObjectPropertyString obj "view-name"

-- | Set the value of the “@view-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsWindow [ #viewName 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsWindowViewName :: (MonadIO m, IsShortcutsWindow o) => o -> T.Text -> m ()
setShortcutsWindowViewName obj val = liftIO $ B.Properties.setObjectPropertyString obj "view-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@view-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsWindowViewName :: (IsShortcutsWindow o) => T.Text -> IO (GValueConstruct o)
constructShortcutsWindowViewName val = B.Properties.constructObjectPropertyString "view-name" (Just val)

-- | Set the value of the “@view-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #viewName
-- @
clearShortcutsWindowViewName :: (MonadIO m, IsShortcutsWindow o) => o -> m ()
clearShortcutsWindowViewName obj = liftIO $ B.Properties.setObjectPropertyString obj "view-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsWindowViewNamePropertyInfo
instance AttrInfo ShortcutsWindowViewNamePropertyInfo where
    type AttrAllowedOps ShortcutsWindowViewNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsWindowViewNamePropertyInfo = IsShortcutsWindow
    type AttrSetTypeConstraint ShortcutsWindowViewNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsWindowViewNamePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsWindowViewNamePropertyInfo = T.Text
    type AttrGetType ShortcutsWindowViewNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsWindowViewNamePropertyInfo = "view-name"
    type AttrOrigin ShortcutsWindowViewNamePropertyInfo = ShortcutsWindow
    attrGet = getShortcutsWindowViewName
    attrSet = setShortcutsWindowViewName
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsWindowViewName
    attrClear = clearShortcutsWindowViewName
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ShortcutsWindow
type instance O.AttributeList ShortcutsWindow = ShortcutsWindowAttributeList
type ShortcutsWindowAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sectionName", ShortcutsWindowSectionNamePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("viewName", ShortcutsWindowViewNamePropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
shortcutsWindowSectionName :: AttrLabelProxy "sectionName"
shortcutsWindowSectionName = AttrLabelProxy

shortcutsWindowViewName :: AttrLabelProxy "viewName"
shortcutsWindowViewName = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ShortcutsWindow = ShortcutsWindowSignalList
type ShortcutsWindowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", ShortcutsWindowCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("search", ShortcutsWindowSearchSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

