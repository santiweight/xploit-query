{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Fixed.Fixed' widget is a container which can place child widgets
-- at fixed positions and with fixed sizes, given in pixels. t'GI.Gtk.Objects.Fixed.Fixed'
-- performs no automatic layout management.
-- 
-- For most applications, you should not use this container! It keeps
-- you from having to learn about the other GTK+ containers, but it
-- results in broken applications.  With t'GI.Gtk.Objects.Fixed.Fixed', the following
-- things will result in truncated text, overlapping widgets, and
-- other display bugs:
-- 
-- * Themes, which may change widget sizes.
-- * Fonts other than the one you used to write the app will of course
-- change the size of widgets containing text; keep in mind that
-- users may use a larger font because of difficulty reading the
-- default, or they may be using a different OS that provides different fonts.
-- * Translation of text into other languages changes its size. Also,
-- display of non-English text will use a different font in many
-- cases.
-- 
-- 
-- In addition, t'GI.Gtk.Objects.Fixed.Fixed' does not pay attention to text direction and thus may
-- produce unwanted results if your app is run under right-to-left languages
-- such as Hebrew or Arabic. That is: normally GTK+ will order containers
-- appropriately for the text direction, e.g. to put labels to the right of the
-- thing they label when using an RTL language, but it can’t do that with
-- t'GI.Gtk.Objects.Fixed.Fixed'. So if you need to reorder widgets depending on the text direction,
-- you would need to manually detect it and adjust child positions accordingly.
-- 
-- Finally, fixed positioning makes it kind of annoying to add\/remove
-- GUI elements, since you have to reposition all the other
-- elements. This is a long-term maintenance problem for your
-- application.
-- 
-- If you know none of these things are an issue for your application,
-- and prefer the simplicity of t'GI.Gtk.Objects.Fixed.Fixed', by all means use the
-- widget. But you should be aware of the tradeoffs.
-- 
-- See also t'GI.Gtk.Objects.Layout.Layout', which shares the ability to perform fixed positioning
-- of child widgets and additionally adds custom drawing and scrollability.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Fixed
    ( 

-- * Exported types
    Fixed(..)                               ,
    IsFixed                                 ,
    toFixed                                 ,
    noFixed                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFixedMethod                      ,
#endif


-- ** move #method:move#

#if defined(ENABLE_OVERLOADING)
    FixedMoveMethodInfo                     ,
#endif
    fixedMove                               ,


-- ** new #method:new#

    fixedNew                                ,


-- ** put #method:put#

#if defined(ENABLE_OVERLOADING)
    FixedPutMethodInfo                      ,
#endif
    fixedPut                                ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Fixed = Fixed (ManagedPtr Fixed)
    deriving (Eq)
foreign import ccall "gtk_fixed_get_type"
    c_gtk_fixed_get_type :: IO GType

instance GObject Fixed where
    gobjectType = c_gtk_fixed_get_type
    

-- | Convert 'Fixed' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Fixed where
    toGValue o = do
        gtype <- c_gtk_fixed_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Fixed)
        B.ManagedPtr.newObject Fixed ptr
        
    

-- | Type class for types which can be safely cast to `Fixed`, for instance with `toFixed`.
class (GObject o, O.IsDescendantOf Fixed o) => IsFixed o
instance (GObject o, O.IsDescendantOf Fixed o) => IsFixed o

instance O.HasParentTypes Fixed
type instance O.ParentTypes Fixed = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Fixed`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFixed :: (MonadIO m, IsFixed o) => o -> m Fixed
toFixed = liftIO . unsafeCastTo Fixed

-- | A convenience alias for `Nothing` :: `Maybe` `Fixed`.
noFixed :: Maybe Fixed
noFixed = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFixedMethod (t :: Symbol) (o :: *) :: * where
    ResolveFixedMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFixedMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFixedMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFixedMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFixedMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFixedMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFixedMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFixedMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFixedMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFixedMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFixedMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFixedMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFixedMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFixedMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFixedMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFixedMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFixedMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFixedMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFixedMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFixedMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFixedMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFixedMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFixedMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFixedMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFixedMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFixedMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFixedMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFixedMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFixedMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFixedMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFixedMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFixedMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFixedMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFixedMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFixedMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFixedMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFixedMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFixedMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFixedMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFixedMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFixedMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFixedMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFixedMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFixedMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFixedMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFixedMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFixedMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFixedMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFixedMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFixedMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFixedMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFixedMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFixedMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFixedMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFixedMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFixedMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFixedMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFixedMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFixedMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFixedMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFixedMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFixedMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFixedMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFixedMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFixedMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFixedMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFixedMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFixedMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFixedMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFixedMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFixedMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFixedMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFixedMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFixedMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFixedMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFixedMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFixedMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFixedMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFixedMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFixedMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFixedMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFixedMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFixedMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFixedMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFixedMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFixedMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFixedMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFixedMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFixedMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFixedMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFixedMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFixedMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFixedMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFixedMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFixedMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFixedMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFixedMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFixedMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFixedMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFixedMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFixedMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFixedMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFixedMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFixedMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFixedMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFixedMethod "move" o = FixedMoveMethodInfo
    ResolveFixedMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFixedMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFixedMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFixedMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFixedMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFixedMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFixedMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFixedMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFixedMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFixedMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFixedMethod "put" o = FixedPutMethodInfo
    ResolveFixedMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFixedMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFixedMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFixedMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFixedMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFixedMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFixedMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFixedMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFixedMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFixedMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFixedMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFixedMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFixedMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFixedMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFixedMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFixedMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFixedMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFixedMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFixedMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFixedMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFixedMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFixedMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFixedMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFixedMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFixedMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFixedMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFixedMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFixedMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFixedMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFixedMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFixedMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFixedMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFixedMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFixedMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFixedMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFixedMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFixedMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFixedMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFixedMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFixedMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFixedMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFixedMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFixedMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFixedMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFixedMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFixedMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFixedMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFixedMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFixedMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFixedMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFixedMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFixedMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFixedMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFixedMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFixedMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFixedMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFixedMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFixedMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFixedMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFixedMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFixedMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFixedMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFixedMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFixedMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFixedMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFixedMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFixedMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFixedMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFixedMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFixedMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFixedMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFixedMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFixedMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFixedMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFixedMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFixedMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFixedMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFixedMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFixedMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFixedMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFixedMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFixedMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFixedMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFixedMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFixedMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFixedMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFixedMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFixedMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFixedMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFixedMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFixedMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFixedMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFixedMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFixedMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFixedMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFixedMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFixedMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFixedMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFixedMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFixedMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFixedMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFixedMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFixedMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFixedMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFixedMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFixedMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFixedMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFixedMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFixedMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFixedMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFixedMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFixedMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFixedMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFixedMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFixedMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFixedMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFixedMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFixedMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFixedMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFixedMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFixedMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFixedMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFixedMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFixedMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFixedMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFixedMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFixedMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFixedMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFixedMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFixedMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFixedMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFixedMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFixedMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFixedMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFixedMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFixedMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFixedMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFixedMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFixedMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFixedMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFixedMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFixedMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFixedMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFixedMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFixedMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFixedMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFixedMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFixedMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFixedMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFixedMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFixedMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFixedMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFixedMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFixedMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFixedMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFixedMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFixedMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFixedMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFixedMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFixedMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFixedMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFixedMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFixedMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFixedMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFixedMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFixedMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFixedMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFixedMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFixedMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFixedMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFixedMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFixedMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFixedMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFixedMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFixedMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFixedMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFixedMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFixedMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFixedMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFixedMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFixedMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFixedMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFixedMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFixedMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFixedMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFixedMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFixedMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFixedMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFixedMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFixedMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFixedMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFixedMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFixedMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFixedMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFixedMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFixedMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFixedMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFixedMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFixedMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFixedMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFixedMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFixedMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFixedMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFixedMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFixedMethod t Fixed, O.MethodInfo info Fixed p) => OL.IsLabel t (Fixed -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Fixed
type instance O.AttributeList Fixed = FixedAttributeList
type FixedAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Fixed = FixedSignalList
type FixedSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Fixed::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Fixed" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_fixed_new" gtk_fixed_new :: 
    IO (Ptr Fixed)

-- | Creates a new t'GI.Gtk.Objects.Fixed.Fixed'.
fixedNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Fixed
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Fixed.Fixed'.
fixedNew  = liftIO $ do
    result <- gtk_fixed_new
    checkUnexpectedReturnNULL "fixedNew" result
    result' <- (newObject Fixed) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Fixed::move
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fixed"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Fixed" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFixed." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the child widget." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the horizontal position to move the widget to."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the vertical position to move the widget to."
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

foreign import ccall "gtk_fixed_move" gtk_fixed_move :: 
    Ptr Fixed ->                            -- fixed : TInterface (Name {namespace = "Gtk", name = "Fixed"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO ()

-- | Moves a child of a t'GI.Gtk.Objects.Fixed.Fixed' container to the given position.
fixedMove ::
    (B.CallStack.HasCallStack, MonadIO m, IsFixed a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@fixed@/: a t'GI.Gtk.Objects.Fixed.Fixed'.
    -> b
    -- ^ /@widget@/: the child widget.
    -> Int32
    -- ^ /@x@/: the horizontal position to move the widget to.
    -> Int32
    -- ^ /@y@/: the vertical position to move the widget to.
    -> m ()
fixedMove fixed widget x y = liftIO $ do
    fixed' <- unsafeManagedPtrCastPtr fixed
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_fixed_move fixed' widget' x y
    touchManagedPtr fixed
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data FixedMoveMethodInfo
instance (signature ~ (b -> Int32 -> Int32 -> m ()), MonadIO m, IsFixed a, Gtk.Widget.IsWidget b) => O.MethodInfo FixedMoveMethodInfo a signature where
    overloadedMethod = fixedMove

#endif

-- method Fixed::put
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fixed"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Fixed" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFixed." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the widget to add." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "x"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the horizontal position to place the widget at."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "y"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the vertical position to place the widget at."
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

foreign import ccall "gtk_fixed_put" gtk_fixed_put :: 
    Ptr Fixed ->                            -- fixed : TInterface (Name {namespace = "Gtk", name = "Fixed"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO ()

-- | Adds a widget to a t'GI.Gtk.Objects.Fixed.Fixed' container at the given position.
fixedPut ::
    (B.CallStack.HasCallStack, MonadIO m, IsFixed a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@fixed@/: a t'GI.Gtk.Objects.Fixed.Fixed'.
    -> b
    -- ^ /@widget@/: the widget to add.
    -> Int32
    -- ^ /@x@/: the horizontal position to place the widget at.
    -> Int32
    -- ^ /@y@/: the vertical position to place the widget at.
    -> m ()
fixedPut fixed widget x y = liftIO $ do
    fixed' <- unsafeManagedPtrCastPtr fixed
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_fixed_put fixed' widget' x y
    touchManagedPtr fixed
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data FixedPutMethodInfo
instance (signature ~ (b -> Int32 -> Int32 -> m ()), MonadIO m, IsFixed a, Gtk.Widget.IsWidget b) => O.MethodInfo FixedPutMethodInfo a signature where
    overloadedMethod = fixedPut

#endif

