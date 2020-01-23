{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- @/GtkToolItems/@ are widgets that can appear on a toolbar. To
-- create a toolbar item that contain something else than a button, use
-- 'GI.Gtk.Objects.ToolItem.toolItemNew'. Use 'GI.Gtk.Objects.Container.containerAdd' to add a child
-- widget to the tool item.
-- 
-- For toolbar items that contain buttons, see the t'GI.Gtk.Objects.ToolButton.ToolButton',
-- t'GI.Gtk.Objects.ToggleToolButton.ToggleToolButton' and t'GI.Gtk.Objects.RadioToolButton.RadioToolButton' classes.
-- 
-- See the t'GI.Gtk.Objects.Toolbar.Toolbar' class for a description of the toolbar widget, and
-- t'GI.Gtk.Interfaces.ToolShell.ToolShell' for a description of the tool shell interface.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ToolItem
    ( 

-- * Exported types
    ToolItem(..)                            ,
    IsToolItem                              ,
    toToolItem                              ,
    noToolItem                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToolItemMethod                   ,
#endif


-- ** getEllipsizeMode #method:getEllipsizeMode#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetEllipsizeModeMethodInfo      ,
#endif
    toolItemGetEllipsizeMode                ,


-- ** getExpand #method:getExpand#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetExpandMethodInfo             ,
#endif
    toolItemGetExpand                       ,


-- ** getHomogeneous #method:getHomogeneous#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetHomogeneousMethodInfo        ,
#endif
    toolItemGetHomogeneous                  ,


-- ** getIconSize #method:getIconSize#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetIconSizeMethodInfo           ,
#endif
    toolItemGetIconSize                     ,


-- ** getIsImportant #method:getIsImportant#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetIsImportantMethodInfo        ,
#endif
    toolItemGetIsImportant                  ,


-- ** getOrientation #method:getOrientation#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetOrientationMethodInfo        ,
#endif
    toolItemGetOrientation                  ,


-- ** getProxyMenuItem #method:getProxyMenuItem#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetProxyMenuItemMethodInfo      ,
#endif
    toolItemGetProxyMenuItem                ,


-- ** getReliefStyle #method:getReliefStyle#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetReliefStyleMethodInfo        ,
#endif
    toolItemGetReliefStyle                  ,


-- ** getTextAlignment #method:getTextAlignment#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetTextAlignmentMethodInfo      ,
#endif
    toolItemGetTextAlignment                ,


-- ** getTextOrientation #method:getTextOrientation#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetTextOrientationMethodInfo    ,
#endif
    toolItemGetTextOrientation              ,


-- ** getTextSizeGroup #method:getTextSizeGroup#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetTextSizeGroupMethodInfo      ,
#endif
    toolItemGetTextSizeGroup                ,


-- ** getToolbarStyle #method:getToolbarStyle#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetToolbarStyleMethodInfo       ,
#endif
    toolItemGetToolbarStyle                 ,


-- ** getUseDragWindow #method:getUseDragWindow#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetUseDragWindowMethodInfo      ,
#endif
    toolItemGetUseDragWindow                ,


-- ** getVisibleHorizontal #method:getVisibleHorizontal#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetVisibleHorizontalMethodInfo  ,
#endif
    toolItemGetVisibleHorizontal            ,


-- ** getVisibleVertical #method:getVisibleVertical#

#if defined(ENABLE_OVERLOADING)
    ToolItemGetVisibleVerticalMethodInfo    ,
#endif
    toolItemGetVisibleVertical              ,


-- ** new #method:new#

    toolItemNew                             ,


-- ** rebuildMenu #method:rebuildMenu#

#if defined(ENABLE_OVERLOADING)
    ToolItemRebuildMenuMethodInfo           ,
#endif
    toolItemRebuildMenu                     ,


-- ** retrieveProxyMenuItem #method:retrieveProxyMenuItem#

#if defined(ENABLE_OVERLOADING)
    ToolItemRetrieveProxyMenuItemMethodInfo ,
#endif
    toolItemRetrieveProxyMenuItem           ,


-- ** setExpand #method:setExpand#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetExpandMethodInfo             ,
#endif
    toolItemSetExpand                       ,


-- ** setHomogeneous #method:setHomogeneous#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetHomogeneousMethodInfo        ,
#endif
    toolItemSetHomogeneous                  ,


-- ** setIsImportant #method:setIsImportant#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetIsImportantMethodInfo        ,
#endif
    toolItemSetIsImportant                  ,


-- ** setProxyMenuItem #method:setProxyMenuItem#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetProxyMenuItemMethodInfo      ,
#endif
    toolItemSetProxyMenuItem                ,


-- ** setTooltipMarkup #method:setTooltipMarkup#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetTooltipMarkupMethodInfo      ,
#endif
    toolItemSetTooltipMarkup                ,


-- ** setTooltipText #method:setTooltipText#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetTooltipTextMethodInfo        ,
#endif
    toolItemSetTooltipText                  ,


-- ** setUseDragWindow #method:setUseDragWindow#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetUseDragWindowMethodInfo      ,
#endif
    toolItemSetUseDragWindow                ,


-- ** setVisibleHorizontal #method:setVisibleHorizontal#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetVisibleHorizontalMethodInfo  ,
#endif
    toolItemSetVisibleHorizontal            ,


-- ** setVisibleVertical #method:setVisibleVertical#

#if defined(ENABLE_OVERLOADING)
    ToolItemSetVisibleVerticalMethodInfo    ,
#endif
    toolItemSetVisibleVertical              ,


-- ** toolbarReconfigured #method:toolbarReconfigured#

#if defined(ENABLE_OVERLOADING)
    ToolItemToolbarReconfiguredMethodInfo   ,
#endif
    toolItemToolbarReconfigured             ,




 -- * Properties
-- ** isImportant #attr:isImportant#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemIsImportantPropertyInfo         ,
#endif
    constructToolItemIsImportant            ,
    getToolItemIsImportant                  ,
    setToolItemIsImportant                  ,
#if defined(ENABLE_OVERLOADING)
    toolItemIsImportant                     ,
#endif


-- ** visibleHorizontal #attr:visibleHorizontal#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemVisibleHorizontalPropertyInfo   ,
#endif
    constructToolItemVisibleHorizontal      ,
    getToolItemVisibleHorizontal            ,
    setToolItemVisibleHorizontal            ,
#if defined(ENABLE_OVERLOADING)
    toolItemVisibleHorizontal               ,
#endif


-- ** visibleVertical #attr:visibleVertical#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolItemVisibleVerticalPropertyInfo     ,
#endif
    constructToolItemVisibleVertical        ,
    getToolItemVisibleVertical              ,
    setToolItemVisibleVertical              ,
#if defined(ENABLE_OVERLOADING)
    toolItemVisibleVertical                 ,
#endif




 -- * Signals
-- ** createMenuProxy #signal:createMenuProxy#

    C_ToolItemCreateMenuProxyCallback       ,
    ToolItemCreateMenuProxyCallback         ,
#if defined(ENABLE_OVERLOADING)
    ToolItemCreateMenuProxySignalInfo       ,
#endif
    afterToolItemCreateMenuProxy            ,
    genClosure_ToolItemCreateMenuProxy      ,
    mk_ToolItemCreateMenuProxyCallback      ,
    noToolItemCreateMenuProxyCallback       ,
    onToolItemCreateMenuProxy               ,
    wrap_ToolItemCreateMenuProxyCallback    ,


-- ** toolbarReconfigured #signal:toolbarReconfigured#

    C_ToolItemToolbarReconfiguredCallback   ,
    ToolItemToolbarReconfiguredCallback     ,
#if defined(ENABLE_OVERLOADING)
    ToolItemToolbarReconfiguredSignalInfo   ,
#endif
    afterToolItemToolbarReconfigured        ,
    genClosure_ToolItemToolbarReconfigured  ,
    mk_ToolItemToolbarReconfiguredCallback  ,
    noToolItemToolbarReconfiguredCallback   ,
    onToolItemToolbarReconfigured           ,
    wrap_ToolItemToolbarReconfiguredCallback,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.SizeGroup as Gtk.SizeGroup
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Pango.Enums as Pango.Enums

-- | Memory-managed wrapper type.
newtype ToolItem = ToolItem (ManagedPtr ToolItem)
    deriving (Eq)
foreign import ccall "gtk_tool_item_get_type"
    c_gtk_tool_item_get_type :: IO GType

instance GObject ToolItem where
    gobjectType = c_gtk_tool_item_get_type
    

-- | Convert 'ToolItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ToolItem where
    toGValue o = do
        gtype <- c_gtk_tool_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ToolItem)
        B.ManagedPtr.newObject ToolItem ptr
        
    

-- | Type class for types which can be safely cast to `ToolItem`, for instance with `toToolItem`.
class (GObject o, O.IsDescendantOf ToolItem o) => IsToolItem o
instance (GObject o, O.IsDescendantOf ToolItem o) => IsToolItem o

instance O.HasParentTypes ToolItem
type instance O.ParentTypes ToolItem = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `ToolItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToolItem :: (MonadIO m, IsToolItem o) => o -> m ToolItem
toToolItem = liftIO . unsafeCastTo ToolItem

-- | A convenience alias for `Nothing` :: `Maybe` `ToolItem`.
noToolItem :: Maybe ToolItem
noToolItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToolItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveToolItemMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveToolItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveToolItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveToolItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToolItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveToolItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveToolItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveToolItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveToolItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToolItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToolItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveToolItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveToolItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveToolItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveToolItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveToolItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveToolItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveToolItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveToolItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveToolItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveToolItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToolItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveToolItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveToolItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToolItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToolItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToolItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveToolItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveToolItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveToolItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveToolItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveToolItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveToolItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveToolItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveToolItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveToolItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveToolItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveToolItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveToolItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveToolItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveToolItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveToolItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveToolItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveToolItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveToolItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveToolItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveToolItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveToolItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveToolItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveToolItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveToolItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveToolItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveToolItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveToolItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveToolItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveToolItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveToolItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveToolItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveToolItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveToolItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveToolItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveToolItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveToolItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveToolItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToolItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveToolItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveToolItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToolItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToolItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveToolItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveToolItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveToolItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveToolItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveToolItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveToolItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveToolItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveToolItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveToolItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveToolItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveToolItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveToolItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveToolItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveToolItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveToolItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveToolItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveToolItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveToolItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveToolItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveToolItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToolItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveToolItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveToolItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveToolItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveToolItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveToolItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveToolItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveToolItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveToolItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveToolItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveToolItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveToolItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveToolItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveToolItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveToolItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveToolItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveToolItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveToolItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToolItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToolItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveToolItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveToolItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveToolItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveToolItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveToolItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToolItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveToolItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveToolItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveToolItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveToolItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveToolItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveToolItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveToolItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveToolItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveToolItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveToolItemMethod "rebuildMenu" o = ToolItemRebuildMenuMethodInfo
    ResolveToolItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToolItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToolItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveToolItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveToolItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveToolItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveToolItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveToolItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveToolItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveToolItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveToolItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveToolItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveToolItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveToolItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveToolItemMethod "retrieveProxyMenuItem" o = ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveToolItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToolItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveToolItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveToolItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveToolItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveToolItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveToolItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveToolItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveToolItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveToolItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveToolItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToolItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToolItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveToolItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveToolItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveToolItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveToolItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToolItemMethod "toolbarReconfigured" o = ToolItemToolbarReconfiguredMethodInfo
    ResolveToolItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveToolItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveToolItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveToolItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveToolItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveToolItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToolItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveToolItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveToolItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveToolItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToolItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveToolItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveToolItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveToolItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveToolItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveToolItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveToolItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveToolItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveToolItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveToolItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveToolItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveToolItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveToolItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveToolItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveToolItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveToolItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveToolItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveToolItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveToolItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveToolItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToolItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveToolItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveToolItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveToolItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveToolItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveToolItemMethod "getEllipsizeMode" o = ToolItemGetEllipsizeModeMethodInfo
    ResolveToolItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveToolItemMethod "getExpand" o = ToolItemGetExpandMethodInfo
    ResolveToolItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveToolItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveToolItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveToolItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveToolItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveToolItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveToolItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveToolItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveToolItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveToolItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveToolItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveToolItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveToolItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveToolItemMethod "getHomogeneous" o = ToolItemGetHomogeneousMethodInfo
    ResolveToolItemMethod "getIconSize" o = ToolItemGetIconSizeMethodInfo
    ResolveToolItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToolItemMethod "getIsImportant" o = ToolItemGetIsImportantMethodInfo
    ResolveToolItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveToolItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveToolItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveToolItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveToolItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveToolItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveToolItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveToolItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveToolItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveToolItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveToolItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveToolItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveToolItemMethod "getOrientation" o = ToolItemGetOrientationMethodInfo
    ResolveToolItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveToolItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveToolItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveToolItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveToolItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveToolItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveToolItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveToolItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveToolItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveToolItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveToolItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveToolItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveToolItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToolItemMethod "getProxyMenuItem" o = ToolItemGetProxyMenuItemMethodInfo
    ResolveToolItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToolItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveToolItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveToolItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveToolItemMethod "getReliefStyle" o = ToolItemGetReliefStyleMethodInfo
    ResolveToolItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveToolItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveToolItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveToolItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveToolItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveToolItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveToolItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveToolItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveToolItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveToolItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveToolItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveToolItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveToolItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveToolItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveToolItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveToolItemMethod "getTextAlignment" o = ToolItemGetTextAlignmentMethodInfo
    ResolveToolItemMethod "getTextOrientation" o = ToolItemGetTextOrientationMethodInfo
    ResolveToolItemMethod "getTextSizeGroup" o = ToolItemGetTextSizeGroupMethodInfo
    ResolveToolItemMethod "getToolbarStyle" o = ToolItemGetToolbarStyleMethodInfo
    ResolveToolItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveToolItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveToolItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveToolItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveToolItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveToolItemMethod "getUseDragWindow" o = ToolItemGetUseDragWindowMethodInfo
    ResolveToolItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveToolItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveToolItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveToolItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveToolItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveToolItemMethod "getVisibleHorizontal" o = ToolItemGetVisibleHorizontalMethodInfo
    ResolveToolItemMethod "getVisibleVertical" o = ToolItemGetVisibleVerticalMethodInfo
    ResolveToolItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveToolItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveToolItemMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveToolItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveToolItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveToolItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveToolItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToolItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveToolItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveToolItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveToolItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveToolItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveToolItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToolItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToolItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveToolItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveToolItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveToolItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveToolItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveToolItemMethod "setExpand" o = ToolItemSetExpandMethodInfo
    ResolveToolItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveToolItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveToolItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveToolItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveToolItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveToolItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveToolItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveToolItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveToolItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveToolItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveToolItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveToolItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveToolItemMethod "setHomogeneous" o = ToolItemSetHomogeneousMethodInfo
    ResolveToolItemMethod "setIsImportant" o = ToolItemSetIsImportantMethodInfo
    ResolveToolItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveToolItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveToolItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveToolItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveToolItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveToolItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveToolItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveToolItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveToolItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveToolItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveToolItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveToolItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveToolItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToolItemMethod "setProxyMenuItem" o = ToolItemSetProxyMenuItemMethodInfo
    ResolveToolItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveToolItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveToolItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveToolItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveToolItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveToolItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveToolItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveToolItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveToolItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveToolItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveToolItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveToolItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveToolItemMethod "setTooltipMarkup" o = ToolItemSetTooltipMarkupMethodInfo
    ResolveToolItemMethod "setTooltipText" o = ToolItemSetTooltipTextMethodInfo
    ResolveToolItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveToolItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveToolItemMethod "setUseDragWindow" o = ToolItemSetUseDragWindowMethodInfo
    ResolveToolItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveToolItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveToolItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveToolItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveToolItemMethod "setVisibleHorizontal" o = ToolItemSetVisibleHorizontalMethodInfo
    ResolveToolItemMethod "setVisibleVertical" o = ToolItemSetVisibleVerticalMethodInfo
    ResolveToolItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveToolItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveToolItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToolItemMethod t ToolItem, O.MethodInfo info ToolItem p) => OL.IsLabel t (ToolItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ToolItem::create-menu-proxy
-- | This signal is emitted when the toolbar needs information from /@toolItem@/
-- about whether the item should appear in the toolbar overflow menu. In
-- response the tool item should either
-- 
-- * call 'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem' with a 'P.Nothing'
-- pointer and return 'P.True' to indicate that the item should not appear
-- in the overflow menu
-- * call 'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem' with a new menu
-- item and return 'P.True', or
-- * return 'P.False' to indicate that the signal was not handled by the item.
-- This means that the item will not appear in the overflow menu unless
-- a later handler installs a menu item.
-- 
-- 
-- The toolbar may cache the result of this signal. When the tool item changes
-- how it will respond to this signal it must call 'GI.Gtk.Objects.ToolItem.toolItemRebuildMenu'
-- to invalidate the cache and ensure that the toolbar rebuilds its overflow
-- menu.
type ToolItemCreateMenuProxyCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' if the signal was handled, 'P.False' if not

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolItemCreateMenuProxyCallback`@.
noToolItemCreateMenuProxyCallback :: Maybe ToolItemCreateMenuProxyCallback
noToolItemCreateMenuProxyCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolItemCreateMenuProxyCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ToolItemCreateMenuProxyCallback`.
foreign import ccall "wrapper"
    mk_ToolItemCreateMenuProxyCallback :: C_ToolItemCreateMenuProxyCallback -> IO (FunPtr C_ToolItemCreateMenuProxyCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolItemCreateMenuProxy :: MonadIO m => ToolItemCreateMenuProxyCallback -> m (GClosure C_ToolItemCreateMenuProxyCallback)
genClosure_ToolItemCreateMenuProxy cb = liftIO $ do
    let cb' = wrap_ToolItemCreateMenuProxyCallback cb
    mk_ToolItemCreateMenuProxyCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolItemCreateMenuProxyCallback` into a `C_ToolItemCreateMenuProxyCallback`.
wrap_ToolItemCreateMenuProxyCallback ::
    ToolItemCreateMenuProxyCallback ->
    C_ToolItemCreateMenuProxyCallback
wrap_ToolItemCreateMenuProxyCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [createMenuProxy](#signal:createMenuProxy) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolItem #createMenuProxy callback
-- @
-- 
-- 
onToolItemCreateMenuProxy :: (IsToolItem a, MonadIO m) => a -> ToolItemCreateMenuProxyCallback -> m SignalHandlerId
onToolItemCreateMenuProxy obj cb = liftIO $ do
    let cb' = wrap_ToolItemCreateMenuProxyCallback cb
    cb'' <- mk_ToolItemCreateMenuProxyCallback cb'
    connectSignalFunPtr obj "create-menu-proxy" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [createMenuProxy](#signal:createMenuProxy) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolItem #createMenuProxy callback
-- @
-- 
-- 
afterToolItemCreateMenuProxy :: (IsToolItem a, MonadIO m) => a -> ToolItemCreateMenuProxyCallback -> m SignalHandlerId
afterToolItemCreateMenuProxy obj cb = liftIO $ do
    let cb' = wrap_ToolItemCreateMenuProxyCallback cb
    cb'' <- mk_ToolItemCreateMenuProxyCallback cb'
    connectSignalFunPtr obj "create-menu-proxy" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolItemCreateMenuProxySignalInfo
instance SignalInfo ToolItemCreateMenuProxySignalInfo where
    type HaskellCallbackType ToolItemCreateMenuProxySignalInfo = ToolItemCreateMenuProxyCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolItemCreateMenuProxyCallback cb
        cb'' <- mk_ToolItemCreateMenuProxyCallback cb'
        connectSignalFunPtr obj "create-menu-proxy" cb'' connectMode detail

#endif

-- signal ToolItem::toolbar-reconfigured
-- | This signal is emitted when some property of the toolbar that the
-- item is a child of changes. For custom subclasses of t'GI.Gtk.Objects.ToolItem.ToolItem',
-- the default handler of this signal use the functions
-- 
-- * 'GI.Gtk.Interfaces.ToolShell.toolShellGetOrientation'
-- * 'GI.Gtk.Interfaces.ToolShell.toolShellGetStyle'
-- * 'GI.Gtk.Interfaces.ToolShell.toolShellGetIconSize'
-- * 'GI.Gtk.Interfaces.ToolShell.toolShellGetReliefStyle'
-- 
-- to find out what the toolbar should look like and change
-- themselves accordingly.
type ToolItemToolbarReconfiguredCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolItemToolbarReconfiguredCallback`@.
noToolItemToolbarReconfiguredCallback :: Maybe ToolItemToolbarReconfiguredCallback
noToolItemToolbarReconfiguredCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolItemToolbarReconfiguredCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToolItemToolbarReconfiguredCallback`.
foreign import ccall "wrapper"
    mk_ToolItemToolbarReconfiguredCallback :: C_ToolItemToolbarReconfiguredCallback -> IO (FunPtr C_ToolItemToolbarReconfiguredCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolItemToolbarReconfigured :: MonadIO m => ToolItemToolbarReconfiguredCallback -> m (GClosure C_ToolItemToolbarReconfiguredCallback)
genClosure_ToolItemToolbarReconfigured cb = liftIO $ do
    let cb' = wrap_ToolItemToolbarReconfiguredCallback cb
    mk_ToolItemToolbarReconfiguredCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolItemToolbarReconfiguredCallback` into a `C_ToolItemToolbarReconfiguredCallback`.
wrap_ToolItemToolbarReconfiguredCallback ::
    ToolItemToolbarReconfiguredCallback ->
    C_ToolItemToolbarReconfiguredCallback
wrap_ToolItemToolbarReconfiguredCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toolbarReconfigured](#signal:toolbarReconfigured) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolItem #toolbarReconfigured callback
-- @
-- 
-- 
onToolItemToolbarReconfigured :: (IsToolItem a, MonadIO m) => a -> ToolItemToolbarReconfiguredCallback -> m SignalHandlerId
onToolItemToolbarReconfigured obj cb = liftIO $ do
    let cb' = wrap_ToolItemToolbarReconfiguredCallback cb
    cb'' <- mk_ToolItemToolbarReconfiguredCallback cb'
    connectSignalFunPtr obj "toolbar-reconfigured" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toolbarReconfigured](#signal:toolbarReconfigured) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolItem #toolbarReconfigured callback
-- @
-- 
-- 
afterToolItemToolbarReconfigured :: (IsToolItem a, MonadIO m) => a -> ToolItemToolbarReconfiguredCallback -> m SignalHandlerId
afterToolItemToolbarReconfigured obj cb = liftIO $ do
    let cb' = wrap_ToolItemToolbarReconfiguredCallback cb
    cb'' <- mk_ToolItemToolbarReconfiguredCallback cb'
    connectSignalFunPtr obj "toolbar-reconfigured" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolItemToolbarReconfiguredSignalInfo
instance SignalInfo ToolItemToolbarReconfiguredSignalInfo where
    type HaskellCallbackType ToolItemToolbarReconfiguredSignalInfo = ToolItemToolbarReconfiguredCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolItemToolbarReconfiguredCallback cb
        cb'' <- mk_ToolItemToolbarReconfiguredCallback cb'
        connectSignalFunPtr obj "toolbar-reconfigured" cb'' connectMode detail

#endif

-- VVV Prop "is-important"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@is-important@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItem #isImportant
-- @
getToolItemIsImportant :: (MonadIO m, IsToolItem o) => o -> m Bool
getToolItemIsImportant obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-important"

-- | Set the value of the “@is-important@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItem [ #isImportant 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemIsImportant :: (MonadIO m, IsToolItem o) => o -> Bool -> m ()
setToolItemIsImportant obj val = liftIO $ B.Properties.setObjectPropertyBool obj "is-important" val

-- | Construct a `GValueConstruct` with valid value for the “@is-important@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemIsImportant :: (IsToolItem o) => Bool -> IO (GValueConstruct o)
constructToolItemIsImportant val = B.Properties.constructObjectPropertyBool "is-important" val

#if defined(ENABLE_OVERLOADING)
data ToolItemIsImportantPropertyInfo
instance AttrInfo ToolItemIsImportantPropertyInfo where
    type AttrAllowedOps ToolItemIsImportantPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemIsImportantPropertyInfo = IsToolItem
    type AttrSetTypeConstraint ToolItemIsImportantPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolItemIsImportantPropertyInfo = (~) Bool
    type AttrTransferType ToolItemIsImportantPropertyInfo = Bool
    type AttrGetType ToolItemIsImportantPropertyInfo = Bool
    type AttrLabel ToolItemIsImportantPropertyInfo = "is-important"
    type AttrOrigin ToolItemIsImportantPropertyInfo = ToolItem
    attrGet = getToolItemIsImportant
    attrSet = setToolItemIsImportant
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemIsImportant
    attrClear = undefined
#endif

-- VVV Prop "visible-horizontal"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible-horizontal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItem #visibleHorizontal
-- @
getToolItemVisibleHorizontal :: (MonadIO m, IsToolItem o) => o -> m Bool
getToolItemVisibleHorizontal obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-horizontal"

-- | Set the value of the “@visible-horizontal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItem [ #visibleHorizontal 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemVisibleHorizontal :: (MonadIO m, IsToolItem o) => o -> Bool -> m ()
setToolItemVisibleHorizontal obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-horizontal" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-horizontal@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemVisibleHorizontal :: (IsToolItem o) => Bool -> IO (GValueConstruct o)
constructToolItemVisibleHorizontal val = B.Properties.constructObjectPropertyBool "visible-horizontal" val

#if defined(ENABLE_OVERLOADING)
data ToolItemVisibleHorizontalPropertyInfo
instance AttrInfo ToolItemVisibleHorizontalPropertyInfo where
    type AttrAllowedOps ToolItemVisibleHorizontalPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemVisibleHorizontalPropertyInfo = IsToolItem
    type AttrSetTypeConstraint ToolItemVisibleHorizontalPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolItemVisibleHorizontalPropertyInfo = (~) Bool
    type AttrTransferType ToolItemVisibleHorizontalPropertyInfo = Bool
    type AttrGetType ToolItemVisibleHorizontalPropertyInfo = Bool
    type AttrLabel ToolItemVisibleHorizontalPropertyInfo = "visible-horizontal"
    type AttrOrigin ToolItemVisibleHorizontalPropertyInfo = ToolItem
    attrGet = getToolItemVisibleHorizontal
    attrSet = setToolItemVisibleHorizontal
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemVisibleHorizontal
    attrClear = undefined
#endif

-- VVV Prop "visible-vertical"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visible-vertical@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolItem #visibleVertical
-- @
getToolItemVisibleVertical :: (MonadIO m, IsToolItem o) => o -> m Bool
getToolItemVisibleVertical obj = liftIO $ B.Properties.getObjectPropertyBool obj "visible-vertical"

-- | Set the value of the “@visible-vertical@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolItem [ #visibleVertical 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolItemVisibleVertical :: (MonadIO m, IsToolItem o) => o -> Bool -> m ()
setToolItemVisibleVertical obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visible-vertical" val

-- | Construct a `GValueConstruct` with valid value for the “@visible-vertical@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolItemVisibleVertical :: (IsToolItem o) => Bool -> IO (GValueConstruct o)
constructToolItemVisibleVertical val = B.Properties.constructObjectPropertyBool "visible-vertical" val

#if defined(ENABLE_OVERLOADING)
data ToolItemVisibleVerticalPropertyInfo
instance AttrInfo ToolItemVisibleVerticalPropertyInfo where
    type AttrAllowedOps ToolItemVisibleVerticalPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolItemVisibleVerticalPropertyInfo = IsToolItem
    type AttrSetTypeConstraint ToolItemVisibleVerticalPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolItemVisibleVerticalPropertyInfo = (~) Bool
    type AttrTransferType ToolItemVisibleVerticalPropertyInfo = Bool
    type AttrGetType ToolItemVisibleVerticalPropertyInfo = Bool
    type AttrLabel ToolItemVisibleVerticalPropertyInfo = "visible-vertical"
    type AttrOrigin ToolItemVisibleVerticalPropertyInfo = ToolItem
    attrGet = getToolItemVisibleVertical
    attrSet = setToolItemVisibleVertical
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolItemVisibleVertical
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ToolItem
type instance O.AttributeList ToolItem = ToolItemAttributeList
type ToolItemAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", ToolItemIsImportantPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toolItemIsImportant :: AttrLabelProxy "isImportant"
toolItemIsImportant = AttrLabelProxy

toolItemVisibleHorizontal :: AttrLabelProxy "visibleHorizontal"
toolItemVisibleHorizontal = AttrLabelProxy

toolItemVisibleVertical :: AttrLabelProxy "visibleVertical"
toolItemVisibleVertical = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ToolItem = ToolItemSignalList
type ToolItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toolbarReconfigured", ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ToolItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_new" gtk_tool_item_new :: 
    IO (Ptr ToolItem)

-- | Creates a new t'GI.Gtk.Objects.ToolItem.ToolItem'
-- 
-- /Since: 2.4/
toolItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ToolItem
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.ToolItem.ToolItem'
toolItemNew  = liftIO $ do
    result <- gtk_tool_item_new
    checkUnexpectedReturnNULL "toolItemNew" result
    result' <- (newObject ToolItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToolItem::get_ellipsize_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just
--               (TInterface Name { namespace = "Pango" , name = "EllipsizeMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_ellipsize_mode" gtk_tool_item_get_ellipsize_mode :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CUInt

-- | Returns the ellipsize mode used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function to find out how text should
-- be ellipsized.
-- 
-- /Since: 2.20/
toolItemGetEllipsizeMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Pango.Enums.EllipsizeMode
    -- ^ __Returns:__ a t'GI.Pango.Enums.EllipsizeMode' indicating how text in /@toolItem@/
    -- should be ellipsized.
toolItemGetEllipsizeMode toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_ellipsize_mode toolItem'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetEllipsizeModeMethodInfo
instance (signature ~ (m Pango.Enums.EllipsizeMode), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetEllipsizeModeMethodInfo a signature where
    overloadedMethod = toolItemGetEllipsizeMode

#endif

-- method ToolItem::get_expand
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_expand" gtk_tool_item_get_expand :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether /@toolItem@/ is allocated extra space.
-- See 'GI.Gtk.Objects.ToolItem.toolItemSetExpand'.
-- 
-- /Since: 2.4/
toolItemGetExpand ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@toolItem@/ is allocated extra space.
toolItemGetExpand toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_expand toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetExpandMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetExpandMethodInfo a signature where
    overloadedMethod = toolItemGetExpand

#endif

-- method ToolItem::get_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_homogeneous" gtk_tool_item_get_homogeneous :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether /@toolItem@/ is the same size as other homogeneous
-- items. See 'GI.Gtk.Objects.ToolItem.toolItemSetHomogeneous'.
-- 
-- /Since: 2.4/
toolItemGetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the item is the same size as other homogeneous
    -- items.
toolItemGetHomogeneous toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_homogeneous toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetHomogeneousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetHomogeneousMethodInfo a signature where
    overloadedMethod = toolItemGetHomogeneous

#endif

-- method ToolItem::get_icon_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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

foreign import ccall "gtk_tool_item_get_icon_size" gtk_tool_item_get_icon_size :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO Int32

-- | Returns the icon size used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function to find out what size icons
-- they should use.
-- 
-- /Since: 2.4/
toolItemGetIconSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Int32
    -- ^ __Returns:__ a t'GI.Gtk.Enums.IconSize' indicating the icon size
    -- used for /@toolItem@/
toolItemGetIconSize toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_icon_size toolItem'
    touchManagedPtr toolItem
    return result

#if defined(ENABLE_OVERLOADING)
data ToolItemGetIconSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetIconSizeMethodInfo a signature where
    overloadedMethod = toolItemGetIconSize

#endif

-- method ToolItem::get_is_important
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_is_important" gtk_tool_item_get_is_important :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether /@toolItem@/ is considered important. See
-- 'GI.Gtk.Objects.ToolItem.toolItemSetIsImportant'
-- 
-- /Since: 2.4/
toolItemGetIsImportant ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@toolItem@/ is considered important.
toolItemGetIsImportant toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_is_important toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetIsImportantMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetIsImportantMethodInfo a signature where
    overloadedMethod = toolItemGetIsImportant

#endif

-- method ToolItem::get_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Orientation" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_orientation" gtk_tool_item_get_orientation :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CUInt

-- | Returns the orientation used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function to find out what size icons
-- they should use.
-- 
-- /Since: 2.4/
toolItemGetOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.Enums.Orientation
    -- ^ __Returns:__ a t'GI.Gtk.Enums.Orientation' indicating the orientation
    -- used for /@toolItem@/
toolItemGetOrientation toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_orientation toolItem'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetOrientationMethodInfo
instance (signature ~ (m Gtk.Enums.Orientation), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetOrientationMethodInfo a signature where
    overloadedMethod = toolItemGetOrientation

#endif

-- method ToolItem::get_proxy_menu_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "menu_item_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string used to identify the menu item"
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

foreign import ccall "gtk_tool_item_get_proxy_menu_item" gtk_tool_item_get_proxy_menu_item :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CString ->                              -- menu_item_id : TBasicType TUTF8
    IO (Ptr Gtk.Widget.Widget)

-- | If /@menuItemId@/ matches the string passed to
-- 'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem' return the corresponding t'GI.Gtk.Objects.MenuItem.MenuItem'.
-- 
-- Custom subclasses of t'GI.Gtk.Objects.ToolItem.ToolItem' should use this function to
-- update their menu item when the t'GI.Gtk.Objects.ToolItem.ToolItem' changes. That the
-- /@menuItemIds@/ must match ensures that a t'GI.Gtk.Objects.ToolItem.ToolItem'
-- will not inadvertently change a menu item that they did not create.
-- 
-- /Since: 2.4/
toolItemGetProxyMenuItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> T.Text
    -- ^ /@menuItemId@/: a string used to identify the menu item
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ The t'GI.Gtk.Objects.MenuItem.MenuItem' passed to
    --     'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem', if the /@menuItemIds@/
    --     match.
toolItemGetProxyMenuItem toolItem menuItemId = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    menuItemId' <- textToCString menuItemId
    result <- gtk_tool_item_get_proxy_menu_item toolItem' menuItemId'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr toolItem
    freeMem menuItemId'
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolItemGetProxyMenuItemMethodInfo
instance (signature ~ (T.Text -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetProxyMenuItemMethodInfo a signature where
    overloadedMethod = toolItemGetProxyMenuItem

#endif

-- method ToolItem::get_relief_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ReliefStyle" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_relief_style" gtk_tool_item_get_relief_style :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CUInt

-- | Returns the relief style of /@toolItem@/. See 'GI.Gtk.Objects.Button.buttonSetRelief'.
-- Custom subclasses of t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function in the handler
-- of the t'GI.Gtk.Objects.ToolItem.ToolItem'::@/toolbar_reconfigured/@ signal to find out the
-- relief style of buttons.
-- 
-- /Since: 2.4/
toolItemGetReliefStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.Enums.ReliefStyle
    -- ^ __Returns:__ a t'GI.Gtk.Enums.ReliefStyle' indicating the relief style used
    -- for /@toolItem@/.
toolItemGetReliefStyle toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_relief_style toolItem'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetReliefStyleMethodInfo
instance (signature ~ (m Gtk.Enums.ReliefStyle), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetReliefStyleMethodInfo a signature where
    overloadedMethod = toolItemGetReliefStyle

#endif

-- method ToolItem::get_text_alignment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolItem:" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TFloat)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_text_alignment" gtk_tool_item_get_text_alignment :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CFloat

-- | Returns the text alignment used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function to find out how text should
-- be aligned.
-- 
-- /Since: 2.20/
toolItemGetTextAlignment ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem':
    -> m Float
    -- ^ __Returns:__ a @/gfloat/@ indicating the horizontal text alignment
    -- used for /@toolItem@/
toolItemGetTextAlignment toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_text_alignment toolItem'
    let result' = realToFrac result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetTextAlignmentMethodInfo
instance (signature ~ (m Float), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetTextAlignmentMethodInfo a signature where
    overloadedMethod = toolItemGetTextAlignment

#endif

-- method ToolItem::get_text_orientation
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Orientation" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_text_orientation" gtk_tool_item_get_text_orientation :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CUInt

-- | Returns the text orientation used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function to find out how text should
-- be orientated.
-- 
-- /Since: 2.20/
toolItemGetTextOrientation ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.Enums.Orientation
    -- ^ __Returns:__ a t'GI.Gtk.Enums.Orientation' indicating the text orientation
    -- used for /@toolItem@/
toolItemGetTextOrientation toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_text_orientation toolItem'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetTextOrientationMethodInfo
instance (signature ~ (m Gtk.Enums.Orientation), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetTextOrientationMethodInfo a signature where
    overloadedMethod = toolItemGetTextOrientation

#endif

-- method ToolItem::get_text_size_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "SizeGroup" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_text_size_group" gtk_tool_item_get_text_size_group :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO (Ptr Gtk.SizeGroup.SizeGroup)

-- | Returns the size group used for labels in /@toolItem@/.
-- Custom subclasses of t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function
-- and use the size group for labels.
-- 
-- /Since: 2.20/
toolItemGetTextSizeGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.SizeGroup.SizeGroup
    -- ^ __Returns:__ a t'GI.Gtk.Objects.SizeGroup.SizeGroup'
toolItemGetTextSizeGroup toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_text_size_group toolItem'
    checkUnexpectedReturnNULL "toolItemGetTextSizeGroup" result
    result' <- (newObject Gtk.SizeGroup.SizeGroup) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetTextSizeGroupMethodInfo
instance (signature ~ (m Gtk.SizeGroup.SizeGroup), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetTextSizeGroupMethodInfo a signature where
    overloadedMethod = toolItemGetTextSizeGroup

#endif

-- method ToolItem::get_toolbar_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ToolbarStyle" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_toolbar_style" gtk_tool_item_get_toolbar_style :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CUInt

-- | Returns the toolbar style used for /@toolItem@/. Custom subclasses of
-- t'GI.Gtk.Objects.ToolItem.ToolItem' should call this function in the handler of the
-- GtkToolItem[toolbar_reconfigured](#signal:toolbar_reconfigured) signal to find out in what style
-- the toolbar is displayed and change themselves accordingly
-- 
-- Possibilities are:
-- 
-- * 'GI.Gtk.Enums.ToolbarStyleBoth', meaning the tool item should show
-- both an icon and a label, stacked vertically
-- * 'GI.Gtk.Enums.ToolbarStyleIcons', meaning the toolbar shows only icons
-- * 'GI.Gtk.Enums.ToolbarStyleText', meaning the tool item should only show text
-- * 'GI.Gtk.Enums.ToolbarStyleBothHoriz', meaning the tool item should show
-- both an icon and a label, arranged horizontally
-- 
-- 
-- /Since: 2.4/
toolItemGetToolbarStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.Enums.ToolbarStyle
    -- ^ __Returns:__ A t'GI.Gtk.Enums.ToolbarStyle' indicating the toolbar style used
    -- for /@toolItem@/.
toolItemGetToolbarStyle toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_toolbar_style toolItem'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetToolbarStyleMethodInfo
instance (signature ~ (m Gtk.Enums.ToolbarStyle), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetToolbarStyleMethodInfo a signature where
    overloadedMethod = toolItemGetToolbarStyle

#endif

-- method ToolItem::get_use_drag_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_use_drag_window" gtk_tool_item_get_use_drag_window :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether /@toolItem@/ has a drag window. See
-- 'GI.Gtk.Objects.ToolItem.toolItemSetUseDragWindow'.
-- 
-- /Since: 2.4/
toolItemGetUseDragWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@toolItem@/ uses a drag window.
toolItemGetUseDragWindow toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_use_drag_window toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetUseDragWindowMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetUseDragWindowMethodInfo a signature where
    overloadedMethod = toolItemGetUseDragWindow

#endif

-- method ToolItem::get_visible_horizontal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_visible_horizontal" gtk_tool_item_get_visible_horizontal :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether the /@toolItem@/ is visible on toolbars that are
-- docked horizontally.
-- 
-- /Since: 2.4/
toolItemGetVisibleHorizontal ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@toolItem@/ is visible on toolbars that are
    -- docked horizontally.
toolItemGetVisibleHorizontal toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_visible_horizontal toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetVisibleHorizontalMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetVisibleHorizontalMethodInfo a signature where
    overloadedMethod = toolItemGetVisibleHorizontal

#endif

-- method ToolItem::get_visible_vertical
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_get_visible_vertical" gtk_tool_item_get_visible_vertical :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO CInt

-- | Returns whether /@toolItem@/ is visible when the toolbar is docked vertically.
-- See 'GI.Gtk.Objects.ToolItem.toolItemSetVisibleVertical'.
-- 
-- /Since: 2.4/
toolItemGetVisibleVertical ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Bool
    -- ^ __Returns:__ Whether /@toolItem@/ is visible when the toolbar is docked vertically
toolItemGetVisibleVertical toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_get_visible_vertical toolItem'
    let result' = (/= 0) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemGetVisibleVerticalMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemGetVisibleVerticalMethodInfo a signature where
    overloadedMethod = toolItemGetVisibleVertical

#endif

-- method ToolItem::rebuild_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_rebuild_menu" gtk_tool_item_rebuild_menu :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO ()

-- | Calling this function signals to the toolbar that the
-- overflow menu item for /@toolItem@/ has changed. If the
-- overflow menu is visible when this function it called,
-- the menu will be rebuilt.
-- 
-- The function must be called when the tool item changes what it
-- will do in response to the [createMenuProxy]("GI.Gtk.Objects.ToolItem#signal:createMenuProxy") signal.
-- 
-- /Since: 2.6/
toolItemRebuildMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m ()
toolItemRebuildMenu toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    gtk_tool_item_rebuild_menu toolItem'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemRebuildMenuMethodInfo
instance (signature ~ (m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemRebuildMenuMethodInfo a signature where
    overloadedMethod = toolItemRebuildMenu

#endif

-- method ToolItem::retrieve_proxy_menu_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_retrieve_proxy_menu_item" gtk_tool_item_retrieve_proxy_menu_item :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the t'GI.Gtk.Objects.MenuItem.MenuItem' that was last set by
-- 'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem', ie. the t'GI.Gtk.Objects.MenuItem.MenuItem'
-- that is going to appear in the overflow menu.
-- 
-- /Since: 2.4/
toolItemRetrieveProxyMenuItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ The t'GI.Gtk.Objects.MenuItem.MenuItem' that is going to appear in the
    -- overflow menu for /@toolItem@/.
toolItemRetrieveProxyMenuItem toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    result <- gtk_tool_item_retrieve_proxy_menu_item toolItem'
    checkUnexpectedReturnNULL "toolItemRetrieveProxyMenuItem" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr toolItem
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolItemRetrieveProxyMenuItemMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemRetrieveProxyMenuItemMethodInfo a signature where
    overloadedMethod = toolItemRetrieveProxyMenuItem

#endif

-- method ToolItem::set_expand
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "expand"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Whether @tool_item is allocated extra space"
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

foreign import ccall "gtk_tool_item_set_expand" gtk_tool_item_set_expand :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- expand : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ is allocated extra space when there
-- is more room on the toolbar then needed for the items. The
-- effect is that the item gets bigger when the toolbar gets bigger
-- and smaller when the toolbar gets smaller.
-- 
-- /Since: 2.4/
toolItemSetExpand ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@expand@/: Whether /@toolItem@/ is allocated extra space
    -> m ()
toolItemSetExpand toolItem expand = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let expand' = (fromIntegral . fromEnum) expand
    gtk_tool_item_set_expand toolItem' expand'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetExpandMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetExpandMethodInfo a signature where
    overloadedMethod = toolItemSetExpand

#endif

-- method ToolItem::set_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "homogeneous"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether @tool_item is the same size as other homogeneous items"
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

foreign import ccall "gtk_tool_item_set_homogeneous" gtk_tool_item_set_homogeneous :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ is to be allocated the same size as other
-- homogeneous items. The effect is that all homogeneous items will have
-- the same width as the widest of the items.
-- 
-- /Since: 2.4/
toolItemSetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@homogeneous@/: whether /@toolItem@/ is the same size as other homogeneous items
    -> m ()
toolItemSetHomogeneous toolItem homogeneous = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    gtk_tool_item_set_homogeneous toolItem' homogeneous'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetHomogeneousMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetHomogeneousMethodInfo a signature where
    overloadedMethod = toolItemSetHomogeneous

#endif

-- method ToolItem::set_is_important
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "is_important"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether the tool item should be considered important"
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

foreign import ccall "gtk_tool_item_set_is_important" gtk_tool_item_set_is_important :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- is_important : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ should be considered important. The t'GI.Gtk.Objects.ToolButton.ToolButton'
-- class uses this property to determine whether to show or hide its label
-- when the toolbar style is 'GI.Gtk.Enums.ToolbarStyleBothHoriz'. The result is that
-- only tool buttons with the “is_important” property set have labels, an
-- effect known as “priority text”
-- 
-- /Since: 2.4/
toolItemSetIsImportant ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@isImportant@/: whether the tool item should be considered important
    -> m ()
toolItemSetIsImportant toolItem isImportant = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let isImportant' = (fromIntegral . fromEnum) isImportant
    gtk_tool_item_set_is_important toolItem' isImportant'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetIsImportantMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetIsImportantMethodInfo a signature where
    overloadedMethod = toolItemSetIsImportant

#endif

-- method ToolItem::set_proxy_menu_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "menu_item_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string used to identify @menu_item"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_item"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkMenuItem to use in the overflow menu, or %NULL"
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

foreign import ccall "gtk_tool_item_set_proxy_menu_item" gtk_tool_item_set_proxy_menu_item :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CString ->                              -- menu_item_id : TBasicType TUTF8
    Ptr Gtk.Widget.Widget ->                -- menu_item : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.MenuItem.MenuItem' used in the toolbar overflow menu. The
-- /@menuItemId@/ is used to identify the caller of this function and
-- should also be used with 'GI.Gtk.Objects.ToolItem.toolItemGetProxyMenuItem'.
-- 
-- See also [createMenuProxy]("GI.Gtk.Objects.ToolItem#signal:createMenuProxy").
-- 
-- /Since: 2.4/
toolItemSetProxyMenuItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> T.Text
    -- ^ /@menuItemId@/: a string used to identify /@menuItem@/
    -> Maybe (b)
    -- ^ /@menuItem@/: a t'GI.Gtk.Objects.MenuItem.MenuItem' to use in the overflow menu, or 'P.Nothing'
    -> m ()
toolItemSetProxyMenuItem toolItem menuItemId menuItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    menuItemId' <- textToCString menuItemId
    maybeMenuItem <- case menuItem of
        Nothing -> return nullPtr
        Just jMenuItem -> do
            jMenuItem' <- unsafeManagedPtrCastPtr jMenuItem
            return jMenuItem'
    gtk_tool_item_set_proxy_menu_item toolItem' menuItemId' maybeMenuItem
    touchManagedPtr toolItem
    whenJust menuItem touchManagedPtr
    freeMem menuItemId'
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetProxyMenuItemMethodInfo
instance (signature ~ (T.Text -> Maybe (b) -> m ()), MonadIO m, IsToolItem a, Gtk.Widget.IsWidget b) => O.MethodInfo ToolItemSetProxyMenuItemMethodInfo a signature where
    overloadedMethod = toolItemSetProxyMenuItem

#endif

-- method ToolItem::set_tooltip_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "markup"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "markup text to be used as tooltip for @tool_item"
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

foreign import ccall "gtk_tool_item_set_tooltip_markup" gtk_tool_item_set_tooltip_markup :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CString ->                              -- markup : TBasicType TUTF8
    IO ()

-- | Sets the markup text to be displayed as tooltip on the item.
-- See 'GI.Gtk.Objects.Widget.widgetSetTooltipMarkup'.
-- 
-- /Since: 2.12/
toolItemSetTooltipMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> T.Text
    -- ^ /@markup@/: markup text to be used as tooltip for /@toolItem@/
    -> m ()
toolItemSetTooltipMarkup toolItem markup = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    markup' <- textToCString markup
    gtk_tool_item_set_tooltip_markup toolItem' markup'
    touchManagedPtr toolItem
    freeMem markup'
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetTooltipMarkupMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetTooltipMarkupMethodInfo a signature where
    overloadedMethod = toolItemSetTooltipMarkup

#endif

-- method ToolItem::set_tooltip_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text to be used as tooltip for @tool_item"
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

foreign import ccall "gtk_tool_item_set_tooltip_text" gtk_tool_item_set_tooltip_text :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

-- | Sets the text to be displayed as tooltip on the item.
-- See 'GI.Gtk.Objects.Widget.widgetSetTooltipText'.
-- 
-- /Since: 2.12/
toolItemSetTooltipText ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> T.Text
    -- ^ /@text@/: text to be used as tooltip for /@toolItem@/
    -> m ()
toolItemSetTooltipText toolItem text = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    text' <- textToCString text
    gtk_tool_item_set_tooltip_text toolItem' text'
    touchManagedPtr toolItem
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetTooltipTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetTooltipTextMethodInfo a signature where
    overloadedMethod = toolItemSetTooltipText

#endif

-- method ToolItem::set_use_drag_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "use_drag_window"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Whether @tool_item has a drag window."
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

foreign import ccall "gtk_tool_item_set_use_drag_window" gtk_tool_item_set_use_drag_window :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- use_drag_window : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ has a drag window. When 'P.True' the
-- toolitem can be used as a drag source through 'GI.Gtk.Objects.Widget.widgetDragSourceSet'.
-- When /@toolItem@/ has a drag window it will intercept all events,
-- even those that would otherwise be sent to a child of /@toolItem@/.
-- 
-- /Since: 2.4/
toolItemSetUseDragWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@useDragWindow@/: Whether /@toolItem@/ has a drag window.
    -> m ()
toolItemSetUseDragWindow toolItem useDragWindow = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let useDragWindow' = (fromIntegral . fromEnum) useDragWindow
    gtk_tool_item_set_use_drag_window toolItem' useDragWindow'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetUseDragWindowMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetUseDragWindowMethodInfo a signature where
    overloadedMethod = toolItemSetUseDragWindow

#endif

-- method ToolItem::set_visible_horizontal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "visible_horizontal"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Whether @tool_item is visible when in horizontal mode"
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

foreign import ccall "gtk_tool_item_set_visible_horizontal" gtk_tool_item_set_visible_horizontal :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- visible_horizontal : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ is visible when the toolbar is docked horizontally.
-- 
-- /Since: 2.4/
toolItemSetVisibleHorizontal ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@visibleHorizontal@/: Whether /@toolItem@/ is visible when in horizontal mode
    -> m ()
toolItemSetVisibleHorizontal toolItem visibleHorizontal = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let visibleHorizontal' = (fromIntegral . fromEnum) visibleHorizontal
    gtk_tool_item_set_visible_horizontal toolItem' visibleHorizontal'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetVisibleHorizontalMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetVisibleHorizontalMethodInfo a signature where
    overloadedMethod = toolItemSetVisibleHorizontal

#endif

-- method ToolItem::set_visible_vertical
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
--       , Arg
--           { argCName = "visible_vertical"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether @tool_item is visible when the toolbar\nis in vertical mode"
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

foreign import ccall "gtk_tool_item_set_visible_vertical" gtk_tool_item_set_visible_vertical :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    CInt ->                                 -- visible_vertical : TBasicType TBoolean
    IO ()

-- | Sets whether /@toolItem@/ is visible when the toolbar is docked
-- vertically. Some tool items, such as text entries, are too wide to be
-- useful on a vertically docked toolbar. If /@visibleVertical@/ is 'P.False'
-- /@toolItem@/ will not appear on toolbars that are docked vertically.
-- 
-- /Since: 2.4/
toolItemSetVisibleVertical ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Bool
    -- ^ /@visibleVertical@/: whether /@toolItem@/ is visible when the toolbar
    -- is in vertical mode
    -> m ()
toolItemSetVisibleVertical toolItem visibleVertical = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    let visibleVertical' = (fromIntegral . fromEnum) visibleVertical
    gtk_tool_item_set_visible_vertical toolItem' visibleVertical'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemSetVisibleVerticalMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemSetVisibleVerticalMethodInfo a signature where
    overloadedMethod = toolItemSetVisibleVertical

#endif

-- method ToolItem::toolbar_reconfigured
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "tool_item"
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_item_toolbar_reconfigured" gtk_tool_item_toolbar_reconfigured :: 
    Ptr ToolItem ->                         -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO ()

-- | Emits the signal t'GI.Gtk.Objects.ToolItem.ToolItem'::@/toolbar_reconfigured/@ on /@toolItem@/.
-- t'GI.Gtk.Objects.Toolbar.Toolbar' and other t'GI.Gtk.Interfaces.ToolShell.ToolShell' implementations use this function
-- to notify children, when some aspect of their configuration changes.
-- 
-- /Since: 2.14/
toolItemToolbarReconfigured ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolItem a) =>
    a
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> m ()
toolItemToolbarReconfigured toolItem = liftIO $ do
    toolItem' <- unsafeManagedPtrCastPtr toolItem
    gtk_tool_item_toolbar_reconfigured toolItem'
    touchManagedPtr toolItem
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolItemToolbarReconfiguredMethodInfo
instance (signature ~ (m ()), MonadIO m, IsToolItem a) => O.MethodInfo ToolItemToolbarReconfiguredMethodInfo a signature where
    overloadedMethod = toolItemToolbarReconfigured

#endif

