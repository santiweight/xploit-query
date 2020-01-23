{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.HandleBox.HandleBox' widget allows a portion of a window to be \"torn
-- off\". It is a bin widget which displays its child and a handle that
-- the user can drag to tear off a separate window (the “float
-- window”) containing the child widget. A thin
-- “ghost” is drawn in the original location of the
-- handlebox. By dragging the separate window back to its original
-- location, it can be reattached.
-- 
-- When reattaching, the ghost and float window, must be aligned
-- along one of the edges, the “snap edge”.
-- This either can be specified by the application programmer
-- explicitly, or GTK+ will pick a reasonable default based
-- on the handle position.
-- 
-- To make detaching and reattaching the handlebox as minimally confusing
-- as possible to the user, it is important to set the snap edge so that
-- the snap edge does not move when the handlebox is deattached. For
-- instance, if the handlebox is packed at the bottom of a VBox, then
-- when the handlebox is detached, the bottom edge of the handlebox\'s
-- allocation will remain fixed as the height of the handlebox shrinks,
-- so the snap edge should be set to 'GI.Gtk.Enums.PositionTypeBottom'.
-- 
-- > t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated. It is very specialized, lacks features
-- > to make it useful and most importantly does not fit well into modern
-- > application design. Do not use it. There is no replacement.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HandleBox
    ( 

-- * Exported types
    HandleBox(..)                           ,
    IsHandleBox                             ,
    toHandleBox                             ,
    noHandleBox                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHandleBoxMethod                  ,
#endif


-- ** getChildDetached #method:getChildDetached#

#if defined(ENABLE_OVERLOADING)
    HandleBoxGetChildDetachedMethodInfo     ,
#endif
    handleBoxGetChildDetached               ,


-- ** getHandlePosition #method:getHandlePosition#

#if defined(ENABLE_OVERLOADING)
    HandleBoxGetHandlePositionMethodInfo    ,
#endif
    handleBoxGetHandlePosition              ,


-- ** getShadowType #method:getShadowType#

#if defined(ENABLE_OVERLOADING)
    HandleBoxGetShadowTypeMethodInfo        ,
#endif
    handleBoxGetShadowType                  ,


-- ** getSnapEdge #method:getSnapEdge#

#if defined(ENABLE_OVERLOADING)
    HandleBoxGetSnapEdgeMethodInfo          ,
#endif
    handleBoxGetSnapEdge                    ,


-- ** new #method:new#

    handleBoxNew                            ,


-- ** setHandlePosition #method:setHandlePosition#

#if defined(ENABLE_OVERLOADING)
    HandleBoxSetHandlePositionMethodInfo    ,
#endif
    handleBoxSetHandlePosition              ,


-- ** setShadowType #method:setShadowType#

#if defined(ENABLE_OVERLOADING)
    HandleBoxSetShadowTypeMethodInfo        ,
#endif
    handleBoxSetShadowType                  ,


-- ** setSnapEdge #method:setSnapEdge#

#if defined(ENABLE_OVERLOADING)
    HandleBoxSetSnapEdgeMethodInfo          ,
#endif
    handleBoxSetSnapEdge                    ,




 -- * Properties
-- ** childDetached #attr:childDetached#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HandleBoxChildDetachedPropertyInfo      ,
#endif
    getHandleBoxChildDetached               ,
#if defined(ENABLE_OVERLOADING)
    handleBoxChildDetached                  ,
#endif


-- ** handlePosition #attr:handlePosition#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HandleBoxHandlePositionPropertyInfo     ,
#endif
    constructHandleBoxHandlePosition        ,
    getHandleBoxHandlePosition              ,
#if defined(ENABLE_OVERLOADING)
    handleBoxHandlePosition                 ,
#endif
    setHandleBoxHandlePosition              ,


-- ** shadowType #attr:shadowType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HandleBoxShadowTypePropertyInfo         ,
#endif
    constructHandleBoxShadowType            ,
    getHandleBoxShadowType                  ,
#if defined(ENABLE_OVERLOADING)
    handleBoxShadowType                     ,
#endif
    setHandleBoxShadowType                  ,


-- ** snapEdge #attr:snapEdge#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HandleBoxSnapEdgePropertyInfo           ,
#endif
    constructHandleBoxSnapEdge              ,
    getHandleBoxSnapEdge                    ,
#if defined(ENABLE_OVERLOADING)
    handleBoxSnapEdge                       ,
#endif
    setHandleBoxSnapEdge                    ,


-- ** snapEdgeSet #attr:snapEdgeSet#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HandleBoxSnapEdgeSetPropertyInfo        ,
#endif
    constructHandleBoxSnapEdgeSet           ,
    getHandleBoxSnapEdgeSet                 ,
#if defined(ENABLE_OVERLOADING)
    handleBoxSnapEdgeSet                    ,
#endif
    setHandleBoxSnapEdgeSet                 ,




 -- * Signals
-- ** childAttached #signal:childAttached#

    C_HandleBoxChildAttachedCallback        ,
    HandleBoxChildAttachedCallback          ,
#if defined(ENABLE_OVERLOADING)
    HandleBoxChildAttachedSignalInfo        ,
#endif
    afterHandleBoxChildAttached             ,
    genClosure_HandleBoxChildAttached       ,
    mk_HandleBoxChildAttachedCallback       ,
    noHandleBoxChildAttachedCallback        ,
    onHandleBoxChildAttached                ,
    wrap_HandleBoxChildAttachedCallback     ,


-- ** childDetached #signal:childDetached#

    C_HandleBoxChildDetachedCallback        ,
    HandleBoxChildDetachedCallback          ,
#if defined(ENABLE_OVERLOADING)
    HandleBoxChildDetachedSignalInfo        ,
#endif
    afterHandleBoxChildDetached             ,
    genClosure_HandleBoxChildDetached       ,
    mk_HandleBoxChildDetachedCallback       ,
    noHandleBoxChildDetachedCallback        ,
    onHandleBoxChildDetached                ,
    wrap_HandleBoxChildDetachedCallback     ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HandleBox = HandleBox (ManagedPtr HandleBox)
    deriving (Eq)
foreign import ccall "gtk_handle_box_get_type"
    c_gtk_handle_box_get_type :: IO GType

instance GObject HandleBox where
    gobjectType = c_gtk_handle_box_get_type
    

-- | Convert 'HandleBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HandleBox where
    toGValue o = do
        gtype <- c_gtk_handle_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HandleBox)
        B.ManagedPtr.newObject HandleBox ptr
        
    

-- | Type class for types which can be safely cast to `HandleBox`, for instance with `toHandleBox`.
class (GObject o, O.IsDescendantOf HandleBox o) => IsHandleBox o
instance (GObject o, O.IsDescendantOf HandleBox o) => IsHandleBox o

instance O.HasParentTypes HandleBox
type instance O.ParentTypes HandleBox = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `HandleBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHandleBox :: (MonadIO m, IsHandleBox o) => o -> m HandleBox
toHandleBox = liftIO . unsafeCastTo HandleBox

-- | A convenience alias for `Nothing` :: `Maybe` `HandleBox`.
noHandleBox :: Maybe HandleBox
noHandleBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHandleBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveHandleBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHandleBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveHandleBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHandleBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHandleBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHandleBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHandleBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHandleBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHandleBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHandleBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHandleBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHandleBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveHandleBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHandleBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveHandleBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveHandleBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveHandleBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveHandleBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveHandleBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHandleBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHandleBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHandleBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHandleBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHandleBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHandleBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHandleBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHandleBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHandleBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHandleBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHandleBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHandleBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHandleBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHandleBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHandleBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHandleBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHandleBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHandleBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHandleBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHandleBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHandleBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHandleBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHandleBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHandleBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHandleBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHandleBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHandleBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHandleBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHandleBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHandleBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHandleBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHandleBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHandleBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHandleBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHandleBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHandleBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHandleBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHandleBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHandleBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHandleBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHandleBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHandleBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHandleBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveHandleBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHandleBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveHandleBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHandleBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHandleBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHandleBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHandleBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHandleBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHandleBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHandleBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHandleBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHandleBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHandleBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHandleBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHandleBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHandleBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHandleBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHandleBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHandleBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHandleBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHandleBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHandleBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHandleBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHandleBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHandleBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHandleBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHandleBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHandleBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHandleBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHandleBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHandleBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHandleBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHandleBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHandleBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHandleBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHandleBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHandleBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHandleBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHandleBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHandleBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHandleBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHandleBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHandleBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHandleBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHandleBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHandleBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHandleBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHandleBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHandleBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHandleBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHandleBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHandleBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHandleBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveHandleBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHandleBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHandleBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHandleBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHandleBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHandleBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHandleBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHandleBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHandleBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHandleBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHandleBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHandleBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHandleBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveHandleBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHandleBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHandleBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHandleBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHandleBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHandleBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHandleBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHandleBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHandleBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveHandleBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHandleBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHandleBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHandleBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHandleBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHandleBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHandleBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHandleBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHandleBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHandleBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHandleBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHandleBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHandleBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHandleBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHandleBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHandleBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHandleBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHandleBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHandleBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHandleBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHandleBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHandleBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHandleBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHandleBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveHandleBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHandleBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHandleBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHandleBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHandleBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHandleBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHandleBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHandleBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHandleBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHandleBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHandleBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHandleBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveHandleBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHandleBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHandleBoxMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveHandleBoxMethod "getChildDetached" o = HandleBoxGetChildDetachedMethodInfo
    ResolveHandleBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHandleBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHandleBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveHandleBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHandleBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHandleBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHandleBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHandleBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHandleBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHandleBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHandleBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHandleBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHandleBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHandleBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveHandleBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveHandleBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveHandleBoxMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHandleBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveHandleBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHandleBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHandleBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHandleBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHandleBoxMethod "getHandlePosition" o = HandleBoxGetHandlePositionMethodInfo
    ResolveHandleBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHandleBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHandleBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHandleBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHandleBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHandleBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHandleBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHandleBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHandleBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHandleBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHandleBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHandleBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHandleBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHandleBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHandleBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHandleBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHandleBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHandleBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHandleBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHandleBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHandleBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHandleBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveHandleBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHandleBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHandleBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHandleBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHandleBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHandleBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHandleBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHandleBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHandleBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHandleBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHandleBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHandleBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHandleBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHandleBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveHandleBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHandleBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHandleBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHandleBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHandleBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHandleBoxMethod "getShadowType" o = HandleBoxGetShadowTypeMethodInfo
    ResolveHandleBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHandleBoxMethod "getSnapEdge" o = HandleBoxGetSnapEdgeMethodInfo
    ResolveHandleBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHandleBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHandleBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHandleBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHandleBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHandleBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHandleBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHandleBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHandleBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHandleBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHandleBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHandleBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHandleBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHandleBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHandleBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHandleBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHandleBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHandleBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHandleBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHandleBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHandleBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveHandleBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHandleBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHandleBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHandleBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHandleBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHandleBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHandleBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHandleBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHandleBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHandleBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHandleBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHandleBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHandleBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHandleBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveHandleBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveHandleBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveHandleBoxMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHandleBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveHandleBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHandleBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHandleBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHandleBoxMethod "setHandlePosition" o = HandleBoxSetHandlePositionMethodInfo
    ResolveHandleBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHandleBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHandleBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHandleBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHandleBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHandleBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHandleBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHandleBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHandleBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHandleBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHandleBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHandleBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHandleBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHandleBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHandleBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHandleBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHandleBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHandleBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHandleBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveHandleBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHandleBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHandleBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveHandleBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHandleBoxMethod "setShadowType" o = HandleBoxSetShadowTypeMethodInfo
    ResolveHandleBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHandleBoxMethod "setSnapEdge" o = HandleBoxSetSnapEdgeMethodInfo
    ResolveHandleBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHandleBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHandleBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHandleBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHandleBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHandleBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHandleBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHandleBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHandleBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHandleBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHandleBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHandleBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHandleBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHandleBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHandleBoxMethod t HandleBox, O.MethodInfo info HandleBox p) => OL.IsLabel t (HandleBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal HandleBox::child-attached
{-# DEPRECATED HandleBoxChildAttachedCallback ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | This signal is emitted when the contents of the
-- handlebox are reattached to the main window.
type HandleBoxChildAttachedCallback =
    Gtk.Widget.Widget
    -- ^ /@widget@/: the child widget of the handlebox.
    --   (this argument provides no extra information
    --   and is here only for backwards-compatibility)
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `HandleBoxChildAttachedCallback`@.
noHandleBoxChildAttachedCallback :: Maybe HandleBoxChildAttachedCallback
noHandleBoxChildAttachedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_HandleBoxChildAttachedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_HandleBoxChildAttachedCallback`.
foreign import ccall "wrapper"
    mk_HandleBoxChildAttachedCallback :: C_HandleBoxChildAttachedCallback -> IO (FunPtr C_HandleBoxChildAttachedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_HandleBoxChildAttached :: MonadIO m => HandleBoxChildAttachedCallback -> m (GClosure C_HandleBoxChildAttachedCallback)
genClosure_HandleBoxChildAttached cb = liftIO $ do
    let cb' = wrap_HandleBoxChildAttachedCallback cb
    mk_HandleBoxChildAttachedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `HandleBoxChildAttachedCallback` into a `C_HandleBoxChildAttachedCallback`.
wrap_HandleBoxChildAttachedCallback ::
    HandleBoxChildAttachedCallback ->
    C_HandleBoxChildAttachedCallback
wrap_HandleBoxChildAttachedCallback _cb _ widget _ = do
    widget' <- (newObject Gtk.Widget.Widget) widget
    _cb  widget'


-- | Connect a signal handler for the [childAttached](#signal:childAttached) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' handleBox #childAttached callback
-- @
-- 
-- 
onHandleBoxChildAttached :: (IsHandleBox a, MonadIO m) => a -> HandleBoxChildAttachedCallback -> m SignalHandlerId
onHandleBoxChildAttached obj cb = liftIO $ do
    let cb' = wrap_HandleBoxChildAttachedCallback cb
    cb'' <- mk_HandleBoxChildAttachedCallback cb'
    connectSignalFunPtr obj "child-attached" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [childAttached](#signal:childAttached) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' handleBox #childAttached callback
-- @
-- 
-- 
afterHandleBoxChildAttached :: (IsHandleBox a, MonadIO m) => a -> HandleBoxChildAttachedCallback -> m SignalHandlerId
afterHandleBoxChildAttached obj cb = liftIO $ do
    let cb' = wrap_HandleBoxChildAttachedCallback cb
    cb'' <- mk_HandleBoxChildAttachedCallback cb'
    connectSignalFunPtr obj "child-attached" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data HandleBoxChildAttachedSignalInfo
instance SignalInfo HandleBoxChildAttachedSignalInfo where
    type HaskellCallbackType HandleBoxChildAttachedSignalInfo = HandleBoxChildAttachedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_HandleBoxChildAttachedCallback cb
        cb'' <- mk_HandleBoxChildAttachedCallback cb'
        connectSignalFunPtr obj "child-attached" cb'' connectMode detail

#endif

-- signal HandleBox::child-detached
{-# DEPRECATED HandleBoxChildDetachedCallback ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | This signal is emitted when the contents of the
-- handlebox are detached from the main window.
type HandleBoxChildDetachedCallback =
    Gtk.Widget.Widget
    -- ^ /@widget@/: the child widget of the handlebox.
    --   (this argument provides no extra information
    --   and is here only for backwards-compatibility)
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `HandleBoxChildDetachedCallback`@.
noHandleBoxChildDetachedCallback :: Maybe HandleBoxChildDetachedCallback
noHandleBoxChildDetachedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_HandleBoxChildDetachedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_HandleBoxChildDetachedCallback`.
foreign import ccall "wrapper"
    mk_HandleBoxChildDetachedCallback :: C_HandleBoxChildDetachedCallback -> IO (FunPtr C_HandleBoxChildDetachedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_HandleBoxChildDetached :: MonadIO m => HandleBoxChildDetachedCallback -> m (GClosure C_HandleBoxChildDetachedCallback)
genClosure_HandleBoxChildDetached cb = liftIO $ do
    let cb' = wrap_HandleBoxChildDetachedCallback cb
    mk_HandleBoxChildDetachedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `HandleBoxChildDetachedCallback` into a `C_HandleBoxChildDetachedCallback`.
wrap_HandleBoxChildDetachedCallback ::
    HandleBoxChildDetachedCallback ->
    C_HandleBoxChildDetachedCallback
wrap_HandleBoxChildDetachedCallback _cb _ widget _ = do
    widget' <- (newObject Gtk.Widget.Widget) widget
    _cb  widget'


-- | Connect a signal handler for the [childDetached](#signal:childDetached) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' handleBox #childDetached callback
-- @
-- 
-- 
onHandleBoxChildDetached :: (IsHandleBox a, MonadIO m) => a -> HandleBoxChildDetachedCallback -> m SignalHandlerId
onHandleBoxChildDetached obj cb = liftIO $ do
    let cb' = wrap_HandleBoxChildDetachedCallback cb
    cb'' <- mk_HandleBoxChildDetachedCallback cb'
    connectSignalFunPtr obj "child-detached" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [childDetached](#signal:childDetached) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' handleBox #childDetached callback
-- @
-- 
-- 
afterHandleBoxChildDetached :: (IsHandleBox a, MonadIO m) => a -> HandleBoxChildDetachedCallback -> m SignalHandlerId
afterHandleBoxChildDetached obj cb = liftIO $ do
    let cb' = wrap_HandleBoxChildDetachedCallback cb
    cb'' <- mk_HandleBoxChildDetachedCallback cb'
    connectSignalFunPtr obj "child-detached" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data HandleBoxChildDetachedSignalInfo
instance SignalInfo HandleBoxChildDetachedSignalInfo where
    type HaskellCallbackType HandleBoxChildDetachedSignalInfo = HandleBoxChildDetachedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_HandleBoxChildDetachedCallback cb
        cb'' <- mk_HandleBoxChildDetachedCallback cb'
        connectSignalFunPtr obj "child-detached" cb'' connectMode detail

#endif

-- VVV Prop "child-detached"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@child-detached@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' handleBox #childDetached
-- @
getHandleBoxChildDetached :: (MonadIO m, IsHandleBox o) => o -> m Bool
getHandleBoxChildDetached obj = liftIO $ B.Properties.getObjectPropertyBool obj "child-detached"

#if defined(ENABLE_OVERLOADING)
data HandleBoxChildDetachedPropertyInfo
instance AttrInfo HandleBoxChildDetachedPropertyInfo where
    type AttrAllowedOps HandleBoxChildDetachedPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint HandleBoxChildDetachedPropertyInfo = IsHandleBox
    type AttrSetTypeConstraint HandleBoxChildDetachedPropertyInfo = (~) ()
    type AttrTransferTypeConstraint HandleBoxChildDetachedPropertyInfo = (~) ()
    type AttrTransferType HandleBoxChildDetachedPropertyInfo = ()
    type AttrGetType HandleBoxChildDetachedPropertyInfo = Bool
    type AttrLabel HandleBoxChildDetachedPropertyInfo = "child-detached"
    type AttrOrigin HandleBoxChildDetachedPropertyInfo = HandleBox
    attrGet = getHandleBoxChildDetached
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "handle-position"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PositionType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@handle-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' handleBox #handlePosition
-- @
getHandleBoxHandlePosition :: (MonadIO m, IsHandleBox o) => o -> m Gtk.Enums.PositionType
getHandleBoxHandlePosition obj = liftIO $ B.Properties.getObjectPropertyEnum obj "handle-position"

-- | Set the value of the “@handle-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' handleBox [ #handlePosition 'Data.GI.Base.Attributes.:=' value ]
-- @
setHandleBoxHandlePosition :: (MonadIO m, IsHandleBox o) => o -> Gtk.Enums.PositionType -> m ()
setHandleBoxHandlePosition obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "handle-position" val

-- | Construct a `GValueConstruct` with valid value for the “@handle-position@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHandleBoxHandlePosition :: (IsHandleBox o) => Gtk.Enums.PositionType -> IO (GValueConstruct o)
constructHandleBoxHandlePosition val = B.Properties.constructObjectPropertyEnum "handle-position" val

#if defined(ENABLE_OVERLOADING)
data HandleBoxHandlePositionPropertyInfo
instance AttrInfo HandleBoxHandlePositionPropertyInfo where
    type AttrAllowedOps HandleBoxHandlePositionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HandleBoxHandlePositionPropertyInfo = IsHandleBox
    type AttrSetTypeConstraint HandleBoxHandlePositionPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferTypeConstraint HandleBoxHandlePositionPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferType HandleBoxHandlePositionPropertyInfo = Gtk.Enums.PositionType
    type AttrGetType HandleBoxHandlePositionPropertyInfo = Gtk.Enums.PositionType
    type AttrLabel HandleBoxHandlePositionPropertyInfo = "handle-position"
    type AttrOrigin HandleBoxHandlePositionPropertyInfo = HandleBox
    attrGet = getHandleBoxHandlePosition
    attrSet = setHandleBoxHandlePosition
    attrTransfer _ v = do
        return v
    attrConstruct = constructHandleBoxHandlePosition
    attrClear = undefined
#endif

-- VVV Prop "shadow-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ShadowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' handleBox #shadowType
-- @
getHandleBoxShadowType :: (MonadIO m, IsHandleBox o) => o -> m Gtk.Enums.ShadowType
getHandleBoxShadowType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "shadow-type"

-- | Set the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' handleBox [ #shadowType 'Data.GI.Base.Attributes.:=' value ]
-- @
setHandleBoxShadowType :: (MonadIO m, IsHandleBox o) => o -> Gtk.Enums.ShadowType -> m ()
setHandleBoxShadowType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "shadow-type" val

-- | Construct a `GValueConstruct` with valid value for the “@shadow-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHandleBoxShadowType :: (IsHandleBox o) => Gtk.Enums.ShadowType -> IO (GValueConstruct o)
constructHandleBoxShadowType val = B.Properties.constructObjectPropertyEnum "shadow-type" val

#if defined(ENABLE_OVERLOADING)
data HandleBoxShadowTypePropertyInfo
instance AttrInfo HandleBoxShadowTypePropertyInfo where
    type AttrAllowedOps HandleBoxShadowTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HandleBoxShadowTypePropertyInfo = IsHandleBox
    type AttrSetTypeConstraint HandleBoxShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferTypeConstraint HandleBoxShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferType HandleBoxShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrGetType HandleBoxShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrLabel HandleBoxShadowTypePropertyInfo = "shadow-type"
    type AttrOrigin HandleBoxShadowTypePropertyInfo = HandleBox
    attrGet = getHandleBoxShadowType
    attrSet = setHandleBoxShadowType
    attrTransfer _ v = do
        return v
    attrConstruct = constructHandleBoxShadowType
    attrClear = undefined
#endif

-- VVV Prop "snap-edge"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PositionType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@snap-edge@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' handleBox #snapEdge
-- @
getHandleBoxSnapEdge :: (MonadIO m, IsHandleBox o) => o -> m Gtk.Enums.PositionType
getHandleBoxSnapEdge obj = liftIO $ B.Properties.getObjectPropertyEnum obj "snap-edge"

-- | Set the value of the “@snap-edge@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' handleBox [ #snapEdge 'Data.GI.Base.Attributes.:=' value ]
-- @
setHandleBoxSnapEdge :: (MonadIO m, IsHandleBox o) => o -> Gtk.Enums.PositionType -> m ()
setHandleBoxSnapEdge obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "snap-edge" val

-- | Construct a `GValueConstruct` with valid value for the “@snap-edge@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHandleBoxSnapEdge :: (IsHandleBox o) => Gtk.Enums.PositionType -> IO (GValueConstruct o)
constructHandleBoxSnapEdge val = B.Properties.constructObjectPropertyEnum "snap-edge" val

#if defined(ENABLE_OVERLOADING)
data HandleBoxSnapEdgePropertyInfo
instance AttrInfo HandleBoxSnapEdgePropertyInfo where
    type AttrAllowedOps HandleBoxSnapEdgePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HandleBoxSnapEdgePropertyInfo = IsHandleBox
    type AttrSetTypeConstraint HandleBoxSnapEdgePropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferTypeConstraint HandleBoxSnapEdgePropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferType HandleBoxSnapEdgePropertyInfo = Gtk.Enums.PositionType
    type AttrGetType HandleBoxSnapEdgePropertyInfo = Gtk.Enums.PositionType
    type AttrLabel HandleBoxSnapEdgePropertyInfo = "snap-edge"
    type AttrOrigin HandleBoxSnapEdgePropertyInfo = HandleBox
    attrGet = getHandleBoxSnapEdge
    attrSet = setHandleBoxSnapEdge
    attrTransfer _ v = do
        return v
    attrConstruct = constructHandleBoxSnapEdge
    attrClear = undefined
#endif

-- VVV Prop "snap-edge-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@snap-edge-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' handleBox #snapEdgeSet
-- @
getHandleBoxSnapEdgeSet :: (MonadIO m, IsHandleBox o) => o -> m Bool
getHandleBoxSnapEdgeSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "snap-edge-set"

-- | Set the value of the “@snap-edge-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' handleBox [ #snapEdgeSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setHandleBoxSnapEdgeSet :: (MonadIO m, IsHandleBox o) => o -> Bool -> m ()
setHandleBoxSnapEdgeSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "snap-edge-set" val

-- | Construct a `GValueConstruct` with valid value for the “@snap-edge-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHandleBoxSnapEdgeSet :: (IsHandleBox o) => Bool -> IO (GValueConstruct o)
constructHandleBoxSnapEdgeSet val = B.Properties.constructObjectPropertyBool "snap-edge-set" val

#if defined(ENABLE_OVERLOADING)
data HandleBoxSnapEdgeSetPropertyInfo
instance AttrInfo HandleBoxSnapEdgeSetPropertyInfo where
    type AttrAllowedOps HandleBoxSnapEdgeSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HandleBoxSnapEdgeSetPropertyInfo = IsHandleBox
    type AttrSetTypeConstraint HandleBoxSnapEdgeSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint HandleBoxSnapEdgeSetPropertyInfo = (~) Bool
    type AttrTransferType HandleBoxSnapEdgeSetPropertyInfo = Bool
    type AttrGetType HandleBoxSnapEdgeSetPropertyInfo = Bool
    type AttrLabel HandleBoxSnapEdgeSetPropertyInfo = "snap-edge-set"
    type AttrOrigin HandleBoxSnapEdgeSetPropertyInfo = HandleBox
    attrGet = getHandleBoxSnapEdgeSet
    attrSet = setHandleBoxSnapEdgeSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructHandleBoxSnapEdgeSet
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HandleBox
type instance O.AttributeList HandleBox = HandleBoxAttributeList
type HandleBoxAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("childDetached", HandleBoxChildDetachedPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("handlePosition", HandleBoxHandlePositionPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", HandleBoxShadowTypePropertyInfo), '("snapEdge", HandleBoxSnapEdgePropertyInfo), '("snapEdgeSet", HandleBoxSnapEdgeSetPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
handleBoxChildDetached :: AttrLabelProxy "childDetached"
handleBoxChildDetached = AttrLabelProxy

handleBoxHandlePosition :: AttrLabelProxy "handlePosition"
handleBoxHandlePosition = AttrLabelProxy

handleBoxShadowType :: AttrLabelProxy "shadowType"
handleBoxShadowType = AttrLabelProxy

handleBoxSnapEdge :: AttrLabelProxy "snapEdge"
handleBoxSnapEdge = AttrLabelProxy

handleBoxSnapEdgeSet :: AttrLabelProxy "snapEdgeSet"
handleBoxSnapEdgeSet = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HandleBox = HandleBoxSignalList
type HandleBoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childAttached", HandleBoxChildAttachedSignalInfo), '("childDetached", HandleBoxChildDetachedSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HandleBox::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HandleBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_handle_box_new" gtk_handle_box_new :: 
    IO (Ptr HandleBox)

{-# DEPRECATED handleBoxNew ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Create a new handle box.
handleBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m HandleBox
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.HandleBox.HandleBox'.
handleBoxNew  = liftIO $ do
    result <- gtk_handle_box_new
    checkUnexpectedReturnNULL "handleBoxNew" result
    result' <- (newObject HandleBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method HandleBox::get_child_detached
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_handle_box_get_child_detached" gtk_handle_box_get_child_detached :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    IO CInt

{-# DEPRECATED handleBoxGetChildDetached ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Whether the handlebox’s child is currently detached.
-- 
-- /Since: 2.14/
handleBoxGetChildDetached ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the child is currently detached, otherwise 'P.False'
handleBoxGetChildDetached handleBox = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    result <- gtk_handle_box_get_child_detached handleBox'
    let result' = (/= 0) result
    touchManagedPtr handleBox
    return result'

#if defined(ENABLE_OVERLOADING)
data HandleBoxGetChildDetachedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxGetChildDetachedMethodInfo a signature where
    overloadedMethod = handleBoxGetChildDetached

#endif

-- method HandleBox::get_handle_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PositionType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_handle_box_get_handle_position" gtk_handle_box_get_handle_position :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    IO CUInt

{-# DEPRECATED handleBoxGetHandlePosition ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Gets the handle position of the handle box. See
-- 'GI.Gtk.Objects.HandleBox.handleBoxSetHandlePosition'.
handleBoxGetHandlePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> m Gtk.Enums.PositionType
    -- ^ __Returns:__ the current handle position.
handleBoxGetHandlePosition handleBox = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    result <- gtk_handle_box_get_handle_position handleBox'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr handleBox
    return result'

#if defined(ENABLE_OVERLOADING)
data HandleBoxGetHandlePositionMethodInfo
instance (signature ~ (m Gtk.Enums.PositionType), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxGetHandlePositionMethodInfo a signature where
    overloadedMethod = handleBoxGetHandlePosition

#endif

-- method HandleBox::get_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ShadowType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_handle_box_get_shadow_type" gtk_handle_box_get_shadow_type :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    IO CUInt

{-# DEPRECATED handleBoxGetShadowType ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Gets the type of shadow drawn around the handle box. See
-- 'GI.Gtk.Objects.HandleBox.handleBoxSetShadowType'.
handleBoxGetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> m Gtk.Enums.ShadowType
    -- ^ __Returns:__ the type of shadow currently drawn around the handle box.
handleBoxGetShadowType handleBox = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    result <- gtk_handle_box_get_shadow_type handleBox'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr handleBox
    return result'

#if defined(ENABLE_OVERLOADING)
data HandleBoxGetShadowTypeMethodInfo
instance (signature ~ (m Gtk.Enums.ShadowType), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxGetShadowTypeMethodInfo a signature where
    overloadedMethod = handleBoxGetShadowType

#endif

-- method HandleBox::get_snap_edge
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PositionType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_handle_box_get_snap_edge" gtk_handle_box_get_snap_edge :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    IO CUInt

{-# DEPRECATED handleBoxGetSnapEdge ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Gets the edge used for determining reattachment of the handle box.
-- See 'GI.Gtk.Objects.HandleBox.handleBoxSetSnapEdge'.
handleBoxGetSnapEdge ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> m Gtk.Enums.PositionType
    -- ^ __Returns:__ the edge used for determining reattachment, or
    --   (GtkPositionType)-1 if this is determined (as per default)
    --   from the handle position.
handleBoxGetSnapEdge handleBox = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    result <- gtk_handle_box_get_snap_edge handleBox'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr handleBox
    return result'

#if defined(ENABLE_OVERLOADING)
data HandleBoxGetSnapEdgeMethodInfo
instance (signature ~ (m Gtk.Enums.PositionType), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxGetSnapEdgeMethodInfo a signature where
    overloadedMethod = handleBoxGetSnapEdge

#endif

-- method HandleBox::set_handle_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the side of the handlebox where the handle should be drawn."
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

foreign import ccall "gtk_handle_box_set_handle_position" gtk_handle_box_set_handle_position :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    CUInt ->                                -- position : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    IO ()

{-# DEPRECATED handleBoxSetHandlePosition ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Sets the side of the handlebox where the handle is drawn.
handleBoxSetHandlePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> Gtk.Enums.PositionType
    -- ^ /@position@/: the side of the handlebox where the handle should be drawn.
    -> m ()
handleBoxSetHandlePosition handleBox position = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    let position' = (fromIntegral . fromEnum) position
    gtk_handle_box_set_handle_position handleBox' position'
    touchManagedPtr handleBox
    return ()

#if defined(ENABLE_OVERLOADING)
data HandleBoxSetHandlePositionMethodInfo
instance (signature ~ (Gtk.Enums.PositionType -> m ()), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxSetHandlePositionMethodInfo a signature where
    overloadedMethod = handleBoxSetHandlePosition

#endif

-- method HandleBox::set_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShadowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the shadow type." , sinceVersion = Nothing }
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

foreign import ccall "gtk_handle_box_set_shadow_type" gtk_handle_box_set_shadow_type :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "ShadowType"})
    IO ()

{-# DEPRECATED handleBoxSetShadowType ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Sets the type of shadow to be drawn around the border
-- of the handle box.
handleBoxSetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> Gtk.Enums.ShadowType
    -- ^ /@type@/: the shadow type.
    -> m ()
handleBoxSetShadowType handleBox type_ = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    let type_' = (fromIntegral . fromEnum) type_
    gtk_handle_box_set_shadow_type handleBox' type_'
    touchManagedPtr handleBox
    return ()

#if defined(ENABLE_OVERLOADING)
data HandleBoxSetShadowTypeMethodInfo
instance (signature ~ (Gtk.Enums.ShadowType -> m ()), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxSetShadowTypeMethodInfo a signature where
    overloadedMethod = handleBoxSetShadowType

#endif

-- method HandleBox::set_snap_edge
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "handle_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HandleBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHandleBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "edge"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the snap edge, or -1 to unset the value; in which\n  case GTK+ will try to guess an appropriate value\n  in the future."
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

foreign import ccall "gtk_handle_box_set_snap_edge" gtk_handle_box_set_snap_edge :: 
    Ptr HandleBox ->                        -- handle_box : TInterface (Name {namespace = "Gtk", name = "HandleBox"})
    CUInt ->                                -- edge : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    IO ()

{-# DEPRECATED handleBoxSetSnapEdge ["(Since version 3.4)","t'GI.Gtk.Objects.HandleBox.HandleBox' has been deprecated."] #-}
-- | Sets the snap edge of a handlebox. The snap edge is
-- the edge of the detached child that must be aligned
-- with the corresponding edge of the “ghost” left
-- behind when the child was detached to reattach
-- the torn-off window. Usually, the snap edge should
-- be chosen so that it stays in the same place on
-- the screen when the handlebox is torn off.
-- 
-- If the snap edge is not set, then an appropriate value
-- will be guessed from the handle position. If the
-- handle position is 'GI.Gtk.Enums.PositionTypeRight' or 'GI.Gtk.Enums.PositionTypeLeft',
-- then the snap edge will be 'GI.Gtk.Enums.PositionTypeTop', otherwise
-- it will be 'GI.Gtk.Enums.PositionTypeLeft'.
handleBoxSetSnapEdge ::
    (B.CallStack.HasCallStack, MonadIO m, IsHandleBox a) =>
    a
    -- ^ /@handleBox@/: a t'GI.Gtk.Objects.HandleBox.HandleBox'
    -> Gtk.Enums.PositionType
    -- ^ /@edge@/: the snap edge, or -1 to unset the value; in which
    --   case GTK+ will try to guess an appropriate value
    --   in the future.
    -> m ()
handleBoxSetSnapEdge handleBox edge = liftIO $ do
    handleBox' <- unsafeManagedPtrCastPtr handleBox
    let edge' = (fromIntegral . fromEnum) edge
    gtk_handle_box_set_snap_edge handleBox' edge'
    touchManagedPtr handleBox
    return ()

#if defined(ENABLE_OVERLOADING)
data HandleBoxSetSnapEdgeMethodInfo
instance (signature ~ (Gtk.Enums.PositionType -> m ()), MonadIO m, IsHandleBox a) => O.MethodInfo HandleBoxSetSnapEdgeMethodInfo a signature where
    overloadedMethod = handleBoxSetSnapEdge

#endif

