{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.EventBox.EventBox' widget is a subclass of t'GI.Gtk.Objects.Bin.Bin' which also has its
-- own window. It is useful since it allows you to catch events for widgets
-- which do not have their own window.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.EventBox
    ( 

-- * Exported types
    EventBox(..)                            ,
    IsEventBox                              ,
    toEventBox                              ,
    noEventBox                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveEventBoxMethod                   ,
#endif


-- ** getAboveChild #method:getAboveChild#

#if defined(ENABLE_OVERLOADING)
    EventBoxGetAboveChildMethodInfo         ,
#endif
    eventBoxGetAboveChild                   ,


-- ** getVisibleWindow #method:getVisibleWindow#

#if defined(ENABLE_OVERLOADING)
    EventBoxGetVisibleWindowMethodInfo      ,
#endif
    eventBoxGetVisibleWindow                ,


-- ** new #method:new#

    eventBoxNew                             ,


-- ** setAboveChild #method:setAboveChild#

#if defined(ENABLE_OVERLOADING)
    EventBoxSetAboveChildMethodInfo         ,
#endif
    eventBoxSetAboveChild                   ,


-- ** setVisibleWindow #method:setVisibleWindow#

#if defined(ENABLE_OVERLOADING)
    EventBoxSetVisibleWindowMethodInfo      ,
#endif
    eventBoxSetVisibleWindow                ,




 -- * Properties
-- ** aboveChild #attr:aboveChild#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    EventBoxAboveChildPropertyInfo          ,
#endif
    constructEventBoxAboveChild             ,
#if defined(ENABLE_OVERLOADING)
    eventBoxAboveChild                      ,
#endif
    getEventBoxAboveChild                   ,
    setEventBoxAboveChild                   ,


-- ** visibleWindow #attr:visibleWindow#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    EventBoxVisibleWindowPropertyInfo       ,
#endif
    constructEventBoxVisibleWindow          ,
#if defined(ENABLE_OVERLOADING)
    eventBoxVisibleWindow                   ,
#endif
    getEventBoxVisibleWindow                ,
    setEventBoxVisibleWindow                ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype EventBox = EventBox (ManagedPtr EventBox)
    deriving (Eq)
foreign import ccall "gtk_event_box_get_type"
    c_gtk_event_box_get_type :: IO GType

instance GObject EventBox where
    gobjectType = c_gtk_event_box_get_type
    

-- | Convert 'EventBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue EventBox where
    toGValue o = do
        gtype <- c_gtk_event_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr EventBox)
        B.ManagedPtr.newObject EventBox ptr
        
    

-- | Type class for types which can be safely cast to `EventBox`, for instance with `toEventBox`.
class (GObject o, O.IsDescendantOf EventBox o) => IsEventBox o
instance (GObject o, O.IsDescendantOf EventBox o) => IsEventBox o

instance O.HasParentTypes EventBox
type instance O.ParentTypes EventBox = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `EventBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toEventBox :: (MonadIO m, IsEventBox o) => o -> m EventBox
toEventBox = liftIO . unsafeCastTo EventBox

-- | A convenience alias for `Nothing` :: `Maybe` `EventBox`.
noEventBox :: Maybe EventBox
noEventBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveEventBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveEventBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveEventBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveEventBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveEventBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveEventBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveEventBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveEventBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveEventBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveEventBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveEventBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveEventBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveEventBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveEventBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveEventBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveEventBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveEventBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveEventBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveEventBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveEventBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveEventBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveEventBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveEventBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveEventBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveEventBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveEventBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveEventBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveEventBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveEventBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveEventBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveEventBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveEventBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveEventBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveEventBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveEventBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveEventBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveEventBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveEventBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveEventBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveEventBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveEventBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveEventBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveEventBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveEventBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveEventBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveEventBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveEventBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveEventBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveEventBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveEventBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveEventBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveEventBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveEventBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveEventBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveEventBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveEventBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveEventBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveEventBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveEventBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveEventBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveEventBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveEventBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveEventBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveEventBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveEventBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveEventBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveEventBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveEventBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveEventBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveEventBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveEventBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveEventBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveEventBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveEventBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveEventBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveEventBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveEventBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveEventBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveEventBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveEventBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveEventBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveEventBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveEventBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveEventBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveEventBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveEventBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveEventBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveEventBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveEventBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveEventBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveEventBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveEventBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveEventBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveEventBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveEventBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveEventBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveEventBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveEventBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveEventBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveEventBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveEventBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveEventBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveEventBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveEventBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveEventBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveEventBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveEventBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveEventBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveEventBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveEventBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveEventBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveEventBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveEventBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveEventBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveEventBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveEventBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveEventBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveEventBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveEventBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveEventBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveEventBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveEventBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveEventBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveEventBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveEventBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveEventBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveEventBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveEventBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveEventBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveEventBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveEventBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveEventBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveEventBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveEventBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveEventBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveEventBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveEventBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveEventBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveEventBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveEventBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveEventBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveEventBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveEventBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveEventBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveEventBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveEventBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveEventBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveEventBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveEventBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveEventBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveEventBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveEventBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveEventBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveEventBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveEventBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveEventBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveEventBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveEventBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveEventBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveEventBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveEventBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveEventBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveEventBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveEventBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveEventBoxMethod "getAboveChild" o = EventBoxGetAboveChildMethodInfo
    ResolveEventBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveEventBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveEventBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveEventBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveEventBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveEventBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveEventBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveEventBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveEventBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveEventBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveEventBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveEventBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveEventBoxMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveEventBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveEventBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveEventBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveEventBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveEventBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveEventBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveEventBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveEventBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveEventBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveEventBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveEventBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveEventBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveEventBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveEventBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveEventBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveEventBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveEventBoxMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveEventBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveEventBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveEventBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveEventBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveEventBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveEventBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveEventBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveEventBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveEventBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveEventBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveEventBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveEventBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveEventBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveEventBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveEventBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveEventBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveEventBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveEventBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveEventBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveEventBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveEventBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveEventBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveEventBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveEventBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveEventBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveEventBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveEventBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveEventBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveEventBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveEventBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveEventBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveEventBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveEventBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveEventBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveEventBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveEventBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveEventBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveEventBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveEventBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveEventBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveEventBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveEventBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveEventBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveEventBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveEventBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveEventBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveEventBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveEventBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveEventBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveEventBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveEventBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveEventBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveEventBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveEventBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveEventBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveEventBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveEventBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveEventBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveEventBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveEventBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveEventBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveEventBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveEventBoxMethod "getVisibleWindow" o = EventBoxGetVisibleWindowMethodInfo
    ResolveEventBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveEventBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveEventBoxMethod "setAboveChild" o = EventBoxSetAboveChildMethodInfo
    ResolveEventBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveEventBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveEventBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveEventBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveEventBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveEventBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveEventBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveEventBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveEventBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveEventBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveEventBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveEventBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveEventBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveEventBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveEventBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveEventBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveEventBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveEventBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveEventBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveEventBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveEventBoxMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveEventBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveEventBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveEventBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveEventBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveEventBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveEventBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveEventBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveEventBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveEventBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveEventBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveEventBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveEventBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveEventBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveEventBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveEventBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveEventBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveEventBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveEventBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveEventBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveEventBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveEventBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveEventBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveEventBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveEventBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveEventBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveEventBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveEventBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveEventBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveEventBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveEventBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveEventBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveEventBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveEventBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveEventBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveEventBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveEventBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveEventBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveEventBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveEventBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveEventBoxMethod "setVisibleWindow" o = EventBoxSetVisibleWindowMethodInfo
    ResolveEventBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveEventBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveEventBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveEventBoxMethod t EventBox, O.MethodInfo info EventBox p) => OL.IsLabel t (EventBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "above-child"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@above-child@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' eventBox #aboveChild
-- @
getEventBoxAboveChild :: (MonadIO m, IsEventBox o) => o -> m Bool
getEventBoxAboveChild obj = liftIO $ B.Properties.getObjectPropertyBool obj "above-child"

-- | Set the value of the “@above-child@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' eventBox [ #aboveChild 'Data.GI.Base.Attributes.:=' value ]
-- @
setEventBoxAboveChild :: (MonadIO m, IsEventBox o) => o -> Bool -> m ()
setEventBoxAboveChild obj val = liftIO $ B.Properties.setObjectPropertyBool obj "above-child" val

-- | Construct a `GValueConstruct` with valid value for the “@above-child@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEventBoxAboveChild :: (IsEventBox o) => Bool -> IO (GValueConstruct o)
constructEventBoxAboveChild val = B.Properties.constructObjectPropertyBool "above-child" val

#if defined(ENABLE_OVERLOADING)
data EventBoxAboveChildPropertyInfo
instance AttrInfo EventBoxAboveChildPropertyInfo where
    type AttrAllowedOps EventBoxAboveChildPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint EventBoxAboveChildPropertyInfo = IsEventBox
    type AttrSetTypeConstraint EventBoxAboveChildPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint EventBoxAboveChildPropertyInfo = (~) Bool
    type AttrTransferType EventBoxAboveChildPropertyInfo = Bool
    type AttrGetType EventBoxAboveChildPropertyInfo = Bool
    type AttrLabel EventBoxAboveChildPropertyInfo = "above-child"
    type AttrOrigin EventBoxAboveChildPropertyInfo = EventBox
    attrGet = getEventBoxAboveChild
    attrSet = setEventBoxAboveChild
    attrTransfer _ v = do
        return v
    attrConstruct = constructEventBoxAboveChild
    attrClear = undefined
#endif

-- VVV Prop "visible-window"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible-window@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' eventBox #visibleWindow
-- @
getEventBoxVisibleWindow :: (MonadIO m, IsEventBox o) => o -> m Bool
getEventBoxVisibleWindow obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-window"

-- | Set the value of the “@visible-window@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' eventBox [ #visibleWindow 'Data.GI.Base.Attributes.:=' value ]
-- @
setEventBoxVisibleWindow :: (MonadIO m, IsEventBox o) => o -> Bool -> m ()
setEventBoxVisibleWindow obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-window" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-window@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructEventBoxVisibleWindow :: (IsEventBox o) => Bool -> IO (GValueConstruct o)
constructEventBoxVisibleWindow val = B.Properties.constructObjectPropertyBool "visible-window" val

#if defined(ENABLE_OVERLOADING)
data EventBoxVisibleWindowPropertyInfo
instance AttrInfo EventBoxVisibleWindowPropertyInfo where
    type AttrAllowedOps EventBoxVisibleWindowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint EventBoxVisibleWindowPropertyInfo = IsEventBox
    type AttrSetTypeConstraint EventBoxVisibleWindowPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint EventBoxVisibleWindowPropertyInfo = (~) Bool
    type AttrTransferType EventBoxVisibleWindowPropertyInfo = Bool
    type AttrGetType EventBoxVisibleWindowPropertyInfo = Bool
    type AttrLabel EventBoxVisibleWindowPropertyInfo = "visible-window"
    type AttrOrigin EventBoxVisibleWindowPropertyInfo = EventBox
    attrGet = getEventBoxVisibleWindow
    attrSet = setEventBoxVisibleWindow
    attrTransfer _ v = do
        return v
    attrConstruct = constructEventBoxVisibleWindow
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList EventBox
type instance O.AttributeList EventBox = EventBoxAttributeList
type EventBoxAttributeList = ('[ '("aboveChild", EventBoxAboveChildPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleWindow", EventBoxVisibleWindowPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
eventBoxAboveChild :: AttrLabelProxy "aboveChild"
eventBoxAboveChild = AttrLabelProxy

eventBoxVisibleWindow :: AttrLabelProxy "visibleWindow"
eventBoxVisibleWindow = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList EventBox = EventBoxSignalList
type EventBoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method EventBox::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "EventBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_event_box_new" gtk_event_box_new :: 
    IO (Ptr EventBox)

-- | Creates a new t'GI.Gtk.Objects.EventBox.EventBox'.
eventBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m EventBox
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.EventBox.EventBox'
eventBoxNew  = liftIO $ do
    result <- gtk_event_box_new
    checkUnexpectedReturnNULL "eventBoxNew" result
    result' <- (newObject EventBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method EventBox::get_above_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "event_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_event_box_get_above_child" gtk_event_box_get_above_child :: 
    Ptr EventBox ->                         -- event_box : TInterface (Name {namespace = "Gtk", name = "EventBox"})
    IO CInt

-- | Returns whether the event box window is above or below the
-- windows of its child. See 'GI.Gtk.Objects.EventBox.eventBoxSetAboveChild'
-- for details.
-- 
-- /Since: 2.4/
eventBoxGetAboveChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventBox a) =>
    a
    -- ^ /@eventBox@/: a t'GI.Gtk.Objects.EventBox.EventBox'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the event box window is above the
    --     window of its child
eventBoxGetAboveChild eventBox = liftIO $ do
    eventBox' <- unsafeManagedPtrCastPtr eventBox
    result <- gtk_event_box_get_above_child eventBox'
    let result' = (/= 0) result
    touchManagedPtr eventBox
    return result'

#if defined(ENABLE_OVERLOADING)
data EventBoxGetAboveChildMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEventBox a) => O.MethodInfo EventBoxGetAboveChildMethodInfo a signature where
    overloadedMethod = eventBoxGetAboveChild

#endif

-- method EventBox::get_visible_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "event_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_event_box_get_visible_window" gtk_event_box_get_visible_window :: 
    Ptr EventBox ->                         -- event_box : TInterface (Name {namespace = "Gtk", name = "EventBox"})
    IO CInt

-- | Returns whether the event box has a visible window.
-- See 'GI.Gtk.Objects.EventBox.eventBoxSetVisibleWindow' for details.
-- 
-- /Since: 2.4/
eventBoxGetVisibleWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventBox a) =>
    a
    -- ^ /@eventBox@/: a t'GI.Gtk.Objects.EventBox.EventBox'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the event box window is visible
eventBoxGetVisibleWindow eventBox = liftIO $ do
    eventBox' <- unsafeManagedPtrCastPtr eventBox
    result <- gtk_event_box_get_visible_window eventBox'
    let result' = (/= 0) result
    touchManagedPtr eventBox
    return result'

#if defined(ENABLE_OVERLOADING)
data EventBoxGetVisibleWindowMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsEventBox a) => O.MethodInfo EventBoxGetVisibleWindowMethodInfo a signature where
    overloadedMethod = eventBoxGetVisibleWindow

#endif

-- method EventBox::set_above_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "event_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "above_child"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if the event box window is above its child"
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

foreign import ccall "gtk_event_box_set_above_child" gtk_event_box_set_above_child :: 
    Ptr EventBox ->                         -- event_box : TInterface (Name {namespace = "Gtk", name = "EventBox"})
    CInt ->                                 -- above_child : TBasicType TBoolean
    IO ()

-- | Set whether the event box window is positioned above the windows
-- of its child, as opposed to below it. If the window is above, all
-- events inside the event box will go to the event box. If the window
-- is below, events in windows of child widgets will first got to that
-- widget, and then to its parents.
-- 
-- The default is to keep the window below the child.
-- 
-- /Since: 2.4/
eventBoxSetAboveChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventBox a) =>
    a
    -- ^ /@eventBox@/: a t'GI.Gtk.Objects.EventBox.EventBox'
    -> Bool
    -- ^ /@aboveChild@/: 'P.True' if the event box window is above its child
    -> m ()
eventBoxSetAboveChild eventBox aboveChild = liftIO $ do
    eventBox' <- unsafeManagedPtrCastPtr eventBox
    let aboveChild' = (fromIntegral . fromEnum) aboveChild
    gtk_event_box_set_above_child eventBox' aboveChild'
    touchManagedPtr eventBox
    return ()

#if defined(ENABLE_OVERLOADING)
data EventBoxSetAboveChildMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsEventBox a) => O.MethodInfo EventBoxSetAboveChildMethodInfo a signature where
    overloadedMethod = eventBoxSetAboveChild

#endif

-- method EventBox::set_visible_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "event_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "EventBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEventBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible_window"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to make the event box have a visible window"
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

foreign import ccall "gtk_event_box_set_visible_window" gtk_event_box_set_visible_window :: 
    Ptr EventBox ->                         -- event_box : TInterface (Name {namespace = "Gtk", name = "EventBox"})
    CInt ->                                 -- visible_window : TBasicType TBoolean
    IO ()

-- | Set whether the event box uses a visible or invisible child
-- window. The default is to use visible windows.
-- 
-- In an invisible window event box, the window that the
-- event box creates is a 'GI.Gdk.Enums.WindowWindowClassInputOnly' window, which
-- means that it is invisible and only serves to receive
-- events.
-- 
-- A visible window event box creates a visible ('GI.Gdk.Enums.WindowWindowClassInputOutput')
-- window that acts as the parent window for all the widgets
-- contained in the event box.
-- 
-- You should generally make your event box invisible if
-- you just want to trap events. Creating a visible window
-- may cause artifacts that are visible to the user, especially
-- if the user is using a theme with gradients or pixmaps.
-- 
-- The main reason to create a non input-only event box is if
-- you want to set the background to a different color or
-- draw on it.
-- 
-- There is one unexpected issue for an invisible event box that has its
-- window below the child. (See 'GI.Gtk.Objects.EventBox.eventBoxSetAboveChild'.)
-- Since the input-only window is not an ancestor window of any windows
-- that descendent widgets of the event box create, events on these
-- windows aren’t propagated up by the windowing system, but only by GTK+.
-- The practical effect of this is if an event isn’t in the event
-- mask for the descendant window (see 'GI.Gtk.Objects.Widget.widgetAddEvents'),
-- it won’t be received by the event box.
-- 
-- This problem doesn’t occur for visible event boxes, because in
-- that case, the event box window is actually the ancestor of the
-- descendant windows, not just at the same place on the screen.
-- 
-- /Since: 2.4/
eventBoxSetVisibleWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsEventBox a) =>
    a
    -- ^ /@eventBox@/: a t'GI.Gtk.Objects.EventBox.EventBox'
    -> Bool
    -- ^ /@visibleWindow@/: 'P.True' to make the event box have a visible window
    -> m ()
eventBoxSetVisibleWindow eventBox visibleWindow = liftIO $ do
    eventBox' <- unsafeManagedPtrCastPtr eventBox
    let visibleWindow' = (fromIntegral . fromEnum) visibleWindow
    gtk_event_box_set_visible_window eventBox' visibleWindow'
    touchManagedPtr eventBox
    return ()

#if defined(ENABLE_OVERLOADING)
data EventBoxSetVisibleWindowMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsEventBox a) => O.MethodInfo EventBoxSetVisibleWindowMethodInfo a signature where
    overloadedMethod = eventBoxSetVisibleWindow

#endif

