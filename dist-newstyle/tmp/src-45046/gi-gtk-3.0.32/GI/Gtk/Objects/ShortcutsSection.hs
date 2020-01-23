{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkShortcutsSection collects all the keyboard shortcuts and gestures
-- for a major application mode. If your application needs multiple sections,
-- you should give each section a unique t'GI.Gtk.Objects.ShortcutsSection.ShortcutsSection':@/section-name/@ and
-- a t'GI.Gtk.Objects.ShortcutsSection.ShortcutsSection':@/title/@ that can be shown in the section selector of
-- the GtkShortcutsWindow.
-- 
-- The t'GI.Gtk.Objects.ShortcutsSection.ShortcutsSection':@/max-height/@ property can be used to influence how
-- the groups in the section are distributed over pages and columns.
-- 
-- This widget is only meant to be used with t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow'.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ShortcutsSection
    ( 

-- * Exported types
    ShortcutsSection(..)                    ,
    IsShortcutsSection                      ,
    toShortcutsSection                      ,
    noShortcutsSection                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveShortcutsSectionMethod           ,
#endif




 -- * Properties
-- ** maxHeight #attr:maxHeight#
-- | The maximum number of lines to allow per column. This property can
-- be used to influence how the groups in this section are distributed
-- across pages and columns. The default value of 15 should work in
-- most cases.

#if defined(ENABLE_OVERLOADING)
    ShortcutsSectionMaxHeightPropertyInfo   ,
#endif
    constructShortcutsSectionMaxHeight      ,
    getShortcutsSectionMaxHeight            ,
    setShortcutsSectionMaxHeight            ,
#if defined(ENABLE_OVERLOADING)
    shortcutsSectionMaxHeight               ,
#endif


-- ** sectionName #attr:sectionName#
-- | A unique name to identify this section among the sections
-- added to the GtkShortcutsWindow. Setting the t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow':@/section-name/@
-- property to this string will make this section shown in the
-- GtkShortcutsWindow.

#if defined(ENABLE_OVERLOADING)
    ShortcutsSectionSectionNamePropertyInfo ,
#endif
    clearShortcutsSectionSectionName        ,
    constructShortcutsSectionSectionName    ,
    getShortcutsSectionSectionName          ,
    setShortcutsSectionSectionName          ,
#if defined(ENABLE_OVERLOADING)
    shortcutsSectionSectionName             ,
#endif


-- ** title #attr:title#
-- | The string to show in the section selector of the GtkShortcutsWindow
-- for this section. If there is only one section, you don\'t need to
-- set a title, since the section selector will not be shown in this case.

#if defined(ENABLE_OVERLOADING)
    ShortcutsSectionTitlePropertyInfo       ,
#endif
    clearShortcutsSectionTitle              ,
    constructShortcutsSectionTitle          ,
    getShortcutsSectionTitle                ,
    setShortcutsSectionTitle                ,
#if defined(ENABLE_OVERLOADING)
    shortcutsSectionTitle                   ,
#endif


-- ** viewName #attr:viewName#
-- | A view name to filter the groups in this section by.
-- See t'GI.Gtk.Objects.ShortcutsGroup.ShortcutsGroup':@/view/@.
-- 
-- Applications are expected to use the t'GI.Gtk.Objects.ShortcutsWindow.ShortcutsWindow':@/view-name/@
-- property for this purpose.

#if defined(ENABLE_OVERLOADING)
    ShortcutsSectionViewNamePropertyInfo    ,
#endif
    clearShortcutsSectionViewName           ,
    constructShortcutsSectionViewName       ,
    getShortcutsSectionViewName             ,
    setShortcutsSectionViewName             ,
#if defined(ENABLE_OVERLOADING)
    shortcutsSectionViewName                ,
#endif




 -- * Signals
-- ** changeCurrentPage #signal:changeCurrentPage#

    C_ShortcutsSectionChangeCurrentPageCallback,
    ShortcutsSectionChangeCurrentPageCallback,
#if defined(ENABLE_OVERLOADING)
    ShortcutsSectionChangeCurrentPageSignalInfo,
#endif
    afterShortcutsSectionChangeCurrentPage  ,
    genClosure_ShortcutsSectionChangeCurrentPage,
    mk_ShortcutsSectionChangeCurrentPageCallback,
    noShortcutsSectionChangeCurrentPageCallback,
    onShortcutsSectionChangeCurrentPage     ,
    wrap_ShortcutsSectionChangeCurrentPageCallback,




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
newtype ShortcutsSection = ShortcutsSection (ManagedPtr ShortcutsSection)
    deriving (Eq)
foreign import ccall "gtk_shortcuts_section_get_type"
    c_gtk_shortcuts_section_get_type :: IO GType

instance GObject ShortcutsSection where
    gobjectType = c_gtk_shortcuts_section_get_type
    

-- | Convert 'ShortcutsSection' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ShortcutsSection where
    toGValue o = do
        gtype <- c_gtk_shortcuts_section_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ShortcutsSection)
        B.ManagedPtr.newObject ShortcutsSection ptr
        
    

-- | Type class for types which can be safely cast to `ShortcutsSection`, for instance with `toShortcutsSection`.
class (GObject o, O.IsDescendantOf ShortcutsSection o) => IsShortcutsSection o
instance (GObject o, O.IsDescendantOf ShortcutsSection o) => IsShortcutsSection o

instance O.HasParentTypes ShortcutsSection
type instance O.ParentTypes ShortcutsSection = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `ShortcutsSection`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toShortcutsSection :: (MonadIO m, IsShortcutsSection o) => o -> m ShortcutsSection
toShortcutsSection = liftIO . unsafeCastTo ShortcutsSection

-- | A convenience alias for `Nothing` :: `Maybe` `ShortcutsSection`.
noShortcutsSection :: Maybe ShortcutsSection
noShortcutsSection = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveShortcutsSectionMethod (t :: Symbol) (o :: *) :: * where
    ResolveShortcutsSectionMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveShortcutsSectionMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveShortcutsSectionMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveShortcutsSectionMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveShortcutsSectionMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveShortcutsSectionMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveShortcutsSectionMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveShortcutsSectionMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveShortcutsSectionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveShortcutsSectionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveShortcutsSectionMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveShortcutsSectionMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveShortcutsSectionMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveShortcutsSectionMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveShortcutsSectionMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveShortcutsSectionMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveShortcutsSectionMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveShortcutsSectionMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveShortcutsSectionMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveShortcutsSectionMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveShortcutsSectionMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveShortcutsSectionMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveShortcutsSectionMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveShortcutsSectionMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveShortcutsSectionMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveShortcutsSectionMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveShortcutsSectionMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveShortcutsSectionMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveShortcutsSectionMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveShortcutsSectionMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveShortcutsSectionMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveShortcutsSectionMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveShortcutsSectionMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveShortcutsSectionMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveShortcutsSectionMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveShortcutsSectionMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveShortcutsSectionMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveShortcutsSectionMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveShortcutsSectionMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveShortcutsSectionMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveShortcutsSectionMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveShortcutsSectionMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveShortcutsSectionMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveShortcutsSectionMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveShortcutsSectionMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveShortcutsSectionMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveShortcutsSectionMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveShortcutsSectionMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveShortcutsSectionMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveShortcutsSectionMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveShortcutsSectionMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveShortcutsSectionMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveShortcutsSectionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveShortcutsSectionMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveShortcutsSectionMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveShortcutsSectionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveShortcutsSectionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveShortcutsSectionMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveShortcutsSectionMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveShortcutsSectionMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveShortcutsSectionMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveShortcutsSectionMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveShortcutsSectionMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveShortcutsSectionMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveShortcutsSectionMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveShortcutsSectionMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveShortcutsSectionMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveShortcutsSectionMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveShortcutsSectionMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveShortcutsSectionMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveShortcutsSectionMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveShortcutsSectionMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveShortcutsSectionMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveShortcutsSectionMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveShortcutsSectionMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveShortcutsSectionMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveShortcutsSectionMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveShortcutsSectionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveShortcutsSectionMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveShortcutsSectionMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveShortcutsSectionMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveShortcutsSectionMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveShortcutsSectionMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveShortcutsSectionMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveShortcutsSectionMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveShortcutsSectionMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveShortcutsSectionMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveShortcutsSectionMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveShortcutsSectionMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveShortcutsSectionMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveShortcutsSectionMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveShortcutsSectionMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveShortcutsSectionMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveShortcutsSectionMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveShortcutsSectionMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveShortcutsSectionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveShortcutsSectionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveShortcutsSectionMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveShortcutsSectionMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveShortcutsSectionMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveShortcutsSectionMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveShortcutsSectionMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveShortcutsSectionMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveShortcutsSectionMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveShortcutsSectionMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveShortcutsSectionMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveShortcutsSectionMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveShortcutsSectionMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveShortcutsSectionMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveShortcutsSectionMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveShortcutsSectionMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveShortcutsSectionMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveShortcutsSectionMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveShortcutsSectionMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveShortcutsSectionMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveShortcutsSectionMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveShortcutsSectionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveShortcutsSectionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveShortcutsSectionMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveShortcutsSectionMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveShortcutsSectionMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveShortcutsSectionMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveShortcutsSectionMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveShortcutsSectionMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveShortcutsSectionMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveShortcutsSectionMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveShortcutsSectionMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveShortcutsSectionMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveShortcutsSectionMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveShortcutsSectionMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveShortcutsSectionMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveShortcutsSectionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveShortcutsSectionMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveShortcutsSectionMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveShortcutsSectionMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveShortcutsSectionMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveShortcutsSectionMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveShortcutsSectionMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveShortcutsSectionMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveShortcutsSectionMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveShortcutsSectionMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveShortcutsSectionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveShortcutsSectionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveShortcutsSectionMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveShortcutsSectionMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveShortcutsSectionMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveShortcutsSectionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveShortcutsSectionMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveShortcutsSectionMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveShortcutsSectionMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveShortcutsSectionMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveShortcutsSectionMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveShortcutsSectionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveShortcutsSectionMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveShortcutsSectionMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveShortcutsSectionMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveShortcutsSectionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveShortcutsSectionMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveShortcutsSectionMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveShortcutsSectionMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveShortcutsSectionMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveShortcutsSectionMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveShortcutsSectionMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveShortcutsSectionMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveShortcutsSectionMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveShortcutsSectionMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveShortcutsSectionMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveShortcutsSectionMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveShortcutsSectionMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveShortcutsSectionMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveShortcutsSectionMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveShortcutsSectionMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveShortcutsSectionMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveShortcutsSectionMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveShortcutsSectionMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveShortcutsSectionMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveShortcutsSectionMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveShortcutsSectionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveShortcutsSectionMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveShortcutsSectionMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveShortcutsSectionMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveShortcutsSectionMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveShortcutsSectionMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveShortcutsSectionMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveShortcutsSectionMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveShortcutsSectionMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveShortcutsSectionMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveShortcutsSectionMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveShortcutsSectionMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveShortcutsSectionMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveShortcutsSectionMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveShortcutsSectionMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveShortcutsSectionMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveShortcutsSectionMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveShortcutsSectionMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveShortcutsSectionMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveShortcutsSectionMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveShortcutsSectionMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveShortcutsSectionMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveShortcutsSectionMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveShortcutsSectionMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveShortcutsSectionMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveShortcutsSectionMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveShortcutsSectionMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveShortcutsSectionMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveShortcutsSectionMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveShortcutsSectionMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveShortcutsSectionMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveShortcutsSectionMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveShortcutsSectionMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveShortcutsSectionMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveShortcutsSectionMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveShortcutsSectionMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveShortcutsSectionMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveShortcutsSectionMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveShortcutsSectionMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveShortcutsSectionMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveShortcutsSectionMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveShortcutsSectionMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveShortcutsSectionMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveShortcutsSectionMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveShortcutsSectionMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveShortcutsSectionMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveShortcutsSectionMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveShortcutsSectionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveShortcutsSectionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveShortcutsSectionMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveShortcutsSectionMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveShortcutsSectionMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveShortcutsSectionMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveShortcutsSectionMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveShortcutsSectionMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveShortcutsSectionMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveShortcutsSectionMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveShortcutsSectionMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveShortcutsSectionMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveShortcutsSectionMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveShortcutsSectionMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveShortcutsSectionMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveShortcutsSectionMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveShortcutsSectionMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveShortcutsSectionMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveShortcutsSectionMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveShortcutsSectionMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveShortcutsSectionMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveShortcutsSectionMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveShortcutsSectionMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveShortcutsSectionMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveShortcutsSectionMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveShortcutsSectionMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveShortcutsSectionMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveShortcutsSectionMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveShortcutsSectionMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveShortcutsSectionMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveShortcutsSectionMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveShortcutsSectionMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveShortcutsSectionMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveShortcutsSectionMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveShortcutsSectionMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveShortcutsSectionMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveShortcutsSectionMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveShortcutsSectionMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveShortcutsSectionMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveShortcutsSectionMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveShortcutsSectionMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveShortcutsSectionMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveShortcutsSectionMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveShortcutsSectionMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveShortcutsSectionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveShortcutsSectionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveShortcutsSectionMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveShortcutsSectionMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveShortcutsSectionMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveShortcutsSectionMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveShortcutsSectionMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveShortcutsSectionMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveShortcutsSectionMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveShortcutsSectionMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveShortcutsSectionMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveShortcutsSectionMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveShortcutsSectionMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveShortcutsSectionMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveShortcutsSectionMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveShortcutsSectionMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveShortcutsSectionMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveShortcutsSectionMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveShortcutsSectionMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveShortcutsSectionMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveShortcutsSectionMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveShortcutsSectionMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveShortcutsSectionMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveShortcutsSectionMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveShortcutsSectionMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveShortcutsSectionMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveShortcutsSectionMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveShortcutsSectionMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveShortcutsSectionMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveShortcutsSectionMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveShortcutsSectionMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveShortcutsSectionMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveShortcutsSectionMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveShortcutsSectionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveShortcutsSectionMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveShortcutsSectionMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveShortcutsSectionMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveShortcutsSectionMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveShortcutsSectionMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveShortcutsSectionMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveShortcutsSectionMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveShortcutsSectionMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveShortcutsSectionMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveShortcutsSectionMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveShortcutsSectionMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveShortcutsSectionMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveShortcutsSectionMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveShortcutsSectionMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveShortcutsSectionMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveShortcutsSectionMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveShortcutsSectionMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveShortcutsSectionMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveShortcutsSectionMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveShortcutsSectionMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveShortcutsSectionMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveShortcutsSectionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveShortcutsSectionMethod t ShortcutsSection, O.MethodInfo info ShortcutsSection p) => OL.IsLabel t (ShortcutsSection -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ShortcutsSection::change-current-page
-- | /No description available in the introspection data./
type ShortcutsSectionChangeCurrentPageCallback =
    Int32
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `ShortcutsSectionChangeCurrentPageCallback`@.
noShortcutsSectionChangeCurrentPageCallback :: Maybe ShortcutsSectionChangeCurrentPageCallback
noShortcutsSectionChangeCurrentPageCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ShortcutsSectionChangeCurrentPageCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ShortcutsSectionChangeCurrentPageCallback`.
foreign import ccall "wrapper"
    mk_ShortcutsSectionChangeCurrentPageCallback :: C_ShortcutsSectionChangeCurrentPageCallback -> IO (FunPtr C_ShortcutsSectionChangeCurrentPageCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ShortcutsSectionChangeCurrentPage :: MonadIO m => ShortcutsSectionChangeCurrentPageCallback -> m (GClosure C_ShortcutsSectionChangeCurrentPageCallback)
genClosure_ShortcutsSectionChangeCurrentPage cb = liftIO $ do
    let cb' = wrap_ShortcutsSectionChangeCurrentPageCallback cb
    mk_ShortcutsSectionChangeCurrentPageCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ShortcutsSectionChangeCurrentPageCallback` into a `C_ShortcutsSectionChangeCurrentPageCallback`.
wrap_ShortcutsSectionChangeCurrentPageCallback ::
    ShortcutsSectionChangeCurrentPageCallback ->
    C_ShortcutsSectionChangeCurrentPageCallback
wrap_ShortcutsSectionChangeCurrentPageCallback _cb _ object _ = do
    result <- _cb  object
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [changeCurrentPage](#signal:changeCurrentPage) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' shortcutsSection #changeCurrentPage callback
-- @
-- 
-- 
onShortcutsSectionChangeCurrentPage :: (IsShortcutsSection a, MonadIO m) => a -> ShortcutsSectionChangeCurrentPageCallback -> m SignalHandlerId
onShortcutsSectionChangeCurrentPage obj cb = liftIO $ do
    let cb' = wrap_ShortcutsSectionChangeCurrentPageCallback cb
    cb'' <- mk_ShortcutsSectionChangeCurrentPageCallback cb'
    connectSignalFunPtr obj "change-current-page" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changeCurrentPage](#signal:changeCurrentPage) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' shortcutsSection #changeCurrentPage callback
-- @
-- 
-- 
afterShortcutsSectionChangeCurrentPage :: (IsShortcutsSection a, MonadIO m) => a -> ShortcutsSectionChangeCurrentPageCallback -> m SignalHandlerId
afterShortcutsSectionChangeCurrentPage obj cb = liftIO $ do
    let cb' = wrap_ShortcutsSectionChangeCurrentPageCallback cb
    cb'' <- mk_ShortcutsSectionChangeCurrentPageCallback cb'
    connectSignalFunPtr obj "change-current-page" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ShortcutsSectionChangeCurrentPageSignalInfo
instance SignalInfo ShortcutsSectionChangeCurrentPageSignalInfo where
    type HaskellCallbackType ShortcutsSectionChangeCurrentPageSignalInfo = ShortcutsSectionChangeCurrentPageCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ShortcutsSectionChangeCurrentPageCallback cb
        cb'' <- mk_ShortcutsSectionChangeCurrentPageCallback cb'
        connectSignalFunPtr obj "change-current-page" cb'' connectMode detail

#endif

-- VVV Prop "max-height"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@max-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsSection #maxHeight
-- @
getShortcutsSectionMaxHeight :: (MonadIO m, IsShortcutsSection o) => o -> m Word32
getShortcutsSectionMaxHeight obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "max-height"

-- | Set the value of the “@max-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsSection [ #maxHeight 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsSectionMaxHeight :: (MonadIO m, IsShortcutsSection o) => o -> Word32 -> m ()
setShortcutsSectionMaxHeight obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "max-height" val

-- | Construct a `GValueConstruct` with valid value for the “@max-height@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsSectionMaxHeight :: (IsShortcutsSection o) => Word32 -> IO (GValueConstruct o)
constructShortcutsSectionMaxHeight val = B.Properties.constructObjectPropertyUInt32 "max-height" val

#if defined(ENABLE_OVERLOADING)
data ShortcutsSectionMaxHeightPropertyInfo
instance AttrInfo ShortcutsSectionMaxHeightPropertyInfo where
    type AttrAllowedOps ShortcutsSectionMaxHeightPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ShortcutsSectionMaxHeightPropertyInfo = IsShortcutsSection
    type AttrSetTypeConstraint ShortcutsSectionMaxHeightPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint ShortcutsSectionMaxHeightPropertyInfo = (~) Word32
    type AttrTransferType ShortcutsSectionMaxHeightPropertyInfo = Word32
    type AttrGetType ShortcutsSectionMaxHeightPropertyInfo = Word32
    type AttrLabel ShortcutsSectionMaxHeightPropertyInfo = "max-height"
    type AttrOrigin ShortcutsSectionMaxHeightPropertyInfo = ShortcutsSection
    attrGet = getShortcutsSectionMaxHeight
    attrSet = setShortcutsSectionMaxHeight
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsSectionMaxHeight
    attrClear = undefined
#endif

-- VVV Prop "section-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@section-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsSection #sectionName
-- @
getShortcutsSectionSectionName :: (MonadIO m, IsShortcutsSection o) => o -> m (Maybe T.Text)
getShortcutsSectionSectionName obj = liftIO $ B.Properties.getObjectPropertyString obj "section-name"

-- | Set the value of the “@section-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsSection [ #sectionName 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsSectionSectionName :: (MonadIO m, IsShortcutsSection o) => o -> T.Text -> m ()
setShortcutsSectionSectionName obj val = liftIO $ B.Properties.setObjectPropertyString obj "section-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@section-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsSectionSectionName :: (IsShortcutsSection o) => T.Text -> IO (GValueConstruct o)
constructShortcutsSectionSectionName val = B.Properties.constructObjectPropertyString "section-name" (Just val)

-- | Set the value of the “@section-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #sectionName
-- @
clearShortcutsSectionSectionName :: (MonadIO m, IsShortcutsSection o) => o -> m ()
clearShortcutsSectionSectionName obj = liftIO $ B.Properties.setObjectPropertyString obj "section-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsSectionSectionNamePropertyInfo
instance AttrInfo ShortcutsSectionSectionNamePropertyInfo where
    type AttrAllowedOps ShortcutsSectionSectionNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsSectionSectionNamePropertyInfo = IsShortcutsSection
    type AttrSetTypeConstraint ShortcutsSectionSectionNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsSectionSectionNamePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsSectionSectionNamePropertyInfo = T.Text
    type AttrGetType ShortcutsSectionSectionNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsSectionSectionNamePropertyInfo = "section-name"
    type AttrOrigin ShortcutsSectionSectionNamePropertyInfo = ShortcutsSection
    attrGet = getShortcutsSectionSectionName
    attrSet = setShortcutsSectionSectionName
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsSectionSectionName
    attrClear = clearShortcutsSectionSectionName
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsSection #title
-- @
getShortcutsSectionTitle :: (MonadIO m, IsShortcutsSection o) => o -> m (Maybe T.Text)
getShortcutsSectionTitle obj = liftIO $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsSection [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsSectionTitle :: (MonadIO m, IsShortcutsSection o) => o -> T.Text -> m ()
setShortcutsSectionTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsSectionTitle :: (IsShortcutsSection o) => T.Text -> IO (GValueConstruct o)
constructShortcutsSectionTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

-- | Set the value of the “@title@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #title
-- @
clearShortcutsSectionTitle :: (MonadIO m, IsShortcutsSection o) => o -> m ()
clearShortcutsSectionTitle obj = liftIO $ B.Properties.setObjectPropertyString obj "title" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsSectionTitlePropertyInfo
instance AttrInfo ShortcutsSectionTitlePropertyInfo where
    type AttrAllowedOps ShortcutsSectionTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsSectionTitlePropertyInfo = IsShortcutsSection
    type AttrSetTypeConstraint ShortcutsSectionTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsSectionTitlePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsSectionTitlePropertyInfo = T.Text
    type AttrGetType ShortcutsSectionTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsSectionTitlePropertyInfo = "title"
    type AttrOrigin ShortcutsSectionTitlePropertyInfo = ShortcutsSection
    attrGet = getShortcutsSectionTitle
    attrSet = setShortcutsSectionTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsSectionTitle
    attrClear = clearShortcutsSectionTitle
#endif

-- VVV Prop "view-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@view-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' shortcutsSection #viewName
-- @
getShortcutsSectionViewName :: (MonadIO m, IsShortcutsSection o) => o -> m (Maybe T.Text)
getShortcutsSectionViewName obj = liftIO $ B.Properties.getObjectPropertyString obj "view-name"

-- | Set the value of the “@view-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' shortcutsSection [ #viewName 'Data.GI.Base.Attributes.:=' value ]
-- @
setShortcutsSectionViewName :: (MonadIO m, IsShortcutsSection o) => o -> T.Text -> m ()
setShortcutsSectionViewName obj val = liftIO $ B.Properties.setObjectPropertyString obj "view-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@view-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructShortcutsSectionViewName :: (IsShortcutsSection o) => T.Text -> IO (GValueConstruct o)
constructShortcutsSectionViewName val = B.Properties.constructObjectPropertyString "view-name" (Just val)

-- | Set the value of the “@view-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #viewName
-- @
clearShortcutsSectionViewName :: (MonadIO m, IsShortcutsSection o) => o -> m ()
clearShortcutsSectionViewName obj = liftIO $ B.Properties.setObjectPropertyString obj "view-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ShortcutsSectionViewNamePropertyInfo
instance AttrInfo ShortcutsSectionViewNamePropertyInfo where
    type AttrAllowedOps ShortcutsSectionViewNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ShortcutsSectionViewNamePropertyInfo = IsShortcutsSection
    type AttrSetTypeConstraint ShortcutsSectionViewNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ShortcutsSectionViewNamePropertyInfo = (~) T.Text
    type AttrTransferType ShortcutsSectionViewNamePropertyInfo = T.Text
    type AttrGetType ShortcutsSectionViewNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ShortcutsSectionViewNamePropertyInfo = "view-name"
    type AttrOrigin ShortcutsSectionViewNamePropertyInfo = ShortcutsSection
    attrGet = getShortcutsSectionViewName
    attrSet = setShortcutsSectionViewName
    attrTransfer _ v = do
        return v
    attrConstruct = constructShortcutsSectionViewName
    attrClear = clearShortcutsSectionViewName
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ShortcutsSection
type instance O.AttributeList ShortcutsSection = ShortcutsSectionAttributeList
type ShortcutsSectionAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxHeight", ShortcutsSectionMaxHeightPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sectionName", ShortcutsSectionSectionNamePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", ShortcutsSectionTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("viewName", ShortcutsSectionViewNamePropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
shortcutsSectionMaxHeight :: AttrLabelProxy "maxHeight"
shortcutsSectionMaxHeight = AttrLabelProxy

shortcutsSectionSectionName :: AttrLabelProxy "sectionName"
shortcutsSectionSectionName = AttrLabelProxy

shortcutsSectionTitle :: AttrLabelProxy "title"
shortcutsSectionTitle = AttrLabelProxy

shortcutsSectionViewName :: AttrLabelProxy "viewName"
shortcutsSectionViewName = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ShortcutsSection = ShortcutsSectionSignalList
type ShortcutsSectionSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeCurrentPage", ShortcutsSectionChangeCurrentPageSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

