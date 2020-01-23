{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup' is used together with t'GI.Gtk.Objects.ToolPalette.ToolPalette' to add
-- @/GtkToolItems/@ to a palette like container with different
-- categories and drag and drop support.
-- 
-- = CSS nodes
-- 
-- GtkToolItemGroup has a single CSS node named toolitemgroup.
-- 
-- /Since: 2.20/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ToolItemGroup
    ( 

-- * Exported types
    ToolItemGroup(..)                       ,
    IsToolItemGroup                         ,
    toToolItemGroup                         ,
    noToolItemGroup                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToolItemGroupMethod              ,
#endif


-- ** getCollapsed #method:getCollapsed#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetCollapsedMethodInfo     ,
#endif
    toolItemGroupGetCollapsed               ,


-- ** getDropItem #method:getDropItem#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetDropItemMethodInfo      ,
#endif
    toolItemGroupGetDropItem                ,


-- ** getEllipsize #method:getEllipsize#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetEllipsizeMethodInfo     ,
#endif
    toolItemGroupGetEllipsize               ,


-- ** getHeaderRelief #method:getHeaderRelief#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetHeaderReliefMethodInfo  ,
#endif
    toolItemGroupGetHeaderRelief            ,


-- ** getItemPosition #method:getItemPosition#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetItemPositionMethodInfo  ,
#endif
    toolItemGroupGetItemPosition            ,


-- ** getLabel #method:getLabel#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetLabelMethodInfo         ,
#endif
    toolItemGroupGetLabel                   ,


-- ** getLabelWidget #method:getLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetLabelWidgetMethodInfo   ,
#endif
    toolItemGroupGetLabelWidget             ,


-- ** getNItems #method:getNItems#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetNItemsMethodInfo        ,
#endif
    toolItemGroupGetNItems                  ,


-- ** getNthItem #method:getNthItem#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupGetNthItemMethodInfo       ,
#endif
    toolItemGroupGetNthItem                 ,


-- ** insert #method:insert#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupInsertMethodInfo           ,
#endif
    toolItemGroupInsert                     ,


-- ** new #method:new#

    toolItemGroupNew                        ,


-- ** setCollapsed #method:setCollapsed#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetCollapsedMethodInfo     ,
#endif
    toolItemGroupSetCollapsed               ,


-- ** setEllipsize #method:setEllipsize#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetEllipsizeMethodInfo     ,
#endif
    toolItemGroupSetEllipsize               ,


-- ** setHeaderRelief #method:setHeaderRelief#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetHeaderReliefMethodInfo  ,
#endif
    toolItemGroupSetHeaderRelief            ,


-- ** setItemPosition #method:setItemPosition#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetItemPositionMethodInfo  ,
#endif
    toolItemGroupSetItemPosition            ,


-- ** setLabel #method:setLabel#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetLabelMethodInfo         ,
#endif
    toolItemGroupSetLabel                   ,


-- ** setLabelWidget #method:setLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupSetLabelWidgetMethodInfo   ,
#endif
    toolItemGroupSetLabelWidget             ,




 -- * Properties
-- ** collapsed #attr:collapsed#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupCollapsedPropertyInfo      ,
#endif
    constructToolItemGroupCollapsed         ,
    getToolItemGroupCollapsed               ,
    setToolItemGroupCollapsed               ,
#if defined(ENABLE_OVERLOADING)
    toolItemGroupCollapsed                  ,
#endif


-- ** ellipsize #attr:ellipsize#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupEllipsizePropertyInfo      ,
#endif
    constructToolItemGroupEllipsize         ,
    getToolItemGroupEllipsize               ,
    setToolItemGroupEllipsize               ,
#if defined(ENABLE_OVERLOADING)
    toolItemGroupEllipsize                  ,
#endif


-- ** headerRelief #attr:headerRelief#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupHeaderReliefPropertyInfo   ,
#endif
    constructToolItemGroupHeaderRelief      ,
    getToolItemGroupHeaderRelief            ,
    setToolItemGroupHeaderRelief            ,
#if defined(ENABLE_OVERLOADING)
    toolItemGroupHeaderRelief               ,
#endif


-- ** label #attr:label#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupLabelPropertyInfo          ,
#endif
    constructToolItemGroupLabel             ,
    getToolItemGroupLabel                   ,
    setToolItemGroupLabel                   ,
#if defined(ENABLE_OVERLOADING)
    toolItemGroupLabel                      ,
#endif


-- ** labelWidget #attr:labelWidget#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemGroupLabelWidgetPropertyInfo    ,
#endif
    constructToolItemGroupLabelWidget       ,
    getToolItemGroupLabelWidget             ,
    setToolItemGroupLabelWidget             ,
#if defined(ENABLE_OVERLOADING)
    toolItemGroupLabelWidget                ,
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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.ToolShell as Gtk.ToolShell
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Pango.Enums as Pango.Enums

-- | Memory-managed wrapper type.
newtype ToolItemGroup = ToolItemGroup (ManagedPtr ToolItemGroup)
    deriving (Eq)
foreign import ccall "gtk_tool_item_group_get_type"
    c_gtk_tool_item_group_get_type :: IO GType

instance GObject ToolItemGroup where
    gobjectType = c_gtk_tool_item_group_get_type
    

-- | Convert 'ToolItemGroup' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ToolItemGroup where
    toGValue o = do
        gtype <- c_gtk_tool_item_group_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ToolItemGroup)
        B.ManagedPtr.newObject ToolItemGroup ptr
        
    

-- | Type class for types which can be safely cast to `ToolItemGroup`, for instance with `toToolItemGroup`.
class (GObject o, O.IsDescendantOf ToolItemGroup o) => IsToolItemGroup o
instance (GObject o, O.IsDescendantOf ToolItemGroup o) => IsToolItemGroup o

instance O.HasParentTypes ToolItemGroup
type instance O.ParentTypes ToolItemGroup = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.ToolShell.ToolShell]

-- | Cast to `ToolItemGroup`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToolItemGroup :: (MonadIO m, IsToolItemGroup o) => o -> m ToolItemGroup
toToolItemGroup = liftIO . unsafeCastTo ToolItemGroup

-- | A convenience alias for `Nothing` :: `Maybe` `ToolItemGroup`.
noToolItemGroup :: Maybe ToolItemGroup
noToolItemGroup = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToolItemGroupMethod (t :: Symbol) (o :: *) :: * where
    ResolveToolItemGroupMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveToolItemGroupMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveToolItemGroupMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveToolItemGroupMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToolItemGroupMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveToolItemGroupMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveToolItemGroupMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveToolItemGroupMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveToolItemGroupMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToolItemGroupMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToolItemGroupMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveToolItemGroupMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveToolItemGroupMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveToolItemGroupMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveToolItemGroupMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveToolItemGroupMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveToolItemGroupMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveToolItemGroupMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveToolItemGroupMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveToolItemGroupMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveToolItemGroupMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToolItemGroupMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveToolItemGroupMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveToolItemGroupMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToolItemGroupMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToolItemGroupMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToolItemGroupMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveToolItemGroupMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveToolItemGroupMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveToolItemGroupMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveToolItemGroupMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveToolItemGroupMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveToolItemGroupMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveToolItemGroupMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveToolItemGroupMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveToolItemGroupMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveToolItemGroupMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveToolItemGroupMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveToolItemGroupMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveToolItemGroupMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveToolItemGroupMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveToolItemGroupMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveToolItemGroupMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveToolItemGroupMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveToolItemGroupMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveToolItemGroupMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveToolItemGroupMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveToolItemGroupMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveToolItemGroupMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveToolItemGroupMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveToolItemGroupMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveToolItemGroupMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveToolItemGroupMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveToolItemGroupMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveToolItemGroupMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveToolItemGroupMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveToolItemGroupMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveToolItemGroupMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveToolItemGroupMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveToolItemGroupMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveToolItemGroupMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveToolItemGroupMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveToolItemGroupMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToolItemGroupMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveToolItemGroupMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveToolItemGroupMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToolItemGroupMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToolItemGroupMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveToolItemGroupMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveToolItemGroupMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveToolItemGroupMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveToolItemGroupMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveToolItemGroupMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveToolItemGroupMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveToolItemGroupMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveToolItemGroupMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveToolItemGroupMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveToolItemGroupMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveToolItemGroupMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveToolItemGroupMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveToolItemGroupMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveToolItemGroupMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveToolItemGroupMethod "insert" o = ToolItemGroupInsertMethodInfo
    ResolveToolItemGroupMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveToolItemGroupMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveToolItemGroupMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveToolItemGroupMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveToolItemGroupMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveToolItemGroupMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToolItemGroupMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveToolItemGroupMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveToolItemGroupMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveToolItemGroupMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveToolItemGroupMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveToolItemGroupMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveToolItemGroupMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveToolItemGroupMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveToolItemGroupMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveToolItemGroupMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveToolItemGroupMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveToolItemGroupMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveToolItemGroupMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveToolItemGroupMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveToolItemGroupMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveToolItemGroupMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveToolItemGroupMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveToolItemGroupMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToolItemGroupMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToolItemGroupMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveToolItemGroupMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveToolItemGroupMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveToolItemGroupMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveToolItemGroupMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveToolItemGroupMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToolItemGroupMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveToolItemGroupMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveToolItemGroupMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveToolItemGroupMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveToolItemGroupMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveToolItemGroupMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveToolItemGroupMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveToolItemGroupMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveToolItemGroupMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveToolItemGroupMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveToolItemGroupMethod "rebuildMenu" o = Gtk.ToolShell.ToolShellRebuildMenuMethodInfo
    ResolveToolItemGroupMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToolItemGroupMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToolItemGroupMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveToolItemGroupMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveToolItemGroupMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveToolItemGroupMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveToolItemGroupMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveToolItemGroupMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveToolItemGroupMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveToolItemGroupMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveToolItemGroupMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveToolItemGroupMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveToolItemGroupMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveToolItemGroupMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveToolItemGroupMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToolItemGroupMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveToolItemGroupMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveToolItemGroupMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveToolItemGroupMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveToolItemGroupMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveToolItemGroupMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveToolItemGroupMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveToolItemGroupMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveToolItemGroupMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveToolItemGroupMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToolItemGroupMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToolItemGroupMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveToolItemGroupMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveToolItemGroupMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveToolItemGroupMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToolItemGroupMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveToolItemGroupMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveToolItemGroupMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveToolItemGroupMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveToolItemGroupMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveToolItemGroupMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToolItemGroupMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveToolItemGroupMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveToolItemGroupMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveToolItemGroupMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToolItemGroupMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveToolItemGroupMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveToolItemGroupMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveToolItemGroupMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveToolItemGroupMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveToolItemGroupMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveToolItemGroupMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveToolItemGroupMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveToolItemGroupMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveToolItemGroupMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveToolItemGroupMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveToolItemGroupMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveToolItemGroupMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveToolItemGroupMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveToolItemGroupMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveToolItemGroupMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveToolItemGroupMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveToolItemGroupMethod "getCollapsed" o = ToolItemGroupGetCollapsedMethodInfo
    ResolveToolItemGroupMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveToolItemGroupMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToolItemGroupMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveToolItemGroupMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveToolItemGroupMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveToolItemGroupMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveToolItemGroupMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveToolItemGroupMethod "getDropItem" o = ToolItemGroupGetDropItemMethodInfo
    ResolveToolItemGroupMethod "getEllipsize" o = ToolItemGroupGetEllipsizeMethodInfo
    ResolveToolItemGroupMethod "getEllipsizeMode" o = Gtk.ToolShell.ToolShellGetEllipsizeModeMethodInfo
    ResolveToolItemGroupMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveToolItemGroupMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveToolItemGroupMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveToolItemGroupMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveToolItemGroupMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveToolItemGroupMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveToolItemGroupMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveToolItemGroupMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveToolItemGroupMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveToolItemGroupMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveToolItemGroupMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveToolItemGroupMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveToolItemGroupMethod "getHeaderRelief" o = ToolItemGroupGetHeaderReliefMethodInfo
    ResolveToolItemGroupMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveToolItemGroupMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveToolItemGroupMethod "getIconSize" o = Gtk.ToolShell.ToolShellGetIconSizeMethodInfo
    ResolveToolItemGroupMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToolItemGroupMethod "getItemPosition" o = ToolItemGroupGetItemPositionMethodInfo
    ResolveToolItemGroupMethod "getLabel" o = ToolItemGroupGetLabelMethodInfo
    ResolveToolItemGroupMethod "getLabelWidget" o = ToolItemGroupGetLabelWidgetMethodInfo
    ResolveToolItemGroupMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveToolItemGroupMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveToolItemGroupMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveToolItemGroupMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveToolItemGroupMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveToolItemGroupMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveToolItemGroupMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveToolItemGroupMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveToolItemGroupMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveToolItemGroupMethod "getNItems" o = ToolItemGroupGetNItemsMethodInfo
    ResolveToolItemGroupMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveToolItemGroupMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveToolItemGroupMethod "getNthItem" o = ToolItemGroupGetNthItemMethodInfo
    ResolveToolItemGroupMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveToolItemGroupMethod "getOrientation" o = Gtk.ToolShell.ToolShellGetOrientationMethodInfo
    ResolveToolItemGroupMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveToolItemGroupMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveToolItemGroupMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveToolItemGroupMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveToolItemGroupMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveToolItemGroupMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveToolItemGroupMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveToolItemGroupMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveToolItemGroupMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveToolItemGroupMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveToolItemGroupMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveToolItemGroupMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveToolItemGroupMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToolItemGroupMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToolItemGroupMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveToolItemGroupMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveToolItemGroupMethod "getReliefStyle" o = Gtk.ToolShell.ToolShellGetReliefStyleMethodInfo
    ResolveToolItemGroupMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveToolItemGroupMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveToolItemGroupMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveToolItemGroupMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveToolItemGroupMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveToolItemGroupMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveToolItemGroupMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveToolItemGroupMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveToolItemGroupMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveToolItemGroupMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveToolItemGroupMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveToolItemGroupMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveToolItemGroupMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveToolItemGroupMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveToolItemGroupMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveToolItemGroupMethod "getTextAlignment" o = Gtk.ToolShell.ToolShellGetTextAlignmentMethodInfo
    ResolveToolItemGroupMethod "getTextOrientation" o = Gtk.ToolShell.ToolShellGetTextOrientationMethodInfo
    ResolveToolItemGroupMethod "getTextSizeGroup" o = Gtk.ToolShell.ToolShellGetTextSizeGroupMethodInfo
    ResolveToolItemGroupMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveToolItemGroupMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveToolItemGroupMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveToolItemGroupMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveToolItemGroupMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveToolItemGroupMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveToolItemGroupMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveToolItemGroupMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveToolItemGroupMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveToolItemGroupMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveToolItemGroupMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveToolItemGroupMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveToolItemGroupMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveToolItemGroupMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveToolItemGroupMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveToolItemGroupMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToolItemGroupMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveToolItemGroupMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveToolItemGroupMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveToolItemGroupMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveToolItemGroupMethod "setCollapsed" o = ToolItemGroupSetCollapsedMethodInfo
    ResolveToolItemGroupMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveToolItemGroupMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToolItemGroupMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToolItemGroupMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveToolItemGroupMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveToolItemGroupMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveToolItemGroupMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveToolItemGroupMethod "setEllipsize" o = ToolItemGroupSetEllipsizeMethodInfo
    ResolveToolItemGroupMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveToolItemGroupMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveToolItemGroupMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveToolItemGroupMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveToolItemGroupMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveToolItemGroupMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveToolItemGroupMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveToolItemGroupMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveToolItemGroupMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveToolItemGroupMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveToolItemGroupMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveToolItemGroupMethod "setHeaderRelief" o = ToolItemGroupSetHeaderReliefMethodInfo
    ResolveToolItemGroupMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveToolItemGroupMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveToolItemGroupMethod "setItemPosition" o = ToolItemGroupSetItemPositionMethodInfo
    ResolveToolItemGroupMethod "setLabel" o = ToolItemGroupSetLabelMethodInfo
    ResolveToolItemGroupMethod "setLabelWidget" o = ToolItemGroupSetLabelWidgetMethodInfo
    ResolveToolItemGroupMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveToolItemGroupMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveToolItemGroupMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveToolItemGroupMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveToolItemGroupMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveToolItemGroupMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveToolItemGroupMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveToolItemGroupMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveToolItemGroupMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveToolItemGroupMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveToolItemGroupMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveToolItemGroupMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveToolItemGroupMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToolItemGroupMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveToolItemGroupMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveToolItemGroupMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveToolItemGroupMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveToolItemGroupMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveToolItemGroupMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveToolItemGroupMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveToolItemGroupMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveToolItemGroupMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveToolItemGroupMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveToolItemGroupMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveToolItemGroupMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveToolItemGroupMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveToolItemGroupMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveToolItemGroupMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveToolItemGroupMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveToolItemGroupMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveToolItemGroupMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveToolItemGroupMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveToolItemGroupMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveToolItemGroupMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToolItemGroupMethod t ToolItemGroup, O.MethodInfo info ToolItemGroup p) => OL.IsLabel t (ToolItemGroup -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "collapsed"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@collapsed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItemGroup #collapsed
-- @
getToolItemGroupCollapsed :: (MonadIO m, IsToolItemGroup o) => o -> m Bool
getToolItemGroupCollapsed obj = liftIO $ B.Properties.getObjectPropertyBool obj "collapsed"

-- | Set the value of the “@collapsed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItemGroup [ #collapsed 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemGroupCollapsed :: (MonadIO m, IsToolItemGroup o) => o -> Bool -> m ()
setToolItemGroupCollapsed obj val = liftIO $ B.Properties.setObjectPropertyBool obj "collapsed" val

-- | Construct a `GValueConstruct` with valid value for the “@collapsed@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemGroupCollapsed :: (IsToolItemGroup o) => Bool -> IO (GValueConstruct o)
constructToolItemGroupCollapsed val = B.Properties.constructObjectPropertyBool "collapsed" val

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupCollapsedPropertyInfo
instance AttrInfo ToolItemGroupCollapsedPropertyInfo where
    type AttrAllowedOps ToolItemGroupCollapsedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemGroupCollapsedPropertyInfo = IsToolItemGroup
    type AttrSetTypeConstraint ToolItemGroupCollapsedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolItemGroupCollapsedPropertyInfo = (~) Bool
    type AttrTransferType ToolItemGroupCollapsedPropertyInfo = Bool
    type AttrGetType ToolItemGroupCollapsedPropertyInfo = Bool
    type AttrLabel ToolItemGroupCollapsedPropertyInfo = "collapsed"
    type AttrOrigin ToolItemGroupCollapsedPropertyInfo = ToolItemGroup
    attrGet = getToolItemGroupCollapsed
    attrSet = setToolItemGroupCollapsed
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemGroupCollapsed
    attrClear = undefined
#endif

-- VVV Prop "ellipsize"
   -- Type: TInterface (Name {namespace = "Pango", name = "EllipsizeMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@ellipsize@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItemGroup #ellipsize
-- @
getToolItemGroupEllipsize :: (MonadIO m, IsToolItemGroup o) => o -> m Pango.Enums.EllipsizeMode
getToolItemGroupEllipsize obj = liftIO $ B.Properties.getObjectPropertyEnum obj "ellipsize"

-- | Set the value of the “@ellipsize@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItemGroup [ #ellipsize 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemGroupEllipsize :: (MonadIO m, IsToolItemGroup o) => o -> Pango.Enums.EllipsizeMode -> m ()
setToolItemGroupEllipsize obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "ellipsize" val

-- | Construct a `GValueConstruct` with valid value for the “@ellipsize@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemGroupEllipsize :: (IsToolItemGroup o) => Pango.Enums.EllipsizeMode -> IO (GValueConstruct o)
constructToolItemGroupEllipsize val = B.Properties.constructObjectPropertyEnum "ellipsize" val

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupEllipsizePropertyInfo
instance AttrInfo ToolItemGroupEllipsizePropertyInfo where
    type AttrAllowedOps ToolItemGroupEllipsizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemGroupEllipsizePropertyInfo = IsToolItemGroup
    type AttrSetTypeConstraint ToolItemGroupEllipsizePropertyInfo = (~) Pango.Enums.EllipsizeMode
    type AttrTransferTypeConstraint ToolItemGroupEllipsizePropertyInfo = (~) Pango.Enums.EllipsizeMode
    type AttrTransferType ToolItemGroupEllipsizePropertyInfo = Pango.Enums.EllipsizeMode
    type AttrGetType ToolItemGroupEllipsizePropertyInfo = Pango.Enums.EllipsizeMode
    type AttrLabel ToolItemGroupEllipsizePropertyInfo = "ellipsize"
    type AttrOrigin ToolItemGroupEllipsizePropertyInfo = ToolItemGroup
    attrGet = getToolItemGroupEllipsize
    attrSet = setToolItemGroupEllipsize
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemGroupEllipsize
    attrClear = undefined
#endif

-- VVV Prop "header-relief"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ReliefStyle"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@header-relief@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItemGroup #headerRelief
-- @
getToolItemGroupHeaderRelief :: (MonadIO m, IsToolItemGroup o) => o -> m Gtk.Enums.ReliefStyle
getToolItemGroupHeaderRelief obj = liftIO $ B.Properties.getObjectPropertyEnum obj "header-relief"

-- | Set the value of the “@header-relief@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItemGroup [ #headerRelief 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemGroupHeaderRelief :: (MonadIO m, IsToolItemGroup o) => o -> Gtk.Enums.ReliefStyle -> m ()
setToolItemGroupHeaderRelief obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "header-relief" val

-- | Construct a `GValueConstruct` with valid value for the “@header-relief@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemGroupHeaderRelief :: (IsToolItemGroup o) => Gtk.Enums.ReliefStyle -> IO (GValueConstruct o)
constructToolItemGroupHeaderRelief val = B.Properties.constructObjectPropertyEnum "header-relief" val

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupHeaderReliefPropertyInfo
instance AttrInfo ToolItemGroupHeaderReliefPropertyInfo where
    type AttrAllowedOps ToolItemGroupHeaderReliefPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemGroupHeaderReliefPropertyInfo = IsToolItemGroup
    type AttrSetTypeConstraint ToolItemGroupHeaderReliefPropertyInfo = (~) Gtk.Enums.ReliefStyle
    type AttrTransferTypeConstraint ToolItemGroupHeaderReliefPropertyInfo = (~) Gtk.Enums.ReliefStyle
    type AttrTransferType ToolItemGroupHeaderReliefPropertyInfo = Gtk.Enums.ReliefStyle
    type AttrGetType ToolItemGroupHeaderReliefPropertyInfo = Gtk.Enums.ReliefStyle
    type AttrLabel ToolItemGroupHeaderReliefPropertyInfo = "header-relief"
    type AttrOrigin ToolItemGroupHeaderReliefPropertyInfo = ToolItemGroup
    attrGet = getToolItemGroupHeaderRelief
    attrSet = setToolItemGroupHeaderRelief
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemGroupHeaderRelief
    attrClear = undefined
#endif

-- VVV Prop "label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItemGroup #label
-- @
getToolItemGroupLabel :: (MonadIO m, IsToolItemGroup o) => o -> m T.Text
getToolItemGroupLabel obj = liftIO $ checkUnexpectedNothing "getToolItemGroupLabel" $ B.Properties.getObjectPropertyString obj "label"

-- | Set the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItemGroup [ #label 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemGroupLabel :: (MonadIO m, IsToolItemGroup o) => o -> T.Text -> m ()
setToolItemGroupLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemGroupLabel :: (IsToolItemGroup o) => T.Text -> IO (GValueConstruct o)
constructToolItemGroupLabel val = B.Properties.constructObjectPropertyString "label" (Just val)

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupLabelPropertyInfo
instance AttrInfo ToolItemGroupLabelPropertyInfo where
    type AttrAllowedOps ToolItemGroupLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemGroupLabelPropertyInfo = IsToolItemGroup
    type AttrSetTypeConstraint ToolItemGroupLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ToolItemGroupLabelPropertyInfo = (~) T.Text
    type AttrTransferType ToolItemGroupLabelPropertyInfo = T.Text
    type AttrGetType ToolItemGroupLabelPropertyInfo = T.Text
    type AttrLabel ToolItemGroupLabelPropertyInfo = "label"
    type AttrOrigin ToolItemGroupLabelPropertyInfo = ToolItemGroup
    attrGet = getToolItemGroupLabel
    attrSet = setToolItemGroupLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemGroupLabel
    attrClear = undefined
#endif

-- VVV Prop "label-widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItemGroup #labelWidget
-- @
getToolItemGroupLabelWidget :: (MonadIO m, IsToolItemGroup o) => o -> m Gtk.Widget.Widget
getToolItemGroupLabelWidget obj = liftIO $ checkUnexpectedNothing "getToolItemGroupLabelWidget" $ B.Properties.getObjectPropertyObject obj "label-widget" Gtk.Widget.Widget

-- | Set the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItemGroup [ #labelWidget 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemGroupLabelWidget :: (MonadIO m, IsToolItemGroup o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setToolItemGroupLabelWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "label-widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label-widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemGroupLabelWidget :: (IsToolItemGroup o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructToolItemGroupLabelWidget val = B.Properties.constructObjectPropertyObject "label-widget" (Just val)

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupLabelWidgetPropertyInfo
instance AttrInfo ToolItemGroupLabelWidgetPropertyInfo where
    type AttrAllowedOps ToolItemGroupLabelWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemGroupLabelWidgetPropertyInfo = IsToolItemGroup
    type AttrSetTypeConstraint ToolItemGroupLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ToolItemGroupLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ToolItemGroupLabelWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType ToolItemGroupLabelWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrLabel ToolItemGroupLabelWidgetPropertyInfo = "label-widget"
    type AttrOrigin ToolItemGroupLabelWidgetPropertyInfo = ToolItemGroup
    attrGet = getToolItemGroupLabelWidget
    attrSet = setToolItemGroupLabelWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructToolItemGroupLabelWidget
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ToolItemGroup
type instance O.AttributeList ToolItemGroup = ToolItemGroupAttributeList
type ToolItemGroupAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("collapsed", ToolItemGroupCollapsedPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("ellipsize", ToolItemGroupEllipsizePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("headerRelief", ToolItemGroupHeaderReliefPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", ToolItemGroupLabelPropertyInfo), '("labelWidget", ToolItemGroupLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toolItemGroupCollapsed :: AttrLabelProxy "collapsed"
toolItemGroupCollapsed = AttrLabelProxy

toolItemGroupEllipsize :: AttrLabelProxy "ellipsize"
toolItemGroupEllipsize = AttrLabelProxy

toolItemGroupHeaderRelief :: AttrLabelProxy "headerRelief"
toolItemGroupHeaderRelief = AttrLabelProxy

toolItemGroupLabel :: AttrLabelProxy "label"
toolItemGroupLabel = AttrLabelProxy

toolItemGroupLabelWidget :: AttrLabelProxy "labelWidget"
toolItemGroupLabelWidget = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ToolItemGroup = ToolItemGroupSignalList
type ToolItemGroupSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ToolItemGroup::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label of the new group"
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
--               (TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_new" gtk_tool_item_group_new :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr ToolItemGroup)

-- | Creates a new tool item group with label /@label@/.
-- 
-- /Since: 2.20/
toolItemGroupNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: the label of the new group
    -> m ToolItemGroup
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'.
toolItemGroupNew label = liftIO $ do
    label' <- textToCString label
    result <- gtk_tool_item_group_new label'
    checkUnexpectedReturnNULL "toolItemGroupNew" result
    result' <- (newObject ToolItemGroup) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToolItemGroup::get_collapsed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a GtkToolItemGroup" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_item_group_get_collapsed" gtk_tool_item_group_get_collapsed :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO CInt

-- | Gets whether /@group@/ is collapsed or expanded.
-- 
-- /Since: 2.20/
toolItemGroupGetCollapsed ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a GtkToolItemGroup
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@group@/ is collapsed, 'P.False' if it is expanded
toolItemGroupGetCollapsed group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_collapsed group'
    let result' = (/= 0) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetCollapsedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetCollapsedMethodInfo a signature where
    overloadedMethod = toolItemGroupGetCollapsed

#endif

-- method ToolItemGroup::get_drop_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "the x position" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the y position" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_drop_item" gtk_tool_item_group_get_drop_item :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO (Ptr Gtk.ToolItem.ToolItem)

-- | Gets the tool item at position (x, y).
-- 
-- /Since: 2.20/
toolItemGroupGetDropItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> Int32
    -- ^ /@x@/: the x position
    -> Int32
    -- ^ /@y@/: the y position
    -> m Gtk.ToolItem.ToolItem
    -- ^ __Returns:__ the t'GI.Gtk.Objects.ToolItem.ToolItem' at position (x, y)
toolItemGroupGetDropItem group x y = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_drop_item group' x y
    checkUnexpectedReturnNULL "toolItemGroupGetDropItem" result
    result' <- (newObject Gtk.ToolItem.ToolItem) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetDropItemMethodInfo
instance (signature ~ (Int32 -> Int32 -> m Gtk.ToolItem.ToolItem), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetDropItemMethodInfo a signature where
    overloadedMethod = toolItemGroupGetDropItem

#endif

-- method ToolItemGroup::get_ellipsize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
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
--               (TInterface Name { namespace = "Pango" , name = "EllipsizeMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_ellipsize" gtk_tool_item_group_get_ellipsize :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO CUInt

-- | Gets the ellipsization mode of /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupGetEllipsize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> m Pango.Enums.EllipsizeMode
    -- ^ __Returns:__ the t'GI.Pango.Enums.EllipsizeMode' of /@group@/
toolItemGroupGetEllipsize group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_ellipsize group'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetEllipsizeMethodInfo
instance (signature ~ (m Pango.Enums.EllipsizeMode), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetEllipsizeMethodInfo a signature where
    overloadedMethod = toolItemGroupGetEllipsize

#endif

-- method ToolItemGroup::get_header_relief
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ReliefStyle" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_header_relief" gtk_tool_item_group_get_header_relief :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO CUInt

-- | Gets the relief mode of the header button of /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupGetHeaderRelief ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> m Gtk.Enums.ReliefStyle
    -- ^ __Returns:__ the t'GI.Gtk.Enums.ReliefStyle'
toolItemGroupGetHeaderRelief group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_header_relief group'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetHeaderReliefMethodInfo
instance (signature ~ (m Gtk.Enums.ReliefStyle), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetHeaderReliefMethodInfo a signature where
    overloadedMethod = toolItemGroupGetHeaderRelief

#endif

-- method ToolItemGroup::get_item_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItem" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_item_position" gtk_tool_item_group_get_item_position :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Ptr Gtk.ToolItem.ToolItem ->            -- item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO Int32

-- | Gets the position of /@item@/ in /@group@/ as index.
-- 
-- /Since: 2.20/
toolItemGroupGetItemPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> b
    -- ^ /@item@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Int32
    -- ^ __Returns:__ the index of /@item@/ in /@group@/ or -1 if /@item@/ is no child of /@group@/
toolItemGroupGetItemPosition group item = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    item' <- unsafeManagedPtrCastPtr item
    result <- gtk_tool_item_group_get_item_position group' item'
    touchManagedPtr group
    touchManagedPtr item
    return result

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetItemPositionMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolItemGroupGetItemPositionMethodInfo a signature where
    overloadedMethod = toolItemGroupGetItemPosition

#endif

-- method ToolItemGroup::get_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
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

foreign import ccall "gtk_tool_item_group_get_label" gtk_tool_item_group_get_label :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO CString

-- | Gets the label of /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupGetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> m T.Text
    -- ^ __Returns:__ the label of /@group@/. The label is an internal string of /@group@/
    --     and must not be modified. Note that 'P.Nothing' is returned if a custom
    --     label has been set with 'GI.Gtk.Objects.ToolItemGroup.toolItemGroupSetLabelWidget'
toolItemGroupGetLabel group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_label group'
    checkUnexpectedReturnNULL "toolItemGroupGetLabel" result
    result' <- cstringToText result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetLabelMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetLabelMethodInfo a signature where
    overloadedMethod = toolItemGroupGetLabel

#endif

-- method ToolItemGroup::get_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_label_widget" gtk_tool_item_group_get_label_widget :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the label widget of /@group@/.
-- See 'GI.Gtk.Objects.ToolItemGroup.toolItemGroupSetLabelWidget'.
-- 
-- /Since: 2.20/
toolItemGroupGetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the label widget of /@group@/
toolItemGroupGetLabelWidget group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_label_widget group'
    checkUnexpectedReturnNULL "toolItemGroupGetLabelWidget" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetLabelWidgetMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetLabelWidgetMethodInfo a signature where
    overloadedMethod = toolItemGroupGetLabelWidget

#endif

-- method ToolItemGroup::get_n_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_n_items" gtk_tool_item_group_get_n_items :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    IO Word32

-- | Gets the number of tool items in /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupGetNItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> m Word32
    -- ^ __Returns:__ the number of tool items in /@group@/
toolItemGroupGetNItems group = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_n_items group'
    touchManagedPtr group
    return result

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetNItemsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetNItemsMethodInfo a signature where
    overloadedMethod = toolItemGroupGetNItems

#endif

-- method ToolItemGroup::get_nth_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "index"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the index" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_group_get_nth_item" gtk_tool_item_group_get_nth_item :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Word32 ->                               -- index : TBasicType TUInt
    IO (Ptr Gtk.ToolItem.ToolItem)

-- | Gets the tool item at /@index@/ in group.
-- 
-- /Since: 2.20/
toolItemGroupGetNthItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> Word32
    -- ^ /@index@/: the index
    -> m Gtk.ToolItem.ToolItem
    -- ^ __Returns:__ the t'GI.Gtk.Objects.ToolItem.ToolItem' at index
toolItemGroupGetNthItem group index = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    result <- gtk_tool_item_group_get_nth_item group' index
    checkUnexpectedReturnNULL "toolItemGroupGetNthItem" result
    result' <- (newObject Gtk.ToolItem.ToolItem) result
    touchManagedPtr group
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupGetNthItemMethodInfo
instance (signature ~ (Word32 -> m Gtk.ToolItem.ToolItem), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupGetNthItemMethodInfo a signature where
    overloadedMethod = toolItemGroupGetNthItem

#endif

-- method ToolItemGroup::insert
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkToolItem to insert into @group"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the position of @item in @group, starting with 0.\n    The position -1 means end of list."
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

foreign import ccall "gtk_tool_item_group_insert" gtk_tool_item_group_insert :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Ptr Gtk.ToolItem.ToolItem ->            -- item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Inserts /@item@/ at /@position@/ in the list of children of /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupInsert ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> b
    -- ^ /@item@/: the t'GI.Gtk.Objects.ToolItem.ToolItem' to insert into /@group@/
    -> Int32
    -- ^ /@position@/: the position of /@item@/ in /@group@/, starting with 0.
    --     The position -1 means end of list.
    -> m ()
toolItemGroupInsert group item position = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    item' <- unsafeManagedPtrCastPtr item
    gtk_tool_item_group_insert group' item' position
    touchManagedPtr group
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupInsertMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolItemGroupInsertMethodInfo a signature where
    overloadedMethod = toolItemGroupInsert

#endif

-- method ToolItemGroup::set_collapsed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "collapsed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether the @group should be collapsed or expanded"
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

foreign import ccall "gtk_tool_item_group_set_collapsed" gtk_tool_item_group_set_collapsed :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    CInt ->                                 -- collapsed : TBasicType TBoolean
    IO ()

-- | Sets whether the /@group@/ should be collapsed or expanded.
-- 
-- /Since: 2.20/
toolItemGroupSetCollapsed ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> Bool
    -- ^ /@collapsed@/: whether the /@group@/ should be collapsed or expanded
    -> m ()
toolItemGroupSetCollapsed group collapsed = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    let collapsed' = (fromIntegral . fromEnum) collapsed
    gtk_tool_item_group_set_collapsed group' collapsed'
    touchManagedPtr group
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetCollapsedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupSetCollapsedMethodInfo a signature where
    overloadedMethod = toolItemGroupSetCollapsed

#endif

-- method ToolItemGroup::set_ellipsize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ellipsize"
--           , argType =
--               TInterface Name { namespace = "Pango" , name = "EllipsizeMode" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #PangoEllipsizeMode labels in @group should use"
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

foreign import ccall "gtk_tool_item_group_set_ellipsize" gtk_tool_item_group_set_ellipsize :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    CUInt ->                                -- ellipsize : TInterface (Name {namespace = "Pango", name = "EllipsizeMode"})
    IO ()

-- | Sets the ellipsization mode which should be used by labels in /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupSetEllipsize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> Pango.Enums.EllipsizeMode
    -- ^ /@ellipsize@/: the t'GI.Pango.Enums.EllipsizeMode' labels in /@group@/ should use
    -> m ()
toolItemGroupSetEllipsize group ellipsize = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    let ellipsize' = (fromIntegral . fromEnum) ellipsize
    gtk_tool_item_group_set_ellipsize group' ellipsize'
    touchManagedPtr group
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetEllipsizeMethodInfo
instance (signature ~ (Pango.Enums.EllipsizeMode -> m ()), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupSetEllipsizeMethodInfo a signature where
    overloadedMethod = toolItemGroupSetEllipsize

#endif

-- method ToolItemGroup::set_header_relief
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "style"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ReliefStyle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkReliefStyle"
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

foreign import ccall "gtk_tool_item_group_set_header_relief" gtk_tool_item_group_set_header_relief :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    CUInt ->                                -- style : TInterface (Name {namespace = "Gtk", name = "ReliefStyle"})
    IO ()

-- | Set the button relief of the group header.
-- See 'GI.Gtk.Objects.Button.buttonSetRelief' for details.
-- 
-- /Since: 2.20/
toolItemGroupSetHeaderRelief ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> Gtk.Enums.ReliefStyle
    -- ^ /@style@/: the t'GI.Gtk.Enums.ReliefStyle'
    -> m ()
toolItemGroupSetHeaderRelief group style = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    let style' = (fromIntegral . fromEnum) style
    gtk_tool_item_group_set_header_relief group' style'
    touchManagedPtr group
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetHeaderReliefMethodInfo
instance (signature ~ (Gtk.Enums.ReliefStyle -> m ()), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupSetHeaderReliefMethodInfo a signature where
    overloadedMethod = toolItemGroupSetHeaderRelief

#endif

-- method ToolItemGroup::set_item_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkToolItem to move to a new position, should\n    be a child of @group."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the new position of @item in @group, starting with 0.\n    The position -1 means end of list."
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

foreign import ccall "gtk_tool_item_group_set_item_position" gtk_tool_item_group_set_item_position :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Ptr Gtk.ToolItem.ToolItem ->            -- item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Sets the position of /@item@/ in the list of children of /@group@/.
-- 
-- /Since: 2.20/
toolItemGroupSetItemPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> b
    -- ^ /@item@/: the t'GI.Gtk.Objects.ToolItem.ToolItem' to move to a new position, should
    --     be a child of /@group@/.
    -> Int32
    -- ^ /@position@/: the new position of /@item@/ in /@group@/, starting with 0.
    --     The position -1 means end of list.
    -> m ()
toolItemGroupSetItemPosition group item position = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    item' <- unsafeManagedPtrCastPtr item
    gtk_tool_item_group_set_item_position group' item' position
    touchManagedPtr group
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetItemPositionMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsToolItemGroup a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolItemGroupSetItemPositionMethodInfo a signature where
    overloadedMethod = toolItemGroupSetItemPosition

#endif

-- method ToolItemGroup::set_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new human-readable label of of the group"
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

foreign import ccall "gtk_tool_item_group_set_label" gtk_tool_item_group_set_label :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    CString ->                              -- label : TBasicType TUTF8
    IO ()

-- | Sets the label of the tool item group. The label is displayed in the header
-- of the group.
-- 
-- /Since: 2.20/
toolItemGroupSetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> T.Text
    -- ^ /@label@/: the new human-readable label of of the group
    -> m ()
toolItemGroupSetLabel group label = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    label' <- textToCString label
    gtk_tool_item_group_set_label group' label'
    touchManagedPtr group
    freeMem label'
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetLabelMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsToolItemGroup a) => O.MethodInfo ToolItemGroupSetLabelMethodInfo a signature where
    overloadedMethod = toolItemGroupSetLabel

#endif

-- method ToolItemGroup::set_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItemGroup" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItemGroup"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the widget to be displayed in place of the usual label"
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

foreign import ccall "gtk_tool_item_group_set_label_widget" gtk_tool_item_group_set_label_widget :: 
    Ptr ToolItemGroup ->                    -- group : TInterface (Name {namespace = "Gtk", name = "ToolItemGroup"})
    Ptr Gtk.Widget.Widget ->                -- label_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the label of the tool item group.
-- The label widget is displayed in the header of the group, in place
-- of the usual label.
-- 
-- /Since: 2.20/
toolItemGroupSetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItemGroup a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@group@/: a t'GI.Gtk.Objects.ToolItemGroup.ToolItemGroup'
    -> b
    -- ^ /@labelWidget@/: the widget to be displayed in place of the usual label
    -> m ()
toolItemGroupSetLabelWidget group labelWidget = liftIO $ do
    group' <- unsafeManagedPtrCastPtr group
    labelWidget' <- unsafeManagedPtrCastPtr labelWidget
    gtk_tool_item_group_set_label_widget group' labelWidget'
    touchManagedPtr group
    touchManagedPtr labelWidget
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemGroupSetLabelWidgetMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsToolItemGroup a, Gtk.Widget.IsWidget b) => O.MethodInfo ToolItemGroupSetLabelWidgetMethodInfo a signature where
    overloadedMethod = toolItemGroupSetLabelWidget

#endif

