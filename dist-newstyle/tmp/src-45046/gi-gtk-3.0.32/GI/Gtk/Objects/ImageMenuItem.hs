{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkImageMenuItem is a menu item which has an icon next to the text label.
-- 
-- This is functionally equivalent to:
-- 
-- 
-- === /C code/
-- >
-- >  GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
-- >  GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
-- >  GtkWidget *label = gtk_label_new ("Music");
-- >  GtkWidget *menu_item = gtk_menu_item_new ();
-- >
-- >  gtk_container_add (GTK_CONTAINER (box), icon);
-- >  gtk_container_add (GTK_CONTAINER (box), label);
-- >
-- >  gtk_container_add (GTK_CONTAINER (menu_item), box);
-- >
-- >  gtk_widget_show_all (menu_item);
-- 
-- 
-- Note that the user may disable display of menu icons using
-- the t'GI.Gtk.Objects.Settings.Settings':@/gtk-menu-images/@ setting, so make sure to still
-- fill in the text label. If you want to ensure that your menu items
-- show an icon you are strongly encouraged to use a t'GI.Gtk.Objects.MenuItem.MenuItem'
-- with a t'GI.Gtk.Objects.Image.Image' instead.
-- 
-- t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem' has been deprecated since GTK+ 3.10. If you want to
-- display an icon in a menu item, you should use t'GI.Gtk.Objects.MenuItem.MenuItem' and pack a
-- t'GI.Gtk.Objects.Box.Box' with a t'GI.Gtk.Objects.Image.Image' and a t'GI.Gtk.Objects.Label.Label' instead. You should also consider
-- using t'GI.Gtk.Objects.Builder.Builder' and the XML t'GI.Gio.Objects.Menu.Menu' description for creating menus, by
-- following the [GMenu guide][https:\/\/developer.gnome.org\/GMenu\/]. You should
-- consider using icons in menu items only sparingly, and for \"objects\" (or
-- \"nouns\") elements only, like bookmarks, files, and links; \"actions\" (or
-- \"verbs\") should not have icons.
-- 
-- Furthermore, if you would like to display keyboard accelerator, you must
-- pack the accel label into the box using 'GI.Gtk.Objects.Box.boxPackEnd' and align the
-- label, otherwise the accelerator will not display correctly. The following
-- code snippet adds a keyboard accelerator to the menu item, with a key
-- binding of Ctrl+M:
-- 
-- 
-- === /C code/
-- >
-- >  GtkWidget *box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 6);
-- >  GtkWidget *icon = gtk_image_new_from_icon_name ("folder-music-symbolic", GTK_ICON_SIZE_MENU);
-- >  GtkWidget *label = gtk_accel_label_new ("Music");
-- >  GtkWidget *menu_item = gtk_menu_item_new ();
-- >  GtkAccelGroup *accel_group = gtk_accel_group_new ();
-- >
-- >  gtk_container_add (GTK_CONTAINER (box), icon);
-- >
-- >  gtk_label_set_use_underline (GTK_LABEL (label), TRUE);
-- >  gtk_label_set_xalign (GTK_LABEL (label), 0.0);
-- >
-- >  gtk_widget_add_accelerator (menu_item, "activate", accel_group,
-- >                              GDK_KEY_m, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
-- >  gtk_accel_label_set_accel_widget (GTK_ACCEL_LABEL (label), menu_item);
-- >
-- >  gtk_box_pack_end (GTK_BOX (box), label, TRUE, TRUE, 0);
-- >
-- >  gtk_container_add (GTK_CONTAINER (menu_item), box);
-- >
-- >  gtk_widget_show_all (menu_item);
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ImageMenuItem
    ( 

-- * Exported types
    ImageMenuItem(..)                       ,
    IsImageMenuItem                         ,
    toImageMenuItem                         ,
    noImageMenuItem                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveImageMenuItemMethod              ,
#endif


-- ** getAlwaysShowImage #method:getAlwaysShowImage#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemGetAlwaysShowImageMethodInfo,
#endif
    imageMenuItemGetAlwaysShowImage         ,


-- ** getImage #method:getImage#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemGetImageMethodInfo         ,
#endif
    imageMenuItemGetImage                   ,


-- ** getUseStock #method:getUseStock#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemGetUseStockMethodInfo      ,
#endif
    imageMenuItemGetUseStock                ,


-- ** new #method:new#

    imageMenuItemNew                        ,


-- ** newFromStock #method:newFromStock#

    imageMenuItemNewFromStock               ,


-- ** newWithLabel #method:newWithLabel#

    imageMenuItemNewWithLabel               ,


-- ** newWithMnemonic #method:newWithMnemonic#

    imageMenuItemNewWithMnemonic            ,


-- ** setAccelGroup #method:setAccelGroup#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemSetAccelGroupMethodInfo    ,
#endif
    imageMenuItemSetAccelGroup              ,


-- ** setAlwaysShowImage #method:setAlwaysShowImage#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemSetAlwaysShowImageMethodInfo,
#endif
    imageMenuItemSetAlwaysShowImage         ,


-- ** setImage #method:setImage#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemSetImageMethodInfo         ,
#endif
    imageMenuItemSetImage                   ,


-- ** setUseStock #method:setUseStock#

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemSetUseStockMethodInfo      ,
#endif
    imageMenuItemSetUseStock                ,




 -- * Properties
-- ** accelGroup #attr:accelGroup#
-- | The Accel Group to use for stock accelerator keys
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemAccelGroupPropertyInfo     ,
#endif
    constructImageMenuItemAccelGroup        ,
#if defined(ENABLE_OVERLOADING)
    imageMenuItemAccelGroup                 ,
#endif
    setImageMenuItemAccelGroup              ,


-- ** alwaysShowImage #attr:alwaysShowImage#
-- | If 'P.True', the menu item will always show the image, if available.
-- 
-- Use this property only if the menuitem would be useless or hard to use
-- without the image.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemAlwaysShowImagePropertyInfo,
#endif
    constructImageMenuItemAlwaysShowImage   ,
    getImageMenuItemAlwaysShowImage         ,
#if defined(ENABLE_OVERLOADING)
    imageMenuItemAlwaysShowImage            ,
#endif
    setImageMenuItemAlwaysShowImage         ,


-- ** image #attr:image#
-- | Child widget to appear next to the menu text.

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemImagePropertyInfo          ,
#endif
    clearImageMenuItemImage                 ,
    constructImageMenuItemImage             ,
    getImageMenuItemImage                   ,
#if defined(ENABLE_OVERLOADING)
    imageMenuItemImage                      ,
#endif
    setImageMenuItemImage                   ,


-- ** useStock #attr:useStock#
-- | If 'P.True', the label set in the menuitem is used as a
-- stock id to select the stock item for the item.
-- 
-- /Since: 2.16/

#if defined(ENABLE_OVERLOADING)
    ImageMenuItemUseStockPropertyInfo       ,
#endif
    constructImageMenuItemUseStock          ,
    getImageMenuItemUseStock                ,
#if defined(ENABLE_OVERLOADING)
    imageMenuItemUseStock                   ,
#endif
    setImageMenuItemUseStock                ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.AccelGroup as Gtk.AccelGroup
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItem as Gtk.MenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ImageMenuItem = ImageMenuItem (ManagedPtr ImageMenuItem)
    deriving (Eq)
foreign import ccall "gtk_image_menu_item_get_type"
    c_gtk_image_menu_item_get_type :: IO GType

instance GObject ImageMenuItem where
    gobjectType = c_gtk_image_menu_item_get_type
    

-- | Convert 'ImageMenuItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ImageMenuItem where
    toGValue o = do
        gtype <- c_gtk_image_menu_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ImageMenuItem)
        B.ManagedPtr.newObject ImageMenuItem ptr
        
    

-- | Type class for types which can be safely cast to `ImageMenuItem`, for instance with `toImageMenuItem`.
class (GObject o, O.IsDescendantOf ImageMenuItem o) => IsImageMenuItem o
instance (GObject o, O.IsDescendantOf ImageMenuItem o) => IsImageMenuItem o

instance O.HasParentTypes ImageMenuItem
type instance O.ParentTypes ImageMenuItem = '[Gtk.MenuItem.MenuItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `ImageMenuItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toImageMenuItem :: (MonadIO m, IsImageMenuItem o) => o -> m ImageMenuItem
toImageMenuItem = liftIO . unsafeCastTo ImageMenuItem

-- | A convenience alias for `Nothing` :: `Maybe` `ImageMenuItem`.
noImageMenuItem :: Maybe ImageMenuItem
noImageMenuItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveImageMenuItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveImageMenuItemMethod "activate" o = Gtk.MenuItem.MenuItemActivateMethodInfo
    ResolveImageMenuItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveImageMenuItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveImageMenuItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveImageMenuItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveImageMenuItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveImageMenuItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveImageMenuItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveImageMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveImageMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveImageMenuItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveImageMenuItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveImageMenuItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveImageMenuItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveImageMenuItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveImageMenuItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveImageMenuItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveImageMenuItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveImageMenuItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveImageMenuItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveImageMenuItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveImageMenuItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveImageMenuItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveImageMenuItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveImageMenuItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveImageMenuItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveImageMenuItemMethod "deselect" o = Gtk.MenuItem.MenuItemDeselectMethodInfo
    ResolveImageMenuItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveImageMenuItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveImageMenuItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveImageMenuItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveImageMenuItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveImageMenuItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveImageMenuItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveImageMenuItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveImageMenuItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveImageMenuItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveImageMenuItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveImageMenuItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveImageMenuItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveImageMenuItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveImageMenuItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveImageMenuItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveImageMenuItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveImageMenuItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveImageMenuItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveImageMenuItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveImageMenuItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveImageMenuItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveImageMenuItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveImageMenuItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveImageMenuItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveImageMenuItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveImageMenuItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveImageMenuItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveImageMenuItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveImageMenuItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveImageMenuItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveImageMenuItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveImageMenuItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveImageMenuItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveImageMenuItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveImageMenuItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveImageMenuItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveImageMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveImageMenuItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveImageMenuItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveImageMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveImageMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveImageMenuItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveImageMenuItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveImageMenuItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveImageMenuItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveImageMenuItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveImageMenuItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveImageMenuItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveImageMenuItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveImageMenuItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveImageMenuItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveImageMenuItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveImageMenuItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveImageMenuItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveImageMenuItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveImageMenuItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveImageMenuItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveImageMenuItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveImageMenuItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveImageMenuItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveImageMenuItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveImageMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveImageMenuItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveImageMenuItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveImageMenuItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveImageMenuItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveImageMenuItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveImageMenuItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveImageMenuItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveImageMenuItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveImageMenuItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveImageMenuItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveImageMenuItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveImageMenuItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveImageMenuItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveImageMenuItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveImageMenuItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveImageMenuItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveImageMenuItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveImageMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveImageMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveImageMenuItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveImageMenuItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveImageMenuItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveImageMenuItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveImageMenuItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveImageMenuItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveImageMenuItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveImageMenuItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveImageMenuItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveImageMenuItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveImageMenuItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveImageMenuItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveImageMenuItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveImageMenuItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveImageMenuItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveImageMenuItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveImageMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveImageMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveImageMenuItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveImageMenuItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveImageMenuItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveImageMenuItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveImageMenuItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveImageMenuItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveImageMenuItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveImageMenuItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveImageMenuItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveImageMenuItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveImageMenuItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveImageMenuItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveImageMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveImageMenuItemMethod "select" o = Gtk.MenuItem.MenuItemSelectMethodInfo
    ResolveImageMenuItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveImageMenuItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveImageMenuItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveImageMenuItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveImageMenuItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveImageMenuItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveImageMenuItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveImageMenuItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveImageMenuItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveImageMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveImageMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveImageMenuItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveImageMenuItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveImageMenuItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveImageMenuItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveImageMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveImageMenuItemMethod "toggleSizeAllocate" o = Gtk.MenuItem.MenuItemToggleSizeAllocateMethodInfo
    ResolveImageMenuItemMethod "toggleSizeRequest" o = Gtk.MenuItem.MenuItemToggleSizeRequestMethodInfo
    ResolveImageMenuItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveImageMenuItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveImageMenuItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveImageMenuItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveImageMenuItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveImageMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveImageMenuItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveImageMenuItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveImageMenuItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveImageMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveImageMenuItemMethod "getAccelPath" o = Gtk.MenuItem.MenuItemGetAccelPathMethodInfo
    ResolveImageMenuItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveImageMenuItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveImageMenuItemMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveImageMenuItemMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveImageMenuItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveImageMenuItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveImageMenuItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveImageMenuItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveImageMenuItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveImageMenuItemMethod "getAlwaysShowImage" o = ImageMenuItemGetAlwaysShowImageMethodInfo
    ResolveImageMenuItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveImageMenuItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveImageMenuItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveImageMenuItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveImageMenuItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveImageMenuItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveImageMenuItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveImageMenuItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveImageMenuItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveImageMenuItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveImageMenuItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveImageMenuItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveImageMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveImageMenuItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveImageMenuItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveImageMenuItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveImageMenuItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveImageMenuItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveImageMenuItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveImageMenuItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveImageMenuItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveImageMenuItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveImageMenuItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveImageMenuItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveImageMenuItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveImageMenuItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveImageMenuItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveImageMenuItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveImageMenuItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveImageMenuItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveImageMenuItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveImageMenuItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveImageMenuItemMethod "getImage" o = ImageMenuItemGetImageMethodInfo
    ResolveImageMenuItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveImageMenuItemMethod "getLabel" o = Gtk.MenuItem.MenuItemGetLabelMethodInfo
    ResolveImageMenuItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveImageMenuItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveImageMenuItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveImageMenuItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveImageMenuItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveImageMenuItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveImageMenuItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveImageMenuItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveImageMenuItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveImageMenuItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveImageMenuItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveImageMenuItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveImageMenuItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveImageMenuItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveImageMenuItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveImageMenuItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveImageMenuItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveImageMenuItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveImageMenuItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveImageMenuItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveImageMenuItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveImageMenuItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveImageMenuItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveImageMenuItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveImageMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveImageMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveImageMenuItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveImageMenuItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveImageMenuItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveImageMenuItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveImageMenuItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveImageMenuItemMethod "getReserveIndicator" o = Gtk.MenuItem.MenuItemGetReserveIndicatorMethodInfo
    ResolveImageMenuItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveImageMenuItemMethod "getRightJustified" o = Gtk.MenuItem.MenuItemGetRightJustifiedMethodInfo
    ResolveImageMenuItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveImageMenuItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveImageMenuItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveImageMenuItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveImageMenuItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveImageMenuItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveImageMenuItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveImageMenuItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveImageMenuItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveImageMenuItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveImageMenuItemMethod "getSubmenu" o = Gtk.MenuItem.MenuItemGetSubmenuMethodInfo
    ResolveImageMenuItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveImageMenuItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveImageMenuItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveImageMenuItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveImageMenuItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveImageMenuItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveImageMenuItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveImageMenuItemMethod "getUseStock" o = ImageMenuItemGetUseStockMethodInfo
    ResolveImageMenuItemMethod "getUseUnderline" o = Gtk.MenuItem.MenuItemGetUseUnderlineMethodInfo
    ResolveImageMenuItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveImageMenuItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveImageMenuItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveImageMenuItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveImageMenuItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveImageMenuItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveImageMenuItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveImageMenuItemMethod "setAccelGroup" o = ImageMenuItemSetAccelGroupMethodInfo
    ResolveImageMenuItemMethod "setAccelPath" o = Gtk.MenuItem.MenuItemSetAccelPathMethodInfo
    ResolveImageMenuItemMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveImageMenuItemMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveImageMenuItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveImageMenuItemMethod "setAlwaysShowImage" o = ImageMenuItemSetAlwaysShowImageMethodInfo
    ResolveImageMenuItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveImageMenuItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveImageMenuItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveImageMenuItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveImageMenuItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveImageMenuItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveImageMenuItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveImageMenuItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveImageMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveImageMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveImageMenuItemMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveImageMenuItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveImageMenuItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveImageMenuItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveImageMenuItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveImageMenuItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveImageMenuItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveImageMenuItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveImageMenuItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveImageMenuItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveImageMenuItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveImageMenuItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveImageMenuItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveImageMenuItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveImageMenuItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveImageMenuItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveImageMenuItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveImageMenuItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveImageMenuItemMethod "setImage" o = ImageMenuItemSetImageMethodInfo
    ResolveImageMenuItemMethod "setLabel" o = Gtk.MenuItem.MenuItemSetLabelMethodInfo
    ResolveImageMenuItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveImageMenuItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveImageMenuItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveImageMenuItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveImageMenuItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveImageMenuItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveImageMenuItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveImageMenuItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveImageMenuItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveImageMenuItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveImageMenuItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveImageMenuItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveImageMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveImageMenuItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveImageMenuItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveImageMenuItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveImageMenuItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveImageMenuItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveImageMenuItemMethod "setReserveIndicator" o = Gtk.MenuItem.MenuItemSetReserveIndicatorMethodInfo
    ResolveImageMenuItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveImageMenuItemMethod "setRightJustified" o = Gtk.MenuItem.MenuItemSetRightJustifiedMethodInfo
    ResolveImageMenuItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveImageMenuItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveImageMenuItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveImageMenuItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveImageMenuItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveImageMenuItemMethod "setSubmenu" o = Gtk.MenuItem.MenuItemSetSubmenuMethodInfo
    ResolveImageMenuItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveImageMenuItemMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveImageMenuItemMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveImageMenuItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveImageMenuItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveImageMenuItemMethod "setUseStock" o = ImageMenuItemSetUseStockMethodInfo
    ResolveImageMenuItemMethod "setUseUnderline" o = Gtk.MenuItem.MenuItemSetUseUnderlineMethodInfo
    ResolveImageMenuItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveImageMenuItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveImageMenuItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveImageMenuItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveImageMenuItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveImageMenuItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveImageMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveImageMenuItemMethod t ImageMenuItem, O.MethodInfo info ImageMenuItem p) => OL.IsLabel t (ImageMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "accel-group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Set the value of the “@accel-group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' imageMenuItem [ #accelGroup 'Data.GI.Base.Attributes.:=' value ]
-- @
setImageMenuItemAccelGroup :: (MonadIO m, IsImageMenuItem o, Gtk.AccelGroup.IsAccelGroup a) => o -> a -> m ()
setImageMenuItemAccelGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "accel-group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@accel-group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructImageMenuItemAccelGroup :: (IsImageMenuItem o, Gtk.AccelGroup.IsAccelGroup a) => a -> IO (GValueConstruct o)
constructImageMenuItemAccelGroup val = B.Properties.constructObjectPropertyObject "accel-group" (Just val)

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemAccelGroupPropertyInfo
instance AttrInfo ImageMenuItemAccelGroupPropertyInfo where
    type AttrAllowedOps ImageMenuItemAccelGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct]
    type AttrBaseTypeConstraint ImageMenuItemAccelGroupPropertyInfo = IsImageMenuItem
    type AttrSetTypeConstraint ImageMenuItemAccelGroupPropertyInfo = Gtk.AccelGroup.IsAccelGroup
    type AttrTransferTypeConstraint ImageMenuItemAccelGroupPropertyInfo = Gtk.AccelGroup.IsAccelGroup
    type AttrTransferType ImageMenuItemAccelGroupPropertyInfo = Gtk.AccelGroup.AccelGroup
    type AttrGetType ImageMenuItemAccelGroupPropertyInfo = ()
    type AttrLabel ImageMenuItemAccelGroupPropertyInfo = "accel-group"
    type AttrOrigin ImageMenuItemAccelGroupPropertyInfo = ImageMenuItem
    attrGet = undefined
    attrSet = setImageMenuItemAccelGroup
    attrTransfer _ v = do
        unsafeCastTo Gtk.AccelGroup.AccelGroup v
    attrConstruct = constructImageMenuItemAccelGroup
    attrClear = undefined
#endif

-- VVV Prop "always-show-image"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@always-show-image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' imageMenuItem #alwaysShowImage
-- @
getImageMenuItemAlwaysShowImage :: (MonadIO m, IsImageMenuItem o) => o -> m Bool
getImageMenuItemAlwaysShowImage obj = liftIO $ B.Properties.getObjectPropertyBool obj "always-show-image"

-- | Set the value of the “@always-show-image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' imageMenuItem [ #alwaysShowImage 'Data.GI.Base.Attributes.:=' value ]
-- @
setImageMenuItemAlwaysShowImage :: (MonadIO m, IsImageMenuItem o) => o -> Bool -> m ()
setImageMenuItemAlwaysShowImage obj val = liftIO $ B.Properties.setObjectPropertyBool obj "always-show-image" val

-- | Construct a `GValueConstruct` with valid value for the “@always-show-image@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructImageMenuItemAlwaysShowImage :: (IsImageMenuItem o) => Bool -> IO (GValueConstruct o)
constructImageMenuItemAlwaysShowImage val = B.Properties.constructObjectPropertyBool "always-show-image" val

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemAlwaysShowImagePropertyInfo
instance AttrInfo ImageMenuItemAlwaysShowImagePropertyInfo where
    type AttrAllowedOps ImageMenuItemAlwaysShowImagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ImageMenuItemAlwaysShowImagePropertyInfo = IsImageMenuItem
    type AttrSetTypeConstraint ImageMenuItemAlwaysShowImagePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ImageMenuItemAlwaysShowImagePropertyInfo = (~) Bool
    type AttrTransferType ImageMenuItemAlwaysShowImagePropertyInfo = Bool
    type AttrGetType ImageMenuItemAlwaysShowImagePropertyInfo = Bool
    type AttrLabel ImageMenuItemAlwaysShowImagePropertyInfo = "always-show-image"
    type AttrOrigin ImageMenuItemAlwaysShowImagePropertyInfo = ImageMenuItem
    attrGet = getImageMenuItemAlwaysShowImage
    attrSet = setImageMenuItemAlwaysShowImage
    attrTransfer _ v = do
        return v
    attrConstruct = constructImageMenuItemAlwaysShowImage
    attrClear = undefined
#endif

-- VVV Prop "image"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' imageMenuItem #image
-- @
getImageMenuItemImage :: (MonadIO m, IsImageMenuItem o) => o -> m Gtk.Widget.Widget
getImageMenuItemImage obj = liftIO $ checkUnexpectedNothing "getImageMenuItemImage" $ B.Properties.getObjectPropertyObject obj "image" Gtk.Widget.Widget

-- | Set the value of the “@image@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' imageMenuItem [ #image 'Data.GI.Base.Attributes.:=' value ]
-- @
setImageMenuItemImage :: (MonadIO m, IsImageMenuItem o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setImageMenuItemImage obj val = liftIO $ B.Properties.setObjectPropertyObject obj "image" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@image@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructImageMenuItemImage :: (IsImageMenuItem o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructImageMenuItemImage val = B.Properties.constructObjectPropertyObject "image" (Just val)

-- | Set the value of the “@image@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #image
-- @
clearImageMenuItemImage :: (MonadIO m, IsImageMenuItem o) => o -> m ()
clearImageMenuItemImage obj = liftIO $ B.Properties.setObjectPropertyObject obj "image" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemImagePropertyInfo
instance AttrInfo ImageMenuItemImagePropertyInfo where
    type AttrAllowedOps ImageMenuItemImagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ImageMenuItemImagePropertyInfo = IsImageMenuItem
    type AttrSetTypeConstraint ImageMenuItemImagePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ImageMenuItemImagePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ImageMenuItemImagePropertyInfo = Gtk.Widget.Widget
    type AttrGetType ImageMenuItemImagePropertyInfo = Gtk.Widget.Widget
    type AttrLabel ImageMenuItemImagePropertyInfo = "image"
    type AttrOrigin ImageMenuItemImagePropertyInfo = ImageMenuItem
    attrGet = getImageMenuItemImage
    attrSet = setImageMenuItemImage
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructImageMenuItemImage
    attrClear = clearImageMenuItemImage
#endif

-- VVV Prop "use-stock"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-stock@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' imageMenuItem #useStock
-- @
getImageMenuItemUseStock :: (MonadIO m, IsImageMenuItem o) => o -> m Bool
getImageMenuItemUseStock obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-stock"

-- | Set the value of the “@use-stock@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' imageMenuItem [ #useStock 'Data.GI.Base.Attributes.:=' value ]
-- @
setImageMenuItemUseStock :: (MonadIO m, IsImageMenuItem o) => o -> Bool -> m ()
setImageMenuItemUseStock obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-stock" val

-- | Construct a `GValueConstruct` with valid value for the “@use-stock@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructImageMenuItemUseStock :: (IsImageMenuItem o) => Bool -> IO (GValueConstruct o)
constructImageMenuItemUseStock val = B.Properties.constructObjectPropertyBool "use-stock" val

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemUseStockPropertyInfo
instance AttrInfo ImageMenuItemUseStockPropertyInfo where
    type AttrAllowedOps ImageMenuItemUseStockPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ImageMenuItemUseStockPropertyInfo = IsImageMenuItem
    type AttrSetTypeConstraint ImageMenuItemUseStockPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ImageMenuItemUseStockPropertyInfo = (~) Bool
    type AttrTransferType ImageMenuItemUseStockPropertyInfo = Bool
    type AttrGetType ImageMenuItemUseStockPropertyInfo = Bool
    type AttrLabel ImageMenuItemUseStockPropertyInfo = "use-stock"
    type AttrOrigin ImageMenuItemUseStockPropertyInfo = ImageMenuItem
    attrGet = getImageMenuItemUseStock
    attrSet = setImageMenuItemUseStock
    attrTransfer _ v = do
        return v
    attrConstruct = constructImageMenuItemUseStock
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ImageMenuItem
type instance O.AttributeList ImageMenuItem = ImageMenuItemAttributeList
type ImageMenuItemAttributeList = ('[ '("accelGroup", ImageMenuItemAccelGroupPropertyInfo), '("accelPath", Gtk.MenuItem.MenuItemAccelPathPropertyInfo), '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("alwaysShowImage", ImageMenuItemAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", ImageMenuItemImagePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.MenuItem.MenuItemLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightJustified", Gtk.MenuItem.MenuItemRightJustifiedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("submenu", Gtk.MenuItem.MenuItemSubmenuPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useStock", ImageMenuItemUseStockPropertyInfo), '("useUnderline", Gtk.MenuItem.MenuItemUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
imageMenuItemAccelGroup :: AttrLabelProxy "accelGroup"
imageMenuItemAccelGroup = AttrLabelProxy

imageMenuItemAlwaysShowImage :: AttrLabelProxy "alwaysShowImage"
imageMenuItemAlwaysShowImage = AttrLabelProxy

imageMenuItemImage :: AttrLabelProxy "image"
imageMenuItemImage = AttrLabelProxy

imageMenuItemUseStock :: AttrLabelProxy "useStock"
imageMenuItemUseStock = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ImageMenuItem = ImageMenuItemSignalList
type ImageMenuItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.MenuItem.MenuItemActivateSignalInfo), '("activateItem", Gtk.MenuItem.MenuItemActivateItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deselect", Gtk.MenuItem.MenuItemDeselectSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("select", Gtk.MenuItem.MenuItemSelectSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleSizeAllocate", Gtk.MenuItem.MenuItemToggleSizeAllocateSignalInfo), '("toggleSizeRequest", Gtk.MenuItem.MenuItemToggleSizeRequestSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ImageMenuItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_image_menu_item_new" gtk_image_menu_item_new :: 
    IO (Ptr ImageMenuItem)

{-# DEPRECATED imageMenuItemNew ["(Since version 3.10)","Use 'GI.Gtk.Objects.MenuItem.menuItemNew' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem' with an empty label.
imageMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ImageMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
imageMenuItemNew  = liftIO $ do
    result <- gtk_image_menu_item_new
    checkUnexpectedReturnNULL "imageMenuItemNew" result
    result' <- (newObject ImageMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ImageMenuItem::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the stock item."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkAccelGroup to add the menu items\n  accelerator to, or %NULL."
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
--               (TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_image_menu_item_new_from_stock" gtk_image_menu_item_new_from_stock :: 
    CString ->                              -- stock_id : TBasicType TUTF8
    Ptr Gtk.AccelGroup.AccelGroup ->        -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO (Ptr ImageMenuItem)

{-# DEPRECATED imageMenuItemNewFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.MenuItem.menuItemNewWithMnemonic' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem' containing the image and text from a
-- stock item. Some stock ids have preprocessor macros like 'GI.Gtk.Constants.STOCK_OK'
-- and 'GI.Gtk.Constants.STOCK_APPLY'.
-- 
-- If you want this menu item to have changeable accelerators, then pass in
-- 'P.Nothing' for accel_group. Next call 'GI.Gtk.Objects.MenuItem.menuItemSetAccelPath' with an
-- appropriate path for the menu item, use 'GI.Gtk.Functions.stockLookup' to look up the
-- standard accelerator for the stock item, and if one is found, call
-- 'GI.Gtk.Objects.AccelMap.accelMapAddEntry' to register it.
imageMenuItemNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.AccelGroup.IsAccelGroup a) =>
    T.Text
    -- ^ /@stockId@/: the name of the stock item.
    -> Maybe (a)
    -- ^ /@accelGroup@/: the t'GI.Gtk.Objects.AccelGroup.AccelGroup' to add the menu items
    --   accelerator to, or 'P.Nothing'.
    -> m ImageMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'.
imageMenuItemNewFromStock stockId accelGroup = liftIO $ do
    stockId' <- textToCString stockId
    maybeAccelGroup <- case accelGroup of
        Nothing -> return nullPtr
        Just jAccelGroup -> do
            jAccelGroup' <- unsafeManagedPtrCastPtr jAccelGroup
            return jAccelGroup'
    result <- gtk_image_menu_item_new_from_stock stockId' maybeAccelGroup
    checkUnexpectedReturnNULL "imageMenuItemNewFromStock" result
    result' <- (newObject ImageMenuItem) result
    whenJust accelGroup touchManagedPtr
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ImageMenuItem::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text of the menu item."
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
--               (TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_image_menu_item_new_with_label" gtk_image_menu_item_new_with_label :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr ImageMenuItem)

{-# DEPRECATED imageMenuItemNewWithLabel ["(Since version 3.10)","Use 'GI.Gtk.Objects.MenuItem.menuItemNewWithLabel' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem' containing a label.
imageMenuItemNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: the text of the menu item.
    -> m ImageMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'.
imageMenuItemNewWithLabel label = liftIO $ do
    label' <- textToCString label
    result <- gtk_image_menu_item_new_with_label label'
    checkUnexpectedReturnNULL "imageMenuItemNewWithLabel" result
    result' <- (newObject ImageMenuItem) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ImageMenuItem::new_with_mnemonic
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the menu item, with an underscore in front of the\n        mnemonic character"
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
--               (TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_image_menu_item_new_with_mnemonic" gtk_image_menu_item_new_with_mnemonic :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr ImageMenuItem)

{-# DEPRECATED imageMenuItemNewWithMnemonic ["(Since version 3.10)","Use 'GI.Gtk.Objects.MenuItem.menuItemNewWithMnemonic' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem' containing a label. The label
-- will be created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores
-- in /@label@/ indicate the mnemonic for the menu item.
imageMenuItemNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: the text of the menu item, with an underscore in front of the
    --         mnemonic character
    -> m ImageMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
imageMenuItemNewWithMnemonic label = liftIO $ do
    label' <- textToCString label
    result <- gtk_image_menu_item_new_with_mnemonic label'
    checkUnexpectedReturnNULL "imageMenuItemNewWithMnemonic" result
    result' <- (newObject ImageMenuItem) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ImageMenuItem::get_always_show_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
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

foreign import ccall "gtk_image_menu_item_get_always_show_image" gtk_image_menu_item_get_always_show_image :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    IO CInt

{-# DEPRECATED imageMenuItemGetAlwaysShowImage ["(Since version 3.10)"] #-}
-- | Returns whether the menu item will ignore the t'GI.Gtk.Objects.Settings.Settings':@/gtk-menu-images/@
-- setting and always show the image, if available.
-- 
-- /Since: 2.16/
imageMenuItemGetAlwaysShowImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the menu item will always show the image
imageMenuItemGetAlwaysShowImage imageMenuItem = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    result <- gtk_image_menu_item_get_always_show_image imageMenuItem'
    let result' = (/= 0) result
    touchManagedPtr imageMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemGetAlwaysShowImageMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsImageMenuItem a) => O.MethodInfo ImageMenuItemGetAlwaysShowImageMethodInfo a signature where
    overloadedMethod = imageMenuItemGetAlwaysShowImage

#endif

-- method ImageMenuItem::get_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
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

foreign import ccall "gtk_image_menu_item_get_image" gtk_image_menu_item_get_image :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED imageMenuItemGetImage ["(Since version 3.10)"] #-}
-- | Gets the widget that is currently set as the image of /@imageMenuItem@/.
-- See 'GI.Gtk.Objects.ImageMenuItem.imageMenuItemSetImage'.
imageMenuItemGetImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the widget set as image of /@imageMenuItem@/
imageMenuItemGetImage imageMenuItem = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    result <- gtk_image_menu_item_get_image imageMenuItem'
    checkUnexpectedReturnNULL "imageMenuItemGetImage" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr imageMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemGetImageMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsImageMenuItem a) => O.MethodInfo ImageMenuItemGetImageMethodInfo a signature where
    overloadedMethod = imageMenuItemGetImage

#endif

-- method ImageMenuItem::get_use_stock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
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

foreign import ccall "gtk_image_menu_item_get_use_stock" gtk_image_menu_item_get_use_stock :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    IO CInt

{-# DEPRECATED imageMenuItemGetUseStock ["(Since version 3.10)"] #-}
-- | Checks whether the label set in the menuitem is used as a
-- stock id to select the stock item for the item.
-- 
-- /Since: 2.16/
imageMenuItemGetUseStock ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the label set in the menuitem is used as a
    --     stock id to select the stock item for the item
imageMenuItemGetUseStock imageMenuItem = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    result <- gtk_image_menu_item_get_use_stock imageMenuItem'
    let result' = (/= 0) result
    touchManagedPtr imageMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemGetUseStockMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsImageMenuItem a) => O.MethodInfo ImageMenuItemGetUseStockMethodInfo a signature where
    overloadedMethod = imageMenuItemGetUseStock

#endif

-- method ImageMenuItem::set_accel_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accel_group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "AccelGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkAccelGroup" , sinceVersion = Nothing }
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

foreign import ccall "gtk_image_menu_item_set_accel_group" gtk_image_menu_item_set_accel_group :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    Ptr Gtk.AccelGroup.AccelGroup ->        -- accel_group : TInterface (Name {namespace = "Gtk", name = "AccelGroup"})
    IO ()

{-# DEPRECATED imageMenuItemSetAccelGroup ["(Since version 3.10)"] #-}
-- | Specifies an /@accelGroup@/ to add the menu items accelerator to
-- (this only applies to stock items so a stock item must already
-- be set, make sure to call 'GI.Gtk.Objects.ImageMenuItem.imageMenuItemSetUseStock'
-- and 'GI.Gtk.Objects.MenuItem.menuItemSetLabel' with a valid stock item first).
-- 
-- If you want this menu item to have changeable accelerators then
-- you shouldnt need this (see 'GI.Gtk.Objects.ImageMenuItem.imageMenuItemNewFromStock').
-- 
-- /Since: 2.16/
imageMenuItemSetAccelGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a, Gtk.AccelGroup.IsAccelGroup b) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> b
    -- ^ /@accelGroup@/: the t'GI.Gtk.Objects.AccelGroup.AccelGroup'
    -> m ()
imageMenuItemSetAccelGroup imageMenuItem accelGroup = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    accelGroup' <- unsafeManagedPtrCastPtr accelGroup
    gtk_image_menu_item_set_accel_group imageMenuItem' accelGroup'
    touchManagedPtr imageMenuItem
    touchManagedPtr accelGroup
    return ()

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemSetAccelGroupMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsImageMenuItem a, Gtk.AccelGroup.IsAccelGroup b) => O.MethodInfo ImageMenuItemSetAccelGroupMethodInfo a signature where
    overloadedMethod = imageMenuItemSetAccelGroup

#endif

-- method ImageMenuItem::set_always_show_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "always_show"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if the menuitem should always show the image"
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

foreign import ccall "gtk_image_menu_item_set_always_show_image" gtk_image_menu_item_set_always_show_image :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    CInt ->                                 -- always_show : TBasicType TBoolean
    IO ()

{-# DEPRECATED imageMenuItemSetAlwaysShowImage ["(Since version 3.10)"] #-}
-- | If 'P.True', the menu item will ignore the t'GI.Gtk.Objects.Settings.Settings':@/gtk-menu-images/@
-- setting and always show the image, if available.
-- 
-- Use this property if the menuitem would be useless or hard to use
-- without the image.
-- 
-- /Since: 2.16/
imageMenuItemSetAlwaysShowImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> Bool
    -- ^ /@alwaysShow@/: 'P.True' if the menuitem should always show the image
    -> m ()
imageMenuItemSetAlwaysShowImage imageMenuItem alwaysShow = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    let alwaysShow' = (fromIntegral . fromEnum) alwaysShow
    gtk_image_menu_item_set_always_show_image imageMenuItem' alwaysShow'
    touchManagedPtr imageMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemSetAlwaysShowImageMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsImageMenuItem a) => O.MethodInfo ImageMenuItemSetAlwaysShowImageMethodInfo a signature where
    overloadedMethod = imageMenuItemSetAlwaysShowImage

#endif

-- method ImageMenuItem::set_image
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem."
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a widget to set as the image for the menu item."
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

foreign import ccall "gtk_image_menu_item_set_image" gtk_image_menu_item_set_image :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    Ptr Gtk.Widget.Widget ->                -- image : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

{-# DEPRECATED imageMenuItemSetImage ["(Since version 3.10)"] #-}
-- | Sets the image of /@imageMenuItem@/ to the given widget.
-- Note that it depends on the show-menu-images setting whether
-- the image will be displayed or not.
imageMenuItemSetImage ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'.
    -> Maybe (b)
    -- ^ /@image@/: a widget to set as the image for the menu item.
    -> m ()
imageMenuItemSetImage imageMenuItem image = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    maybeImage <- case image of
        Nothing -> return nullPtr
        Just jImage -> do
            jImage' <- unsafeManagedPtrCastPtr jImage
            return jImage'
    gtk_image_menu_item_set_image imageMenuItem' maybeImage
    touchManagedPtr imageMenuItem
    whenJust image touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemSetImageMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsImageMenuItem a, Gtk.Widget.IsWidget b) => O.MethodInfo ImageMenuItemSetImageMethodInfo a signature where
    overloadedMethod = imageMenuItemSetImage

#endif

-- method ImageMenuItem::set_use_stock
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "image_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ImageMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkImageMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_stock"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE if the menuitem should use a stock item"
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

foreign import ccall "gtk_image_menu_item_set_use_stock" gtk_image_menu_item_set_use_stock :: 
    Ptr ImageMenuItem ->                    -- image_menu_item : TInterface (Name {namespace = "Gtk", name = "ImageMenuItem"})
    CInt ->                                 -- use_stock : TBasicType TBoolean
    IO ()

{-# DEPRECATED imageMenuItemSetUseStock ["(Since version 3.10)"] #-}
-- | If 'P.True', the label set in the menuitem is used as a
-- stock id to select the stock item for the item.
-- 
-- /Since: 2.16/
imageMenuItemSetUseStock ::
    (B.CallStack.HasCallStack, MonadIO m, IsImageMenuItem a) =>
    a
    -- ^ /@imageMenuItem@/: a t'GI.Gtk.Objects.ImageMenuItem.ImageMenuItem'
    -> Bool
    -- ^ /@useStock@/: 'P.True' if the menuitem should use a stock item
    -> m ()
imageMenuItemSetUseStock imageMenuItem useStock = liftIO $ do
    imageMenuItem' <- unsafeManagedPtrCastPtr imageMenuItem
    let useStock' = (fromIntegral . fromEnum) useStock
    gtk_image_menu_item_set_use_stock imageMenuItem' useStock'
    touchManagedPtr imageMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ImageMenuItemSetUseStockMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsImageMenuItem a) => O.MethodInfo ImageMenuItemSetUseStockMethodInfo a signature where
    overloadedMethod = imageMenuItemSetUseStock

#endif

