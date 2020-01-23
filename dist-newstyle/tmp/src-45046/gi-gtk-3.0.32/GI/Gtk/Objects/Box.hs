{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The GtkBox widget arranges child widgets into a single row or column,
-- depending upon the value of its t'GI.Gtk.Interfaces.Orientable.Orientable':@/orientation/@ property. Within
-- the other dimension, all children are allocated the same size. Of course,
-- the t'GI.Gtk.Objects.Widget.Widget':@/halign/@ and t'GI.Gtk.Objects.Widget.Widget':@/valign/@ properties can be used on
-- the children to influence their allocation.
-- 
-- GtkBox uses a notion of packing. Packing refers
-- to adding widgets with reference to a particular position in a
-- t'GI.Gtk.Objects.Container.Container'. For a GtkBox, there are two reference positions: the
-- start and the end of the box.
-- For a vertical t'GI.Gtk.Objects.Box.Box', the start is defined as the top of the box and
-- the end is defined as the bottom. For a horizontal t'GI.Gtk.Objects.Box.Box' the start
-- is defined as the left side and the end is defined as the right side.
-- 
-- Use repeated calls to 'GI.Gtk.Objects.Box.boxPackStart' to pack widgets into a
-- GtkBox from start to end. Use 'GI.Gtk.Objects.Box.boxPackEnd' to add widgets from
-- end to start. You may intersperse these calls and add widgets from
-- both ends of the same GtkBox.
-- 
-- Because GtkBox is a t'GI.Gtk.Objects.Container.Container', you may also use 'GI.Gtk.Objects.Container.containerAdd'
-- to insert widgets into the box, and they will be packed with the default
-- values for expand and fill child properties. Use 'GI.Gtk.Objects.Container.containerRemove'
-- to remove widgets from the GtkBox.
-- 
-- Use 'GI.Gtk.Objects.Box.boxSetHomogeneous' to specify whether or not all children
-- of the GtkBox are forced to get the same amount of space.
-- 
-- Use 'GI.Gtk.Objects.Box.boxSetSpacing' to determine how much space will be
-- minimally placed between all children in the GtkBox. Note that
-- spacing is added between the children, while
-- padding added by 'GI.Gtk.Objects.Box.boxPackStart' or 'GI.Gtk.Objects.Box.boxPackEnd' is added
-- on either side of the widget it belongs to.
-- 
-- Use 'GI.Gtk.Objects.Box.boxReorderChild' to move a GtkBox child to a different
-- place in the box.
-- 
-- Use 'GI.Gtk.Objects.Box.boxSetChildPacking' to reset the expand,
-- fill and padding child properties.
-- Use 'GI.Gtk.Objects.Box.boxQueryChildPacking' to query these fields.
-- 
-- = CSS nodes
-- 
-- GtkBox uses a single CSS node with name box.
-- 
-- In horizontal orientation, the nodes of the children are always arranged
-- from left to right. So :first-child will always select the leftmost child,
-- regardless of text direction.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Box
    ( 

-- * Exported types
    Box(..)                                 ,
    IsBox                                   ,
    toBox                                   ,
    noBox                                   ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveBoxMethod                        ,
#endif


-- ** getBaselinePosition #method:getBaselinePosition#

#if defined(ENABLE_OVERLOADING)
    BoxGetBaselinePositionMethodInfo        ,
#endif
    boxGetBaselinePosition                  ,


-- ** getCenterWidget #method:getCenterWidget#

#if defined(ENABLE_OVERLOADING)
    BoxGetCenterWidgetMethodInfo            ,
#endif
    boxGetCenterWidget                      ,


-- ** getHomogeneous #method:getHomogeneous#

#if defined(ENABLE_OVERLOADING)
    BoxGetHomogeneousMethodInfo             ,
#endif
    boxGetHomogeneous                       ,


-- ** getSpacing #method:getSpacing#

#if defined(ENABLE_OVERLOADING)
    BoxGetSpacingMethodInfo                 ,
#endif
    boxGetSpacing                           ,


-- ** new #method:new#

    boxNew                                  ,


-- ** packEnd #method:packEnd#

#if defined(ENABLE_OVERLOADING)
    BoxPackEndMethodInfo                    ,
#endif
    boxPackEnd                              ,


-- ** packStart #method:packStart#

#if defined(ENABLE_OVERLOADING)
    BoxPackStartMethodInfo                  ,
#endif
    boxPackStart                            ,


-- ** queryChildPacking #method:queryChildPacking#

#if defined(ENABLE_OVERLOADING)
    BoxQueryChildPackingMethodInfo          ,
#endif
    boxQueryChildPacking                    ,


-- ** reorderChild #method:reorderChild#

#if defined(ENABLE_OVERLOADING)
    BoxReorderChildMethodInfo               ,
#endif
    boxReorderChild                         ,


-- ** setBaselinePosition #method:setBaselinePosition#

#if defined(ENABLE_OVERLOADING)
    BoxSetBaselinePositionMethodInfo        ,
#endif
    boxSetBaselinePosition                  ,


-- ** setCenterWidget #method:setCenterWidget#

#if defined(ENABLE_OVERLOADING)
    BoxSetCenterWidgetMethodInfo            ,
#endif
    boxSetCenterWidget                      ,


-- ** setChildPacking #method:setChildPacking#

#if defined(ENABLE_OVERLOADING)
    BoxSetChildPackingMethodInfo            ,
#endif
    boxSetChildPacking                      ,


-- ** setHomogeneous #method:setHomogeneous#

#if defined(ENABLE_OVERLOADING)
    BoxSetHomogeneousMethodInfo             ,
#endif
    boxSetHomogeneous                       ,


-- ** setSpacing #method:setSpacing#

#if defined(ENABLE_OVERLOADING)
    BoxSetSpacingMethodInfo                 ,
#endif
    boxSetSpacing                           ,




 -- * Properties
-- ** baselinePosition #attr:baselinePosition#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    BoxBaselinePositionPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    boxBaselinePosition                     ,
#endif
    constructBoxBaselinePosition            ,
    getBoxBaselinePosition                  ,
    setBoxBaselinePosition                  ,


-- ** homogeneous #attr:homogeneous#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    BoxHomogeneousPropertyInfo              ,
#endif
#if defined(ENABLE_OVERLOADING)
    boxHomogeneous                          ,
#endif
    constructBoxHomogeneous                 ,
    getBoxHomogeneous                       ,
    setBoxHomogeneous                       ,


-- ** spacing #attr:spacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    BoxSpacingPropertyInfo                  ,
#endif
#if defined(ENABLE_OVERLOADING)
    boxSpacing                              ,
#endif
    constructBoxSpacing                     ,
    getBoxSpacing                           ,
    setBoxSpacing                           ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Box = Box (ManagedPtr Box)
    deriving (Eq)
foreign import ccall "gtk_box_get_type"
    c_gtk_box_get_type :: IO GType

instance GObject Box where
    gobjectType = c_gtk_box_get_type
    

-- | Convert 'Box' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Box where
    toGValue o = do
        gtype <- c_gtk_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Box)
        B.ManagedPtr.newObject Box ptr
        
    

-- | Type class for types which can be safely cast to `Box`, for instance with `toBox`.
class (GObject o, O.IsDescendantOf Box o) => IsBox o
instance (GObject o, O.IsDescendantOf Box o) => IsBox o

instance O.HasParentTypes Box
type instance O.ParentTypes Box = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Box`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBox :: (MonadIO m, IsBox o) => o -> m Box
toBox = liftIO . unsafeCastTo Box

-- | A convenience alias for `Nothing` :: `Maybe` `Box`.
noBox :: Maybe Box
noBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveBoxMethod "packEnd" o = BoxPackEndMethodInfo
    ResolveBoxMethod "packStart" o = BoxPackStartMethodInfo
    ResolveBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveBoxMethod "queryChildPacking" o = BoxQueryChildPackingMethodInfo
    ResolveBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveBoxMethod "reorderChild" o = BoxReorderChildMethodInfo
    ResolveBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveBoxMethod "getBaselinePosition" o = BoxGetBaselinePositionMethodInfo
    ResolveBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveBoxMethod "getCenterWidget" o = BoxGetCenterWidgetMethodInfo
    ResolveBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveBoxMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveBoxMethod "getHomogeneous" o = BoxGetHomogeneousMethodInfo
    ResolveBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveBoxMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveBoxMethod "getSpacing" o = BoxGetSpacingMethodInfo
    ResolveBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveBoxMethod "setBaselinePosition" o = BoxSetBaselinePositionMethodInfo
    ResolveBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveBoxMethod "setCenterWidget" o = BoxSetCenterWidgetMethodInfo
    ResolveBoxMethod "setChildPacking" o = BoxSetChildPackingMethodInfo
    ResolveBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveBoxMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveBoxMethod "setHomogeneous" o = BoxSetHomogeneousMethodInfo
    ResolveBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveBoxMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveBoxMethod "setSpacing" o = BoxSetSpacingMethodInfo
    ResolveBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBoxMethod t Box, O.MethodInfo info Box p) => OL.IsLabel t (Box -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "baseline-position"
   -- Type: TInterface (Name {namespace = "Gtk", name = "BaselinePosition"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@baseline-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' box #baselinePosition
-- @
getBoxBaselinePosition :: (MonadIO m, IsBox o) => o -> m Gtk.Enums.BaselinePosition
getBoxBaselinePosition obj = liftIO $ B.Properties.getObjectPropertyEnum obj "baseline-position"

-- | Set the value of the “@baseline-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' box [ #baselinePosition 'Data.GI.Base.Attributes.:=' value ]
-- @
setBoxBaselinePosition :: (MonadIO m, IsBox o) => o -> Gtk.Enums.BaselinePosition -> m ()
setBoxBaselinePosition obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "baseline-position" val

-- | Construct a `GValueConstruct` with valid value for the “@baseline-position@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructBoxBaselinePosition :: (IsBox o) => Gtk.Enums.BaselinePosition -> IO (GValueConstruct o)
constructBoxBaselinePosition val = B.Properties.constructObjectPropertyEnum "baseline-position" val

#if defined(ENABLE_OVERLOADING)
data BoxBaselinePositionPropertyInfo
instance AttrInfo BoxBaselinePositionPropertyInfo where
    type AttrAllowedOps BoxBaselinePositionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint BoxBaselinePositionPropertyInfo = IsBox
    type AttrSetTypeConstraint BoxBaselinePositionPropertyInfo = (~) Gtk.Enums.BaselinePosition
    type AttrTransferTypeConstraint BoxBaselinePositionPropertyInfo = (~) Gtk.Enums.BaselinePosition
    type AttrTransferType BoxBaselinePositionPropertyInfo = Gtk.Enums.BaselinePosition
    type AttrGetType BoxBaselinePositionPropertyInfo = Gtk.Enums.BaselinePosition
    type AttrLabel BoxBaselinePositionPropertyInfo = "baseline-position"
    type AttrOrigin BoxBaselinePositionPropertyInfo = Box
    attrGet = getBoxBaselinePosition
    attrSet = setBoxBaselinePosition
    attrTransfer _ v = do
        return v
    attrConstruct = constructBoxBaselinePosition
    attrClear = undefined
#endif

-- VVV Prop "homogeneous"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' box #homogeneous
-- @
getBoxHomogeneous :: (MonadIO m, IsBox o) => o -> m Bool
getBoxHomogeneous obj = liftIO $ B.Properties.getObjectPropertyBool obj "homogeneous"

-- | Set the value of the “@homogeneous@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' box [ #homogeneous 'Data.GI.Base.Attributes.:=' value ]
-- @
setBoxHomogeneous :: (MonadIO m, IsBox o) => o -> Bool -> m ()
setBoxHomogeneous obj val = liftIO $ B.Properties.setObjectPropertyBool obj "homogeneous" val

-- | Construct a `GValueConstruct` with valid value for the “@homogeneous@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructBoxHomogeneous :: (IsBox o) => Bool -> IO (GValueConstruct o)
constructBoxHomogeneous val = B.Properties.constructObjectPropertyBool "homogeneous" val

#if defined(ENABLE_OVERLOADING)
data BoxHomogeneousPropertyInfo
instance AttrInfo BoxHomogeneousPropertyInfo where
    type AttrAllowedOps BoxHomogeneousPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint BoxHomogeneousPropertyInfo = IsBox
    type AttrSetTypeConstraint BoxHomogeneousPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint BoxHomogeneousPropertyInfo = (~) Bool
    type AttrTransferType BoxHomogeneousPropertyInfo = Bool
    type AttrGetType BoxHomogeneousPropertyInfo = Bool
    type AttrLabel BoxHomogeneousPropertyInfo = "homogeneous"
    type AttrOrigin BoxHomogeneousPropertyInfo = Box
    attrGet = getBoxHomogeneous
    attrSet = setBoxHomogeneous
    attrTransfer _ v = do
        return v
    attrConstruct = constructBoxHomogeneous
    attrClear = undefined
#endif

-- VVV Prop "spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' box #spacing
-- @
getBoxSpacing :: (MonadIO m, IsBox o) => o -> m Int32
getBoxSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "spacing"

-- | Set the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' box [ #spacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setBoxSpacing :: (MonadIO m, IsBox o) => o -> Int32 -> m ()
setBoxSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructBoxSpacing :: (IsBox o) => Int32 -> IO (GValueConstruct o)
constructBoxSpacing val = B.Properties.constructObjectPropertyInt32 "spacing" val

#if defined(ENABLE_OVERLOADING)
data BoxSpacingPropertyInfo
instance AttrInfo BoxSpacingPropertyInfo where
    type AttrAllowedOps BoxSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint BoxSpacingPropertyInfo = IsBox
    type AttrSetTypeConstraint BoxSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint BoxSpacingPropertyInfo = (~) Int32
    type AttrTransferType BoxSpacingPropertyInfo = Int32
    type AttrGetType BoxSpacingPropertyInfo = Int32
    type AttrLabel BoxSpacingPropertyInfo = "spacing"
    type AttrOrigin BoxSpacingPropertyInfo = Box
    attrGet = getBoxSpacing
    attrSet = setBoxSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructBoxSpacing
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Box
type instance O.AttributeList Box = BoxAttributeList
type BoxAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
boxBaselinePosition :: AttrLabelProxy "baselinePosition"
boxBaselinePosition = AttrLabelProxy

boxHomogeneous :: AttrLabelProxy "homogeneous"
boxHomogeneous = AttrLabelProxy

boxSpacing :: AttrLabelProxy "spacing"
boxSpacing = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Box = BoxSignalList
type BoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Box::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the box\8217s orientation."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the number of pixels to place by default between children."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Box" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_box_new" gtk_box_new :: 
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    Int32 ->                                -- spacing : TBasicType TInt
    IO (Ptr Box)

-- | Creates a new t'GI.Gtk.Objects.Box.Box'.
-- 
-- /Since: 3.0/
boxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the box’s orientation.
    -> Int32
    -- ^ /@spacing@/: the number of pixels to place by default between children.
    -> m Box
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Box.Box'.
boxNew orientation spacing = liftIO $ do
    let orientation' = (fromIntegral . fromEnum) orientation
    result <- gtk_box_new orientation' spacing
    checkUnexpectedReturnNULL "boxNew" result
    result' <- (newObject Box) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Box::get_baseline_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "BaselinePosition" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_box_get_baseline_position" gtk_box_get_baseline_position :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    IO CUInt

-- | Gets the value set by 'GI.Gtk.Objects.Box.boxSetBaselinePosition'.
-- 
-- /Since: 3.10/
boxGetBaselinePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> m Gtk.Enums.BaselinePosition
    -- ^ __Returns:__ the baseline position
boxGetBaselinePosition box = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    result <- gtk_box_get_baseline_position box'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr box
    return result'

#if defined(ENABLE_OVERLOADING)
data BoxGetBaselinePositionMethodInfo
instance (signature ~ (m Gtk.Enums.BaselinePosition), MonadIO m, IsBox a) => O.MethodInfo BoxGetBaselinePositionMethodInfo a signature where
    overloadedMethod = boxGetBaselinePosition

#endif

-- method Box::get_center_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_box_get_center_widget" gtk_box_get_center_widget :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the center widget of the box.
-- 
-- /Since: 3.12/
boxGetCenterWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the center widget
    --   or 'P.Nothing' in case no center widget is set.
boxGetCenterWidget box = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    result <- gtk_box_get_center_widget box'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr box
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data BoxGetCenterWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsBox a) => O.MethodInfo BoxGetCenterWidgetMethodInfo a signature where
    overloadedMethod = boxGetCenterWidget

#endif

-- method Box::get_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_box_get_homogeneous" gtk_box_get_homogeneous :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    IO CInt

-- | Returns whether the box is homogeneous (all children are the
-- same size). See 'GI.Gtk.Objects.Box.boxSetHomogeneous'.
boxGetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the box is homogeneous.
boxGetHomogeneous box = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    result <- gtk_box_get_homogeneous box'
    let result' = (/= 0) result
    touchManagedPtr box
    return result'

#if defined(ENABLE_OVERLOADING)
data BoxGetHomogeneousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsBox a) => O.MethodInfo BoxGetHomogeneousMethodInfo a signature where
    overloadedMethod = boxGetHomogeneous

#endif

-- method Box::get_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_box_get_spacing" gtk_box_get_spacing :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    IO Int32

-- | Gets the value set by 'GI.Gtk.Objects.Box.boxSetSpacing'.
boxGetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> m Int32
    -- ^ __Returns:__ spacing between children
boxGetSpacing box = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    result <- gtk_box_get_spacing box'
    touchManagedPtr box
    return result

#if defined(ENABLE_OVERLOADING)
data BoxGetSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsBox a) => O.MethodInfo BoxGetSpacingMethodInfo a signature where
    overloadedMethod = boxGetSpacing

#endif

-- method Box::pack_end
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget to be added to @box"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText =
--                     Just
--                       "%TRUE if the new child is to be given extra space allocated\n  to @box. The extra space will be divided evenly between all children\n  of @box that use this option"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fill"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if space given to @child by the @expand option is\n  actually allocated to @child, rather than just padding it.  This\n  parameter has no effect if @expand is set to %FALSE.  A child is\n  always allocated the full height of a horizontal #GtkBox and the full width\n  of a vertical #GtkBox.  This option affects the other dimension"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "extra space in pixels to put between this child and its\n  neighbors, over and above the global amount specified by\n  #GtkBox:spacing property.  If @child is a widget at one of the\n  reference ends of @box, then @padding pixels are also put between\n  @child and the reference edge of @box"
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

foreign import ccall "gtk_box_pack_end" gtk_box_pack_end :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- expand : TBasicType TBoolean
    CInt ->                                 -- fill : TBasicType TBoolean
    Word32 ->                               -- padding : TBasicType TUInt
    IO ()

-- | Adds /@child@/ to /@box@/, packed with reference to the end of /@box@/.
-- The /@child@/ is packed after (away from end of) any other child
-- packed with reference to the end of /@box@/.
boxPackEnd ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@box@/
    -> Bool
    -- ^ /@expand@/: 'P.True' if the new child is to be given extra space allocated
    --   to /@box@/. The extra space will be divided evenly between all children
    --   of /@box@/ that use this option
    -> Bool
    -- ^ /@fill@/: 'P.True' if space given to /@child@/ by the /@expand@/ option is
    --   actually allocated to /@child@/, rather than just padding it.  This
    --   parameter has no effect if /@expand@/ is set to 'P.False'.  A child is
    --   always allocated the full height of a horizontal t'GI.Gtk.Objects.Box.Box' and the full width
    --   of a vertical t'GI.Gtk.Objects.Box.Box'.  This option affects the other dimension
    -> Word32
    -- ^ /@padding@/: extra space in pixels to put between this child and its
    --   neighbors, over and above the global amount specified by
    --   t'GI.Gtk.Objects.Box.Box':@/spacing/@ property.  If /@child@/ is a widget at one of the
    --   reference ends of /@box@/, then /@padding@/ pixels are also put between
    --   /@child@/ and the reference edge of /@box@/
    -> m ()
boxPackEnd box child expand fill padding = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    child' <- unsafeManagedPtrCastPtr child
    let expand' = (fromIntegral . fromEnum) expand
    let fill' = (fromIntegral . fromEnum) fill
    gtk_box_pack_end box' child' expand' fill' padding
    touchManagedPtr box
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxPackEndMethodInfo
instance (signature ~ (b -> Bool -> Bool -> Word32 -> m ()), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxPackEndMethodInfo a signature where
    overloadedMethod = boxPackEnd

#endif

-- method Box::pack_start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget to be added to @box"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText =
--                     Just
--                       "%TRUE if the new child is to be given extra space allocated\n    to @box. The extra space will be divided evenly between all children\n    that use this option"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fill"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if space given to @child by the @expand option is\n    actually allocated to @child, rather than just padding it.  This\n    parameter has no effect if @expand is set to %FALSE.  A child is\n    always allocated the full height of a horizontal #GtkBox and the full width\n    of a vertical #GtkBox. This option affects the other dimension"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "extra space in pixels to put between this child and its\n  neighbors, over and above the global amount specified by\n  #GtkBox:spacing property.  If @child is a widget at one of the\n  reference ends of @box, then @padding pixels are also put between\n  @child and the reference edge of @box"
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

foreign import ccall "gtk_box_pack_start" gtk_box_pack_start :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- expand : TBasicType TBoolean
    CInt ->                                 -- fill : TBasicType TBoolean
    Word32 ->                               -- padding : TBasicType TUInt
    IO ()

-- | Adds /@child@/ to /@box@/, packed with reference to the start of /@box@/.
-- The /@child@/ is packed after any other child packed with reference
-- to the start of /@box@/.
boxPackStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@box@/
    -> Bool
    -- ^ /@expand@/: 'P.True' if the new child is to be given extra space allocated
    --     to /@box@/. The extra space will be divided evenly between all children
    --     that use this option
    -> Bool
    -- ^ /@fill@/: 'P.True' if space given to /@child@/ by the /@expand@/ option is
    --     actually allocated to /@child@/, rather than just padding it.  This
    --     parameter has no effect if /@expand@/ is set to 'P.False'.  A child is
    --     always allocated the full height of a horizontal t'GI.Gtk.Objects.Box.Box' and the full width
    --     of a vertical t'GI.Gtk.Objects.Box.Box'. This option affects the other dimension
    -> Word32
    -- ^ /@padding@/: extra space in pixels to put between this child and its
    --   neighbors, over and above the global amount specified by
    --   t'GI.Gtk.Objects.Box.Box':@/spacing/@ property.  If /@child@/ is a widget at one of the
    --   reference ends of /@box@/, then /@padding@/ pixels are also put between
    --   /@child@/ and the reference edge of /@box@/
    -> m ()
boxPackStart box child expand fill padding = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    child' <- unsafeManagedPtrCastPtr child
    let expand' = (fromIntegral . fromEnum) expand
    let fill' = (fromIntegral . fromEnum) fill
    gtk_box_pack_start box' child' expand' fill' padding
    touchManagedPtr box
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxPackStartMethodInfo
instance (signature ~ (b -> Bool -> Bool -> Word32 -> m ()), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxPackStartMethodInfo a signature where
    overloadedMethod = boxPackStart

#endif

-- method Box::query_child_packing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget of the child to query"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "expand"
--           , argType = TBasicType TBoolean
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "pointer to return location for expand child\n    property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "fill"
--           , argType = TBasicType TBoolean
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "pointer to return location for fill child\n    property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "padding"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "pointer to return location for padding\n    child property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "pack_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackType" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "pointer to return location for pack-type\n    child property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_box_query_child_packing" gtk_box_query_child_packing :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr CInt ->                             -- expand : TBasicType TBoolean
    Ptr CInt ->                             -- fill : TBasicType TBoolean
    Ptr Word32 ->                           -- padding : TBasicType TUInt
    Ptr CUInt ->                            -- pack_type : TInterface (Name {namespace = "Gtk", name = "PackType"})
    IO ()

-- | Obtains information about how /@child@/ is packed into /@box@/.
boxQueryChildPacking ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' of the child to query
    -> m ((Bool, Bool, Word32, Gtk.Enums.PackType))
boxQueryChildPacking box child = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    child' <- unsafeManagedPtrCastPtr child
    expand <- allocMem :: IO (Ptr CInt)
    fill <- allocMem :: IO (Ptr CInt)
    padding <- allocMem :: IO (Ptr Word32)
    packType <- allocMem :: IO (Ptr CUInt)
    gtk_box_query_child_packing box' child' expand fill padding packType
    expand' <- peek expand
    let expand'' = (/= 0) expand'
    fill' <- peek fill
    let fill'' = (/= 0) fill'
    padding' <- peek padding
    packType' <- peek packType
    let packType'' = (toEnum . fromIntegral) packType'
    touchManagedPtr box
    touchManagedPtr child
    freeMem expand
    freeMem fill
    freeMem padding
    freeMem packType
    return (expand'', fill'', padding', packType'')

#if defined(ENABLE_OVERLOADING)
data BoxQueryChildPackingMethodInfo
instance (signature ~ (b -> m ((Bool, Bool, Word32, Gtk.Enums.PackType))), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxQueryChildPackingMethodInfo a signature where
    overloadedMethod = boxQueryChildPacking

#endif

-- method Box::reorder_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget to move"
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
--                       "the new position for @child in the list of children\n  of @box, starting from 0. If negative, indicates the end of\n  the list"
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

foreign import ccall "gtk_box_reorder_child" gtk_box_reorder_child :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Moves /@child@/ to a new /@position@/ in the list of /@box@/ children.
-- The list contains widgets packed @/GTK_PACK_START/@
-- as well as widgets packed @/GTK_PACK_END/@, in the order that these
-- widgets were added to /@box@/.
-- 
-- A widget’s position in the /@box@/ children list determines where
-- the widget is packed into /@box@/.  A child widget at some position
-- in the list will be packed just after all other widgets of the
-- same packing type that appear earlier in the list.
boxReorderChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to move
    -> Int32
    -- ^ /@position@/: the new position for /@child@/ in the list of children
    --   of /@box@/, starting from 0. If negative, indicates the end of
    --   the list
    -> m ()
boxReorderChild box child position = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    child' <- unsafeManagedPtrCastPtr child
    gtk_box_reorder_child box' child' position
    touchManagedPtr box
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxReorderChildMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxReorderChildMethodInfo a signature where
    overloadedMethod = boxReorderChild

#endif

-- method Box::set_baseline_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "BaselinePosition" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBaselinePosition"
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

foreign import ccall "gtk_box_set_baseline_position" gtk_box_set_baseline_position :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    CUInt ->                                -- position : TInterface (Name {namespace = "Gtk", name = "BaselinePosition"})
    IO ()

-- | Sets the baseline position of a box. This affects
-- only horizontal boxes with at least one baseline aligned
-- child. If there is more vertical space available than requested,
-- and the baseline is not allocated by the parent then
-- /@position@/ is used to allocate the baseline wrt the
-- extra space available.
-- 
-- /Since: 3.10/
boxSetBaselinePosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> Gtk.Enums.BaselinePosition
    -- ^ /@position@/: a t'GI.Gtk.Enums.BaselinePosition'
    -> m ()
boxSetBaselinePosition box position = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    let position' = (fromIntegral . fromEnum) position
    gtk_box_set_baseline_position box' position'
    touchManagedPtr box
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxSetBaselinePositionMethodInfo
instance (signature ~ (Gtk.Enums.BaselinePosition -> m ()), MonadIO m, IsBox a) => O.MethodInfo BoxSetBaselinePositionMethodInfo a signature where
    overloadedMethod = boxSetBaselinePosition

#endif

-- method Box::set_center_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the widget to center"
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

foreign import ccall "gtk_box_set_center_widget" gtk_box_set_center_widget :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets a center widget; that is a child widget that will be
-- centered with respect to the full width of the box, even
-- if the children at either side take up different amounts
-- of space.
-- 
-- /Since: 3.12/
boxSetCenterWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> Maybe (b)
    -- ^ /@widget@/: the widget to center
    -> m ()
boxSetCenterWidget box widget = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    maybeWidget <- case widget of
        Nothing -> return nullPtr
        Just jWidget -> do
            jWidget' <- unsafeManagedPtrCastPtr jWidget
            return jWidget'
    gtk_box_set_center_widget box' maybeWidget
    touchManagedPtr box
    whenJust widget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxSetCenterWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxSetCenterWidgetMethodInfo a signature where
    overloadedMethod = boxSetCenterWidget

#endif

-- method Box::set_child_packing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the #GtkWidget of the child to set"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "the new value of the expand child property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fill"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value of the fill child property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value of the padding child property"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pack_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value of the pack-type child property"
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

foreign import ccall "gtk_box_set_child_packing" gtk_box_set_child_packing :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- expand : TBasicType TBoolean
    CInt ->                                 -- fill : TBasicType TBoolean
    Word32 ->                               -- padding : TBasicType TUInt
    CUInt ->                                -- pack_type : TInterface (Name {namespace = "Gtk", name = "PackType"})
    IO ()

-- | Sets the way /@child@/ is packed into /@box@/.
boxSetChildPacking ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' of the child to set
    -> Bool
    -- ^ /@expand@/: the new value of the expand child property
    -> Bool
    -- ^ /@fill@/: the new value of the fill child property
    -> Word32
    -- ^ /@padding@/: the new value of the padding child property
    -> Gtk.Enums.PackType
    -- ^ /@packType@/: the new value of the pack-type child property
    -> m ()
boxSetChildPacking box child expand fill padding packType = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    child' <- unsafeManagedPtrCastPtr child
    let expand' = (fromIntegral . fromEnum) expand
    let fill' = (fromIntegral . fromEnum) fill
    let packType' = (fromIntegral . fromEnum) packType
    gtk_box_set_child_packing box' child' expand' fill' padding packType'
    touchManagedPtr box
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxSetChildPackingMethodInfo
instance (signature ~ (b -> Bool -> Bool -> Word32 -> Gtk.Enums.PackType -> m ()), MonadIO m, IsBox a, Gtk.Widget.IsWidget b) => O.MethodInfo BoxSetChildPackingMethodInfo a signature where
    overloadedMethod = boxSetChildPacking

#endif

-- method Box::set_homogeneous
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
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
--                       "a boolean value, %TRUE to create equal allotments,\n  %FALSE for variable allotments"
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

foreign import ccall "gtk_box_set_homogeneous" gtk_box_set_homogeneous :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    CInt ->                                 -- homogeneous : TBasicType TBoolean
    IO ()

-- | Sets the t'GI.Gtk.Objects.Box.Box':@/homogeneous/@ property of /@box@/, controlling
-- whether or not all children of /@box@/ are given equal space
-- in the box.
boxSetHomogeneous ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> Bool
    -- ^ /@homogeneous@/: a boolean value, 'P.True' to create equal allotments,
    --   'P.False' for variable allotments
    -> m ()
boxSetHomogeneous box homogeneous = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    let homogeneous' = (fromIntegral . fromEnum) homogeneous
    gtk_box_set_homogeneous box' homogeneous'
    touchManagedPtr box
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxSetHomogeneousMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsBox a) => O.MethodInfo BoxSetHomogeneousMethodInfo a signature where
    overloadedMethod = boxSetHomogeneous

#endif

-- method Box::set_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "box"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Box" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of pixels to put between children"
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

foreign import ccall "gtk_box_set_spacing" gtk_box_set_spacing :: 
    Ptr Box ->                              -- box : TInterface (Name {namespace = "Gtk", name = "Box"})
    Int32 ->                                -- spacing : TBasicType TInt
    IO ()

-- | Sets the t'GI.Gtk.Objects.Box.Box':@/spacing/@ property of /@box@/, which is the
-- number of pixels to place between children of /@box@/.
boxSetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsBox a) =>
    a
    -- ^ /@box@/: a t'GI.Gtk.Objects.Box.Box'
    -> Int32
    -- ^ /@spacing@/: the number of pixels to put between children
    -> m ()
boxSetSpacing box spacing = liftIO $ do
    box' <- unsafeManagedPtrCastPtr box
    gtk_box_set_spacing box' spacing
    touchManagedPtr box
    return ()

#if defined(ENABLE_OVERLOADING)
data BoxSetSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsBox a) => O.MethodInfo BoxSetSpacingMethodInfo a signature where
    overloadedMethod = boxSetSpacing

#endif

