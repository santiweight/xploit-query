{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The GtkStackSwitcher widget acts as a controller for a
-- t'GI.Gtk.Objects.Stack.Stack'; it shows a row of buttons to switch between
-- the various pages of the associated stack widget.
-- 
-- All the content for the buttons comes from the child properties
-- of the t'GI.Gtk.Objects.Stack.Stack'; the button visibility in a t'GI.Gtk.Objects.StackSwitcher.StackSwitcher'
-- widget is controlled by the visibility of the child in the
-- t'GI.Gtk.Objects.Stack.Stack'.
-- 
-- It is possible to associate multiple t'GI.Gtk.Objects.StackSwitcher.StackSwitcher' widgets
-- with the same t'GI.Gtk.Objects.Stack.Stack' widget.
-- 
-- The GtkStackSwitcher widget was added in 3.10.
-- 
-- = CSS nodes
-- 
-- GtkStackSwitcher has a single CSS node named stackswitcher and
-- style class .stack-switcher.
-- 
-- When circumstances require it, GtkStackSwitcher adds the
-- .needs-attention style class to the widgets representing the
-- stack pages.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.StackSwitcher
    ( 

-- * Exported types
    StackSwitcher(..)                       ,
    IsStackSwitcher                         ,
    toStackSwitcher                         ,
    noStackSwitcher                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStackSwitcherMethod              ,
#endif


-- ** getStack #method:getStack#

#if defined(ENABLE_OVERLOADING)
    StackSwitcherGetStackMethodInfo         ,
#endif
    stackSwitcherGetStack                   ,


-- ** new #method:new#

    stackSwitcherNew                        ,


-- ** setStack #method:setStack#

#if defined(ENABLE_OVERLOADING)
    StackSwitcherSetStackMethodInfo         ,
#endif
    stackSwitcherSetStack                   ,




 -- * Properties
-- ** iconSize #attr:iconSize#
-- | Use the \"icon-size\" property to change the size of the image displayed
-- when a t'GI.Gtk.Objects.StackSwitcher.StackSwitcher' is displaying icons.
-- 
-- /Since: 3.20/

#if defined(ENABLE_OVERLOADING)
    StackSwitcherIconSizePropertyInfo       ,
#endif
    constructStackSwitcherIconSize          ,
    getStackSwitcherIconSize                ,
    setStackSwitcherIconSize                ,
#if defined(ENABLE_OVERLOADING)
    stackSwitcherIconSize                   ,
#endif


-- ** stack #attr:stack#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    StackSwitcherStackPropertyInfo          ,
#endif
    clearStackSwitcherStack                 ,
    constructStackSwitcherStack             ,
    getStackSwitcherStack                   ,
    setStackSwitcherStack                   ,
#if defined(ENABLE_OVERLOADING)
    stackSwitcherStack                      ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Stack as Gtk.Stack
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype StackSwitcher = StackSwitcher (ManagedPtr StackSwitcher)
    deriving (Eq)
foreign import ccall "gtk_stack_switcher_get_type"
    c_gtk_stack_switcher_get_type :: IO GType

instance GObject StackSwitcher where
    gobjectType = c_gtk_stack_switcher_get_type
    

-- | Convert 'StackSwitcher' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StackSwitcher where
    toGValue o = do
        gtype <- c_gtk_stack_switcher_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StackSwitcher)
        B.ManagedPtr.newObject StackSwitcher ptr
        
    

-- | Type class for types which can be safely cast to `StackSwitcher`, for instance with `toStackSwitcher`.
class (GObject o, O.IsDescendantOf StackSwitcher o) => IsStackSwitcher o
instance (GObject o, O.IsDescendantOf StackSwitcher o) => IsStackSwitcher o

instance O.HasParentTypes StackSwitcher
type instance O.ParentTypes StackSwitcher = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `StackSwitcher`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStackSwitcher :: (MonadIO m, IsStackSwitcher o) => o -> m StackSwitcher
toStackSwitcher = liftIO . unsafeCastTo StackSwitcher

-- | A convenience alias for `Nothing` :: `Maybe` `StackSwitcher`.
noStackSwitcher :: Maybe StackSwitcher
noStackSwitcher = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStackSwitcherMethod (t :: Symbol) (o :: *) :: * where
    ResolveStackSwitcherMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveStackSwitcherMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveStackSwitcherMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveStackSwitcherMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveStackSwitcherMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveStackSwitcherMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveStackSwitcherMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveStackSwitcherMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveStackSwitcherMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStackSwitcherMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStackSwitcherMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveStackSwitcherMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveStackSwitcherMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveStackSwitcherMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveStackSwitcherMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveStackSwitcherMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveStackSwitcherMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveStackSwitcherMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveStackSwitcherMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveStackSwitcherMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveStackSwitcherMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveStackSwitcherMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveStackSwitcherMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveStackSwitcherMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveStackSwitcherMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveStackSwitcherMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveStackSwitcherMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveStackSwitcherMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveStackSwitcherMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveStackSwitcherMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveStackSwitcherMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveStackSwitcherMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveStackSwitcherMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveStackSwitcherMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveStackSwitcherMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveStackSwitcherMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveStackSwitcherMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveStackSwitcherMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveStackSwitcherMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveStackSwitcherMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveStackSwitcherMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveStackSwitcherMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveStackSwitcherMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveStackSwitcherMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveStackSwitcherMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveStackSwitcherMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveStackSwitcherMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveStackSwitcherMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveStackSwitcherMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveStackSwitcherMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveStackSwitcherMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveStackSwitcherMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveStackSwitcherMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveStackSwitcherMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveStackSwitcherMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveStackSwitcherMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveStackSwitcherMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveStackSwitcherMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveStackSwitcherMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveStackSwitcherMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveStackSwitcherMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveStackSwitcherMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveStackSwitcherMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStackSwitcherMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveStackSwitcherMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveStackSwitcherMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStackSwitcherMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStackSwitcherMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveStackSwitcherMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveStackSwitcherMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveStackSwitcherMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveStackSwitcherMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveStackSwitcherMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveStackSwitcherMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveStackSwitcherMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveStackSwitcherMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveStackSwitcherMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveStackSwitcherMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveStackSwitcherMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveStackSwitcherMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveStackSwitcherMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveStackSwitcherMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveStackSwitcherMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveStackSwitcherMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveStackSwitcherMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveStackSwitcherMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveStackSwitcherMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveStackSwitcherMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStackSwitcherMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveStackSwitcherMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveStackSwitcherMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveStackSwitcherMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveStackSwitcherMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveStackSwitcherMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveStackSwitcherMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveStackSwitcherMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveStackSwitcherMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveStackSwitcherMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveStackSwitcherMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveStackSwitcherMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveStackSwitcherMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveStackSwitcherMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveStackSwitcherMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveStackSwitcherMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveStackSwitcherMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveStackSwitcherMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStackSwitcherMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStackSwitcherMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveStackSwitcherMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveStackSwitcherMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveStackSwitcherMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveStackSwitcherMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveStackSwitcherMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveStackSwitcherMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveStackSwitcherMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveStackSwitcherMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveStackSwitcherMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveStackSwitcherMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveStackSwitcherMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveStackSwitcherMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveStackSwitcherMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveStackSwitcherMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveStackSwitcherMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveStackSwitcherMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveStackSwitcherMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveStackSwitcherMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveStackSwitcherMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStackSwitcherMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStackSwitcherMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveStackSwitcherMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveStackSwitcherMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveStackSwitcherMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveStackSwitcherMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveStackSwitcherMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveStackSwitcherMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveStackSwitcherMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveStackSwitcherMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveStackSwitcherMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveStackSwitcherMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveStackSwitcherMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveStackSwitcherMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveStackSwitcherMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStackSwitcherMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveStackSwitcherMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveStackSwitcherMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveStackSwitcherMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveStackSwitcherMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveStackSwitcherMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveStackSwitcherMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveStackSwitcherMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveStackSwitcherMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveStackSwitcherMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStackSwitcherMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStackSwitcherMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveStackSwitcherMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveStackSwitcherMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveStackSwitcherMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStackSwitcherMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveStackSwitcherMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveStackSwitcherMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveStackSwitcherMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveStackSwitcherMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveStackSwitcherMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStackSwitcherMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveStackSwitcherMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveStackSwitcherMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveStackSwitcherMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStackSwitcherMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveStackSwitcherMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveStackSwitcherMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveStackSwitcherMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveStackSwitcherMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveStackSwitcherMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveStackSwitcherMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveStackSwitcherMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveStackSwitcherMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveStackSwitcherMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveStackSwitcherMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveStackSwitcherMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveStackSwitcherMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveStackSwitcherMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveStackSwitcherMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveStackSwitcherMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveStackSwitcherMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveStackSwitcherMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveStackSwitcherMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveStackSwitcherMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveStackSwitcherMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStackSwitcherMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveStackSwitcherMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveStackSwitcherMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveStackSwitcherMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveStackSwitcherMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveStackSwitcherMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveStackSwitcherMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveStackSwitcherMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveStackSwitcherMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveStackSwitcherMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveStackSwitcherMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveStackSwitcherMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveStackSwitcherMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveStackSwitcherMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveStackSwitcherMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveStackSwitcherMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveStackSwitcherMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveStackSwitcherMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveStackSwitcherMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveStackSwitcherMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveStackSwitcherMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveStackSwitcherMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveStackSwitcherMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveStackSwitcherMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveStackSwitcherMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveStackSwitcherMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveStackSwitcherMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveStackSwitcherMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveStackSwitcherMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveStackSwitcherMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveStackSwitcherMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveStackSwitcherMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveStackSwitcherMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveStackSwitcherMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveStackSwitcherMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveStackSwitcherMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveStackSwitcherMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveStackSwitcherMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveStackSwitcherMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveStackSwitcherMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveStackSwitcherMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveStackSwitcherMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveStackSwitcherMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveStackSwitcherMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveStackSwitcherMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveStackSwitcherMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveStackSwitcherMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStackSwitcherMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStackSwitcherMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveStackSwitcherMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveStackSwitcherMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveStackSwitcherMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveStackSwitcherMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveStackSwitcherMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveStackSwitcherMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveStackSwitcherMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveStackSwitcherMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveStackSwitcherMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveStackSwitcherMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveStackSwitcherMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveStackSwitcherMethod "getStack" o = StackSwitcherGetStackMethodInfo
    ResolveStackSwitcherMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveStackSwitcherMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveStackSwitcherMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveStackSwitcherMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveStackSwitcherMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveStackSwitcherMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveStackSwitcherMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveStackSwitcherMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveStackSwitcherMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveStackSwitcherMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveStackSwitcherMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveStackSwitcherMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveStackSwitcherMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveStackSwitcherMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveStackSwitcherMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveStackSwitcherMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveStackSwitcherMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveStackSwitcherMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveStackSwitcherMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveStackSwitcherMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveStackSwitcherMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveStackSwitcherMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveStackSwitcherMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveStackSwitcherMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveStackSwitcherMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveStackSwitcherMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveStackSwitcherMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveStackSwitcherMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveStackSwitcherMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveStackSwitcherMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveStackSwitcherMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStackSwitcherMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStackSwitcherMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveStackSwitcherMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveStackSwitcherMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveStackSwitcherMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveStackSwitcherMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveStackSwitcherMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveStackSwitcherMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveStackSwitcherMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveStackSwitcherMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveStackSwitcherMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveStackSwitcherMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveStackSwitcherMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveStackSwitcherMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveStackSwitcherMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveStackSwitcherMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveStackSwitcherMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveStackSwitcherMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveStackSwitcherMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveStackSwitcherMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveStackSwitcherMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveStackSwitcherMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveStackSwitcherMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveStackSwitcherMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveStackSwitcherMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveStackSwitcherMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveStackSwitcherMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveStackSwitcherMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveStackSwitcherMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveStackSwitcherMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveStackSwitcherMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveStackSwitcherMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveStackSwitcherMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStackSwitcherMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveStackSwitcherMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveStackSwitcherMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveStackSwitcherMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveStackSwitcherMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveStackSwitcherMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveStackSwitcherMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveStackSwitcherMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveStackSwitcherMethod "setStack" o = StackSwitcherSetStackMethodInfo
    ResolveStackSwitcherMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveStackSwitcherMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveStackSwitcherMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveStackSwitcherMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveStackSwitcherMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveStackSwitcherMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveStackSwitcherMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveStackSwitcherMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveStackSwitcherMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveStackSwitcherMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveStackSwitcherMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveStackSwitcherMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveStackSwitcherMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveStackSwitcherMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStackSwitcherMethod t StackSwitcher, O.MethodInfo info StackSwitcher p) => OL.IsLabel t (StackSwitcher -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "icon-size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@icon-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' stackSwitcher #iconSize
-- @
getStackSwitcherIconSize :: (MonadIO m, IsStackSwitcher o) => o -> m Int32
getStackSwitcherIconSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "icon-size"

-- | Set the value of the “@icon-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' stackSwitcher [ #iconSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setStackSwitcherIconSize :: (MonadIO m, IsStackSwitcher o) => o -> Int32 -> m ()
setStackSwitcherIconSize obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "icon-size" val

-- | Construct a `GValueConstruct` with valid value for the “@icon-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStackSwitcherIconSize :: (IsStackSwitcher o) => Int32 -> IO (GValueConstruct o)
constructStackSwitcherIconSize val = B.Properties.constructObjectPropertyInt32 "icon-size" val

#if defined(ENABLE_OVERLOADING)
data StackSwitcherIconSizePropertyInfo
instance AttrInfo StackSwitcherIconSizePropertyInfo where
    type AttrAllowedOps StackSwitcherIconSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint StackSwitcherIconSizePropertyInfo = IsStackSwitcher
    type AttrSetTypeConstraint StackSwitcherIconSizePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint StackSwitcherIconSizePropertyInfo = (~) Int32
    type AttrTransferType StackSwitcherIconSizePropertyInfo = Int32
    type AttrGetType StackSwitcherIconSizePropertyInfo = Int32
    type AttrLabel StackSwitcherIconSizePropertyInfo = "icon-size"
    type AttrOrigin StackSwitcherIconSizePropertyInfo = StackSwitcher
    attrGet = getStackSwitcherIconSize
    attrSet = setStackSwitcherIconSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructStackSwitcherIconSize
    attrClear = undefined
#endif

-- VVV Prop "stack"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Stack"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@stack@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' stackSwitcher #stack
-- @
getStackSwitcherStack :: (MonadIO m, IsStackSwitcher o) => o -> m (Maybe Gtk.Stack.Stack)
getStackSwitcherStack obj = liftIO $ B.Properties.getObjectPropertyObject obj "stack" Gtk.Stack.Stack

-- | Set the value of the “@stack@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' stackSwitcher [ #stack 'Data.GI.Base.Attributes.:=' value ]
-- @
setStackSwitcherStack :: (MonadIO m, IsStackSwitcher o, Gtk.Stack.IsStack a) => o -> a -> m ()
setStackSwitcherStack obj val = liftIO $ B.Properties.setObjectPropertyObject obj "stack" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stack@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructStackSwitcherStack :: (IsStackSwitcher o, Gtk.Stack.IsStack a) => a -> IO (GValueConstruct o)
constructStackSwitcherStack val = B.Properties.constructObjectPropertyObject "stack" (Just val)

-- | Set the value of the “@stack@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #stack
-- @
clearStackSwitcherStack :: (MonadIO m, IsStackSwitcher o) => o -> m ()
clearStackSwitcherStack obj = liftIO $ B.Properties.setObjectPropertyObject obj "stack" (Nothing :: Maybe Gtk.Stack.Stack)

#if defined(ENABLE_OVERLOADING)
data StackSwitcherStackPropertyInfo
instance AttrInfo StackSwitcherStackPropertyInfo where
    type AttrAllowedOps StackSwitcherStackPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint StackSwitcherStackPropertyInfo = IsStackSwitcher
    type AttrSetTypeConstraint StackSwitcherStackPropertyInfo = Gtk.Stack.IsStack
    type AttrTransferTypeConstraint StackSwitcherStackPropertyInfo = Gtk.Stack.IsStack
    type AttrTransferType StackSwitcherStackPropertyInfo = Gtk.Stack.Stack
    type AttrGetType StackSwitcherStackPropertyInfo = (Maybe Gtk.Stack.Stack)
    type AttrLabel StackSwitcherStackPropertyInfo = "stack"
    type AttrOrigin StackSwitcherStackPropertyInfo = StackSwitcher
    attrGet = getStackSwitcherStack
    attrSet = setStackSwitcherStack
    attrTransfer _ v = do
        unsafeCastTo Gtk.Stack.Stack v
    attrConstruct = constructStackSwitcherStack
    attrClear = clearStackSwitcherStack
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StackSwitcher
type instance O.AttributeList StackSwitcher = StackSwitcherAttributeList
type StackSwitcherAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("iconSize", StackSwitcherIconSizePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("stack", StackSwitcherStackPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
stackSwitcherIconSize :: AttrLabelProxy "iconSize"
stackSwitcherIconSize = AttrLabelProxy

stackSwitcherStack :: AttrLabelProxy "stack"
stackSwitcherStack = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StackSwitcher = StackSwitcherSignalList
type StackSwitcherSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method StackSwitcher::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "StackSwitcher" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_stack_switcher_new" gtk_stack_switcher_new :: 
    IO (Ptr StackSwitcher)

-- | Create a new t'GI.Gtk.Objects.StackSwitcher.StackSwitcher'.
-- 
-- /Since: 3.10/
stackSwitcherNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StackSwitcher
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.StackSwitcher.StackSwitcher'.
stackSwitcherNew  = liftIO $ do
    result <- gtk_stack_switcher_new
    checkUnexpectedReturnNULL "stackSwitcherNew" result
    result' <- (newObject StackSwitcher) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StackSwitcher::get_stack
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "switcher"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StackSwitcher" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStackSwitcher"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Stack" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_stack_switcher_get_stack" gtk_stack_switcher_get_stack :: 
    Ptr StackSwitcher ->                    -- switcher : TInterface (Name {namespace = "Gtk", name = "StackSwitcher"})
    IO (Ptr Gtk.Stack.Stack)

-- | Retrieves the stack.
-- See 'GI.Gtk.Objects.StackSwitcher.stackSwitcherSetStack'.
-- 
-- /Since: 3.10/
stackSwitcherGetStack ::
    (B.CallStack.HasCallStack, MonadIO m, IsStackSwitcher a) =>
    a
    -- ^ /@switcher@/: a t'GI.Gtk.Objects.StackSwitcher.StackSwitcher'
    -> m (Maybe Gtk.Stack.Stack)
    -- ^ __Returns:__ the stack, or 'P.Nothing' if
    --    none has been set explicitly.
stackSwitcherGetStack switcher = liftIO $ do
    switcher' <- unsafeManagedPtrCastPtr switcher
    result <- gtk_stack_switcher_get_stack switcher'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Stack.Stack) result'
        return result''
    touchManagedPtr switcher
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StackSwitcherGetStackMethodInfo
instance (signature ~ (m (Maybe Gtk.Stack.Stack)), MonadIO m, IsStackSwitcher a) => O.MethodInfo StackSwitcherGetStackMethodInfo a signature where
    overloadedMethod = stackSwitcherGetStack

#endif

-- method StackSwitcher::set_stack
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "switcher"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "StackSwitcher" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStackSwitcher"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "stack"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Stack" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkStack" , sinceVersion = Nothing }
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

foreign import ccall "gtk_stack_switcher_set_stack" gtk_stack_switcher_set_stack :: 
    Ptr StackSwitcher ->                    -- switcher : TInterface (Name {namespace = "Gtk", name = "StackSwitcher"})
    Ptr Gtk.Stack.Stack ->                  -- stack : TInterface (Name {namespace = "Gtk", name = "Stack"})
    IO ()

-- | Sets the stack to control.
-- 
-- /Since: 3.10/
stackSwitcherSetStack ::
    (B.CallStack.HasCallStack, MonadIO m, IsStackSwitcher a, Gtk.Stack.IsStack b) =>
    a
    -- ^ /@switcher@/: a t'GI.Gtk.Objects.StackSwitcher.StackSwitcher'
    -> Maybe (b)
    -- ^ /@stack@/: a t'GI.Gtk.Objects.Stack.Stack'
    -> m ()
stackSwitcherSetStack switcher stack = liftIO $ do
    switcher' <- unsafeManagedPtrCastPtr switcher
    maybeStack <- case stack of
        Nothing -> return nullPtr
        Just jStack -> do
            jStack' <- unsafeManagedPtrCastPtr jStack
            return jStack'
    gtk_stack_switcher_set_stack switcher' maybeStack
    touchManagedPtr switcher
    whenJust stack touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data StackSwitcherSetStackMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsStackSwitcher a, Gtk.Stack.IsStack b) => O.MethodInfo StackSwitcherSetStackMethodInfo a signature where
    overloadedMethod = stackSwitcherSetStack

#endif

