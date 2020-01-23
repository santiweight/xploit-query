{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.MenuToolButton.MenuToolButton' is a t'GI.Gtk.Objects.ToolItem.ToolItem' that contains a button and
-- a small additional button with an arrow. When clicked, the arrow
-- button pops up a dropdown menu.
-- 
-- Use 'GI.Gtk.Objects.MenuToolButton.menuToolButtonNew' to create a new
-- t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'.
-- 
-- = GtkMenuToolButton as GtkBuildable
-- 
-- The GtkMenuToolButton implementation of the GtkBuildable interface
-- supports adding a menu by specifying “menu” as the “type” attribute
-- of a \<child> element.
-- 
-- An example for a UI definition fragment with menus:
-- >
-- ><object class="GtkMenuToolButton">
-- >  <child type="menu">
-- >    <object class="GtkMenu"/>
-- >  </child>
-- ></object>
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuToolButton
    ( 

-- * Exported types
    MenuToolButton(..)                      ,
    IsMenuToolButton                        ,
    toMenuToolButton                        ,
    noMenuToolButton                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuToolButtonMethod             ,
#endif


-- ** getMenu #method:getMenu#

#if defined(ENABLE_OVERLOADING)
    MenuToolButtonGetMenuMethodInfo         ,
#endif
    menuToolButtonGetMenu                   ,


-- ** new #method:new#

    menuToolButtonNew                       ,


-- ** newFromStock #method:newFromStock#

    menuToolButtonNewFromStock              ,


-- ** setArrowTooltipMarkup #method:setArrowTooltipMarkup#

#if defined(ENABLE_OVERLOADING)
    MenuToolButtonSetArrowTooltipMarkupMethodInfo,
#endif
    menuToolButtonSetArrowTooltipMarkup     ,


-- ** setArrowTooltipText #method:setArrowTooltipText#

#if defined(ENABLE_OVERLOADING)
    MenuToolButtonSetArrowTooltipTextMethodInfo,
#endif
    menuToolButtonSetArrowTooltipText       ,


-- ** setMenu #method:setMenu#

#if defined(ENABLE_OVERLOADING)
    MenuToolButtonSetMenuMethodInfo         ,
#endif
    menuToolButtonSetMenu                   ,




 -- * Properties
-- ** menu #attr:menu#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    MenuToolButtonMenuPropertyInfo          ,
#endif
    clearMenuToolButtonMenu                 ,
    constructMenuToolButtonMenu             ,
    getMenuToolButtonMenu                   ,
#if defined(ENABLE_OVERLOADING)
    menuToolButtonMenu                      ,
#endif
    setMenuToolButtonMenu                   ,




 -- * Signals
-- ** showMenu #signal:showMenu#

    C_MenuToolButtonShowMenuCallback        ,
    MenuToolButtonShowMenuCallback          ,
#if defined(ENABLE_OVERLOADING)
    MenuToolButtonShowMenuSignalInfo        ,
#endif
    afterMenuToolButtonShowMenu             ,
    genClosure_MenuToolButtonShowMenu       ,
    mk_MenuToolButtonShowMenuCallback       ,
    noMenuToolButtonShowMenuCallback        ,
    onMenuToolButtonShowMenu                ,
    wrap_MenuToolButtonShowMenuCallback     ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Menu as Gtk.Menu
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolButton as Gtk.ToolButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype MenuToolButton = MenuToolButton (ManagedPtr MenuToolButton)
    deriving (Eq)
foreign import ccall "gtk_menu_tool_button_get_type"
    c_gtk_menu_tool_button_get_type :: IO GType

instance GObject MenuToolButton where
    gobjectType = c_gtk_menu_tool_button_get_type
    

-- | Convert 'MenuToolButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuToolButton where
    toGValue o = do
        gtype <- c_gtk_menu_tool_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuToolButton)
        B.ManagedPtr.newObject MenuToolButton ptr
        
    

-- | Type class for types which can be safely cast to `MenuToolButton`, for instance with `toMenuToolButton`.
class (GObject o, O.IsDescendantOf MenuToolButton o) => IsMenuToolButton o
instance (GObject o, O.IsDescendantOf MenuToolButton o) => IsMenuToolButton o

instance O.HasParentTypes MenuToolButton
type instance O.ParentTypes MenuToolButton = '[Gtk.ToolButton.ToolButton, Gtk.ToolItem.ToolItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `MenuToolButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuToolButton :: (MonadIO m, IsMenuToolButton o) => o -> m MenuToolButton
toMenuToolButton = liftIO . unsafeCastTo MenuToolButton

-- | A convenience alias for `Nothing` :: `Maybe` `MenuToolButton`.
noMenuToolButton :: Maybe MenuToolButton
noMenuToolButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuToolButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuToolButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMenuToolButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveMenuToolButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMenuToolButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMenuToolButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMenuToolButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMenuToolButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMenuToolButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMenuToolButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuToolButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuToolButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMenuToolButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveMenuToolButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMenuToolButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveMenuToolButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveMenuToolButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveMenuToolButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveMenuToolButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveMenuToolButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMenuToolButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMenuToolButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMenuToolButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMenuToolButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMenuToolButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMenuToolButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMenuToolButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMenuToolButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMenuToolButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMenuToolButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMenuToolButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveMenuToolButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMenuToolButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMenuToolButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMenuToolButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMenuToolButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMenuToolButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMenuToolButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMenuToolButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMenuToolButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMenuToolButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMenuToolButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMenuToolButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMenuToolButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMenuToolButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMenuToolButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMenuToolButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMenuToolButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMenuToolButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMenuToolButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMenuToolButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMenuToolButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMenuToolButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMenuToolButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveMenuToolButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuToolButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveMenuToolButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMenuToolButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuToolButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuToolButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMenuToolButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMenuToolButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMenuToolButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMenuToolButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMenuToolButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMenuToolButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMenuToolButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMenuToolButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMenuToolButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMenuToolButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMenuToolButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMenuToolButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMenuToolButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMenuToolButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMenuToolButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMenuToolButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMenuToolButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMenuToolButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMenuToolButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMenuToolButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuToolButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMenuToolButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMenuToolButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMenuToolButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMenuToolButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMenuToolButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMenuToolButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMenuToolButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMenuToolButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMenuToolButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveMenuToolButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMenuToolButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMenuToolButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMenuToolButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMenuToolButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMenuToolButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMenuToolButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMenuToolButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuToolButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuToolButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMenuToolButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMenuToolButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMenuToolButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMenuToolButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMenuToolButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMenuToolButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMenuToolButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveMenuToolButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMenuToolButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMenuToolButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMenuToolButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMenuToolButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMenuToolButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMenuToolButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMenuToolButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMenuToolButtonMethod "rebuildMenu" o = Gtk.ToolItem.ToolItemRebuildMenuMethodInfo
    ResolveMenuToolButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuToolButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuToolButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMenuToolButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMenuToolButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveMenuToolButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMenuToolButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMenuToolButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMenuToolButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMenuToolButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMenuToolButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMenuToolButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMenuToolButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMenuToolButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveMenuToolButtonMethod "retrieveProxyMenuItem" o = Gtk.ToolItem.ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveMenuToolButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuToolButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMenuToolButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMenuToolButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMenuToolButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMenuToolButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMenuToolButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMenuToolButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMenuToolButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMenuToolButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMenuToolButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuToolButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuToolButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMenuToolButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMenuToolButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveMenuToolButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMenuToolButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuToolButtonMethod "toolbarReconfigured" o = Gtk.ToolItem.ToolItemToolbarReconfiguredMethodInfo
    ResolveMenuToolButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMenuToolButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMenuToolButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMenuToolButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMenuToolButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMenuToolButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuToolButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMenuToolButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveMenuToolButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMenuToolButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuToolButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMenuToolButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMenuToolButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveMenuToolButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveMenuToolButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMenuToolButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMenuToolButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMenuToolButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMenuToolButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMenuToolButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMenuToolButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMenuToolButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveMenuToolButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMenuToolButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMenuToolButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveMenuToolButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMenuToolButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMenuToolButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveMenuToolButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMenuToolButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMenuToolButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMenuToolButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuToolButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMenuToolButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMenuToolButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveMenuToolButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMenuToolButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMenuToolButtonMethod "getEllipsizeMode" o = Gtk.ToolItem.ToolItemGetEllipsizeModeMethodInfo
    ResolveMenuToolButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMenuToolButtonMethod "getExpand" o = Gtk.ToolItem.ToolItemGetExpandMethodInfo
    ResolveMenuToolButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveMenuToolButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveMenuToolButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveMenuToolButtonMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveMenuToolButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveMenuToolButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMenuToolButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMenuToolButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMenuToolButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMenuToolButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMenuToolButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMenuToolButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMenuToolButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMenuToolButtonMethod "getHomogeneous" o = Gtk.ToolItem.ToolItemGetHomogeneousMethodInfo
    ResolveMenuToolButtonMethod "getIconName" o = Gtk.ToolButton.ToolButtonGetIconNameMethodInfo
    ResolveMenuToolButtonMethod "getIconSize" o = Gtk.ToolItem.ToolItemGetIconSizeMethodInfo
    ResolveMenuToolButtonMethod "getIconWidget" o = Gtk.ToolButton.ToolButtonGetIconWidgetMethodInfo
    ResolveMenuToolButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMenuToolButtonMethod "getIsImportant" o = Gtk.ToolItem.ToolItemGetIsImportantMethodInfo
    ResolveMenuToolButtonMethod "getLabel" o = Gtk.ToolButton.ToolButtonGetLabelMethodInfo
    ResolveMenuToolButtonMethod "getLabelWidget" o = Gtk.ToolButton.ToolButtonGetLabelWidgetMethodInfo
    ResolveMenuToolButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMenuToolButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMenuToolButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMenuToolButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMenuToolButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMenuToolButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMenuToolButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMenuToolButtonMethod "getMenu" o = MenuToolButtonGetMenuMethodInfo
    ResolveMenuToolButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMenuToolButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMenuToolButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMenuToolButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMenuToolButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveMenuToolButtonMethod "getOrientation" o = Gtk.ToolItem.ToolItemGetOrientationMethodInfo
    ResolveMenuToolButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMenuToolButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMenuToolButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMenuToolButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMenuToolButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveMenuToolButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMenuToolButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMenuToolButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMenuToolButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMenuToolButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMenuToolButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMenuToolButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMenuToolButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuToolButtonMethod "getProxyMenuItem" o = Gtk.ToolItem.ToolItemGetProxyMenuItemMethodInfo
    ResolveMenuToolButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuToolButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMenuToolButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMenuToolButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveMenuToolButtonMethod "getReliefStyle" o = Gtk.ToolItem.ToolItemGetReliefStyleMethodInfo
    ResolveMenuToolButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMenuToolButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMenuToolButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveMenuToolButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMenuToolButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMenuToolButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveMenuToolButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMenuToolButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMenuToolButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMenuToolButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMenuToolButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMenuToolButtonMethod "getStockId" o = Gtk.ToolButton.ToolButtonGetStockIdMethodInfo
    ResolveMenuToolButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMenuToolButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMenuToolButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMenuToolButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMenuToolButtonMethod "getTextAlignment" o = Gtk.ToolItem.ToolItemGetTextAlignmentMethodInfo
    ResolveMenuToolButtonMethod "getTextOrientation" o = Gtk.ToolItem.ToolItemGetTextOrientationMethodInfo
    ResolveMenuToolButtonMethod "getTextSizeGroup" o = Gtk.ToolItem.ToolItemGetTextSizeGroupMethodInfo
    ResolveMenuToolButtonMethod "getToolbarStyle" o = Gtk.ToolItem.ToolItemGetToolbarStyleMethodInfo
    ResolveMenuToolButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMenuToolButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMenuToolButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMenuToolButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMenuToolButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveMenuToolButtonMethod "getUseDragWindow" o = Gtk.ToolItem.ToolItemGetUseDragWindowMethodInfo
    ResolveMenuToolButtonMethod "getUseUnderline" o = Gtk.ToolButton.ToolButtonGetUseUnderlineMethodInfo
    ResolveMenuToolButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMenuToolButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMenuToolButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMenuToolButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMenuToolButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMenuToolButtonMethod "getVisibleHorizontal" o = Gtk.ToolItem.ToolItemGetVisibleHorizontalMethodInfo
    ResolveMenuToolButtonMethod "getVisibleVertical" o = Gtk.ToolItem.ToolItemGetVisibleVerticalMethodInfo
    ResolveMenuToolButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMenuToolButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMenuToolButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMenuToolButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveMenuToolButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveMenuToolButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMenuToolButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMenuToolButtonMethod "setArrowTooltipMarkup" o = MenuToolButtonSetArrowTooltipMarkupMethodInfo
    ResolveMenuToolButtonMethod "setArrowTooltipText" o = MenuToolButtonSetArrowTooltipTextMethodInfo
    ResolveMenuToolButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveMenuToolButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMenuToolButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMenuToolButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMenuToolButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMenuToolButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMenuToolButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMenuToolButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuToolButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuToolButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveMenuToolButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMenuToolButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMenuToolButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveMenuToolButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMenuToolButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMenuToolButtonMethod "setExpand" o = Gtk.ToolItem.ToolItemSetExpandMethodInfo
    ResolveMenuToolButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveMenuToolButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveMenuToolButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveMenuToolButtonMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveMenuToolButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveMenuToolButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMenuToolButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMenuToolButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMenuToolButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMenuToolButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMenuToolButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMenuToolButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMenuToolButtonMethod "setHomogeneous" o = Gtk.ToolItem.ToolItemSetHomogeneousMethodInfo
    ResolveMenuToolButtonMethod "setIconName" o = Gtk.ToolButton.ToolButtonSetIconNameMethodInfo
    ResolveMenuToolButtonMethod "setIconWidget" o = Gtk.ToolButton.ToolButtonSetIconWidgetMethodInfo
    ResolveMenuToolButtonMethod "setIsImportant" o = Gtk.ToolItem.ToolItemSetIsImportantMethodInfo
    ResolveMenuToolButtonMethod "setLabel" o = Gtk.ToolButton.ToolButtonSetLabelMethodInfo
    ResolveMenuToolButtonMethod "setLabelWidget" o = Gtk.ToolButton.ToolButtonSetLabelWidgetMethodInfo
    ResolveMenuToolButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMenuToolButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMenuToolButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMenuToolButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMenuToolButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMenuToolButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMenuToolButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMenuToolButtonMethod "setMenu" o = MenuToolButtonSetMenuMethodInfo
    ResolveMenuToolButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMenuToolButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMenuToolButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveMenuToolButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMenuToolButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMenuToolButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuToolButtonMethod "setProxyMenuItem" o = Gtk.ToolItem.ToolItemSetProxyMenuItemMethodInfo
    ResolveMenuToolButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMenuToolButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveMenuToolButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMenuToolButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMenuToolButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveMenuToolButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveMenuToolButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMenuToolButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMenuToolButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMenuToolButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMenuToolButtonMethod "setStockId" o = Gtk.ToolButton.ToolButtonSetStockIdMethodInfo
    ResolveMenuToolButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMenuToolButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMenuToolButtonMethod "setTooltipMarkup" o = Gtk.ToolItem.ToolItemSetTooltipMarkupMethodInfo
    ResolveMenuToolButtonMethod "setTooltipText" o = Gtk.ToolItem.ToolItemSetTooltipTextMethodInfo
    ResolveMenuToolButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMenuToolButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveMenuToolButtonMethod "setUseDragWindow" o = Gtk.ToolItem.ToolItemSetUseDragWindowMethodInfo
    ResolveMenuToolButtonMethod "setUseUnderline" o = Gtk.ToolButton.ToolButtonSetUseUnderlineMethodInfo
    ResolveMenuToolButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMenuToolButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMenuToolButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMenuToolButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMenuToolButtonMethod "setVisibleHorizontal" o = Gtk.ToolItem.ToolItemSetVisibleHorizontalMethodInfo
    ResolveMenuToolButtonMethod "setVisibleVertical" o = Gtk.ToolItem.ToolItemSetVisibleVerticalMethodInfo
    ResolveMenuToolButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMenuToolButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMenuToolButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuToolButtonMethod t MenuToolButton, O.MethodInfo info MenuToolButton p) => OL.IsLabel t (MenuToolButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal MenuToolButton::show-menu
-- | The [showMenu](#signal:showMenu) signal is emitted before the menu is shown.
-- 
-- It can be used to populate the menu on demand, using
-- 'GI.Gtk.Objects.MenuToolButton.menuToolButtonSetMenu'.
-- 
-- Note that even if you populate the menu dynamically in this way,
-- you must set an empty menu on the t'GI.Gtk.Objects.MenuToolButton.MenuToolButton' beforehand,
-- since the arrow is made insensitive if the menu is not set.
type MenuToolButtonShowMenuCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `MenuToolButtonShowMenuCallback`@.
noMenuToolButtonShowMenuCallback :: Maybe MenuToolButtonShowMenuCallback
noMenuToolButtonShowMenuCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_MenuToolButtonShowMenuCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_MenuToolButtonShowMenuCallback`.
foreign import ccall "wrapper"
    mk_MenuToolButtonShowMenuCallback :: C_MenuToolButtonShowMenuCallback -> IO (FunPtr C_MenuToolButtonShowMenuCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_MenuToolButtonShowMenu :: MonadIO m => MenuToolButtonShowMenuCallback -> m (GClosure C_MenuToolButtonShowMenuCallback)
genClosure_MenuToolButtonShowMenu cb = liftIO $ do
    let cb' = wrap_MenuToolButtonShowMenuCallback cb
    mk_MenuToolButtonShowMenuCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `MenuToolButtonShowMenuCallback` into a `C_MenuToolButtonShowMenuCallback`.
wrap_MenuToolButtonShowMenuCallback ::
    MenuToolButtonShowMenuCallback ->
    C_MenuToolButtonShowMenuCallback
wrap_MenuToolButtonShowMenuCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [showMenu](#signal:showMenu) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' menuToolButton #showMenu callback
-- @
-- 
-- 
onMenuToolButtonShowMenu :: (IsMenuToolButton a, MonadIO m) => a -> MenuToolButtonShowMenuCallback -> m SignalHandlerId
onMenuToolButtonShowMenu obj cb = liftIO $ do
    let cb' = wrap_MenuToolButtonShowMenuCallback cb
    cb'' <- mk_MenuToolButtonShowMenuCallback cb'
    connectSignalFunPtr obj "show-menu" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [showMenu](#signal:showMenu) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' menuToolButton #showMenu callback
-- @
-- 
-- 
afterMenuToolButtonShowMenu :: (IsMenuToolButton a, MonadIO m) => a -> MenuToolButtonShowMenuCallback -> m SignalHandlerId
afterMenuToolButtonShowMenu obj cb = liftIO $ do
    let cb' = wrap_MenuToolButtonShowMenuCallback cb
    cb'' <- mk_MenuToolButtonShowMenuCallback cb'
    connectSignalFunPtr obj "show-menu" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data MenuToolButtonShowMenuSignalInfo
instance SignalInfo MenuToolButtonShowMenuSignalInfo where
    type HaskellCallbackType MenuToolButtonShowMenuSignalInfo = MenuToolButtonShowMenuCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_MenuToolButtonShowMenuCallback cb
        cb'' <- mk_MenuToolButtonShowMenuCallback cb'
        connectSignalFunPtr obj "show-menu" cb'' connectMode detail

#endif

-- VVV Prop "menu"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Menu"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@menu@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuToolButton #menu
-- @
getMenuToolButtonMenu :: (MonadIO m, IsMenuToolButton o) => o -> m (Maybe Gtk.Menu.Menu)
getMenuToolButtonMenu obj = liftIO $ B.Properties.getObjectPropertyObject obj "menu" Gtk.Menu.Menu

-- | Set the value of the “@menu@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuToolButton [ #menu 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuToolButtonMenu :: (MonadIO m, IsMenuToolButton o, Gtk.Menu.IsMenu a) => o -> a -> m ()
setMenuToolButtonMenu obj val = liftIO $ B.Properties.setObjectPropertyObject obj "menu" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@menu@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuToolButtonMenu :: (IsMenuToolButton o, Gtk.Menu.IsMenu a) => a -> IO (GValueConstruct o)
constructMenuToolButtonMenu val = B.Properties.constructObjectPropertyObject "menu" (Just val)

-- | Set the value of the “@menu@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #menu
-- @
clearMenuToolButtonMenu :: (MonadIO m, IsMenuToolButton o) => o -> m ()
clearMenuToolButtonMenu obj = liftIO $ B.Properties.setObjectPropertyObject obj "menu" (Nothing :: Maybe Gtk.Menu.Menu)

#if defined(ENABLE_OVERLOADING)
data MenuToolButtonMenuPropertyInfo
instance AttrInfo MenuToolButtonMenuPropertyInfo where
    type AttrAllowedOps MenuToolButtonMenuPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint MenuToolButtonMenuPropertyInfo = IsMenuToolButton
    type AttrSetTypeConstraint MenuToolButtonMenuPropertyInfo = Gtk.Menu.IsMenu
    type AttrTransferTypeConstraint MenuToolButtonMenuPropertyInfo = Gtk.Menu.IsMenu
    type AttrTransferType MenuToolButtonMenuPropertyInfo = Gtk.Menu.Menu
    type AttrGetType MenuToolButtonMenuPropertyInfo = (Maybe Gtk.Menu.Menu)
    type AttrLabel MenuToolButtonMenuPropertyInfo = "menu"
    type AttrOrigin MenuToolButtonMenuPropertyInfo = MenuToolButton
    attrGet = getMenuToolButtonMenu
    attrSet = setMenuToolButtonMenu
    attrTransfer _ v = do
        unsafeCastTo Gtk.Menu.Menu v
    attrConstruct = constructMenuToolButtonMenu
    attrClear = clearMenuToolButtonMenu
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuToolButton
type instance O.AttributeList MenuToolButton = MenuToolButtonAttributeList
type MenuToolButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("iconName", Gtk.ToolButton.ToolButtonIconNamePropertyInfo), '("iconWidget", Gtk.ToolButton.ToolButtonIconWidgetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", Gtk.ToolItem.ToolItemIsImportantPropertyInfo), '("label", Gtk.ToolButton.ToolButtonLabelPropertyInfo), '("labelWidget", Gtk.ToolButton.ToolButtonLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("menu", MenuToolButtonMenuPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("stockId", Gtk.ToolButton.ToolButtonStockIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.ToolButton.ToolButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", Gtk.ToolItem.ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", Gtk.ToolItem.ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
menuToolButtonMenu :: AttrLabelProxy "menu"
menuToolButtonMenu = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuToolButton = MenuToolButtonSignalList
type MenuToolButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.ToolButton.ToolButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", Gtk.ToolItem.ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("showMenu", MenuToolButtonShowMenuSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toolbarReconfigured", Gtk.ToolItem.ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method MenuToolButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "icon_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a widget that will be used as icon widget, or %NULL"
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
--                 { rawDocText = Just "a string that will be used as label, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "MenuToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_tool_button_new" gtk_menu_tool_button_new :: 
    Ptr Gtk.Widget.Widget ->                -- icon_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr MenuToolButton)

-- | Creates a new t'GI.Gtk.Objects.MenuToolButton.MenuToolButton' using /@iconWidget@/ as icon and
-- /@label@/ as label.
-- 
-- /Since: 2.6/
menuToolButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    Maybe (a)
    -- ^ /@iconWidget@/: a widget that will be used as icon widget, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@label@/: a string that will be used as label, or 'P.Nothing'
    -> m MenuToolButton
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
menuToolButtonNew iconWidget label = liftIO $ do
    maybeIconWidget <- case iconWidget of
        Nothing -> return nullPtr
        Just jIconWidget -> do
            jIconWidget' <- unsafeManagedPtrCastPtr jIconWidget
            return jIconWidget'
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_menu_tool_button_new maybeIconWidget maybeLabel
    checkUnexpectedReturnNULL "menuToolButtonNew" result
    result' <- (newObject MenuToolButton) result
    whenJust iconWidget touchManagedPtr
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MenuToolButton::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of a stock item"
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
--               (TInterface Name { namespace = "Gtk" , name = "MenuToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_tool_button_new_from_stock" gtk_menu_tool_button_new_from_stock :: 
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr MenuToolButton)

{-# DEPRECATED menuToolButtonNewFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.MenuToolButton.menuToolButtonNew' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'.
-- The new t'GI.Gtk.Objects.MenuToolButton.MenuToolButton' will contain an icon and label from
-- the stock item indicated by /@stockId@/.
-- 
-- /Since: 2.6/
menuToolButtonNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@stockId@/: the name of a stock item
    -> m MenuToolButton
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
menuToolButtonNewFromStock stockId = liftIO $ do
    stockId' <- textToCString stockId
    result <- gtk_menu_tool_button_new_from_stock stockId'
    checkUnexpectedReturnNULL "menuToolButtonNewFromStock" result
    result' <- (newObject MenuToolButton) result
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MenuToolButton::get_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuToolButton"
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

foreign import ccall "gtk_menu_tool_button_get_menu" gtk_menu_tool_button_get_menu :: 
    Ptr MenuToolButton ->                   -- button : TInterface (Name {namespace = "Gtk", name = "MenuToolButton"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the t'GI.Gtk.Objects.Menu.Menu' associated with t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'.
-- 
-- /Since: 2.6/
menuToolButtonGetMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Menu.Menu' associated
    --     with t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
menuToolButtonGetMenu button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_menu_tool_button_get_menu button'
    checkUnexpectedReturnNULL "menuToolButtonGetMenu" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuToolButtonGetMenuMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsMenuToolButton a) => O.MethodInfo MenuToolButtonGetMenuMethodInfo a signature where
    overloadedMethod = menuToolButtonGetMenu

#endif

-- method MenuToolButton::set_arrow_tooltip_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuToolButton"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "markup"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "markup text to be used as tooltip text for button\8217s arrow button"
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

foreign import ccall "gtk_menu_tool_button_set_arrow_tooltip_markup" gtk_menu_tool_button_set_arrow_tooltip_markup :: 
    Ptr MenuToolButton ->                   -- button : TInterface (Name {namespace = "Gtk", name = "MenuToolButton"})
    CString ->                              -- markup : TBasicType TUTF8
    IO ()

-- | Sets the tooltip markup text to be used as tooltip for the arrow button
-- which pops up the menu.  See 'GI.Gtk.Objects.ToolItem.toolItemSetTooltipText' for setting
-- a tooltip on the whole t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'.
-- 
-- /Since: 2.12/
menuToolButtonSetArrowTooltipMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
    -> T.Text
    -- ^ /@markup@/: markup text to be used as tooltip text for button’s arrow button
    -> m ()
menuToolButtonSetArrowTooltipMarkup button markup = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    markup' <- textToCString markup
    gtk_menu_tool_button_set_arrow_tooltip_markup button' markup'
    touchManagedPtr button
    freeMem markup'
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuToolButtonSetArrowTooltipMarkupMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsMenuToolButton a) => O.MethodInfo MenuToolButtonSetArrowTooltipMarkupMethodInfo a signature where
    overloadedMethod = menuToolButtonSetArrowTooltipMarkup

#endif

-- method MenuToolButton::set_arrow_tooltip_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuToolButton"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "text to be used as tooltip text for button\8217s arrow button"
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

foreign import ccall "gtk_menu_tool_button_set_arrow_tooltip_text" gtk_menu_tool_button_set_arrow_tooltip_text :: 
    Ptr MenuToolButton ->                   -- button : TInterface (Name {namespace = "Gtk", name = "MenuToolButton"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

-- | Sets the tooltip text to be used as tooltip for the arrow button which
-- pops up the menu.  See 'GI.Gtk.Objects.ToolItem.toolItemSetTooltipText' for setting a tooltip
-- on the whole t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'.
-- 
-- /Since: 2.12/
menuToolButtonSetArrowTooltipText ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
    -> T.Text
    -- ^ /@text@/: text to be used as tooltip text for button’s arrow button
    -> m ()
menuToolButtonSetArrowTooltipText button text = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    text' <- textToCString text
    gtk_menu_tool_button_set_arrow_tooltip_text button' text'
    touchManagedPtr button
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuToolButtonSetArrowTooltipTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsMenuToolButton a) => O.MethodInfo MenuToolButtonSetArrowTooltipTextMethodInfo a signature where
    overloadedMethod = menuToolButtonSetArrowTooltipText

#endif

-- method MenuToolButton::set_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuToolButton"
--                 , sinceVersion = Nothing
--                 }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkMenu associated with #GtkMenuToolButton"
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

foreign import ccall "gtk_menu_tool_button_set_menu" gtk_menu_tool_button_set_menu :: 
    Ptr MenuToolButton ->                   -- button : TInterface (Name {namespace = "Gtk", name = "MenuToolButton"})
    Ptr Gtk.Widget.Widget ->                -- menu : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Menu.Menu' that is popped up when the user clicks on the arrow.
-- If /@menu@/ is NULL, the arrow button becomes insensitive.
-- 
-- /Since: 2.6/
menuToolButtonSetMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuToolButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
    -> b
    -- ^ /@menu@/: the t'GI.Gtk.Objects.Menu.Menu' associated with t'GI.Gtk.Objects.MenuToolButton.MenuToolButton'
    -> m ()
menuToolButtonSetMenu button menu = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    menu' <- unsafeManagedPtrCastPtr menu
    gtk_menu_tool_button_set_menu button' menu'
    touchManagedPtr button
    touchManagedPtr menu
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuToolButtonSetMenuMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsMenuToolButton a, Gtk.Widget.IsWidget b) => O.MethodInfo MenuToolButtonSetMenuMethodInfo a signature where
    overloadedMethod = menuToolButtonSetMenu

#endif

