{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.Switch.Switch' is a widget that has two states: on or off. The user can control
-- which state should be active by clicking the empty area, or by dragging the
-- handle.
-- 
-- GtkSwitch can also handle situations where the underlying state changes with
-- a delay. See [stateSet]("GI.Gtk.Objects.Switch#signal:stateSet") for details.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >switch
-- >╰── slider
-- 
-- 
-- GtkSwitch has two css nodes, the main node with the name switch and a subnode
-- named slider. Neither of them is using any style classes.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Switch
    ( 

-- * Exported types
    Switch(..)                              ,
    IsSwitch                                ,
    toSwitch                                ,
    noSwitch                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSwitchMethod                     ,
#endif


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    SwitchGetActiveMethodInfo               ,
#endif
    switchGetActive                         ,


-- ** getState #method:getState#

#if defined(ENABLE_OVERLOADING)
    SwitchGetStateMethodInfo                ,
#endif
    switchGetState                          ,


-- ** new #method:new#

    switchNew                               ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    SwitchSetActiveMethodInfo               ,
#endif
    switchSetActive                         ,


-- ** setState #method:setState#

#if defined(ENABLE_OVERLOADING)
    SwitchSetStateMethodInfo                ,
#endif
    switchSetState                          ,




 -- * Properties
-- ** active #attr:active#
-- | Whether the t'GI.Gtk.Objects.Switch.Switch' widget is in its on or off state.

#if defined(ENABLE_OVERLOADING)
    SwitchActivePropertyInfo                ,
#endif
    constructSwitchActive                   ,
    getSwitchActive                         ,
    setSwitchActive                         ,
#if defined(ENABLE_OVERLOADING)
    switchActive                            ,
#endif


-- ** state #attr:state#
-- | The backend state that is controlled by the switch.
-- See [stateSet]("GI.Gtk.Objects.Switch#signal:stateSet") for details.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    SwitchStatePropertyInfo                 ,
#endif
    constructSwitchState                    ,
    getSwitchState                          ,
    setSwitchState                          ,
#if defined(ENABLE_OVERLOADING)
    switchState                             ,
#endif




 -- * Signals
-- ** activate #signal:activate#

    C_SwitchActivateCallback                ,
    SwitchActivateCallback                  ,
#if defined(ENABLE_OVERLOADING)
    SwitchActivateSignalInfo                ,
#endif
    afterSwitchActivate                     ,
    genClosure_SwitchActivate               ,
    mk_SwitchActivateCallback               ,
    noSwitchActivateCallback                ,
    onSwitchActivate                        ,
    wrap_SwitchActivateCallback             ,


-- ** stateSet #signal:stateSet#

    C_SwitchStateSetCallback                ,
    SwitchStateSetCallback                  ,
#if defined(ENABLE_OVERLOADING)
    SwitchStateSetSignalInfo                ,
#endif
    afterSwitchStateSet                     ,
    genClosure_SwitchStateSet               ,
    mk_SwitchStateSetCallback               ,
    noSwitchStateSetCallback                ,
    onSwitchStateSet                        ,
    wrap_SwitchStateSetCallback             ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Switch = Switch (ManagedPtr Switch)
    deriving (Eq)
foreign import ccall "gtk_switch_get_type"
    c_gtk_switch_get_type :: IO GType

instance GObject Switch where
    gobjectType = c_gtk_switch_get_type
    

-- | Convert 'Switch' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Switch where
    toGValue o = do
        gtype <- c_gtk_switch_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Switch)
        B.ManagedPtr.newObject Switch ptr
        
    

-- | Type class for types which can be safely cast to `Switch`, for instance with `toSwitch`.
class (GObject o, O.IsDescendantOf Switch o) => IsSwitch o
instance (GObject o, O.IsDescendantOf Switch o) => IsSwitch o

instance O.HasParentTypes Switch
type instance O.ParentTypes Switch = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `Switch`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSwitch :: (MonadIO m, IsSwitch o) => o -> m Switch
toSwitch = liftIO . unsafeCastTo Switch

-- | A convenience alias for `Nothing` :: `Maybe` `Switch`.
noSwitch :: Maybe Switch
noSwitch = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSwitchMethod (t :: Symbol) (o :: *) :: * where
    ResolveSwitchMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSwitchMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSwitchMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSwitchMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSwitchMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSwitchMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSwitchMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSwitchMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSwitchMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSwitchMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSwitchMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSwitchMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveSwitchMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSwitchMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSwitchMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSwitchMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSwitchMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSwitchMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSwitchMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSwitchMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSwitchMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSwitchMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSwitchMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSwitchMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveSwitchMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSwitchMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSwitchMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSwitchMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSwitchMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSwitchMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSwitchMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSwitchMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSwitchMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSwitchMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSwitchMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSwitchMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSwitchMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSwitchMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSwitchMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSwitchMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSwitchMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSwitchMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSwitchMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSwitchMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSwitchMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSwitchMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSwitchMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSwitchMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSwitchMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSwitchMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSwitchMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSwitchMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSwitchMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSwitchMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSwitchMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSwitchMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSwitchMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSwitchMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSwitchMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSwitchMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSwitchMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSwitchMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSwitchMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSwitchMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSwitchMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSwitchMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSwitchMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSwitchMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSwitchMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSwitchMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSwitchMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSwitchMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSwitchMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSwitchMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSwitchMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSwitchMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSwitchMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSwitchMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSwitchMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSwitchMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSwitchMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSwitchMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSwitchMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSwitchMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSwitchMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSwitchMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSwitchMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSwitchMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSwitchMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSwitchMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSwitchMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSwitchMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSwitchMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSwitchMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSwitchMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSwitchMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSwitchMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSwitchMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSwitchMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSwitchMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSwitchMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSwitchMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSwitchMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSwitchMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSwitchMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSwitchMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSwitchMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSwitchMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSwitchMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSwitchMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSwitchMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSwitchMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSwitchMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSwitchMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSwitchMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSwitchMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSwitchMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSwitchMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSwitchMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSwitchMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSwitchMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSwitchMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSwitchMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSwitchMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSwitchMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSwitchMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSwitchMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSwitchMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSwitchMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSwitchMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSwitchMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSwitchMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSwitchMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSwitchMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSwitchMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSwitchMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSwitchMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSwitchMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSwitchMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSwitchMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSwitchMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSwitchMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveSwitchMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSwitchMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSwitchMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSwitchMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSwitchMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSwitchMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSwitchMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSwitchMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSwitchMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSwitchMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSwitchMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSwitchMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSwitchMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSwitchMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveSwitchMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveSwitchMethod "getActive" o = SwitchGetActiveMethodInfo
    ResolveSwitchMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSwitchMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSwitchMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSwitchMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSwitchMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSwitchMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSwitchMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSwitchMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSwitchMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSwitchMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSwitchMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSwitchMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSwitchMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSwitchMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSwitchMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSwitchMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSwitchMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSwitchMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSwitchMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSwitchMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSwitchMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSwitchMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSwitchMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSwitchMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSwitchMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSwitchMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSwitchMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSwitchMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSwitchMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSwitchMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSwitchMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSwitchMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSwitchMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSwitchMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSwitchMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSwitchMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSwitchMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSwitchMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSwitchMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSwitchMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSwitchMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSwitchMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSwitchMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSwitchMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSwitchMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSwitchMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSwitchMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSwitchMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSwitchMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSwitchMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSwitchMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSwitchMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSwitchMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSwitchMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSwitchMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSwitchMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSwitchMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSwitchMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSwitchMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveSwitchMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSwitchMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSwitchMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSwitchMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSwitchMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSwitchMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSwitchMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSwitchMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSwitchMethod "getState" o = SwitchGetStateMethodInfo
    ResolveSwitchMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSwitchMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSwitchMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSwitchMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSwitchMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSwitchMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSwitchMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSwitchMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSwitchMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSwitchMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveSwitchMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSwitchMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSwitchMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSwitchMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSwitchMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSwitchMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSwitchMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSwitchMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSwitchMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveSwitchMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveSwitchMethod "setActive" o = SwitchSetActiveMethodInfo
    ResolveSwitchMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSwitchMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSwitchMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSwitchMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSwitchMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSwitchMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSwitchMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSwitchMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSwitchMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSwitchMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSwitchMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveSwitchMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSwitchMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSwitchMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSwitchMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSwitchMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSwitchMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSwitchMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSwitchMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSwitchMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSwitchMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSwitchMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSwitchMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSwitchMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSwitchMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSwitchMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSwitchMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSwitchMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSwitchMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSwitchMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSwitchMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSwitchMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSwitchMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSwitchMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSwitchMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSwitchMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSwitchMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSwitchMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSwitchMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSwitchMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSwitchMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveSwitchMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSwitchMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSwitchMethod "setState" o = SwitchSetStateMethodInfo
    ResolveSwitchMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSwitchMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSwitchMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSwitchMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSwitchMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSwitchMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSwitchMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveSwitchMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSwitchMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSwitchMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSwitchMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSwitchMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSwitchMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSwitchMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSwitchMethod t Switch, O.MethodInfo info Switch p) => OL.IsLabel t (Switch -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Switch::activate
-- | The [activate](#signal:activate) signal on GtkSwitch is an action signal and
-- emitting it causes the switch to animate.
-- Applications should never connect to this signal, but use the
-- notify[active](#signal:active) signal.
type SwitchActivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SwitchActivateCallback`@.
noSwitchActivateCallback :: Maybe SwitchActivateCallback
noSwitchActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SwitchActivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SwitchActivateCallback`.
foreign import ccall "wrapper"
    mk_SwitchActivateCallback :: C_SwitchActivateCallback -> IO (FunPtr C_SwitchActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SwitchActivate :: MonadIO m => SwitchActivateCallback -> m (GClosure C_SwitchActivateCallback)
genClosure_SwitchActivate cb = liftIO $ do
    let cb' = wrap_SwitchActivateCallback cb
    mk_SwitchActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SwitchActivateCallback` into a `C_SwitchActivateCallback`.
wrap_SwitchActivateCallback ::
    SwitchActivateCallback ->
    C_SwitchActivateCallback
wrap_SwitchActivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' switch #activate callback
-- @
-- 
-- 
onSwitchActivate :: (IsSwitch a, MonadIO m) => a -> SwitchActivateCallback -> m SignalHandlerId
onSwitchActivate obj cb = liftIO $ do
    let cb' = wrap_SwitchActivateCallback cb
    cb'' <- mk_SwitchActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' switch #activate callback
-- @
-- 
-- 
afterSwitchActivate :: (IsSwitch a, MonadIO m) => a -> SwitchActivateCallback -> m SignalHandlerId
afterSwitchActivate obj cb = liftIO $ do
    let cb' = wrap_SwitchActivateCallback cb
    cb'' <- mk_SwitchActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SwitchActivateSignalInfo
instance SignalInfo SwitchActivateSignalInfo where
    type HaskellCallbackType SwitchActivateSignalInfo = SwitchActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SwitchActivateCallback cb
        cb'' <- mk_SwitchActivateCallback cb'
        connectSignalFunPtr obj "activate" cb'' connectMode detail

#endif

-- signal Switch::state-set
-- | The [stateSet](#signal:stateSet) signal on GtkSwitch is emitted to change the underlying
-- state. It is emitted when the user changes the switch position. The
-- default handler keeps the state in sync with the t'GI.Gtk.Objects.Switch.Switch':@/active/@
-- property.
-- 
-- To implement delayed state change, applications can connect to this signal,
-- initiate the change of the underlying state, and call 'GI.Gtk.Objects.Switch.switchSetState'
-- when the underlying state change is complete. The signal handler should
-- return 'P.True' to prevent the default handler from running.
-- 
-- Visually, the underlying state is represented by the trough color of
-- the switch, while the t'GI.Gtk.Objects.Switch.Switch':@/active/@ property is represented by the
-- position of the switch.
-- 
-- /Since: 3.14/
type SwitchStateSetCallback =
    Bool
    -- ^ /@state@/: the new state of the switch
    -> IO Bool
    -- ^ __Returns:__ 'P.True' to stop the signal emission

-- | A convenience synonym for @`Nothing` :: `Maybe` `SwitchStateSetCallback`@.
noSwitchStateSetCallback :: Maybe SwitchStateSetCallback
noSwitchStateSetCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SwitchStateSetCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_SwitchStateSetCallback`.
foreign import ccall "wrapper"
    mk_SwitchStateSetCallback :: C_SwitchStateSetCallback -> IO (FunPtr C_SwitchStateSetCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SwitchStateSet :: MonadIO m => SwitchStateSetCallback -> m (GClosure C_SwitchStateSetCallback)
genClosure_SwitchStateSet cb = liftIO $ do
    let cb' = wrap_SwitchStateSetCallback cb
    mk_SwitchStateSetCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SwitchStateSetCallback` into a `C_SwitchStateSetCallback`.
wrap_SwitchStateSetCallback ::
    SwitchStateSetCallback ->
    C_SwitchStateSetCallback
wrap_SwitchStateSetCallback _cb _ state _ = do
    let state' = (/= 0) state
    result <- _cb  state'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [stateSet](#signal:stateSet) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' switch #stateSet callback
-- @
-- 
-- 
onSwitchStateSet :: (IsSwitch a, MonadIO m) => a -> SwitchStateSetCallback -> m SignalHandlerId
onSwitchStateSet obj cb = liftIO $ do
    let cb' = wrap_SwitchStateSetCallback cb
    cb'' <- mk_SwitchStateSetCallback cb'
    connectSignalFunPtr obj "state-set" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [stateSet](#signal:stateSet) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' switch #stateSet callback
-- @
-- 
-- 
afterSwitchStateSet :: (IsSwitch a, MonadIO m) => a -> SwitchStateSetCallback -> m SignalHandlerId
afterSwitchStateSet obj cb = liftIO $ do
    let cb' = wrap_SwitchStateSetCallback cb
    cb'' <- mk_SwitchStateSetCallback cb'
    connectSignalFunPtr obj "state-set" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SwitchStateSetSignalInfo
instance SignalInfo SwitchStateSetSignalInfo where
    type HaskellCallbackType SwitchStateSetSignalInfo = SwitchStateSetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SwitchStateSetCallback cb
        cb'' <- mk_SwitchStateSetCallback cb'
        connectSignalFunPtr obj "state-set" cb'' connectMode detail

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' switch #active
-- @
getSwitchActive :: (MonadIO m, IsSwitch o) => o -> m Bool
getSwitchActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' switch [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setSwitchActive :: (MonadIO m, IsSwitch o) => o -> Bool -> m ()
setSwitchActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSwitchActive :: (IsSwitch o) => Bool -> IO (GValueConstruct o)
constructSwitchActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data SwitchActivePropertyInfo
instance AttrInfo SwitchActivePropertyInfo where
    type AttrAllowedOps SwitchActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SwitchActivePropertyInfo = IsSwitch
    type AttrSetTypeConstraint SwitchActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SwitchActivePropertyInfo = (~) Bool
    type AttrTransferType SwitchActivePropertyInfo = Bool
    type AttrGetType SwitchActivePropertyInfo = Bool
    type AttrLabel SwitchActivePropertyInfo = "active"
    type AttrOrigin SwitchActivePropertyInfo = Switch
    attrGet = getSwitchActive
    attrSet = setSwitchActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructSwitchActive
    attrClear = undefined
#endif

-- VVV Prop "state"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' switch #state
-- @
getSwitchState :: (MonadIO m, IsSwitch o) => o -> m Bool
getSwitchState obj = liftIO $ B.Properties.getObjectPropertyBool obj "state"

-- | Set the value of the “@state@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' switch [ #state 'Data.GI.Base.Attributes.:=' value ]
-- @
setSwitchState :: (MonadIO m, IsSwitch o) => o -> Bool -> m ()
setSwitchState obj val = liftIO $ B.Properties.setObjectPropertyBool obj "state" val

-- | Construct a `GValueConstruct` with valid value for the “@state@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSwitchState :: (IsSwitch o) => Bool -> IO (GValueConstruct o)
constructSwitchState val = B.Properties.constructObjectPropertyBool "state" val

#if defined(ENABLE_OVERLOADING)
data SwitchStatePropertyInfo
instance AttrInfo SwitchStatePropertyInfo where
    type AttrAllowedOps SwitchStatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SwitchStatePropertyInfo = IsSwitch
    type AttrSetTypeConstraint SwitchStatePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SwitchStatePropertyInfo = (~) Bool
    type AttrTransferType SwitchStatePropertyInfo = Bool
    type AttrGetType SwitchStatePropertyInfo = Bool
    type AttrLabel SwitchStatePropertyInfo = "state"
    type AttrOrigin SwitchStatePropertyInfo = Switch
    attrGet = getSwitchState
    attrSet = setSwitchState
    attrTransfer _ v = do
        return v
    attrConstruct = constructSwitchState
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Switch
type instance O.AttributeList Switch = SwitchAttributeList
type SwitchAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", SwitchActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("state", SwitchStatePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
switchActive :: AttrLabelProxy "active"
switchActive = AttrLabelProxy

switchState :: AttrLabelProxy "state"
switchState = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Switch = SwitchSignalList
type SwitchSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", SwitchActivateSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("stateSet", SwitchStateSetSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Switch::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Switch" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_switch_new" gtk_switch_new :: 
    IO (Ptr Switch)

-- | Creates a new t'GI.Gtk.Objects.Switch.Switch' widget.
-- 
-- /Since: 3.0/
switchNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Switch
    -- ^ __Returns:__ the newly created t'GI.Gtk.Objects.Switch.Switch' instance
switchNew  = liftIO $ do
    result <- gtk_switch_new
    checkUnexpectedReturnNULL "switchNew" result
    result' <- (newObject Switch) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Switch::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sw"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Switch" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSwitch" , sinceVersion = Nothing }
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

foreign import ccall "gtk_switch_get_active" gtk_switch_get_active :: 
    Ptr Switch ->                           -- sw : TInterface (Name {namespace = "Gtk", name = "Switch"})
    IO CInt

-- | Gets whether the t'GI.Gtk.Objects.Switch.Switch' is in its “on” or “off” state.
-- 
-- /Since: 3.0/
switchGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsSwitch a) =>
    a
    -- ^ /@sw@/: a t'GI.Gtk.Objects.Switch.Switch'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the t'GI.Gtk.Objects.Switch.Switch' is active, and 'P.False' otherwise
switchGetActive sw = liftIO $ do
    sw' <- unsafeManagedPtrCastPtr sw
    result <- gtk_switch_get_active sw'
    let result' = (/= 0) result
    touchManagedPtr sw
    return result'

#if defined(ENABLE_OVERLOADING)
data SwitchGetActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSwitch a) => O.MethodInfo SwitchGetActiveMethodInfo a signature where
    overloadedMethod = switchGetActive

#endif

-- method Switch::get_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sw"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Switch" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSwitch" , sinceVersion = Nothing }
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

foreign import ccall "gtk_switch_get_state" gtk_switch_get_state :: 
    Ptr Switch ->                           -- sw : TInterface (Name {namespace = "Gtk", name = "Switch"})
    IO CInt

-- | Gets the underlying state of the t'GI.Gtk.Objects.Switch.Switch'.
-- 
-- /Since: 3.14/
switchGetState ::
    (B.CallStack.HasCallStack, MonadIO m, IsSwitch a) =>
    a
    -- ^ /@sw@/: a t'GI.Gtk.Objects.Switch.Switch'
    -> m Bool
    -- ^ __Returns:__ the underlying state
switchGetState sw = liftIO $ do
    sw' <- unsafeManagedPtrCastPtr sw
    result <- gtk_switch_get_state sw'
    let result' = (/= 0) result
    touchManagedPtr sw
    return result'

#if defined(ENABLE_OVERLOADING)
data SwitchGetStateMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSwitch a) => O.MethodInfo SwitchGetStateMethodInfo a signature where
    overloadedMethod = switchGetState

#endif

-- method Switch::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sw"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Switch" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSwitch" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "%TRUE if @sw should be active, and %FALSE otherwise"
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

foreign import ccall "gtk_switch_set_active" gtk_switch_set_active :: 
    Ptr Switch ->                           -- sw : TInterface (Name {namespace = "Gtk", name = "Switch"})
    CInt ->                                 -- is_active : TBasicType TBoolean
    IO ()

-- | Changes the state of /@sw@/ to the desired one.
-- 
-- /Since: 3.0/
switchSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsSwitch a) =>
    a
    -- ^ /@sw@/: a t'GI.Gtk.Objects.Switch.Switch'
    -> Bool
    -- ^ /@isActive@/: 'P.True' if /@sw@/ should be active, and 'P.False' otherwise
    -> m ()
switchSetActive sw isActive = liftIO $ do
    sw' <- unsafeManagedPtrCastPtr sw
    let isActive' = (fromIntegral . fromEnum) isActive
    gtk_switch_set_active sw' isActive'
    touchManagedPtr sw
    return ()

#if defined(ENABLE_OVERLOADING)
data SwitchSetActiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSwitch a) => O.MethodInfo SwitchSetActiveMethodInfo a signature where
    overloadedMethod = switchSetActive

#endif

-- method Switch::set_state
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "sw"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Switch" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSwitch" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "state"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new state" , sinceVersion = Nothing }
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

foreign import ccall "gtk_switch_set_state" gtk_switch_set_state :: 
    Ptr Switch ->                           -- sw : TInterface (Name {namespace = "Gtk", name = "Switch"})
    CInt ->                                 -- state : TBasicType TBoolean
    IO ()

-- | Sets the underlying state of the t'GI.Gtk.Objects.Switch.Switch'.
-- 
-- Normally, this is the same as t'GI.Gtk.Objects.Switch.Switch':@/active/@, unless the switch
-- is set up for delayed state changes. This function is typically
-- called from a [stateSet]("GI.Gtk.Objects.Switch#signal:stateSet") signal handler.
-- 
-- See [stateSet]("GI.Gtk.Objects.Switch#signal:stateSet") for details.
-- 
-- /Since: 3.14/
switchSetState ::
    (B.CallStack.HasCallStack, MonadIO m, IsSwitch a) =>
    a
    -- ^ /@sw@/: a t'GI.Gtk.Objects.Switch.Switch'
    -> Bool
    -- ^ /@state@/: the new state
    -> m ()
switchSetState sw state = liftIO $ do
    sw' <- unsafeManagedPtrCastPtr sw
    let state' = (fromIntegral . fromEnum) state
    gtk_switch_set_state sw' state'
    touchManagedPtr sw
    return ()

#if defined(ENABLE_OVERLOADING)
data SwitchSetStateMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSwitch a) => O.MethodInfo SwitchSetStateMethodInfo a signature where
    overloadedMethod = switchSetState

#endif

