{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ButtonBox
    ( 

-- * Exported types
    ButtonBox(..)                           ,
    IsButtonBox                             ,
    toButtonBox                             ,
    noButtonBox                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveButtonBoxMethod                  ,
#endif


-- ** getChildNonHomogeneous #method:getChildNonHomogeneous#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxGetChildNonHomogeneousMethodInfo,
#endif
    buttonBoxGetChildNonHomogeneous         ,


-- ** getChildSecondary #method:getChildSecondary#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxGetChildSecondaryMethodInfo    ,
#endif
    buttonBoxGetChildSecondary              ,


-- ** getLayout #method:getLayout#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxGetLayoutMethodInfo            ,
#endif
    buttonBoxGetLayout                      ,


-- ** new #method:new#

    buttonBoxNew                            ,


-- ** setChildNonHomogeneous #method:setChildNonHomogeneous#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxSetChildNonHomogeneousMethodInfo,
#endif
    buttonBoxSetChildNonHomogeneous         ,


-- ** setChildSecondary #method:setChildSecondary#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxSetChildSecondaryMethodInfo    ,
#endif
    buttonBoxSetChildSecondary              ,


-- ** setLayout #method:setLayout#

#if defined(ENABLE_OVERLOADING)
    ButtonBoxSetLayoutMethodInfo            ,
#endif
    buttonBoxSetLayout                      ,




 -- * Properties
-- ** layoutStyle #attr:layoutStyle#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ButtonBoxLayoutStylePropertyInfo        ,
#endif
#if defined(ENABLE_OVERLOADING)
    buttonBoxLayoutStyle                    ,
#endif
    constructButtonBoxLayoutStyle           ,
    getButtonBoxLayoutStyle                 ,
    setButtonBoxLayoutStyle                 ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ButtonBox = ButtonBox (ManagedPtr ButtonBox)
    deriving (Eq)
foreign import ccall "gtk_button_box_get_type"
    c_gtk_button_box_get_type :: IO GType

instance GObject ButtonBox where
    gobjectType = c_gtk_button_box_get_type
    

-- | Convert 'ButtonBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ButtonBox where
    toGValue o = do
        gtype <- c_gtk_button_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ButtonBox)
        B.ManagedPtr.newObject ButtonBox ptr
        
    

-- | Type class for types which can be safely cast to `ButtonBox`, for instance with `toButtonBox`.
class (GObject o, O.IsDescendantOf ButtonBox o) => IsButtonBox o
instance (GObject o, O.IsDescendantOf ButtonBox o) => IsButtonBox o

instance O.HasParentTypes ButtonBox
type instance O.ParentTypes ButtonBox = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `ButtonBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toButtonBox :: (MonadIO m, IsButtonBox o) => o -> m ButtonBox
toButtonBox = liftIO . unsafeCastTo ButtonBox

-- | A convenience alias for `Nothing` :: `Maybe` `ButtonBox`.
noButtonBox :: Maybe ButtonBox
noButtonBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveButtonBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveButtonBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveButtonBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveButtonBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveButtonBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveButtonBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveButtonBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveButtonBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveButtonBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveButtonBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveButtonBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveButtonBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveButtonBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveButtonBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveButtonBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveButtonBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveButtonBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveButtonBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveButtonBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveButtonBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveButtonBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveButtonBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveButtonBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveButtonBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveButtonBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveButtonBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveButtonBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveButtonBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveButtonBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveButtonBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveButtonBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveButtonBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveButtonBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveButtonBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveButtonBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveButtonBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveButtonBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveButtonBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveButtonBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveButtonBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveButtonBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveButtonBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveButtonBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveButtonBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveButtonBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveButtonBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveButtonBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveButtonBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveButtonBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveButtonBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveButtonBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveButtonBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveButtonBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveButtonBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveButtonBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveButtonBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveButtonBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveButtonBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveButtonBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveButtonBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveButtonBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveButtonBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveButtonBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveButtonBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveButtonBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveButtonBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveButtonBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveButtonBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveButtonBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveButtonBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveButtonBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveButtonBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveButtonBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveButtonBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveButtonBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveButtonBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveButtonBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveButtonBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveButtonBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveButtonBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveButtonBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveButtonBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveButtonBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveButtonBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveButtonBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveButtonBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveButtonBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveButtonBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveButtonBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveButtonBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveButtonBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveButtonBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveButtonBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveButtonBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveButtonBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveButtonBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveButtonBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveButtonBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveButtonBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveButtonBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveButtonBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveButtonBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveButtonBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveButtonBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveButtonBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveButtonBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveButtonBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveButtonBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveButtonBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveButtonBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveButtonBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveButtonBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveButtonBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveButtonBoxMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveButtonBoxMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveButtonBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveButtonBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveButtonBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveButtonBoxMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveButtonBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveButtonBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveButtonBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveButtonBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveButtonBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveButtonBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveButtonBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveButtonBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveButtonBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveButtonBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveButtonBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveButtonBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveButtonBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveButtonBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveButtonBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveButtonBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveButtonBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveButtonBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveButtonBoxMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveButtonBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveButtonBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveButtonBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveButtonBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveButtonBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveButtonBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveButtonBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveButtonBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveButtonBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveButtonBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveButtonBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveButtonBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveButtonBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveButtonBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveButtonBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveButtonBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveButtonBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveButtonBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveButtonBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveButtonBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveButtonBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveButtonBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveButtonBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveButtonBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveButtonBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveButtonBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveButtonBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveButtonBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveButtonBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveButtonBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveButtonBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveButtonBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveButtonBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveButtonBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveButtonBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveButtonBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveButtonBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveButtonBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveButtonBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveButtonBoxMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveButtonBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveButtonBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveButtonBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveButtonBoxMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveButtonBoxMethod "getChildNonHomogeneous" o = ButtonBoxGetChildNonHomogeneousMethodInfo
    ResolveButtonBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveButtonBoxMethod "getChildSecondary" o = ButtonBoxGetChildSecondaryMethodInfo
    ResolveButtonBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveButtonBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveButtonBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveButtonBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveButtonBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveButtonBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveButtonBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveButtonBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveButtonBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveButtonBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveButtonBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveButtonBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveButtonBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveButtonBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveButtonBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveButtonBoxMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveButtonBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveButtonBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveButtonBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveButtonBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveButtonBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveButtonBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveButtonBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveButtonBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveButtonBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveButtonBoxMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveButtonBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveButtonBoxMethod "getLayout" o = ButtonBoxGetLayoutMethodInfo
    ResolveButtonBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveButtonBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveButtonBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveButtonBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveButtonBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveButtonBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveButtonBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveButtonBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveButtonBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveButtonBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveButtonBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveButtonBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveButtonBoxMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveButtonBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveButtonBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveButtonBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveButtonBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveButtonBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveButtonBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveButtonBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveButtonBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveButtonBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveButtonBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveButtonBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveButtonBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveButtonBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveButtonBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveButtonBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveButtonBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveButtonBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveButtonBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveButtonBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveButtonBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveButtonBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveButtonBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveButtonBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveButtonBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveButtonBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveButtonBoxMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveButtonBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveButtonBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveButtonBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveButtonBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveButtonBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveButtonBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveButtonBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveButtonBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveButtonBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveButtonBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveButtonBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveButtonBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveButtonBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveButtonBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveButtonBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveButtonBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveButtonBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveButtonBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveButtonBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveButtonBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveButtonBoxMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveButtonBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveButtonBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveButtonBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveButtonBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveButtonBoxMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveButtonBoxMethod "setChildNonHomogeneous" o = ButtonBoxSetChildNonHomogeneousMethodInfo
    ResolveButtonBoxMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveButtonBoxMethod "setChildSecondary" o = ButtonBoxSetChildSecondaryMethodInfo
    ResolveButtonBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveButtonBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveButtonBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveButtonBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveButtonBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveButtonBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveButtonBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveButtonBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveButtonBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveButtonBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveButtonBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveButtonBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveButtonBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveButtonBoxMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveButtonBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveButtonBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveButtonBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveButtonBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveButtonBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveButtonBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveButtonBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveButtonBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveButtonBoxMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveButtonBoxMethod "setLayout" o = ButtonBoxSetLayoutMethodInfo
    ResolveButtonBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveButtonBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveButtonBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveButtonBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveButtonBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveButtonBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveButtonBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveButtonBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveButtonBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveButtonBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveButtonBoxMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveButtonBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveButtonBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveButtonBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveButtonBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveButtonBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveButtonBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveButtonBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveButtonBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveButtonBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveButtonBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveButtonBoxMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveButtonBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveButtonBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveButtonBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveButtonBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveButtonBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveButtonBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveButtonBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveButtonBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveButtonBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveButtonBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveButtonBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveButtonBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveButtonBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveButtonBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveButtonBoxMethod t ButtonBox, O.MethodInfo info ButtonBox p) => OL.IsLabel t (ButtonBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "layout-style"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ButtonBoxStyle"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@layout-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' buttonBox #layoutStyle
-- @
getButtonBoxLayoutStyle :: (MonadIO m, IsButtonBox o) => o -> m Gtk.Enums.ButtonBoxStyle
getButtonBoxLayoutStyle obj = liftIO $ B.Properties.getObjectPropertyEnum obj "layout-style"

-- | Set the value of the “@layout-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' buttonBox [ #layoutStyle 'Data.GI.Base.Attributes.:=' value ]
-- @
setButtonBoxLayoutStyle :: (MonadIO m, IsButtonBox o) => o -> Gtk.Enums.ButtonBoxStyle -> m ()
setButtonBoxLayoutStyle obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "layout-style" val

-- | Construct a `GValueConstruct` with valid value for the “@layout-style@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructButtonBoxLayoutStyle :: (IsButtonBox o) => Gtk.Enums.ButtonBoxStyle -> IO (GValueConstruct o)
constructButtonBoxLayoutStyle val = B.Properties.constructObjectPropertyEnum "layout-style" val

#if defined(ENABLE_OVERLOADING)
data ButtonBoxLayoutStylePropertyInfo
instance AttrInfo ButtonBoxLayoutStylePropertyInfo where
    type AttrAllowedOps ButtonBoxLayoutStylePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ButtonBoxLayoutStylePropertyInfo = IsButtonBox
    type AttrSetTypeConstraint ButtonBoxLayoutStylePropertyInfo = (~) Gtk.Enums.ButtonBoxStyle
    type AttrTransferTypeConstraint ButtonBoxLayoutStylePropertyInfo = (~) Gtk.Enums.ButtonBoxStyle
    type AttrTransferType ButtonBoxLayoutStylePropertyInfo = Gtk.Enums.ButtonBoxStyle
    type AttrGetType ButtonBoxLayoutStylePropertyInfo = Gtk.Enums.ButtonBoxStyle
    type AttrLabel ButtonBoxLayoutStylePropertyInfo = "layout-style"
    type AttrOrigin ButtonBoxLayoutStylePropertyInfo = ButtonBox
    attrGet = getButtonBoxLayoutStyle
    attrSet = setButtonBoxLayoutStyle
    attrTransfer _ v = do
        return v
    attrConstruct = constructButtonBoxLayoutStyle
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ButtonBox
type instance O.AttributeList ButtonBox = ButtonBoxAttributeList
type ButtonBoxAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("layoutStyle", ButtonBoxLayoutStylePropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
buttonBoxLayoutStyle :: AttrLabelProxy "layoutStyle"
buttonBoxLayoutStyle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ButtonBox = ButtonBoxSignalList
type ButtonBoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ButtonBox::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the box's orientation."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ButtonBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_button_box_new" gtk_button_box_new :: 
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO (Ptr ButtonBox)

-- | Creates a new t'GI.Gtk.Objects.ButtonBox.ButtonBox'.
-- 
-- /Since: 3.0/
buttonBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the box\'s orientation.
    -> m ButtonBox
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ButtonBox.ButtonBox'.
buttonBoxNew orientation = liftIO $ do
    let orientation' = (fromIntegral . fromEnum) orientation
    result <- gtk_button_box_new orientation'
    checkUnexpectedReturnNULL "buttonBoxNew" result
    result' <- (newObject ButtonBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ButtonBox::get_child_non_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a child of @widget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_button_box_get_child_non_homogeneous" gtk_button_box_get_child_non_homogeneous :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Returns whether the child is exempted from homogenous
-- sizing.
-- 
-- /Since: 3.2/
buttonBoxGetChildNonHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> b
    -- ^ /@child@/: a child of /@widget@/
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the child is not subject to homogenous sizing
buttonBoxGetChildNonHomogeneous widget child = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_button_box_get_child_non_homogeneous widget' child'
    let result' = (/= 0) result
    touchManagedPtr widget
    touchManagedPtr child
    return result'

#if defined(ENABLE_OVERLOADING)
data ButtonBoxGetChildNonHomogeneousMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) => O.MethodInfo ButtonBoxGetChildNonHomogeneousMethodInfo a signature where
    overloadedMethod = buttonBoxGetChildNonHomogeneous

#endif

-- method ButtonBox::get_child_secondary
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a child of @widget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_button_box_get_child_secondary" gtk_button_box_get_child_secondary :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Returns whether /@child@/ should appear in a secondary group of children.
-- 
-- /Since: 2.4/
buttonBoxGetChildSecondary ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> b
    -- ^ /@child@/: a child of /@widget@/
    -> m Bool
    -- ^ __Returns:__ whether /@child@/ should appear in a secondary group of children.
buttonBoxGetChildSecondary widget child = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_button_box_get_child_secondary widget' child'
    let result' = (/= 0) result
    touchManagedPtr widget
    touchManagedPtr child
    return result'

#if defined(ENABLE_OVERLOADING)
data ButtonBoxGetChildSecondaryMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) => O.MethodInfo ButtonBoxGetChildSecondaryMethodInfo a signature where
    overloadedMethod = buttonBoxGetChildSecondary

#endif

-- method ButtonBox::get_layout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ButtonBoxStyle" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_button_box_get_layout" gtk_button_box_get_layout :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    IO CUInt

-- | Retrieves the method being used to arrange the buttons in a button box.
buttonBoxGetLayout ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> m Gtk.Enums.ButtonBoxStyle
    -- ^ __Returns:__ the method used to lay out buttons in /@widget@/.
buttonBoxGetLayout widget = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_button_box_get_layout widget'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr widget
    return result'

#if defined(ENABLE_OVERLOADING)
data ButtonBoxGetLayoutMethodInfo
instance (signature ~ (m Gtk.Enums.ButtonBoxStyle), MonadIO m, IsButtonBox a) => O.MethodInfo ButtonBoxGetLayoutMethodInfo a signature where
    overloadedMethod = buttonBoxGetLayout

#endif

-- method ButtonBox::set_child_non_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a child of @widget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "non_homogeneous"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value" , sinceVersion = Nothing }
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

foreign import ccall "gtk_button_box_set_child_non_homogeneous" gtk_button_box_set_child_non_homogeneous :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- non_homogeneous : TBasicType TBoolean
    IO ()

-- | Sets whether the child is exempted from homogeous sizing.
-- 
-- /Since: 3.2/
buttonBoxSetChildNonHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> b
    -- ^ /@child@/: a child of /@widget@/
    -> Bool
    -- ^ /@nonHomogeneous@/: the new value
    -> m ()
buttonBoxSetChildNonHomogeneous widget child nonHomogeneous = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    child' <- unsafeManagedPtrCastPtr child
    let nonHomogeneous' = (fromIntegral . fromEnum) nonHomogeneous
    gtk_button_box_set_child_non_homogeneous widget' child' nonHomogeneous'
    touchManagedPtr widget
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ButtonBoxSetChildNonHomogeneousMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) => O.MethodInfo ButtonBoxSetChildNonHomogeneousMethodInfo a signature where
    overloadedMethod = buttonBoxSetChildNonHomogeneous

#endif

-- method ButtonBox::set_child_secondary
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a child of @widget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_secondary"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "if %TRUE, the @child appears in a secondary group of the\n               button box."
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

foreign import ccall "gtk_button_box_set_child_secondary" gtk_button_box_set_child_secondary :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- is_secondary : TBasicType TBoolean
    IO ()

-- | Sets whether /@child@/ should appear in a secondary group of children.
-- A typical use of a secondary child is the help button in a dialog.
-- 
-- This group appears after the other children if the style
-- is 'GI.Gtk.Enums.ButtonBoxStyleStart', 'GI.Gtk.Enums.ButtonBoxStyleSpread' or
-- 'GI.Gtk.Enums.ButtonBoxStyleEdge', and before the other children if the style
-- is 'GI.Gtk.Enums.ButtonBoxStyleEnd'. For horizontal button boxes, the definition
-- of before\/after depends on direction of the widget (see
-- 'GI.Gtk.Objects.Widget.widgetSetDirection'). If the style is 'GI.Gtk.Enums.ButtonBoxStyleStart'
-- or 'GI.Gtk.Enums.ButtonBoxStyleEnd', then the secondary children are aligned at
-- the other end of the button box from the main children. For the
-- other styles, they appear immediately next to the main children.
buttonBoxSetChildSecondary ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> b
    -- ^ /@child@/: a child of /@widget@/
    -> Bool
    -- ^ /@isSecondary@/: if 'P.True', the /@child@/ appears in a secondary group of the
    --                button box.
    -> m ()
buttonBoxSetChildSecondary widget child isSecondary = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    child' <- unsafeManagedPtrCastPtr child
    let isSecondary' = (fromIntegral . fromEnum) isSecondary
    gtk_button_box_set_child_secondary widget' child' isSecondary'
    touchManagedPtr widget
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ButtonBoxSetChildSecondaryMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsButtonBox a, Gtk.Widget.IsWidget b) => O.MethodInfo ButtonBoxSetChildSecondaryMethodInfo a signature where
    overloadedMethod = buttonBoxSetChildSecondary

#endif

-- method ButtonBox::set_layout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "widget"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkButtonBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "layout_style"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ButtonBoxStyle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new layout style"
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

foreign import ccall "gtk_button_box_set_layout" gtk_button_box_set_layout :: 
    Ptr ButtonBox ->                        -- widget : TInterface (Name {namespace = "Gtk", name = "ButtonBox"})
    CUInt ->                                -- layout_style : TInterface (Name {namespace = "Gtk", name = "ButtonBoxStyle"})
    IO ()

-- | Changes the way buttons are arranged in their container.
buttonBoxSetLayout ::
    (B.CallStack.HasCallStack, MonadIO m, IsButtonBox a) =>
    a
    -- ^ /@widget@/: a t'GI.Gtk.Objects.ButtonBox.ButtonBox'
    -> Gtk.Enums.ButtonBoxStyle
    -- ^ /@layoutStyle@/: the new layout style
    -> m ()
buttonBoxSetLayout widget layoutStyle = liftIO $ do
    widget' <- unsafeManagedPtrCastPtr widget
    let layoutStyle' = (fromIntegral . fromEnum) layoutStyle
    gtk_button_box_set_layout widget' layoutStyle'
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data ButtonBoxSetLayoutMethodInfo
instance (signature ~ (Gtk.Enums.ButtonBoxStyle -> m ()), MonadIO m, IsButtonBox a) => O.MethodInfo ButtonBoxSetLayoutMethodInfo a signature where
    overloadedMethod = buttonBoxSetLayout

#endif

