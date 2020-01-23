{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem' is a special t'GI.Gtk.Objects.MenuItem.MenuItem' which is used to
-- tear off and reattach its menu.
-- 
-- When its menu is shown normally, the t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem' is drawn as a
-- dotted line indicating that the menu can be torn off.  Activating it
-- causes its menu to be torn off and displayed in its own window
-- as a tearoff menu.
-- 
-- When its menu is shown as a tearoff menu, the t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem' is drawn
-- as a dotted line which has a left pointing arrow graphic indicating that
-- the tearoff menu can be reattached.  Activating it will erase the tearoff
-- menu window.
-- 
-- > t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem' is deprecated and should not be used in newly
-- > written code. Menus are not meant to be torn around.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.TearoffMenuItem
    ( 

-- * Exported types
    TearoffMenuItem(..)                     ,
    IsTearoffMenuItem                       ,
    toTearoffMenuItem                       ,
    noTearoffMenuItem                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTearoffMenuItemMethod            ,
#endif


-- ** new #method:new#

    tearoffMenuItemNew                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItem as Gtk.MenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype TearoffMenuItem = TearoffMenuItem (ManagedPtr TearoffMenuItem)
    deriving (Eq)
foreign import ccall "gtk_tearoff_menu_item_get_type"
    c_gtk_tearoff_menu_item_get_type :: IO GType

instance GObject TearoffMenuItem where
    gobjectType = c_gtk_tearoff_menu_item_get_type
    

-- | Convert 'TearoffMenuItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TearoffMenuItem where
    toGValue o = do
        gtype <- c_gtk_tearoff_menu_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TearoffMenuItem)
        B.ManagedPtr.newObject TearoffMenuItem ptr
        
    

-- | Type class for types which can be safely cast to `TearoffMenuItem`, for instance with `toTearoffMenuItem`.
class (GObject o, O.IsDescendantOf TearoffMenuItem o) => IsTearoffMenuItem o
instance (GObject o, O.IsDescendantOf TearoffMenuItem o) => IsTearoffMenuItem o

instance O.HasParentTypes TearoffMenuItem
type instance O.ParentTypes TearoffMenuItem = '[Gtk.MenuItem.MenuItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `TearoffMenuItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTearoffMenuItem :: (MonadIO m, IsTearoffMenuItem o) => o -> m TearoffMenuItem
toTearoffMenuItem = liftIO . unsafeCastTo TearoffMenuItem

-- | A convenience alias for `Nothing` :: `Maybe` `TearoffMenuItem`.
noTearoffMenuItem :: Maybe TearoffMenuItem
noTearoffMenuItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTearoffMenuItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveTearoffMenuItemMethod "activate" o = Gtk.MenuItem.MenuItemActivateMethodInfo
    ResolveTearoffMenuItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveTearoffMenuItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveTearoffMenuItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveTearoffMenuItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveTearoffMenuItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveTearoffMenuItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveTearoffMenuItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveTearoffMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTearoffMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTearoffMenuItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveTearoffMenuItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveTearoffMenuItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveTearoffMenuItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveTearoffMenuItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveTearoffMenuItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveTearoffMenuItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveTearoffMenuItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveTearoffMenuItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveTearoffMenuItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveTearoffMenuItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveTearoffMenuItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveTearoffMenuItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveTearoffMenuItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveTearoffMenuItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveTearoffMenuItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveTearoffMenuItemMethod "deselect" o = Gtk.MenuItem.MenuItemDeselectMethodInfo
    ResolveTearoffMenuItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveTearoffMenuItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveTearoffMenuItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveTearoffMenuItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveTearoffMenuItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveTearoffMenuItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveTearoffMenuItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveTearoffMenuItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveTearoffMenuItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveTearoffMenuItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveTearoffMenuItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveTearoffMenuItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveTearoffMenuItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveTearoffMenuItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveTearoffMenuItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveTearoffMenuItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveTearoffMenuItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveTearoffMenuItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveTearoffMenuItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveTearoffMenuItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveTearoffMenuItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveTearoffMenuItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveTearoffMenuItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveTearoffMenuItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveTearoffMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTearoffMenuItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveTearoffMenuItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveTearoffMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTearoffMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTearoffMenuItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveTearoffMenuItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveTearoffMenuItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveTearoffMenuItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveTearoffMenuItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveTearoffMenuItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveTearoffMenuItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveTearoffMenuItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveTearoffMenuItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveTearoffMenuItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveTearoffMenuItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveTearoffMenuItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveTearoffMenuItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveTearoffMenuItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveTearoffMenuItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveTearoffMenuItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveTearoffMenuItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveTearoffMenuItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveTearoffMenuItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveTearoffMenuItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveTearoffMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTearoffMenuItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveTearoffMenuItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveTearoffMenuItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveTearoffMenuItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveTearoffMenuItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveTearoffMenuItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveTearoffMenuItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveTearoffMenuItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveTearoffMenuItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveTearoffMenuItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveTearoffMenuItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveTearoffMenuItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveTearoffMenuItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveTearoffMenuItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveTearoffMenuItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveTearoffMenuItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveTearoffMenuItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveTearoffMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTearoffMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTearoffMenuItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveTearoffMenuItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveTearoffMenuItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveTearoffMenuItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveTearoffMenuItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveTearoffMenuItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveTearoffMenuItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveTearoffMenuItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveTearoffMenuItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveTearoffMenuItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveTearoffMenuItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveTearoffMenuItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveTearoffMenuItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveTearoffMenuItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveTearoffMenuItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveTearoffMenuItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveTearoffMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTearoffMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTearoffMenuItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveTearoffMenuItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveTearoffMenuItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveTearoffMenuItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveTearoffMenuItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveTearoffMenuItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveTearoffMenuItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveTearoffMenuItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveTearoffMenuItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveTearoffMenuItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveTearoffMenuItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveTearoffMenuItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveTearoffMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTearoffMenuItemMethod "select" o = Gtk.MenuItem.MenuItemSelectMethodInfo
    ResolveTearoffMenuItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveTearoffMenuItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveTearoffMenuItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveTearoffMenuItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveTearoffMenuItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveTearoffMenuItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveTearoffMenuItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveTearoffMenuItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveTearoffMenuItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveTearoffMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTearoffMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTearoffMenuItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveTearoffMenuItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveTearoffMenuItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveTearoffMenuItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveTearoffMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTearoffMenuItemMethod "toggleSizeAllocate" o = Gtk.MenuItem.MenuItemToggleSizeAllocateMethodInfo
    ResolveTearoffMenuItemMethod "toggleSizeRequest" o = Gtk.MenuItem.MenuItemToggleSizeRequestMethodInfo
    ResolveTearoffMenuItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveTearoffMenuItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveTearoffMenuItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveTearoffMenuItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveTearoffMenuItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveTearoffMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTearoffMenuItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveTearoffMenuItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveTearoffMenuItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveTearoffMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTearoffMenuItemMethod "getAccelPath" o = Gtk.MenuItem.MenuItemGetAccelPathMethodInfo
    ResolveTearoffMenuItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveTearoffMenuItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveTearoffMenuItemMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveTearoffMenuItemMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveTearoffMenuItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveTearoffMenuItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveTearoffMenuItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveTearoffMenuItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveTearoffMenuItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveTearoffMenuItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveTearoffMenuItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveTearoffMenuItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveTearoffMenuItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveTearoffMenuItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveTearoffMenuItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveTearoffMenuItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveTearoffMenuItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveTearoffMenuItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveTearoffMenuItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveTearoffMenuItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveTearoffMenuItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveTearoffMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTearoffMenuItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveTearoffMenuItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveTearoffMenuItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveTearoffMenuItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveTearoffMenuItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveTearoffMenuItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveTearoffMenuItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveTearoffMenuItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveTearoffMenuItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveTearoffMenuItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveTearoffMenuItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveTearoffMenuItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveTearoffMenuItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveTearoffMenuItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveTearoffMenuItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveTearoffMenuItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveTearoffMenuItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveTearoffMenuItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveTearoffMenuItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveTearoffMenuItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveTearoffMenuItemMethod "getLabel" o = Gtk.MenuItem.MenuItemGetLabelMethodInfo
    ResolveTearoffMenuItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveTearoffMenuItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveTearoffMenuItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveTearoffMenuItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveTearoffMenuItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveTearoffMenuItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveTearoffMenuItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveTearoffMenuItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveTearoffMenuItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveTearoffMenuItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveTearoffMenuItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveTearoffMenuItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveTearoffMenuItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveTearoffMenuItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveTearoffMenuItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveTearoffMenuItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveTearoffMenuItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveTearoffMenuItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveTearoffMenuItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveTearoffMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTearoffMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTearoffMenuItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveTearoffMenuItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveTearoffMenuItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveTearoffMenuItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveTearoffMenuItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveTearoffMenuItemMethod "getReserveIndicator" o = Gtk.MenuItem.MenuItemGetReserveIndicatorMethodInfo
    ResolveTearoffMenuItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveTearoffMenuItemMethod "getRightJustified" o = Gtk.MenuItem.MenuItemGetRightJustifiedMethodInfo
    ResolveTearoffMenuItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveTearoffMenuItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveTearoffMenuItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveTearoffMenuItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveTearoffMenuItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveTearoffMenuItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveTearoffMenuItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveTearoffMenuItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveTearoffMenuItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveTearoffMenuItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveTearoffMenuItemMethod "getSubmenu" o = Gtk.MenuItem.MenuItemGetSubmenuMethodInfo
    ResolveTearoffMenuItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveTearoffMenuItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveTearoffMenuItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveTearoffMenuItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveTearoffMenuItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveTearoffMenuItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveTearoffMenuItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveTearoffMenuItemMethod "getUseUnderline" o = Gtk.MenuItem.MenuItemGetUseUnderlineMethodInfo
    ResolveTearoffMenuItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveTearoffMenuItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveTearoffMenuItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveTearoffMenuItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveTearoffMenuItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveTearoffMenuItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveTearoffMenuItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveTearoffMenuItemMethod "setAccelPath" o = Gtk.MenuItem.MenuItemSetAccelPathMethodInfo
    ResolveTearoffMenuItemMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveTearoffMenuItemMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveTearoffMenuItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveTearoffMenuItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveTearoffMenuItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveTearoffMenuItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveTearoffMenuItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveTearoffMenuItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveTearoffMenuItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveTearoffMenuItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveTearoffMenuItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveTearoffMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTearoffMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTearoffMenuItemMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveTearoffMenuItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveTearoffMenuItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveTearoffMenuItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveTearoffMenuItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveTearoffMenuItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveTearoffMenuItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveTearoffMenuItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveTearoffMenuItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveTearoffMenuItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveTearoffMenuItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveTearoffMenuItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveTearoffMenuItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveTearoffMenuItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveTearoffMenuItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveTearoffMenuItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveTearoffMenuItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveTearoffMenuItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveTearoffMenuItemMethod "setLabel" o = Gtk.MenuItem.MenuItemSetLabelMethodInfo
    ResolveTearoffMenuItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveTearoffMenuItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveTearoffMenuItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveTearoffMenuItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveTearoffMenuItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveTearoffMenuItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveTearoffMenuItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveTearoffMenuItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveTearoffMenuItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveTearoffMenuItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveTearoffMenuItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveTearoffMenuItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveTearoffMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTearoffMenuItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveTearoffMenuItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveTearoffMenuItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveTearoffMenuItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveTearoffMenuItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveTearoffMenuItemMethod "setReserveIndicator" o = Gtk.MenuItem.MenuItemSetReserveIndicatorMethodInfo
    ResolveTearoffMenuItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveTearoffMenuItemMethod "setRightJustified" o = Gtk.MenuItem.MenuItemSetRightJustifiedMethodInfo
    ResolveTearoffMenuItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveTearoffMenuItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveTearoffMenuItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveTearoffMenuItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveTearoffMenuItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveTearoffMenuItemMethod "setSubmenu" o = Gtk.MenuItem.MenuItemSetSubmenuMethodInfo
    ResolveTearoffMenuItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveTearoffMenuItemMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveTearoffMenuItemMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveTearoffMenuItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveTearoffMenuItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveTearoffMenuItemMethod "setUseUnderline" o = Gtk.MenuItem.MenuItemSetUseUnderlineMethodInfo
    ResolveTearoffMenuItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveTearoffMenuItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveTearoffMenuItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveTearoffMenuItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveTearoffMenuItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveTearoffMenuItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveTearoffMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTearoffMenuItemMethod t TearoffMenuItem, O.MethodInfo info TearoffMenuItem p) => OL.IsLabel t (TearoffMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TearoffMenuItem
type instance O.AttributeList TearoffMenuItem = TearoffMenuItemAttributeList
type TearoffMenuItemAttributeList = ('[ '("accelPath", Gtk.MenuItem.MenuItemAccelPathPropertyInfo), '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.MenuItem.MenuItemLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightJustified", Gtk.MenuItem.MenuItemRightJustifiedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("submenu", Gtk.MenuItem.MenuItemSubmenuPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.MenuItem.MenuItemUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TearoffMenuItem = TearoffMenuItemSignalList
type TearoffMenuItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.MenuItem.MenuItemActivateSignalInfo), '("activateItem", Gtk.MenuItem.MenuItemActivateItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deselect", Gtk.MenuItem.MenuItemDeselectSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("select", Gtk.MenuItem.MenuItemSelectSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleSizeAllocate", Gtk.MenuItem.MenuItemToggleSizeAllocateSignalInfo), '("toggleSizeRequest", Gtk.MenuItem.MenuItemToggleSizeRequestSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method TearoffMenuItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "TearoffMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tearoff_menu_item_new" gtk_tearoff_menu_item_new :: 
    IO (Ptr TearoffMenuItem)

{-# DEPRECATED tearoffMenuItemNew ["(Since version 3.4)","t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem' is deprecated and should not be","    used in newly written code."] #-}
-- | Creates a new t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem'.
tearoffMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m TearoffMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.TearoffMenuItem.TearoffMenuItem'.
tearoffMenuItemNew  = liftIO $ do
    result <- gtk_tearoff_menu_item_new
    checkUnexpectedReturnNULL "tearoffMenuItemNew" result
    result' <- (newObject TearoffMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

