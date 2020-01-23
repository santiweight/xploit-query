{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.SeparatorMenuItem.SeparatorMenuItem' is a separator used to group
-- items within a menu. It displays a horizontal line with a shadow to
-- make it appear sunken into the interface.
-- 
-- = CSS nodes
-- 
-- GtkSeparatorMenuItem has a single CSS node with name separator.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SeparatorMenuItem
    ( 

-- * Exported types
    SeparatorMenuItem(..)                   ,
    IsSeparatorMenuItem                     ,
    toSeparatorMenuItem                     ,
    noSeparatorMenuItem                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSeparatorMenuItemMethod          ,
#endif


-- ** new #method:new#

    separatorMenuItemNew                    ,




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
newtype SeparatorMenuItem = SeparatorMenuItem (ManagedPtr SeparatorMenuItem)
    deriving (Eq)
foreign import ccall "gtk_separator_menu_item_get_type"
    c_gtk_separator_menu_item_get_type :: IO GType

instance GObject SeparatorMenuItem where
    gobjectType = c_gtk_separator_menu_item_get_type
    

-- | Convert 'SeparatorMenuItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SeparatorMenuItem where
    toGValue o = do
        gtype <- c_gtk_separator_menu_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SeparatorMenuItem)
        B.ManagedPtr.newObject SeparatorMenuItem ptr
        
    

-- | Type class for types which can be safely cast to `SeparatorMenuItem`, for instance with `toSeparatorMenuItem`.
class (GObject o, O.IsDescendantOf SeparatorMenuItem o) => IsSeparatorMenuItem o
instance (GObject o, O.IsDescendantOf SeparatorMenuItem o) => IsSeparatorMenuItem o

instance O.HasParentTypes SeparatorMenuItem
type instance O.ParentTypes SeparatorMenuItem = '[Gtk.MenuItem.MenuItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `SeparatorMenuItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSeparatorMenuItem :: (MonadIO m, IsSeparatorMenuItem o) => o -> m SeparatorMenuItem
toSeparatorMenuItem = liftIO . unsafeCastTo SeparatorMenuItem

-- | A convenience alias for `Nothing` :: `Maybe` `SeparatorMenuItem`.
noSeparatorMenuItem :: Maybe SeparatorMenuItem
noSeparatorMenuItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSeparatorMenuItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveSeparatorMenuItemMethod "activate" o = Gtk.MenuItem.MenuItemActivateMethodInfo
    ResolveSeparatorMenuItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveSeparatorMenuItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSeparatorMenuItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSeparatorMenuItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSeparatorMenuItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSeparatorMenuItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSeparatorMenuItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSeparatorMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSeparatorMenuItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSeparatorMenuItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveSeparatorMenuItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSeparatorMenuItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveSeparatorMenuItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveSeparatorMenuItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSeparatorMenuItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSeparatorMenuItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSeparatorMenuItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSeparatorMenuItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSeparatorMenuItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSeparatorMenuItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSeparatorMenuItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSeparatorMenuItemMethod "deselect" o = Gtk.MenuItem.MenuItemDeselectMethodInfo
    ResolveSeparatorMenuItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSeparatorMenuItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSeparatorMenuItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSeparatorMenuItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveSeparatorMenuItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSeparatorMenuItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSeparatorMenuItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSeparatorMenuItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSeparatorMenuItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSeparatorMenuItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSeparatorMenuItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSeparatorMenuItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSeparatorMenuItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSeparatorMenuItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSeparatorMenuItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSeparatorMenuItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSeparatorMenuItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveSeparatorMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSeparatorMenuItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveSeparatorMenuItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSeparatorMenuItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSeparatorMenuItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSeparatorMenuItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSeparatorMenuItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSeparatorMenuItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSeparatorMenuItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSeparatorMenuItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSeparatorMenuItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSeparatorMenuItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSeparatorMenuItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSeparatorMenuItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSeparatorMenuItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSeparatorMenuItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSeparatorMenuItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSeparatorMenuItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSeparatorMenuItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSeparatorMenuItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSeparatorMenuItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSeparatorMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSeparatorMenuItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSeparatorMenuItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSeparatorMenuItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSeparatorMenuItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSeparatorMenuItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSeparatorMenuItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSeparatorMenuItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSeparatorMenuItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSeparatorMenuItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSeparatorMenuItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSeparatorMenuItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSeparatorMenuItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSeparatorMenuItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSeparatorMenuItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSeparatorMenuItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSeparatorMenuItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSeparatorMenuItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSeparatorMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSeparatorMenuItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSeparatorMenuItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSeparatorMenuItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSeparatorMenuItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSeparatorMenuItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSeparatorMenuItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSeparatorMenuItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSeparatorMenuItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveSeparatorMenuItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSeparatorMenuItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSeparatorMenuItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSeparatorMenuItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSeparatorMenuItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSeparatorMenuItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSeparatorMenuItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSeparatorMenuItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSeparatorMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSeparatorMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSeparatorMenuItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSeparatorMenuItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSeparatorMenuItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveSeparatorMenuItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSeparatorMenuItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSeparatorMenuItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSeparatorMenuItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSeparatorMenuItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSeparatorMenuItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSeparatorMenuItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSeparatorMenuItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSeparatorMenuItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveSeparatorMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSeparatorMenuItemMethod "select" o = Gtk.MenuItem.MenuItemSelectMethodInfo
    ResolveSeparatorMenuItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSeparatorMenuItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSeparatorMenuItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSeparatorMenuItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSeparatorMenuItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSeparatorMenuItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSeparatorMenuItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSeparatorMenuItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSeparatorMenuItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSeparatorMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSeparatorMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSeparatorMenuItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSeparatorMenuItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveSeparatorMenuItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSeparatorMenuItemMethod "toggleSizeAllocate" o = Gtk.MenuItem.MenuItemToggleSizeAllocateMethodInfo
    ResolveSeparatorMenuItemMethod "toggleSizeRequest" o = Gtk.MenuItem.MenuItemToggleSizeRequestMethodInfo
    ResolveSeparatorMenuItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSeparatorMenuItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSeparatorMenuItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSeparatorMenuItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSeparatorMenuItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSeparatorMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSeparatorMenuItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSeparatorMenuItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveSeparatorMenuItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSeparatorMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSeparatorMenuItemMethod "getAccelPath" o = Gtk.MenuItem.MenuItemGetAccelPathMethodInfo
    ResolveSeparatorMenuItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSeparatorMenuItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSeparatorMenuItemMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveSeparatorMenuItemMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveSeparatorMenuItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSeparatorMenuItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSeparatorMenuItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSeparatorMenuItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSeparatorMenuItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSeparatorMenuItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSeparatorMenuItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSeparatorMenuItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveSeparatorMenuItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSeparatorMenuItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveSeparatorMenuItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSeparatorMenuItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSeparatorMenuItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveSeparatorMenuItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSeparatorMenuItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSeparatorMenuItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSeparatorMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSeparatorMenuItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSeparatorMenuItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSeparatorMenuItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSeparatorMenuItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSeparatorMenuItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSeparatorMenuItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSeparatorMenuItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveSeparatorMenuItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveSeparatorMenuItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveSeparatorMenuItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSeparatorMenuItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveSeparatorMenuItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSeparatorMenuItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSeparatorMenuItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSeparatorMenuItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSeparatorMenuItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSeparatorMenuItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSeparatorMenuItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSeparatorMenuItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSeparatorMenuItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSeparatorMenuItemMethod "getLabel" o = Gtk.MenuItem.MenuItemGetLabelMethodInfo
    ResolveSeparatorMenuItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSeparatorMenuItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSeparatorMenuItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSeparatorMenuItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSeparatorMenuItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSeparatorMenuItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSeparatorMenuItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSeparatorMenuItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSeparatorMenuItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSeparatorMenuItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSeparatorMenuItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSeparatorMenuItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveSeparatorMenuItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSeparatorMenuItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSeparatorMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSeparatorMenuItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSeparatorMenuItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveSeparatorMenuItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSeparatorMenuItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSeparatorMenuItemMethod "getReserveIndicator" o = Gtk.MenuItem.MenuItemGetReserveIndicatorMethodInfo
    ResolveSeparatorMenuItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveSeparatorMenuItemMethod "getRightJustified" o = Gtk.MenuItem.MenuItemGetRightJustifiedMethodInfo
    ResolveSeparatorMenuItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSeparatorMenuItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSeparatorMenuItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSeparatorMenuItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSeparatorMenuItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSeparatorMenuItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSeparatorMenuItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSeparatorMenuItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSeparatorMenuItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSeparatorMenuItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSeparatorMenuItemMethod "getSubmenu" o = Gtk.MenuItem.MenuItemGetSubmenuMethodInfo
    ResolveSeparatorMenuItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSeparatorMenuItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSeparatorMenuItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSeparatorMenuItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSeparatorMenuItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSeparatorMenuItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSeparatorMenuItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveSeparatorMenuItemMethod "getUseUnderline" o = Gtk.MenuItem.MenuItemGetUseUnderlineMethodInfo
    ResolveSeparatorMenuItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSeparatorMenuItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSeparatorMenuItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSeparatorMenuItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSeparatorMenuItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSeparatorMenuItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSeparatorMenuItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSeparatorMenuItemMethod "setAccelPath" o = Gtk.MenuItem.MenuItemSetAccelPathMethodInfo
    ResolveSeparatorMenuItemMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveSeparatorMenuItemMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveSeparatorMenuItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSeparatorMenuItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSeparatorMenuItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveSeparatorMenuItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSeparatorMenuItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSeparatorMenuItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSeparatorMenuItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSeparatorMenuItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSeparatorMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSeparatorMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSeparatorMenuItemMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveSeparatorMenuItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSeparatorMenuItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSeparatorMenuItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSeparatorMenuItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSeparatorMenuItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSeparatorMenuItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveSeparatorMenuItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveSeparatorMenuItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveSeparatorMenuItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSeparatorMenuItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveSeparatorMenuItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSeparatorMenuItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSeparatorMenuItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSeparatorMenuItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSeparatorMenuItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSeparatorMenuItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSeparatorMenuItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSeparatorMenuItemMethod "setLabel" o = Gtk.MenuItem.MenuItemSetLabelMethodInfo
    ResolveSeparatorMenuItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSeparatorMenuItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSeparatorMenuItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSeparatorMenuItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSeparatorMenuItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSeparatorMenuItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSeparatorMenuItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSeparatorMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSeparatorMenuItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSeparatorMenuItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveSeparatorMenuItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSeparatorMenuItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSeparatorMenuItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveSeparatorMenuItemMethod "setReserveIndicator" o = Gtk.MenuItem.MenuItemSetReserveIndicatorMethodInfo
    ResolveSeparatorMenuItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveSeparatorMenuItemMethod "setRightJustified" o = Gtk.MenuItem.MenuItemSetRightJustifiedMethodInfo
    ResolveSeparatorMenuItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSeparatorMenuItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSeparatorMenuItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSeparatorMenuItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSeparatorMenuItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSeparatorMenuItemMethod "setSubmenu" o = Gtk.MenuItem.MenuItemSetSubmenuMethodInfo
    ResolveSeparatorMenuItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSeparatorMenuItemMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSeparatorMenuItemMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSeparatorMenuItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSeparatorMenuItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveSeparatorMenuItemMethod "setUseUnderline" o = Gtk.MenuItem.MenuItemSetUseUnderlineMethodInfo
    ResolveSeparatorMenuItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSeparatorMenuItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSeparatorMenuItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSeparatorMenuItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSeparatorMenuItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSeparatorMenuItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSeparatorMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSeparatorMenuItemMethod t SeparatorMenuItem, O.MethodInfo info SeparatorMenuItem p) => OL.IsLabel t (SeparatorMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SeparatorMenuItem
type instance O.AttributeList SeparatorMenuItem = SeparatorMenuItemAttributeList
type SeparatorMenuItemAttributeList = ('[ '("accelPath", Gtk.MenuItem.MenuItemAccelPathPropertyInfo), '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.MenuItem.MenuItemLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightJustified", Gtk.MenuItem.MenuItemRightJustifiedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("submenu", Gtk.MenuItem.MenuItemSubmenuPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.MenuItem.MenuItemUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SeparatorMenuItem = SeparatorMenuItemSignalList
type SeparatorMenuItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.MenuItem.MenuItemActivateSignalInfo), '("activateItem", Gtk.MenuItem.MenuItemActivateItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deselect", Gtk.MenuItem.MenuItemDeselectSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("select", Gtk.MenuItem.MenuItemSelectSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleSizeAllocate", Gtk.MenuItem.MenuItemToggleSizeAllocateSignalInfo), '("toggleSizeRequest", Gtk.MenuItem.MenuItemToggleSizeRequestSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method SeparatorMenuItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "SeparatorMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_separator_menu_item_new" gtk_separator_menu_item_new :: 
    IO (Ptr SeparatorMenuItem)

-- | Creates a new t'GI.Gtk.Objects.SeparatorMenuItem.SeparatorMenuItem'.
separatorMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m SeparatorMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.SeparatorMenuItem.SeparatorMenuItem'.
separatorMenuItemNew  = liftIO $ do
    result <- gtk_separator_menu_item_new
    checkUnexpectedReturnNULL "separatorMenuItemNew" result
    result' <- (newObject SeparatorMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

