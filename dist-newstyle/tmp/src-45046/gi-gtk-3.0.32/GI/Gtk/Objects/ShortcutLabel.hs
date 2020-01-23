{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel' is a widget that represents a single keyboard shortcut or gesture
-- in the user interface.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ShortcutLabel
    ( 

-- * Exported types
    ShortcutLabel(..)                       ,
    IsShortcutLabel                         ,
    toShortcutLabel                         ,
    noShortcutLabel                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveShortcutLabelMethod              ,
#endif


-- ** getAccelerator #method:getAccelerator#

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelGetAcceleratorMethodInfo   ,
#endif
    shortcutLabelGetAccelerator             ,


-- ** getDisabledText #method:getDisabledText#

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelGetDisabledTextMethodInfo  ,
#endif
    shortcutLabelGetDisabledText            ,


-- ** new #method:new#

    shortcutLabelNew                        ,


-- ** setAccelerator #method:setAccelerator#

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelSetAcceleratorMethodInfo   ,
#endif
    shortcutLabelSetAccelerator             ,


-- ** setDisabledText #method:setDisabledText#

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelSetDisabledTextMethodInfo  ,
#endif
    shortcutLabelSetDisabledText            ,




 -- * Properties
-- ** accelerator #attr:accelerator#
-- | The accelerator that /@self@/ displays. See t'GI.Gtk.Objects.ShortcutsShortcut.ShortcutsShortcut':@/accelerator/@
-- for the accepted syntax.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelAcceleratorPropertyInfo    ,
#endif
    constructShortcutLabelAccelerator       ,
    getShortcutLabelAccelerator             ,
    setShortcutLabelAccelerator             ,
#if defined(ENABLE_OVERLOADING)
    shortcutLabelAccelerator                ,
#endif


-- ** disabledText #attr:disabledText#
-- | The text that is displayed when no accelerator is set.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ShortcutLabelDisabledTextPropertyInfo   ,
#endif
    constructShortcutLabelDisabledText      ,
    getShortcutLabelDisabledText            ,
    setShortcutLabelDisabledText            ,
#if defined(ENABLE_OVERLOADING)
    shortcutLabelDisabledText               ,
#endif




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ShortcutLabel = ShortcutLabel (ManagedPtr ShortcutLabel)
    deriving (Eq)
foreign import ccall "gtk_shortcut_label_get_type"
    c_gtk_shortcut_label_get_type :: IO GType

instance GObject ShortcutLabel where
    gobjectType = c_gtk_shortcut_label_get_type
    

-- | Convert 'ShortcutLabel' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ShortcutLabel where
    toGValue o = do
        gtype <- c_gtk_shortcut_label_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ShortcutLabel)
        B.ManagedPtr.newObject ShortcutLabel ptr
        
    

-- | Type class for types which can be safely cast to `ShortcutLabel`, for instance with `toShortcutLabel`.
class (GObject o, O.IsDescendantOf ShortcutLabel o) => IsShortcutLabel o
instance (GObject o, O.IsDescendantOf ShortcutLabel o) => IsShortcutLabel o

instance O.HasParentTypes ShortcutLabel
type instance O.ParentTypes ShortcutLabel = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `ShortcutLabel`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toShortcutLabel :: (MonadIO m, IsShortcutLabel o) => o -> m ShortcutLabel
toShortcutLabel = liftIO . unsafeCastTo ShortcutLabel

-- | A convenience alias for `Nothing` :: `Maybe` `ShortcutLabel`.
noShortcutLabel :: Maybe ShortcutLabel
noShortcutLabel = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveShortcutLabelMethod (t :: Symbol) (o :: *) :: * where
    ResolveShortcutLabelMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveShortcutLabelMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveShortcutLabelMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveShortcutLabelMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveShortcutLabelMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveShortcutLabelMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveShortcutLabelMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveShortcutLabelMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveShortcutLabelMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveShortcutLabelMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveShortcutLabelMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveShortcutLabelMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveShortcutLabelMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveShortcutLabelMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveShortcutLabelMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveShortcutLabelMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveShortcutLabelMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveShortcutLabelMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveShortcutLabelMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveShortcutLabelMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveShortcutLabelMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveShortcutLabelMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveShortcutLabelMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveShortcutLabelMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveShortcutLabelMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveShortcutLabelMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveShortcutLabelMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveShortcutLabelMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveShortcutLabelMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveShortcutLabelMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveShortcutLabelMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveShortcutLabelMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveShortcutLabelMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveShortcutLabelMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveShortcutLabelMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveShortcutLabelMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveShortcutLabelMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveShortcutLabelMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveShortcutLabelMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveShortcutLabelMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveShortcutLabelMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveShortcutLabelMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveShortcutLabelMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveShortcutLabelMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveShortcutLabelMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveShortcutLabelMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveShortcutLabelMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveShortcutLabelMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveShortcutLabelMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveShortcutLabelMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveShortcutLabelMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveShortcutLabelMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveShortcutLabelMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveShortcutLabelMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveShortcutLabelMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveShortcutLabelMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveShortcutLabelMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveShortcutLabelMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveShortcutLabelMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveShortcutLabelMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveShortcutLabelMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveShortcutLabelMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveShortcutLabelMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveShortcutLabelMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveShortcutLabelMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveShortcutLabelMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveShortcutLabelMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveShortcutLabelMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveShortcutLabelMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveShortcutLabelMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveShortcutLabelMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveShortcutLabelMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveShortcutLabelMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveShortcutLabelMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveShortcutLabelMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveShortcutLabelMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveShortcutLabelMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveShortcutLabelMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveShortcutLabelMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveShortcutLabelMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveShortcutLabelMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveShortcutLabelMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveShortcutLabelMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveShortcutLabelMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveShortcutLabelMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveShortcutLabelMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveShortcutLabelMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveShortcutLabelMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveShortcutLabelMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveShortcutLabelMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveShortcutLabelMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveShortcutLabelMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveShortcutLabelMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveShortcutLabelMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveShortcutLabelMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveShortcutLabelMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveShortcutLabelMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveShortcutLabelMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveShortcutLabelMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveShortcutLabelMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveShortcutLabelMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveShortcutLabelMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveShortcutLabelMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveShortcutLabelMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveShortcutLabelMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveShortcutLabelMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveShortcutLabelMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveShortcutLabelMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveShortcutLabelMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveShortcutLabelMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveShortcutLabelMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveShortcutLabelMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveShortcutLabelMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveShortcutLabelMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveShortcutLabelMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveShortcutLabelMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveShortcutLabelMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveShortcutLabelMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveShortcutLabelMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveShortcutLabelMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveShortcutLabelMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveShortcutLabelMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveShortcutLabelMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveShortcutLabelMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveShortcutLabelMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveShortcutLabelMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveShortcutLabelMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveShortcutLabelMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveShortcutLabelMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveShortcutLabelMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveShortcutLabelMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveShortcutLabelMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveShortcutLabelMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveShortcutLabelMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveShortcutLabelMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveShortcutLabelMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveShortcutLabelMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveShortcutLabelMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveShortcutLabelMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveShortcutLabelMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveShortcutLabelMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveShortcutLabelMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveShortcutLabelMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveShortcutLabelMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveShortcutLabelMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveShortcutLabelMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveShortcutLabelMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveShortcutLabelMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveShortcutLabelMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveShortcutLabelMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveShortcutLabelMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveShortcutLabelMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveShortcutLabelMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveShortcutLabelMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveShortcutLabelMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveShortcutLabelMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveShortcutLabelMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveShortcutLabelMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveShortcutLabelMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveShortcutLabelMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveShortcutLabelMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveShortcutLabelMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveShortcutLabelMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveShortcutLabelMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveShortcutLabelMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveShortcutLabelMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveShortcutLabelMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveShortcutLabelMethod "getAccelerator" o = ShortcutLabelGetAcceleratorMethodInfo
    ResolveShortcutLabelMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveShortcutLabelMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveShortcutLabelMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveShortcutLabelMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveShortcutLabelMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveShortcutLabelMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveShortcutLabelMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveShortcutLabelMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveShortcutLabelMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveShortcutLabelMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveShortcutLabelMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveShortcutLabelMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveShortcutLabelMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveShortcutLabelMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveShortcutLabelMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveShortcutLabelMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveShortcutLabelMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveShortcutLabelMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveShortcutLabelMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveShortcutLabelMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveShortcutLabelMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveShortcutLabelMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveShortcutLabelMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveShortcutLabelMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveShortcutLabelMethod "getDisabledText" o = ShortcutLabelGetDisabledTextMethodInfo
    ResolveShortcutLabelMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveShortcutLabelMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveShortcutLabelMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveShortcutLabelMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveShortcutLabelMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveShortcutLabelMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveShortcutLabelMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveShortcutLabelMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveShortcutLabelMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveShortcutLabelMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveShortcutLabelMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveShortcutLabelMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveShortcutLabelMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveShortcutLabelMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveShortcutLabelMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveShortcutLabelMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveShortcutLabelMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveShortcutLabelMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveShortcutLabelMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveShortcutLabelMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveShortcutLabelMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveShortcutLabelMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveShortcutLabelMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveShortcutLabelMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveShortcutLabelMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveShortcutLabelMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveShortcutLabelMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveShortcutLabelMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveShortcutLabelMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveShortcutLabelMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveShortcutLabelMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveShortcutLabelMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveShortcutLabelMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveShortcutLabelMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveShortcutLabelMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveShortcutLabelMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveShortcutLabelMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveShortcutLabelMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveShortcutLabelMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveShortcutLabelMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveShortcutLabelMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveShortcutLabelMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveShortcutLabelMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveShortcutLabelMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveShortcutLabelMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveShortcutLabelMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveShortcutLabelMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveShortcutLabelMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveShortcutLabelMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveShortcutLabelMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveShortcutLabelMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveShortcutLabelMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveShortcutLabelMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveShortcutLabelMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveShortcutLabelMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveShortcutLabelMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveShortcutLabelMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveShortcutLabelMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveShortcutLabelMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveShortcutLabelMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveShortcutLabelMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveShortcutLabelMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveShortcutLabelMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveShortcutLabelMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveShortcutLabelMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveShortcutLabelMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveShortcutLabelMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveShortcutLabelMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveShortcutLabelMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveShortcutLabelMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveShortcutLabelMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveShortcutLabelMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveShortcutLabelMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveShortcutLabelMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveShortcutLabelMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveShortcutLabelMethod "setAccelerator" o = ShortcutLabelSetAcceleratorMethodInfo
    ResolveShortcutLabelMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveShortcutLabelMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveShortcutLabelMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveShortcutLabelMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveShortcutLabelMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveShortcutLabelMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveShortcutLabelMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveShortcutLabelMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveShortcutLabelMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveShortcutLabelMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveShortcutLabelMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveShortcutLabelMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveShortcutLabelMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveShortcutLabelMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveShortcutLabelMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveShortcutLabelMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveShortcutLabelMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveShortcutLabelMethod "setDisabledText" o = ShortcutLabelSetDisabledTextMethodInfo
    ResolveShortcutLabelMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveShortcutLabelMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveShortcutLabelMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveShortcutLabelMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveShortcutLabelMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveShortcutLabelMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveShortcutLabelMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveShortcutLabelMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveShortcutLabelMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveShortcutLabelMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveShortcutLabelMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveShortcutLabelMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveShortcutLabelMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveShortcutLabelMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveShortcutLabelMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveShortcutLabelMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveShortcutLabelMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveShortcutLabelMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveShortcutLabelMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveShortcutLabelMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveShortcutLabelMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveShortcutLabelMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveShortcutLabelMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveShortcutLabelMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveShortcutLabelMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveShortcutLabelMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveShortcutLabelMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveShortcutLabelMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveShortcutLabelMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveShortcutLabelMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveShortcutLabelMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveShortcutLabelMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveShortcutLabelMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveShortcutLabelMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveShortcutLabelMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveShortcutLabelMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveShortcutLabelMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveShortcutLabelMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveShortcutLabelMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveShortcutLabelMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveShortcutLabelMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveShortcutLabelMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveShortcutLabelMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveShortcutLabelMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveShortcutLabelMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveShortcutLabelMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveShortcutLabelMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveShortcutLabelMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveShortcutLabelMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveShortcutLabelMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveShortcutLabelMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveShortcutLabelMethod t ShortcutLabel, O.MethodInfo info ShortcutLabel p) => OL.IsLabel t (ShortcutLabel -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "accelerator"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@accelerator@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutLabel #accelerator
-- @
getShortcutLabelAccelerator :: (MonadIO m, IsShortcutLabel o) => o -> m (Maybe T.Text)
getShortcutLabelAccelerator obj = liftIO $ B.Properties.getObjectPropertyString obj "accelerator"

-- | Set the value of the “@accelerator@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutLabel [ #accelerator 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutLabelAccelerator :: (MonadIO m, IsShortcutLabel o) => o -> T.Text -> m ()
setShortcutLabelAccelerator obj val = liftIO $ B.Properties.setObjectPropertyString obj "accelerator" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@accelerator@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutLabelAccelerator :: (IsShortcutLabel o) => T.Text -> IO (GValueConstruct o)
constructShortcutLabelAccelerator val = B.Properties.constructObjectPropertyString "accelerator" (Just val)

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelAcceleratorPropertyInfo
instance AttrInfo ShortcutLabelAcceleratorPropertyInfo where
    type AttrAllowedOps ShortcutLabelAcceleratorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ShortcutLabelAcceleratorPropertyInfo = IsShortcutLabel
    type AttrSetTypeConstraint ShortcutLabelAcceleratorPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutLabelAcceleratorPropertyInfo = (~) T.Text
    type AttrTransferType ShortcutLabelAcceleratorPropertyInfo = T.Text
    type AttrGetType ShortcutLabelAcceleratorPropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutLabelAcceleratorPropertyInfo = "accelerator"
    type AttrOrigin ShortcutLabelAcceleratorPropertyInfo = ShortcutLabel
    attrGet = getShortcutLabelAccelerator
    attrSet = setShortcutLabelAccelerator
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutLabelAccelerator
    attrClear = undefined
#endif

-- VVV Prop "disabled-text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just False)

-- | Get the value of the “@disabled-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutLabel #disabledText
-- @
getShortcutLabelDisabledText :: (MonadIO m, IsShortcutLabel o) => o -> m (Maybe T.Text)
getShortcutLabelDisabledText obj = liftIO $ B.Properties.getObjectPropertyString obj "disabled-text"

-- | Set the value of the “@disabled-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutLabel [ #disabledText 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutLabelDisabledText :: (MonadIO m, IsShortcutLabel o) => o -> T.Text -> m ()
setShortcutLabelDisabledText obj val = liftIO $ B.Properties.setObjectPropertyString obj "disabled-text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@disabled-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutLabelDisabledText :: (IsShortcutLabel o) => T.Text -> IO (GValueConstruct o)
constructShortcutLabelDisabledText val = B.Properties.constructObjectPropertyString "disabled-text" (Just val)

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelDisabledTextPropertyInfo
instance AttrInfo ShortcutLabelDisabledTextPropertyInfo where
    type AttrAllowedOps ShortcutLabelDisabledTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ShortcutLabelDisabledTextPropertyInfo = IsShortcutLabel
    type AttrSetTypeConstraint ShortcutLabelDisabledTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutLabelDisabledTextPropertyInfo = (~) T.Text
    type AttrTransferType ShortcutLabelDisabledTextPropertyInfo = T.Text
    type AttrGetType ShortcutLabelDisabledTextPropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutLabelDisabledTextPropertyInfo = "disabled-text"
    type AttrOrigin ShortcutLabelDisabledTextPropertyInfo = ShortcutLabel
    attrGet = getShortcutLabelDisabledText
    attrSet = setShortcutLabelDisabledText
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutLabelDisabledText
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ShortcutLabel
type instance O.AttributeList ShortcutLabel = ShortcutLabelAttributeList
type ShortcutLabelAttributeList = ('[ '("accelerator", ShortcutLabelAcceleratorPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("disabledText", ShortcutLabelDisabledTextPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
shortcutLabelAccelerator :: AttrLabelProxy "accelerator"
shortcutLabelAccelerator = AttrLabelProxy

shortcutLabelDisabledText :: AttrLabelProxy "disabledText"
shortcutLabelDisabledText = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ShortcutLabel = ShortcutLabelSignalList
type ShortcutLabelSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ShortcutLabel::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "accelerator"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the initial accelerator"
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
--               (TInterface Name { namespace = "Gtk" , name = "ShortcutLabel" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_shortcut_label_new" gtk_shortcut_label_new :: 
    CString ->                              -- accelerator : TBasicType TUTF8
    IO (Ptr ShortcutLabel)

-- | Creates a new t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel' with /@accelerator@/ set.
-- 
-- /Since: 3.22/
shortcutLabelNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@accelerator@/: the initial accelerator
    -> m ShortcutLabel
    -- ^ __Returns:__ a newly-allocated t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel'
shortcutLabelNew accelerator = liftIO $ do
    accelerator' <- textToCString accelerator
    result <- gtk_shortcut_label_new accelerator'
    checkUnexpectedReturnNULL "shortcutLabelNew" result
    result' <- (wrapObject ShortcutLabel) result
    freeMem accelerator'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ShortcutLabel::get_accelerator
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShortcutLabel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkShortcutLabel"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_shortcut_label_get_accelerator" gtk_shortcut_label_get_accelerator :: 
    Ptr ShortcutLabel ->                    -- self : TInterface (Name {namespace = "Gtk", name = "ShortcutLabel"})
    IO CString

-- | Retrieves the current accelerator of /@self@/.
-- 
-- /Since: 3.22/
shortcutLabelGetAccelerator ::
    (B.CallStack.HasCallStack, MonadIO m, IsShortcutLabel a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the current accelerator.
shortcutLabelGetAccelerator self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_shortcut_label_get_accelerator self'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr self
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelGetAcceleratorMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsShortcutLabel a) => O.MethodInfo ShortcutLabelGetAcceleratorMethodInfo a signature where
    overloadedMethod = shortcutLabelGetAccelerator

#endif

-- method ShortcutLabel::get_disabled_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShortcutLabel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkShortcutLabel"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_shortcut_label_get_disabled_text" gtk_shortcut_label_get_disabled_text :: 
    Ptr ShortcutLabel ->                    -- self : TInterface (Name {namespace = "Gtk", name = "ShortcutLabel"})
    IO CString

-- | Retrieves the text that is displayed when no accelerator is set.
-- 
-- /Since: 3.22/
shortcutLabelGetDisabledText ::
    (B.CallStack.HasCallStack, MonadIO m, IsShortcutLabel a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the current text displayed when no
    -- accelerator is set.
shortcutLabelGetDisabledText self = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    result <- gtk_shortcut_label_get_disabled_text self'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr self
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelGetDisabledTextMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsShortcutLabel a) => O.MethodInfo ShortcutLabelGetDisabledTextMethodInfo a signature where
    overloadedMethod = shortcutLabelGetDisabledText

#endif

-- method ShortcutLabel::set_accelerator
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShortcutLabel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkShortcutLabel"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "accelerator"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new accelerator"
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

foreign import ccall "gtk_shortcut_label_set_accelerator" gtk_shortcut_label_set_accelerator :: 
    Ptr ShortcutLabel ->                    -- self : TInterface (Name {namespace = "Gtk", name = "ShortcutLabel"})
    CString ->                              -- accelerator : TBasicType TUTF8
    IO ()

-- | Sets the accelerator to be displayed by /@self@/.
-- 
-- /Since: 3.22/
shortcutLabelSetAccelerator ::
    (B.CallStack.HasCallStack, MonadIO m, IsShortcutLabel a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel'
    -> T.Text
    -- ^ /@accelerator@/: the new accelerator
    -> m ()
shortcutLabelSetAccelerator self accelerator = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    accelerator' <- textToCString accelerator
    gtk_shortcut_label_set_accelerator self' accelerator'
    touchManagedPtr self
    freeMem accelerator'
    return ()

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelSetAcceleratorMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsShortcutLabel a) => O.MethodInfo ShortcutLabelSetAcceleratorMethodInfo a signature where
    overloadedMethod = shortcutLabelSetAccelerator

#endif

-- method ShortcutLabel::set_disabled_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "self"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShortcutLabel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkShortcutLabel"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "disabled_text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the text to be displayed when no accelerator is set"
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

foreign import ccall "gtk_shortcut_label_set_disabled_text" gtk_shortcut_label_set_disabled_text :: 
    Ptr ShortcutLabel ->                    -- self : TInterface (Name {namespace = "Gtk", name = "ShortcutLabel"})
    CString ->                              -- disabled_text : TBasicType TUTF8
    IO ()

-- | Sets the text to be displayed by /@self@/ when no accelerator is set.
-- 
-- /Since: 3.22/
shortcutLabelSetDisabledText ::
    (B.CallStack.HasCallStack, MonadIO m, IsShortcutLabel a) =>
    a
    -- ^ /@self@/: a t'GI.Gtk.Objects.ShortcutLabel.ShortcutLabel'
    -> T.Text
    -- ^ /@disabledText@/: the text to be displayed when no accelerator is set
    -> m ()
shortcutLabelSetDisabledText self disabledText = liftIO $ do
    self' <- unsafeManagedPtrCastPtr self
    disabledText' <- textToCString disabledText
    gtk_shortcut_label_set_disabled_text self' disabledText'
    touchManagedPtr self
    freeMem disabledText'
    return ()

#if defined(ENABLE_OVERLOADING)
data ShortcutLabelSetDisabledTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsShortcutLabel a) => O.MethodInfo ShortcutLabelSetDisabledTextMethodInfo a signature where
    overloadedMethod = shortcutLabelSetDisabledText

#endif

