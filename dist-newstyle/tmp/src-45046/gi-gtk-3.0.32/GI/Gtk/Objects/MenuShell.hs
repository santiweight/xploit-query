{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.MenuShell.MenuShell' is the abstract base class used to derive the
-- t'GI.Gtk.Objects.Menu.Menu' and t'GI.Gtk.Objects.MenuBar.MenuBar' subclasses.
-- 
-- A t'GI.Gtk.Objects.MenuShell.MenuShell' is a container of t'GI.Gtk.Objects.MenuItem.MenuItem' objects arranged
-- in a list which can be navigated, selected, and activated by the
-- user to perform application functions. A t'GI.Gtk.Objects.MenuItem.MenuItem' can have a
-- submenu associated with it, allowing for nested hierarchical menus.
-- 
-- = Terminology
-- 
-- A menu item can be “selected”, this means that it is displayed
-- in the prelight state, and if it has a submenu, that submenu
-- will be popped up.
-- 
-- A menu is “active” when it is visible onscreen and the user
-- is selecting from it. A menubar is not active until the user
-- clicks on one of its menuitems. When a menu is active,
-- passing the mouse over a submenu will pop it up.
-- 
-- There is also is a concept of the current menu and a current
-- menu item. The current menu item is the selected menu item
-- that is furthest down in the hierarchy. (Every active menu shell
-- does not necessarily contain a selected menu item, but if
-- it does, then the parent menu shell must also contain
-- a selected menu item.) The current menu is the menu that
-- contains the current menu item. It will always have a GTK
-- grab and receive all key presses.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuShell
    ( 

-- * Exported types
    MenuShell(..)                           ,
    IsMenuShell                             ,
    toMenuShell                             ,
    noMenuShell                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuShellMethod                  ,
#endif


-- ** activateItem #method:activateItem#

#if defined(ENABLE_OVERLOADING)
    MenuShellActivateItemMethodInfo         ,
#endif
    menuShellActivateItem                   ,


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    MenuShellAppendMethodInfo               ,
#endif
    menuShellAppend                         ,


-- ** bindModel #method:bindModel#

#if defined(ENABLE_OVERLOADING)
    MenuShellBindModelMethodInfo            ,
#endif
    menuShellBindModel                      ,


-- ** cancel #method:cancel#

#if defined(ENABLE_OVERLOADING)
    MenuShellCancelMethodInfo               ,
#endif
    menuShellCancel                         ,


-- ** deactivate #method:deactivate#

#if defined(ENABLE_OVERLOADING)
    MenuShellDeactivateMethodInfo           ,
#endif
    menuShellDeactivate                     ,


-- ** deselect #method:deselect#

#if defined(ENABLE_OVERLOADING)
    MenuShellDeselectMethodInfo             ,
#endif
    menuShellDeselect                       ,


-- ** getParentShell #method:getParentShell#

#if defined(ENABLE_OVERLOADING)
    MenuShellGetParentShellMethodInfo       ,
#endif
    menuShellGetParentShell                 ,


-- ** getSelectedItem #method:getSelectedItem#

#if defined(ENABLE_OVERLOADING)
    MenuShellGetSelectedItemMethodInfo      ,
#endif
    menuShellGetSelectedItem                ,


-- ** getTakeFocus #method:getTakeFocus#

#if defined(ENABLE_OVERLOADING)
    MenuShellGetTakeFocusMethodInfo         ,
#endif
    menuShellGetTakeFocus                   ,


-- ** insert #method:insert#

#if defined(ENABLE_OVERLOADING)
    MenuShellInsertMethodInfo               ,
#endif
    menuShellInsert                         ,


-- ** prepend #method:prepend#

#if defined(ENABLE_OVERLOADING)
    MenuShellPrependMethodInfo              ,
#endif
    menuShellPrepend                        ,


-- ** selectFirst #method:selectFirst#

#if defined(ENABLE_OVERLOADING)
    MenuShellSelectFirstMethodInfo          ,
#endif
    menuShellSelectFirst                    ,


-- ** selectItem #method:selectItem#

#if defined(ENABLE_OVERLOADING)
    MenuShellSelectItemMethodInfo           ,
#endif
    menuShellSelectItem                     ,


-- ** setTakeFocus #method:setTakeFocus#

#if defined(ENABLE_OVERLOADING)
    MenuShellSetTakeFocusMethodInfo         ,
#endif
    menuShellSetTakeFocus                   ,




 -- * Properties
-- ** takeFocus #attr:takeFocus#
-- | A boolean that determines whether the menu and its submenus grab the
-- keyboard focus. See 'GI.Gtk.Objects.MenuShell.menuShellSetTakeFocus' and
-- 'GI.Gtk.Objects.MenuShell.menuShellGetTakeFocus'.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    MenuShellTakeFocusPropertyInfo          ,
#endif
    constructMenuShellTakeFocus             ,
    getMenuShellTakeFocus                   ,
#if defined(ENABLE_OVERLOADING)
    menuShellTakeFocus                      ,
#endif
    setMenuShellTakeFocus                   ,




 -- * Signals
-- ** activateCurrent #signal:activateCurrent#

    C_MenuShellActivateCurrentCallback      ,
    MenuShellActivateCurrentCallback        ,
#if defined(ENABLE_OVERLOADING)
    MenuShellActivateCurrentSignalInfo      ,
#endif
    afterMenuShellActivateCurrent           ,
    genClosure_MenuShellActivateCurrent     ,
    mk_MenuShellActivateCurrentCallback     ,
    noMenuShellActivateCurrentCallback      ,
    onMenuShellActivateCurrent              ,
    wrap_MenuShellActivateCurrentCallback   ,


-- ** cancel #signal:cancel#

    C_MenuShellCancelCallback               ,
    MenuShellCancelCallback                 ,
#if defined(ENABLE_OVERLOADING)
    MenuShellCancelSignalInfo               ,
#endif
    afterMenuShellCancel                    ,
    genClosure_MenuShellCancel              ,
    mk_MenuShellCancelCallback              ,
    noMenuShellCancelCallback               ,
    onMenuShellCancel                       ,
    wrap_MenuShellCancelCallback            ,


-- ** cycleFocus #signal:cycleFocus#

    C_MenuShellCycleFocusCallback           ,
    MenuShellCycleFocusCallback             ,
#if defined(ENABLE_OVERLOADING)
    MenuShellCycleFocusSignalInfo           ,
#endif
    afterMenuShellCycleFocus                ,
    genClosure_MenuShellCycleFocus          ,
    mk_MenuShellCycleFocusCallback          ,
    noMenuShellCycleFocusCallback           ,
    onMenuShellCycleFocus                   ,
    wrap_MenuShellCycleFocusCallback        ,


-- ** deactivate #signal:deactivate#

    C_MenuShellDeactivateCallback           ,
    MenuShellDeactivateCallback             ,
#if defined(ENABLE_OVERLOADING)
    MenuShellDeactivateSignalInfo           ,
#endif
    afterMenuShellDeactivate                ,
    genClosure_MenuShellDeactivate          ,
    mk_MenuShellDeactivateCallback          ,
    noMenuShellDeactivateCallback           ,
    onMenuShellDeactivate                   ,
    wrap_MenuShellDeactivateCallback        ,


-- ** insert #signal:insert#

    C_MenuShellInsertCallback               ,
    MenuShellInsertCallback                 ,
#if defined(ENABLE_OVERLOADING)
    MenuShellInsertSignalInfo               ,
#endif
    afterMenuShellInsert                    ,
    genClosure_MenuShellInsert              ,
    mk_MenuShellInsertCallback              ,
    noMenuShellInsertCallback               ,
    onMenuShellInsert                       ,
    wrap_MenuShellInsertCallback            ,


-- ** moveCurrent #signal:moveCurrent#

    C_MenuShellMoveCurrentCallback          ,
    MenuShellMoveCurrentCallback            ,
#if defined(ENABLE_OVERLOADING)
    MenuShellMoveCurrentSignalInfo          ,
#endif
    afterMenuShellMoveCurrent               ,
    genClosure_MenuShellMoveCurrent         ,
    mk_MenuShellMoveCurrentCallback         ,
    noMenuShellMoveCurrentCallback          ,
    onMenuShellMoveCurrent                  ,
    wrap_MenuShellMoveCurrentCallback       ,


-- ** moveSelected #signal:moveSelected#

    C_MenuShellMoveSelectedCallback         ,
    MenuShellMoveSelectedCallback           ,
#if defined(ENABLE_OVERLOADING)
    MenuShellMoveSelectedSignalInfo         ,
#endif
    afterMenuShellMoveSelected              ,
    genClosure_MenuShellMoveSelected        ,
    mk_MenuShellMoveSelectedCallback        ,
    noMenuShellMoveSelectedCallback         ,
    onMenuShellMoveSelected                 ,
    wrap_MenuShellMoveSelectedCallback      ,


-- ** selectionDone #signal:selectionDone#

    C_MenuShellSelectionDoneCallback        ,
    MenuShellSelectionDoneCallback          ,
#if defined(ENABLE_OVERLOADING)
    MenuShellSelectionDoneSignalInfo        ,
#endif
    afterMenuShellSelectionDone             ,
    genClosure_MenuShellSelectionDone       ,
    mk_MenuShellSelectionDoneCallback       ,
    noMenuShellSelectionDoneCallback        ,
    onMenuShellSelectionDone                ,
    wrap_MenuShellSelectionDoneCallback     ,




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
import qualified GI.Gio.Objects.MenuModel as Gio.MenuModel
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItem as Gtk.MenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype MenuShell = MenuShell (ManagedPtr MenuShell)
    deriving (Eq)
foreign import ccall "gtk_menu_shell_get_type"
    c_gtk_menu_shell_get_type :: IO GType

instance GObject MenuShell where
    gobjectType = c_gtk_menu_shell_get_type
    

-- | Convert 'MenuShell' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuShell where
    toGValue o = do
        gtype <- c_gtk_menu_shell_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuShell)
        B.ManagedPtr.newObject MenuShell ptr
        
    

-- | Type class for types which can be safely cast to `MenuShell`, for instance with `toMenuShell`.
class (GObject o, O.IsDescendantOf MenuShell o) => IsMenuShell o
instance (GObject o, O.IsDescendantOf MenuShell o) => IsMenuShell o

instance O.HasParentTypes MenuShell
type instance O.ParentTypes MenuShell = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `MenuShell`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuShell :: (MonadIO m, IsMenuShell o) => o -> m MenuShell
toMenuShell = liftIO . unsafeCastTo MenuShell

-- | A convenience alias for `Nothing` :: `Maybe` `MenuShell`.
noMenuShell :: Maybe MenuShell
noMenuShell = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuShellMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuShellMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMenuShellMethod "activateItem" o = MenuShellActivateItemMethodInfo
    ResolveMenuShellMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveMenuShellMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMenuShellMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMenuShellMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMenuShellMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMenuShellMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMenuShellMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMenuShellMethod "append" o = MenuShellAppendMethodInfo
    ResolveMenuShellMethod "bindModel" o = MenuShellBindModelMethodInfo
    ResolveMenuShellMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuShellMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuShellMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMenuShellMethod "cancel" o = MenuShellCancelMethodInfo
    ResolveMenuShellMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveMenuShellMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMenuShellMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveMenuShellMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveMenuShellMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveMenuShellMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveMenuShellMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveMenuShellMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMenuShellMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMenuShellMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMenuShellMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMenuShellMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMenuShellMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMenuShellMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMenuShellMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMenuShellMethod "deactivate" o = MenuShellDeactivateMethodInfo
    ResolveMenuShellMethod "deselect" o = MenuShellDeselectMethodInfo
    ResolveMenuShellMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMenuShellMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMenuShellMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMenuShellMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMenuShellMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMenuShellMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMenuShellMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMenuShellMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMenuShellMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMenuShellMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMenuShellMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMenuShellMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMenuShellMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMenuShellMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMenuShellMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMenuShellMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMenuShellMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMenuShellMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMenuShellMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMenuShellMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMenuShellMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMenuShellMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMenuShellMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMenuShellMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMenuShellMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMenuShellMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMenuShellMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMenuShellMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMenuShellMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMenuShellMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMenuShellMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMenuShellMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMenuShellMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMenuShellMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMenuShellMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMenuShellMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveMenuShellMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuShellMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveMenuShellMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMenuShellMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuShellMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuShellMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMenuShellMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMenuShellMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMenuShellMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMenuShellMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMenuShellMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMenuShellMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMenuShellMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMenuShellMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMenuShellMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMenuShellMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMenuShellMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMenuShellMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMenuShellMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMenuShellMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMenuShellMethod "insert" o = MenuShellInsertMethodInfo
    ResolveMenuShellMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMenuShellMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMenuShellMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMenuShellMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMenuShellMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMenuShellMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuShellMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMenuShellMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMenuShellMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMenuShellMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMenuShellMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMenuShellMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMenuShellMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMenuShellMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMenuShellMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMenuShellMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveMenuShellMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMenuShellMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMenuShellMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMenuShellMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMenuShellMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMenuShellMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMenuShellMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMenuShellMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuShellMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuShellMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMenuShellMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMenuShellMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMenuShellMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMenuShellMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMenuShellMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMenuShellMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMenuShellMethod "prepend" o = MenuShellPrependMethodInfo
    ResolveMenuShellMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveMenuShellMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMenuShellMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMenuShellMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMenuShellMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMenuShellMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMenuShellMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMenuShellMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMenuShellMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMenuShellMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuShellMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuShellMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMenuShellMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMenuShellMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveMenuShellMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMenuShellMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMenuShellMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMenuShellMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMenuShellMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMenuShellMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMenuShellMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMenuShellMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMenuShellMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveMenuShellMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuShellMethod "selectFirst" o = MenuShellSelectFirstMethodInfo
    ResolveMenuShellMethod "selectItem" o = MenuShellSelectItemMethodInfo
    ResolveMenuShellMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMenuShellMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMenuShellMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMenuShellMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMenuShellMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMenuShellMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMenuShellMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMenuShellMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMenuShellMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMenuShellMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuShellMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuShellMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMenuShellMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMenuShellMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMenuShellMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuShellMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMenuShellMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMenuShellMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMenuShellMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMenuShellMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMenuShellMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuShellMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMenuShellMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveMenuShellMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMenuShellMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuShellMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMenuShellMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMenuShellMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMenuShellMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMenuShellMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMenuShellMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMenuShellMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMenuShellMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMenuShellMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMenuShellMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveMenuShellMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMenuShellMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMenuShellMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMenuShellMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMenuShellMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveMenuShellMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMenuShellMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMenuShellMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMenuShellMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuShellMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMenuShellMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMenuShellMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveMenuShellMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMenuShellMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMenuShellMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMenuShellMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveMenuShellMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveMenuShellMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveMenuShellMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveMenuShellMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveMenuShellMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMenuShellMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMenuShellMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMenuShellMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMenuShellMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMenuShellMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMenuShellMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMenuShellMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMenuShellMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMenuShellMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMenuShellMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMenuShellMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMenuShellMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMenuShellMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMenuShellMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMenuShellMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMenuShellMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMenuShellMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMenuShellMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMenuShellMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMenuShellMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveMenuShellMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMenuShellMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMenuShellMethod "getParentShell" o = MenuShellGetParentShellMethodInfo
    ResolveMenuShellMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMenuShellMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMenuShellMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveMenuShellMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMenuShellMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMenuShellMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMenuShellMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMenuShellMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMenuShellMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMenuShellMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMenuShellMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuShellMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuShellMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMenuShellMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMenuShellMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMenuShellMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMenuShellMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveMenuShellMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMenuShellMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMenuShellMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveMenuShellMethod "getSelectedItem" o = MenuShellGetSelectedItemMethodInfo
    ResolveMenuShellMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMenuShellMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMenuShellMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMenuShellMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMenuShellMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMenuShellMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMenuShellMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMenuShellMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMenuShellMethod "getTakeFocus" o = MenuShellGetTakeFocusMethodInfo
    ResolveMenuShellMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMenuShellMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMenuShellMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMenuShellMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMenuShellMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMenuShellMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMenuShellMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMenuShellMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMenuShellMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMenuShellMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMenuShellMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMenuShellMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMenuShellMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMenuShellMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMenuShellMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMenuShellMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveMenuShellMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMenuShellMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMenuShellMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMenuShellMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMenuShellMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMenuShellMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMenuShellMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuShellMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuShellMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMenuShellMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMenuShellMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveMenuShellMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMenuShellMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMenuShellMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveMenuShellMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveMenuShellMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveMenuShellMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveMenuShellMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveMenuShellMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMenuShellMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMenuShellMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMenuShellMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMenuShellMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMenuShellMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMenuShellMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMenuShellMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMenuShellMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMenuShellMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMenuShellMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMenuShellMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMenuShellMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMenuShellMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMenuShellMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMenuShellMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMenuShellMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveMenuShellMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMenuShellMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMenuShellMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuShellMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMenuShellMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveMenuShellMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMenuShellMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMenuShellMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveMenuShellMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMenuShellMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMenuShellMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMenuShellMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMenuShellMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMenuShellMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMenuShellMethod "setTakeFocus" o = MenuShellSetTakeFocusMethodInfo
    ResolveMenuShellMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveMenuShellMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveMenuShellMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMenuShellMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMenuShellMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMenuShellMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMenuShellMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMenuShellMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMenuShellMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMenuShellMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuShellMethod t MenuShell, O.MethodInfo info MenuShell p) => OL.IsLabel t (MenuShell -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal MenuShell::activate-current
-- | An action signal that activates the current menu item within
-- the menu shell.
type MenuShellActivateCurrentCallback =
    Bool
    -- ^ /@forceHide@/: if 'P.True', hide the menu after activating the menu item
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellActivateCurrentCallback`@.
noMenuShellActivateCurrentCallback :: Maybe MenuShellActivateCurrentCallback
noMenuShellActivateCurrentCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellActivateCurrentCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellActivateCurrentCallback`.
foreign import ccall "wrapper"
    mk_MenuShellActivateCurrentCallback :: C_MenuShellActivateCurrentCallback -> IO (FunPtr C_MenuShellActivateCurrentCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellActivateCurrent :: MonadIO m => MenuShellActivateCurrentCallback -> m (GClosure C_MenuShellActivateCurrentCallback)
genClosure_MenuShellActivateCurrent cb = liftIO $ do
    let cb' = wrap_MenuShellActivateCurrentCallback cb
    mk_MenuShellActivateCurrentCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellActivateCurrentCallback` into a `C_MenuShellActivateCurrentCallback`.
wrap_MenuShellActivateCurrentCallback ::
    MenuShellActivateCurrentCallback ->
    C_MenuShellActivateCurrentCallback
wrap_MenuShellActivateCurrentCallback _cb _ forceHide _ = do
    let forceHide' = (/= 0) forceHide
    _cb  forceHide'


-- | Connect a signal handler for the [activateCurrent](#signal:activateCurrent) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #activateCurrent callback
-- @
-- 
-- 
onMenuShellActivateCurrent :: (IsMenuShell a, MonadIO m) => a -> MenuShellActivateCurrentCallback -> m SignalHandlerId
onMenuShellActivateCurrent obj cb = liftIO $ do
    let cb' = wrap_MenuShellActivateCurrentCallback cb
    cb'' <- mk_MenuShellActivateCurrentCallback cb'
    connectSignalFunPtr obj "activate-current" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activateCurrent](#signal:activateCurrent) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #activateCurrent callback
-- @
-- 
-- 
afterMenuShellActivateCurrent :: (IsMenuShell a, MonadIO m) => a -> MenuShellActivateCurrentCallback -> m SignalHandlerId
afterMenuShellActivateCurrent obj cb = liftIO $ do
    let cb' = wrap_MenuShellActivateCurrentCallback cb
    cb'' <- mk_MenuShellActivateCurrentCallback cb'
    connectSignalFunPtr obj "activate-current" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellActivateCurrentSignalInfo
instance SignalInfo MenuShellActivateCurrentSignalInfo where
    type HaskellCallbackType MenuShellActivateCurrentSignalInfo = MenuShellActivateCurrentCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellActivateCurrentCallback cb
        cb'' <- mk_MenuShellActivateCurrentCallback cb'
        connectSignalFunPtr obj "activate-current" cb'' connectMode detail

#endif

-- signal MenuShell::cancel
-- | An action signal which cancels the selection within the menu shell.
-- Causes the [selectionDone]("GI.Gtk.Objects.MenuShell#signal:selectionDone") signal to be emitted.
type MenuShellCancelCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellCancelCallback`@.
noMenuShellCancelCallback :: Maybe MenuShellCancelCallback
noMenuShellCancelCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellCancelCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellCancelCallback`.
foreign import ccall "wrapper"
    mk_MenuShellCancelCallback :: C_MenuShellCancelCallback -> IO (FunPtr C_MenuShellCancelCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellCancel :: MonadIO m => MenuShellCancelCallback -> m (GClosure C_MenuShellCancelCallback)
genClosure_MenuShellCancel cb = liftIO $ do
    let cb' = wrap_MenuShellCancelCallback cb
    mk_MenuShellCancelCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellCancelCallback` into a `C_MenuShellCancelCallback`.
wrap_MenuShellCancelCallback ::
    MenuShellCancelCallback ->
    C_MenuShellCancelCallback
wrap_MenuShellCancelCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #cancel callback
-- @
-- 
-- 
onMenuShellCancel :: (IsMenuShell a, MonadIO m) => a -> MenuShellCancelCallback -> m SignalHandlerId
onMenuShellCancel obj cb = liftIO $ do
    let cb' = wrap_MenuShellCancelCallback cb
    cb'' <- mk_MenuShellCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cancel](#signal:cancel) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #cancel callback
-- @
-- 
-- 
afterMenuShellCancel :: (IsMenuShell a, MonadIO m) => a -> MenuShellCancelCallback -> m SignalHandlerId
afterMenuShellCancel obj cb = liftIO $ do
    let cb' = wrap_MenuShellCancelCallback cb
    cb'' <- mk_MenuShellCancelCallback cb'
    connectSignalFunPtr obj "cancel" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellCancelSignalInfo
instance SignalInfo MenuShellCancelSignalInfo where
    type HaskellCallbackType MenuShellCancelSignalInfo = MenuShellCancelCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellCancelCallback cb
        cb'' <- mk_MenuShellCancelCallback cb'
        connectSignalFunPtr obj "cancel" cb'' connectMode detail

#endif

-- signal MenuShell::cycle-focus
-- | A keybinding signal which moves the focus in the
-- given /@direction@/.
type MenuShellCycleFocusCallback =
    Gtk.Enums.DirectionType
    -- ^ /@direction@/: the direction to cycle in
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellCycleFocusCallback`@.
noMenuShellCycleFocusCallback :: Maybe MenuShellCycleFocusCallback
noMenuShellCycleFocusCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellCycleFocusCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellCycleFocusCallback`.
foreign import ccall "wrapper"
    mk_MenuShellCycleFocusCallback :: C_MenuShellCycleFocusCallback -> IO (FunPtr C_MenuShellCycleFocusCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellCycleFocus :: MonadIO m => MenuShellCycleFocusCallback -> m (GClosure C_MenuShellCycleFocusCallback)
genClosure_MenuShellCycleFocus cb = liftIO $ do
    let cb' = wrap_MenuShellCycleFocusCallback cb
    mk_MenuShellCycleFocusCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellCycleFocusCallback` into a `C_MenuShellCycleFocusCallback`.
wrap_MenuShellCycleFocusCallback ::
    MenuShellCycleFocusCallback ->
    C_MenuShellCycleFocusCallback
wrap_MenuShellCycleFocusCallback _cb _ direction _ = do
    let direction' = (toEnum . fromIntegral) direction
    _cb  direction'


-- | Connect a signal handler for the [cycleFocus](#signal:cycleFocus) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #cycleFocus callback
-- @
-- 
-- 
onMenuShellCycleFocus :: (IsMenuShell a, MonadIO m) => a -> MenuShellCycleFocusCallback -> m SignalHandlerId
onMenuShellCycleFocus obj cb = liftIO $ do
    let cb' = wrap_MenuShellCycleFocusCallback cb
    cb'' <- mk_MenuShellCycleFocusCallback cb'
    connectSignalFunPtr obj "cycle-focus" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cycleFocus](#signal:cycleFocus) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #cycleFocus callback
-- @
-- 
-- 
afterMenuShellCycleFocus :: (IsMenuShell a, MonadIO m) => a -> MenuShellCycleFocusCallback -> m SignalHandlerId
afterMenuShellCycleFocus obj cb = liftIO $ do
    let cb' = wrap_MenuShellCycleFocusCallback cb
    cb'' <- mk_MenuShellCycleFocusCallback cb'
    connectSignalFunPtr obj "cycle-focus" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellCycleFocusSignalInfo
instance SignalInfo MenuShellCycleFocusSignalInfo where
    type HaskellCallbackType MenuShellCycleFocusSignalInfo = MenuShellCycleFocusCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellCycleFocusCallback cb
        cb'' <- mk_MenuShellCycleFocusCallback cb'
        connectSignalFunPtr obj "cycle-focus" cb'' connectMode detail

#endif

-- signal MenuShell::deactivate
-- | This signal is emitted when a menu shell is deactivated.
type MenuShellDeactivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellDeactivateCallback`@.
noMenuShellDeactivateCallback :: Maybe MenuShellDeactivateCallback
noMenuShellDeactivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellDeactivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellDeactivateCallback`.
foreign import ccall "wrapper"
    mk_MenuShellDeactivateCallback :: C_MenuShellDeactivateCallback -> IO (FunPtr C_MenuShellDeactivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellDeactivate :: MonadIO m => MenuShellDeactivateCallback -> m (GClosure C_MenuShellDeactivateCallback)
genClosure_MenuShellDeactivate cb = liftIO $ do
    let cb' = wrap_MenuShellDeactivateCallback cb
    mk_MenuShellDeactivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellDeactivateCallback` into a `C_MenuShellDeactivateCallback`.
wrap_MenuShellDeactivateCallback ::
    MenuShellDeactivateCallback ->
    C_MenuShellDeactivateCallback
wrap_MenuShellDeactivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [deactivate](#signal:deactivate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #deactivate callback
-- @
-- 
-- 
onMenuShellDeactivate :: (IsMenuShell a, MonadIO m) => a -> MenuShellDeactivateCallback -> m SignalHandlerId
onMenuShellDeactivate obj cb = liftIO $ do
    let cb' = wrap_MenuShellDeactivateCallback cb
    cb'' <- mk_MenuShellDeactivateCallback cb'
    connectSignalFunPtr obj "deactivate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [deactivate](#signal:deactivate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #deactivate callback
-- @
-- 
-- 
afterMenuShellDeactivate :: (IsMenuShell a, MonadIO m) => a -> MenuShellDeactivateCallback -> m SignalHandlerId
afterMenuShellDeactivate obj cb = liftIO $ do
    let cb' = wrap_MenuShellDeactivateCallback cb
    cb'' <- mk_MenuShellDeactivateCallback cb'
    connectSignalFunPtr obj "deactivate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellDeactivateSignalInfo
instance SignalInfo MenuShellDeactivateSignalInfo where
    type HaskellCallbackType MenuShellDeactivateSignalInfo = MenuShellDeactivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellDeactivateCallback cb
        cb'' <- mk_MenuShellDeactivateCallback cb'
        connectSignalFunPtr obj "deactivate" cb'' connectMode detail

#endif

-- signal MenuShell::insert
-- | The [insert](#signal:insert) signal is emitted when a new t'GI.Gtk.Objects.MenuItem.MenuItem' is added to
-- a t'GI.Gtk.Objects.MenuShell.MenuShell'.  A separate signal is used instead of
-- GtkContainer[add](#signal:add) because of the need for an additional position
-- parameter.
-- 
-- The inverse of this signal is the GtkContainer[removed](#signal:removed) signal.
-- 
-- /Since: 3.2/
type MenuShellInsertCallback =
    Gtk.Widget.Widget
    -- ^ /@child@/: the t'GI.Gtk.Objects.MenuItem.MenuItem' that is being inserted
    -> Int32
    -- ^ /@position@/: the position at which the insert occurs
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellInsertCallback`@.
noMenuShellInsertCallback :: Maybe MenuShellInsertCallback
noMenuShellInsertCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellInsertCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellInsertCallback`.
foreign import ccall "wrapper"
    mk_MenuShellInsertCallback :: C_MenuShellInsertCallback -> IO (FunPtr C_MenuShellInsertCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellInsert :: MonadIO m => MenuShellInsertCallback -> m (GClosure C_MenuShellInsertCallback)
genClosure_MenuShellInsert cb = liftIO $ do
    let cb' = wrap_MenuShellInsertCallback cb
    mk_MenuShellInsertCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellInsertCallback` into a `C_MenuShellInsertCallback`.
wrap_MenuShellInsertCallback ::
    MenuShellInsertCallback ->
    C_MenuShellInsertCallback
wrap_MenuShellInsertCallback _cb _ child position _ = do
    child' <- (newObject Gtk.Widget.Widget) child
    _cb  child' position


-- | Connect a signal handler for the [insert](#signal:insert) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #insert callback
-- @
-- 
-- 
onMenuShellInsert :: (IsMenuShell a, MonadIO m) => a -> MenuShellInsertCallback -> m SignalHandlerId
onMenuShellInsert obj cb = liftIO $ do
    let cb' = wrap_MenuShellInsertCallback cb
    cb'' <- mk_MenuShellInsertCallback cb'
    connectSignalFunPtr obj "insert" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [insert](#signal:insert) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #insert callback
-- @
-- 
-- 
afterMenuShellInsert :: (IsMenuShell a, MonadIO m) => a -> MenuShellInsertCallback -> m SignalHandlerId
afterMenuShellInsert obj cb = liftIO $ do
    let cb' = wrap_MenuShellInsertCallback cb
    cb'' <- mk_MenuShellInsertCallback cb'
    connectSignalFunPtr obj "insert" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellInsertSignalInfo
instance SignalInfo MenuShellInsertSignalInfo where
    type HaskellCallbackType MenuShellInsertSignalInfo = MenuShellInsertCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellInsertCallback cb
        cb'' <- mk_MenuShellInsertCallback cb'
        connectSignalFunPtr obj "insert" cb'' connectMode detail

#endif

-- signal MenuShell::move-current
-- | An keybinding signal which moves the current menu item
-- in the direction specified by /@direction@/.
type MenuShellMoveCurrentCallback =
    Gtk.Enums.MenuDirectionType
    -- ^ /@direction@/: the direction to move
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellMoveCurrentCallback`@.
noMenuShellMoveCurrentCallback :: Maybe MenuShellMoveCurrentCallback
noMenuShellMoveCurrentCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellMoveCurrentCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellMoveCurrentCallback`.
foreign import ccall "wrapper"
    mk_MenuShellMoveCurrentCallback :: C_MenuShellMoveCurrentCallback -> IO (FunPtr C_MenuShellMoveCurrentCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellMoveCurrent :: MonadIO m => MenuShellMoveCurrentCallback -> m (GClosure C_MenuShellMoveCurrentCallback)
genClosure_MenuShellMoveCurrent cb = liftIO $ do
    let cb' = wrap_MenuShellMoveCurrentCallback cb
    mk_MenuShellMoveCurrentCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellMoveCurrentCallback` into a `C_MenuShellMoveCurrentCallback`.
wrap_MenuShellMoveCurrentCallback ::
    MenuShellMoveCurrentCallback ->
    C_MenuShellMoveCurrentCallback
wrap_MenuShellMoveCurrentCallback _cb _ direction _ = do
    let direction' = (toEnum . fromIntegral) direction
    _cb  direction'


-- | Connect a signal handler for the [moveCurrent](#signal:moveCurrent) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #moveCurrent callback
-- @
-- 
-- 
onMenuShellMoveCurrent :: (IsMenuShell a, MonadIO m) => a -> MenuShellMoveCurrentCallback -> m SignalHandlerId
onMenuShellMoveCurrent obj cb = liftIO $ do
    let cb' = wrap_MenuShellMoveCurrentCallback cb
    cb'' <- mk_MenuShellMoveCurrentCallback cb'
    connectSignalFunPtr obj "move-current" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveCurrent](#signal:moveCurrent) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #moveCurrent callback
-- @
-- 
-- 
afterMenuShellMoveCurrent :: (IsMenuShell a, MonadIO m) => a -> MenuShellMoveCurrentCallback -> m SignalHandlerId
afterMenuShellMoveCurrent obj cb = liftIO $ do
    let cb' = wrap_MenuShellMoveCurrentCallback cb
    cb'' <- mk_MenuShellMoveCurrentCallback cb'
    connectSignalFunPtr obj "move-current" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellMoveCurrentSignalInfo
instance SignalInfo MenuShellMoveCurrentSignalInfo where
    type HaskellCallbackType MenuShellMoveCurrentSignalInfo = MenuShellMoveCurrentCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellMoveCurrentCallback cb
        cb'' <- mk_MenuShellMoveCurrentCallback cb'
        connectSignalFunPtr obj "move-current" cb'' connectMode detail

#endif

-- signal MenuShell::move-selected
-- | The [moveSelected](#signal:moveSelected) signal is emitted to move the selection to
-- another item.
-- 
-- /Since: 2.12/
type MenuShellMoveSelectedCallback =
    Int32
    -- ^ /@distance@/: +1 to move to the next item, -1 to move to the previous
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop the signal emission, 'P.False' to continue

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellMoveSelectedCallback`@.
noMenuShellMoveSelectedCallback :: Maybe MenuShellMoveSelectedCallback
noMenuShellMoveSelectedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellMoveSelectedCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_MenuShellMoveSelectedCallback`.
foreign import ccall "wrapper"
    mk_MenuShellMoveSelectedCallback :: C_MenuShellMoveSelectedCallback -> IO (FunPtr C_MenuShellMoveSelectedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellMoveSelected :: MonadIO m => MenuShellMoveSelectedCallback -> m (GClosure C_MenuShellMoveSelectedCallback)
genClosure_MenuShellMoveSelected cb = liftIO $ do
    let cb' = wrap_MenuShellMoveSelectedCallback cb
    mk_MenuShellMoveSelectedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellMoveSelectedCallback` into a `C_MenuShellMoveSelectedCallback`.
wrap_MenuShellMoveSelectedCallback ::
    MenuShellMoveSelectedCallback ->
    C_MenuShellMoveSelectedCallback
wrap_MenuShellMoveSelectedCallback _cb _ distance _ = do
    result <- _cb  distance
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [moveSelected](#signal:moveSelected) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #moveSelected callback
-- @
-- 
-- 
onMenuShellMoveSelected :: (IsMenuShell a, MonadIO m) => a -> MenuShellMoveSelectedCallback -> m SignalHandlerId
onMenuShellMoveSelected obj cb = liftIO $ do
    let cb' = wrap_MenuShellMoveSelectedCallback cb
    cb'' <- mk_MenuShellMoveSelectedCallback cb'
    connectSignalFunPtr obj "move-selected" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveSelected](#signal:moveSelected) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #moveSelected callback
-- @
-- 
-- 
afterMenuShellMoveSelected :: (IsMenuShell a, MonadIO m) => a -> MenuShellMoveSelectedCallback -> m SignalHandlerId
afterMenuShellMoveSelected obj cb = liftIO $ do
    let cb' = wrap_MenuShellMoveSelectedCallback cb
    cb'' <- mk_MenuShellMoveSelectedCallback cb'
    connectSignalFunPtr obj "move-selected" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellMoveSelectedSignalInfo
instance SignalInfo MenuShellMoveSelectedSignalInfo where
    type HaskellCallbackType MenuShellMoveSelectedSignalInfo = MenuShellMoveSelectedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellMoveSelectedCallback cb
        cb'' <- mk_MenuShellMoveSelectedCallback cb'
        connectSignalFunPtr obj "move-selected" cb'' connectMode detail

#endif

-- signal MenuShell::selection-done
-- | This signal is emitted when a selection has been
-- completed within a menu shell.
type MenuShellSelectionDoneCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuShellSelectionDoneCallback`@.
noMenuShellSelectionDoneCallback :: Maybe MenuShellSelectionDoneCallback
noMenuShellSelectionDoneCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuShellSelectionDoneCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuShellSelectionDoneCallback`.
foreign import ccall "wrapper"
    mk_MenuShellSelectionDoneCallback :: C_MenuShellSelectionDoneCallback -> IO (FunPtr C_MenuShellSelectionDoneCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuShellSelectionDone :: MonadIO m => MenuShellSelectionDoneCallback -> m (GClosure C_MenuShellSelectionDoneCallback)
genClosure_MenuShellSelectionDone cb = liftIO $ do
    let cb' = wrap_MenuShellSelectionDoneCallback cb
    mk_MenuShellSelectionDoneCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuShellSelectionDoneCallback` into a `C_MenuShellSelectionDoneCallback`.
wrap_MenuShellSelectionDoneCallback ::
    MenuShellSelectionDoneCallback ->
    C_MenuShellSelectionDoneCallback
wrap_MenuShellSelectionDoneCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [selectionDone](#signal:selectionDone) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuShell #selectionDone callback
-- @
-- 
-- 
onMenuShellSelectionDone :: (IsMenuShell a, MonadIO m) => a -> MenuShellSelectionDoneCallback -> m SignalHandlerId
onMenuShellSelectionDone obj cb = liftIO $ do
    let cb' = wrap_MenuShellSelectionDoneCallback cb
    cb'' <- mk_MenuShellSelectionDoneCallback cb'
    connectSignalFunPtr obj "selection-done" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectionDone](#signal:selectionDone) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuShell #selectionDone callback
-- @
-- 
-- 
afterMenuShellSelectionDone :: (IsMenuShell a, MonadIO m) => a -> MenuShellSelectionDoneCallback -> m SignalHandlerId
afterMenuShellSelectionDone obj cb = liftIO $ do
    let cb' = wrap_MenuShellSelectionDoneCallback cb
    cb'' <- mk_MenuShellSelectionDoneCallback cb'
    connectSignalFunPtr obj "selection-done" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuShellSelectionDoneSignalInfo
instance SignalInfo MenuShellSelectionDoneSignalInfo where
    type HaskellCallbackType MenuShellSelectionDoneSignalInfo = MenuShellSelectionDoneCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuShellSelectionDoneCallback cb
        cb'' <- mk_MenuShellSelectionDoneCallback cb'
        connectSignalFunPtr obj "selection-done" cb'' connectMode detail

#endif

-- VVV Prop "take-focus"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@take-focus@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuShell #takeFocus
-- @
getMenuShellTakeFocus :: (MonadIO m, IsMenuShell o) => o -> m Bool
getMenuShellTakeFocus obj = liftIO $ B.Properties.getObjectPropertyBool obj "take-focus"

-- | Set the value of the “@take-focus@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuShell [ #takeFocus 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuShellTakeFocus :: (MonadIO m, IsMenuShell o) => o -> Bool -> m ()
setMenuShellTakeFocus obj val = liftIO $ B.Properties.setObjectPropertyBool obj "take-focus" val

-- | Construct a `GValueConstruct` with valid value for the “@take-focus@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuShellTakeFocus :: (IsMenuShell o) => Bool -> IO (GValueConstruct o)
constructMenuShellTakeFocus val = B.Properties.constructObjectPropertyBool "take-focus" val

#if defined(ENABLE_OVERLOADING)
data MenuShellTakeFocusPropertyInfo
instance AttrInfo MenuShellTakeFocusPropertyInfo where
    type AttrAllowedOps MenuShellTakeFocusPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MenuShellTakeFocusPropertyInfo = IsMenuShell
    type AttrSetTypeConstraint MenuShellTakeFocusPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint MenuShellTakeFocusPropertyInfo = (~) Bool
    type AttrTransferType MenuShellTakeFocusPropertyInfo = Bool
    type AttrGetType MenuShellTakeFocusPropertyInfo = Bool
    type AttrLabel MenuShellTakeFocusPropertyInfo = "take-focus"
    type AttrOrigin MenuShellTakeFocusPropertyInfo = MenuShell
    attrGet = getMenuShellTakeFocus
    attrSet = setMenuShellTakeFocus
    attrTransfer _ v = do
        return v
    attrConstruct = constructMenuShellTakeFocus
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuShell
type instance O.AttributeList MenuShell = MenuShellAttributeList
type MenuShellAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("takeFocus", MenuShellTakeFocusPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
menuShellTakeFocus :: AttrLabelProxy "takeFocus"
menuShellTakeFocus = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuShell = MenuShellSignalList
type MenuShellSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateCurrent", MenuShellActivateCurrentSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancel", MenuShellCancelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("cycleFocus", MenuShellCycleFocusSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deactivate", MenuShellDeactivateSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("insert", MenuShellInsertSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCurrent", MenuShellMoveCurrentSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSelected", MenuShellMoveSelectedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionDone", MenuShellSelectionDoneSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method MenuShell::activate_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_item"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkMenuItem to activate"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "force_deactivate"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "if %TRUE, force the deactivation of the\n    menu shell after the menu item is activated"
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

foreign import ccall "gtk_menu_shell_activate_item" gtk_menu_shell_activate_item :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gtk.Widget.Widget ->                -- menu_item : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- force_deactivate : TBasicType TBoolean
    IO ()

-- | Activates the menu item within the menu shell.
menuShellActivateItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> b
    -- ^ /@menuItem@/: the t'GI.Gtk.Objects.MenuItem.MenuItem' to activate
    -> Bool
    -- ^ /@forceDeactivate@/: if 'P.True', force the deactivation of the
    --     menu shell after the menu item is activated
    -> m ()
menuShellActivateItem menuShell menuItem forceDeactivate = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    menuItem' <- unsafeManagedPtrCastPtr menuItem
    let forceDeactivate' = (fromIntegral . fromEnum) forceDeactivate
    gtk_menu_shell_activate_item menuShell' menuItem' forceDeactivate'
    touchManagedPtr menuShell
    touchManagedPtr menuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellActivateItemMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuShellActivateItemMethodInfo a signature where
    overloadedMethod = menuShellActivateItem

#endif

-- method MenuShell::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkMenuItem to add"
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

foreign import ccall "gtk_menu_shell_append" gtk_menu_shell_append :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gtk.MenuItem.MenuItem ->            -- child : TInterface (Name {namespace = "Gtk", name = "MenuItem"})
    IO ()

-- | Adds a new t'GI.Gtk.Objects.MenuItem.MenuItem' to the end of the menu shell\'s
-- item list.
menuShellAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gtk.MenuItem.IsMenuItem b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> b
    -- ^ /@child@/: The t'GI.Gtk.Objects.MenuItem.MenuItem' to add
    -> m ()
menuShellAppend menuShell child = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    child' <- unsafeManagedPtrCastPtr child
    gtk_menu_shell_append menuShell' child'
    touchManagedPtr menuShell
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellAppendMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMenuShell a, Gtk.MenuItem.IsMenuItem b) => O.MethodInfo MenuShellAppendMethodInfo a signature where
    overloadedMethod = menuShellAppend

#endif

-- method MenuShell::bind_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "MenuModel" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GMenuModel to bind to or %NULL to remove\n  binding"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "action_namespace"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the namespace for actions in @model"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "with_separators"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if toplevel items in @shell should have\n  separators between them"
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

foreign import ccall "gtk_menu_shell_bind_model" gtk_menu_shell_bind_model :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gio.MenuModel.MenuModel ->          -- model : TInterface (Name {namespace = "Gio", name = "MenuModel"})
    CString ->                              -- action_namespace : TBasicType TUTF8
    CInt ->                                 -- with_separators : TBasicType TBoolean
    IO ()

-- | Establishes a binding between a t'GI.Gtk.Objects.MenuShell.MenuShell' and a t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- The contents of /@shell@/ are removed and then refilled with menu items
-- according to /@model@/.  When /@model@/ changes, /@shell@/ is updated.
-- Calling this function twice on /@shell@/ with different /@model@/ will
-- cause the first binding to be replaced with a binding to the new
-- model. If /@model@/ is 'P.Nothing' then any previous binding is undone and
-- all children are removed.
-- 
-- /@withSeparators@/ determines if toplevel items (eg: sections) have
-- separators inserted between them.  This is typically desired for
-- menus but doesn’t make sense for menubars.
-- 
-- If /@actionNamespace@/ is non-'P.Nothing' then the effect is as if all
-- actions mentioned in the /@model@/ have their names prefixed with the
-- namespace, plus a dot.  For example, if the action “quit” is
-- mentioned and /@actionNamespace@/ is “app” then the effective action
-- name is “app.quit”.
-- 
-- This function uses t'GI.Gtk.Interfaces.Actionable.Actionable' to define the action name and
-- target values on the created menu items.  If you want to use an
-- action group other than “app” and “win”, or if you want to use a
-- t'GI.Gtk.Objects.MenuShell.MenuShell' outside of a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow', then you will need
-- to attach your own action group to the widget hierarchy using
-- 'GI.Gtk.Objects.Widget.widgetInsertActionGroup'.  As an example, if you created a
-- group with a “quit” action and inserted it with the name “mygroup”
-- then you would use the action name “mygroup.quit” in your
-- t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- For most cases you are probably better off using
-- 'GI.Gtk.Objects.Menu.menuNewFromModel' or 'GI.Gtk.Objects.MenuBar.menuBarNewFromModel' or just
-- directly passing the t'GI.Gio.Objects.MenuModel.MenuModel' to 'GI.Gtk.Objects.Application.applicationSetAppMenu' or
-- 'GI.Gtk.Objects.Application.applicationSetMenubar'.
-- 
-- /Since: 3.6/
menuShellBindModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gio.MenuModel.IsMenuModel b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> Maybe (b)
    -- ^ /@model@/: the t'GI.Gio.Objects.MenuModel.MenuModel' to bind to or 'P.Nothing' to remove
    --   binding
    -> Maybe (T.Text)
    -- ^ /@actionNamespace@/: the namespace for actions in /@model@/
    -> Bool
    -- ^ /@withSeparators@/: 'P.True' if toplevel items in /@shell@/ should have
    --   separators between them
    -> m ()
menuShellBindModel menuShell model actionNamespace withSeparators = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    maybeModel <- case model of
        Nothing -> return nullPtr
        Just jModel -> do
            jModel' <- unsafeManagedPtrCastPtr jModel
            return jModel'
    maybeActionNamespace <- case actionNamespace of
        Nothing -> return nullPtr
        Just jActionNamespace -> do
            jActionNamespace' <- textToCString jActionNamespace
            return jActionNamespace'
    let withSeparators' = (fromIntegral . fromEnum) withSeparators
    gtk_menu_shell_bind_model menuShell' maybeModel maybeActionNamespace withSeparators'
    touchManagedPtr menuShell
    whenJust model touchManagedPtr
    freeMem maybeActionNamespace
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellBindModelMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (T.Text) -> Bool -> m ()), MonadIO m, IsMenuShell a, Gio.MenuModel.IsMenuModel b) => O.MethodInfo MenuShellBindModelMethodInfo a signature where
    overloadedMethod = menuShellBindModel

#endif

-- method MenuShell::cancel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_cancel" gtk_menu_shell_cancel :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO ()

-- | Cancels the selection within the menu shell.
-- 
-- /Since: 2.4/
menuShellCancel ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m ()
menuShellCancel menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    gtk_menu_shell_cancel menuShell'
    touchManagedPtr menuShell
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellCancelMethodInfo
instance (signature ~ (m ()), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellCancelMethodInfo a signature where
    overloadedMethod = menuShellCancel

#endif

-- method MenuShell::deactivate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_deactivate" gtk_menu_shell_deactivate :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO ()

-- | Deactivates the menu shell.
-- 
-- Typically this results in the menu shell being erased
-- from the screen.
menuShellDeactivate ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m ()
menuShellDeactivate menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    gtk_menu_shell_deactivate menuShell'
    touchManagedPtr menuShell
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellDeactivateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellDeactivateMethodInfo a signature where
    overloadedMethod = menuShellDeactivate

#endif

-- method MenuShell::deselect
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_deselect" gtk_menu_shell_deselect :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO ()

-- | Deselects the currently selected item from the menu shell,
-- if any.
menuShellDeselect ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m ()
menuShellDeselect menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    gtk_menu_shell_deselect menuShell'
    touchManagedPtr menuShell
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellDeselectMethodInfo
instance (signature ~ (m ()), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellDeselectMethodInfo a signature where
    overloadedMethod = menuShellDeselect

#endif

-- method MenuShell::get_parent_shell
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_get_parent_shell" gtk_menu_shell_get_parent_shell :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the parent menu shell.
-- 
-- The parent menu shell of a submenu is the t'GI.Gtk.Objects.Menu.Menu' or t'GI.Gtk.Objects.MenuBar.MenuBar'
-- from which it was opened up.
-- 
-- /Since: 3.0/
menuShellGetParentShell ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the parent t'GI.Gtk.Objects.MenuShell.MenuShell'
menuShellGetParentShell menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    result <- gtk_menu_shell_get_parent_shell menuShell'
    checkUnexpectedReturnNULL "menuShellGetParentShell" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr menuShell
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuShellGetParentShellMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellGetParentShellMethodInfo a signature where
    overloadedMethod = menuShellGetParentShell

#endif

-- method MenuShell::get_selected_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_get_selected_item" gtk_menu_shell_get_selected_item :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the currently selected item.
-- 
-- /Since: 3.0/
menuShellGetSelectedItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the currently selected item
menuShellGetSelectedItem menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    result <- gtk_menu_shell_get_selected_item menuShell'
    checkUnexpectedReturnNULL "menuShellGetSelectedItem" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr menuShell
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuShellGetSelectedItemMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellGetSelectedItemMethodInfo a signature where
    overloadedMethod = menuShellGetSelectedItem

#endif

-- method MenuShell::get_take_focus
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_shell_get_take_focus" gtk_menu_shell_get_take_focus :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    IO CInt

-- | Returns 'P.True' if the menu shell will take the keyboard focus on popup.
-- 
-- /Since: 2.8/
menuShellGetTakeFocus ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the menu shell will take the keyboard focus on popup.
menuShellGetTakeFocus menuShell = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    result <- gtk_menu_shell_get_take_focus menuShell'
    let result' = (/= 0) result
    touchManagedPtr menuShell
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuShellGetTakeFocusMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellGetTakeFocusMethodInfo a signature where
    overloadedMethod = menuShellGetTakeFocus

#endif

-- method MenuShell::insert
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkMenuItem to add"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The position in the item list where @child\n    is added. Positions are numbered from 0 to n-1"
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

foreign import ccall "gtk_menu_shell_insert" gtk_menu_shell_insert :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Adds a new t'GI.Gtk.Objects.MenuItem.MenuItem' to the menu shell’s item list
-- at the position indicated by /@position@/.
menuShellInsert ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> b
    -- ^ /@child@/: The t'GI.Gtk.Objects.MenuItem.MenuItem' to add
    -> Int32
    -- ^ /@position@/: The position in the item list where /@child@/
    --     is added. Positions are numbered from 0 to n-1
    -> m ()
menuShellInsert menuShell child position = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    child' <- unsafeManagedPtrCastPtr child
    gtk_menu_shell_insert menuShell' child' position
    touchManagedPtr menuShell
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellInsertMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuShellInsertMethodInfo a signature where
    overloadedMethod = menuShellInsert

#endif

-- method MenuShell::prepend
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkMenuItem to add"
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

foreign import ccall "gtk_menu_shell_prepend" gtk_menu_shell_prepend :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds a new t'GI.Gtk.Objects.MenuItem.MenuItem' to the beginning of the menu shell\'s
-- item list.
menuShellPrepend ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> b
    -- ^ /@child@/: The t'GI.Gtk.Objects.MenuItem.MenuItem' to add
    -> m ()
menuShellPrepend menuShell child = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    child' <- unsafeManagedPtrCastPtr child
    gtk_menu_shell_prepend menuShell' child'
    touchManagedPtr menuShell
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellPrependMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuShellPrependMethodInfo a signature where
    overloadedMethod = menuShellPrepend

#endif

-- method MenuShell::select_first
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "search_sensitive"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "if %TRUE, search for the first selectable\n                   menu item, otherwise select nothing if\n                   the first item isn\8217t sensitive. This\n                   should be %FALSE if the menu is being\n                   popped up initially."
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

foreign import ccall "gtk_menu_shell_select_first" gtk_menu_shell_select_first :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    CInt ->                                 -- search_sensitive : TBasicType TBoolean
    IO ()

-- | Select the first visible or selectable child of the menu shell;
-- don’t select tearoff items unless the only item is a tearoff
-- item.
-- 
-- /Since: 2.2/
menuShellSelectFirst ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> Bool
    -- ^ /@searchSensitive@/: if 'P.True', search for the first selectable
    --                    menu item, otherwise select nothing if
    --                    the first item isn’t sensitive. This
    --                    should be 'P.False' if the menu is being
    --                    popped up initially.
    -> m ()
menuShellSelectFirst menuShell searchSensitive = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    let searchSensitive' = (fromIntegral . fromEnum) searchSensitive
    gtk_menu_shell_select_first menuShell' searchSensitive'
    touchManagedPtr menuShell
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellSelectFirstMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellSelectFirstMethodInfo a signature where
    overloadedMethod = menuShellSelectFirst

#endif

-- method MenuShell::select_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_item"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkMenuItem to select"
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

foreign import ccall "gtk_menu_shell_select_item" gtk_menu_shell_select_item :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    Ptr Gtk.Widget.Widget ->                -- menu_item : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Selects the menu item from the menu shell.
menuShellSelectItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> b
    -- ^ /@menuItem@/: The t'GI.Gtk.Objects.MenuItem.MenuItem' to select
    -> m ()
menuShellSelectItem menuShell menuItem = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    menuItem' <- unsafeManagedPtrCastPtr menuItem
    gtk_menu_shell_select_item menuShell' menuItem'
    touchManagedPtr menuShell
    touchManagedPtr menuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellSelectItemMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMenuShell a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuShellSelectItemMethodInfo a signature where
    overloadedMethod = menuShellSelectItem

#endif

-- method MenuShell::set_take_focus
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_shell"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuShell" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuShell" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "take_focus"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if the menu shell should take the keyboard\n    focus on popup"
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

foreign import ccall "gtk_menu_shell_set_take_focus" gtk_menu_shell_set_take_focus :: 
    Ptr MenuShell ->                        -- menu_shell : TInterface (Name {namespace = "Gtk", name = "MenuShell"})
    CInt ->                                 -- take_focus : TBasicType TBoolean
    IO ()

-- | If /@takeFocus@/ is 'P.True' (the default) the menu shell will take
-- the keyboard focus so that it will receive all keyboard events
-- which is needed to enable keyboard navigation in menus.
-- 
-- Setting /@takeFocus@/ to 'P.False' is useful only for special applications
-- like virtual keyboard implementations which should not take keyboard
-- focus.
-- 
-- The /@takeFocus@/ state of a menu or menu bar is automatically
-- propagated to submenus whenever a submenu is popped up, so you
-- don’t have to worry about recursively setting it for your entire
-- menu hierarchy. Only when programmatically picking a submenu and
-- popping it up manually, the /@takeFocus@/ property of the submenu
-- needs to be set explicitly.
-- 
-- Note that setting it to 'P.False' has side-effects:
-- 
-- If the focus is in some other app, it keeps the focus and keynav in
-- the menu doesn’t work. Consequently, keynav on the menu will only
-- work if the focus is on some toplevel owned by the onscreen keyboard.
-- 
-- To avoid confusing the user, menus with /@takeFocus@/ set to 'P.False'
-- should not display mnemonics or accelerators, since it cannot be
-- guaranteed that they will work.
-- 
-- See also 'GI.Gdk.Functions.keyboardGrab'
-- 
-- /Since: 2.8/
menuShellSetTakeFocus ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuShell a) =>
    a
    -- ^ /@menuShell@/: a t'GI.Gtk.Objects.MenuShell.MenuShell'
    -> Bool
    -- ^ /@takeFocus@/: 'P.True' if the menu shell should take the keyboard
    --     focus on popup
    -> m ()
menuShellSetTakeFocus menuShell takeFocus = liftIO $ do
    menuShell' <- unsafeManagedPtrCastPtr menuShell
    let takeFocus' = (fromIntegral . fromEnum) takeFocus
    gtk_menu_shell_set_take_focus menuShell' takeFocus'
    touchManagedPtr menuShell
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuShellSetTakeFocusMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsMenuShell a) => O.MethodInfo MenuShellSetTakeFocusMethodInfo a signature where
    overloadedMethod = menuShellSetTakeFocus

#endif

