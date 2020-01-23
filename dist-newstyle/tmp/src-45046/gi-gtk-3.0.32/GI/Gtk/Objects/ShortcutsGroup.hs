{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkShortcutsGroup represents a group of related keyboard shortcuts
-- or gestures. The group has a title. It may optionally be associated with
-- a view of the application, which can be used to show only relevant shortcuts
-- depending on the application context.
-- 
-- This widget is only meant to be used with t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ShortcutsGroup
    ( 

-- * Exported types
    ShortcutsGroup(..)                      ,
    IsShortcutsGroup                        ,
    toShortcutsGroup                        ,
    noShortcutsGroup                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveShortcutsGroupMethod             ,
#endif




 -- * Properties
-- ** accelSizeGroup #attr:accelSizeGroup#
-- | The size group for the accelerator portion of shortcuts in this group.
-- 
-- This is used internally by GTK+, and must not be modified by applications.

#if defined(ENABLE_OVERLOADING)
    ShortcutsGroupAccelSizeGroupPropertyInfo,
#endif
    clearShortcutsGroupAccelSizeGroup       ,
    constructShortcutsGroupAccelSizeGroup   ,
    setShortcutsGroupAccelSizeGroup         ,
#if defined(ENABLE_OVERLOADING)
    shortcutsGroupAccelSizeGroup            ,
#endif


-- ** height #attr:height#
-- | A rough measure for the number of lines in this group.
-- 
-- This is used internally by GTK+, and is not useful for applications.

#if defined(ENABLE_OVERLOADING)
    ShortcutsGroupHeightPropertyInfo        ,
#endif
    getShortcutsGroupHeight                 ,
#if defined(ENABLE_OVERLOADING)
    shortcutsGroupHeight                    ,
#endif


-- ** title #attr:title#
-- | The title for this group of shortcuts.

#if defined(ENABLE_OVERLOADING)
    ShortcutsGroupTitlePropertyInfo         ,
#endif
    clearShortcutsGroupTitle                ,
    constructShortcutsGroupTitle            ,
    getShortcutsGroupTitle                  ,
    setShortcutsGroupTitle                  ,
#if defined(ENABLE_OVERLOADING)
    shortcutsGroupTitle                     ,
#endif


-- ** titleSizeGroup #attr:titleSizeGroup#
-- | The size group for the textual portion of shortcuts in this group.
-- 
-- This is used internally by GTK+, and must not be modified by applications.

#if defined(ENABLE_OVERLOADING)
    ShortcutsGroupTitleSizeGroupPropertyInfo,
#endif
    clearShortcutsGroupTitleSizeGroup       ,
    constructShortcutsGroupTitleSizeGroup   ,
    setShortcutsGroupTitleSizeGroup         ,
#if defined(ENABLE_OVERLOADING)
    shortcutsGroupTitleSizeGroup            ,
#endif


-- ** view #attr:view#
-- | An optional view that the shortcuts in this group are relevant for.
-- The group will be hidden if the t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow':@/view-name/@ property
-- does not match the view of this group.
-- 
-- Set this to 'P.Nothing' to make the group always visible.

#if defined(ENABLE_OVERLOADING)
    ShortcutsGroupViewPropertyInfo          ,
#endif
    clearShortcutsGroupView                 ,
    constructShortcutsGroupView             ,
    getShortcutsGroupView                   ,
    setShortcutsGroupView                   ,
#if defined(ENABLE_OVERLOADING)
    shortcutsGroupView                      ,
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
import {-# SOURCE #-} qualified GI.Gtk.Objects.SizeGroup as Gtk.SizeGroup
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ShortcutsGroup = ShortcutsGroup (ManagedPtr ShortcutsGroup)
    deriving (Eq)
foreign import ccall "gtk_shortcuts_group_get_type"
    c_gtk_shortcuts_group_get_type :: IO GType

instance GObject ShortcutsGroup where
    gobjectType = c_gtk_shortcuts_group_get_type
    

-- | Convert 'ShortcutsGroup' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ShortcutsGroup where
    toGValue o = do
        gtype <- c_gtk_shortcuts_group_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ShortcutsGroup)
        B.ManagedPtr.newObject ShortcutsGroup ptr
        
    

-- | Type class for types which can be safely cast to `ShortcutsGroup`, for instance with `toShortcutsGroup`.
class (GObject o, O.IsDescendantOf ShortcutsGroup o) => IsShortcutsGroup o
instance (GObject o, O.IsDescendantOf ShortcutsGroup o) => IsShortcutsGroup o

instance O.HasParentTypes ShortcutsGroup
type instance O.ParentTypes ShortcutsGroup = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `ShortcutsGroup`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toShortcutsGroup :: (MonadIO m, IsShortcutsGroup o) => o -> m ShortcutsGroup
toShortcutsGroup = liftIO . unsafeCastTo ShortcutsGroup

-- | A convenience alias for `Nothing` :: `Maybe` `ShortcutsGroup`.
noShortcutsGroup :: Maybe ShortcutsGroup
noShortcutsGroup = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveShortcutsGroupMethod (t :: Symbol) (o :: *) :: * where
    ResolveShortcutsGroupMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveShortcutsGroupMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveShortcutsGroupMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveShortcutsGroupMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveShortcutsGroupMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveShortcutsGroupMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveShortcutsGroupMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveShortcutsGroupMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveShortcutsGroupMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveShortcutsGroupMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveShortcutsGroupMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveShortcutsGroupMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveShortcutsGroupMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveShortcutsGroupMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveShortcutsGroupMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveShortcutsGroupMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveShortcutsGroupMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveShortcutsGroupMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveShortcutsGroupMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveShortcutsGroupMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveShortcutsGroupMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveShortcutsGroupMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveShortcutsGroupMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveShortcutsGroupMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveShortcutsGroupMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveShortcutsGroupMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveShortcutsGroupMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveShortcutsGroupMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveShortcutsGroupMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveShortcutsGroupMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveShortcutsGroupMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveShortcutsGroupMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveShortcutsGroupMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveShortcutsGroupMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveShortcutsGroupMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveShortcutsGroupMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveShortcutsGroupMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveShortcutsGroupMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveShortcutsGroupMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveShortcutsGroupMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveShortcutsGroupMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveShortcutsGroupMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveShortcutsGroupMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveShortcutsGroupMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveShortcutsGroupMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveShortcutsGroupMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveShortcutsGroupMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveShortcutsGroupMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveShortcutsGroupMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveShortcutsGroupMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveShortcutsGroupMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveShortcutsGroupMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveShortcutsGroupMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveShortcutsGroupMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveShortcutsGroupMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveShortcutsGroupMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveShortcutsGroupMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveShortcutsGroupMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveShortcutsGroupMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveShortcutsGroupMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveShortcutsGroupMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveShortcutsGroupMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveShortcutsGroupMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveShortcutsGroupMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveShortcutsGroupMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveShortcutsGroupMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveShortcutsGroupMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveShortcutsGroupMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveShortcutsGroupMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveShortcutsGroupMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveShortcutsGroupMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveShortcutsGroupMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveShortcutsGroupMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveShortcutsGroupMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveShortcutsGroupMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveShortcutsGroupMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveShortcutsGroupMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveShortcutsGroupMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveShortcutsGroupMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveShortcutsGroupMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveShortcutsGroupMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveShortcutsGroupMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveShortcutsGroupMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveShortcutsGroupMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveShortcutsGroupMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveShortcutsGroupMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveShortcutsGroupMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveShortcutsGroupMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveShortcutsGroupMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveShortcutsGroupMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveShortcutsGroupMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveShortcutsGroupMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveShortcutsGroupMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveShortcutsGroupMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveShortcutsGroupMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveShortcutsGroupMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveShortcutsGroupMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveShortcutsGroupMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveShortcutsGroupMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveShortcutsGroupMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveShortcutsGroupMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveShortcutsGroupMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveShortcutsGroupMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveShortcutsGroupMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveShortcutsGroupMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveShortcutsGroupMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveShortcutsGroupMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveShortcutsGroupMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveShortcutsGroupMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveShortcutsGroupMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveShortcutsGroupMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveShortcutsGroupMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveShortcutsGroupMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveShortcutsGroupMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveShortcutsGroupMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveShortcutsGroupMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveShortcutsGroupMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveShortcutsGroupMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveShortcutsGroupMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveShortcutsGroupMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveShortcutsGroupMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveShortcutsGroupMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveShortcutsGroupMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveShortcutsGroupMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveShortcutsGroupMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveShortcutsGroupMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveShortcutsGroupMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveShortcutsGroupMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveShortcutsGroupMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveShortcutsGroupMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveShortcutsGroupMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveShortcutsGroupMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveShortcutsGroupMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveShortcutsGroupMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveShortcutsGroupMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveShortcutsGroupMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveShortcutsGroupMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveShortcutsGroupMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveShortcutsGroupMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveShortcutsGroupMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveShortcutsGroupMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveShortcutsGroupMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveShortcutsGroupMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveShortcutsGroupMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveShortcutsGroupMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveShortcutsGroupMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveShortcutsGroupMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveShortcutsGroupMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveShortcutsGroupMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveShortcutsGroupMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveShortcutsGroupMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveShortcutsGroupMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveShortcutsGroupMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveShortcutsGroupMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveShortcutsGroupMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveShortcutsGroupMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveShortcutsGroupMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveShortcutsGroupMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveShortcutsGroupMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveShortcutsGroupMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveShortcutsGroupMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveShortcutsGroupMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveShortcutsGroupMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveShortcutsGroupMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveShortcutsGroupMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveShortcutsGroupMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveShortcutsGroupMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveShortcutsGroupMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveShortcutsGroupMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveShortcutsGroupMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveShortcutsGroupMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveShortcutsGroupMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveShortcutsGroupMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveShortcutsGroupMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveShortcutsGroupMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveShortcutsGroupMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveShortcutsGroupMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveShortcutsGroupMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveShortcutsGroupMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveShortcutsGroupMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveShortcutsGroupMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveShortcutsGroupMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveShortcutsGroupMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveShortcutsGroupMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveShortcutsGroupMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveShortcutsGroupMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveShortcutsGroupMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveShortcutsGroupMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveShortcutsGroupMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveShortcutsGroupMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveShortcutsGroupMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveShortcutsGroupMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveShortcutsGroupMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveShortcutsGroupMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveShortcutsGroupMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveShortcutsGroupMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveShortcutsGroupMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveShortcutsGroupMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveShortcutsGroupMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveShortcutsGroupMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveShortcutsGroupMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveShortcutsGroupMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveShortcutsGroupMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveShortcutsGroupMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveShortcutsGroupMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveShortcutsGroupMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveShortcutsGroupMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveShortcutsGroupMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveShortcutsGroupMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveShortcutsGroupMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveShortcutsGroupMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveShortcutsGroupMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveShortcutsGroupMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveShortcutsGroupMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveShortcutsGroupMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveShortcutsGroupMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveShortcutsGroupMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveShortcutsGroupMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveShortcutsGroupMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveShortcutsGroupMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveShortcutsGroupMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveShortcutsGroupMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveShortcutsGroupMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveShortcutsGroupMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveShortcutsGroupMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveShortcutsGroupMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveShortcutsGroupMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveShortcutsGroupMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveShortcutsGroupMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveShortcutsGroupMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveShortcutsGroupMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveShortcutsGroupMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveShortcutsGroupMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveShortcutsGroupMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveShortcutsGroupMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveShortcutsGroupMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveShortcutsGroupMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveShortcutsGroupMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveShortcutsGroupMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveShortcutsGroupMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveShortcutsGroupMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveShortcutsGroupMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveShortcutsGroupMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveShortcutsGroupMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveShortcutsGroupMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveShortcutsGroupMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveShortcutsGroupMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveShortcutsGroupMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveShortcutsGroupMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveShortcutsGroupMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveShortcutsGroupMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveShortcutsGroupMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveShortcutsGroupMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveShortcutsGroupMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveShortcutsGroupMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveShortcutsGroupMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveShortcutsGroupMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveShortcutsGroupMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveShortcutsGroupMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveShortcutsGroupMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveShortcutsGroupMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveShortcutsGroupMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveShortcutsGroupMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveShortcutsGroupMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveShortcutsGroupMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveShortcutsGroupMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveShortcutsGroupMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveShortcutsGroupMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveShortcutsGroupMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveShortcutsGroupMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveShortcutsGroupMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveShortcutsGroupMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveShortcutsGroupMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveShortcutsGroupMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveShortcutsGroupMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveShortcutsGroupMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveShortcutsGroupMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveShortcutsGroupMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveShortcutsGroupMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveShortcutsGroupMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveShortcutsGroupMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveShortcutsGroupMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveShortcutsGroupMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveShortcutsGroupMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveShortcutsGroupMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveShortcutsGroupMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveShortcutsGroupMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveShortcutsGroupMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveShortcutsGroupMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveShortcutsGroupMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveShortcutsGroupMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveShortcutsGroupMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveShortcutsGroupMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveShortcutsGroupMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveShortcutsGroupMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveShortcutsGroupMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveShortcutsGroupMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveShortcutsGroupMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveShortcutsGroupMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveShortcutsGroupMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveShortcutsGroupMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveShortcutsGroupMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveShortcutsGroupMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveShortcutsGroupMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveShortcutsGroupMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveShortcutsGroupMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveShortcutsGroupMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveShortcutsGroupMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveShortcutsGroupMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveShortcutsGroupMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveShortcutsGroupMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveShortcutsGroupMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveShortcutsGroupMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveShortcutsGroupMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveShortcutsGroupMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveShortcutsGroupMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveShortcutsGroupMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveShortcutsGroupMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveShortcutsGroupMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveShortcutsGroupMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveShortcutsGroupMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveShortcutsGroupMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveShortcutsGroupMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveShortcutsGroupMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveShortcutsGroupMethod t ShortcutsGroup, O.MethodInfo info ShortcutsGroup p) => OL.IsLabel t (ShortcutsGroup -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "accel-size-group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SizeGroup"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@accel-size-group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsGroup [ #accelSizeGroup 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsGroupAccelSizeGroup :: (MonadIO m, IsShortcutsGroup o, Gtk.SizeGroup.IsSizeGroup a) => o -> a -> m ()
setShortcutsGroupAccelSizeGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "accel-size-group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@accel-size-group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsGroupAccelSizeGroup :: (IsShortcutsGroup o, Gtk.SizeGroup.IsSizeGroup a) => a -> IO (GValueConstruct o)
constructShortcutsGroupAccelSizeGroup val = B.Properties.constructObjectPropertyObject "accel-size-group" (Just val)

-- | Set the value of the “@accel-size-group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #accelSizeGroup
-- @
clearShortcutsGroupAccelSizeGroup :: (MonadIO m, IsShortcutsGroup o) => o -> m ()
clearShortcutsGroupAccelSizeGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "accel-size-group" (Nothing :: Maybe Gtk.SizeGroup.SizeGroup)

#if defined(ENABLE_OVERLOADING)
data ShortcutsGroupAccelSizeGroupPropertyInfo
instance AttrInfo ShortcutsGroupAccelSizeGroupPropertyInfo where
    type AttrAllowedOps ShortcutsGroupAccelSizeGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsGroupAccelSizeGroupPropertyInfo = IsShortcutsGroup
    type AttrSetTypeConstraint ShortcutsGroupAccelSizeGroupPropertyInfo = Gtk.SizeGroup.IsSizeGroup
    type AttrTransferTypeConstraint ShortcutsGroupAccelSizeGroupPropertyInfo = Gtk.SizeGroup.IsSizeGroup
    type AttrTransferType ShortcutsGroupAccelSizeGroupPropertyInfo = Gtk.SizeGroup.SizeGroup
    type AttrGetType ShortcutsGroupAccelSizeGroupPropertyInfo = ()
    type AttrLabel ShortcutsGroupAccelSizeGroupPropertyInfo = "accel-size-group"
    type AttrOrigin ShortcutsGroupAccelSizeGroupPropertyInfo = ShortcutsGroup
    attrGet = undefined
    attrSet = setShortcutsGroupAccelSizeGroup
    attrTransfer _ v = do
        unsafeCastTo Gtk.SizeGroup.SizeGroup v
    attrConstruct = constructShortcutsGroupAccelSizeGroup
    attrClear = clearShortcutsGroupAccelSizeGroup
#endif

-- VVV Prop "height"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsGroup #height
-- @
getShortcutsGroupHeight :: (MonadIO m, IsShortcutsGroup o) => o -> m Word32
getShortcutsGroupHeight obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "height"

#if defined(ENABLE_OVERLOADING)
data ShortcutsGroupHeightPropertyInfo
instance AttrInfo ShortcutsGroupHeightPropertyInfo where
    type AttrAllowedOps ShortcutsGroupHeightPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint ShortcutsGroupHeightPropertyInfo = IsShortcutsGroup
    type AttrSetTypeConstraint ShortcutsGroupHeightPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ShortcutsGroupHeightPropertyInfo = (~) ()
    type AttrTransferType ShortcutsGroupHeightPropertyInfo = ()
    type AttrGetType ShortcutsGroupHeightPropertyInfo = Word32
    type AttrLabel ShortcutsGroupHeightPropertyInfo = "height"
    type AttrOrigin ShortcutsGroupHeightPropertyInfo = ShortcutsGroup
    attrGet = getShortcutsGroupHeight
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsGroup #title
-- @
getShortcutsGroupTitle :: (MonadIO m, IsShortcutsGroup o) => o -> m (Maybe T.Text)
getShortcutsGroupTitle obj = liftIO $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsGroup [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsGroupTitle :: (MonadIO m, IsShortcutsGroup o) => o -> T.Text -> m ()
setShortcutsGroupTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsGroupTitle :: (IsShortcutsGroup o) => T.Text -> IO (GValueConstruct o)
constructShortcutsGroupTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

-- | Set the value of the “@title@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #title
-- @
clearShortcutsGroupTitle :: (MonadIO m, IsShortcutsGroup o) => o -> m ()
clearShortcutsGroupTitle obj = liftIO $ B.Properties.setObjectPropertyString obj "title" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsGroupTitlePropertyInfo
instance AttrInfo ShortcutsGroupTitlePropertyInfo where
    type AttrAllowedOps ShortcutsGroupTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsGroupTitlePropertyInfo = IsShortcutsGroup
    type AttrSetTypeConstraint ShortcutsGroupTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsGroupTitlePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsGroupTitlePropertyInfo = T.Text
    type AttrGetType ShortcutsGroupTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsGroupTitlePropertyInfo = "title"
    type AttrOrigin ShortcutsGroupTitlePropertyInfo = ShortcutsGroup
    attrGet = getShortcutsGroupTitle
    attrSet = setShortcutsGroupTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsGroupTitle
    attrClear = clearShortcutsGroupTitle
#endif

-- VVV Prop "title-size-group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SizeGroup"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@title-size-group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsGroup [ #titleSizeGroup 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsGroupTitleSizeGroup :: (MonadIO m, IsShortcutsGroup o, Gtk.SizeGroup.IsSizeGroup a) => o -> a -> m ()
setShortcutsGroupTitleSizeGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "title-size-group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title-size-group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsGroupTitleSizeGroup :: (IsShortcutsGroup o, Gtk.SizeGroup.IsSizeGroup a) => a -> IO (GValueConstruct o)
constructShortcutsGroupTitleSizeGroup val = B.Properties.constructObjectPropertyObject "title-size-group" (Just val)

-- | Set the value of the “@title-size-group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #titleSizeGroup
-- @
clearShortcutsGroupTitleSizeGroup :: (MonadIO m, IsShortcutsGroup o) => o -> m ()
clearShortcutsGroupTitleSizeGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "title-size-group" (Nothing :: Maybe Gtk.SizeGroup.SizeGroup)

#if defined(ENABLE_OVERLOADING)
data ShortcutsGroupTitleSizeGroupPropertyInfo
instance AttrInfo ShortcutsGroupTitleSizeGroupPropertyInfo where
    type AttrAllowedOps ShortcutsGroupTitleSizeGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsGroupTitleSizeGroupPropertyInfo = IsShortcutsGroup
    type AttrSetTypeConstraint ShortcutsGroupTitleSizeGroupPropertyInfo = Gtk.SizeGroup.IsSizeGroup
    type AttrTransferTypeConstraint ShortcutsGroupTitleSizeGroupPropertyInfo = Gtk.SizeGroup.IsSizeGroup
    type AttrTransferType ShortcutsGroupTitleSizeGroupPropertyInfo = Gtk.SizeGroup.SizeGroup
    type AttrGetType ShortcutsGroupTitleSizeGroupPropertyInfo = ()
    type AttrLabel ShortcutsGroupTitleSizeGroupPropertyInfo = "title-size-group"
    type AttrOrigin ShortcutsGroupTitleSizeGroupPropertyInfo = ShortcutsGroup
    attrGet = undefined
    attrSet = setShortcutsGroupTitleSizeGroup
    attrTransfer _ v = do
        unsafeCastTo Gtk.SizeGroup.SizeGroup v
    attrConstruct = constructShortcutsGroupTitleSizeGroup
    attrClear = clearShortcutsGroupTitleSizeGroup
#endif

-- VVV Prop "view"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@view@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsGroup #view
-- @
getShortcutsGroupView :: (MonadIO m, IsShortcutsGroup o) => o -> m (Maybe T.Text)
getShortcutsGroupView obj = liftIO $ B.Properties.getObjectPropertyString obj "view"

-- | Set the value of the “@view@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsGroup [ #view 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsGroupView :: (MonadIO m, IsShortcutsGroup o) => o -> T.Text -> m ()
setShortcutsGroupView obj val = liftIO $ B.Properties.setObjectPropertyString obj "view" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@view@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsGroupView :: (IsShortcutsGroup o) => T.Text -> IO (GValueConstruct o)
constructShortcutsGroupView val = B.Properties.constructObjectPropertyString "view" (Just val)

-- | Set the value of the “@view@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #view
-- @
clearShortcutsGroupView :: (MonadIO m, IsShortcutsGroup o) => o -> m ()
clearShortcutsGroupView obj = liftIO $ B.Properties.setObjectPropertyString obj "view" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsGroupViewPropertyInfo
instance AttrInfo ShortcutsGroupViewPropertyInfo where
    type AttrAllowedOps ShortcutsGroupViewPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsGroupViewPropertyInfo = IsShortcutsGroup
    type AttrSetTypeConstraint ShortcutsGroupViewPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsGroupViewPropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsGroupViewPropertyInfo = T.Text
    type AttrGetType ShortcutsGroupViewPropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsGroupViewPropertyInfo = "view"
    type AttrOrigin ShortcutsGroupViewPropertyInfo = ShortcutsGroup
    attrGet = getShortcutsGroupView
    attrSet = setShortcutsGroupView
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsGroupView
    attrClear = clearShortcutsGroupView
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ShortcutsGroup
type instance O.AttributeList ShortcutsGroup = ShortcutsGroupAttributeList
type ShortcutsGroupAttributeList = ('[ '("accelSizeGroup", ShortcutsGroupAccelSizeGroupPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("height", ShortcutsGroupHeightPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", ShortcutsGroupTitlePropertyInfo), '("titleSizeGroup", ShortcutsGroupTitleSizeGroupPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("view", ShortcutsGroupViewPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
shortcutsGroupAccelSizeGroup :: AttrLabelProxy "accelSizeGroup"
shortcutsGroupAccelSizeGroup = AttrLabelProxy

shortcutsGroupHeight :: AttrLabelProxy "height"
shortcutsGroupHeight = AttrLabelProxy

shortcutsGroupTitle :: AttrLabelProxy "title"
shortcutsGroupTitle = AttrLabelProxy

shortcutsGroupTitleSizeGroup :: AttrLabelProxy "titleSizeGroup"
shortcutsGroupTitleSizeGroup = AttrLabelProxy

shortcutsGroupView :: AttrLabelProxy "view"
shortcutsGroupView = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ShortcutsGroup = ShortcutsGroupSignalList
type ShortcutsGroupSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

