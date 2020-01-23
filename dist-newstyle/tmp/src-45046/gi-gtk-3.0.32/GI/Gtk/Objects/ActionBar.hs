{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkActionBar is designed to present contextual actions. It is
-- expected to be displayed below the content and expand horizontally
-- to fill the area.
-- 
-- It allows placing children at the start or the end. In addition, it
-- contains an internal centered box which is centered with respect to
-- the full width of the box, even if the children at either side take
-- up different amounts of space.
-- 
-- = CSS nodes
-- 
-- GtkActionBar has a single CSS node with name actionbar.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ActionBar
    ( 

-- * Exported types
    ActionBar(..)                           ,
    IsActionBar                             ,
    toActionBar                             ,
    noActionBar                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveActionBarMethod                  ,
#endif


-- ** getCenterWidget #method:getCenterWidget#

#if defined(ENABLE_OVERLOADING)
    ActionBarGetCenterWidgetMethodInfo      ,
#endif
    actionBarGetCenterWidget                ,


-- ** new #method:new#

    actionBarNew                            ,


-- ** packEnd #method:packEnd#

#if defined(ENABLE_OVERLOADING)
    ActionBarPackEndMethodInfo              ,
#endif
    actionBarPackEnd                        ,


-- ** packStart #method:packStart#

#if defined(ENABLE_OVERLOADING)
    ActionBarPackStartMethodInfo            ,
#endif
    actionBarPackStart                      ,


-- ** setCenterWidget #method:setCenterWidget#

#if defined(ENABLE_OVERLOADING)
    ActionBarSetCenterWidgetMethodInfo      ,
#endif
    actionBarSetCenterWidget                ,




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
newtype ActionBar = ActionBar (ManagedPtr ActionBar)
    deriving (Eq)
foreign import ccall "gtk_action_bar_get_type"
    c_gtk_action_bar_get_type :: IO GType

instance GObject ActionBar where
    gobjectType = c_gtk_action_bar_get_type
    

-- | Convert 'ActionBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ActionBar where
    toGValue o = do
        gtype <- c_gtk_action_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ActionBar)
        B.ManagedPtr.newObject ActionBar ptr
        
    

-- | Type class for types which can be safely cast to `ActionBar`, for instance with `toActionBar`.
class (GObject o, O.IsDescendantOf ActionBar o) => IsActionBar o
instance (GObject o, O.IsDescendantOf ActionBar o) => IsActionBar o

instance O.HasParentTypes ActionBar
type instance O.ParentTypes ActionBar = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `ActionBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toActionBar :: (MonadIO m, IsActionBar o) => o -> m ActionBar
toActionBar = liftIO . unsafeCastTo ActionBar

-- | A convenience alias for `Nothing` :: `Maybe` `ActionBar`.
noActionBar :: Maybe ActionBar
noActionBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveActionBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveActionBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveActionBarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveActionBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveActionBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveActionBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveActionBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveActionBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveActionBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveActionBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveActionBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveActionBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveActionBarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveActionBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveActionBarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveActionBarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveActionBarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveActionBarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveActionBarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveActionBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveActionBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveActionBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveActionBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveActionBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveActionBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveActionBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveActionBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveActionBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveActionBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveActionBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveActionBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveActionBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveActionBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveActionBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveActionBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveActionBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveActionBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveActionBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveActionBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveActionBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveActionBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveActionBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveActionBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveActionBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveActionBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveActionBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveActionBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveActionBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveActionBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveActionBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveActionBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveActionBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveActionBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveActionBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveActionBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveActionBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveActionBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveActionBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveActionBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveActionBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveActionBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveActionBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveActionBarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveActionBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveActionBarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveActionBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveActionBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveActionBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveActionBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveActionBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveActionBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveActionBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveActionBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveActionBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveActionBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveActionBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveActionBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveActionBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveActionBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveActionBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveActionBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveActionBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveActionBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveActionBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveActionBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveActionBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveActionBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveActionBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveActionBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveActionBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveActionBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveActionBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveActionBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveActionBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveActionBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveActionBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveActionBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveActionBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveActionBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveActionBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveActionBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveActionBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveActionBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveActionBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveActionBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveActionBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveActionBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveActionBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveActionBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveActionBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveActionBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveActionBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveActionBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveActionBarMethod "packEnd" o = ActionBarPackEndMethodInfo
    ResolveActionBarMethod "packStart" o = ActionBarPackStartMethodInfo
    ResolveActionBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveActionBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveActionBarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveActionBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveActionBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveActionBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveActionBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveActionBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveActionBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveActionBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveActionBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveActionBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveActionBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveActionBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveActionBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveActionBarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveActionBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveActionBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveActionBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveActionBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveActionBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveActionBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveActionBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveActionBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveActionBarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveActionBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveActionBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveActionBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveActionBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveActionBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveActionBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveActionBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveActionBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveActionBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveActionBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveActionBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveActionBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveActionBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveActionBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveActionBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveActionBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveActionBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveActionBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveActionBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveActionBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveActionBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveActionBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveActionBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveActionBarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveActionBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveActionBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveActionBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveActionBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveActionBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveActionBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveActionBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveActionBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveActionBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveActionBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveActionBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveActionBarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveActionBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveActionBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveActionBarMethod "getCenterWidget" o = ActionBarGetCenterWidgetMethodInfo
    ResolveActionBarMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveActionBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveActionBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveActionBarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveActionBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveActionBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveActionBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveActionBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveActionBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveActionBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveActionBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveActionBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveActionBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveActionBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveActionBarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveActionBarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveActionBarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveActionBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveActionBarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveActionBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveActionBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveActionBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveActionBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveActionBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveActionBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveActionBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveActionBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveActionBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveActionBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveActionBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveActionBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveActionBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveActionBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveActionBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveActionBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveActionBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveActionBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveActionBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveActionBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveActionBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveActionBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveActionBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveActionBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveActionBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveActionBarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveActionBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveActionBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveActionBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveActionBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveActionBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveActionBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveActionBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveActionBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveActionBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveActionBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveActionBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveActionBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveActionBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveActionBarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveActionBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveActionBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveActionBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveActionBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveActionBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveActionBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveActionBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveActionBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveActionBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveActionBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveActionBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveActionBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveActionBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveActionBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveActionBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveActionBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveActionBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveActionBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveActionBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveActionBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveActionBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveActionBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveActionBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveActionBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveActionBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveActionBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveActionBarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveActionBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveActionBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveActionBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveActionBarMethod "setCenterWidget" o = ActionBarSetCenterWidgetMethodInfo
    ResolveActionBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveActionBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveActionBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveActionBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveActionBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveActionBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveActionBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveActionBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveActionBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveActionBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveActionBarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveActionBarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveActionBarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveActionBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveActionBarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveActionBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveActionBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveActionBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveActionBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveActionBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveActionBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveActionBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveActionBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveActionBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveActionBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveActionBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveActionBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveActionBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveActionBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveActionBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveActionBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveActionBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveActionBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveActionBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveActionBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveActionBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveActionBarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveActionBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveActionBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveActionBarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveActionBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveActionBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveActionBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveActionBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveActionBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveActionBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveActionBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveActionBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveActionBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveActionBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveActionBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveActionBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveActionBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveActionBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveActionBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveActionBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveActionBarMethod t ActionBar, O.MethodInfo info ActionBar p) => OL.IsLabel t (ActionBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ActionBar
type instance O.AttributeList ActionBar = ActionBarAttributeList
type ActionBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ActionBar = ActionBarSignalList
type ActionBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ActionBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ActionBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_bar_new" gtk_action_bar_new :: 
    IO (Ptr ActionBar)

-- | Creates a new t'GI.Gtk.Objects.ActionBar.ActionBar' widget.
-- 
-- /Since: 3.12/
actionBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ActionBar
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ActionBar.ActionBar'
actionBarNew  = liftIO $ do
    result <- gtk_action_bar_new
    checkUnexpectedReturnNULL "actionBarNew" result
    result' <- (newObject ActionBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ActionBar::get_center_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ActionBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkActionBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_action_bar_get_center_widget" gtk_action_bar_get_center_widget :: 
    Ptr ActionBar ->                        -- action_bar : TInterface (Name {namespace = "Gtk", name = "ActionBar"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the center bar widget of the bar.
-- 
-- /Since: 3.12/
actionBarGetCenterWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsActionBar a) =>
    a
    -- ^ /@actionBar@/: a t'GI.Gtk.Objects.ActionBar.ActionBar'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the center t'GI.Gtk.Objects.Widget.Widget' or 'P.Nothing'.
actionBarGetCenterWidget actionBar = liftIO $ do
    actionBar' <- unsafeManagedPtrCastPtr actionBar
    result <- gtk_action_bar_get_center_widget actionBar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr actionBar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ActionBarGetCenterWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsActionBar a) => O.MethodInfo ActionBarGetCenterWidgetMethodInfo a signature where
    overloadedMethod = actionBarGetCenterWidget

#endif

-- method ActionBar::pack_end
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ActionBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkActionBar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget to be added to @action_bar"
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

foreign import ccall "gtk_action_bar_pack_end" gtk_action_bar_pack_end :: 
    Ptr ActionBar ->                        -- action_bar : TInterface (Name {namespace = "Gtk", name = "ActionBar"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@child@/ to /@actionBar@/, packed with reference to the
-- end of the /@actionBar@/.
-- 
-- /Since: 3.12/
actionBarPackEnd ::
    (B.CallStack.HasCallStack, MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@actionBar@/: A t'GI.Gtk.Objects.ActionBar.ActionBar'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@actionBar@/
    -> m ()
actionBarPackEnd actionBar child = liftIO $ do
    actionBar' <- unsafeManagedPtrCastPtr actionBar
    child' <- unsafeManagedPtrCastPtr child
    gtk_action_bar_pack_end actionBar' child'
    touchManagedPtr actionBar
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionBarPackEndMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) => O.MethodInfo ActionBarPackEndMethodInfo a signature where
    overloadedMethod = actionBarPackEnd

#endif

-- method ActionBar::pack_start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ActionBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkActionBar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget to be added to @action_bar"
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

foreign import ccall "gtk_action_bar_pack_start" gtk_action_bar_pack_start :: 
    Ptr ActionBar ->                        -- action_bar : TInterface (Name {namespace = "Gtk", name = "ActionBar"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@child@/ to /@actionBar@/, packed with reference to the
-- start of the /@actionBar@/.
-- 
-- /Since: 3.12/
actionBarPackStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@actionBar@/: A t'GI.Gtk.Objects.ActionBar.ActionBar'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@actionBar@/
    -> m ()
actionBarPackStart actionBar child = liftIO $ do
    actionBar' <- unsafeManagedPtrCastPtr actionBar
    child' <- unsafeManagedPtrCastPtr child
    gtk_action_bar_pack_start actionBar' child'
    touchManagedPtr actionBar
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionBarPackStartMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) => O.MethodInfo ActionBarPackStartMethodInfo a signature where
    overloadedMethod = actionBarPackStart

#endif

-- method ActionBar::set_center_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "action_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ActionBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkActionBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "center_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a widget to use for the center"
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

foreign import ccall "gtk_action_bar_set_center_widget" gtk_action_bar_set_center_widget :: 
    Ptr ActionBar ->                        -- action_bar : TInterface (Name {namespace = "Gtk", name = "ActionBar"})
    Ptr Gtk.Widget.Widget ->                -- center_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the center widget for the t'GI.Gtk.Objects.ActionBar.ActionBar'.
-- 
-- /Since: 3.12/
actionBarSetCenterWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@actionBar@/: a t'GI.Gtk.Objects.ActionBar.ActionBar'
    -> Maybe (b)
    -- ^ /@centerWidget@/: a widget to use for the center
    -> m ()
actionBarSetCenterWidget actionBar centerWidget = liftIO $ do
    actionBar' <- unsafeManagedPtrCastPtr actionBar
    maybeCenterWidget <- case centerWidget of
        Nothing -> return nullPtr
        Just jCenterWidget -> do
            jCenterWidget' <- unsafeManagedPtrCastPtr jCenterWidget
            return jCenterWidget'
    gtk_action_bar_set_center_widget actionBar' maybeCenterWidget
    touchManagedPtr actionBar
    whenJust centerWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ActionBarSetCenterWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsActionBar a, Gtk.Widget.IsWidget b) => O.MethodInfo ActionBarSetCenterWidgetMethodInfo a signature where
    overloadedMethod = actionBarSetCenterWidget

#endif

