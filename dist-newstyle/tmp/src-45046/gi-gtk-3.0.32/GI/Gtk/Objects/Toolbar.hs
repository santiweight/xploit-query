{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A toolbar is created with a call to 'GI.Gtk.Objects.Toolbar.toolbarNew'.
-- 
-- A toolbar can contain instances of a subclass of t'GI.Gtk.Objects.ToolItem.ToolItem'. To add
-- a t'GI.Gtk.Objects.ToolItem.ToolItem' to the a toolbar, use 'GI.Gtk.Objects.Toolbar.toolbarInsert'. To remove
-- an item from the toolbar use 'GI.Gtk.Objects.Container.containerRemove'. To add a button
-- to the toolbar, add an instance of t'GI.Gtk.Objects.ToolButton.ToolButton'.
-- 
-- Toolbar items can be visually grouped by adding instances of
-- t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem' to the toolbar. If the GtkToolbar child property
-- “expand” is @/TRUE/@ and the property t'GI.Gtk.Objects.SeparatorToolItem.SeparatorToolItem':@/draw/@ is set to
-- @/FALSE/@, the effect is to force all following items to the end of the toolbar.
-- 
-- By default, a toolbar can be shrunk, upon which it will add an arrow button
-- to show an overflow menu offering access to any t'GI.Gtk.Objects.ToolItem.ToolItem' child that has
-- a proxy menu item. To disable this and request enough size for all children,
-- call 'GI.Gtk.Objects.Toolbar.toolbarSetShowArrow' to set t'GI.Gtk.Objects.Toolbar.Toolbar':@/show-arrow/@ to 'P.False'.
-- 
-- Creating a context menu for the toolbar can be done by connecting to
-- the [popupContextMenu]("GI.Gtk.Objects.Toolbar#signal:popupContextMenu") signal.
-- 
-- = CSS nodes
-- 
-- GtkToolbar has a single CSS node with name toolbar.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Toolbar
    ( 

-- * Exported types
    Toolbar(..)                             ,
    IsToolbar                               ,
    toToolbar                               ,
    noToolbar                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToolbarMethod                    ,
#endif


-- ** getDropIndex #method:getDropIndex#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetDropIndexMethodInfo           ,
#endif
    toolbarGetDropIndex                     ,


-- ** getIconSize #method:getIconSize#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetIconSizeMethodInfo            ,
#endif
    toolbarGetIconSize                      ,


-- ** getItemIndex #method:getItemIndex#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetItemIndexMethodInfo           ,
#endif
    toolbarGetItemIndex                     ,


-- ** getNItems #method:getNItems#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetNItemsMethodInfo              ,
#endif
    toolbarGetNItems                        ,


-- ** getNthItem #method:getNthItem#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetNthItemMethodInfo             ,
#endif
    toolbarGetNthItem                       ,


-- ** getReliefStyle #method:getReliefStyle#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetReliefStyleMethodInfo         ,
#endif
    toolbarGetReliefStyle                   ,


-- ** getShowArrow #method:getShowArrow#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetShowArrowMethodInfo           ,
#endif
    toolbarGetShowArrow                     ,


-- ** getStyle #method:getStyle#

#if defined(ENABLE_OVERLOADING)
    ToolbarGetStyleMethodInfo               ,
#endif
    toolbarGetStyle                         ,


-- ** insert #method:insert#

#if defined(ENABLE_OVERLOADING)
    ToolbarInsertMethodInfo                 ,
#endif
    toolbarInsert                           ,


-- ** new #method:new#

    toolbarNew                              ,


-- ** setDropHighlightItem #method:setDropHighlightItem#

#if defined(ENABLE_OVERLOADING)
    ToolbarSetDropHighlightItemMethodInfo   ,
#endif
    toolbarSetDropHighlightItem             ,


-- ** setIconSize #method:setIconSize#

#if defined(ENABLE_OVERLOADING)
    ToolbarSetIconSizeMethodInfo            ,
#endif
    toolbarSetIconSize                      ,


-- ** setShowArrow #method:setShowArrow#

#if defined(ENABLE_OVERLOADING)
    ToolbarSetShowArrowMethodInfo           ,
#endif
    toolbarSetShowArrow                     ,


-- ** setStyle #method:setStyle#

#if defined(ENABLE_OVERLOADING)
    ToolbarSetStyleMethodInfo               ,
#endif
    toolbarSetStyle                         ,


-- ** unsetIconSize #method:unsetIconSize#

#if defined(ENABLE_OVERLOADING)
    ToolbarUnsetIconSizeMethodInfo          ,
#endif
    toolbarUnsetIconSize                    ,


-- ** unsetStyle #method:unsetStyle#

#if defined(ENABLE_OVERLOADING)
    ToolbarUnsetStyleMethodInfo             ,
#endif
    toolbarUnsetStyle                       ,




 -- * Properties
-- ** iconSize #attr:iconSize#
-- | The size of the icons in a toolbar is normally determined by
-- the toolbar-icon-size setting. When this property is set, it
-- overrides the setting.
-- 
-- This should only be used for special-purpose toolbars, normal
-- application toolbars should respect the user preferences for the
-- size of icons.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ToolbarIconSizePropertyInfo             ,
#endif
    constructToolbarIconSize                ,
    getToolbarIconSize                      ,
    setToolbarIconSize                      ,
#if defined(ENABLE_OVERLOADING)
    toolbarIconSize                         ,
#endif


-- ** iconSizeSet #attr:iconSizeSet#
-- | Is 'P.True' if the icon-size property has been set.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ToolbarIconSizeSetPropertyInfo          ,
#endif
    constructToolbarIconSizeSet             ,
    getToolbarIconSizeSet                   ,
    setToolbarIconSizeSet                   ,
#if defined(ENABLE_OVERLOADING)
    toolbarIconSizeSet                      ,
#endif


-- ** showArrow #attr:showArrow#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolbarShowArrowPropertyInfo            ,
#endif
    constructToolbarShowArrow               ,
    getToolbarShowArrow                     ,
    setToolbarShowArrow                     ,
#if defined(ENABLE_OVERLOADING)
    toolbarShowArrow                        ,
#endif


-- ** toolbarStyle #attr:toolbarStyle#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolbarToolbarStylePropertyInfo         ,
#endif
    constructToolbarToolbarStyle            ,
    getToolbarToolbarStyle                  ,
    setToolbarToolbarStyle                  ,
#if defined(ENABLE_OVERLOADING)
    toolbarToolbarStyle                     ,
#endif




 -- * Signals
-- ** focusHomeOrEnd #signal:focusHomeOrEnd#

    C_ToolbarFocusHomeOrEndCallback         ,
    ToolbarFocusHomeOrEndCallback           ,
#if defined(ENABLE_OVERLOADING)
    ToolbarFocusHomeOrEndSignalInfo         ,
#endif
    afterToolbarFocusHomeOrEnd              ,
    genClosure_ToolbarFocusHomeOrEnd        ,
    mk_ToolbarFocusHomeOrEndCallback        ,
    noToolbarFocusHomeOrEndCallback         ,
    onToolbarFocusHomeOrEnd                 ,
    wrap_ToolbarFocusHomeOrEndCallback      ,


-- ** orientationChanged #signal:orientationChanged#

    C_ToolbarOrientationChangedCallback     ,
    ToolbarOrientationChangedCallback       ,
#if defined(ENABLE_OVERLOADING)
    ToolbarOrientationChangedSignalInfo     ,
#endif
    afterToolbarOrientationChanged          ,
    genClosure_ToolbarOrientationChanged    ,
    mk_ToolbarOrientationChangedCallback    ,
    noToolbarOrientationChangedCallback     ,
    onToolbarOrientationChanged             ,
    wrap_ToolbarOrientationChangedCallback  ,


-- ** popupContextMenu #signal:popupContextMenu#

    C_ToolbarPopupContextMenuCallback       ,
    ToolbarPopupContextMenuCallback         ,
#if defined(ENABLE_OVERLOADING)
    ToolbarPopupContextMenuSignalInfo       ,
#endif
    afterToolbarPopupContextMenu            ,
    genClosure_ToolbarPopupContextMenu      ,
    mk_ToolbarPopupContextMenuCallback      ,
    noToolbarPopupContextMenuCallback       ,
    onToolbarPopupContextMenu               ,
    wrap_ToolbarPopupContextMenuCallback    ,


-- ** styleChanged #signal:styleChanged#

    C_ToolbarStyleChangedCallback           ,
    ToolbarStyleChangedCallback             ,
#if defined(ENABLE_OVERLOADING)
    ToolbarStyleChangedSignalInfo           ,
#endif
    afterToolbarStyleChanged                ,
    genClosure_ToolbarStyleChanged          ,
    mk_ToolbarStyleChangedCallback          ,
    noToolbarStyleChangedCallback           ,
    onToolbarStyleChanged                   ,
    wrap_ToolbarStyleChangedCallback        ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.ToolShell as Gtk.ToolShell
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Toolbar = Toolbar (ManagedPtr Toolbar)
    deriving (Eq)
foreign import ccall "gtk_toolbar_get_type"
    c_gtk_toolbar_get_type :: IO GType

instance GObject Toolbar where
    gobjectType = c_gtk_toolbar_get_type
    

-- | Convert 'Toolbar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Toolbar where
    toGValue o = do
        gtype <- c_gtk_toolbar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Toolbar)
        B.ManagedPtr.newObject Toolbar ptr
        
    

-- | Type class for types which can be safely cast to `Toolbar`, for instance with `toToolbar`.
class (GObject o, O.IsDescendantOf Toolbar o) => IsToolbar o
instance (GObject o, O.IsDescendantOf Toolbar o) => IsToolbar o

instance O.HasParentTypes Toolbar
type instance O.ParentTypes Toolbar = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable, Gtk.ToolShell.ToolShell]

-- | Cast to `Toolbar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToolbar :: (MonadIO m, IsToolbar o) => o -> m Toolbar
toToolbar = liftIO . unsafeCastTo Toolbar

-- | A convenience alias for `Nothing` :: `Maybe` `Toolbar`.
noToolbar :: Maybe Toolbar
noToolbar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToolbarMethod (t :: Symbol) (o :: *) :: * where
    ResolveToolbarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveToolbarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveToolbarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveToolbarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToolbarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveToolbarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveToolbarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveToolbarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveToolbarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToolbarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToolbarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveToolbarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveToolbarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveToolbarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveToolbarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveToolbarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveToolbarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveToolbarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveToolbarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveToolbarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveToolbarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToolbarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveToolbarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveToolbarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToolbarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToolbarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToolbarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveToolbarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveToolbarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveToolbarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveToolbarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveToolbarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveToolbarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveToolbarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveToolbarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveToolbarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveToolbarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveToolbarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveToolbarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveToolbarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveToolbarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveToolbarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveToolbarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveToolbarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveToolbarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveToolbarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveToolbarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveToolbarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveToolbarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveToolbarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveToolbarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveToolbarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveToolbarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveToolbarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveToolbarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveToolbarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveToolbarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveToolbarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveToolbarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveToolbarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveToolbarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveToolbarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveToolbarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToolbarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveToolbarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveToolbarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToolbarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToolbarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveToolbarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveToolbarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveToolbarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveToolbarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveToolbarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveToolbarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveToolbarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveToolbarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveToolbarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveToolbarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveToolbarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveToolbarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveToolbarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveToolbarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveToolbarMethod "insert" o = ToolbarInsertMethodInfo
    ResolveToolbarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveToolbarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveToolbarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveToolbarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveToolbarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveToolbarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToolbarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveToolbarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveToolbarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveToolbarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveToolbarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveToolbarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveToolbarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveToolbarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveToolbarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveToolbarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveToolbarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveToolbarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveToolbarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveToolbarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveToolbarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveToolbarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveToolbarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveToolbarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToolbarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToolbarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveToolbarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveToolbarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveToolbarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveToolbarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveToolbarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToolbarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveToolbarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveToolbarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveToolbarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveToolbarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveToolbarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveToolbarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveToolbarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveToolbarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveToolbarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveToolbarMethod "rebuildMenu" o = Gtk.ToolShell.ToolShellRebuildMenuMethodInfo
    ResolveToolbarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToolbarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToolbarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveToolbarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveToolbarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveToolbarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveToolbarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveToolbarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveToolbarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveToolbarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveToolbarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveToolbarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveToolbarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveToolbarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveToolbarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToolbarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveToolbarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveToolbarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveToolbarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveToolbarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveToolbarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveToolbarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveToolbarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveToolbarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveToolbarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToolbarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToolbarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveToolbarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveToolbarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveToolbarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToolbarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveToolbarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveToolbarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveToolbarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveToolbarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveToolbarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToolbarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveToolbarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveToolbarMethod "unsetIconSize" o = ToolbarUnsetIconSizeMethodInfo
    ResolveToolbarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveToolbarMethod "unsetStyle" o = ToolbarUnsetStyleMethodInfo
    ResolveToolbarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToolbarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveToolbarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveToolbarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveToolbarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveToolbarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveToolbarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveToolbarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveToolbarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveToolbarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveToolbarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveToolbarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveToolbarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveToolbarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveToolbarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveToolbarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveToolbarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveToolbarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveToolbarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveToolbarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToolbarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveToolbarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveToolbarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveToolbarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveToolbarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveToolbarMethod "getDropIndex" o = ToolbarGetDropIndexMethodInfo
    ResolveToolbarMethod "getEllipsizeMode" o = Gtk.ToolShell.ToolShellGetEllipsizeModeMethodInfo
    ResolveToolbarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveToolbarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveToolbarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveToolbarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveToolbarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveToolbarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveToolbarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveToolbarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveToolbarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveToolbarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveToolbarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveToolbarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveToolbarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveToolbarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveToolbarMethod "getIconSize" o = ToolbarGetIconSizeMethodInfo
    ResolveToolbarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToolbarMethod "getItemIndex" o = ToolbarGetItemIndexMethodInfo
    ResolveToolbarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveToolbarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveToolbarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveToolbarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveToolbarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveToolbarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveToolbarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveToolbarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveToolbarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveToolbarMethod "getNItems" o = ToolbarGetNItemsMethodInfo
    ResolveToolbarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveToolbarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveToolbarMethod "getNthItem" o = ToolbarGetNthItemMethodInfo
    ResolveToolbarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveToolbarMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveToolbarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveToolbarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveToolbarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveToolbarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveToolbarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveToolbarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveToolbarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveToolbarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveToolbarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveToolbarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveToolbarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveToolbarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveToolbarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToolbarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToolbarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveToolbarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveToolbarMethod "getReliefStyle" o = ToolbarGetReliefStyleMethodInfo
    ResolveToolbarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveToolbarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveToolbarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveToolbarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveToolbarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveToolbarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveToolbarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveToolbarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveToolbarMethod "getShowArrow" o = ToolbarGetShowArrowMethodInfo
    ResolveToolbarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveToolbarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveToolbarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveToolbarMethod "getStyle" o = ToolbarGetStyleMethodInfo
    ResolveToolbarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveToolbarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveToolbarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveToolbarMethod "getTextAlignment" o = Gtk.ToolShell.ToolShellGetTextAlignmentMethodInfo
    ResolveToolbarMethod "getTextOrientation" o = Gtk.ToolShell.ToolShellGetTextOrientationMethodInfo
    ResolveToolbarMethod "getTextSizeGroup" o = Gtk.ToolShell.ToolShellGetTextSizeGroupMethodInfo
    ResolveToolbarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveToolbarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveToolbarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveToolbarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveToolbarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveToolbarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveToolbarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveToolbarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveToolbarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveToolbarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveToolbarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveToolbarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveToolbarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveToolbarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveToolbarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveToolbarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToolbarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveToolbarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveToolbarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveToolbarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveToolbarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveToolbarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToolbarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToolbarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveToolbarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveToolbarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveToolbarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveToolbarMethod "setDropHighlightItem" o = ToolbarSetDropHighlightItemMethodInfo
    ResolveToolbarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveToolbarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveToolbarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveToolbarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveToolbarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveToolbarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveToolbarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveToolbarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveToolbarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveToolbarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveToolbarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveToolbarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveToolbarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveToolbarMethod "setIconSize" o = ToolbarSetIconSizeMethodInfo
    ResolveToolbarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveToolbarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveToolbarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveToolbarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveToolbarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveToolbarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveToolbarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveToolbarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveToolbarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveToolbarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveToolbarMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveToolbarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveToolbarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveToolbarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToolbarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveToolbarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveToolbarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveToolbarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveToolbarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveToolbarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveToolbarMethod "setShowArrow" o = ToolbarSetShowArrowMethodInfo
    ResolveToolbarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveToolbarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveToolbarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveToolbarMethod "setStyle" o = ToolbarSetStyleMethodInfo
    ResolveToolbarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveToolbarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveToolbarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveToolbarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveToolbarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveToolbarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveToolbarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveToolbarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveToolbarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveToolbarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveToolbarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToolbarMethod t Toolbar, O.MethodInfo info Toolbar p) => OL.IsLabel t (Toolbar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Toolbar::focus-home-or-end
-- | A keybinding signal used internally by GTK+. This signal can\'t
-- be used in application code
type ToolbarFocusHomeOrEndCallback =
    Bool
    -- ^ /@focusHome@/: 'P.True' if the first item should be focused
    -> IO Bool
    -- ^ __Returns:__ 'P.True' if the signal was handled, 'P.False' if not

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolbarFocusHomeOrEndCallback`@.
noToolbarFocusHomeOrEndCallback :: Maybe ToolbarFocusHomeOrEndCallback
noToolbarFocusHomeOrEndCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolbarFocusHomeOrEndCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ToolbarFocusHomeOrEndCallback`.
foreign import ccall "wrapper"
    mk_ToolbarFocusHomeOrEndCallback :: C_ToolbarFocusHomeOrEndCallback -> IO (FunPtr C_ToolbarFocusHomeOrEndCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolbarFocusHomeOrEnd :: MonadIO m => ToolbarFocusHomeOrEndCallback -> m (GClosure C_ToolbarFocusHomeOrEndCallback)
genClosure_ToolbarFocusHomeOrEnd cb = liftIO $ do
    let cb' = wrap_ToolbarFocusHomeOrEndCallback cb
    mk_ToolbarFocusHomeOrEndCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolbarFocusHomeOrEndCallback` into a `C_ToolbarFocusHomeOrEndCallback`.
wrap_ToolbarFocusHomeOrEndCallback ::
    ToolbarFocusHomeOrEndCallback ->
    C_ToolbarFocusHomeOrEndCallback
wrap_ToolbarFocusHomeOrEndCallback _cb _ focusHome _ = do
    let focusHome' = (/= 0) focusHome
    result <- _cb  focusHome'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [focusHomeOrEnd](#signal:focusHomeOrEnd) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolbar #focusHomeOrEnd callback
-- @
-- 
-- 
onToolbarFocusHomeOrEnd :: (IsToolbar a, MonadIO m) => a -> ToolbarFocusHomeOrEndCallback -> m SignalHandlerId
onToolbarFocusHomeOrEnd obj cb = liftIO $ do
    let cb' = wrap_ToolbarFocusHomeOrEndCallback cb
    cb'' <- mk_ToolbarFocusHomeOrEndCallback cb'
    connectSignalFunPtr obj "focus-home-or-end" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [focusHomeOrEnd](#signal:focusHomeOrEnd) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolbar #focusHomeOrEnd callback
-- @
-- 
-- 
afterToolbarFocusHomeOrEnd :: (IsToolbar a, MonadIO m) => a -> ToolbarFocusHomeOrEndCallback -> m SignalHandlerId
afterToolbarFocusHomeOrEnd obj cb = liftIO $ do
    let cb' = wrap_ToolbarFocusHomeOrEndCallback cb
    cb'' <- mk_ToolbarFocusHomeOrEndCallback cb'
    connectSignalFunPtr obj "focus-home-or-end" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolbarFocusHomeOrEndSignalInfo
instance SignalInfo ToolbarFocusHomeOrEndSignalInfo where
    type HaskellCallbackType ToolbarFocusHomeOrEndSignalInfo = ToolbarFocusHomeOrEndCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolbarFocusHomeOrEndCallback cb
        cb'' <- mk_ToolbarFocusHomeOrEndCallback cb'
        connectSignalFunPtr obj "focus-home-or-end" cb'' connectMode detail

#endif

-- signal Toolbar::orientation-changed
-- | Emitted when the orientation of the toolbar changes.
type ToolbarOrientationChangedCallback =
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the new t'GI.Gtk.Enums.Orientation' of the toolbar
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolbarOrientationChangedCallback`@.
noToolbarOrientationChangedCallback :: Maybe ToolbarOrientationChangedCallback
noToolbarOrientationChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolbarOrientationChangedCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToolbarOrientationChangedCallback`.
foreign import ccall "wrapper"
    mk_ToolbarOrientationChangedCallback :: C_ToolbarOrientationChangedCallback -> IO (FunPtr C_ToolbarOrientationChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolbarOrientationChanged :: MonadIO m => ToolbarOrientationChangedCallback -> m (GClosure C_ToolbarOrientationChangedCallback)
genClosure_ToolbarOrientationChanged cb = liftIO $ do
    let cb' = wrap_ToolbarOrientationChangedCallback cb
    mk_ToolbarOrientationChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolbarOrientationChangedCallback` into a `C_ToolbarOrientationChangedCallback`.
wrap_ToolbarOrientationChangedCallback ::
    ToolbarOrientationChangedCallback ->
    C_ToolbarOrientationChangedCallback
wrap_ToolbarOrientationChangedCallback _cb _ orientation _ = do
    let orientation' = (toEnum . fromIntegral) orientation
    _cb  orientation'


-- | Connect a signal handler for the [orientationChanged](#signal:orientationChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolbar #orientationChanged callback
-- @
-- 
-- 
onToolbarOrientationChanged :: (IsToolbar a, MonadIO m) => a -> ToolbarOrientationChangedCallback -> m SignalHandlerId
onToolbarOrientationChanged obj cb = liftIO $ do
    let cb' = wrap_ToolbarOrientationChangedCallback cb
    cb'' <- mk_ToolbarOrientationChangedCallback cb'
    connectSignalFunPtr obj "orientation-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [orientationChanged](#signal:orientationChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolbar #orientationChanged callback
-- @
-- 
-- 
afterToolbarOrientationChanged :: (IsToolbar a, MonadIO m) => a -> ToolbarOrientationChangedCallback -> m SignalHandlerId
afterToolbarOrientationChanged obj cb = liftIO $ do
    let cb' = wrap_ToolbarOrientationChangedCallback cb
    cb'' <- mk_ToolbarOrientationChangedCallback cb'
    connectSignalFunPtr obj "orientation-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolbarOrientationChangedSignalInfo
instance SignalInfo ToolbarOrientationChangedSignalInfo where
    type HaskellCallbackType ToolbarOrientationChangedSignalInfo = ToolbarOrientationChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolbarOrientationChangedCallback cb
        cb'' <- mk_ToolbarOrientationChangedCallback cb'
        connectSignalFunPtr obj "orientation-changed" cb'' connectMode detail

#endif

-- signal Toolbar::popup-context-menu
-- | Emitted when the user right-clicks the toolbar or uses the
-- keybinding to display a popup menu.
-- 
-- Application developers should handle this signal if they want
-- to display a context menu on the toolbar. The context-menu should
-- appear at the coordinates given by /@x@/ and /@y@/. The mouse button
-- number is given by the /@button@/ parameter. If the menu was popped
-- up using the keybaord, /@button@/ is -1.
type ToolbarPopupContextMenuCallback =
    Int32
    -- ^ /@x@/: the x coordinate of the point where the menu should appear
    -> Int32
    -- ^ /@y@/: the y coordinate of the point where the menu should appear
    -> Int32
    -- ^ /@button@/: the mouse button the user pressed, or -1
    -> IO Bool
    -- ^ __Returns:__ return 'P.True' if the signal was handled, 'P.False' if not

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolbarPopupContextMenuCallback`@.
noToolbarPopupContextMenuCallback :: Maybe ToolbarPopupContextMenuCallback
noToolbarPopupContextMenuCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolbarPopupContextMenuCallback =
    Ptr () ->                               -- object
    Int32 ->
    Int32 ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ToolbarPopupContextMenuCallback`.
foreign import ccall "wrapper"
    mk_ToolbarPopupContextMenuCallback :: C_ToolbarPopupContextMenuCallback -> IO (FunPtr C_ToolbarPopupContextMenuCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolbarPopupContextMenu :: MonadIO m => ToolbarPopupContextMenuCallback -> m (GClosure C_ToolbarPopupContextMenuCallback)
genClosure_ToolbarPopupContextMenu cb = liftIO $ do
    let cb' = wrap_ToolbarPopupContextMenuCallback cb
    mk_ToolbarPopupContextMenuCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolbarPopupContextMenuCallback` into a `C_ToolbarPopupContextMenuCallback`.
wrap_ToolbarPopupContextMenuCallback ::
    ToolbarPopupContextMenuCallback ->
    C_ToolbarPopupContextMenuCallback
wrap_ToolbarPopupContextMenuCallback _cb _ x y button _ = do
    result <- _cb  x y button
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [popupContextMenu](#signal:popupContextMenu) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolbar #popupContextMenu callback
-- @
-- 
-- 
onToolbarPopupContextMenu :: (IsToolbar a, MonadIO m) => a -> ToolbarPopupContextMenuCallback -> m SignalHandlerId
onToolbarPopupContextMenu obj cb = liftIO $ do
    let cb' = wrap_ToolbarPopupContextMenuCallback cb
    cb'' <- mk_ToolbarPopupContextMenuCallback cb'
    connectSignalFunPtr obj "popup-context-menu" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [popupContextMenu](#signal:popupContextMenu) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolbar #popupContextMenu callback
-- @
-- 
-- 
afterToolbarPopupContextMenu :: (IsToolbar a, MonadIO m) => a -> ToolbarPopupContextMenuCallback -> m SignalHandlerId
afterToolbarPopupContextMenu obj cb = liftIO $ do
    let cb' = wrap_ToolbarPopupContextMenuCallback cb
    cb'' <- mk_ToolbarPopupContextMenuCallback cb'
    connectSignalFunPtr obj "popup-context-menu" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolbarPopupContextMenuSignalInfo
instance SignalInfo ToolbarPopupContextMenuSignalInfo where
    type HaskellCallbackType ToolbarPopupContextMenuSignalInfo = ToolbarPopupContextMenuCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolbarPopupContextMenuCallback cb
        cb'' <- mk_ToolbarPopupContextMenuCallback cb'
        connectSignalFunPtr obj "popup-context-menu" cb'' connectMode detail

#endif

-- signal Toolbar::style-changed
-- | Emitted when the style of the toolbar changes.
type ToolbarStyleChangedCallback =
    Gtk.Enums.ToolbarStyle
    -- ^ /@style@/: the new t'GI.Gtk.Enums.ToolbarStyle' of the toolbar
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolbarStyleChangedCallback`@.
noToolbarStyleChangedCallback :: Maybe ToolbarStyleChangedCallback
noToolbarStyleChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolbarStyleChangedCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToolbarStyleChangedCallback`.
foreign import ccall "wrapper"
    mk_ToolbarStyleChangedCallback :: C_ToolbarStyleChangedCallback -> IO (FunPtr C_ToolbarStyleChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolbarStyleChanged :: MonadIO m => ToolbarStyleChangedCallback -> m (GClosure C_ToolbarStyleChangedCallback)
genClosure_ToolbarStyleChanged cb = liftIO $ do
    let cb' = wrap_ToolbarStyleChangedCallback cb
    mk_ToolbarStyleChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolbarStyleChangedCallback` into a `C_ToolbarStyleChangedCallback`.
wrap_ToolbarStyleChangedCallback ::
    ToolbarStyleChangedCallback ->
    C_ToolbarStyleChangedCallback
wrap_ToolbarStyleChangedCallback _cb _ style _ = do
    let style' = (toEnum . fromIntegral) style
    _cb  style'


-- | Connect a signal handler for the [styleChanged](#signal:styleChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolbar #styleChanged callback
-- @
-- 
-- 
onToolbarStyleChanged :: (IsToolbar a, MonadIO m) => a -> ToolbarStyleChangedCallback -> m SignalHandlerId
onToolbarStyleChanged obj cb = liftIO $ do
    let cb' = wrap_ToolbarStyleChangedCallback cb
    cb'' <- mk_ToolbarStyleChangedCallback cb'
    connectSignalFunPtr obj "style-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [styleChanged](#signal:styleChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolbar #styleChanged callback
-- @
-- 
-- 
afterToolbarStyleChanged :: (IsToolbar a, MonadIO m) => a -> ToolbarStyleChangedCallback -> m SignalHandlerId
afterToolbarStyleChanged obj cb = liftIO $ do
    let cb' = wrap_ToolbarStyleChangedCallback cb
    cb'' <- mk_ToolbarStyleChangedCallback cb'
    connectSignalFunPtr obj "style-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolbarStyleChangedSignalInfo
instance SignalInfo ToolbarStyleChangedSignalInfo where
    type HaskellCallbackType ToolbarStyleChangedSignalInfo = ToolbarStyleChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolbarStyleChangedCallback cb
        cb'' <- mk_ToolbarStyleChangedCallback cb'
        connectSignalFunPtr obj "style-changed" cb'' connectMode detail

#endif

-- VVV Prop "icon-size"
   -- Type: TInterface (Name {namespace = "Gtk", name = "IconSize"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@icon-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolbar #iconSize
-- @
getToolbarIconSize :: (MonadIO m, IsToolbar o) => o -> m Gtk.Enums.IconSize
getToolbarIconSize obj = liftIO $ B.Properties.getObjectPropertyEnum obj "icon-size"

-- | Set the value of the “@icon-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolbar [ #iconSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolbarIconSize :: (MonadIO m, IsToolbar o) => o -> Gtk.Enums.IconSize -> m ()
setToolbarIconSize obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "icon-size" val

-- | Construct a `GValueConstruct` with valid value for the “@icon-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolbarIconSize :: (IsToolbar o) => Gtk.Enums.IconSize -> IO (GValueConstruct o)
constructToolbarIconSize val = B.Properties.constructObjectPropertyEnum "icon-size" val

#if defined(ENABLE_OVERLOADING)
data ToolbarIconSizePropertyInfo
instance AttrInfo ToolbarIconSizePropertyInfo where
    type AttrAllowedOps ToolbarIconSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolbarIconSizePropertyInfo = IsToolbar
    type AttrSetTypeConstraint ToolbarIconSizePropertyInfo = (~) Gtk.Enums.IconSize
    type AttrTransferTypeConstraint ToolbarIconSizePropertyInfo = (~) Gtk.Enums.IconSize
    type AttrTransferType ToolbarIconSizePropertyInfo = Gtk.Enums.IconSize
    type AttrGetType ToolbarIconSizePropertyInfo = Gtk.Enums.IconSize
    type AttrLabel ToolbarIconSizePropertyInfo = "icon-size"
    type AttrOrigin ToolbarIconSizePropertyInfo = Toolbar
    attrGet = getToolbarIconSize
    attrSet = setToolbarIconSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolbarIconSize
    attrClear = undefined
#endif

-- VVV Prop "icon-size-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@icon-size-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolbar #iconSizeSet
-- @
getToolbarIconSizeSet :: (MonadIO m, IsToolbar o) => o -> m Bool
getToolbarIconSizeSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "icon-size-set"

-- | Set the value of the “@icon-size-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolbar [ #iconSizeSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolbarIconSizeSet :: (MonadIO m, IsToolbar o) => o -> Bool -> m ()
setToolbarIconSizeSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "icon-size-set" val

-- | Construct a `GValueConstruct` with valid value for the “@icon-size-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolbarIconSizeSet :: (IsToolbar o) => Bool -> IO (GValueConstruct o)
constructToolbarIconSizeSet val = B.Properties.constructObjectPropertyBool "icon-size-set" val

#if defined(ENABLE_OVERLOADING)
data ToolbarIconSizeSetPropertyInfo
instance AttrInfo ToolbarIconSizeSetPropertyInfo where
    type AttrAllowedOps ToolbarIconSizeSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolbarIconSizeSetPropertyInfo = IsToolbar
    type AttrSetTypeConstraint ToolbarIconSizeSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolbarIconSizeSetPropertyInfo = (~) Bool
    type AttrTransferType ToolbarIconSizeSetPropertyInfo = Bool
    type AttrGetType ToolbarIconSizeSetPropertyInfo = Bool
    type AttrLabel ToolbarIconSizeSetPropertyInfo = "icon-size-set"
    type AttrOrigin ToolbarIconSizeSetPropertyInfo = Toolbar
    attrGet = getToolbarIconSizeSet
    attrSet = setToolbarIconSizeSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolbarIconSizeSet
    attrClear = undefined
#endif

-- VVV Prop "show-arrow"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-arrow@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolbar #showArrow
-- @
getToolbarShowArrow :: (MonadIO m, IsToolbar o) => o -> m Bool
getToolbarShowArrow obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-arrow"

-- | Set the value of the “@show-arrow@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolbar [ #showArrow 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolbarShowArrow :: (MonadIO m, IsToolbar o) => o -> Bool -> m ()
setToolbarShowArrow obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-arrow" val

-- | Construct a `GValueConstruct` with valid value for the “@show-arrow@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolbarShowArrow :: (IsToolbar o) => Bool -> IO (GValueConstruct o)
constructToolbarShowArrow val = B.Properties.constructObjectPropertyBool "show-arrow" val

#if defined(ENABLE_OVERLOADING)
data ToolbarShowArrowPropertyInfo
instance AttrInfo ToolbarShowArrowPropertyInfo where
    type AttrAllowedOps ToolbarShowArrowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolbarShowArrowPropertyInfo = IsToolbar
    type AttrSetTypeConstraint ToolbarShowArrowPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolbarShowArrowPropertyInfo = (~) Bool
    type AttrTransferType ToolbarShowArrowPropertyInfo = Bool
    type AttrGetType ToolbarShowArrowPropertyInfo = Bool
    type AttrLabel ToolbarShowArrowPropertyInfo = "show-arrow"
    type AttrOrigin ToolbarShowArrowPropertyInfo = Toolbar
    attrGet = getToolbarShowArrow
    attrSet = setToolbarShowArrow
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolbarShowArrow
    attrClear = undefined
#endif

-- VVV Prop "toolbar-style"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ToolbarStyle"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@toolbar-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolbar #toolbarStyle
-- @
getToolbarToolbarStyle :: (MonadIO m, IsToolbar o) => o -> m Gtk.Enums.ToolbarStyle
getToolbarToolbarStyle obj = liftIO $ B.Properties.getObjectPropertyEnum obj "toolbar-style"

-- | Set the value of the “@toolbar-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolbar [ #toolbarStyle 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolbarToolbarStyle :: (MonadIO m, IsToolbar o) => o -> Gtk.Enums.ToolbarStyle -> m ()
setToolbarToolbarStyle obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "toolbar-style" val

-- | Construct a `GValueConstruct` with valid value for the “@toolbar-style@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolbarToolbarStyle :: (IsToolbar o) => Gtk.Enums.ToolbarStyle -> IO (GValueConstruct o)
constructToolbarToolbarStyle val = B.Properties.constructObjectPropertyEnum "toolbar-style" val

#if defined(ENABLE_OVERLOADING)
data ToolbarToolbarStylePropertyInfo
instance AttrInfo ToolbarToolbarStylePropertyInfo where
    type AttrAllowedOps ToolbarToolbarStylePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolbarToolbarStylePropertyInfo = IsToolbar
    type AttrSetTypeConstraint ToolbarToolbarStylePropertyInfo = (~) Gtk.Enums.ToolbarStyle
    type AttrTransferTypeConstraint ToolbarToolbarStylePropertyInfo = (~) Gtk.Enums.ToolbarStyle
    type AttrTransferType ToolbarToolbarStylePropertyInfo = Gtk.Enums.ToolbarStyle
    type AttrGetType ToolbarToolbarStylePropertyInfo = Gtk.Enums.ToolbarStyle
    type AttrLabel ToolbarToolbarStylePropertyInfo = "toolbar-style"
    type AttrOrigin ToolbarToolbarStylePropertyInfo = Toolbar
    attrGet = getToolbarToolbarStyle
    attrSet = setToolbarToolbarStyle
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolbarToolbarStyle
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Toolbar
type instance O.AttributeList Toolbar = ToolbarAttributeList
type ToolbarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("iconSize", ToolbarIconSizePropertyInfo), '("iconSizeSet", ToolbarIconSizeSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showArrow", ToolbarShowArrowPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("toolbarStyle", ToolbarToolbarStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toolbarIconSize :: AttrLabelProxy "iconSize"
toolbarIconSize = AttrLabelProxy

toolbarIconSizeSet :: AttrLabelProxy "iconSizeSet"
toolbarIconSizeSet = AttrLabelProxy

toolbarShowArrow :: AttrLabelProxy "showArrow"
toolbarShowArrow = AttrLabelProxy

toolbarToolbarStyle :: AttrLabelProxy "toolbarStyle"
toolbarToolbarStyle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Toolbar = ToolbarSignalList
type ToolbarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusHomeOrEnd", ToolbarFocusHomeOrEndSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("orientationChanged", ToolbarOrientationChangedSignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupContextMenu", ToolbarPopupContextMenuSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleChanged", ToolbarStyleChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Toolbar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Toolbar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toolbar_new" gtk_toolbar_new :: 
    IO (Ptr Toolbar)

-- | Creates a new toolbar.
toolbarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Toolbar
    -- ^ __Returns:__ the newly-created toolbar.
toolbarNew  = liftIO $ do
    result <- gtk_toolbar_new
    checkUnexpectedReturnNULL "toolbarNew" result
    result' <- (newObject Toolbar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Toolbar::get_drop_index
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "x coordinate of a point on the toolbar"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "y coordinate of a point on the toolbar"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toolbar_get_drop_index" gtk_toolbar_get_drop_index :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    Int32 ->                                -- x : TBasicType TInt
    Int32 ->                                -- y : TBasicType TInt
    IO Int32

-- | Returns the position corresponding to the indicated point on
-- /@toolbar@/. This is useful when dragging items to the toolbar:
-- this function returns the position a new item should be
-- inserted.
-- 
-- /@x@/ and /@y@/ are in /@toolbar@/ coordinates.
-- 
-- /Since: 2.4/
toolbarGetDropIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> Int32
    -- ^ /@x@/: x coordinate of a point on the toolbar
    -> Int32
    -- ^ /@y@/: y coordinate of a point on the toolbar
    -> m Int32
    -- ^ __Returns:__ The position corresponding to the point (/@x@/, /@y@/) on the toolbar.
toolbarGetDropIndex toolbar x y = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_drop_index toolbar' x y
    touchManagedPtr toolbar
    return result

#if defined(ENABLE_OVERLOADING)
data ToolbarGetDropIndexMethodInfo
instance (signature ~ (Int32 -> Int32 -> m Int32), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetDropIndexMethodInfo a signature where
    overloadedMethod = toolbarGetDropIndex

#endif

-- method Toolbar::get_icon_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "IconSize" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toolbar_get_icon_size" gtk_toolbar_get_icon_size :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO CUInt

-- | Retrieves the icon size for the toolbar. See 'GI.Gtk.Objects.Toolbar.toolbarSetIconSize'.
toolbarGetIconSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m Gtk.Enums.IconSize
    -- ^ __Returns:__ the current icon size for the icons on the toolbar.
toolbarGetIconSize toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_icon_size toolbar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolbarGetIconSizeMethodInfo
instance (signature ~ (m Gtk.Enums.IconSize), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetIconSizeMethodInfo a signature where
    overloadedMethod = toolbarGetIconSize

#endif

-- method Toolbar::get_item_index
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkToolItem that is a child of @toolbar"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toolbar_get_item_index" gtk_toolbar_get_item_index :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    Ptr Gtk.ToolItem.ToolItem ->            -- item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    IO Int32

-- | Returns the position of /@item@/ on the toolbar, starting from 0.
-- It is an error if /@item@/ is not a child of the toolbar.
-- 
-- /Since: 2.4/
toolbarGetItemIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> b
    -- ^ /@item@/: a t'GI.Gtk.Objects.ToolItem.ToolItem' that is a child of /@toolbar@/
    -> m Int32
    -- ^ __Returns:__ the position of item on the toolbar.
toolbarGetItemIndex toolbar item = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    item' <- unsafeManagedPtrCastPtr item
    result <- gtk_toolbar_get_item_index toolbar' item'
    touchManagedPtr toolbar
    touchManagedPtr item
    return result

#if defined(ENABLE_OVERLOADING)
data ToolbarGetItemIndexMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolbarGetItemIndexMethodInfo a signature where
    overloadedMethod = toolbarGetItemIndex

#endif

-- method Toolbar::get_n_items
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_get_n_items" gtk_toolbar_get_n_items :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO Int32

-- | Returns the number of items on the toolbar.
-- 
-- /Since: 2.4/
toolbarGetNItems ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m Int32
    -- ^ __Returns:__ the number of items on the toolbar
toolbarGetNItems toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_n_items toolbar'
    touchManagedPtr toolbar
    return result

#if defined(ENABLE_OVERLOADING)
data ToolbarGetNItemsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetNItemsMethodInfo a signature where
    overloadedMethod = toolbarGetNItems

#endif

-- method Toolbar::get_nth_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A position on the toolbar"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_toolbar_get_nth_item" gtk_toolbar_get_nth_item :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    Int32 ->                                -- n : TBasicType TInt
    IO (Ptr Gtk.ToolItem.ToolItem)

-- | Returns the /@n@/\'th item on /@toolbar@/, or 'P.Nothing' if the
-- toolbar does not contain an /@n@/\'th item.
-- 
-- /Since: 2.4/
toolbarGetNthItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> Int32
    -- ^ /@n@/: A position on the toolbar
    -> m (Maybe Gtk.ToolItem.ToolItem)
    -- ^ __Returns:__ The /@n@/\'th t'GI.Gtk.Objects.ToolItem.ToolItem' on /@toolbar@/,
    --     or 'P.Nothing' if there isn’t an /@n@/\'th item.
toolbarGetNthItem toolbar n = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_nth_item toolbar' n
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.ToolItem.ToolItem) result'
        return result''
    touchManagedPtr toolbar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolbarGetNthItemMethodInfo
instance (signature ~ (Int32 -> m (Maybe Gtk.ToolItem.ToolItem)), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetNthItemMethodInfo a signature where
    overloadedMethod = toolbarGetNthItem

#endif

-- method Toolbar::get_relief_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_get_relief_style" gtk_toolbar_get_relief_style :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO CUInt

-- | Returns the relief style of buttons on /@toolbar@/. See
-- 'GI.Gtk.Objects.Button.buttonSetRelief'.
-- 
-- /Since: 2.4/
toolbarGetReliefStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m Gtk.Enums.ReliefStyle
    -- ^ __Returns:__ The relief style of buttons on /@toolbar@/.
toolbarGetReliefStyle toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_relief_style toolbar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolbarGetReliefStyleMethodInfo
instance (signature ~ (m Gtk.Enums.ReliefStyle), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetReliefStyleMethodInfo a signature where
    overloadedMethod = toolbarGetReliefStyle

#endif

-- method Toolbar::get_show_arrow
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_get_show_arrow" gtk_toolbar_get_show_arrow :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO CInt

-- | Returns whether the toolbar has an overflow menu.
-- See 'GI.Gtk.Objects.Toolbar.toolbarSetShowArrow'.
-- 
-- /Since: 2.4/
toolbarGetShowArrow ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the toolbar has an overflow menu.
toolbarGetShowArrow toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_show_arrow toolbar'
    let result' = (/= 0) result
    touchManagedPtr toolbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolbarGetShowArrowMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetShowArrowMethodInfo a signature where
    overloadedMethod = toolbarGetShowArrow

#endif

-- method Toolbar::get_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_get_style" gtk_toolbar_get_style :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO CUInt

-- | Retrieves whether the toolbar has text, icons, or both . See
-- 'GI.Gtk.Objects.Toolbar.toolbarSetStyle'.
toolbarGetStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m Gtk.Enums.ToolbarStyle
    -- ^ __Returns:__ the current style of /@toolbar@/
toolbarGetStyle toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    result <- gtk_toolbar_get_style toolbar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr toolbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolbarGetStyleMethodInfo
instance (signature ~ (m Gtk.Enums.ToolbarStyle), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarGetStyleMethodInfo a signature where
    overloadedMethod = toolbarGetStyle

#endif

-- method Toolbar::insert
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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
--       , Arg
--           { argCName = "pos"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the position of the new item"
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

foreign import ccall "gtk_toolbar_insert" gtk_toolbar_insert :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    Ptr Gtk.ToolItem.ToolItem ->            -- item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    Int32 ->                                -- pos : TBasicType TInt
    IO ()

-- | Insert a t'GI.Gtk.Objects.ToolItem.ToolItem' into the toolbar at position /@pos@/. If /@pos@/ is
-- 0 the item is prepended to the start of the toolbar. If /@pos@/ is
-- negative, the item is appended to the end of the toolbar.
-- 
-- /Since: 2.4/
toolbarInsert ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> b
    -- ^ /@item@/: a t'GI.Gtk.Objects.ToolItem.ToolItem'
    -> Int32
    -- ^ /@pos@/: the position of the new item
    -> m ()
toolbarInsert toolbar item pos = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    item' <- unsafeManagedPtrCastPtr item
    gtk_toolbar_insert toolbar' item' pos
    touchManagedPtr toolbar
    touchManagedPtr item
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarInsertMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolbarInsertMethodInfo a signature where
    overloadedMethod = toolbarInsert

#endif

-- method Toolbar::set_drop_highlight_item
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tool_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolItem" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkToolItem, or %NULL to turn of highlighting"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "index_"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a position on @toolbar"
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

foreign import ccall "gtk_toolbar_set_drop_highlight_item" gtk_toolbar_set_drop_highlight_item :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    Ptr Gtk.ToolItem.ToolItem ->            -- tool_item : TInterface (Name {namespace = "Gtk", name = "ToolItem"})
    Int32 ->                                -- index_ : TBasicType TInt
    IO ()

-- | Highlights /@toolbar@/ to give an idea of what it would look like
-- if /@item@/ was added to /@toolbar@/ at the position indicated by /@index_@/.
-- If /@item@/ is 'P.Nothing', highlighting is turned off. In that case /@index_@/
-- is ignored.
-- 
-- The /@toolItem@/ passed to this function must not be part of any widget
-- hierarchy. When an item is set as drop highlight item it can not
-- added to any widget hierarchy or used as highlight item for another
-- toolbar.
-- 
-- /Since: 2.4/
toolbarSetDropHighlightItem ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> Maybe (b)
    -- ^ /@toolItem@/: a t'GI.Gtk.Objects.ToolItem.ToolItem', or 'P.Nothing' to turn of highlighting
    -> Int32
    -- ^ /@index_@/: a position on /@toolbar@/
    -> m ()
toolbarSetDropHighlightItem toolbar toolItem index_ = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    maybeToolItem <- case toolItem of
        Nothing -> return nullPtr
        Just jToolItem -> do
            jToolItem' <- unsafeManagedPtrCastPtr jToolItem
            return jToolItem'
    gtk_toolbar_set_drop_highlight_item toolbar' maybeToolItem index_
    touchManagedPtr toolbar
    whenJust toolItem touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarSetDropHighlightItemMethodInfo
instance (signature ~ (Maybe (b) -> Int32 -> m ()), MonadIO m, IsToolbar a, Gtk.ToolItem.IsToolItem b) => O.MethodInfo ToolbarSetDropHighlightItemMethodInfo a signature where
    overloadedMethod = toolbarSetDropHighlightItem

#endif

-- method Toolbar::set_icon_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkToolbar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon_size"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "IconSize" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #GtkIconSize that stock icons in the toolbar shall have."
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

foreign import ccall "gtk_toolbar_set_icon_size" gtk_toolbar_set_icon_size :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    CUInt ->                                -- icon_size : TInterface (Name {namespace = "Gtk", name = "IconSize"})
    IO ()

-- | This function sets the size of stock icons in the toolbar. You
-- can call it both before you add the icons and after they’ve been
-- added. The size you set will override user preferences for the default
-- icon size.
-- 
-- This should only be used for special-purpose toolbars, normal
-- application toolbars should respect the user preferences for the
-- size of icons.
toolbarSetIconSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: A t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> Gtk.Enums.IconSize
    -- ^ /@iconSize@/: The t'GI.Gtk.Enums.IconSize' that stock icons in the toolbar shall have.
    -> m ()
toolbarSetIconSize toolbar iconSize = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    let iconSize' = (fromIntegral . fromEnum) iconSize
    gtk_toolbar_set_icon_size toolbar' iconSize'
    touchManagedPtr toolbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarSetIconSizeMethodInfo
instance (signature ~ (Gtk.Enums.IconSize -> m ()), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarSetIconSizeMethodInfo a signature where
    overloadedMethod = toolbarSetIconSize

#endif

-- method Toolbar::set_show_arrow
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_arrow"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Whether to show an overflow menu"
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

foreign import ccall "gtk_toolbar_set_show_arrow" gtk_toolbar_set_show_arrow :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    CInt ->                                 -- show_arrow : TBasicType TBoolean
    IO ()

-- | Sets whether to show an overflow menu when /@toolbar@/ isn’t allocated enough
-- size to show all of its items. If 'P.True', items which can’t fit in /@toolbar@/,
-- and which have a proxy menu item set by 'GI.Gtk.Objects.ToolItem.toolItemSetProxyMenuItem'
-- or [createMenuProxy]("GI.Gtk.Objects.ToolItem#signal:createMenuProxy"), will be available in an overflow menu,
-- which can be opened by an added arrow button. If 'P.False', /@toolbar@/ will
-- request enough size to fit all of its child items without any overflow.
-- 
-- /Since: 2.4/
toolbarSetShowArrow ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> Bool
    -- ^ /@showArrow@/: Whether to show an overflow menu
    -> m ()
toolbarSetShowArrow toolbar showArrow = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    let showArrow' = (fromIntegral . fromEnum) showArrow
    gtk_toolbar_set_show_arrow toolbar' showArrow'
    touchManagedPtr toolbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarSetShowArrowMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarSetShowArrowMethodInfo a signature where
    overloadedMethod = toolbarSetShowArrow

#endif

-- method Toolbar::set_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "style"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolbarStyle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new style for @toolbar."
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

foreign import ccall "gtk_toolbar_set_style" gtk_toolbar_set_style :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    CUInt ->                                -- style : TInterface (Name {namespace = "Gtk", name = "ToolbarStyle"})
    IO ()

-- | Alters the view of /@toolbar@/ to display either icons only, text only, or both.
toolbarSetStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'.
    -> Gtk.Enums.ToolbarStyle
    -- ^ /@style@/: the new style for /@toolbar@/.
    -> m ()
toolbarSetStyle toolbar style = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    let style' = (fromIntegral . fromEnum) style
    gtk_toolbar_set_style toolbar' style'
    touchManagedPtr toolbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarSetStyleMethodInfo
instance (signature ~ (Gtk.Enums.ToolbarStyle -> m ()), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarSetStyleMethodInfo a signature where
    overloadedMethod = toolbarSetStyle

#endif

-- method Toolbar::unset_icon_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_unset_icon_size" gtk_toolbar_unset_icon_size :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO ()

-- | Unsets toolbar icon size set with 'GI.Gtk.Objects.Toolbar.toolbarSetIconSize', so that
-- user preferences will be used to determine the icon size.
toolbarUnsetIconSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m ()
toolbarUnsetIconSize toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    gtk_toolbar_unset_icon_size toolbar'
    touchManagedPtr toolbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarUnsetIconSizeMethodInfo
instance (signature ~ (m ()), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarUnsetIconSizeMethodInfo a signature where
    overloadedMethod = toolbarUnsetIconSize

#endif

-- method Toolbar::unset_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "toolbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Toolbar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolbar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_toolbar_unset_style" gtk_toolbar_unset_style :: 
    Ptr Toolbar ->                          -- toolbar : TInterface (Name {namespace = "Gtk", name = "Toolbar"})
    IO ()

-- | Unsets a toolbar style set with 'GI.Gtk.Objects.Toolbar.toolbarSetStyle', so that
-- user preferences will be used to determine the toolbar style.
toolbarUnsetStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolbar a) =>
    a
    -- ^ /@toolbar@/: a t'GI.Gtk.Objects.Toolbar.Toolbar'
    -> m ()
toolbarUnsetStyle toolbar = liftIO $ do
    toolbar' <- unsafeManagedPtrCastPtr toolbar
    gtk_toolbar_unset_style toolbar'
    touchManagedPtr toolbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolbarUnsetStyleMethodInfo
instance (signature ~ (m ()), MonadIO m, IsToolbar a) => O.MethodInfo ToolbarUnsetStyleMethodInfo a signature where
    overloadedMethod = toolbarUnsetStyle

#endif

