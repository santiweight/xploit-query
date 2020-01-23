{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow' is a t'GI.Gtk.Objects.Window.Window' subclass that offers some
-- extra functionality for better integration with t'GI.Gtk.Objects.Application.Application'
-- features.  Notably, it can handle both the application menu as well
-- as the menubar. See 'GI.Gtk.Objects.Application.applicationSetAppMenu' and
-- 'GI.Gtk.Objects.Application.applicationSetMenubar'.
-- 
-- This class implements the t'GI.Gio.Interfaces.ActionGroup.ActionGroup' and t'GI.Gio.Interfaces.ActionMap.ActionMap' interfaces,
-- to let you add window-specific actions that will be exported by the
-- associated t'GI.Gtk.Objects.Application.Application', together with its application-wide
-- actions.  Window-specific actions are prefixed with the “win.”
-- prefix and application-wide actions are prefixed with the “app.”
-- prefix.  Actions must be addressed with the prefixed name when
-- referring to them from a t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- Note that widgets that are placed inside a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
-- can also activate these actions, if they implement the
-- t'GI.Gtk.Interfaces.Actionable.Actionable' interface.
-- 
-- As with t'GI.Gtk.Objects.Application.Application', the GDK lock will be acquired when
-- processing actions arriving from other processes and should therefore
-- be held when activating actions locally (if GDK threads are enabled).
-- 
-- The settings t'GI.Gtk.Objects.Settings.Settings':@/gtk-shell-shows-app-menu/@ and
-- t'GI.Gtk.Objects.Settings.Settings':@/gtk-shell-shows-menubar/@ tell GTK+ whether the
-- desktop environment is showing the application menu and menubar
-- models outside the application as part of the desktop shell.
-- For instance, on OS X, both menus will be displayed remotely;
-- on Windows neither will be. gnome-shell (starting with version 3.4)
-- will display the application menu, but not the menubar.
-- 
-- If the desktop environment does not display the menubar, then
-- t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow' will automatically show a t'GI.Gtk.Objects.MenuBar.MenuBar' for it.
-- This behaviour can be overridden with the t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow':@/show-menubar/@
-- property. If the desktop environment does not display the application
-- menu, then it will automatically be included in the menubar or in the
-- windows client-side decorations.
-- 
-- == A GtkApplicationWindow with a menubar
-- 
-- 
-- === /C code/
-- >
-- >GtkApplication *app = gtk_application_new ("org.gtk.test", 0);
-- >
-- >GtkBuilder *builder = gtk_builder_new_from_string (
-- >    "<interface>"
-- >    "  <menu id='menubar'>"
-- >    "    <submenu label='_Edit'>"
-- >    "      <item label='_Copy' action='win.copy'/>"
-- >    "      <item label='_Paste' action='win.paste'/>"
-- >    "    </submenu>"
-- >    "  </menu>"
-- >    "</interface>",
-- >    -1);
-- >
-- >GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
-- >                                                            "menubar"));
-- >gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
-- >g_object_unref (builder);
-- >
-- >// ...
-- >
-- >GtkWidget *window = gtk_application_window_new (app);
-- 
-- 
-- == Handling fallback yourself
-- 
-- <https://git.gnome.org/browse/gtk+/tree/examples/sunny.c A simple example>
-- 
-- The XML format understood by t'GI.Gtk.Objects.Builder.Builder' for t'GI.Gio.Objects.MenuModel.MenuModel' consists
-- of a toplevel @\<menu>@ element, which contains one or more @\<item>@
-- elements. Each @\<item>@ element contains @\<attribute>@ and @\<link>@
-- elements with a mandatory name attribute. @\<link>@ elements have the
-- same content model as @\<menu>@. Instead of @\<link name=\"submenu>@ or
-- @\<link name=\"section\">@, you can use @\<submenu>@ or @\<section>@
-- elements.
-- 
-- Attribute values can be translated using gettext, like other t'GI.Gtk.Objects.Builder.Builder'
-- content. @\<attribute>@ elements can be marked for translation with a
-- @translatable=\"yes\"@ attribute. It is also possible to specify message
-- context and translator comments, using the context and comments attributes.
-- To make use of this, the t'GI.Gtk.Objects.Builder.Builder' must have been given the gettext
-- domain to use.
-- 
-- The following attributes are used when constructing menu items:
-- 
-- * \"label\": a user-visible string to display
-- * \"action\": the prefixed name of the action to trigger
-- * \"target\": the parameter to use when activating the action
-- * \"icon\" and \"verb-icon\": names of icons that may be displayed
-- * \"submenu-action\": name of an action that may be used to determine
--    if a submenu can be opened
-- * \"hidden-when\": a string used to determine when the item will be hidden.
--    Possible values include \"action-disabled\", \"action-missing\", \"macos-menubar\".
-- 
-- 
-- The following attributes are used when constructing sections:
-- 
-- * \"label\": a user-visible string to use as section heading
-- * \"display-hint\": a string used to determine special formatting for the section.
--   Possible values include \"horizontal-buttons\".
-- * \"text-direction\": a string used to determine the t'GI.Gtk.Enums.TextDirection' to use
--   when \"display-hint\" is set to \"horizontal-buttons\". Possible values
--   include \"rtl\", \"ltr\", and \"none\".
-- 
-- 
-- The following attributes are used when constructing submenus:
-- 
-- * \"label\": a user-visible string to display
-- * \"icon\": icon name to display
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ApplicationWindow
    ( 

-- * Exported types
    ApplicationWindow(..)                   ,
    IsApplicationWindow                     ,
    toApplicationWindow                     ,
    noApplicationWindow                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveApplicationWindowMethod          ,
#endif


-- ** getHelpOverlay #method:getHelpOverlay#

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowGetHelpOverlayMethodInfo,
#endif
    applicationWindowGetHelpOverlay         ,


-- ** getId #method:getId#

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowGetIdMethodInfo        ,
#endif
    applicationWindowGetId                  ,


-- ** getShowMenubar #method:getShowMenubar#

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowGetShowMenubarMethodInfo,
#endif
    applicationWindowGetShowMenubar         ,


-- ** new #method:new#

    applicationWindowNew                    ,


-- ** setHelpOverlay #method:setHelpOverlay#

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowSetHelpOverlayMethodInfo,
#endif
    applicationWindowSetHelpOverlay         ,


-- ** setShowMenubar #method:setShowMenubar#

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowSetShowMenubarMethodInfo,
#endif
    applicationWindowSetShowMenubar         ,




 -- * Properties
-- ** showMenubar #attr:showMenubar#
-- | If this property is 'P.True', the window will display a menubar
-- that includes the app menu and menubar, unless these are
-- shown by the desktop shell. See 'GI.Gtk.Objects.Application.applicationSetAppMenu'
-- and 'GI.Gtk.Objects.Application.applicationSetMenubar'.
-- 
-- If 'P.False', the window will not display a menubar, regardless
-- of whether the desktop shell is showing the menus or not.

#if defined(ENABLE_OVERLOADING)
    ApplicationWindowShowMenubarPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    applicationWindowShowMenubar            ,
#endif
    constructApplicationWindowShowMenubar   ,
    getApplicationWindowShowMenubar         ,
    setApplicationWindowShowMenubar         ,




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
import qualified GI.Gio.Interfaces.ActionGroup as Gio.ActionGroup
import qualified GI.Gio.Interfaces.ActionMap as Gio.ActionMap
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Application as Gtk.Application
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ShortcutsWindow as Gtk.ShortcutsWindow
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype ApplicationWindow = ApplicationWindow (ManagedPtr ApplicationWindow)
    deriving (Eq)
foreign import ccall "gtk_application_window_get_type"
    c_gtk_application_window_get_type :: IO GType

instance GObject ApplicationWindow where
    gobjectType = c_gtk_application_window_get_type
    

-- | Convert 'ApplicationWindow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ApplicationWindow where
    toGValue o = do
        gtype <- c_gtk_application_window_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ApplicationWindow)
        B.ManagedPtr.newObject ApplicationWindow ptr
        
    

-- | Type class for types which can be safely cast to `ApplicationWindow`, for instance with `toApplicationWindow`.
class (GObject o, O.IsDescendantOf ApplicationWindow o) => IsApplicationWindow o
instance (GObject o, O.IsDescendantOf ApplicationWindow o) => IsApplicationWindow o

instance O.HasParentTypes ApplicationWindow
type instance O.ParentTypes ApplicationWindow = '[Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gio.ActionGroup.ActionGroup, Gio.ActionMap.ActionMap, Gtk.Buildable.Buildable]

-- | Cast to `ApplicationWindow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toApplicationWindow :: (MonadIO m, IsApplicationWindow o) => o -> m ApplicationWindow
toApplicationWindow = liftIO . unsafeCastTo ApplicationWindow

-- | A convenience alias for `Nothing` :: `Maybe` `ApplicationWindow`.
noApplicationWindow :: Maybe ApplicationWindow
noApplicationWindow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveApplicationWindowMethod (t :: Symbol) (o :: *) :: * where
    ResolveApplicationWindowMethod "actionAdded" o = Gio.ActionGroup.ActionGroupActionAddedMethodInfo
    ResolveApplicationWindowMethod "actionEnabledChanged" o = Gio.ActionGroup.ActionGroupActionEnabledChangedMethodInfo
    ResolveApplicationWindowMethod "actionRemoved" o = Gio.ActionGroup.ActionGroupActionRemovedMethodInfo
    ResolveApplicationWindowMethod "actionStateChanged" o = Gio.ActionGroup.ActionGroupActionStateChangedMethodInfo
    ResolveApplicationWindowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveApplicationWindowMethod "activateAction" o = Gio.ActionGroup.ActionGroupActivateActionMethodInfo
    ResolveApplicationWindowMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveApplicationWindowMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveApplicationWindowMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveApplicationWindowMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveApplicationWindowMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveApplicationWindowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveApplicationWindowMethod "addAction" o = Gio.ActionMap.ActionMapAddActionMethodInfo
    ResolveApplicationWindowMethod "addActionEntries" o = Gio.ActionMap.ActionMapAddActionEntriesMethodInfo
    ResolveApplicationWindowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveApplicationWindowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveApplicationWindowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveApplicationWindowMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveApplicationWindowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveApplicationWindowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveApplicationWindowMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveApplicationWindowMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveApplicationWindowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveApplicationWindowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveApplicationWindowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveApplicationWindowMethod "changeActionState" o = Gio.ActionGroup.ActionGroupChangeActionStateMethodInfo
    ResolveApplicationWindowMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveApplicationWindowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveApplicationWindowMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveApplicationWindowMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveApplicationWindowMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveApplicationWindowMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveApplicationWindowMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveApplicationWindowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveApplicationWindowMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveApplicationWindowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveApplicationWindowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveApplicationWindowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveApplicationWindowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveApplicationWindowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveApplicationWindowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveApplicationWindowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveApplicationWindowMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveApplicationWindowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveApplicationWindowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveApplicationWindowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveApplicationWindowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveApplicationWindowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveApplicationWindowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveApplicationWindowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveApplicationWindowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveApplicationWindowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveApplicationWindowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveApplicationWindowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveApplicationWindowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveApplicationWindowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveApplicationWindowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveApplicationWindowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveApplicationWindowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveApplicationWindowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveApplicationWindowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveApplicationWindowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveApplicationWindowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveApplicationWindowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveApplicationWindowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveApplicationWindowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveApplicationWindowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveApplicationWindowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveApplicationWindowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveApplicationWindowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveApplicationWindowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveApplicationWindowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveApplicationWindowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveApplicationWindowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveApplicationWindowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveApplicationWindowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveApplicationWindowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveApplicationWindowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveApplicationWindowMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveApplicationWindowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveApplicationWindowMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveApplicationWindowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveApplicationWindowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveApplicationWindowMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveApplicationWindowMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveApplicationWindowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveApplicationWindowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveApplicationWindowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveApplicationWindowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveApplicationWindowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveApplicationWindowMethod "hasAction" o = Gio.ActionGroup.ActionGroupHasActionMethodInfo
    ResolveApplicationWindowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveApplicationWindowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveApplicationWindowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveApplicationWindowMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveApplicationWindowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveApplicationWindowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveApplicationWindowMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveApplicationWindowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveApplicationWindowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveApplicationWindowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveApplicationWindowMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveApplicationWindowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveApplicationWindowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveApplicationWindowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveApplicationWindowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveApplicationWindowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveApplicationWindowMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveApplicationWindowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveApplicationWindowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveApplicationWindowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveApplicationWindowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveApplicationWindowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveApplicationWindowMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveApplicationWindowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveApplicationWindowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveApplicationWindowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveApplicationWindowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveApplicationWindowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveApplicationWindowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveApplicationWindowMethod "listActions" o = Gio.ActionGroup.ActionGroupListActionsMethodInfo
    ResolveApplicationWindowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveApplicationWindowMethod "lookupAction" o = Gio.ActionMap.ActionMapLookupActionMethodInfo
    ResolveApplicationWindowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveApplicationWindowMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveApplicationWindowMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveApplicationWindowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveApplicationWindowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveApplicationWindowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveApplicationWindowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveApplicationWindowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveApplicationWindowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveApplicationWindowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveApplicationWindowMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveApplicationWindowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveApplicationWindowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveApplicationWindowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveApplicationWindowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveApplicationWindowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveApplicationWindowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveApplicationWindowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveApplicationWindowMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveApplicationWindowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveApplicationWindowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveApplicationWindowMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveApplicationWindowMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveApplicationWindowMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveApplicationWindowMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveApplicationWindowMethod "queryAction" o = Gio.ActionGroup.ActionGroupQueryActionMethodInfo
    ResolveApplicationWindowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveApplicationWindowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveApplicationWindowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveApplicationWindowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveApplicationWindowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveApplicationWindowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveApplicationWindowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveApplicationWindowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveApplicationWindowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveApplicationWindowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveApplicationWindowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveApplicationWindowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveApplicationWindowMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveApplicationWindowMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveApplicationWindowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveApplicationWindowMethod "removeAction" o = Gio.ActionMap.ActionMapRemoveActionMethodInfo
    ResolveApplicationWindowMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveApplicationWindowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveApplicationWindowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveApplicationWindowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveApplicationWindowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveApplicationWindowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveApplicationWindowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveApplicationWindowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveApplicationWindowMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveApplicationWindowMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveApplicationWindowMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveApplicationWindowMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveApplicationWindowMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveApplicationWindowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveApplicationWindowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveApplicationWindowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveApplicationWindowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveApplicationWindowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveApplicationWindowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveApplicationWindowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveApplicationWindowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveApplicationWindowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveApplicationWindowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveApplicationWindowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveApplicationWindowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveApplicationWindowMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveApplicationWindowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveApplicationWindowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveApplicationWindowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveApplicationWindowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveApplicationWindowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveApplicationWindowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveApplicationWindowMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveApplicationWindowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveApplicationWindowMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveApplicationWindowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveApplicationWindowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveApplicationWindowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveApplicationWindowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveApplicationWindowMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveApplicationWindowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveApplicationWindowMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveApplicationWindowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveApplicationWindowMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveApplicationWindowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveApplicationWindowMethod "getActionEnabled" o = Gio.ActionGroup.ActionGroupGetActionEnabledMethodInfo
    ResolveApplicationWindowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveApplicationWindowMethod "getActionParameterType" o = Gio.ActionGroup.ActionGroupGetActionParameterTypeMethodInfo
    ResolveApplicationWindowMethod "getActionState" o = Gio.ActionGroup.ActionGroupGetActionStateMethodInfo
    ResolveApplicationWindowMethod "getActionStateHint" o = Gio.ActionGroup.ActionGroupGetActionStateHintMethodInfo
    ResolveApplicationWindowMethod "getActionStateType" o = Gio.ActionGroup.ActionGroupGetActionStateTypeMethodInfo
    ResolveApplicationWindowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveApplicationWindowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveApplicationWindowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveApplicationWindowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveApplicationWindowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveApplicationWindowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveApplicationWindowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveApplicationWindowMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveApplicationWindowMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveApplicationWindowMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveApplicationWindowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveApplicationWindowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveApplicationWindowMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveApplicationWindowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveApplicationWindowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveApplicationWindowMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveApplicationWindowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveApplicationWindowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveApplicationWindowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveApplicationWindowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveApplicationWindowMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveApplicationWindowMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveApplicationWindowMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveApplicationWindowMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveApplicationWindowMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveApplicationWindowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveApplicationWindowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveApplicationWindowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveApplicationWindowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveApplicationWindowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveApplicationWindowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveApplicationWindowMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveApplicationWindowMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveApplicationWindowMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveApplicationWindowMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveApplicationWindowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveApplicationWindowMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveApplicationWindowMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveApplicationWindowMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveApplicationWindowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveApplicationWindowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveApplicationWindowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveApplicationWindowMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveApplicationWindowMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveApplicationWindowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveApplicationWindowMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveApplicationWindowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveApplicationWindowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveApplicationWindowMethod "getHelpOverlay" o = ApplicationWindowGetHelpOverlayMethodInfo
    ResolveApplicationWindowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveApplicationWindowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveApplicationWindowMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveApplicationWindowMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveApplicationWindowMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveApplicationWindowMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveApplicationWindowMethod "getId" o = ApplicationWindowGetIdMethodInfo
    ResolveApplicationWindowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveApplicationWindowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveApplicationWindowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveApplicationWindowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveApplicationWindowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveApplicationWindowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveApplicationWindowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveApplicationWindowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveApplicationWindowMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveApplicationWindowMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveApplicationWindowMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveApplicationWindowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveApplicationWindowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveApplicationWindowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveApplicationWindowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveApplicationWindowMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveApplicationWindowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveApplicationWindowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveApplicationWindowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveApplicationWindowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveApplicationWindowMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveApplicationWindowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveApplicationWindowMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveApplicationWindowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveApplicationWindowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveApplicationWindowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveApplicationWindowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveApplicationWindowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveApplicationWindowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveApplicationWindowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveApplicationWindowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveApplicationWindowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveApplicationWindowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveApplicationWindowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveApplicationWindowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveApplicationWindowMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveApplicationWindowMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveApplicationWindowMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveApplicationWindowMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveApplicationWindowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveApplicationWindowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveApplicationWindowMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveApplicationWindowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveApplicationWindowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveApplicationWindowMethod "getShowMenubar" o = ApplicationWindowGetShowMenubarMethodInfo
    ResolveApplicationWindowMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveApplicationWindowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveApplicationWindowMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveApplicationWindowMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveApplicationWindowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveApplicationWindowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveApplicationWindowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveApplicationWindowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveApplicationWindowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveApplicationWindowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveApplicationWindowMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveApplicationWindowMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveApplicationWindowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveApplicationWindowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveApplicationWindowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveApplicationWindowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveApplicationWindowMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveApplicationWindowMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveApplicationWindowMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveApplicationWindowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveApplicationWindowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveApplicationWindowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveApplicationWindowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveApplicationWindowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveApplicationWindowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveApplicationWindowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveApplicationWindowMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveApplicationWindowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveApplicationWindowMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveApplicationWindowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveApplicationWindowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveApplicationWindowMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveApplicationWindowMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveApplicationWindowMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveApplicationWindowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveApplicationWindowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveApplicationWindowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveApplicationWindowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveApplicationWindowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveApplicationWindowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveApplicationWindowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveApplicationWindowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveApplicationWindowMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveApplicationWindowMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveApplicationWindowMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveApplicationWindowMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveApplicationWindowMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveApplicationWindowMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveApplicationWindowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveApplicationWindowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveApplicationWindowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveApplicationWindowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveApplicationWindowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveApplicationWindowMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveApplicationWindowMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveApplicationWindowMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveApplicationWindowMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveApplicationWindowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveApplicationWindowMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveApplicationWindowMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveApplicationWindowMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveApplicationWindowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveApplicationWindowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveApplicationWindowMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveApplicationWindowMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveApplicationWindowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveApplicationWindowMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveApplicationWindowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveApplicationWindowMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveApplicationWindowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveApplicationWindowMethod "setHelpOverlay" o = ApplicationWindowSetHelpOverlayMethodInfo
    ResolveApplicationWindowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveApplicationWindowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveApplicationWindowMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveApplicationWindowMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveApplicationWindowMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveApplicationWindowMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveApplicationWindowMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveApplicationWindowMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveApplicationWindowMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveApplicationWindowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveApplicationWindowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveApplicationWindowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveApplicationWindowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveApplicationWindowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveApplicationWindowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveApplicationWindowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveApplicationWindowMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveApplicationWindowMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveApplicationWindowMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveApplicationWindowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveApplicationWindowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveApplicationWindowMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveApplicationWindowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveApplicationWindowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveApplicationWindowMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveApplicationWindowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveApplicationWindowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveApplicationWindowMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveApplicationWindowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveApplicationWindowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveApplicationWindowMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveApplicationWindowMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveApplicationWindowMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveApplicationWindowMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveApplicationWindowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveApplicationWindowMethod "setShowMenubar" o = ApplicationWindowSetShowMenubarMethodInfo
    ResolveApplicationWindowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveApplicationWindowMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveApplicationWindowMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveApplicationWindowMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveApplicationWindowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveApplicationWindowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveApplicationWindowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveApplicationWindowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveApplicationWindowMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveApplicationWindowMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveApplicationWindowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveApplicationWindowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveApplicationWindowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveApplicationWindowMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveApplicationWindowMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveApplicationWindowMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveApplicationWindowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveApplicationWindowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveApplicationWindowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveApplicationWindowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveApplicationWindowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveApplicationWindowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveApplicationWindowMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveApplicationWindowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveApplicationWindowMethod t ApplicationWindow, O.MethodInfo info ApplicationWindow p) => OL.IsLabel t (ApplicationWindow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "show-menubar"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-menubar@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' applicationWindow #showMenubar
-- @
getApplicationWindowShowMenubar :: (MonadIO m, IsApplicationWindow o) => o -> m Bool
getApplicationWindowShowMenubar obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-menubar"

-- | Set the value of the “@show-menubar@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' applicationWindow [ #showMenubar 'Data.GI.Base.Attributes.:=' value ]
-- @
setApplicationWindowShowMenubar :: (MonadIO m, IsApplicationWindow o) => o -> Bool -> m ()
setApplicationWindowShowMenubar obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-menubar" val

-- | Construct a `GValueConstruct` with valid value for the “@show-menubar@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructApplicationWindowShowMenubar :: (IsApplicationWindow o) => Bool -> IO (GValueConstruct o)
constructApplicationWindowShowMenubar val = B.Properties.constructObjectPropertyBool "show-menubar" val

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowShowMenubarPropertyInfo
instance AttrInfo ApplicationWindowShowMenubarPropertyInfo where
    type AttrAllowedOps ApplicationWindowShowMenubarPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ApplicationWindowShowMenubarPropertyInfo = IsApplicationWindow
    type AttrSetTypeConstraint ApplicationWindowShowMenubarPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ApplicationWindowShowMenubarPropertyInfo = (~) Bool
    type AttrTransferType ApplicationWindowShowMenubarPropertyInfo = Bool
    type AttrGetType ApplicationWindowShowMenubarPropertyInfo = Bool
    type AttrLabel ApplicationWindowShowMenubarPropertyInfo = "show-menubar"
    type AttrOrigin ApplicationWindowShowMenubarPropertyInfo = ApplicationWindow
    attrGet = getApplicationWindowShowMenubar
    attrSet = setApplicationWindowShowMenubar
    attrTransfer _ v = do
        return v
    attrConstruct = constructApplicationWindowShowMenubar
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ApplicationWindow
type instance O.AttributeList ApplicationWindow = ApplicationWindowAttributeList
type ApplicationWindowAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showMenubar", ApplicationWindowShowMenubarPropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
applicationWindowShowMenubar :: AttrLabelProxy "showMenubar"
applicationWindowShowMenubar = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ApplicationWindow = ApplicationWindowSignalList
type ApplicationWindowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("actionAdded", Gio.ActionGroup.ActionGroupActionAddedSignalInfo), '("actionEnabledChanged", Gio.ActionGroup.ActionGroupActionEnabledChangedSignalInfo), '("actionRemoved", Gio.ActionGroup.ActionGroupActionRemovedSignalInfo), '("actionStateChanged", Gio.ActionGroup.ActionGroupActionStateChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ApplicationWindow::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "application"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Application" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplication" , sinceVersion = Nothing }
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
--                  Name { namespace = "Gtk" , name = "ApplicationWindow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_application_window_new" gtk_application_window_new :: 
    Ptr Gtk.Application.Application ->      -- application : TInterface (Name {namespace = "Gtk", name = "Application"})
    IO (Ptr ApplicationWindow)

-- | Creates a new t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'.
-- 
-- /Since: 3.4/
applicationWindowNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Application.IsApplication a) =>
    a
    -- ^ /@application@/: a t'GI.Gtk.Objects.Application.Application'
    -> m ApplicationWindow
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
applicationWindowNew application = liftIO $ do
    application' <- unsafeManagedPtrCastPtr application
    result <- gtk_application_window_new application'
    checkUnexpectedReturnNULL "applicationWindowNew" result
    result' <- (newObject ApplicationWindow) result
    touchManagedPtr application
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ApplicationWindow::get_help_overlay
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ApplicationWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplicationWindow"
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
--               (TInterface Name { namespace = "Gtk" , name = "ShortcutsWindow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_application_window_get_help_overlay" gtk_application_window_get_help_overlay :: 
    Ptr ApplicationWindow ->                -- window : TInterface (Name {namespace = "Gtk", name = "ApplicationWindow"})
    IO (Ptr Gtk.ShortcutsWindow.ShortcutsWindow)

-- | Gets the t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow' that has been set up with
-- a prior call to 'GI.Gtk.Objects.ApplicationWindow.applicationWindowSetHelpOverlay'.
-- 
-- /Since: 3.20/
applicationWindowGetHelpOverlay ::
    (B.CallStack.HasCallStack, MonadIO m, IsApplicationWindow a) =>
    a
    -- ^ /@window@/: a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
    -> m (Maybe Gtk.ShortcutsWindow.ShortcutsWindow)
    -- ^ __Returns:__ the help overlay associated with /@window@/, or 'P.Nothing'
applicationWindowGetHelpOverlay window = liftIO $ do
    window' <- unsafeManagedPtrCastPtr window
    result <- gtk_application_window_get_help_overlay window'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.ShortcutsWindow.ShortcutsWindow) result'
        return result''
    touchManagedPtr window
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowGetHelpOverlayMethodInfo
instance (signature ~ (m (Maybe Gtk.ShortcutsWindow.ShortcutsWindow)), MonadIO m, IsApplicationWindow a) => O.MethodInfo ApplicationWindowGetHelpOverlayMethodInfo a signature where
    overloadedMethod = applicationWindowGetHelpOverlay

#endif

-- method ApplicationWindow::get_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ApplicationWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplicationWindow"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_application_window_get_id" gtk_application_window_get_id :: 
    Ptr ApplicationWindow ->                -- window : TInterface (Name {namespace = "Gtk", name = "ApplicationWindow"})
    IO Word32

-- | Returns the unique ID of the window. If the window has not yet been added to
-- a t'GI.Gtk.Objects.Application.Application', returns @0@.
-- 
-- /Since: 3.6/
applicationWindowGetId ::
    (B.CallStack.HasCallStack, MonadIO m, IsApplicationWindow a) =>
    a
    -- ^ /@window@/: a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
    -> m Word32
    -- ^ __Returns:__ the unique ID for /@window@/, or @0@ if the window
    --   has not yet been added to a t'GI.Gtk.Objects.Application.Application'
applicationWindowGetId window = liftIO $ do
    window' <- unsafeManagedPtrCastPtr window
    result <- gtk_application_window_get_id window'
    touchManagedPtr window
    return result

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowGetIdMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsApplicationWindow a) => O.MethodInfo ApplicationWindowGetIdMethodInfo a signature where
    overloadedMethod = applicationWindowGetId

#endif

-- method ApplicationWindow::get_show_menubar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ApplicationWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplicationWindow"
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

foreign import ccall "gtk_application_window_get_show_menubar" gtk_application_window_get_show_menubar :: 
    Ptr ApplicationWindow ->                -- window : TInterface (Name {namespace = "Gtk", name = "ApplicationWindow"})
    IO CInt

-- | Returns whether the window will display a menubar for the app menu
-- and menubar as needed.
-- 
-- /Since: 3.4/
applicationWindowGetShowMenubar ::
    (B.CallStack.HasCallStack, MonadIO m, IsApplicationWindow a) =>
    a
    -- ^ /@window@/: a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@window@/ will display a menubar when needed
applicationWindowGetShowMenubar window = liftIO $ do
    window' <- unsafeManagedPtrCastPtr window
    result <- gtk_application_window_get_show_menubar window'
    let result' = (/= 0) result
    touchManagedPtr window
    return result'

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowGetShowMenubarMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsApplicationWindow a) => O.MethodInfo ApplicationWindowGetShowMenubarMethodInfo a signature where
    overloadedMethod = applicationWindowGetShowMenubar

#endif

-- method ApplicationWindow::set_help_overlay
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ApplicationWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplicationWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "help_overlay"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShortcutsWindow" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkShortcutsWindow"
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

foreign import ccall "gtk_application_window_set_help_overlay" gtk_application_window_set_help_overlay :: 
    Ptr ApplicationWindow ->                -- window : TInterface (Name {namespace = "Gtk", name = "ApplicationWindow"})
    Ptr Gtk.ShortcutsWindow.ShortcutsWindow -> -- help_overlay : TInterface (Name {namespace = "Gtk", name = "ShortcutsWindow"})
    IO ()

-- | Associates a shortcuts window with the application window, and
-- sets up an action with the name win.show-help-overlay to present
-- it.
-- 
-- /@window@/ takes resposibility for destroying /@helpOverlay@/.
-- 
-- /Since: 3.20/
applicationWindowSetHelpOverlay ::
    (B.CallStack.HasCallStack, MonadIO m, IsApplicationWindow a, Gtk.ShortcutsWindow.IsShortcutsWindow b) =>
    a
    -- ^ /@window@/: a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
    -> Maybe (b)
    -- ^ /@helpOverlay@/: a t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow'
    -> m ()
applicationWindowSetHelpOverlay window helpOverlay = liftIO $ do
    window' <- unsafeManagedPtrCastPtr window
    maybeHelpOverlay <- case helpOverlay of
        Nothing -> return nullPtr
        Just jHelpOverlay -> do
            jHelpOverlay' <- unsafeManagedPtrCastPtr jHelpOverlay
            return jHelpOverlay'
    gtk_application_window_set_help_overlay window' maybeHelpOverlay
    touchManagedPtr window
    whenJust helpOverlay touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowSetHelpOverlayMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsApplicationWindow a, Gtk.ShortcutsWindow.IsShortcutsWindow b) => O.MethodInfo ApplicationWindowSetHelpOverlayMethodInfo a signature where
    overloadedMethod = applicationWindowSetHelpOverlay

#endif

-- method ApplicationWindow::set_show_menubar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ApplicationWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkApplicationWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_menubar"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show a menubar when needed"
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

foreign import ccall "gtk_application_window_set_show_menubar" gtk_application_window_set_show_menubar :: 
    Ptr ApplicationWindow ->                -- window : TInterface (Name {namespace = "Gtk", name = "ApplicationWindow"})
    CInt ->                                 -- show_menubar : TBasicType TBoolean
    IO ()

-- | Sets whether the window will display a menubar for the app menu
-- and menubar as needed.
-- 
-- /Since: 3.4/
applicationWindowSetShowMenubar ::
    (B.CallStack.HasCallStack, MonadIO m, IsApplicationWindow a) =>
    a
    -- ^ /@window@/: a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow'
    -> Bool
    -- ^ /@showMenubar@/: whether to show a menubar when needed
    -> m ()
applicationWindowSetShowMenubar window showMenubar = liftIO $ do
    window' <- unsafeManagedPtrCastPtr window
    let showMenubar' = (fromIntegral . fromEnum) showMenubar
    gtk_application_window_set_show_menubar window' showMenubar'
    touchManagedPtr window
    return ()

#if defined(ENABLE_OVERLOADING)
data ApplicationWindowSetShowMenubarMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsApplicationWindow a) => O.MethodInfo ApplicationWindowSetShowMenubarMethodInfo a signature where
    overloadedMethod = applicationWindowSetShowMenubar

#endif

