{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A radio menu item is a check menu item that belongs to a group. At each
-- instant exactly one of the radio menu items from a group is selected.
-- 
-- The group list does not need to be freed, as each t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' will
-- remove itself and its list item when it is destroyed.
-- 
-- The correct way to create a group of radio menu items is approximatively
-- this:
-- 
-- == How to create a group of radio menu items.
-- 
-- 
-- === /C code/
-- >
-- >GSList *group = NULL;
-- >GtkWidget *item;
-- >gint i;
-- >
-- >for (i = 0; i < 5; i++)
-- >{
-- >  item = gtk_radio_menu_item_new_with_label (group, "This is an example");
-- >  group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
-- >  if (i == 1)
-- >    gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
-- >}
-- 
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >menuitem
-- >├── radio.left
-- >╰── <child>
-- 
-- 
-- GtkRadioMenuItem has a main CSS node with name menuitem, and a subnode
-- with name radio, which gets the .left or .right style class.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RadioMenuItem
    ( 

-- * Exported types
    RadioMenuItem(..)                       ,
    IsRadioMenuItem                         ,
    toRadioMenuItem                         ,
    noRadioMenuItem                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRadioMenuItemMethod              ,
#endif


-- ** getGroup #method:getGroup#

#if defined(ENABLE_OVERLOADING)
    RadioMenuItemGetGroupMethodInfo         ,
#endif
    radioMenuItemGetGroup                   ,


-- ** joinGroup #method:joinGroup#

#if defined(ENABLE_OVERLOADING)
    RadioMenuItemJoinGroupMethodInfo        ,
#endif
    radioMenuItemJoinGroup                  ,


-- ** new #method:new#

    radioMenuItemNew                        ,


-- ** newFromWidget #method:newFromWidget#

    radioMenuItemNewFromWidget              ,


-- ** newWithLabel #method:newWithLabel#

    radioMenuItemNewWithLabel               ,


-- ** newWithLabelFromWidget #method:newWithLabelFromWidget#

    radioMenuItemNewWithLabelFromWidget     ,


-- ** newWithMnemonic #method:newWithMnemonic#

    radioMenuItemNewWithMnemonic            ,


-- ** newWithMnemonicFromWidget #method:newWithMnemonicFromWidget#

    radioMenuItemNewWithMnemonicFromWidget  ,


-- ** setGroup #method:setGroup#

#if defined(ENABLE_OVERLOADING)
    RadioMenuItemSetGroupMethodInfo         ,
#endif
    radioMenuItemSetGroup                   ,




 -- * Properties
-- ** group #attr:group#
-- | The radio menu item whose group this widget belongs to.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    RadioMenuItemGroupPropertyInfo          ,
#endif
    clearRadioMenuItemGroup                 ,
    constructRadioMenuItemGroup             ,
#if defined(ENABLE_OVERLOADING)
    radioMenuItemGroup                      ,
#endif
    setRadioMenuItemGroup                   ,




 -- * Signals
-- ** groupChanged #signal:groupChanged#

    C_RadioMenuItemGroupChangedCallback     ,
    RadioMenuItemGroupChangedCallback       ,
#if defined(ENABLE_OVERLOADING)
    RadioMenuItemGroupChangedSignalInfo     ,
#endif
    afterRadioMenuItemGroupChanged          ,
    genClosure_RadioMenuItemGroupChanged    ,
    mk_RadioMenuItemGroupChangedCallback    ,
    noRadioMenuItemGroupChangedCallback     ,
    onRadioMenuItemGroupChanged             ,
    wrap_RadioMenuItemGroupChangedCallback  ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.CheckMenuItem as Gtk.CheckMenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItem as Gtk.MenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype RadioMenuItem = RadioMenuItem (ManagedPtr RadioMenuItem)
    deriving (Eq)
foreign import ccall "gtk_radio_menu_item_get_type"
    c_gtk_radio_menu_item_get_type :: IO GType

instance GObject RadioMenuItem where
    gobjectType = c_gtk_radio_menu_item_get_type
    

-- | Convert 'RadioMenuItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RadioMenuItem where
    toGValue o = do
        gtype <- c_gtk_radio_menu_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RadioMenuItem)
        B.ManagedPtr.newObject RadioMenuItem ptr
        
    

-- | Type class for types which can be safely cast to `RadioMenuItem`, for instance with `toRadioMenuItem`.
class (GObject o, O.IsDescendantOf RadioMenuItem o) => IsRadioMenuItem o
instance (GObject o, O.IsDescendantOf RadioMenuItem o) => IsRadioMenuItem o

instance O.HasParentTypes RadioMenuItem
type instance O.ParentTypes RadioMenuItem = '[Gtk.CheckMenuItem.CheckMenuItem, Gtk.MenuItem.MenuItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `RadioMenuItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRadioMenuItem :: (MonadIO m, IsRadioMenuItem o) => o -> m RadioMenuItem
toRadioMenuItem = liftIO . unsafeCastTo RadioMenuItem

-- | A convenience alias for `Nothing` :: `Maybe` `RadioMenuItem`.
noRadioMenuItem :: Maybe RadioMenuItem
noRadioMenuItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRadioMenuItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveRadioMenuItemMethod "activate" o = Gtk.MenuItem.MenuItemActivateMethodInfo
    ResolveRadioMenuItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveRadioMenuItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveRadioMenuItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveRadioMenuItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveRadioMenuItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveRadioMenuItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveRadioMenuItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveRadioMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRadioMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRadioMenuItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveRadioMenuItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveRadioMenuItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveRadioMenuItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveRadioMenuItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveRadioMenuItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveRadioMenuItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveRadioMenuItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveRadioMenuItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveRadioMenuItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveRadioMenuItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveRadioMenuItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveRadioMenuItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveRadioMenuItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveRadioMenuItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveRadioMenuItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveRadioMenuItemMethod "deselect" o = Gtk.MenuItem.MenuItemDeselectMethodInfo
    ResolveRadioMenuItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveRadioMenuItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveRadioMenuItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveRadioMenuItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveRadioMenuItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveRadioMenuItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveRadioMenuItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveRadioMenuItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveRadioMenuItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveRadioMenuItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveRadioMenuItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveRadioMenuItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveRadioMenuItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveRadioMenuItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveRadioMenuItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveRadioMenuItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveRadioMenuItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveRadioMenuItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveRadioMenuItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveRadioMenuItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveRadioMenuItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveRadioMenuItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveRadioMenuItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveRadioMenuItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveRadioMenuItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveRadioMenuItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveRadioMenuItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveRadioMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRadioMenuItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveRadioMenuItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveRadioMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRadioMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRadioMenuItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveRadioMenuItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveRadioMenuItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveRadioMenuItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveRadioMenuItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveRadioMenuItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveRadioMenuItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveRadioMenuItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveRadioMenuItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveRadioMenuItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveRadioMenuItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveRadioMenuItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveRadioMenuItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveRadioMenuItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveRadioMenuItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveRadioMenuItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveRadioMenuItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveRadioMenuItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveRadioMenuItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveRadioMenuItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveRadioMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRadioMenuItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveRadioMenuItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveRadioMenuItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveRadioMenuItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveRadioMenuItemMethod "joinGroup" o = RadioMenuItemJoinGroupMethodInfo
    ResolveRadioMenuItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveRadioMenuItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveRadioMenuItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveRadioMenuItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveRadioMenuItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveRadioMenuItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveRadioMenuItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveRadioMenuItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveRadioMenuItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveRadioMenuItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveRadioMenuItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveRadioMenuItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveRadioMenuItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveRadioMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRadioMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRadioMenuItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveRadioMenuItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveRadioMenuItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveRadioMenuItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveRadioMenuItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveRadioMenuItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveRadioMenuItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveRadioMenuItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveRadioMenuItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveRadioMenuItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveRadioMenuItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveRadioMenuItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveRadioMenuItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveRadioMenuItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveRadioMenuItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveRadioMenuItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveRadioMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRadioMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRadioMenuItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveRadioMenuItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveRadioMenuItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveRadioMenuItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveRadioMenuItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveRadioMenuItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveRadioMenuItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveRadioMenuItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveRadioMenuItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveRadioMenuItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveRadioMenuItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveRadioMenuItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveRadioMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRadioMenuItemMethod "select" o = Gtk.MenuItem.MenuItemSelectMethodInfo
    ResolveRadioMenuItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveRadioMenuItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveRadioMenuItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveRadioMenuItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveRadioMenuItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveRadioMenuItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveRadioMenuItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveRadioMenuItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveRadioMenuItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveRadioMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRadioMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRadioMenuItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveRadioMenuItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveRadioMenuItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveRadioMenuItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveRadioMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRadioMenuItemMethod "toggleSizeAllocate" o = Gtk.MenuItem.MenuItemToggleSizeAllocateMethodInfo
    ResolveRadioMenuItemMethod "toggleSizeRequest" o = Gtk.MenuItem.MenuItemToggleSizeRequestMethodInfo
    ResolveRadioMenuItemMethod "toggled" o = Gtk.CheckMenuItem.CheckMenuItemToggledMethodInfo
    ResolveRadioMenuItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveRadioMenuItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveRadioMenuItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveRadioMenuItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveRadioMenuItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveRadioMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRadioMenuItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveRadioMenuItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveRadioMenuItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveRadioMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRadioMenuItemMethod "getAccelPath" o = Gtk.MenuItem.MenuItemGetAccelPathMethodInfo
    ResolveRadioMenuItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveRadioMenuItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveRadioMenuItemMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveRadioMenuItemMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveRadioMenuItemMethod "getActive" o = Gtk.CheckMenuItem.CheckMenuItemGetActiveMethodInfo
    ResolveRadioMenuItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveRadioMenuItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveRadioMenuItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveRadioMenuItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveRadioMenuItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveRadioMenuItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveRadioMenuItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveRadioMenuItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveRadioMenuItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveRadioMenuItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveRadioMenuItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveRadioMenuItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveRadioMenuItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveRadioMenuItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveRadioMenuItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveRadioMenuItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveRadioMenuItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveRadioMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRadioMenuItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveRadioMenuItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveRadioMenuItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveRadioMenuItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveRadioMenuItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveRadioMenuItemMethod "getDrawAsRadio" o = Gtk.CheckMenuItem.CheckMenuItemGetDrawAsRadioMethodInfo
    ResolveRadioMenuItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveRadioMenuItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveRadioMenuItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveRadioMenuItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveRadioMenuItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveRadioMenuItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveRadioMenuItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveRadioMenuItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveRadioMenuItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveRadioMenuItemMethod "getGroup" o = RadioMenuItemGetGroupMethodInfo
    ResolveRadioMenuItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveRadioMenuItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveRadioMenuItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveRadioMenuItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveRadioMenuItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveRadioMenuItemMethod "getInconsistent" o = Gtk.CheckMenuItem.CheckMenuItemGetInconsistentMethodInfo
    ResolveRadioMenuItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveRadioMenuItemMethod "getLabel" o = Gtk.MenuItem.MenuItemGetLabelMethodInfo
    ResolveRadioMenuItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveRadioMenuItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveRadioMenuItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveRadioMenuItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveRadioMenuItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveRadioMenuItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveRadioMenuItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveRadioMenuItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveRadioMenuItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveRadioMenuItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveRadioMenuItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveRadioMenuItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveRadioMenuItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveRadioMenuItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveRadioMenuItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveRadioMenuItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveRadioMenuItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveRadioMenuItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveRadioMenuItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveRadioMenuItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveRadioMenuItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveRadioMenuItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveRadioMenuItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveRadioMenuItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveRadioMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRadioMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRadioMenuItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveRadioMenuItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveRadioMenuItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveRadioMenuItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveRadioMenuItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveRadioMenuItemMethod "getReserveIndicator" o = Gtk.MenuItem.MenuItemGetReserveIndicatorMethodInfo
    ResolveRadioMenuItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveRadioMenuItemMethod "getRightJustified" o = Gtk.MenuItem.MenuItemGetRightJustifiedMethodInfo
    ResolveRadioMenuItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveRadioMenuItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveRadioMenuItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveRadioMenuItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveRadioMenuItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveRadioMenuItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveRadioMenuItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveRadioMenuItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveRadioMenuItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveRadioMenuItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveRadioMenuItemMethod "getSubmenu" o = Gtk.MenuItem.MenuItemGetSubmenuMethodInfo
    ResolveRadioMenuItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveRadioMenuItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveRadioMenuItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveRadioMenuItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveRadioMenuItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveRadioMenuItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveRadioMenuItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveRadioMenuItemMethod "getUseUnderline" o = Gtk.MenuItem.MenuItemGetUseUnderlineMethodInfo
    ResolveRadioMenuItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveRadioMenuItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveRadioMenuItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveRadioMenuItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveRadioMenuItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveRadioMenuItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveRadioMenuItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveRadioMenuItemMethod "setAccelPath" o = Gtk.MenuItem.MenuItemSetAccelPathMethodInfo
    ResolveRadioMenuItemMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveRadioMenuItemMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveRadioMenuItemMethod "setActive" o = Gtk.CheckMenuItem.CheckMenuItemSetActiveMethodInfo
    ResolveRadioMenuItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveRadioMenuItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveRadioMenuItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveRadioMenuItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveRadioMenuItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveRadioMenuItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveRadioMenuItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveRadioMenuItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveRadioMenuItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveRadioMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRadioMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRadioMenuItemMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveRadioMenuItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveRadioMenuItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveRadioMenuItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveRadioMenuItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveRadioMenuItemMethod "setDrawAsRadio" o = Gtk.CheckMenuItem.CheckMenuItemSetDrawAsRadioMethodInfo
    ResolveRadioMenuItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveRadioMenuItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveRadioMenuItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveRadioMenuItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveRadioMenuItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveRadioMenuItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveRadioMenuItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveRadioMenuItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveRadioMenuItemMethod "setGroup" o = RadioMenuItemSetGroupMethodInfo
    ResolveRadioMenuItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveRadioMenuItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveRadioMenuItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveRadioMenuItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveRadioMenuItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveRadioMenuItemMethod "setInconsistent" o = Gtk.CheckMenuItem.CheckMenuItemSetInconsistentMethodInfo
    ResolveRadioMenuItemMethod "setLabel" o = Gtk.MenuItem.MenuItemSetLabelMethodInfo
    ResolveRadioMenuItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveRadioMenuItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveRadioMenuItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveRadioMenuItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveRadioMenuItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveRadioMenuItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveRadioMenuItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveRadioMenuItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveRadioMenuItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveRadioMenuItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveRadioMenuItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveRadioMenuItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveRadioMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRadioMenuItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveRadioMenuItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveRadioMenuItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveRadioMenuItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveRadioMenuItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveRadioMenuItemMethod "setReserveIndicator" o = Gtk.MenuItem.MenuItemSetReserveIndicatorMethodInfo
    ResolveRadioMenuItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveRadioMenuItemMethod "setRightJustified" o = Gtk.MenuItem.MenuItemSetRightJustifiedMethodInfo
    ResolveRadioMenuItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveRadioMenuItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveRadioMenuItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveRadioMenuItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveRadioMenuItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveRadioMenuItemMethod "setSubmenu" o = Gtk.MenuItem.MenuItemSetSubmenuMethodInfo
    ResolveRadioMenuItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveRadioMenuItemMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveRadioMenuItemMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveRadioMenuItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveRadioMenuItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveRadioMenuItemMethod "setUseUnderline" o = Gtk.MenuItem.MenuItemSetUseUnderlineMethodInfo
    ResolveRadioMenuItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveRadioMenuItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveRadioMenuItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveRadioMenuItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveRadioMenuItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveRadioMenuItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveRadioMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRadioMenuItemMethod t RadioMenuItem, O.MethodInfo info RadioMenuItem p) => OL.IsLabel t (RadioMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal RadioMenuItem::group-changed
-- | /No description available in the introspection data./
type RadioMenuItemGroupChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RadioMenuItemGroupChangedCallback`@.
noRadioMenuItemGroupChangedCallback :: Maybe RadioMenuItemGroupChangedCallback
noRadioMenuItemGroupChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RadioMenuItemGroupChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RadioMenuItemGroupChangedCallback`.
foreign import ccall "wrapper"
    mk_RadioMenuItemGroupChangedCallback :: C_RadioMenuItemGroupChangedCallback -> IO (FunPtr C_RadioMenuItemGroupChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RadioMenuItemGroupChanged :: MonadIO m => RadioMenuItemGroupChangedCallback -> m (GClosure C_RadioMenuItemGroupChangedCallback)
genClosure_RadioMenuItemGroupChanged cb = liftIO $ do
    let cb' = wrap_RadioMenuItemGroupChangedCallback cb
    mk_RadioMenuItemGroupChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RadioMenuItemGroupChangedCallback` into a `C_RadioMenuItemGroupChangedCallback`.
wrap_RadioMenuItemGroupChangedCallback ::
    RadioMenuItemGroupChangedCallback ->
    C_RadioMenuItemGroupChangedCallback
wrap_RadioMenuItemGroupChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [groupChanged](#signal:groupChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' radioMenuItem #groupChanged callback
-- @
-- 
-- 
onRadioMenuItemGroupChanged :: (IsRadioMenuItem a, MonadIO m) => a -> RadioMenuItemGroupChangedCallback -> m SignalHandlerId
onRadioMenuItemGroupChanged obj cb = liftIO $ do
    let cb' = wrap_RadioMenuItemGroupChangedCallback cb
    cb'' <- mk_RadioMenuItemGroupChangedCallback cb'
    connectSignalFunPtr obj "group-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [groupChanged](#signal:groupChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' radioMenuItem #groupChanged callback
-- @
-- 
-- 
afterRadioMenuItemGroupChanged :: (IsRadioMenuItem a, MonadIO m) => a -> RadioMenuItemGroupChangedCallback -> m SignalHandlerId
afterRadioMenuItemGroupChanged obj cb = liftIO $ do
    let cb' = wrap_RadioMenuItemGroupChangedCallback cb
    cb'' <- mk_RadioMenuItemGroupChangedCallback cb'
    connectSignalFunPtr obj "group-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RadioMenuItemGroupChangedSignalInfo
instance SignalInfo RadioMenuItemGroupChangedSignalInfo where
    type HaskellCallbackType RadioMenuItemGroupChangedSignalInfo = RadioMenuItemGroupChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RadioMenuItemGroupChangedCallback cb
        cb'' <- mk_RadioMenuItemGroupChangedCallback cb'
        connectSignalFunPtr obj "group-changed" cb'' connectMode detail

#endif

-- VVV Prop "group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' radioMenuItem [ #group 'Data.GI.Base.Attributes.:=' value ]
-- @
setRadioMenuItemGroup :: (MonadIO m, IsRadioMenuItem o, IsRadioMenuItem a) => o -> a -> m ()
setRadioMenuItemGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRadioMenuItemGroup :: (IsRadioMenuItem o, IsRadioMenuItem a) => a -> IO (GValueConstruct o)
constructRadioMenuItemGroup val = B.Properties.constructObjectPropertyObject "group" (Just val)

-- | Set the value of the “@group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #group
-- @
clearRadioMenuItemGroup :: (MonadIO m, IsRadioMenuItem o) => o -> m ()
clearRadioMenuItemGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Nothing :: Maybe RadioMenuItem)

#if defined(ENABLE_OVERLOADING)
data RadioMenuItemGroupPropertyInfo
instance AttrInfo RadioMenuItemGroupPropertyInfo where
    type AttrAllowedOps RadioMenuItemGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint RadioMenuItemGroupPropertyInfo = IsRadioMenuItem
    type AttrSetTypeConstraint RadioMenuItemGroupPropertyInfo = IsRadioMenuItem
    type AttrTransferTypeConstraint RadioMenuItemGroupPropertyInfo = IsRadioMenuItem
    type AttrTransferType RadioMenuItemGroupPropertyInfo = RadioMenuItem
    type AttrGetType RadioMenuItemGroupPropertyInfo = ()
    type AttrLabel RadioMenuItemGroupPropertyInfo = "group"
    type AttrOrigin RadioMenuItemGroupPropertyInfo = RadioMenuItem
    attrGet = undefined
    attrSet = setRadioMenuItemGroup
    attrTransfer _ v = do
        unsafeCastTo RadioMenuItem v
    attrConstruct = constructRadioMenuItemGroup
    attrClear = clearRadioMenuItemGroup
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RadioMenuItem
type instance O.AttributeList RadioMenuItem = RadioMenuItemAttributeList
type RadioMenuItemAttributeList = ('[ '("accelPath", Gtk.MenuItem.MenuItemAccelPathPropertyInfo), '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", Gtk.CheckMenuItem.CheckMenuItemActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawAsRadio", Gtk.CheckMenuItem.CheckMenuItemDrawAsRadioPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("group", RadioMenuItemGroupPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inconsistent", Gtk.CheckMenuItem.CheckMenuItemInconsistentPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.MenuItem.MenuItemLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightJustified", Gtk.MenuItem.MenuItemRightJustifiedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("submenu", Gtk.MenuItem.MenuItemSubmenuPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.MenuItem.MenuItemUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
radioMenuItemGroup :: AttrLabelProxy "group"
radioMenuItemGroup = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RadioMenuItem = RadioMenuItemSignalList
type RadioMenuItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.MenuItem.MenuItemActivateSignalInfo), '("activateItem", Gtk.MenuItem.MenuItemActivateItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deselect", Gtk.MenuItem.MenuItemDeselectSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("groupChanged", RadioMenuItemGroupChangedSignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("select", Gtk.MenuItem.MenuItemSelectSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleSizeAllocate", Gtk.MenuItem.MenuItemToggleSizeAllocateSignalInfo), '("toggleSizeRequest", Gtk.MenuItem.MenuItemToggleSizeRequestSignalInfo), '("toggled", Gtk.CheckMenuItem.CheckMenuItemToggledSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method RadioMenuItem::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the group to which the\n  radio menu item is to be attached, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new" gtk_radio_menu_item_new :: 
    Ptr (GSList (Ptr RadioMenuItem)) ->     -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"}))
    IO (Ptr RadioMenuItem)

-- | Creates a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'.
radioMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    [a]
    -- ^ /@group@/: the group to which the
    --   radio menu item is to be attached, or 'P.Nothing'
    -> m RadioMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNew group = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    result <- gtk_radio_menu_item_new group''
    checkUnexpectedReturnNULL "radioMenuItemNew" result
    result' <- (newObject RadioMenuItem) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::new_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An existing #GtkRadioMenuItem"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new_from_widget" gtk_radio_menu_item_new_from_widget :: 
    Ptr RadioMenuItem ->                    -- group : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    IO (Ptr RadioMenuItem)

-- | Creates a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' adding it to the same group as /@group@/.
-- 
-- /Since: 2.4/
radioMenuItemNewFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    Maybe (a)
    -- ^ /@group@/: An existing t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> m RadioMenuItem
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNewFromWidget group = liftIO $ do
    maybeGroup <- case group of
        Nothing -> return nullPtr
        Just jGroup -> do
            jGroup' <- unsafeManagedPtrCastPtr jGroup
            return jGroup'
    result <- gtk_radio_menu_item_new_from_widget maybeGroup
    checkUnexpectedReturnNULL "radioMenuItemNewFromWidget" result
    result' <- (newObject RadioMenuItem) result
    whenJust group touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "\n        group the radio menu item is inside, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text for the label"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new_with_label" gtk_radio_menu_item_new_with_label :: 
    Ptr (GSList (Ptr RadioMenuItem)) ->     -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"}))
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioMenuItem)

-- | Creates a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' whose child is a simple t'GI.Gtk.Objects.Label.Label'.
radioMenuItemNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    [a]
    -- ^ /@group@/: 
    --         group the radio menu item is inside, or 'P.Nothing'
    -> T.Text
    -- ^ /@label@/: the text for the label
    -> m RadioMenuItem
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNewWithLabel group label = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    label' <- textToCString label
    result <- gtk_radio_menu_item_new_with_label group'' label'
    checkUnexpectedReturnNULL "radioMenuItemNewWithLabel" result
    result' <- (newObject RadioMenuItem) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::new_with_label_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an existing #GtkRadioMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text for the label"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new_with_label_from_widget" gtk_radio_menu_item_new_with_label_from_widget :: 
    Ptr RadioMenuItem ->                    -- group : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioMenuItem)

-- | Creates a new GtkRadioMenuItem whose child is a simple GtkLabel.
-- The new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' is added to the same group as /@group@/.
-- 
-- /Since: 2.4/
radioMenuItemNewWithLabelFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    Maybe (a)
    -- ^ /@group@/: an existing t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> Maybe (T.Text)
    -- ^ /@label@/: the text for the label
    -> m RadioMenuItem
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNewWithLabelFromWidget group label = liftIO $ do
    maybeGroup <- case group of
        Nothing -> return nullPtr
        Just jGroup -> do
            jGroup' <- unsafeManagedPtrCastPtr jGroup
            return jGroup'
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_radio_menu_item_new_with_label_from_widget maybeGroup maybeLabel
    checkUnexpectedReturnNULL "radioMenuItemNewWithLabelFromWidget" result
    result' <- (newObject RadioMenuItem) result
    whenJust group touchManagedPtr
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::new_with_mnemonic
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "\n        group the radio menu item is inside, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the button, with an underscore in front of the\n        mnemonic character"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new_with_mnemonic" gtk_radio_menu_item_new_with_mnemonic :: 
    Ptr (GSList (Ptr RadioMenuItem)) ->     -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"}))
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioMenuItem)

-- | Creates a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' containing a label. The label
-- will be created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores
-- in /@label@/ indicate the mnemonic for the menu item.
radioMenuItemNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    [a]
    -- ^ /@group@/: 
    --         group the radio menu item is inside, or 'P.Nothing'
    -> T.Text
    -- ^ /@label@/: the text of the button, with an underscore in front of the
    --         mnemonic character
    -> m RadioMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNewWithMnemonic group label = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    label' <- textToCString label
    result <- gtk_radio_menu_item_new_with_mnemonic group'' label'
    checkUnexpectedReturnNULL "radioMenuItemNewWithMnemonic" result
    result' <- (newObject RadioMenuItem) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::new_with_mnemonic_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An existing #GtkRadioMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the button, with an underscore in front of the\n        mnemonic character"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_new_with_mnemonic_from_widget" gtk_radio_menu_item_new_with_mnemonic_from_widget :: 
    Ptr RadioMenuItem ->                    -- group : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioMenuItem)

-- | Creates a new GtkRadioMenuItem containing a label. The label will be
-- created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores in label
-- indicate the mnemonic for the menu item.
-- 
-- The new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' is added to the same group as /@group@/.
-- 
-- /Since: 2.4/
radioMenuItemNewWithMnemonicFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    Maybe (a)
    -- ^ /@group@/: An existing t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> Maybe (T.Text)
    -- ^ /@label@/: the text of the button, with an underscore in front of the
    --         mnemonic character
    -> m RadioMenuItem
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
radioMenuItemNewWithMnemonicFromWidget group label = liftIO $ do
    maybeGroup <- case group of
        Nothing -> return nullPtr
        Just jGroup -> do
            jGroup' <- unsafeManagedPtrCastPtr jGroup
            return jGroup'
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_radio_menu_item_new_with_mnemonic_from_widget maybeGroup maybeLabel
    checkUnexpectedReturnNULL "radioMenuItemNewWithMnemonicFromWidget" result
    result' <- (newObject RadioMenuItem) result
    whenJust group touchManagedPtr
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioMenuItem::get_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioMenuItem"
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
--               (TGSList
--                  (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_menu_item_get_group" gtk_radio_menu_item_get_group :: 
    Ptr RadioMenuItem ->                    -- radio_menu_item : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    IO (Ptr (GSList (Ptr RadioMenuItem)))

-- | Returns the group to which the radio menu item belongs, as a t'GI.GLib.Structs.List.List' of
-- t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'. The list belongs to GTK+ and should not be freed.
radioMenuItemGetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a) =>
    a
    -- ^ /@radioMenuItem@/: a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> m [RadioMenuItem]
    -- ^ __Returns:__ the group
    --     of /@radioMenuItem@/
radioMenuItemGetGroup radioMenuItem = liftIO $ do
    radioMenuItem' <- unsafeManagedPtrCastPtr radioMenuItem
    result <- gtk_radio_menu_item_get_group radioMenuItem'
    result' <- unpackGSList result
    result'' <- mapM (newObject RadioMenuItem) result'
    touchManagedPtr radioMenuItem
    return result''

#if defined(ENABLE_OVERLOADING)
data RadioMenuItemGetGroupMethodInfo
instance (signature ~ (m [RadioMenuItem]), MonadIO m, IsRadioMenuItem a) => O.MethodInfo RadioMenuItemGetGroupMethodInfo a signature where
    overloadedMethod = radioMenuItemGetGroup

#endif

-- method RadioMenuItem::join_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group_source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GtkRadioMenuItem whose group we are\n  joining, or %NULL to remove the @radio_menu_item from its current\n  group"
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

foreign import ccall "gtk_radio_menu_item_join_group" gtk_radio_menu_item_join_group :: 
    Ptr RadioMenuItem ->                    -- radio_menu_item : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    Ptr RadioMenuItem ->                    -- group_source : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    IO ()

-- | Joins a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' object to the group of another t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
-- object.
-- 
-- This function should be used by language bindings to avoid the memory
-- manangement of the opaque t'GI.GLib.Structs.SList.SList' of 'GI.Gtk.Objects.RadioMenuItem.radioMenuItemGetGroup'
-- and 'GI.Gtk.Objects.RadioMenuItem.radioMenuItemSetGroup'.
-- 
-- A common way to set up a group of t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' instances is:
-- 
-- >
-- >  GtkRadioMenuItem *last_item = NULL;
-- >
-- >  while ( ...more items to add... )
-- >    {
-- >      GtkRadioMenuItem *radio_item;
-- >
-- >      radio_item = gtk_radio_menu_item_new (...);
-- >
-- >      gtk_radio_menu_item_join_group (radio_item, last_item);
-- >      last_item = radio_item;
-- >    }
-- 
-- 
-- /Since: 3.18/
radioMenuItemJoinGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a, IsRadioMenuItem b) =>
    a
    -- ^ /@radioMenuItem@/: a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> Maybe (b)
    -- ^ /@groupSource@/: a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem' whose group we are
    --   joining, or 'P.Nothing' to remove the /@radioMenuItem@/ from its current
    --   group
    -> m ()
radioMenuItemJoinGroup radioMenuItem groupSource = liftIO $ do
    radioMenuItem' <- unsafeManagedPtrCastPtr radioMenuItem
    maybeGroupSource <- case groupSource of
        Nothing -> return nullPtr
        Just jGroupSource -> do
            jGroupSource' <- unsafeManagedPtrCastPtr jGroupSource
            return jGroupSource'
    gtk_radio_menu_item_join_group radioMenuItem' maybeGroupSource
    touchManagedPtr radioMenuItem
    whenJust groupSource touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data RadioMenuItemJoinGroupMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsRadioMenuItem a, IsRadioMenuItem b) => O.MethodInfo RadioMenuItemJoinGroupMethodInfo a signature where
    overloadedMethod = radioMenuItemJoinGroup

#endif

-- method RadioMenuItem::set_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioMenuItem."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioMenuItem" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new group, or %NULL."
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

foreign import ccall "gtk_radio_menu_item_set_group" gtk_radio_menu_item_set_group :: 
    Ptr RadioMenuItem ->                    -- radio_menu_item : TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"})
    Ptr (GSList (Ptr RadioMenuItem)) ->     -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioMenuItem"}))
    IO ()

-- | Sets the group of a radio menu item, or changes it.
radioMenuItemSetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioMenuItem a, IsRadioMenuItem b) =>
    a
    -- ^ /@radioMenuItem@/: a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'.
    -> [b]
    -- ^ /@group@/: the new group, or 'P.Nothing'.
    -> m ()
radioMenuItemSetGroup radioMenuItem group = liftIO $ do
    radioMenuItem' <- unsafeManagedPtrCastPtr radioMenuItem
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    gtk_radio_menu_item_set_group radioMenuItem' group''
    touchManagedPtr radioMenuItem
    mapM_ touchManagedPtr group
    g_slist_free group''
    return ()

#if defined(ENABLE_OVERLOADING)
data RadioMenuItemSetGroupMethodInfo
instance (signature ~ ([b] -> m ()), MonadIO m, IsRadioMenuItem a, IsRadioMenuItem b) => O.MethodInfo RadioMenuItemSetGroupMethodInfo a signature where
    overloadedMethod = radioMenuItemSetGroup

#endif

