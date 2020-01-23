{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ListBoxRow
    ( 

-- * Exported types
    ListBoxRow(..)                          ,
    IsListBoxRow                            ,
    toListBoxRow                            ,
    noListBoxRow                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveListBoxRowMethod                 ,
#endif


-- ** changed #method:changed#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowChangedMethodInfo             ,
#endif
    listBoxRowChanged                       ,


-- ** getActivatable #method:getActivatable#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowGetActivatableMethodInfo      ,
#endif
    listBoxRowGetActivatable                ,


-- ** getHeader #method:getHeader#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowGetHeaderMethodInfo           ,
#endif
    listBoxRowGetHeader                     ,


-- ** getIndex #method:getIndex#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowGetIndexMethodInfo            ,
#endif
    listBoxRowGetIndex                      ,


-- ** getSelectable #method:getSelectable#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowGetSelectableMethodInfo       ,
#endif
    listBoxRowGetSelectable                 ,


-- ** isSelected #method:isSelected#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowIsSelectedMethodInfo          ,
#endif
    listBoxRowIsSelected                    ,


-- ** new #method:new#

    listBoxRowNew                           ,


-- ** setActivatable #method:setActivatable#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowSetActivatableMethodInfo      ,
#endif
    listBoxRowSetActivatable                ,


-- ** setHeader #method:setHeader#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowSetHeaderMethodInfo           ,
#endif
    listBoxRowSetHeader                     ,


-- ** setSelectable #method:setSelectable#

#if defined(ENABLE_OVERLOADING)
    ListBoxRowSetSelectableMethodInfo       ,
#endif
    listBoxRowSetSelectable                 ,




 -- * Properties
-- ** activatable #attr:activatable#
-- | The property determines whether the [rowActivated]("GI.Gtk.Objects.ListBox#signal:rowActivated")
-- signal will be emitted for this row.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    ListBoxRowActivatablePropertyInfo       ,
#endif
    constructListBoxRowActivatable          ,
    getListBoxRowActivatable                ,
#if defined(ENABLE_OVERLOADING)
    listBoxRowActivatable                   ,
#endif
    setListBoxRowActivatable                ,


-- ** selectable #attr:selectable#
-- | The property determines whether this row can be selected.
-- 
-- /Since: 3.14/

#if defined(ENABLE_OVERLOADING)
    ListBoxRowSelectablePropertyInfo        ,
#endif
    constructListBoxRowSelectable           ,
    getListBoxRowSelectable                 ,
#if defined(ENABLE_OVERLOADING)
    listBoxRowSelectable                    ,
#endif
    setListBoxRowSelectable                 ,




 -- * Signals
-- ** activate #signal:activate#

    C_ListBoxRowActivateCallback            ,
    ListBoxRowActivateCallback              ,
#if defined(ENABLE_OVERLOADING)
    ListBoxRowActivateSignalInfo            ,
#endif
    afterListBoxRowActivate                 ,
    genClosure_ListBoxRowActivate           ,
    mk_ListBoxRowActivateCallback           ,
    noListBoxRowActivateCallback            ,
    onListBoxRowActivate                    ,
    wrap_ListBoxRowActivateCallback         ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ListBoxRow = ListBoxRow (ManagedPtr ListBoxRow)
    deriving (Eq)
foreign import ccall "gtk_list_box_row_get_type"
    c_gtk_list_box_row_get_type :: IO GType

instance GObject ListBoxRow where
    gobjectType = c_gtk_list_box_row_get_type
    

-- | Convert 'ListBoxRow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ListBoxRow where
    toGValue o = do
        gtype <- c_gtk_list_box_row_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ListBoxRow)
        B.ManagedPtr.newObject ListBoxRow ptr
        
    

-- | Type class for types which can be safely cast to `ListBoxRow`, for instance with `toListBoxRow`.
class (GObject o, O.IsDescendantOf ListBoxRow o) => IsListBoxRow o
instance (GObject o, O.IsDescendantOf ListBoxRow o) => IsListBoxRow o

instance O.HasParentTypes ListBoxRow
type instance O.ParentTypes ListBoxRow = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Buildable.Buildable]

-- | Cast to `ListBoxRow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListBoxRow :: (MonadIO m, IsListBoxRow o) => o -> m ListBoxRow
toListBoxRow = liftIO . unsafeCastTo ListBoxRow

-- | A convenience alias for `Nothing` :: `Maybe` `ListBoxRow`.
noListBoxRow :: Maybe ListBoxRow
noListBoxRow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveListBoxRowMethod (t :: Symbol) (o :: *) :: * where
    ResolveListBoxRowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveListBoxRowMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveListBoxRowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveListBoxRowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveListBoxRowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveListBoxRowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveListBoxRowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveListBoxRowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveListBoxRowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListBoxRowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListBoxRowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveListBoxRowMethod "changed" o = ListBoxRowChangedMethodInfo
    ResolveListBoxRowMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveListBoxRowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveListBoxRowMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveListBoxRowMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveListBoxRowMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveListBoxRowMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveListBoxRowMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveListBoxRowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveListBoxRowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveListBoxRowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveListBoxRowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveListBoxRowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveListBoxRowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveListBoxRowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveListBoxRowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveListBoxRowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveListBoxRowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveListBoxRowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveListBoxRowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveListBoxRowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveListBoxRowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveListBoxRowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveListBoxRowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveListBoxRowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveListBoxRowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveListBoxRowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveListBoxRowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveListBoxRowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveListBoxRowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveListBoxRowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveListBoxRowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveListBoxRowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveListBoxRowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveListBoxRowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveListBoxRowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveListBoxRowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveListBoxRowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveListBoxRowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveListBoxRowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveListBoxRowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveListBoxRowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveListBoxRowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveListBoxRowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveListBoxRowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveListBoxRowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveListBoxRowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveListBoxRowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveListBoxRowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveListBoxRowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveListBoxRowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveListBoxRowMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveListBoxRowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListBoxRowMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveListBoxRowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveListBoxRowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListBoxRowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListBoxRowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveListBoxRowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveListBoxRowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveListBoxRowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveListBoxRowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveListBoxRowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveListBoxRowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveListBoxRowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveListBoxRowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveListBoxRowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveListBoxRowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveListBoxRowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveListBoxRowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveListBoxRowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveListBoxRowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveListBoxRowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveListBoxRowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveListBoxRowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveListBoxRowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveListBoxRowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveListBoxRowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListBoxRowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveListBoxRowMethod "isSelected" o = ListBoxRowIsSelectedMethodInfo
    ResolveListBoxRowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveListBoxRowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveListBoxRowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveListBoxRowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveListBoxRowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveListBoxRowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveListBoxRowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveListBoxRowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveListBoxRowMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveListBoxRowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveListBoxRowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveListBoxRowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveListBoxRowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveListBoxRowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveListBoxRowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveListBoxRowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveListBoxRowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListBoxRowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListBoxRowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveListBoxRowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveListBoxRowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveListBoxRowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveListBoxRowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveListBoxRowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveListBoxRowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveListBoxRowMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveListBoxRowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveListBoxRowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveListBoxRowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveListBoxRowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveListBoxRowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveListBoxRowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveListBoxRowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveListBoxRowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveListBoxRowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListBoxRowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListBoxRowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveListBoxRowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveListBoxRowMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveListBoxRowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveListBoxRowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveListBoxRowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveListBoxRowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveListBoxRowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveListBoxRowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveListBoxRowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveListBoxRowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveListBoxRowMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveListBoxRowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListBoxRowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveListBoxRowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveListBoxRowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveListBoxRowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveListBoxRowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveListBoxRowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveListBoxRowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveListBoxRowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveListBoxRowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveListBoxRowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListBoxRowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListBoxRowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveListBoxRowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveListBoxRowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveListBoxRowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListBoxRowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveListBoxRowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveListBoxRowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveListBoxRowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveListBoxRowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveListBoxRowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListBoxRowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveListBoxRowMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveListBoxRowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveListBoxRowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListBoxRowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveListBoxRowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveListBoxRowMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveListBoxRowMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveListBoxRowMethod "getActivatable" o = ListBoxRowGetActivatableMethodInfo
    ResolveListBoxRowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveListBoxRowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveListBoxRowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveListBoxRowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveListBoxRowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveListBoxRowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveListBoxRowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveListBoxRowMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveListBoxRowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveListBoxRowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveListBoxRowMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveListBoxRowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveListBoxRowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveListBoxRowMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveListBoxRowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveListBoxRowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveListBoxRowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveListBoxRowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListBoxRowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveListBoxRowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveListBoxRowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveListBoxRowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveListBoxRowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveListBoxRowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveListBoxRowMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveListBoxRowMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveListBoxRowMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveListBoxRowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveListBoxRowMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveListBoxRowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveListBoxRowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveListBoxRowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveListBoxRowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveListBoxRowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveListBoxRowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveListBoxRowMethod "getHeader" o = ListBoxRowGetHeaderMethodInfo
    ResolveListBoxRowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveListBoxRowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveListBoxRowMethod "getIndex" o = ListBoxRowGetIndexMethodInfo
    ResolveListBoxRowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveListBoxRowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveListBoxRowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveListBoxRowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveListBoxRowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveListBoxRowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveListBoxRowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveListBoxRowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveListBoxRowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveListBoxRowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveListBoxRowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveListBoxRowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveListBoxRowMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveListBoxRowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveListBoxRowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveListBoxRowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveListBoxRowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveListBoxRowMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveListBoxRowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveListBoxRowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveListBoxRowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveListBoxRowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveListBoxRowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveListBoxRowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveListBoxRowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveListBoxRowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListBoxRowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListBoxRowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveListBoxRowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveListBoxRowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveListBoxRowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveListBoxRowMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveListBoxRowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveListBoxRowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveListBoxRowMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveListBoxRowMethod "getSelectable" o = ListBoxRowGetSelectableMethodInfo
    ResolveListBoxRowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveListBoxRowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveListBoxRowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveListBoxRowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveListBoxRowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveListBoxRowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveListBoxRowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveListBoxRowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveListBoxRowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveListBoxRowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveListBoxRowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveListBoxRowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveListBoxRowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveListBoxRowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveListBoxRowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveListBoxRowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveListBoxRowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveListBoxRowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveListBoxRowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveListBoxRowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveListBoxRowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveListBoxRowMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveListBoxRowMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveListBoxRowMethod "setActivatable" o = ListBoxRowSetActivatableMethodInfo
    ResolveListBoxRowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveListBoxRowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveListBoxRowMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveListBoxRowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveListBoxRowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveListBoxRowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveListBoxRowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveListBoxRowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveListBoxRowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveListBoxRowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListBoxRowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveListBoxRowMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveListBoxRowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveListBoxRowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveListBoxRowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveListBoxRowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveListBoxRowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveListBoxRowMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveListBoxRowMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveListBoxRowMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveListBoxRowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveListBoxRowMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveListBoxRowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveListBoxRowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveListBoxRowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveListBoxRowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveListBoxRowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveListBoxRowMethod "setHeader" o = ListBoxRowSetHeaderMethodInfo
    ResolveListBoxRowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveListBoxRowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveListBoxRowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveListBoxRowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveListBoxRowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveListBoxRowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveListBoxRowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveListBoxRowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveListBoxRowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveListBoxRowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveListBoxRowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveListBoxRowMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveListBoxRowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveListBoxRowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveListBoxRowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListBoxRowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveListBoxRowMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveListBoxRowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveListBoxRowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveListBoxRowMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveListBoxRowMethod "setSelectable" o = ListBoxRowSetSelectableMethodInfo
    ResolveListBoxRowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveListBoxRowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveListBoxRowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveListBoxRowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveListBoxRowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveListBoxRowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveListBoxRowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveListBoxRowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveListBoxRowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveListBoxRowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveListBoxRowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveListBoxRowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveListBoxRowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveListBoxRowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveListBoxRowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveListBoxRowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListBoxRowMethod t ListBoxRow, O.MethodInfo info ListBoxRow p) => OL.IsLabel t (ListBoxRow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ListBoxRow::activate
-- | This is a keybinding signal, which will cause this row to be activated.
-- 
-- If you want to be notified when the user activates a row (by key or not),
-- use the [rowActivated]("GI.Gtk.Objects.ListBox#signal:rowActivated") signal on the row’s parent t'GI.Gtk.Objects.ListBox.ListBox'.
-- 
-- /Since: 3.10/
type ListBoxRowActivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ListBoxRowActivateCallback`@.
noListBoxRowActivateCallback :: Maybe ListBoxRowActivateCallback
noListBoxRowActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ListBoxRowActivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ListBoxRowActivateCallback`.
foreign import ccall "wrapper"
    mk_ListBoxRowActivateCallback :: C_ListBoxRowActivateCallback -> IO (FunPtr C_ListBoxRowActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ListBoxRowActivate :: MonadIO m => ListBoxRowActivateCallback -> m (GClosure C_ListBoxRowActivateCallback)
genClosure_ListBoxRowActivate cb = liftIO $ do
    let cb' = wrap_ListBoxRowActivateCallback cb
    mk_ListBoxRowActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ListBoxRowActivateCallback` into a `C_ListBoxRowActivateCallback`.
wrap_ListBoxRowActivateCallback ::
    ListBoxRowActivateCallback ->
    C_ListBoxRowActivateCallback
wrap_ListBoxRowActivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' listBoxRow #activate callback
-- @
-- 
-- 
onListBoxRowActivate :: (IsListBoxRow a, MonadIO m) => a -> ListBoxRowActivateCallback -> m SignalHandlerId
onListBoxRowActivate obj cb = liftIO $ do
    let cb' = wrap_ListBoxRowActivateCallback cb
    cb'' <- mk_ListBoxRowActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' listBoxRow #activate callback
-- @
-- 
-- 
afterListBoxRowActivate :: (IsListBoxRow a, MonadIO m) => a -> ListBoxRowActivateCallback -> m SignalHandlerId
afterListBoxRowActivate obj cb = liftIO $ do
    let cb' = wrap_ListBoxRowActivateCallback cb
    cb'' <- mk_ListBoxRowActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ListBoxRowActivateSignalInfo
instance SignalInfo ListBoxRowActivateSignalInfo where
    type HaskellCallbackType ListBoxRowActivateSignalInfo = ListBoxRowActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ListBoxRowActivateCallback cb
        cb'' <- mk_ListBoxRowActivateCallback cb'
        connectSignalFunPtr obj "activate" cb'' connectMode detail

#endif

-- VVV Prop "activatable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@activatable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' listBoxRow #activatable
-- @
getListBoxRowActivatable :: (MonadIO m, IsListBoxRow o) => o -> m Bool
getListBoxRowActivatable obj = liftIO $ B.Properties.getObjectPropertyBool obj "activatable"

-- | Set the value of the “@activatable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' listBoxRow [ #activatable 'Data.GI.Base.Attributes.:=' value ]
-- @
setListBoxRowActivatable :: (MonadIO m, IsListBoxRow o) => o -> Bool -> m ()
setListBoxRowActivatable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "activatable" val

-- | Construct a `GValueConstruct` with valid value for the “@activatable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructListBoxRowActivatable :: (IsListBoxRow o) => Bool -> IO (GValueConstruct o)
constructListBoxRowActivatable val = B.Properties.constructObjectPropertyBool "activatable" val

#if defined(ENABLE_OVERLOADING)
data ListBoxRowActivatablePropertyInfo
instance AttrInfo ListBoxRowActivatablePropertyInfo where
    type AttrAllowedOps ListBoxRowActivatablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ListBoxRowActivatablePropertyInfo = IsListBoxRow
    type AttrSetTypeConstraint ListBoxRowActivatablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ListBoxRowActivatablePropertyInfo = (~) Bool
    type AttrTransferType ListBoxRowActivatablePropertyInfo = Bool
    type AttrGetType ListBoxRowActivatablePropertyInfo = Bool
    type AttrLabel ListBoxRowActivatablePropertyInfo = "activatable"
    type AttrOrigin ListBoxRowActivatablePropertyInfo = ListBoxRow
    attrGet = getListBoxRowActivatable
    attrSet = setListBoxRowActivatable
    attrTransfer _ v = do
        return v
    attrConstruct = constructListBoxRowActivatable
    attrClear = undefined
#endif

-- VVV Prop "selectable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@selectable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' listBoxRow #selectable
-- @
getListBoxRowSelectable :: (MonadIO m, IsListBoxRow o) => o -> m Bool
getListBoxRowSelectable obj = liftIO $ B.Properties.getObjectPropertyBool obj "selectable"

-- | Set the value of the “@selectable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' listBoxRow [ #selectable 'Data.GI.Base.Attributes.:=' value ]
-- @
setListBoxRowSelectable :: (MonadIO m, IsListBoxRow o) => o -> Bool -> m ()
setListBoxRowSelectable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "selectable" val

-- | Construct a `GValueConstruct` with valid value for the “@selectable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructListBoxRowSelectable :: (IsListBoxRow o) => Bool -> IO (GValueConstruct o)
constructListBoxRowSelectable val = B.Properties.constructObjectPropertyBool "selectable" val

#if defined(ENABLE_OVERLOADING)
data ListBoxRowSelectablePropertyInfo
instance AttrInfo ListBoxRowSelectablePropertyInfo where
    type AttrAllowedOps ListBoxRowSelectablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ListBoxRowSelectablePropertyInfo = IsListBoxRow
    type AttrSetTypeConstraint ListBoxRowSelectablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ListBoxRowSelectablePropertyInfo = (~) Bool
    type AttrTransferType ListBoxRowSelectablePropertyInfo = Bool
    type AttrGetType ListBoxRowSelectablePropertyInfo = Bool
    type AttrLabel ListBoxRowSelectablePropertyInfo = "selectable"
    type AttrOrigin ListBoxRowSelectablePropertyInfo = ListBoxRow
    attrGet = getListBoxRowSelectable
    attrSet = setListBoxRowSelectable
    attrTransfer _ v = do
        return v
    attrConstruct = constructListBoxRowSelectable
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ListBoxRow
type instance O.AttributeList ListBoxRow = ListBoxRowAttributeList
type ListBoxRowAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("activatable", ListBoxRowActivatablePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("selectable", ListBoxRowSelectablePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
listBoxRowActivatable :: AttrLabelProxy "activatable"
listBoxRowActivatable = AttrLabelProxy

listBoxRowSelectable :: AttrLabelProxy "selectable"
listBoxRowSelectable = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ListBoxRow = ListBoxRowSignalList
type ListBoxRowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", ListBoxRowActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ListBoxRow::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ListBoxRow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_list_box_row_new" gtk_list_box_row_new :: 
    IO (Ptr ListBoxRow)

-- | Creates a new t'GI.Gtk.Objects.ListBoxRow.ListBoxRow', to be used as a child of a t'GI.Gtk.Objects.ListBox.ListBox'.
-- 
-- /Since: 3.10/
listBoxRowNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ListBoxRow
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
listBoxRowNew  = liftIO $ do
    result <- gtk_list_box_row_new
    checkUnexpectedReturnNULL "listBoxRowNew" result
    result' <- (newObject ListBoxRow) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ListBoxRow::changed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_changed" gtk_list_box_row_changed :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO ()

-- | Marks /@row@/ as changed, causing any state that depends on this
-- to be updated. This affects sorting, filtering and headers.
-- 
-- Note that calls to this method must be in sync with the data
-- used for the row functions. For instance, if the list is
-- mirroring some external data set, and *two* rows changed in the
-- external data set then when you call 'GI.Gtk.Objects.ListBoxRow.listBoxRowChanged'
-- on the first row the sort function must only read the new data
-- for the first of the two changed rows, otherwise the resorting
-- of the rows will be wrong.
-- 
-- This generally means that if you don’t fully control the data
-- model you have to duplicate the data that affects the listbox
-- row functions into the row widgets themselves. Another alternative
-- is to call 'GI.Gtk.Objects.ListBox.listBoxInvalidateSort' on any model change,
-- but that is more expensive.
-- 
-- /Since: 3.10/
listBoxRowChanged ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m ()
listBoxRowChanged row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    gtk_list_box_row_changed row'
    touchManagedPtr row
    return ()

#if defined(ENABLE_OVERLOADING)
data ListBoxRowChangedMethodInfo
instance (signature ~ (m ()), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowChangedMethodInfo a signature where
    overloadedMethod = listBoxRowChanged

#endif

-- method ListBoxRow::get_activatable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_get_activatable" gtk_list_box_row_get_activatable :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO CInt

-- | Gets the value of the t'GI.Gtk.Objects.ListBoxRow.ListBoxRow':@/activatable/@ property
-- for this row.
-- 
-- /Since: 3.14/
listBoxRowGetActivatable ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the row is activatable
listBoxRowGetActivatable row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    result <- gtk_list_box_row_get_activatable row'
    let result' = (/= 0) result
    touchManagedPtr row
    return result'

#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetActivatableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowGetActivatableMethodInfo a signature where
    overloadedMethod = listBoxRowGetActivatable

#endif

-- method ListBoxRow::get_header
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_get_header" gtk_list_box_row_get_header :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the current header of the /@row@/. This can be used
-- in a t'GI.Gtk.Callbacks.ListBoxUpdateHeaderFunc' to see if there is a header
-- set already, and if so to update the state of it.
-- 
-- /Since: 3.10/
listBoxRowGetHeader ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the current header, or 'P.Nothing' if none
listBoxRowGetHeader row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    result <- gtk_list_box_row_get_header row'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr row
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetHeaderMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowGetHeaderMethodInfo a signature where
    overloadedMethod = listBoxRowGetHeader

#endif

-- method ListBoxRow::get_index
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_get_index" gtk_list_box_row_get_index :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO Int32

-- | Gets the current index of the /@row@/ in its t'GI.Gtk.Objects.ListBox.ListBox' container.
-- 
-- /Since: 3.10/
listBoxRowGetIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m Int32
    -- ^ __Returns:__ the index of the /@row@/, or -1 if the /@row@/ is not in a listbox
listBoxRowGetIndex row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    result <- gtk_list_box_row_get_index row'
    touchManagedPtr row
    return result

#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetIndexMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowGetIndexMethodInfo a signature where
    overloadedMethod = listBoxRowGetIndex

#endif

-- method ListBoxRow::get_selectable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_get_selectable" gtk_list_box_row_get_selectable :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO CInt

-- | Gets the value of the t'GI.Gtk.Objects.ListBoxRow.ListBoxRow':@/selectable/@ property
-- for this row.
-- 
-- /Since: 3.14/
listBoxRowGetSelectable ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the row is selectable
listBoxRowGetSelectable row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    result <- gtk_list_box_row_get_selectable row'
    let result' = (/= 0) result
    touchManagedPtr row
    return result'

#if defined(ENABLE_OVERLOADING)
data ListBoxRowGetSelectableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowGetSelectableMethodInfo a signature where
    overloadedMethod = listBoxRowGetSelectable

#endif

-- method ListBoxRow::is_selected
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
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

foreign import ccall "gtk_list_box_row_is_selected" gtk_list_box_row_is_selected :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    IO CInt

-- | Returns whether the child is currently selected in its
-- t'GI.Gtk.Objects.ListBox.ListBox' container.
-- 
-- /Since: 3.14/
listBoxRowIsSelected ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if /@row@/ is selected
listBoxRowIsSelected row = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    result <- gtk_list_box_row_is_selected row'
    let result' = (/= 0) result
    touchManagedPtr row
    return result'

#if defined(ENABLE_OVERLOADING)
data ListBoxRowIsSelectedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowIsSelectedMethodInfo a signature where
    overloadedMethod = listBoxRowIsSelected

#endif

-- method ListBoxRow::set_activatable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "activatable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to mark the row as activatable"
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

foreign import ccall "gtk_list_box_row_set_activatable" gtk_list_box_row_set_activatable :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    CInt ->                                 -- activatable : TBasicType TBoolean
    IO ()

-- | Set the t'GI.Gtk.Objects.ListBoxRow.ListBoxRow':@/activatable/@ property for this row.
-- 
-- /Since: 3.14/
listBoxRowSetActivatable ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> Bool
    -- ^ /@activatable@/: 'P.True' to mark the row as activatable
    -> m ()
listBoxRowSetActivatable row activatable = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    let activatable' = (fromIntegral . fromEnum) activatable
    gtk_list_box_row_set_activatable row' activatable'
    touchManagedPtr row
    return ()

#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetActivatableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowSetActivatableMethodInfo a signature where
    overloadedMethod = listBoxRowSetActivatable

#endif

-- method ListBoxRow::set_header
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "header"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the header, or %NULL"
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

foreign import ccall "gtk_list_box_row_set_header" gtk_list_box_row_set_header :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    Ptr Gtk.Widget.Widget ->                -- header : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the current header of the /@row@/. This is only allowed to be called
-- from a t'GI.Gtk.Callbacks.ListBoxUpdateHeaderFunc'. It will replace any existing
-- header in the row, and be shown in front of the row in the listbox.
-- 
-- /Since: 3.10/
listBoxRowSetHeader ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> Maybe (b)
    -- ^ /@header@/: the header, or 'P.Nothing'
    -> m ()
listBoxRowSetHeader row header = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    maybeHeader <- case header of
        Nothing -> return nullPtr
        Just jHeader -> do
            jHeader' <- unsafeManagedPtrCastPtr jHeader
            return jHeader'
    gtk_list_box_row_set_header row' maybeHeader
    touchManagedPtr row
    whenJust header touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetHeaderMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsListBoxRow a, Gtk.Widget.IsWidget b) => O.MethodInfo ListBoxRowSetHeaderMethodInfo a signature where
    overloadedMethod = listBoxRowSetHeader

#endif

-- method ListBoxRow::set_selectable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "row"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ListBoxRow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkListBoxRow" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "selectable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to mark the row as selectable"
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

foreign import ccall "gtk_list_box_row_set_selectable" gtk_list_box_row_set_selectable :: 
    Ptr ListBoxRow ->                       -- row : TInterface (Name {namespace = "Gtk", name = "ListBoxRow"})
    CInt ->                                 -- selectable : TBasicType TBoolean
    IO ()

-- | Set the t'GI.Gtk.Objects.ListBoxRow.ListBoxRow':@/selectable/@ property for this row.
-- 
-- /Since: 3.14/
listBoxRowSetSelectable ::
    (B.CallStack.HasCallStack, MonadIO m, IsListBoxRow a) =>
    a
    -- ^ /@row@/: a t'GI.Gtk.Objects.ListBoxRow.ListBoxRow'
    -> Bool
    -- ^ /@selectable@/: 'P.True' to mark the row as selectable
    -> m ()
listBoxRowSetSelectable row selectable = liftIO $ do
    row' <- unsafeManagedPtrCastPtr row
    let selectable' = (fromIntegral . fromEnum) selectable
    gtk_list_box_row_set_selectable row' selectable'
    touchManagedPtr row
    return ()

#if defined(ENABLE_OVERLOADING)
data ListBoxRowSetSelectableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsListBoxRow a) => O.MethodInfo ListBoxRowSetSelectableMethodInfo a signature where
    overloadedMethod = listBoxRowSetSelectable

#endif

