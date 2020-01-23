{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.CheckButton.CheckButton' places a discrete t'GI.Gtk.Objects.ToggleButton.ToggleButton' next to a widget,
-- (usually a t'GI.Gtk.Objects.Label.Label'). See the section on t'GI.Gtk.Objects.ToggleButton.ToggleButton' widgets for
-- more information about toggle\/check buttons.
-- 
-- The important signal ( [toggled]("GI.Gtk.Objects.ToggleButton#signal:toggled") ) is also inherited from
-- t'GI.Gtk.Objects.ToggleButton.ToggleButton'.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >checkbutton
-- >├── check
-- >╰── <child>
-- 
-- 
-- A GtkCheckButton with indicator (see 'GI.Gtk.Objects.ToggleButton.toggleButtonSetMode') has a
-- main CSS node with name checkbutton and a subnode with name check.
-- 
-- 
-- === /plain code/
-- >
-- >button.check
-- >├── check
-- >╰── <child>
-- 
-- 
-- A GtkCheckButton without indicator changes the name of its main node
-- to button and adds a .check style class to it. The subnode is invisible
-- in this case.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CheckButton
    ( 

-- * Exported types
    CheckButton(..)                         ,
    IsCheckButton                           ,
    toCheckButton                           ,
    noCheckButton                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCheckButtonMethod                ,
#endif


-- ** new #method:new#

    checkButtonNew                          ,


-- ** newWithLabel #method:newWithLabel#

    checkButtonNewWithLabel                 ,


-- ** newWithMnemonic #method:newWithMnemonic#

    checkButtonNewWithMnemonic              ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToggleButton as Gtk.ToggleButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype CheckButton = CheckButton (ManagedPtr CheckButton)
    deriving (Eq)
foreign import ccall "gtk_check_button_get_type"
    c_gtk_check_button_get_type :: IO GType

instance GObject CheckButton where
    gobjectType = c_gtk_check_button_get_type
    

-- | Convert 'CheckButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CheckButton where
    toGValue o = do
        gtype <- c_gtk_check_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CheckButton)
        B.ManagedPtr.newObject CheckButton ptr
        
    

-- | Type class for types which can be safely cast to `CheckButton`, for instance with `toCheckButton`.
class (GObject o, O.IsDescendantOf CheckButton o) => IsCheckButton o
instance (GObject o, O.IsDescendantOf CheckButton o) => IsCheckButton o

instance O.HasParentTypes CheckButton
type instance O.ParentTypes CheckButton = '[Gtk.ToggleButton.ToggleButton, Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `CheckButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCheckButton :: (MonadIO m, IsCheckButton o) => o -> m CheckButton
toCheckButton = liftIO . unsafeCastTo CheckButton

-- | A convenience alias for `Nothing` :: `Maybe` `CheckButton`.
noCheckButton :: Maybe CheckButton
noCheckButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCheckButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveCheckButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveCheckButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveCheckButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveCheckButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCheckButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveCheckButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveCheckButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveCheckButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveCheckButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCheckButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCheckButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveCheckButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveCheckButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveCheckButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveCheckButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveCheckButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveCheckButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveCheckButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveCheckButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveCheckButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveCheckButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveCheckButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCheckButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveCheckButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveCheckButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCheckButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCheckButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCheckButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveCheckButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveCheckButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveCheckButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveCheckButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveCheckButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveCheckButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveCheckButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveCheckButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveCheckButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveCheckButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveCheckButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveCheckButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveCheckButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveCheckButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveCheckButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveCheckButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveCheckButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveCheckButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveCheckButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveCheckButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveCheckButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveCheckButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveCheckButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveCheckButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveCheckButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveCheckButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveCheckButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveCheckButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveCheckButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveCheckButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveCheckButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveCheckButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveCheckButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveCheckButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveCheckButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveCheckButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveCheckButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveCheckButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCheckButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveCheckButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveCheckButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCheckButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCheckButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveCheckButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveCheckButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveCheckButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveCheckButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveCheckButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveCheckButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveCheckButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveCheckButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveCheckButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveCheckButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveCheckButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveCheckButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveCheckButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveCheckButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveCheckButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveCheckButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveCheckButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveCheckButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveCheckButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveCheckButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCheckButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveCheckButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveCheckButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveCheckButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveCheckButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveCheckButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveCheckButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveCheckButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveCheckButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveCheckButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveCheckButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveCheckButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveCheckButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveCheckButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveCheckButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveCheckButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveCheckButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveCheckButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveCheckButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCheckButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCheckButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveCheckButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveCheckButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveCheckButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveCheckButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveCheckButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCheckButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveCheckButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveCheckButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveCheckButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveCheckButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveCheckButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveCheckButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveCheckButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveCheckButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveCheckButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveCheckButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveCheckButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCheckButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCheckButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveCheckButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveCheckButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveCheckButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveCheckButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveCheckButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveCheckButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveCheckButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveCheckButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveCheckButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveCheckButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveCheckButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveCheckButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveCheckButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCheckButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveCheckButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveCheckButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveCheckButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveCheckButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveCheckButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveCheckButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveCheckButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveCheckButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveCheckButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCheckButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCheckButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveCheckButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveCheckButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveCheckButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveCheckButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCheckButtonMethod "toggled" o = Gtk.ToggleButton.ToggleButtonToggledMethodInfo
    ResolveCheckButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveCheckButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveCheckButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveCheckButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveCheckButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveCheckButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCheckButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveCheckButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveCheckButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveCheckButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCheckButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveCheckButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveCheckButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveCheckButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveCheckButtonMethod "getActive" o = Gtk.ToggleButton.ToggleButtonGetActiveMethodInfo
    ResolveCheckButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveCheckButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveCheckButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveCheckButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveCheckButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveCheckButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveCheckButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveCheckButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveCheckButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveCheckButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveCheckButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveCheckButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveCheckButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveCheckButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveCheckButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveCheckButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveCheckButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveCheckButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveCheckButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveCheckButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCheckButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveCheckButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveCheckButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveCheckButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveCheckButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveCheckButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveCheckButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveCheckButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveCheckButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveCheckButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveCheckButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveCheckButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveCheckButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveCheckButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveCheckButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveCheckButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveCheckButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveCheckButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveCheckButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveCheckButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveCheckButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveCheckButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveCheckButtonMethod "getInconsistent" o = Gtk.ToggleButton.ToggleButtonGetInconsistentMethodInfo
    ResolveCheckButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCheckButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveCheckButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveCheckButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveCheckButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveCheckButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveCheckButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveCheckButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveCheckButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveCheckButtonMethod "getMode" o = Gtk.ToggleButton.ToggleButtonGetModeMethodInfo
    ResolveCheckButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveCheckButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveCheckButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveCheckButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveCheckButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveCheckButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveCheckButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveCheckButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveCheckButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveCheckButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveCheckButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveCheckButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveCheckButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveCheckButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveCheckButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveCheckButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveCheckButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveCheckButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCheckButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCheckButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveCheckButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveCheckButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveCheckButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveCheckButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveCheckButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveCheckButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveCheckButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveCheckButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveCheckButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveCheckButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveCheckButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveCheckButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveCheckButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveCheckButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveCheckButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveCheckButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveCheckButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveCheckButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveCheckButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveCheckButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveCheckButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveCheckButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveCheckButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveCheckButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveCheckButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveCheckButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveCheckButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveCheckButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveCheckButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveCheckButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveCheckButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveCheckButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveCheckButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveCheckButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveCheckButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveCheckButtonMethod "setActive" o = Gtk.ToggleButton.ToggleButtonSetActiveMethodInfo
    ResolveCheckButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveCheckButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveCheckButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveCheckButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveCheckButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveCheckButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCheckButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveCheckButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveCheckButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveCheckButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveCheckButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveCheckButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCheckButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCheckButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveCheckButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveCheckButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveCheckButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveCheckButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveCheckButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveCheckButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveCheckButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveCheckButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveCheckButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveCheckButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveCheckButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveCheckButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveCheckButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveCheckButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveCheckButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveCheckButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveCheckButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveCheckButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveCheckButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveCheckButtonMethod "setInconsistent" o = Gtk.ToggleButton.ToggleButtonSetInconsistentMethodInfo
    ResolveCheckButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveCheckButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveCheckButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveCheckButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveCheckButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveCheckButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveCheckButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveCheckButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveCheckButtonMethod "setMode" o = Gtk.ToggleButton.ToggleButtonSetModeMethodInfo
    ResolveCheckButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveCheckButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveCheckButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveCheckButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveCheckButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveCheckButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCheckButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveCheckButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveCheckButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveCheckButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveCheckButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveCheckButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveCheckButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveCheckButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveCheckButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveCheckButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveCheckButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveCheckButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveCheckButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveCheckButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveCheckButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveCheckButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveCheckButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveCheckButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveCheckButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveCheckButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveCheckButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveCheckButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveCheckButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveCheckButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveCheckButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveCheckButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCheckButtonMethod t CheckButton, O.MethodInfo info CheckButton p) => OL.IsLabel t (CheckButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CheckButton
type instance O.AttributeList CheckButton = CheckButtonAttributeList
type CheckButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", Gtk.ToggleButton.ToggleButtonActivePropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawIndicator", Gtk.ToggleButton.ToggleButtonDrawIndicatorPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("inconsistent", Gtk.ToggleButton.ToggleButtonInconsistentPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CheckButton = CheckButtonSignalList
type CheckButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggled", Gtk.ToggleButton.ToggleButtonToggledSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method CheckButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CheckButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_button_new" gtk_check_button_new :: 
    IO (Ptr CheckButton)

-- | Creates a new t'GI.Gtk.Objects.CheckButton.CheckButton'.
checkButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CheckButton
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget'.
checkButtonNew  = liftIO $ do
    result <- gtk_check_button_new
    checkUnexpectedReturnNULL "checkButtonNew" result
    result' <- (newObject CheckButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CheckButton::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text for the check button."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CheckButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_button_new_with_label" gtk_check_button_new_with_label :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr CheckButton)

-- | Creates a new t'GI.Gtk.Objects.CheckButton.CheckButton' with a t'GI.Gtk.Objects.Label.Label' to the right of it.
checkButtonNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: the text for the check button.
    -> m CheckButton
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget'.
checkButtonNewWithLabel label = liftIO $ do
    label' <- textToCString label
    result <- gtk_check_button_new_with_label label'
    checkUnexpectedReturnNULL "checkButtonNewWithLabel" result
    result' <- (newObject CheckButton) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CheckButton::new_with_mnemonic
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
--                       "The text of the button, with an underscore in front of the\n  mnemonic character"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CheckButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_button_new_with_mnemonic" gtk_check_button_new_with_mnemonic :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr CheckButton)

-- | Creates a new t'GI.Gtk.Objects.CheckButton.CheckButton' containing a label. The label
-- will be created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores
-- in /@label@/ indicate the mnemonic for the check button.
checkButtonNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: The text of the button, with an underscore in front of the
    --   mnemonic character
    -> m CheckButton
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CheckButton.CheckButton'
checkButtonNewWithMnemonic label = liftIO $ do
    label' <- textToCString label
    result <- gtk_check_button_new_with_mnemonic label'
    checkUnexpectedReturnNULL "checkButtonNewWithMnemonic" result
    result' <- (newObject CheckButton) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

