{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.MenuButton.MenuButton' widget is used to display a popup when clicked on.
-- This popup can be provided either as a t'GI.Gtk.Objects.Menu.Menu', a t'GI.Gtk.Objects.Popover.Popover' or an
-- abstract t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- The t'GI.Gtk.Objects.MenuButton.MenuButton' widget can hold any valid child widget. That is, it
-- can hold almost any other standard t'GI.Gtk.Objects.Widget.Widget'. The most commonly used
-- child is t'GI.Gtk.Objects.Image.Image'. If no widget is explicitely added to the t'GI.Gtk.Objects.MenuButton.MenuButton',
-- a t'GI.Gtk.Objects.Image.Image' is automatically created, using an arrow image oriented
-- according to t'GI.Gtk.Objects.MenuButton.MenuButton':@/direction/@ or the generic “open-menu-symbolic”
-- icon if the direction is not set.
-- 
-- The positioning of the popup is determined by the t'GI.Gtk.Objects.MenuButton.MenuButton':@/direction/@
-- property of the menu button.
-- 
-- For menus, the t'GI.Gtk.Objects.Widget.Widget':@/halign/@ and t'GI.Gtk.Objects.Widget.Widget':@/valign/@ properties of the
-- menu are also taken into account. For example, when the direction is
-- 'GI.Gtk.Enums.ArrowTypeDown' and the horizontal alignment is 'GI.Gtk.Enums.AlignStart', the
-- menu will be positioned below the button, with the starting edge
-- (depending on the text direction) of the menu aligned with the starting
-- edge of the button. If there is not enough space below the button, the
-- menu is popped up above the button instead. If the alignment would move
-- part of the menu offscreen, it is “pushed in”.
-- 
-- == Direction = Down
-- 
-- 
-- * halign = start
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/down-start.png>>
-- 
-- * halign = center
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/down-center.png>>
-- 
-- * halign = end
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/down-end.png>>
-- 
-- == Direction = Up
-- 
-- 
-- * halign = start
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/up-start.png>>
-- 
-- * halign = center
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/up-center.png>>
-- 
-- * halign = end
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/up-end.png>>
-- 
-- == Direction = Left
-- 
-- 
-- * valign = start
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/left-start.png>>
-- 
-- * valign = center
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/left-center.png>>
-- 
-- * valign = end
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/left-end.png>>
-- 
-- == Direction = Right
-- 
-- 
-- * valign = start
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/right-start.png>>
-- 
-- * valign = center
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/right-center.png>>
-- 
-- * valign = end
-- 
-- 
--     <<https://developer.gnome.org/gtk3/stable/right-end.png>>
-- 
-- = CSS nodes
-- 
-- GtkMenuButton has a single CSS node with name button. To differentiate
-- it from a plain t'GI.Gtk.Objects.Button.Button', it gets the .popup style class.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuButton
    ( 

-- * Exported types
    MenuButton(..)                          ,
    IsMenuButton                            ,
    toMenuButton                            ,
    noMenuButton                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuButtonMethod                 ,
#endif


-- ** getAlignWidget #method:getAlignWidget#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetAlignWidgetMethodInfo      ,
#endif
    menuButtonGetAlignWidget                ,


-- ** getDirection #method:getDirection#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetDirectionMethodInfo        ,
#endif
    menuButtonGetDirection                  ,


-- ** getMenuModel #method:getMenuModel#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetMenuModelMethodInfo        ,
#endif
    menuButtonGetMenuModel                  ,


-- ** getPopover #method:getPopover#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetPopoverMethodInfo          ,
#endif
    menuButtonGetPopover                    ,


-- ** getPopup #method:getPopup#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetPopupMethodInfo            ,
#endif
    menuButtonGetPopup                      ,


-- ** getUsePopover #method:getUsePopover#

#if defined(ENABLE_OVERLOADING)
    MenuButtonGetUsePopoverMethodInfo       ,
#endif
    menuButtonGetUsePopover                 ,


-- ** new #method:new#

    menuButtonNew                           ,


-- ** setAlignWidget #method:setAlignWidget#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetAlignWidgetMethodInfo      ,
#endif
    menuButtonSetAlignWidget                ,


-- ** setDirection #method:setDirection#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetDirectionMethodInfo        ,
#endif
    menuButtonSetDirection                  ,


-- ** setMenuModel #method:setMenuModel#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetMenuModelMethodInfo        ,
#endif
    menuButtonSetMenuModel                  ,


-- ** setPopover #method:setPopover#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetPopoverMethodInfo          ,
#endif
    menuButtonSetPopover                    ,


-- ** setPopup #method:setPopup#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetPopupMethodInfo            ,
#endif
    menuButtonSetPopup                      ,


-- ** setUsePopover #method:setUsePopover#

#if defined(ENABLE_OVERLOADING)
    MenuButtonSetUsePopoverMethodInfo       ,
#endif
    menuButtonSetUsePopover                 ,




 -- * Properties
-- ** alignWidget #attr:alignWidget#
-- | The t'GI.Gtk.Objects.Widget.Widget' to use to align the menu with.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    MenuButtonAlignWidgetPropertyInfo       ,
#endif
    clearMenuButtonAlignWidget              ,
    constructMenuButtonAlignWidget          ,
    getMenuButtonAlignWidget                ,
#if defined(ENABLE_OVERLOADING)
    menuButtonAlignWidget                   ,
#endif
    setMenuButtonAlignWidget                ,


-- ** direction #attr:direction#
-- | The t'GI.Gtk.Enums.ArrowType' representing the direction in which the
-- menu or popover will be popped out.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    MenuButtonDirectionPropertyInfo         ,
#endif
    constructMenuButtonDirection            ,
    getMenuButtonDirection                  ,
#if defined(ENABLE_OVERLOADING)
    menuButtonDirection                     ,
#endif
    setMenuButtonDirection                  ,


-- ** menuModel #attr:menuModel#
-- | The t'GI.Gio.Objects.MenuModel.MenuModel' from which the popup will be created.
-- Depending on the t'GI.Gtk.Objects.MenuButton.MenuButton':@/use-popover/@ property, that may
-- be a menu or a popover.
-- 
-- See 'GI.Gtk.Objects.MenuButton.menuButtonSetMenuModel' for the interaction with the
-- t'GI.Gtk.Objects.MenuButton.MenuButton':@/popup/@ property.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    MenuButtonMenuModelPropertyInfo         ,
#endif
    clearMenuButtonMenuModel                ,
    constructMenuButtonMenuModel            ,
    getMenuButtonMenuModel                  ,
#if defined(ENABLE_OVERLOADING)
    menuButtonMenuModel                     ,
#endif
    setMenuButtonMenuModel                  ,


-- ** popover #attr:popover#
-- | The t'GI.Gtk.Objects.Popover.Popover' that will be popped up when the button is clicked.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    MenuButtonPopoverPropertyInfo           ,
#endif
    clearMenuButtonPopover                  ,
    constructMenuButtonPopover              ,
    getMenuButtonPopover                    ,
#if defined(ENABLE_OVERLOADING)
    menuButtonPopover                       ,
#endif
    setMenuButtonPopover                    ,


-- ** popup #attr:popup#
-- | The t'GI.Gtk.Objects.Menu.Menu' that will be popped up when the button is clicked.
-- 
-- /Since: 3.6/

#if defined(ENABLE_OVERLOADING)
    MenuButtonPopupPropertyInfo             ,
#endif
    clearMenuButtonPopup                    ,
    constructMenuButtonPopup                ,
    getMenuButtonPopup                      ,
#if defined(ENABLE_OVERLOADING)
    menuButtonPopup                         ,
#endif
    setMenuButtonPopup                      ,


-- ** usePopover #attr:usePopover#
-- | Whether to construct a t'GI.Gtk.Objects.Popover.Popover' from the menu model,
-- or a t'GI.Gtk.Objects.Menu.Menu'.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    MenuButtonUsePopoverPropertyInfo        ,
#endif
    constructMenuButtonUsePopover           ,
    getMenuButtonUsePopover                 ,
#if defined(ENABLE_OVERLOADING)
    menuButtonUsePopover                    ,
#endif
    setMenuButtonUsePopover                 ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Menu as Gtk.Menu
import {-# SOURCE #-} qualified GI.Gtk.Objects.Popover as Gtk.Popover
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToggleButton as Gtk.ToggleButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype MenuButton = MenuButton (ManagedPtr MenuButton)
    deriving (Eq)
foreign import ccall "gtk_menu_button_get_type"
    c_gtk_menu_button_get_type :: IO GType

instance GObject MenuButton where
    gobjectType = c_gtk_menu_button_get_type
    

-- | Convert 'MenuButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuButton where
    toGValue o = do
        gtype <- c_gtk_menu_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuButton)
        B.ManagedPtr.newObject MenuButton ptr
        
    

-- | Type class for types which can be safely cast to `MenuButton`, for instance with `toMenuButton`.
class (GObject o, O.IsDescendantOf MenuButton o) => IsMenuButton o
instance (GObject o, O.IsDescendantOf MenuButton o) => IsMenuButton o

instance O.HasParentTypes MenuButton
type instance O.ParentTypes MenuButton = '[Gtk.ToggleButton.ToggleButton, Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `MenuButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuButton :: (MonadIO m, IsMenuButton o) => o -> m MenuButton
toMenuButton = liftIO . unsafeCastTo MenuButton

-- | A convenience alias for `Nothing` :: `Maybe` `MenuButton`.
noMenuButton :: Maybe MenuButton
noMenuButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMenuButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveMenuButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMenuButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMenuButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMenuButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMenuButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMenuButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMenuButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMenuButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveMenuButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMenuButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveMenuButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveMenuButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveMenuButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveMenuButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveMenuButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMenuButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveMenuButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMenuButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMenuButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMenuButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMenuButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMenuButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMenuButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMenuButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMenuButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMenuButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMenuButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveMenuButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMenuButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMenuButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMenuButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMenuButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMenuButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMenuButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMenuButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMenuButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMenuButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMenuButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMenuButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMenuButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMenuButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMenuButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMenuButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMenuButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMenuButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMenuButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMenuButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMenuButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMenuButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMenuButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMenuButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMenuButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMenuButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMenuButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMenuButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMenuButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMenuButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMenuButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveMenuButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMenuButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMenuButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveMenuButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveMenuButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMenuButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMenuButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMenuButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMenuButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMenuButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMenuButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMenuButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMenuButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMenuButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMenuButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMenuButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMenuButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMenuButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMenuButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMenuButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMenuButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMenuButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMenuButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMenuButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMenuButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMenuButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMenuButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMenuButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMenuButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMenuButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMenuButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveMenuButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMenuButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMenuButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMenuButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMenuButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveMenuButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMenuButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMenuButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMenuButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMenuButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMenuButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMenuButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMenuButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMenuButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMenuButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMenuButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMenuButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMenuButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMenuButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMenuButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveMenuButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveMenuButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMenuButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMenuButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMenuButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMenuButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMenuButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMenuButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMenuButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMenuButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMenuButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMenuButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveMenuButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveMenuButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMenuButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMenuButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMenuButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMenuButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMenuButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMenuButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMenuButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMenuButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveMenuButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMenuButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMenuButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMenuButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMenuButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMenuButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMenuButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMenuButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMenuButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMenuButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMenuButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMenuButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveMenuButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMenuButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuButtonMethod "toggled" o = Gtk.ToggleButton.ToggleButtonToggledMethodInfo
    ResolveMenuButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMenuButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMenuButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMenuButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMenuButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMenuButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMenuButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveMenuButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMenuButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMenuButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMenuButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveMenuButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveMenuButtonMethod "getActive" o = Gtk.ToggleButton.ToggleButtonGetActiveMethodInfo
    ResolveMenuButtonMethod "getAlignWidget" o = MenuButtonGetAlignWidgetMethodInfo
    ResolveMenuButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveMenuButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMenuButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMenuButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMenuButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMenuButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMenuButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveMenuButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMenuButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMenuButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveMenuButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMenuButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMenuButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveMenuButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMenuButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMenuButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveMenuButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMenuButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMenuButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMenuButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMenuButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMenuButtonMethod "getDirection" o = MenuButtonGetDirectionMethodInfo
    ResolveMenuButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMenuButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMenuButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveMenuButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMenuButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveMenuButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveMenuButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveMenuButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveMenuButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveMenuButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMenuButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMenuButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMenuButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMenuButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMenuButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMenuButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMenuButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMenuButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveMenuButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveMenuButtonMethod "getInconsistent" o = Gtk.ToggleButton.ToggleButtonGetInconsistentMethodInfo
    ResolveMenuButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMenuButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveMenuButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMenuButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMenuButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMenuButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMenuButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMenuButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMenuButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMenuButtonMethod "getMenuModel" o = MenuButtonGetMenuModelMethodInfo
    ResolveMenuButtonMethod "getMode" o = Gtk.ToggleButton.ToggleButtonGetModeMethodInfo
    ResolveMenuButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMenuButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMenuButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMenuButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMenuButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveMenuButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMenuButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMenuButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMenuButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMenuButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveMenuButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMenuButtonMethod "getPopover" o = MenuButtonGetPopoverMethodInfo
    ResolveMenuButtonMethod "getPopup" o = MenuButtonGetPopupMethodInfo
    ResolveMenuButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMenuButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMenuButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMenuButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMenuButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMenuButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMenuButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMenuButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMenuButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveMenuButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveMenuButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMenuButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMenuButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveMenuButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMenuButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMenuButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveMenuButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMenuButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMenuButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMenuButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMenuButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMenuButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMenuButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMenuButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMenuButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMenuButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMenuButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMenuButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMenuButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMenuButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveMenuButtonMethod "getUsePopover" o = MenuButtonGetUsePopoverMethodInfo
    ResolveMenuButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveMenuButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveMenuButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMenuButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMenuButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMenuButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMenuButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMenuButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMenuButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMenuButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMenuButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveMenuButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveMenuButtonMethod "setActive" o = Gtk.ToggleButton.ToggleButtonSetActiveMethodInfo
    ResolveMenuButtonMethod "setAlignWidget" o = MenuButtonSetAlignWidgetMethodInfo
    ResolveMenuButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveMenuButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMenuButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveMenuButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMenuButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveMenuButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMenuButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMenuButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMenuButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMenuButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMenuButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMenuButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveMenuButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMenuButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMenuButtonMethod "setDirection" o = MenuButtonSetDirectionMethodInfo
    ResolveMenuButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMenuButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMenuButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveMenuButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveMenuButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveMenuButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveMenuButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveMenuButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMenuButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMenuButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMenuButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMenuButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMenuButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMenuButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMenuButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveMenuButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveMenuButtonMethod "setInconsistent" o = Gtk.ToggleButton.ToggleButtonSetInconsistentMethodInfo
    ResolveMenuButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveMenuButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMenuButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMenuButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMenuButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMenuButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMenuButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMenuButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMenuButtonMethod "setMenuModel" o = MenuButtonSetMenuModelMethodInfo
    ResolveMenuButtonMethod "setMode" o = Gtk.ToggleButton.ToggleButtonSetModeMethodInfo
    ResolveMenuButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMenuButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMenuButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveMenuButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMenuButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMenuButtonMethod "setPopover" o = MenuButtonSetPopoverMethodInfo
    ResolveMenuButtonMethod "setPopup" o = MenuButtonSetPopupMethodInfo
    ResolveMenuButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMenuButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveMenuButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMenuButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMenuButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveMenuButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveMenuButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveMenuButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMenuButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMenuButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMenuButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMenuButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMenuButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMenuButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveMenuButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveMenuButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMenuButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveMenuButtonMethod "setUsePopover" o = MenuButtonSetUsePopoverMethodInfo
    ResolveMenuButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveMenuButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveMenuButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMenuButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMenuButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMenuButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMenuButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMenuButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMenuButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuButtonMethod t MenuButton, O.MethodInfo info MenuButton p) => OL.IsLabel t (MenuButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "align-widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Container"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@align-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #alignWidget
-- @
getMenuButtonAlignWidget :: (MonadIO m, IsMenuButton o) => o -> m (Maybe Gtk.Container.Container)
getMenuButtonAlignWidget obj = liftIO $ B.Properties.getObjectPropertyObject obj "align-widget" Gtk.Container.Container

-- | Set the value of the “@align-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #alignWidget 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonAlignWidget :: (MonadIO m, IsMenuButton o, Gtk.Container.IsContainer a) => o -> a -> m ()
setMenuButtonAlignWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "align-widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@align-widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonAlignWidget :: (IsMenuButton o, Gtk.Container.IsContainer a) => a -> IO (GValueConstruct o)
constructMenuButtonAlignWidget val = B.Properties.constructObjectPropertyObject "align-widget" (Just val)

-- | Set the value of the “@align-widget@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #alignWidget
-- @
clearMenuButtonAlignWidget :: (MonadIO m, IsMenuButton o) => o -> m ()
clearMenuButtonAlignWidget obj = liftIO $ B.Properties.setObjectPropertyObject obj "align-widget" (Nothing :: Maybe Gtk.Container.Container)

#if defined(ENABLE_OVERLOADING)
data MenuButtonAlignWidgetPropertyInfo
instance AttrInfo MenuButtonAlignWidgetPropertyInfo where
    type AttrAllowedOps MenuButtonAlignWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MenuButtonAlignWidgetPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonAlignWidgetPropertyInfo = Gtk.Container.IsContainer
    type AttrTransferTypeConstraint MenuButtonAlignWidgetPropertyInfo = Gtk.Container.IsContainer
    type AttrTransferType MenuButtonAlignWidgetPropertyInfo = Gtk.Container.Container
    type AttrGetType MenuButtonAlignWidgetPropertyInfo = (Maybe Gtk.Container.Container)
    type AttrLabel MenuButtonAlignWidgetPropertyInfo = "align-widget"
    type AttrOrigin MenuButtonAlignWidgetPropertyInfo = MenuButton
    attrGet = getMenuButtonAlignWidget
    attrSet = setMenuButtonAlignWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Container.Container v
    attrConstruct = constructMenuButtonAlignWidget
    attrClear = clearMenuButtonAlignWidget
#endif

-- VVV Prop "direction"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ArrowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #direction
-- @
getMenuButtonDirection :: (MonadIO m, IsMenuButton o) => o -> m Gtk.Enums.ArrowType
getMenuButtonDirection obj = liftIO $ B.Properties.getObjectPropertyEnum obj "direction"

-- | Set the value of the “@direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #direction 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonDirection :: (MonadIO m, IsMenuButton o) => o -> Gtk.Enums.ArrowType -> m ()
setMenuButtonDirection obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "direction" val

-- | Construct a `GValueConstruct` with valid value for the “@direction@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonDirection :: (IsMenuButton o) => Gtk.Enums.ArrowType -> IO (GValueConstruct o)
constructMenuButtonDirection val = B.Properties.constructObjectPropertyEnum "direction" val

#if defined(ENABLE_OVERLOADING)
data MenuButtonDirectionPropertyInfo
instance AttrInfo MenuButtonDirectionPropertyInfo where
    type AttrAllowedOps MenuButtonDirectionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MenuButtonDirectionPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonDirectionPropertyInfo = (~) Gtk.Enums.ArrowType
    type AttrTransferTypeConstraint MenuButtonDirectionPropertyInfo = (~) Gtk.Enums.ArrowType
    type AttrTransferType MenuButtonDirectionPropertyInfo = Gtk.Enums.ArrowType
    type AttrGetType MenuButtonDirectionPropertyInfo = Gtk.Enums.ArrowType
    type AttrLabel MenuButtonDirectionPropertyInfo = "direction"
    type AttrOrigin MenuButtonDirectionPropertyInfo = MenuButton
    attrGet = getMenuButtonDirection
    attrSet = setMenuButtonDirection
    attrTransfer _ v = do
        return v
    attrConstruct = constructMenuButtonDirection
    attrClear = undefined
#endif

-- VVV Prop "menu-model"
   -- Type: TInterface (Name {namespace = "Gio", name = "MenuModel"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@menu-model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #menuModel
-- @
getMenuButtonMenuModel :: (MonadIO m, IsMenuButton o) => o -> m (Maybe Gio.MenuModel.MenuModel)
getMenuButtonMenuModel obj = liftIO $ B.Properties.getObjectPropertyObject obj "menu-model" Gio.MenuModel.MenuModel

-- | Set the value of the “@menu-model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #menuModel 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonMenuModel :: (MonadIO m, IsMenuButton o, Gio.MenuModel.IsMenuModel a) => o -> a -> m ()
setMenuButtonMenuModel obj val = liftIO $ B.Properties.setObjectPropertyObject obj "menu-model" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@menu-model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonMenuModel :: (IsMenuButton o, Gio.MenuModel.IsMenuModel a) => a -> IO (GValueConstruct o)
constructMenuButtonMenuModel val = B.Properties.constructObjectPropertyObject "menu-model" (Just val)

-- | Set the value of the “@menu-model@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #menuModel
-- @
clearMenuButtonMenuModel :: (MonadIO m, IsMenuButton o) => o -> m ()
clearMenuButtonMenuModel obj = liftIO $ B.Properties.setObjectPropertyObject obj "menu-model" (Nothing :: Maybe Gio.MenuModel.MenuModel)

#if defined(ENABLE_OVERLOADING)
data MenuButtonMenuModelPropertyInfo
instance AttrInfo MenuButtonMenuModelPropertyInfo where
    type AttrAllowedOps MenuButtonMenuModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MenuButtonMenuModelPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonMenuModelPropertyInfo = Gio.MenuModel.IsMenuModel
    type AttrTransferTypeConstraint MenuButtonMenuModelPropertyInfo = Gio.MenuModel.IsMenuModel
    type AttrTransferType MenuButtonMenuModelPropertyInfo = Gio.MenuModel.MenuModel
    type AttrGetType MenuButtonMenuModelPropertyInfo = (Maybe Gio.MenuModel.MenuModel)
    type AttrLabel MenuButtonMenuModelPropertyInfo = "menu-model"
    type AttrOrigin MenuButtonMenuModelPropertyInfo = MenuButton
    attrGet = getMenuButtonMenuModel
    attrSet = setMenuButtonMenuModel
    attrTransfer _ v = do
        unsafeCastTo Gio.MenuModel.MenuModel v
    attrConstruct = constructMenuButtonMenuModel
    attrClear = clearMenuButtonMenuModel
#endif

-- VVV Prop "popover"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Popover"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@popover@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #popover
-- @
getMenuButtonPopover :: (MonadIO m, IsMenuButton o) => o -> m (Maybe Gtk.Popover.Popover)
getMenuButtonPopover obj = liftIO $ B.Properties.getObjectPropertyObject obj "popover" Gtk.Popover.Popover

-- | Set the value of the “@popover@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #popover 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonPopover :: (MonadIO m, IsMenuButton o, Gtk.Popover.IsPopover a) => o -> a -> m ()
setMenuButtonPopover obj val = liftIO $ B.Properties.setObjectPropertyObject obj "popover" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@popover@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonPopover :: (IsMenuButton o, Gtk.Popover.IsPopover a) => a -> IO (GValueConstruct o)
constructMenuButtonPopover val = B.Properties.constructObjectPropertyObject "popover" (Just val)

-- | Set the value of the “@popover@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #popover
-- @
clearMenuButtonPopover :: (MonadIO m, IsMenuButton o) => o -> m ()
clearMenuButtonPopover obj = liftIO $ B.Properties.setObjectPropertyObject obj "popover" (Nothing :: Maybe Gtk.Popover.Popover)

#if defined(ENABLE_OVERLOADING)
data MenuButtonPopoverPropertyInfo
instance AttrInfo MenuButtonPopoverPropertyInfo where
    type AttrAllowedOps MenuButtonPopoverPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MenuButtonPopoverPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonPopoverPropertyInfo = Gtk.Popover.IsPopover
    type AttrTransferTypeConstraint MenuButtonPopoverPropertyInfo = Gtk.Popover.IsPopover
    type AttrTransferType MenuButtonPopoverPropertyInfo = Gtk.Popover.Popover
    type AttrGetType MenuButtonPopoverPropertyInfo = (Maybe Gtk.Popover.Popover)
    type AttrLabel MenuButtonPopoverPropertyInfo = "popover"
    type AttrOrigin MenuButtonPopoverPropertyInfo = MenuButton
    attrGet = getMenuButtonPopover
    attrSet = setMenuButtonPopover
    attrTransfer _ v = do
        unsafeCastTo Gtk.Popover.Popover v
    attrConstruct = constructMenuButtonPopover
    attrClear = clearMenuButtonPopover
#endif

-- VVV Prop "popup"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Menu"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@popup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #popup
-- @
getMenuButtonPopup :: (MonadIO m, IsMenuButton o) => o -> m (Maybe Gtk.Menu.Menu)
getMenuButtonPopup obj = liftIO $ B.Properties.getObjectPropertyObject obj "popup" Gtk.Menu.Menu

-- | Set the value of the “@popup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #popup 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonPopup :: (MonadIO m, IsMenuButton o, Gtk.Menu.IsMenu a) => o -> a -> m ()
setMenuButtonPopup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "popup" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@popup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonPopup :: (IsMenuButton o, Gtk.Menu.IsMenu a) => a -> IO (GValueConstruct o)
constructMenuButtonPopup val = B.Properties.constructObjectPropertyObject "popup" (Just val)

-- | Set the value of the “@popup@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #popup
-- @
clearMenuButtonPopup :: (MonadIO m, IsMenuButton o) => o -> m ()
clearMenuButtonPopup obj = liftIO $ B.Properties.setObjectPropertyObject obj "popup" (Nothing :: Maybe Gtk.Menu.Menu)

#if defined(ENABLE_OVERLOADING)
data MenuButtonPopupPropertyInfo
instance AttrInfo MenuButtonPopupPropertyInfo where
    type AttrAllowedOps MenuButtonPopupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MenuButtonPopupPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonPopupPropertyInfo = Gtk.Menu.IsMenu
    type AttrTransferTypeConstraint MenuButtonPopupPropertyInfo = Gtk.Menu.IsMenu
    type AttrTransferType MenuButtonPopupPropertyInfo = Gtk.Menu.Menu
    type AttrGetType MenuButtonPopupPropertyInfo = (Maybe Gtk.Menu.Menu)
    type AttrLabel MenuButtonPopupPropertyInfo = "popup"
    type AttrOrigin MenuButtonPopupPropertyInfo = MenuButton
    attrGet = getMenuButtonPopup
    attrSet = setMenuButtonPopup
    attrTransfer _ v = do
        unsafeCastTo Gtk.Menu.Menu v
    attrConstruct = constructMenuButtonPopup
    attrClear = clearMenuButtonPopup
#endif

-- VVV Prop "use-popover"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-popover@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuButton #usePopover
-- @
getMenuButtonUsePopover :: (MonadIO m, IsMenuButton o) => o -> m Bool
getMenuButtonUsePopover obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-popover"

-- | Set the value of the “@use-popover@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuButton [ #usePopover 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuButtonUsePopover :: (MonadIO m, IsMenuButton o) => o -> Bool -> m ()
setMenuButtonUsePopover obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-popover" val

-- | Construct a `GValueConstruct` with valid value for the “@use-popover@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuButtonUsePopover :: (IsMenuButton o) => Bool -> IO (GValueConstruct o)
constructMenuButtonUsePopover val = B.Properties.constructObjectPropertyBool "use-popover" val

#if defined(ENABLE_OVERLOADING)
data MenuButtonUsePopoverPropertyInfo
instance AttrInfo MenuButtonUsePopoverPropertyInfo where
    type AttrAllowedOps MenuButtonUsePopoverPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MenuButtonUsePopoverPropertyInfo = IsMenuButton
    type AttrSetTypeConstraint MenuButtonUsePopoverPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint MenuButtonUsePopoverPropertyInfo = (~) Bool
    type AttrTransferType MenuButtonUsePopoverPropertyInfo = Bool
    type AttrGetType MenuButtonUsePopoverPropertyInfo = Bool
    type AttrLabel MenuButtonUsePopoverPropertyInfo = "use-popover"
    type AttrOrigin MenuButtonUsePopoverPropertyInfo = MenuButton
    attrGet = getMenuButtonUsePopover
    attrSet = setMenuButtonUsePopover
    attrTransfer _ v = do
        return v
    attrConstruct = constructMenuButtonUsePopover
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuButton
type instance O.AttributeList MenuButton = MenuButtonAttributeList
type MenuButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", Gtk.ToggleButton.ToggleButtonActivePropertyInfo), '("alignWidget", MenuButtonAlignWidgetPropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("direction", MenuButtonDirectionPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawIndicator", Gtk.ToggleButton.ToggleButtonDrawIndicatorPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("inconsistent", Gtk.ToggleButton.ToggleButtonInconsistentPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("menuModel", MenuButtonMenuModelPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("popover", MenuButtonPopoverPropertyInfo), '("popup", MenuButtonPopupPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("usePopover", MenuButtonUsePopoverPropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
menuButtonAlignWidget :: AttrLabelProxy "alignWidget"
menuButtonAlignWidget = AttrLabelProxy

menuButtonDirection :: AttrLabelProxy "direction"
menuButtonDirection = AttrLabelProxy

menuButtonMenuModel :: AttrLabelProxy "menuModel"
menuButtonMenuModel = AttrLabelProxy

menuButtonPopover :: AttrLabelProxy "popover"
menuButtonPopover = AttrLabelProxy

menuButtonPopup :: AttrLabelProxy "popup"
menuButtonPopup = AttrLabelProxy

menuButtonUsePopover :: AttrLabelProxy "usePopover"
menuButtonUsePopover = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuButton = MenuButtonSignalList
type MenuButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggled", Gtk.ToggleButton.ToggleButtonToggledSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method MenuButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "MenuButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_button_new" gtk_menu_button_new :: 
    IO (Ptr MenuButton)

-- | Creates a new t'GI.Gtk.Objects.MenuButton.MenuButton' widget with downwards-pointing
-- arrow as the only child. You can replace the child widget
-- with another t'GI.Gtk.Objects.Widget.Widget' should you wish to.
-- 
-- /Since: 3.6/
menuButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m MenuButton
    -- ^ __Returns:__ The newly created t'GI.Gtk.Objects.MenuButton.MenuButton' widget
menuButtonNew  = liftIO $ do
    result <- gtk_menu_button_new
    checkUnexpectedReturnNULL "menuButtonNew" result
    result' <- (newObject MenuButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MenuButton::get_align_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_button_get_align_widget" gtk_menu_button_get_align_widget :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the parent t'GI.Gtk.Objects.Widget.Widget' to use to line up with menu.
-- 
-- /Since: 3.6/
menuButtonGetAlignWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget' value or 'P.Nothing'
menuButtonGetAlignWidget menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_align_widget menuButton'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr menuButton
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetAlignWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetAlignWidgetMethodInfo a signature where
    overloadedMethod = menuButtonGetAlignWidget

#endif

-- method MenuButton::get_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ArrowType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_button_get_direction" gtk_menu_button_get_direction :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO CUInt

-- | Returns the direction the popup will be pointing at when popped up.
-- 
-- /Since: 3.6/
menuButtonGetDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m Gtk.Enums.ArrowType
    -- ^ __Returns:__ a t'GI.Gtk.Enums.ArrowType' value
menuButtonGetDirection menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_direction menuButton'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr menuButton
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetDirectionMethodInfo
instance (signature ~ (m Gtk.Enums.ArrowType), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetDirectionMethodInfo a signature where
    overloadedMethod = menuButtonGetDirection

#endif

-- method MenuButton::get_menu_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "MenuModel" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_button_get_menu_model" gtk_menu_button_get_menu_model :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO (Ptr Gio.MenuModel.MenuModel)

-- | Returns the t'GI.Gio.Objects.MenuModel.MenuModel' used to generate the popup.
-- 
-- /Since: 3.6/
menuButtonGetMenuModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m (Maybe Gio.MenuModel.MenuModel)
    -- ^ __Returns:__ a t'GI.Gio.Objects.MenuModel.MenuModel' or 'P.Nothing'
menuButtonGetMenuModel menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_menu_model menuButton'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gio.MenuModel.MenuModel) result'
        return result''
    touchManagedPtr menuButton
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetMenuModelMethodInfo
instance (signature ~ (m (Maybe Gio.MenuModel.MenuModel)), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetMenuModelMethodInfo a signature where
    overloadedMethod = menuButtonGetMenuModel

#endif

-- method MenuButton::get_popover
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Popover" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_button_get_popover" gtk_menu_button_get_popover :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO (Ptr Gtk.Popover.Popover)

-- | Returns the t'GI.Gtk.Objects.Popover.Popover' that pops out of the button.
-- If the button is not using a t'GI.Gtk.Objects.Popover.Popover', this function
-- returns 'P.Nothing'.
-- 
-- /Since: 3.12/
menuButtonGetPopover ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m (Maybe Gtk.Popover.Popover)
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Popover.Popover' or 'P.Nothing'
menuButtonGetPopover menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_popover menuButton'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Popover.Popover) result'
        return result''
    touchManagedPtr menuButton
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetPopoverMethodInfo
instance (signature ~ (m (Maybe Gtk.Popover.Popover)), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetPopoverMethodInfo a signature where
    overloadedMethod = menuButtonGetPopover

#endif

-- method MenuButton::get_popup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Menu" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_button_get_popup" gtk_menu_button_get_popup :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO (Ptr Gtk.Menu.Menu)

-- | Returns the t'GI.Gtk.Objects.Menu.Menu' that pops out of the button.
-- If the button does not use a t'GI.Gtk.Objects.Menu.Menu', this function
-- returns 'P.Nothing'.
-- 
-- /Since: 3.6/
menuButtonGetPopup ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m (Maybe Gtk.Menu.Menu)
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Menu.Menu' or 'P.Nothing'
menuButtonGetPopup menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_popup menuButton'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Menu.Menu) result'
        return result''
    touchManagedPtr menuButton
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetPopupMethodInfo
instance (signature ~ (m (Maybe Gtk.Menu.Menu)), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetPopupMethodInfo a signature where
    overloadedMethod = menuButtonGetPopup

#endif

-- method MenuButton::get_use_popover
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_button_get_use_popover" gtk_menu_button_get_use_popover :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    IO CInt

-- | Returns whether a t'GI.Gtk.Objects.Popover.Popover' or a t'GI.Gtk.Objects.Menu.Menu' will be constructed
-- from the menu model.
-- 
-- /Since: 3.12/
menuButtonGetUsePopover ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if using a t'GI.Gtk.Objects.Popover.Popover'
menuButtonGetUsePopover menuButton = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    result <- gtk_menu_button_get_use_popover menuButton'
    let result' = (/= 0) result
    touchManagedPtr menuButton
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuButtonGetUsePopoverMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonGetUsePopoverMethodInfo a signature where
    overloadedMethod = menuButtonGetUsePopover

#endif

-- method MenuButton::set_align_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "align_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_button_set_align_widget" gtk_menu_button_set_align_widget :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    Ptr Gtk.Widget.Widget ->                -- align_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Widget.Widget' to use to line the menu with when popped up.
-- Note that the /@alignWidget@/ must contain the t'GI.Gtk.Objects.MenuButton.MenuButton' itself.
-- 
-- Setting it to 'P.Nothing' means that the menu will be aligned with the
-- button itself.
-- 
-- Note that this property is only used with menus currently,
-- and not for popovers.
-- 
-- /Since: 3.6/
menuButtonSetAlignWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Maybe (b)
    -- ^ /@alignWidget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m ()
menuButtonSetAlignWidget menuButton alignWidget = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    maybeAlignWidget <- case alignWidget of
        Nothing -> return nullPtr
        Just jAlignWidget -> do
            jAlignWidget' <- unsafeManagedPtrCastPtr jAlignWidget
            return jAlignWidget'
    gtk_menu_button_set_align_widget menuButton' maybeAlignWidget
    touchManagedPtr menuButton
    whenJust alignWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetAlignWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuButtonSetAlignWidgetMethodInfo a signature where
    overloadedMethod = menuButtonSetAlignWidget

#endif

-- method MenuButton::set_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "direction"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ArrowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkArrowType" , sinceVersion = Nothing }
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

foreign import ccall "gtk_menu_button_set_direction" gtk_menu_button_set_direction :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    CUInt ->                                -- direction : TInterface (Name {namespace = "Gtk", name = "ArrowType"})
    IO ()

-- | Sets the direction in which the popup will be popped up, as
-- well as changing the arrow’s direction. The child will not
-- be changed to an arrow if it was customized.
-- 
-- If the does not fit in the available space in the given direction,
-- GTK+ will its best to keep it inside the screen and fully visible.
-- 
-- If you pass 'GI.Gtk.Enums.ArrowTypeNone' for a /@direction@/, the popup will behave
-- as if you passed 'GI.Gtk.Enums.ArrowTypeDown' (although you won’t see any arrows).
-- 
-- /Since: 3.6/
menuButtonSetDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Gtk.Enums.ArrowType
    -- ^ /@direction@/: a t'GI.Gtk.Enums.ArrowType'
    -> m ()
menuButtonSetDirection menuButton direction = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    let direction' = (fromIntegral . fromEnum) direction
    gtk_menu_button_set_direction menuButton' direction'
    touchManagedPtr menuButton
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetDirectionMethodInfo
instance (signature ~ (Gtk.Enums.ArrowType -> m ()), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonSetDirectionMethodInfo a signature where
    overloadedMethod = menuButtonSetDirection

#endif

-- method MenuButton::set_menu_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_model"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "MenuModel" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GMenuModel, or %NULL to unset and disable the\n  button"
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

foreign import ccall "gtk_menu_button_set_menu_model" gtk_menu_button_set_menu_model :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    Ptr Gio.MenuModel.MenuModel ->          -- menu_model : TInterface (Name {namespace = "Gio", name = "MenuModel"})
    IO ()

-- | Sets the t'GI.Gio.Objects.MenuModel.MenuModel' from which the popup will be constructed,
-- or 'P.Nothing' to dissociate any existing menu model and disable the button.
-- 
-- Depending on the value of t'GI.Gtk.Objects.MenuButton.MenuButton':@/use-popover/@, either a
-- t'GI.Gtk.Objects.Menu.Menu' will be created with 'GI.Gtk.Objects.Menu.menuNewFromModel', or a
-- t'GI.Gtk.Objects.Popover.Popover' with 'GI.Gtk.Objects.Popover.popoverNewFromModel'. In either case,
-- actions will be connected as documented for these functions.
-- 
-- If t'GI.Gtk.Objects.MenuButton.MenuButton':@/popup/@ or t'GI.Gtk.Objects.MenuButton.MenuButton':@/popover/@ are already set, those
-- widgets are dissociated from the /@menuButton@/, and those properties are set
-- to 'P.Nothing'.
-- 
-- /Since: 3.6/
menuButtonSetMenuModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a, Gio.MenuModel.IsMenuModel b) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Maybe (b)
    -- ^ /@menuModel@/: a t'GI.Gio.Objects.MenuModel.MenuModel', or 'P.Nothing' to unset and disable the
    --   button
    -> m ()
menuButtonSetMenuModel menuButton menuModel = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    maybeMenuModel <- case menuModel of
        Nothing -> return nullPtr
        Just jMenuModel -> do
            jMenuModel' <- unsafeManagedPtrCastPtr jMenuModel
            return jMenuModel'
    gtk_menu_button_set_menu_model menuButton' maybeMenuModel
    touchManagedPtr menuButton
    whenJust menuModel touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetMenuModelMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsMenuButton a, Gio.MenuModel.IsMenuModel b) => O.MethodInfo MenuButtonSetMenuModelMethodInfo a signature where
    overloadedMethod = menuButtonSetMenuModel

#endif

-- method MenuButton::set_popover
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "popover"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkPopover, or %NULL to unset and disable the button"
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

foreign import ccall "gtk_menu_button_set_popover" gtk_menu_button_set_popover :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    Ptr Gtk.Widget.Widget ->                -- popover : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Popover.Popover' that will be popped up when the /@menuButton@/ is clicked,
-- or 'P.Nothing' to dissociate any existing popover and disable the button.
-- 
-- If t'GI.Gtk.Objects.MenuButton.MenuButton':@/menu-model/@ or t'GI.Gtk.Objects.MenuButton.MenuButton':@/popup/@ are set, those objects
-- are dissociated from the /@menuButton@/, and those properties are set to 'P.Nothing'.
-- 
-- /Since: 3.12/
menuButtonSetPopover ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Maybe (b)
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover', or 'P.Nothing' to unset and disable the button
    -> m ()
menuButtonSetPopover menuButton popover = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    maybePopover <- case popover of
        Nothing -> return nullPtr
        Just jPopover -> do
            jPopover' <- unsafeManagedPtrCastPtr jPopover
            return jPopover'
    gtk_menu_button_set_popover menuButton' maybePopover
    touchManagedPtr menuButton
    whenJust popover touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetPopoverMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuButtonSetPopoverMethodInfo a signature where
    overloadedMethod = menuButtonSetPopover

#endif

-- method MenuButton::set_popup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkMenu, or %NULL to unset and disable the button"
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

foreign import ccall "gtk_menu_button_set_popup" gtk_menu_button_set_popup :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    Ptr Gtk.Widget.Widget ->                -- menu : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Menu.Menu' that will be popped up when the /@menuButton@/ is clicked, or
-- 'P.Nothing' to dissociate any existing menu and disable the button.
-- 
-- If t'GI.Gtk.Objects.MenuButton.MenuButton':@/menu-model/@ or t'GI.Gtk.Objects.MenuButton.MenuButton':@/popover/@ are set, those objects
-- are dissociated from the /@menuButton@/, and those properties are set to 'P.Nothing'.
-- 
-- /Since: 3.6/
menuButtonSetPopup ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Maybe (b)
    -- ^ /@menu@/: a t'GI.Gtk.Objects.Menu.Menu', or 'P.Nothing' to unset and disable the button
    -> m ()
menuButtonSetPopup menuButton menu = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    maybeMenu <- case menu of
        Nothing -> return nullPtr
        Just jMenu -> do
            jMenu' <- unsafeManagedPtrCastPtr jMenu
            return jMenu'
    gtk_menu_button_set_popup menuButton' maybeMenu
    touchManagedPtr menuButton
    whenJust menu touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetPopupMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsMenuButton a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuButtonSetPopupMethodInfo a signature where
    overloadedMethod = menuButtonSetPopup

#endif

-- method MenuButton::set_use_popover
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menu_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_popover"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to construct a popover from the menu model"
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

foreign import ccall "gtk_menu_button_set_use_popover" gtk_menu_button_set_use_popover :: 
    Ptr MenuButton ->                       -- menu_button : TInterface (Name {namespace = "Gtk", name = "MenuButton"})
    CInt ->                                 -- use_popover : TBasicType TBoolean
    IO ()

-- | Sets whether to construct a t'GI.Gtk.Objects.Popover.Popover' instead of t'GI.Gtk.Objects.Menu.Menu'
-- when 'GI.Gtk.Objects.MenuButton.menuButtonSetMenuModel' is called. Note that
-- this property is only consulted when a new menu model is set.
-- 
-- /Since: 3.12/
menuButtonSetUsePopover ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuButton a) =>
    a
    -- ^ /@menuButton@/: a t'GI.Gtk.Objects.MenuButton.MenuButton'
    -> Bool
    -- ^ /@usePopover@/: 'P.True' to construct a popover from the menu model
    -> m ()
menuButtonSetUsePopover menuButton usePopover = liftIO $ do
    menuButton' <- unsafeManagedPtrCastPtr menuButton
    let usePopover' = (fromIntegral . fromEnum) usePopover
    gtk_menu_button_set_use_popover menuButton' usePopover'
    touchManagedPtr menuButton
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuButtonSetUsePopoverMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsMenuButton a) => O.MethodInfo MenuButtonSetUsePopoverMethodInfo a signature where
    overloadedMethod = menuButtonSetUsePopover

#endif

