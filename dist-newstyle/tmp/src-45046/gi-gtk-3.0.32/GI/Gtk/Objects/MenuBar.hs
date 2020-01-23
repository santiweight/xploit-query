{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.MenuBar.MenuBar' is a subclass of t'GI.Gtk.Objects.MenuShell.MenuShell' which contains one or
-- more @/GtkMenuItems/@. The result is a standard menu bar which can hold
-- many menu items.
-- 
-- = CSS nodes
-- 
-- GtkMenuBar has a single CSS node with name menubar.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.MenuBar
    ( 

-- * Exported types
    MenuBar(..)                             ,
    IsMenuBar                               ,
    toMenuBar                               ,
    noMenuBar                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMenuBarMethod                    ,
#endif


-- ** getChildPackDirection #method:getChildPackDirection#

#if defined(ENABLE_OVERLOADING)
    MenuBarGetChildPackDirectionMethodInfo  ,
#endif
    menuBarGetChildPackDirection            ,


-- ** getPackDirection #method:getPackDirection#

#if defined(ENABLE_OVERLOADING)
    MenuBarGetPackDirectionMethodInfo       ,
#endif
    menuBarGetPackDirection                 ,


-- ** new #method:new#

    menuBarNew                              ,


-- ** newFromModel #method:newFromModel#

    menuBarNewFromModel                     ,


-- ** setChildPackDirection #method:setChildPackDirection#

#if defined(ENABLE_OVERLOADING)
    MenuBarSetChildPackDirectionMethodInfo  ,
#endif
    menuBarSetChildPackDirection            ,


-- ** setPackDirection #method:setPackDirection#

#if defined(ENABLE_OVERLOADING)
    MenuBarSetPackDirectionMethodInfo       ,
#endif
    menuBarSetPackDirection                 ,




 -- * Properties
-- ** childPackDirection #attr:childPackDirection#
-- | The child pack direction of the menubar. It determines how
-- the widgets contained in child menuitems are arranged.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    MenuBarChildPackDirectionPropertyInfo   ,
#endif
    constructMenuBarChildPackDirection      ,
    getMenuBarChildPackDirection            ,
#if defined(ENABLE_OVERLOADING)
    menuBarChildPackDirection               ,
#endif
    setMenuBarChildPackDirection            ,


-- ** packDirection #attr:packDirection#
-- | The pack direction of the menubar. It determines how
-- menuitems are arranged in the menubar.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    MenuBarPackDirectionPropertyInfo        ,
#endif
    constructMenuBarPackDirection           ,
    getMenuBarPackDirection                 ,
#if defined(ENABLE_OVERLOADING)
    menuBarPackDirection                    ,
#endif
    setMenuBarPackDirection                 ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuShell as Gtk.MenuShell
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype MenuBar = MenuBar (ManagedPtr MenuBar)
    deriving (Eq)
foreign import ccall "gtk_menu_bar_get_type"
    c_gtk_menu_bar_get_type :: IO GType

instance GObject MenuBar where
    gobjectType = c_gtk_menu_bar_get_type
    

-- | Convert 'MenuBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MenuBar where
    toGValue o = do
        gtype <- c_gtk_menu_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MenuBar)
        B.ManagedPtr.newObject MenuBar ptr
        
    

-- | Type class for types which can be safely cast to `MenuBar`, for instance with `toMenuBar`.
class (GObject o, O.IsDescendantOf MenuBar o) => IsMenuBar o
instance (GObject o, O.IsDescendantOf MenuBar o) => IsMenuBar o

instance O.HasParentTypes MenuBar
type instance O.ParentTypes MenuBar = '[Gtk.MenuShell.MenuShell, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `MenuBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMenuBar :: (MonadIO m, IsMenuBar o) => o -> m MenuBar
toMenuBar = liftIO . unsafeCastTo MenuBar

-- | A convenience alias for `Nothing` :: `Maybe` `MenuBar`.
noMenuBar :: Maybe MenuBar
noMenuBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMenuBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveMenuBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMenuBarMethod "activateItem" o = Gtk.MenuShell.MenuShellActivateItemMethodInfo
    ResolveMenuBarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveMenuBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMenuBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMenuBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMenuBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMenuBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMenuBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMenuBarMethod "append" o = Gtk.MenuShell.MenuShellAppendMethodInfo
    ResolveMenuBarMethod "bindModel" o = Gtk.MenuShell.MenuShellBindModelMethodInfo
    ResolveMenuBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMenuBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMenuBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMenuBarMethod "cancel" o = Gtk.MenuShell.MenuShellCancelMethodInfo
    ResolveMenuBarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveMenuBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMenuBarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveMenuBarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveMenuBarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveMenuBarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveMenuBarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveMenuBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMenuBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMenuBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMenuBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMenuBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMenuBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMenuBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMenuBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMenuBarMethod "deactivate" o = Gtk.MenuShell.MenuShellDeactivateMethodInfo
    ResolveMenuBarMethod "deselect" o = Gtk.MenuShell.MenuShellDeselectMethodInfo
    ResolveMenuBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMenuBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMenuBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMenuBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMenuBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMenuBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMenuBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMenuBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMenuBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMenuBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMenuBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMenuBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMenuBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMenuBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMenuBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMenuBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMenuBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMenuBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMenuBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMenuBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMenuBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMenuBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMenuBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMenuBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMenuBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMenuBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMenuBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMenuBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMenuBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMenuBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMenuBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMenuBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMenuBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMenuBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMenuBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMenuBarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveMenuBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMenuBarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveMenuBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMenuBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMenuBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMenuBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMenuBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMenuBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMenuBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMenuBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMenuBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMenuBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMenuBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMenuBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMenuBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMenuBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMenuBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMenuBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMenuBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMenuBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMenuBarMethod "insert" o = Gtk.MenuShell.MenuShellInsertMethodInfo
    ResolveMenuBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMenuBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMenuBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMenuBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMenuBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMenuBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMenuBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMenuBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMenuBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMenuBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMenuBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMenuBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMenuBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMenuBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMenuBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMenuBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveMenuBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMenuBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMenuBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMenuBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMenuBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMenuBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMenuBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMenuBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMenuBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMenuBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMenuBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMenuBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMenuBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMenuBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMenuBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMenuBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMenuBarMethod "prepend" o = Gtk.MenuShell.MenuShellPrependMethodInfo
    ResolveMenuBarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveMenuBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMenuBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMenuBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMenuBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMenuBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMenuBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMenuBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMenuBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMenuBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMenuBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMenuBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMenuBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMenuBarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveMenuBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMenuBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMenuBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMenuBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMenuBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMenuBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMenuBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMenuBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMenuBarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveMenuBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMenuBarMethod "selectFirst" o = Gtk.MenuShell.MenuShellSelectFirstMethodInfo
    ResolveMenuBarMethod "selectItem" o = Gtk.MenuShell.MenuShellSelectItemMethodInfo
    ResolveMenuBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMenuBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMenuBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMenuBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMenuBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMenuBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMenuBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMenuBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMenuBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMenuBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMenuBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMenuBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMenuBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMenuBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMenuBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMenuBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMenuBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMenuBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMenuBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMenuBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMenuBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMenuBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMenuBarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveMenuBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMenuBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMenuBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMenuBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMenuBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMenuBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMenuBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMenuBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMenuBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMenuBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMenuBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMenuBarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveMenuBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMenuBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMenuBarMethod "getChildPackDirection" o = MenuBarGetChildPackDirectionMethodInfo
    ResolveMenuBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMenuBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMenuBarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveMenuBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMenuBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMenuBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMenuBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMenuBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMenuBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMenuBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveMenuBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMenuBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMenuBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMenuBarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveMenuBarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveMenuBarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveMenuBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveMenuBarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveMenuBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMenuBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMenuBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMenuBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMenuBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMenuBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMenuBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMenuBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMenuBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMenuBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMenuBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMenuBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMenuBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMenuBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMenuBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMenuBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMenuBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMenuBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMenuBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMenuBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMenuBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveMenuBarMethod "getPackDirection" o = MenuBarGetPackDirectionMethodInfo
    ResolveMenuBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMenuBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMenuBarMethod "getParentShell" o = Gtk.MenuShell.MenuShellGetParentShellMethodInfo
    ResolveMenuBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMenuBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMenuBarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveMenuBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMenuBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMenuBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMenuBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMenuBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMenuBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMenuBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMenuBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMenuBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMenuBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMenuBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMenuBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMenuBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMenuBarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveMenuBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMenuBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMenuBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveMenuBarMethod "getSelectedItem" o = Gtk.MenuShell.MenuShellGetSelectedItemMethodInfo
    ResolveMenuBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMenuBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMenuBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMenuBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMenuBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMenuBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMenuBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMenuBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMenuBarMethod "getTakeFocus" o = Gtk.MenuShell.MenuShellGetTakeFocusMethodInfo
    ResolveMenuBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMenuBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMenuBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMenuBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMenuBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMenuBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMenuBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMenuBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMenuBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMenuBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMenuBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMenuBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMenuBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMenuBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMenuBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMenuBarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveMenuBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMenuBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMenuBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMenuBarMethod "setChildPackDirection" o = MenuBarSetChildPackDirectionMethodInfo
    ResolveMenuBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMenuBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMenuBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMenuBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMenuBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMenuBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMenuBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMenuBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveMenuBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMenuBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMenuBarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveMenuBarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveMenuBarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveMenuBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveMenuBarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveMenuBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMenuBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMenuBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMenuBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMenuBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMenuBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMenuBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMenuBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMenuBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMenuBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMenuBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMenuBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMenuBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMenuBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMenuBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMenuBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMenuBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveMenuBarMethod "setPackDirection" o = MenuBarSetPackDirectionMethodInfo
    ResolveMenuBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMenuBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMenuBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMenuBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMenuBarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveMenuBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMenuBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMenuBarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveMenuBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMenuBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMenuBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMenuBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMenuBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMenuBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMenuBarMethod "setTakeFocus" o = Gtk.MenuShell.MenuShellSetTakeFocusMethodInfo
    ResolveMenuBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveMenuBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveMenuBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMenuBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMenuBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMenuBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMenuBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMenuBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMenuBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMenuBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMenuBarMethod t MenuBar, O.MethodInfo info MenuBar p) => OL.IsLabel t (MenuBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "child-pack-direction"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PackDirection"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@child-pack-direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuBar #childPackDirection
-- @
getMenuBarChildPackDirection :: (MonadIO m, IsMenuBar o) => o -> m Gtk.Enums.PackDirection
getMenuBarChildPackDirection obj = liftIO $ B.Properties.getObjectPropertyEnum obj "child-pack-direction"

-- | Set the value of the “@child-pack-direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuBar [ #childPackDirection 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuBarChildPackDirection :: (MonadIO m, IsMenuBar o) => o -> Gtk.Enums.PackDirection -> m ()
setMenuBarChildPackDirection obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "child-pack-direction" val

-- | Construct a `GValueConstruct` with valid value for the “@child-pack-direction@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuBarChildPackDirection :: (IsMenuBar o) => Gtk.Enums.PackDirection -> IO (GValueConstruct o)
constructMenuBarChildPackDirection val = B.Properties.constructObjectPropertyEnum "child-pack-direction" val

#if defined(ENABLE_OVERLOADING)
data MenuBarChildPackDirectionPropertyInfo
instance AttrInfo MenuBarChildPackDirectionPropertyInfo where
    type AttrAllowedOps MenuBarChildPackDirectionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MenuBarChildPackDirectionPropertyInfo = IsMenuBar
    type AttrSetTypeConstraint MenuBarChildPackDirectionPropertyInfo = (~) Gtk.Enums.PackDirection
    type AttrTransferTypeConstraint MenuBarChildPackDirectionPropertyInfo = (~) Gtk.Enums.PackDirection
    type AttrTransferType MenuBarChildPackDirectionPropertyInfo = Gtk.Enums.PackDirection
    type AttrGetType MenuBarChildPackDirectionPropertyInfo = Gtk.Enums.PackDirection
    type AttrLabel MenuBarChildPackDirectionPropertyInfo = "child-pack-direction"
    type AttrOrigin MenuBarChildPackDirectionPropertyInfo = MenuBar
    attrGet = getMenuBarChildPackDirection
    attrSet = setMenuBarChildPackDirection
    attrTransfer _ v = do
        return v
    attrConstruct = constructMenuBarChildPackDirection
    attrClear = undefined
#endif

-- VVV Prop "pack-direction"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PackDirection"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pack-direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' menuBar #packDirection
-- @
getMenuBarPackDirection :: (MonadIO m, IsMenuBar o) => o -> m Gtk.Enums.PackDirection
getMenuBarPackDirection obj = liftIO $ B.Properties.getObjectPropertyEnum obj "pack-direction"

-- | Set the value of the “@pack-direction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' menuBar [ #packDirection 'Data.GI.Base.Attributes.:=' value ]
-- @
setMenuBarPackDirection :: (MonadIO m, IsMenuBar o) => o -> Gtk.Enums.PackDirection -> m ()
setMenuBarPackDirection obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "pack-direction" val

-- | Construct a `GValueConstruct` with valid value for the “@pack-direction@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMenuBarPackDirection :: (IsMenuBar o) => Gtk.Enums.PackDirection -> IO (GValueConstruct o)
constructMenuBarPackDirection val = B.Properties.constructObjectPropertyEnum "pack-direction" val

#if defined(ENABLE_OVERLOADING)
data MenuBarPackDirectionPropertyInfo
instance AttrInfo MenuBarPackDirectionPropertyInfo where
    type AttrAllowedOps MenuBarPackDirectionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MenuBarPackDirectionPropertyInfo = IsMenuBar
    type AttrSetTypeConstraint MenuBarPackDirectionPropertyInfo = (~) Gtk.Enums.PackDirection
    type AttrTransferTypeConstraint MenuBarPackDirectionPropertyInfo = (~) Gtk.Enums.PackDirection
    type AttrTransferType MenuBarPackDirectionPropertyInfo = Gtk.Enums.PackDirection
    type AttrGetType MenuBarPackDirectionPropertyInfo = Gtk.Enums.PackDirection
    type AttrLabel MenuBarPackDirectionPropertyInfo = "pack-direction"
    type AttrOrigin MenuBarPackDirectionPropertyInfo = MenuBar
    attrGet = getMenuBarPackDirection
    attrSet = setMenuBarPackDirection
    attrTransfer _ v = do
        return v
    attrConstruct = constructMenuBarPackDirection
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MenuBar
type instance O.AttributeList MenuBar = MenuBarAttributeList
type MenuBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("childPackDirection", MenuBarChildPackDirectionPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("packDirection", MenuBarPackDirectionPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("takeFocus", Gtk.MenuShell.MenuShellTakeFocusPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
menuBarChildPackDirection :: AttrLabelProxy "childPackDirection"
menuBarChildPackDirection = AttrLabelProxy

menuBarPackDirection :: AttrLabelProxy "packDirection"
menuBarPackDirection = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MenuBar = MenuBarSignalList
type MenuBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateCurrent", Gtk.MenuShell.MenuShellActivateCurrentSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancel", Gtk.MenuShell.MenuShellCancelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("cycleFocus", Gtk.MenuShell.MenuShellCycleFocusSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deactivate", Gtk.MenuShell.MenuShellDeactivateSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("insert", Gtk.MenuShell.MenuShellInsertSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCurrent", Gtk.MenuShell.MenuShellMoveCurrentSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveSelected", Gtk.MenuShell.MenuShellMoveSelectedSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionDone", Gtk.MenuShell.MenuShellSelectionDoneSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method MenuBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "MenuBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_bar_new" gtk_menu_bar_new :: 
    IO (Ptr MenuBar)

-- | Creates a new t'GI.Gtk.Objects.MenuBar.MenuBar'
menuBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m MenuBar
    -- ^ __Returns:__ the new menu bar, as a t'GI.Gtk.Objects.Widget.Widget'
menuBarNew  = liftIO $ do
    result <- gtk_menu_bar_new
    checkUnexpectedReturnNULL "menuBarNew" result
    result' <- (newObject MenuBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MenuBar::new_from_model
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "MenuModel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GMenuModel" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "MenuBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_bar_new_from_model" gtk_menu_bar_new_from_model :: 
    Ptr Gio.MenuModel.MenuModel ->          -- model : TInterface (Name {namespace = "Gio", name = "MenuModel"})
    IO (Ptr MenuBar)

-- | Creates a new t'GI.Gtk.Objects.MenuBar.MenuBar' and populates it with menu items
-- and submenus according to /@model@/.
-- 
-- The created menu items are connected to actions found in the
-- t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow' to which the menu bar belongs - typically
-- by means of being contained within the @/GtkApplicationWindows/@
-- widget hierarchy.
-- 
-- /Since: 3.4/
menuBarNewFromModel ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.MenuModel.IsMenuModel a) =>
    a
    -- ^ /@model@/: a t'GI.Gio.Objects.MenuModel.MenuModel'
    -> m MenuBar
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.MenuBar.MenuBar'
menuBarNewFromModel model = liftIO $ do
    model' <- unsafeManagedPtrCastPtr model
    result <- gtk_menu_bar_new_from_model model'
    checkUnexpectedReturnNULL "menuBarNewFromModel" result
    result' <- (newObject MenuBar) result
    touchManagedPtr model
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method MenuBar::get_child_pack_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menubar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PackDirection" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_bar_get_child_pack_direction" gtk_menu_bar_get_child_pack_direction :: 
    Ptr MenuBar ->                          -- menubar : TInterface (Name {namespace = "Gtk", name = "MenuBar"})
    IO CUInt

-- | Retrieves the current child pack direction of the menubar.
-- See 'GI.Gtk.Objects.MenuBar.menuBarSetChildPackDirection'.
-- 
-- /Since: 2.8/
menuBarGetChildPackDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuBar a) =>
    a
    -- ^ /@menubar@/: a t'GI.Gtk.Objects.MenuBar.MenuBar'
    -> m Gtk.Enums.PackDirection
    -- ^ __Returns:__ the child pack direction
menuBarGetChildPackDirection menubar = liftIO $ do
    menubar' <- unsafeManagedPtrCastPtr menubar
    result <- gtk_menu_bar_get_child_pack_direction menubar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr menubar
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuBarGetChildPackDirectionMethodInfo
instance (signature ~ (m Gtk.Enums.PackDirection), MonadIO m, IsMenuBar a) => O.MethodInfo MenuBarGetChildPackDirectionMethodInfo a signature where
    overloadedMethod = menuBarGetChildPackDirection

#endif

-- method MenuBar::get_pack_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menubar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PackDirection" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_menu_bar_get_pack_direction" gtk_menu_bar_get_pack_direction :: 
    Ptr MenuBar ->                          -- menubar : TInterface (Name {namespace = "Gtk", name = "MenuBar"})
    IO CUInt

-- | Retrieves the current pack direction of the menubar.
-- See 'GI.Gtk.Objects.MenuBar.menuBarSetPackDirection'.
-- 
-- /Since: 2.8/
menuBarGetPackDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuBar a) =>
    a
    -- ^ /@menubar@/: a t'GI.Gtk.Objects.MenuBar.MenuBar'
    -> m Gtk.Enums.PackDirection
    -- ^ __Returns:__ the pack direction
menuBarGetPackDirection menubar = liftIO $ do
    menubar' <- unsafeManagedPtrCastPtr menubar
    result <- gtk_menu_bar_get_pack_direction menubar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr menubar
    return result'

#if defined(ENABLE_OVERLOADING)
data MenuBarGetPackDirectionMethodInfo
instance (signature ~ (m Gtk.Enums.PackDirection), MonadIO m, IsMenuBar a) => O.MethodInfo MenuBarGetPackDirectionMethodInfo a signature where
    overloadedMethod = menuBarGetPackDirection

#endif

-- method MenuBar::set_child_pack_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menubar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child_pack_dir"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackDirection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a new #GtkPackDirection"
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

foreign import ccall "gtk_menu_bar_set_child_pack_direction" gtk_menu_bar_set_child_pack_direction :: 
    Ptr MenuBar ->                          -- menubar : TInterface (Name {namespace = "Gtk", name = "MenuBar"})
    CUInt ->                                -- child_pack_dir : TInterface (Name {namespace = "Gtk", name = "PackDirection"})
    IO ()

-- | Sets how widgets should be packed inside the children of a menubar.
-- 
-- /Since: 2.8/
menuBarSetChildPackDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuBar a) =>
    a
    -- ^ /@menubar@/: a t'GI.Gtk.Objects.MenuBar.MenuBar'
    -> Gtk.Enums.PackDirection
    -- ^ /@childPackDir@/: a new t'GI.Gtk.Enums.PackDirection'
    -> m ()
menuBarSetChildPackDirection menubar childPackDir = liftIO $ do
    menubar' <- unsafeManagedPtrCastPtr menubar
    let childPackDir' = (fromIntegral . fromEnum) childPackDir
    gtk_menu_bar_set_child_pack_direction menubar' childPackDir'
    touchManagedPtr menubar
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuBarSetChildPackDirectionMethodInfo
instance (signature ~ (Gtk.Enums.PackDirection -> m ()), MonadIO m, IsMenuBar a) => O.MethodInfo MenuBarSetChildPackDirectionMethodInfo a signature where
    overloadedMethod = menuBarSetChildPackDirection

#endif

-- method MenuBar::set_pack_direction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "menubar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MenuBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMenuBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pack_dir"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackDirection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a new #GtkPackDirection"
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

foreign import ccall "gtk_menu_bar_set_pack_direction" gtk_menu_bar_set_pack_direction :: 
    Ptr MenuBar ->                          -- menubar : TInterface (Name {namespace = "Gtk", name = "MenuBar"})
    CUInt ->                                -- pack_dir : TInterface (Name {namespace = "Gtk", name = "PackDirection"})
    IO ()

-- | Sets how items should be packed inside a menubar.
-- 
-- /Since: 2.8/
menuBarSetPackDirection ::
    (B.CallStack.HasCallStack, MonadIO m, IsMenuBar a) =>
    a
    -- ^ /@menubar@/: a t'GI.Gtk.Objects.MenuBar.MenuBar'
    -> Gtk.Enums.PackDirection
    -- ^ /@packDir@/: a new t'GI.Gtk.Enums.PackDirection'
    -> m ()
menuBarSetPackDirection menubar packDir = liftIO $ do
    menubar' <- unsafeManagedPtrCastPtr menubar
    let packDir' = (fromIntegral . fromEnum) packDir
    gtk_menu_bar_set_pack_direction menubar' packDir'
    touchManagedPtr menubar
    return ()

#if defined(ENABLE_OVERLOADING)
data MenuBarSetPackDirectionMethodInfo
instance (signature ~ (Gtk.Enums.PackDirection -> m ()), MonadIO m, IsMenuBar a) => O.MethodInfo MenuBarSetPackDirectionMethodInfo a signature where
    overloadedMethod = menuBarSetPackDirection

#endif

