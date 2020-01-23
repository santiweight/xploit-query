{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton' is a t'GI.Gtk.Objects.ToolItem.ToolItem' that contains a toggle
-- button.
-- 
-- Use 'GI.Gtk.Objects.ToggleToolButton.toggleToolButtonNew' to create a new GtkToggleToolButton.
-- 
-- = CSS nodes
-- 
-- GtkToggleToolButton has a single CSS node with name togglebutton.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ToggleToolButton
    ( 

-- * Exported types
    ToggleToolButton(..)                    ,
    IsToggleToolButton                      ,
    toToggleToolButton                      ,
    noToggleToolButton                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToggleToolButtonMethod           ,
#endif


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    ToggleToolButtonGetActiveMethodInfo     ,
#endif
    toggleToolButtonGetActive               ,


-- ** new #method:new#

    toggleToolButtonNew                     ,


-- ** newFromStock #method:newFromStock#

    toggleToolButtonNewFromStock            ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    ToggleToolButtonSetActiveMethodInfo     ,
#endif
    toggleToolButtonSetActive               ,




 -- * Properties
-- ** active #attr:active#
-- | If the toggle tool button should be pressed in.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    ToggleToolButtonActivePropertyInfo      ,
#endif
    constructToggleToolButtonActive         ,
    getToggleToolButtonActive               ,
    setToggleToolButtonActive               ,
#if defined(ENABLE_OVERLOADING)
    toggleToolButtonActive                  ,
#endif




 -- * Signals
-- ** toggled #signal:toggled#

    C_ToggleToolButtonToggledCallback       ,
    ToggleToolButtonToggledCallback         ,
#if defined(ENABLE_OVERLOADING)
    ToggleToolButtonToggledSignalInfo       ,
#endif
    afterToggleToolButtonToggled            ,
    genClosure_ToggleToolButtonToggled      ,
    mk_ToggleToolButtonToggledCallback      ,
    noToggleToolButtonToggledCallback       ,
    onToggleToolButtonToggled               ,
    wrap_ToggleToolButtonToggledCallback    ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolButton as Gtk.ToolButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ToggleToolButton = ToggleToolButton (ManagedPtr ToggleToolButton)
    deriving (Eq)
foreign import ccall "gtk_toggle_tool_button_get_type"
    c_gtk_toggle_tool_button_get_type :: IO GType

instance GObject ToggleToolButton where
    gobjectType = c_gtk_toggle_tool_button_get_type
    

-- | Convert 'ToggleToolButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ToggleToolButton where
    toGValue o = do
        gtype <- c_gtk_toggle_tool_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ToggleToolButton)
        B.ManagedPtr.newObject ToggleToolButton ptr
        
    

-- | Type class for types which can be safely cast to `ToggleToolButton`, for instance with `toToggleToolButton`.
class (GObject o, O.IsDescendantOf ToggleToolButton o) => IsToggleToolButton o
instance (GObject o, O.IsDescendantOf ToggleToolButton o) => IsToggleToolButton o

instance O.HasParentTypes ToggleToolButton
type instance O.ParentTypes ToggleToolButton = '[Gtk.ToolButton.ToolButton, Gtk.ToolItem.ToolItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `ToggleToolButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToggleToolButton :: (MonadIO m, IsToggleToolButton o) => o -> m ToggleToolButton
toToggleToolButton = liftIO . unsafeCastTo ToggleToolButton

-- | A convenience alias for `Nothing` :: `Maybe` `ToggleToolButton`.
noToggleToolButton :: Maybe ToggleToolButton
noToggleToolButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToggleToolButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveToggleToolButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveToggleToolButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveToggleToolButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveToggleToolButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToggleToolButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveToggleToolButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveToggleToolButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveToggleToolButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveToggleToolButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToggleToolButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToggleToolButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveToggleToolButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveToggleToolButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveToggleToolButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveToggleToolButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveToggleToolButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveToggleToolButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveToggleToolButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveToggleToolButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveToggleToolButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveToggleToolButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToggleToolButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveToggleToolButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveToggleToolButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToggleToolButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToggleToolButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToggleToolButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveToggleToolButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveToggleToolButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveToggleToolButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveToggleToolButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveToggleToolButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveToggleToolButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveToggleToolButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveToggleToolButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveToggleToolButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveToggleToolButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveToggleToolButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveToggleToolButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveToggleToolButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveToggleToolButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveToggleToolButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveToggleToolButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveToggleToolButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveToggleToolButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveToggleToolButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveToggleToolButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveToggleToolButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveToggleToolButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveToggleToolButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveToggleToolButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveToggleToolButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveToggleToolButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveToggleToolButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToggleToolButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveToggleToolButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveToggleToolButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToggleToolButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToggleToolButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveToggleToolButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveToggleToolButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveToggleToolButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveToggleToolButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveToggleToolButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveToggleToolButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveToggleToolButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveToggleToolButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveToggleToolButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveToggleToolButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveToggleToolButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveToggleToolButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveToggleToolButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveToggleToolButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveToggleToolButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveToggleToolButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveToggleToolButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveToggleToolButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveToggleToolButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveToggleToolButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToggleToolButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveToggleToolButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveToggleToolButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveToggleToolButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveToggleToolButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveToggleToolButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveToggleToolButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveToggleToolButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveToggleToolButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveToggleToolButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveToggleToolButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveToggleToolButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveToggleToolButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveToggleToolButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveToggleToolButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveToggleToolButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveToggleToolButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveToggleToolButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToggleToolButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToggleToolButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveToggleToolButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveToggleToolButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveToggleToolButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveToggleToolButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveToggleToolButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToggleToolButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveToggleToolButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveToggleToolButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveToggleToolButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveToggleToolButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveToggleToolButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveToggleToolButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveToggleToolButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveToggleToolButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveToggleToolButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveToggleToolButtonMethod "rebuildMenu" o = Gtk.ToolItem.ToolItemRebuildMenuMethodInfo
    ResolveToggleToolButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToggleToolButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToggleToolButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveToggleToolButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveToggleToolButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveToggleToolButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveToggleToolButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveToggleToolButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveToggleToolButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveToggleToolButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveToggleToolButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveToggleToolButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveToggleToolButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveToggleToolButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveToggleToolButtonMethod "retrieveProxyMenuItem" o = Gtk.ToolItem.ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveToggleToolButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToggleToolButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveToggleToolButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveToggleToolButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveToggleToolButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveToggleToolButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveToggleToolButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveToggleToolButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveToggleToolButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveToggleToolButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveToggleToolButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToggleToolButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToggleToolButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveToggleToolButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveToggleToolButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveToggleToolButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveToggleToolButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToggleToolButtonMethod "toolbarReconfigured" o = Gtk.ToolItem.ToolItemToolbarReconfiguredMethodInfo
    ResolveToggleToolButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveToggleToolButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveToggleToolButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveToggleToolButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveToggleToolButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveToggleToolButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToggleToolButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveToggleToolButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveToggleToolButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveToggleToolButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToggleToolButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveToggleToolButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveToggleToolButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveToggleToolButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveToggleToolButtonMethod "getActive" o = ToggleToolButtonGetActiveMethodInfo
    ResolveToggleToolButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveToggleToolButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveToggleToolButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveToggleToolButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveToggleToolButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveToggleToolButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveToggleToolButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveToggleToolButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveToggleToolButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveToggleToolButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveToggleToolButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveToggleToolButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveToggleToolButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveToggleToolButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveToggleToolButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveToggleToolButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveToggleToolButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveToggleToolButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToggleToolButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveToggleToolButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveToggleToolButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveToggleToolButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveToggleToolButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveToggleToolButtonMethod "getEllipsizeMode" o = Gtk.ToolItem.ToolItemGetEllipsizeModeMethodInfo
    ResolveToggleToolButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveToggleToolButtonMethod "getExpand" o = Gtk.ToolItem.ToolItemGetExpandMethodInfo
    ResolveToggleToolButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveToggleToolButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveToggleToolButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveToggleToolButtonMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveToggleToolButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveToggleToolButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveToggleToolButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveToggleToolButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveToggleToolButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveToggleToolButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveToggleToolButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveToggleToolButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveToggleToolButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveToggleToolButtonMethod "getHomogeneous" o = Gtk.ToolItem.ToolItemGetHomogeneousMethodInfo
    ResolveToggleToolButtonMethod "getIconName" o = Gtk.ToolButton.ToolButtonGetIconNameMethodInfo
    ResolveToggleToolButtonMethod "getIconSize" o = Gtk.ToolItem.ToolItemGetIconSizeMethodInfo
    ResolveToggleToolButtonMethod "getIconWidget" o = Gtk.ToolButton.ToolButtonGetIconWidgetMethodInfo
    ResolveToggleToolButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToggleToolButtonMethod "getIsImportant" o = Gtk.ToolItem.ToolItemGetIsImportantMethodInfo
    ResolveToggleToolButtonMethod "getLabel" o = Gtk.ToolButton.ToolButtonGetLabelMethodInfo
    ResolveToggleToolButtonMethod "getLabelWidget" o = Gtk.ToolButton.ToolButtonGetLabelWidgetMethodInfo
    ResolveToggleToolButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveToggleToolButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveToggleToolButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveToggleToolButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveToggleToolButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveToggleToolButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveToggleToolButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveToggleToolButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveToggleToolButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveToggleToolButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveToggleToolButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveToggleToolButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveToggleToolButtonMethod "getOrientation" o = Gtk.ToolItem.ToolItemGetOrientationMethodInfo
    ResolveToggleToolButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveToggleToolButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveToggleToolButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveToggleToolButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveToggleToolButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveToggleToolButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveToggleToolButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveToggleToolButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveToggleToolButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveToggleToolButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveToggleToolButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveToggleToolButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveToggleToolButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToggleToolButtonMethod "getProxyMenuItem" o = Gtk.ToolItem.ToolItemGetProxyMenuItemMethodInfo
    ResolveToggleToolButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToggleToolButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveToggleToolButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveToggleToolButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveToggleToolButtonMethod "getReliefStyle" o = Gtk.ToolItem.ToolItemGetReliefStyleMethodInfo
    ResolveToggleToolButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveToggleToolButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveToggleToolButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveToggleToolButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveToggleToolButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveToggleToolButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveToggleToolButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveToggleToolButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveToggleToolButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveToggleToolButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveToggleToolButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveToggleToolButtonMethod "getStockId" o = Gtk.ToolButton.ToolButtonGetStockIdMethodInfo
    ResolveToggleToolButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveToggleToolButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveToggleToolButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveToggleToolButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveToggleToolButtonMethod "getTextAlignment" o = Gtk.ToolItem.ToolItemGetTextAlignmentMethodInfo
    ResolveToggleToolButtonMethod "getTextOrientation" o = Gtk.ToolItem.ToolItemGetTextOrientationMethodInfo
    ResolveToggleToolButtonMethod "getTextSizeGroup" o = Gtk.ToolItem.ToolItemGetTextSizeGroupMethodInfo
    ResolveToggleToolButtonMethod "getToolbarStyle" o = Gtk.ToolItem.ToolItemGetToolbarStyleMethodInfo
    ResolveToggleToolButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveToggleToolButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveToggleToolButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveToggleToolButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveToggleToolButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveToggleToolButtonMethod "getUseDragWindow" o = Gtk.ToolItem.ToolItemGetUseDragWindowMethodInfo
    ResolveToggleToolButtonMethod "getUseUnderline" o = Gtk.ToolButton.ToolButtonGetUseUnderlineMethodInfo
    ResolveToggleToolButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveToggleToolButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveToggleToolButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveToggleToolButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveToggleToolButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveToggleToolButtonMethod "getVisibleHorizontal" o = Gtk.ToolItem.ToolItemGetVisibleHorizontalMethodInfo
    ResolveToggleToolButtonMethod "getVisibleVertical" o = Gtk.ToolItem.ToolItemGetVisibleVerticalMethodInfo
    ResolveToggleToolButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveToggleToolButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveToggleToolButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveToggleToolButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveToggleToolButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveToggleToolButtonMethod "setActive" o = ToggleToolButtonSetActiveMethodInfo
    ResolveToggleToolButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveToggleToolButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveToggleToolButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveToggleToolButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToggleToolButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveToggleToolButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveToggleToolButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveToggleToolButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveToggleToolButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveToggleToolButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToggleToolButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToggleToolButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveToggleToolButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveToggleToolButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveToggleToolButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveToggleToolButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveToggleToolButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveToggleToolButtonMethod "setExpand" o = Gtk.ToolItem.ToolItemSetExpandMethodInfo
    ResolveToggleToolButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveToggleToolButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveToggleToolButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveToggleToolButtonMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveToggleToolButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveToggleToolButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveToggleToolButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveToggleToolButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveToggleToolButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveToggleToolButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveToggleToolButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveToggleToolButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveToggleToolButtonMethod "setHomogeneous" o = Gtk.ToolItem.ToolItemSetHomogeneousMethodInfo
    ResolveToggleToolButtonMethod "setIconName" o = Gtk.ToolButton.ToolButtonSetIconNameMethodInfo
    ResolveToggleToolButtonMethod "setIconWidget" o = Gtk.ToolButton.ToolButtonSetIconWidgetMethodInfo
    ResolveToggleToolButtonMethod "setIsImportant" o = Gtk.ToolItem.ToolItemSetIsImportantMethodInfo
    ResolveToggleToolButtonMethod "setLabel" o = Gtk.ToolButton.ToolButtonSetLabelMethodInfo
    ResolveToggleToolButtonMethod "setLabelWidget" o = Gtk.ToolButton.ToolButtonSetLabelWidgetMethodInfo
    ResolveToggleToolButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveToggleToolButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveToggleToolButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveToggleToolButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveToggleToolButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveToggleToolButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveToggleToolButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveToggleToolButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveToggleToolButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveToggleToolButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveToggleToolButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveToggleToolButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveToggleToolButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToggleToolButtonMethod "setProxyMenuItem" o = Gtk.ToolItem.ToolItemSetProxyMenuItemMethodInfo
    ResolveToggleToolButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveToggleToolButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveToggleToolButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveToggleToolButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveToggleToolButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveToggleToolButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveToggleToolButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveToggleToolButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveToggleToolButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveToggleToolButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveToggleToolButtonMethod "setStockId" o = Gtk.ToolButton.ToolButtonSetStockIdMethodInfo
    ResolveToggleToolButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveToggleToolButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveToggleToolButtonMethod "setTooltipMarkup" o = Gtk.ToolItem.ToolItemSetTooltipMarkupMethodInfo
    ResolveToggleToolButtonMethod "setTooltipText" o = Gtk.ToolItem.ToolItemSetTooltipTextMethodInfo
    ResolveToggleToolButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveToggleToolButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveToggleToolButtonMethod "setUseDragWindow" o = Gtk.ToolItem.ToolItemSetUseDragWindowMethodInfo
    ResolveToggleToolButtonMethod "setUseUnderline" o = Gtk.ToolButton.ToolButtonSetUseUnderlineMethodInfo
    ResolveToggleToolButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveToggleToolButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveToggleToolButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveToggleToolButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveToggleToolButtonMethod "setVisibleHorizontal" o = Gtk.ToolItem.ToolItemSetVisibleHorizontalMethodInfo
    ResolveToggleToolButtonMethod "setVisibleVertical" o = Gtk.ToolItem.ToolItemSetVisibleVerticalMethodInfo
    ResolveToggleToolButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveToggleToolButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveToggleToolButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToggleToolButtonMethod t ToggleToolButton, O.MethodInfo info ToggleToolButton p) => OL.IsLabel t (ToggleToolButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ToggleToolButton::toggled
-- | Emitted whenever the toggle tool button changes state.
type ToggleToolButtonToggledCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToggleToolButtonToggledCallback`@.
noToggleToolButtonToggledCallback :: Maybe ToggleToolButtonToggledCallback
noToggleToolButtonToggledCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToggleToolButtonToggledCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToggleToolButtonToggledCallback`.
foreign import ccall "wrapper"
    mk_ToggleToolButtonToggledCallback :: C_ToggleToolButtonToggledCallback -> IO (FunPtr C_ToggleToolButtonToggledCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToggleToolButtonToggled :: MonadIO m => ToggleToolButtonToggledCallback -> m (GClosure C_ToggleToolButtonToggledCallback)
genClosure_ToggleToolButtonToggled cb = liftIO $ do
    let cb' = wrap_ToggleToolButtonToggledCallback cb
    mk_ToggleToolButtonToggledCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToggleToolButtonToggledCallback` into a `C_ToggleToolButtonToggledCallback`.
wrap_ToggleToolButtonToggledCallback ::
    ToggleToolButtonToggledCallback ->
    C_ToggleToolButtonToggledCallback
wrap_ToggleToolButtonToggledCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toggleToolButton #toggled callback
-- @
-- 
-- 
onToggleToolButtonToggled :: (IsToggleToolButton a, MonadIO m) => a -> ToggleToolButtonToggledCallback -> m SignalHandlerId
onToggleToolButtonToggled obj cb = liftIO $ do
    let cb' = wrap_ToggleToolButtonToggledCallback cb
    cb'' <- mk_ToggleToolButtonToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toggleToolButton #toggled callback
-- @
-- 
-- 
afterToggleToolButtonToggled :: (IsToggleToolButton a, MonadIO m) => a -> ToggleToolButtonToggledCallback -> m SignalHandlerId
afterToggleToolButtonToggled obj cb = liftIO $ do
    let cb' = wrap_ToggleToolButtonToggledCallback cb
    cb'' <- mk_ToggleToolButtonToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToggleToolButtonToggledSignalInfo
instance SignalInfo ToggleToolButtonToggledSignalInfo where
    type HaskellCallbackType ToggleToolButtonToggledSignalInfo = ToggleToolButtonToggledCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToggleToolButtonToggledCallback cb
        cb'' <- mk_ToggleToolButtonToggledCallback cb'
        connectSignalFunPtr obj "toggled" cb'' connectMode detail

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toggleToolButton #active
-- @
getToggleToolButtonActive :: (MonadIO m, IsToggleToolButton o) => o -> m Bool
getToggleToolButtonActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toggleToolButton [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setToggleToolButtonActive :: (MonadIO m, IsToggleToolButton o) => o -> Bool -> m ()
setToggleToolButtonActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToggleToolButtonActive :: (IsToggleToolButton o) => Bool -> IO (GValueConstruct o)
constructToggleToolButtonActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data ToggleToolButtonActivePropertyInfo
instance AttrInfo ToggleToolButtonActivePropertyInfo where
    type AttrAllowedOps ToggleToolButtonActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToggleToolButtonActivePropertyInfo = IsToggleToolButton
    type AttrSetTypeConstraint ToggleToolButtonActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToggleToolButtonActivePropertyInfo = (~) Bool
    type AttrTransferType ToggleToolButtonActivePropertyInfo = Bool
    type AttrGetType ToggleToolButtonActivePropertyInfo = Bool
    type AttrLabel ToggleToolButtonActivePropertyInfo = "active"
    type AttrOrigin ToggleToolButtonActivePropertyInfo = ToggleToolButton
    attrGet = getToggleToolButtonActive
    attrSet = setToggleToolButtonActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructToggleToolButtonActive
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ToggleToolButton
type instance O.AttributeList ToggleToolButton = ToggleToolButtonAttributeList
type ToggleToolButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", ToggleToolButtonActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("iconName", Gtk.ToolButton.ToolButtonIconNamePropertyInfo), '("iconWidget", Gtk.ToolButton.ToolButtonIconWidgetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", Gtk.ToolItem.ToolItemIsImportantPropertyInfo), '("label", Gtk.ToolButton.ToolButtonLabelPropertyInfo), '("labelWidget", Gtk.ToolButton.ToolButtonLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("stockId", Gtk.ToolButton.ToolButtonStockIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.ToolButton.ToolButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", Gtk.ToolItem.ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", Gtk.ToolItem.ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toggleToolButtonActive :: AttrLabelProxy "active"
toggleToolButtonActive = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ToggleToolButton = ToggleToolButtonSignalList
type ToggleToolButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.ToolButton.ToolButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", Gtk.ToolItem.ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggled", ToggleToolButtonToggledSignalInfo), '("toolbarReconfigured", Gtk.ToolItem.ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ToggleToolButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ToggleToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toggle_tool_button_new" gtk_toggle_tool_button_new :: 
    IO (Ptr ToggleToolButton)

-- | Returns a new t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton'
-- 
-- /Since: 2.4/
toggleToolButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ToggleToolButton
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton'
toggleToolButtonNew  = liftIO $ do
    result <- gtk_toggle_tool_button_new
    checkUnexpectedReturnNULL "toggleToolButtonNew" result
    result' <- (newObject ToggleToolButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToggleToolButton::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the stock item"
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
--               (TInterface Name { namespace = "Gtk" , name = "ToggleToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toggle_tool_button_new_from_stock" gtk_toggle_tool_button_new_from_stock :: 
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr ToggleToolButton)

{-# DEPRECATED toggleToolButtonNewFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.ToggleToolButton.toggleToolButtonNew' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton' containing the image and text from a
-- stock item. Some stock ids have preprocessor macros like 'GI.Gtk.Constants.STOCK_OK'
-- and 'GI.Gtk.Constants.STOCK_APPLY'.
-- 
-- It is an error if /@stockId@/ is not a name of a stock item.
-- 
-- /Since: 2.4/
toggleToolButtonNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@stockId@/: the name of the stock item
    -> m ToggleToolButton
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton'
toggleToolButtonNewFromStock stockId = liftIO $ do
    stockId' <- textToCString stockId
    result <- gtk_toggle_tool_button_new_from_stock stockId'
    checkUnexpectedReturnNULL "toggleToolButtonNewFromStock" result
    result' <- (newObject ToggleToolButton) result
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToggleToolButton::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToggleToolButton"
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

foreign import ccall "gtk_toggle_tool_button_get_active" gtk_toggle_tool_button_get_active :: 
    Ptr ToggleToolButton ->                 -- button : TInterface (Name {namespace = "Gtk", name = "ToggleToolButton"})
    IO CInt

-- | Queries a t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton' and returns its current state.
-- Returns 'P.True' if the toggle button is pressed in and 'P.False' if it is raised.
-- 
-- /Since: 2.4/
toggleToolButtonGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the toggle tool button is pressed in, 'P.False' if not
toggleToolButtonGetActive button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_toggle_tool_button_get_active button'
    let result' = (/= 0) result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data ToggleToolButtonGetActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToggleToolButton a) => O.MethodInfo ToggleToolButtonGetActiveMethodInfo a signature where
    overloadedMethod = toggleToolButtonGetActive

#endif

-- method ToggleToolButton::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToggleToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToggleToolButton"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_active"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether @button should be active"
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

foreign import ccall "gtk_toggle_tool_button_set_active" gtk_toggle_tool_button_set_active :: 
    Ptr ToggleToolButton ->                 -- button : TInterface (Name {namespace = "Gtk", name = "ToggleToolButton"})
    CInt ->                                 -- is_active : TBasicType TBoolean
    IO ()

-- | Sets the status of the toggle tool button. Set to 'P.True' if you
-- want the GtkToggleButton to be “pressed in”, and 'P.False' to raise it.
-- This action causes the toggled signal to be emitted.
-- 
-- /Since: 2.4/
toggleToolButtonSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsToggleToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton'
    -> Bool
    -- ^ /@isActive@/: whether /@button@/ should be active
    -> m ()
toggleToolButtonSetActive button isActive = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    let isActive' = (fromIntegral . fromEnum) isActive
    gtk_toggle_tool_button_set_active button' isActive'
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data ToggleToolButtonSetActiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToggleToolButton a) => O.MethodInfo ToggleToolButtonSetActiveMethodInfo a signature where
    overloadedMethod = toggleToolButtonSetActive

#endif

