{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' is a t'GI.Gtk.Objects.ToolItem.ToolItem' that contains a radio button,
-- that is, a button that is part of a group of toggle buttons where only
-- one button can be active at a time.
-- 
-- Use 'GI.Gtk.Objects.RadioToolButton.radioToolButtonNew' to create a new GtkRadioToolButton. Use
-- 'GI.Gtk.Objects.RadioToolButton.radioToolButtonNewFromWidget' to create a new GtkRadioToolButton
-- that is part of the same group as an existing GtkRadioToolButton.
-- 
-- = CSS nodes
-- 
-- GtkRadioToolButton has a single CSS node with name toolbutton.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RadioToolButton
    ( 

-- * Exported types
    RadioToolButton(..)                     ,
    IsRadioToolButton                       ,
    toRadioToolButton                       ,
    noRadioToolButton                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRadioToolButtonMethod            ,
#endif


-- ** getGroup #method:getGroup#

#if defined(ENABLE_OVERLOADING)
    RadioToolButtonGetGroupMethodInfo       ,
#endif
    radioToolButtonGetGroup                 ,


-- ** new #method:new#

    radioToolButtonNew                      ,


-- ** newFromStock #method:newFromStock#

    radioToolButtonNewFromStock             ,


-- ** newFromWidget #method:newFromWidget#

    radioToolButtonNewFromWidget            ,


-- ** newWithStockFromWidget #method:newWithStockFromWidget#

    radioToolButtonNewWithStockFromWidget   ,


-- ** setGroup #method:setGroup#

#if defined(ENABLE_OVERLOADING)
    RadioToolButtonSetGroupMethodInfo       ,
#endif
    radioToolButtonSetGroup                 ,




 -- * Properties
-- ** group #attr:group#
-- | Sets a new group for a radio tool button.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    RadioToolButtonGroupPropertyInfo        ,
#endif
    clearRadioToolButtonGroup               ,
    constructRadioToolButtonGroup           ,
#if defined(ENABLE_OVERLOADING)
    radioToolButtonGroup                    ,
#endif
    setRadioToolButtonGroup                 ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.RadioButton as Gtk.RadioButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToggleToolButton as Gtk.ToggleToolButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolButton as Gtk.ToolButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype RadioToolButton = RadioToolButton (ManagedPtr RadioToolButton)
    deriving (Eq)
foreign import ccall "gtk_radio_tool_button_get_type"
    c_gtk_radio_tool_button_get_type :: IO GType

instance GObject RadioToolButton where
    gobjectType = c_gtk_radio_tool_button_get_type
    

-- | Convert 'RadioToolButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RadioToolButton where
    toGValue o = do
        gtype <- c_gtk_radio_tool_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RadioToolButton)
        B.ManagedPtr.newObject RadioToolButton ptr
        
    

-- | Type class for types which can be safely cast to `RadioToolButton`, for instance with `toRadioToolButton`.
class (GObject o, O.IsDescendantOf RadioToolButton o) => IsRadioToolButton o
instance (GObject o, O.IsDescendantOf RadioToolButton o) => IsRadioToolButton o

instance O.HasParentTypes RadioToolButton
type instance O.ParentTypes RadioToolButton = '[Gtk.ToggleToolButton.ToggleToolButton, Gtk.ToolButton.ToolButton, Gtk.ToolItem.ToolItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `RadioToolButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRadioToolButton :: (MonadIO m, IsRadioToolButton o) => o -> m RadioToolButton
toRadioToolButton = liftIO . unsafeCastTo RadioToolButton

-- | A convenience alias for `Nothing` :: `Maybe` `RadioToolButton`.
noRadioToolButton :: Maybe RadioToolButton
noRadioToolButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRadioToolButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveRadioToolButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveRadioToolButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveRadioToolButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveRadioToolButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveRadioToolButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveRadioToolButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveRadioToolButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveRadioToolButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveRadioToolButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRadioToolButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRadioToolButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveRadioToolButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveRadioToolButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveRadioToolButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveRadioToolButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveRadioToolButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveRadioToolButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveRadioToolButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveRadioToolButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveRadioToolButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveRadioToolButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveRadioToolButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveRadioToolButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveRadioToolButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveRadioToolButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveRadioToolButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveRadioToolButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveRadioToolButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveRadioToolButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveRadioToolButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveRadioToolButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveRadioToolButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveRadioToolButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveRadioToolButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveRadioToolButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveRadioToolButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveRadioToolButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveRadioToolButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveRadioToolButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveRadioToolButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveRadioToolButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveRadioToolButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveRadioToolButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveRadioToolButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveRadioToolButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveRadioToolButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveRadioToolButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveRadioToolButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveRadioToolButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveRadioToolButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveRadioToolButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveRadioToolButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveRadioToolButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveRadioToolButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRadioToolButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveRadioToolButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveRadioToolButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRadioToolButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRadioToolButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveRadioToolButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveRadioToolButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveRadioToolButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveRadioToolButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveRadioToolButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveRadioToolButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveRadioToolButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveRadioToolButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveRadioToolButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveRadioToolButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveRadioToolButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveRadioToolButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveRadioToolButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveRadioToolButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveRadioToolButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveRadioToolButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveRadioToolButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveRadioToolButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveRadioToolButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveRadioToolButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRadioToolButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveRadioToolButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveRadioToolButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveRadioToolButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveRadioToolButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveRadioToolButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveRadioToolButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveRadioToolButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveRadioToolButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveRadioToolButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveRadioToolButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveRadioToolButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveRadioToolButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveRadioToolButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveRadioToolButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveRadioToolButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveRadioToolButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveRadioToolButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRadioToolButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRadioToolButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveRadioToolButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveRadioToolButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveRadioToolButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveRadioToolButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveRadioToolButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveRadioToolButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveRadioToolButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveRadioToolButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveRadioToolButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveRadioToolButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveRadioToolButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveRadioToolButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveRadioToolButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveRadioToolButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveRadioToolButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveRadioToolButtonMethod "rebuildMenu" o = Gtk.ToolItem.ToolItemRebuildMenuMethodInfo
    ResolveRadioToolButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRadioToolButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRadioToolButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveRadioToolButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveRadioToolButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveRadioToolButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveRadioToolButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveRadioToolButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveRadioToolButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveRadioToolButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveRadioToolButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveRadioToolButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveRadioToolButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveRadioToolButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveRadioToolButtonMethod "retrieveProxyMenuItem" o = Gtk.ToolItem.ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveRadioToolButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRadioToolButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveRadioToolButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveRadioToolButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveRadioToolButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveRadioToolButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveRadioToolButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveRadioToolButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveRadioToolButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveRadioToolButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveRadioToolButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRadioToolButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRadioToolButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveRadioToolButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveRadioToolButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveRadioToolButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveRadioToolButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRadioToolButtonMethod "toolbarReconfigured" o = Gtk.ToolItem.ToolItemToolbarReconfiguredMethodInfo
    ResolveRadioToolButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveRadioToolButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveRadioToolButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveRadioToolButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveRadioToolButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveRadioToolButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRadioToolButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveRadioToolButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveRadioToolButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveRadioToolButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRadioToolButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveRadioToolButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveRadioToolButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveRadioToolButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveRadioToolButtonMethod "getActive" o = Gtk.ToggleToolButton.ToggleToolButtonGetActiveMethodInfo
    ResolveRadioToolButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveRadioToolButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveRadioToolButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveRadioToolButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveRadioToolButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveRadioToolButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveRadioToolButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveRadioToolButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveRadioToolButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveRadioToolButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveRadioToolButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveRadioToolButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveRadioToolButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveRadioToolButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveRadioToolButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveRadioToolButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveRadioToolButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveRadioToolButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRadioToolButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveRadioToolButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveRadioToolButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveRadioToolButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveRadioToolButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveRadioToolButtonMethod "getEllipsizeMode" o = Gtk.ToolItem.ToolItemGetEllipsizeModeMethodInfo
    ResolveRadioToolButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveRadioToolButtonMethod "getExpand" o = Gtk.ToolItem.ToolItemGetExpandMethodInfo
    ResolveRadioToolButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveRadioToolButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveRadioToolButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveRadioToolButtonMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveRadioToolButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveRadioToolButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveRadioToolButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveRadioToolButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveRadioToolButtonMethod "getGroup" o = RadioToolButtonGetGroupMethodInfo
    ResolveRadioToolButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveRadioToolButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveRadioToolButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveRadioToolButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveRadioToolButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveRadioToolButtonMethod "getHomogeneous" o = Gtk.ToolItem.ToolItemGetHomogeneousMethodInfo
    ResolveRadioToolButtonMethod "getIconName" o = Gtk.ToolButton.ToolButtonGetIconNameMethodInfo
    ResolveRadioToolButtonMethod "getIconSize" o = Gtk.ToolItem.ToolItemGetIconSizeMethodInfo
    ResolveRadioToolButtonMethod "getIconWidget" o = Gtk.ToolButton.ToolButtonGetIconWidgetMethodInfo
    ResolveRadioToolButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveRadioToolButtonMethod "getIsImportant" o = Gtk.ToolItem.ToolItemGetIsImportantMethodInfo
    ResolveRadioToolButtonMethod "getLabel" o = Gtk.ToolButton.ToolButtonGetLabelMethodInfo
    ResolveRadioToolButtonMethod "getLabelWidget" o = Gtk.ToolButton.ToolButtonGetLabelWidgetMethodInfo
    ResolveRadioToolButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveRadioToolButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveRadioToolButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveRadioToolButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveRadioToolButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveRadioToolButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveRadioToolButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveRadioToolButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveRadioToolButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveRadioToolButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveRadioToolButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveRadioToolButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveRadioToolButtonMethod "getOrientation" o = Gtk.ToolItem.ToolItemGetOrientationMethodInfo
    ResolveRadioToolButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveRadioToolButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveRadioToolButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveRadioToolButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveRadioToolButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveRadioToolButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveRadioToolButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveRadioToolButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveRadioToolButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveRadioToolButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveRadioToolButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveRadioToolButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveRadioToolButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRadioToolButtonMethod "getProxyMenuItem" o = Gtk.ToolItem.ToolItemGetProxyMenuItemMethodInfo
    ResolveRadioToolButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRadioToolButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveRadioToolButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveRadioToolButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveRadioToolButtonMethod "getReliefStyle" o = Gtk.ToolItem.ToolItemGetReliefStyleMethodInfo
    ResolveRadioToolButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveRadioToolButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveRadioToolButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveRadioToolButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveRadioToolButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveRadioToolButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveRadioToolButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveRadioToolButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveRadioToolButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveRadioToolButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveRadioToolButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveRadioToolButtonMethod "getStockId" o = Gtk.ToolButton.ToolButtonGetStockIdMethodInfo
    ResolveRadioToolButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveRadioToolButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveRadioToolButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveRadioToolButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveRadioToolButtonMethod "getTextAlignment" o = Gtk.ToolItem.ToolItemGetTextAlignmentMethodInfo
    ResolveRadioToolButtonMethod "getTextOrientation" o = Gtk.ToolItem.ToolItemGetTextOrientationMethodInfo
    ResolveRadioToolButtonMethod "getTextSizeGroup" o = Gtk.ToolItem.ToolItemGetTextSizeGroupMethodInfo
    ResolveRadioToolButtonMethod "getToolbarStyle" o = Gtk.ToolItem.ToolItemGetToolbarStyleMethodInfo
    ResolveRadioToolButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveRadioToolButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveRadioToolButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveRadioToolButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveRadioToolButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveRadioToolButtonMethod "getUseDragWindow" o = Gtk.ToolItem.ToolItemGetUseDragWindowMethodInfo
    ResolveRadioToolButtonMethod "getUseUnderline" o = Gtk.ToolButton.ToolButtonGetUseUnderlineMethodInfo
    ResolveRadioToolButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveRadioToolButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveRadioToolButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveRadioToolButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveRadioToolButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveRadioToolButtonMethod "getVisibleHorizontal" o = Gtk.ToolItem.ToolItemGetVisibleHorizontalMethodInfo
    ResolveRadioToolButtonMethod "getVisibleVertical" o = Gtk.ToolItem.ToolItemGetVisibleVerticalMethodInfo
    ResolveRadioToolButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveRadioToolButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveRadioToolButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveRadioToolButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveRadioToolButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveRadioToolButtonMethod "setActive" o = Gtk.ToggleToolButton.ToggleToolButtonSetActiveMethodInfo
    ResolveRadioToolButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveRadioToolButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveRadioToolButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveRadioToolButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveRadioToolButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveRadioToolButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveRadioToolButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveRadioToolButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveRadioToolButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveRadioToolButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRadioToolButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRadioToolButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveRadioToolButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveRadioToolButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveRadioToolButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveRadioToolButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveRadioToolButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveRadioToolButtonMethod "setExpand" o = Gtk.ToolItem.ToolItemSetExpandMethodInfo
    ResolveRadioToolButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveRadioToolButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveRadioToolButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveRadioToolButtonMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveRadioToolButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveRadioToolButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveRadioToolButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveRadioToolButtonMethod "setGroup" o = RadioToolButtonSetGroupMethodInfo
    ResolveRadioToolButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveRadioToolButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveRadioToolButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveRadioToolButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveRadioToolButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveRadioToolButtonMethod "setHomogeneous" o = Gtk.ToolItem.ToolItemSetHomogeneousMethodInfo
    ResolveRadioToolButtonMethod "setIconName" o = Gtk.ToolButton.ToolButtonSetIconNameMethodInfo
    ResolveRadioToolButtonMethod "setIconWidget" o = Gtk.ToolButton.ToolButtonSetIconWidgetMethodInfo
    ResolveRadioToolButtonMethod "setIsImportant" o = Gtk.ToolItem.ToolItemSetIsImportantMethodInfo
    ResolveRadioToolButtonMethod "setLabel" o = Gtk.ToolButton.ToolButtonSetLabelMethodInfo
    ResolveRadioToolButtonMethod "setLabelWidget" o = Gtk.ToolButton.ToolButtonSetLabelWidgetMethodInfo
    ResolveRadioToolButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveRadioToolButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveRadioToolButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveRadioToolButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveRadioToolButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveRadioToolButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveRadioToolButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveRadioToolButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveRadioToolButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveRadioToolButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveRadioToolButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveRadioToolButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveRadioToolButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRadioToolButtonMethod "setProxyMenuItem" o = Gtk.ToolItem.ToolItemSetProxyMenuItemMethodInfo
    ResolveRadioToolButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveRadioToolButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveRadioToolButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveRadioToolButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveRadioToolButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveRadioToolButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveRadioToolButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveRadioToolButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveRadioToolButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveRadioToolButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveRadioToolButtonMethod "setStockId" o = Gtk.ToolButton.ToolButtonSetStockIdMethodInfo
    ResolveRadioToolButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveRadioToolButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveRadioToolButtonMethod "setTooltipMarkup" o = Gtk.ToolItem.ToolItemSetTooltipMarkupMethodInfo
    ResolveRadioToolButtonMethod "setTooltipText" o = Gtk.ToolItem.ToolItemSetTooltipTextMethodInfo
    ResolveRadioToolButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveRadioToolButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveRadioToolButtonMethod "setUseDragWindow" o = Gtk.ToolItem.ToolItemSetUseDragWindowMethodInfo
    ResolveRadioToolButtonMethod "setUseUnderline" o = Gtk.ToolButton.ToolButtonSetUseUnderlineMethodInfo
    ResolveRadioToolButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveRadioToolButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveRadioToolButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveRadioToolButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveRadioToolButtonMethod "setVisibleHorizontal" o = Gtk.ToolItem.ToolItemSetVisibleHorizontalMethodInfo
    ResolveRadioToolButtonMethod "setVisibleVertical" o = Gtk.ToolItem.ToolItemSetVisibleVerticalMethodInfo
    ResolveRadioToolButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveRadioToolButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveRadioToolButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRadioToolButtonMethod t RadioToolButton, O.MethodInfo info RadioToolButton p) => OL.IsLabel t (RadioToolButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "RadioToolButton"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' radioToolButton [ #group 'Data.GI.Base.Attributes.:=' value ]
-- @
setRadioToolButtonGroup :: (MonadIO m, IsRadioToolButton o, IsRadioToolButton a) => o -> a -> m ()
setRadioToolButtonGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRadioToolButtonGroup :: (IsRadioToolButton o, IsRadioToolButton a) => a -> IO (GValueConstruct o)
constructRadioToolButtonGroup val = B.Properties.constructObjectPropertyObject "group" (Just val)

-- | Set the value of the “@group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #group
-- @
clearRadioToolButtonGroup :: (MonadIO m, IsRadioToolButton o) => o -> m ()
clearRadioToolButtonGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Nothing :: Maybe RadioToolButton)

#if defined(ENABLE_OVERLOADING)
data RadioToolButtonGroupPropertyInfo
instance AttrInfo RadioToolButtonGroupPropertyInfo where
    type AttrAllowedOps RadioToolButtonGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint RadioToolButtonGroupPropertyInfo = IsRadioToolButton
    type AttrSetTypeConstraint RadioToolButtonGroupPropertyInfo = IsRadioToolButton
    type AttrTransferTypeConstraint RadioToolButtonGroupPropertyInfo = IsRadioToolButton
    type AttrTransferType RadioToolButtonGroupPropertyInfo = RadioToolButton
    type AttrGetType RadioToolButtonGroupPropertyInfo = ()
    type AttrLabel RadioToolButtonGroupPropertyInfo = "group"
    type AttrOrigin RadioToolButtonGroupPropertyInfo = RadioToolButton
    attrGet = undefined
    attrSet = setRadioToolButtonGroup
    attrTransfer _ v = do
        unsafeCastTo RadioToolButton v
    attrConstruct = constructRadioToolButtonGroup
    attrClear = clearRadioToolButtonGroup
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RadioToolButton
type instance O.AttributeList RadioToolButton = RadioToolButtonAttributeList
type RadioToolButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", Gtk.ToggleToolButton.ToggleToolButtonActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("group", RadioToolButtonGroupPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("iconName", Gtk.ToolButton.ToolButtonIconNamePropertyInfo), '("iconWidget", Gtk.ToolButton.ToolButtonIconWidgetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", Gtk.ToolItem.ToolItemIsImportantPropertyInfo), '("label", Gtk.ToolButton.ToolButtonLabelPropertyInfo), '("labelWidget", Gtk.ToolButton.ToolButtonLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("stockId", Gtk.ToolButton.ToolButtonStockIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.ToolButton.ToolButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", Gtk.ToolItem.ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", Gtk.ToolItem.ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
radioToolButtonGroup :: AttrLabelProxy "group"
radioToolButtonGroup = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RadioToolButton = RadioToolButtonSignalList
type RadioToolButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.ToolButton.ToolButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", Gtk.ToolItem.ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggled", Gtk.ToggleToolButton.ToggleToolButtonToggledSignalInfo), '("toolbarReconfigured", Gtk.ToolItem.ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method RadioToolButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "An\n  existing radio button group, or %NULL if you are creating a new group"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_tool_button_new" gtk_radio_tool_button_new :: 
    Ptr (GSList (Ptr Gtk.RadioButton.RadioButton)) -> -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    IO (Ptr RadioToolButton)

-- | Creates a new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton', adding it to /@group@/.
-- 
-- /Since: 2.4/
radioToolButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.RadioButton.IsRadioButton a) =>
    [a]
    -- ^ /@group@/: An
    --   existing radio button group, or 'P.Nothing' if you are creating a new group
    -> m RadioToolButton
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
radioToolButtonNew group = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    result <- gtk_radio_tool_button_new group''
    checkUnexpectedReturnNULL "radioToolButtonNew" result
    result' <- (newObject RadioToolButton) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioToolButton::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an existing radio button\n  group, or %NULL if you are creating a new group"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_tool_button_new_from_stock" gtk_radio_tool_button_new_from_stock :: 
    Ptr (GSList (Ptr Gtk.RadioButton.RadioButton)) -> -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr RadioToolButton)

{-# DEPRECATED radioToolButtonNewFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.RadioToolButton.radioToolButtonNew' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton', adding it to /@group@/.
-- The new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' will contain an icon and label from the
-- stock item indicated by /@stockId@/.
-- 
-- /Since: 2.4/
radioToolButtonNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.RadioButton.IsRadioButton a) =>
    [a]
    -- ^ /@group@/: an existing radio button
    --   group, or 'P.Nothing' if you are creating a new group
    -> T.Text
    -- ^ /@stockId@/: the name of a stock item
    -> m RadioToolButton
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
radioToolButtonNewFromStock group stockId = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    stockId' <- textToCString stockId
    result <- gtk_radio_tool_button_new_from_stock group'' stockId'
    checkUnexpectedReturnNULL "radioToolButtonNewFromStock" result
    result' <- (newObject RadioToolButton) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioToolButton::new_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An existing #GtkRadioToolButton, or %NULL"
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_tool_button_new_from_widget" gtk_radio_tool_button_new_from_widget :: 
    Ptr RadioToolButton ->                  -- group : TInterface (Name {namespace = "Gtk", name = "RadioToolButton"})
    IO (Ptr RadioToolButton)

-- | Creates a new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' adding it to the same group as /@gruup@/
-- 
-- /Since: 2.4/
radioToolButtonNewFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioToolButton a) =>
    Maybe (a)
    -- ^ /@group@/: An existing t'GI.Gtk.Objects.RadioToolButton.RadioToolButton', or 'P.Nothing'
    -> m RadioToolButton
    -- ^ __Returns:__ The new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
radioToolButtonNewFromWidget group = liftIO $ do
    maybeGroup <- case group of
        Nothing -> return nullPtr
        Just jGroup -> do
            jGroup' <- unsafeManagedPtrCastPtr jGroup
            return jGroup'
    result <- gtk_radio_tool_button_new_from_widget maybeGroup
    checkUnexpectedReturnNULL "radioToolButtonNewFromWidget" result
    result' <- (newObject RadioToolButton) result
    whenJust group touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioToolButton::new_with_stock_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An existing #GtkRadioToolButton."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
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
--               (TInterface Name { namespace = "Gtk" , name = "RadioToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_tool_button_new_with_stock_from_widget" gtk_radio_tool_button_new_with_stock_from_widget :: 
    Ptr RadioToolButton ->                  -- group : TInterface (Name {namespace = "Gtk", name = "RadioToolButton"})
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr RadioToolButton)

{-# DEPRECATED radioToolButtonNewWithStockFromWidget ["(Since version 3.10)","gtk_radio_tool_button_new_from_widget"] #-}
-- | Creates a new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' adding it to the same group as /@group@/.
-- The new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' will contain an icon and label from the
-- stock item indicated by /@stockId@/.
-- 
-- /Since: 2.4/
radioToolButtonNewWithStockFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioToolButton a) =>
    Maybe (a)
    -- ^ /@group@/: An existing t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'.
    -> T.Text
    -- ^ /@stockId@/: the name of a stock item
    -> m RadioToolButton
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
radioToolButtonNewWithStockFromWidget group stockId = liftIO $ do
    maybeGroup <- case group of
        Nothing -> return nullPtr
        Just jGroup -> do
            jGroup' <- unsafeManagedPtrCastPtr jGroup
            return jGroup'
    stockId' <- textToCString stockId
    result <- gtk_radio_tool_button_new_with_stock_from_widget maybeGroup stockId'
    checkUnexpectedReturnNULL "radioToolButtonNewWithStockFromWidget" result
    result' <- (newObject RadioToolButton) result
    whenJust group touchManagedPtr
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioToolButton::get_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioToolButton"
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
--                  (TInterface Name { namespace = "Gtk" , name = "RadioButton" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_tool_button_get_group" gtk_radio_tool_button_get_group :: 
    Ptr RadioToolButton ->                  -- button : TInterface (Name {namespace = "Gtk", name = "RadioToolButton"})
    IO (Ptr (GSList (Ptr Gtk.RadioButton.RadioButton)))

-- | Returns the radio button group /@button@/ belongs to.
-- 
-- /Since: 2.4/
radioToolButtonGetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
    -> m [Gtk.RadioButton.RadioButton]
    -- ^ __Returns:__ The group /@button@/ belongs to.
radioToolButtonGetGroup button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_radio_tool_button_get_group button'
    result' <- unpackGSList result
    result'' <- mapM (newObject Gtk.RadioButton.RadioButton) result'
    touchManagedPtr button
    return result''

#if defined(ENABLE_OVERLOADING)
data RadioToolButtonGetGroupMethodInfo
instance (signature ~ (m [Gtk.RadioButton.RadioButton]), MonadIO m, IsRadioToolButton a) => O.MethodInfo RadioToolButtonGetGroupMethodInfo a signature where
    overloadedMethod = radioToolButtonGetGroup

#endif

-- method RadioToolButton::set_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioToolButton"
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
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an existing radio button group, or %NULL"
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

foreign import ccall "gtk_radio_tool_button_set_group" gtk_radio_tool_button_set_group :: 
    Ptr RadioToolButton ->                  -- button : TInterface (Name {namespace = "Gtk", name = "RadioToolButton"})
    Ptr (GSList (Ptr Gtk.RadioButton.RadioButton)) -> -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    IO ()

-- | Adds /@button@/ to /@group@/, removing it from the group it belonged to before.
-- 
-- /Since: 2.4/
radioToolButtonSetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioToolButton a, Gtk.RadioButton.IsRadioButton b) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.RadioToolButton.RadioToolButton'
    -> [b]
    -- ^ /@group@/: an existing radio button group, or 'P.Nothing'
    -> m ()
radioToolButtonSetGroup button group = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    gtk_radio_tool_button_set_group button' group''
    touchManagedPtr button
    mapM_ touchManagedPtr group
    g_slist_free group''
    return ()

#if defined(ENABLE_OVERLOADING)
data RadioToolButtonSetGroupMethodInfo
instance (signature ~ ([b] -> m ()), MonadIO m, IsRadioToolButton a, Gtk.RadioButton.IsRadioButton b) => O.MethodInfo RadioToolButtonSetGroupMethodInfo a signature where
    overloadedMethod = radioToolButtonSetGroup

#endif

