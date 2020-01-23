{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem' is a t'GI.Gtk.Objects.ToolItem.ToolItem' that separates groups of other
-- @/GtkToolItems/@. Depending on the theme, a t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem' will
-- often look like a vertical line on horizontally docked toolbars.
-- 
-- If the t'GI.Gtk.Objects.Toolbar.Toolbar' child property “expand” is 'P.True' and the property
-- t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem':@/draw/@ is 'P.False', a t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem' will act as
-- a “spring” that forces other items to the ends of the toolbar.
-- 
-- Use 'GI.Gtk.Objects.SeparatorToolItem.separatorToolItemNew' to create a new t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem'.
-- 
-- = CSS nodes
-- 
-- GtkSeparatorToolItem has a single CSS node with name separator.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SeparatorToolItem
    ( 

-- * Exported types
    SeparatorToolItem(..)                   ,
    IsSeparatorToolItem                     ,
    toSeparatorToolItem                     ,
    noSeparatorToolItem                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSeparatorToolItemMethod          ,
#endif


-- ** getDraw #method:getDraw#

#if defined(ENABLE_OVERLOADING)
    SeparatorToolItemGetDrawMethodInfo      ,
#endif
    separatorToolItemGetDraw                ,


-- ** new #method:new#

    separatorToolItemNew                    ,


-- ** setDraw #method:setDraw#

#if defined(ENABLE_OVERLOADING)
    SeparatorToolItemSetDrawMethodInfo      ,
#endif
    separatorToolItemSetDraw                ,




 -- * Properties
-- ** draw #attr:draw#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SeparatorToolItemDrawPropertyInfo       ,
#endif
    constructSeparatorToolItemDraw          ,
    getSeparatorToolItemDraw                ,
#if defined(ENABLE_OVERLOADING)
    separatorToolItemDraw                   ,
#endif
    setSeparatorToolItemDraw                ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype SeparatorToolItem = SeparatorToolItem (ManagedPtr SeparatorToolItem)
    deriving (Eq)
foreign import ccall "gtk_separator_tool_item_get_type"
    c_gtk_separator_tool_item_get_type :: IO GType

instance GObject SeparatorToolItem where
    gobjectType = c_gtk_separator_tool_item_get_type
    

-- | Convert 'SeparatorToolItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SeparatorToolItem where
    toGValue o = do
        gtype <- c_gtk_separator_tool_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SeparatorToolItem)
        B.ManagedPtr.newObject SeparatorToolItem ptr
        
    

-- | Type class for types which can be safely cast to `SeparatorToolItem`, for instance with `toSeparatorToolItem`.
class (GObject o, O.IsDescendantOf SeparatorToolItem o) => IsSeparatorToolItem o
instance (GObject o, O.IsDescendantOf SeparatorToolItem o) => IsSeparatorToolItem o

instance O.HasParentTypes SeparatorToolItem
type instance O.ParentTypes SeparatorToolItem = '[Gtk.ToolItem.ToolItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `SeparatorToolItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSeparatorToolItem :: (MonadIO m, IsSeparatorToolItem o) => o -> m SeparatorToolItem
toSeparatorToolItem = liftIO . unsafeCastTo SeparatorToolItem

-- | A convenience alias for `Nothing` :: `Maybe` `SeparatorToolItem`.
noSeparatorToolItem :: Maybe SeparatorToolItem
noSeparatorToolItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSeparatorToolItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveSeparatorToolItemMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSeparatorToolItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveSeparatorToolItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSeparatorToolItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSeparatorToolItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSeparatorToolItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSeparatorToolItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSeparatorToolItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSeparatorToolItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSeparatorToolItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSeparatorToolItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSeparatorToolItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveSeparatorToolItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSeparatorToolItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveSeparatorToolItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveSeparatorToolItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveSeparatorToolItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveSeparatorToolItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveSeparatorToolItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSeparatorToolItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSeparatorToolItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSeparatorToolItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSeparatorToolItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSeparatorToolItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSeparatorToolItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSeparatorToolItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSeparatorToolItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSeparatorToolItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSeparatorToolItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSeparatorToolItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveSeparatorToolItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSeparatorToolItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSeparatorToolItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSeparatorToolItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSeparatorToolItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSeparatorToolItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSeparatorToolItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSeparatorToolItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSeparatorToolItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSeparatorToolItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSeparatorToolItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSeparatorToolItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSeparatorToolItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSeparatorToolItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSeparatorToolItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSeparatorToolItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSeparatorToolItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSeparatorToolItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSeparatorToolItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSeparatorToolItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveSeparatorToolItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSeparatorToolItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveSeparatorToolItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSeparatorToolItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSeparatorToolItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSeparatorToolItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSeparatorToolItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSeparatorToolItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSeparatorToolItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSeparatorToolItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSeparatorToolItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSeparatorToolItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSeparatorToolItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSeparatorToolItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSeparatorToolItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSeparatorToolItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSeparatorToolItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSeparatorToolItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSeparatorToolItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSeparatorToolItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSeparatorToolItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSeparatorToolItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSeparatorToolItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSeparatorToolItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSeparatorToolItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSeparatorToolItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSeparatorToolItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSeparatorToolItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSeparatorToolItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSeparatorToolItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSeparatorToolItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSeparatorToolItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSeparatorToolItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSeparatorToolItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSeparatorToolItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSeparatorToolItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSeparatorToolItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSeparatorToolItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSeparatorToolItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSeparatorToolItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSeparatorToolItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSeparatorToolItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSeparatorToolItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSeparatorToolItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSeparatorToolItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSeparatorToolItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSeparatorToolItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSeparatorToolItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSeparatorToolItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSeparatorToolItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSeparatorToolItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSeparatorToolItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSeparatorToolItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveSeparatorToolItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSeparatorToolItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSeparatorToolItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSeparatorToolItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSeparatorToolItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSeparatorToolItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSeparatorToolItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSeparatorToolItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSeparatorToolItemMethod "rebuildMenu" o = Gtk.ToolItem.ToolItemRebuildMenuMethodInfo
    ResolveSeparatorToolItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSeparatorToolItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSeparatorToolItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSeparatorToolItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSeparatorToolItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveSeparatorToolItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSeparatorToolItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSeparatorToolItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSeparatorToolItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSeparatorToolItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSeparatorToolItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSeparatorToolItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSeparatorToolItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSeparatorToolItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveSeparatorToolItemMethod "retrieveProxyMenuItem" o = Gtk.ToolItem.ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveSeparatorToolItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSeparatorToolItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSeparatorToolItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSeparatorToolItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSeparatorToolItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSeparatorToolItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSeparatorToolItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSeparatorToolItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSeparatorToolItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSeparatorToolItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSeparatorToolItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSeparatorToolItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSeparatorToolItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSeparatorToolItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSeparatorToolItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveSeparatorToolItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSeparatorToolItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSeparatorToolItemMethod "toolbarReconfigured" o = Gtk.ToolItem.ToolItemToolbarReconfiguredMethodInfo
    ResolveSeparatorToolItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSeparatorToolItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSeparatorToolItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSeparatorToolItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSeparatorToolItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSeparatorToolItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSeparatorToolItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSeparatorToolItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveSeparatorToolItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSeparatorToolItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSeparatorToolItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSeparatorToolItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSeparatorToolItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSeparatorToolItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSeparatorToolItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSeparatorToolItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSeparatorToolItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSeparatorToolItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSeparatorToolItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSeparatorToolItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveSeparatorToolItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSeparatorToolItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSeparatorToolItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveSeparatorToolItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSeparatorToolItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSeparatorToolItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveSeparatorToolItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSeparatorToolItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSeparatorToolItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSeparatorToolItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSeparatorToolItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSeparatorToolItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSeparatorToolItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSeparatorToolItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSeparatorToolItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSeparatorToolItemMethod "getDraw" o = SeparatorToolItemGetDrawMethodInfo
    ResolveSeparatorToolItemMethod "getEllipsizeMode" o = Gtk.ToolItem.ToolItemGetEllipsizeModeMethodInfo
    ResolveSeparatorToolItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSeparatorToolItemMethod "getExpand" o = Gtk.ToolItem.ToolItemGetExpandMethodInfo
    ResolveSeparatorToolItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveSeparatorToolItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveSeparatorToolItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveSeparatorToolItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSeparatorToolItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveSeparatorToolItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSeparatorToolItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSeparatorToolItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSeparatorToolItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSeparatorToolItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSeparatorToolItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSeparatorToolItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSeparatorToolItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSeparatorToolItemMethod "getHomogeneous" o = Gtk.ToolItem.ToolItemGetHomogeneousMethodInfo
    ResolveSeparatorToolItemMethod "getIconSize" o = Gtk.ToolItem.ToolItemGetIconSizeMethodInfo
    ResolveSeparatorToolItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSeparatorToolItemMethod "getIsImportant" o = Gtk.ToolItem.ToolItemGetIsImportantMethodInfo
    ResolveSeparatorToolItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSeparatorToolItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSeparatorToolItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSeparatorToolItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSeparatorToolItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSeparatorToolItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSeparatorToolItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSeparatorToolItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSeparatorToolItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSeparatorToolItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSeparatorToolItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSeparatorToolItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSeparatorToolItemMethod "getOrientation" o = Gtk.ToolItem.ToolItemGetOrientationMethodInfo
    ResolveSeparatorToolItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSeparatorToolItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSeparatorToolItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSeparatorToolItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSeparatorToolItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveSeparatorToolItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSeparatorToolItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSeparatorToolItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSeparatorToolItemMethod "getProxyMenuItem" o = Gtk.ToolItem.ToolItemGetProxyMenuItemMethodInfo
    ResolveSeparatorToolItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSeparatorToolItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSeparatorToolItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSeparatorToolItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveSeparatorToolItemMethod "getReliefStyle" o = Gtk.ToolItem.ToolItemGetReliefStyleMethodInfo
    ResolveSeparatorToolItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSeparatorToolItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSeparatorToolItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveSeparatorToolItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSeparatorToolItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSeparatorToolItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSeparatorToolItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSeparatorToolItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSeparatorToolItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSeparatorToolItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSeparatorToolItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSeparatorToolItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSeparatorToolItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSeparatorToolItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSeparatorToolItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSeparatorToolItemMethod "getTextAlignment" o = Gtk.ToolItem.ToolItemGetTextAlignmentMethodInfo
    ResolveSeparatorToolItemMethod "getTextOrientation" o = Gtk.ToolItem.ToolItemGetTextOrientationMethodInfo
    ResolveSeparatorToolItemMethod "getTextSizeGroup" o = Gtk.ToolItem.ToolItemGetTextSizeGroupMethodInfo
    ResolveSeparatorToolItemMethod "getToolbarStyle" o = Gtk.ToolItem.ToolItemGetToolbarStyleMethodInfo
    ResolveSeparatorToolItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSeparatorToolItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSeparatorToolItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSeparatorToolItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSeparatorToolItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveSeparatorToolItemMethod "getUseDragWindow" o = Gtk.ToolItem.ToolItemGetUseDragWindowMethodInfo
    ResolveSeparatorToolItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSeparatorToolItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSeparatorToolItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSeparatorToolItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSeparatorToolItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSeparatorToolItemMethod "getVisibleHorizontal" o = Gtk.ToolItem.ToolItemGetVisibleHorizontalMethodInfo
    ResolveSeparatorToolItemMethod "getVisibleVertical" o = Gtk.ToolItem.ToolItemGetVisibleVerticalMethodInfo
    ResolveSeparatorToolItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSeparatorToolItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSeparatorToolItemMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSeparatorToolItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSeparatorToolItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSeparatorToolItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveSeparatorToolItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSeparatorToolItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSeparatorToolItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSeparatorToolItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSeparatorToolItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSeparatorToolItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSeparatorToolItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSeparatorToolItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSeparatorToolItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSeparatorToolItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSeparatorToolItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSeparatorToolItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSeparatorToolItemMethod "setDraw" o = SeparatorToolItemSetDrawMethodInfo
    ResolveSeparatorToolItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSeparatorToolItemMethod "setExpand" o = Gtk.ToolItem.ToolItemSetExpandMethodInfo
    ResolveSeparatorToolItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveSeparatorToolItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveSeparatorToolItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveSeparatorToolItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSeparatorToolItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveSeparatorToolItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSeparatorToolItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSeparatorToolItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSeparatorToolItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSeparatorToolItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSeparatorToolItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSeparatorToolItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSeparatorToolItemMethod "setHomogeneous" o = Gtk.ToolItem.ToolItemSetHomogeneousMethodInfo
    ResolveSeparatorToolItemMethod "setIsImportant" o = Gtk.ToolItem.ToolItemSetIsImportantMethodInfo
    ResolveSeparatorToolItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSeparatorToolItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSeparatorToolItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSeparatorToolItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSeparatorToolItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSeparatorToolItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSeparatorToolItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSeparatorToolItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSeparatorToolItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSeparatorToolItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSeparatorToolItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSeparatorToolItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSeparatorToolItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSeparatorToolItemMethod "setProxyMenuItem" o = Gtk.ToolItem.ToolItemSetProxyMenuItemMethodInfo
    ResolveSeparatorToolItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSeparatorToolItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveSeparatorToolItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSeparatorToolItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSeparatorToolItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveSeparatorToolItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveSeparatorToolItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSeparatorToolItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSeparatorToolItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSeparatorToolItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSeparatorToolItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSeparatorToolItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSeparatorToolItemMethod "setTooltipMarkup" o = Gtk.ToolItem.ToolItemSetTooltipMarkupMethodInfo
    ResolveSeparatorToolItemMethod "setTooltipText" o = Gtk.ToolItem.ToolItemSetTooltipTextMethodInfo
    ResolveSeparatorToolItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSeparatorToolItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveSeparatorToolItemMethod "setUseDragWindow" o = Gtk.ToolItem.ToolItemSetUseDragWindowMethodInfo
    ResolveSeparatorToolItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSeparatorToolItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSeparatorToolItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSeparatorToolItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSeparatorToolItemMethod "setVisibleHorizontal" o = Gtk.ToolItem.ToolItemSetVisibleHorizontalMethodInfo
    ResolveSeparatorToolItemMethod "setVisibleVertical" o = Gtk.ToolItem.ToolItemSetVisibleVerticalMethodInfo
    ResolveSeparatorToolItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSeparatorToolItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSeparatorToolItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSeparatorToolItemMethod t SeparatorToolItem, O.MethodInfo info SeparatorToolItem p) => OL.IsLabel t (SeparatorToolItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "draw"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@draw@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' separatorToolItem #draw
-- @
getSeparatorToolItemDraw :: (MonadIO m, IsSeparatorToolItem o) => o -> m Bool
getSeparatorToolItemDraw obj = liftIO $ B.Properties.getObjectPropertyBool obj "draw"

-- | Set the value of the “@draw@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' separatorToolItem [ #draw 'Data.GI.Base.Attributes.:=' value ]
-- @
setSeparatorToolItemDraw :: (MonadIO m, IsSeparatorToolItem o) => o -> Bool -> m ()
setSeparatorToolItemDraw obj val = liftIO $ B.Properties.setObjectPropertyBool obj "draw" val

-- | Construct a `GValueConstruct` with valid value for the “@draw@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSeparatorToolItemDraw :: (IsSeparatorToolItem o) => Bool -> IO (GValueConstruct o)
constructSeparatorToolItemDraw val = B.Properties.constructObjectPropertyBool "draw" val

#if defined(ENABLE_OVERLOADING)
data SeparatorToolItemDrawPropertyInfo
instance AttrInfo SeparatorToolItemDrawPropertyInfo where
    type AttrAllowedOps SeparatorToolItemDrawPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SeparatorToolItemDrawPropertyInfo = IsSeparatorToolItem
    type AttrSetTypeConstraint SeparatorToolItemDrawPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SeparatorToolItemDrawPropertyInfo = (~) Bool
    type AttrTransferType SeparatorToolItemDrawPropertyInfo = Bool
    type AttrGetType SeparatorToolItemDrawPropertyInfo = Bool
    type AttrLabel SeparatorToolItemDrawPropertyInfo = "draw"
    type AttrOrigin SeparatorToolItemDrawPropertyInfo = SeparatorToolItem
    attrGet = getSeparatorToolItemDraw
    attrSet = setSeparatorToolItemDraw
    attrTransfer _ v = do
        return v
    attrConstruct = constructSeparatorToolItemDraw
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SeparatorToolItem
type instance O.AttributeList SeparatorToolItem = SeparatorToolItemAttributeList
type SeparatorToolItemAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("draw", SeparatorToolItemDrawPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", Gtk.ToolItem.ToolItemIsImportantPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", Gtk.ToolItem.ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", Gtk.ToolItem.ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
separatorToolItemDraw :: AttrLabelProxy "draw"
separatorToolItemDraw = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SeparatorToolItem = SeparatorToolItemSignalList
type SeparatorToolItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", Gtk.ToolItem.ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toolbarReconfigured", Gtk.ToolItem.ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method SeparatorToolItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "SeparatorToolItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_separator_tool_item_new" gtk_separator_tool_item_new :: 
    IO (Ptr SeparatorToolItem)

-- | Create a new t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem'
-- 
-- /Since: 2.4/
separatorToolItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m SeparatorToolItem
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem'
separatorToolItemNew  = liftIO $ do
    result <- gtk_separator_tool_item_new
    checkUnexpectedReturnNULL "separatorToolItemNew" result
    result' <- (newObject SeparatorToolItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SeparatorToolItem::get_draw
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SeparatorToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSeparatorToolItem"
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

foreign import ccall "gtk_separator_tool_item_get_draw" gtk_separator_tool_item_get_draw :: 
    Ptr SeparatorToolItem ->                -- item : TInterface (Name {namespace = "Gtk", name = "SeparatorToolItem"})
    IO CInt

-- | Returns whether /@item@/ is drawn as a line, or just blank.
-- See 'GI.Gtk.Objects.SeparatorToolItem.separatorToolItemSetDraw'.
-- 
-- /Since: 2.4/
separatorToolItemGetDraw ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeparatorToolItem a) =>
    a
    -- ^ /@item@/: a t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@item@/ is drawn as a line, or just blank.
separatorToolItemGetDraw item = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    result <- gtk_separator_tool_item_get_draw item'
    let result' = (/= 0) result
    touchManagedPtr item
    return result'

#if defined(ENABLE_OVERLOADING)
data SeparatorToolItemGetDrawMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSeparatorToolItem a) => O.MethodInfo SeparatorToolItemGetDrawMethodInfo a signature where
    overloadedMethod = separatorToolItemGetDraw

#endif

-- method SeparatorToolItem::set_draw
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SeparatorToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSeparatorToolItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "draw"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether @item is drawn as a vertical line"
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

foreign import ccall "gtk_separator_tool_item_set_draw" gtk_separator_tool_item_set_draw :: 
    Ptr SeparatorToolItem ->                -- item : TInterface (Name {namespace = "Gtk", name = "SeparatorToolItem"})
    CInt ->                                 -- draw : TBasicType TBoolean
    IO ()

-- | Whether /@item@/ is drawn as a vertical line, or just blank.
-- Setting this to 'P.False' along with 'GI.Gtk.Objects.ToolItem.toolItemSetExpand' is useful
-- to create an item that forces following items to the end of the toolbar.
-- 
-- /Since: 2.4/
separatorToolItemSetDraw ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeparatorToolItem a) =>
    a
    -- ^ /@item@/: a t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem'
    -> Bool
    -- ^ /@draw@/: whether /@item@/ is drawn as a vertical line
    -> m ()
separatorToolItemSetDraw item draw = liftIO $ do
    item' <- unsafeManagedPtrCastPtr item
    let draw' = (fromIntegral . fromEnum) draw
    gtk_separator_tool_item_set_draw item' draw'
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data SeparatorToolItemSetDrawMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSeparatorToolItem a) => O.MethodInfo SeparatorToolItemSetDrawMethodInfo a signature where
    overloadedMethod = separatorToolItemSetDraw

#endif

