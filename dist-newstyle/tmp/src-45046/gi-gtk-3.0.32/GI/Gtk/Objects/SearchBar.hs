{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.SearchBar.SearchBar' is a container made to have a search entry (possibly
-- with additional connex widgets, such as drop-down menus, or buttons)
-- built-in. The search bar would appear when a search is started through
-- typing on the keyboard, or the application’s search mode is toggled on.
-- 
-- For keyboard presses to start a search, events will need to be
-- forwarded from the top-level window that contains the search bar.
-- See 'GI.Gtk.Objects.SearchBar.searchBarHandleEvent' for example code. Common shortcuts
-- such as Ctrl+F should be handled as an application action, or through
-- the menu items.
-- 
-- You will also need to tell the search bar about which entry you
-- are using as your search entry using 'GI.Gtk.Objects.SearchBar.searchBarConnectEntry'.
-- The following example shows you how to create a more complex search
-- entry.
-- 
-- = CSS nodes
-- 
-- GtkSearchBar has a single CSS node with name searchbar.
-- 
-- == Creating a search bar
-- 
-- <https://gitlab.gnome.org/GNOME/gtk/blob/gtk-3-24/examples/search-bar.c A simple example>
-- 
-- /Since: 3.10/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SearchBar
    ( 

-- * Exported types
    SearchBar(..)                           ,
    IsSearchBar                             ,
    toSearchBar                             ,
    noSearchBar                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSearchBarMethod                  ,
#endif


-- ** connectEntry #method:connectEntry#

#if defined(ENABLE_OVERLOADING)
    SearchBarConnectEntryMethodInfo         ,
#endif
    searchBarConnectEntry                   ,


-- ** getSearchMode #method:getSearchMode#

#if defined(ENABLE_OVERLOADING)
    SearchBarGetSearchModeMethodInfo        ,
#endif
    searchBarGetSearchMode                  ,


-- ** getShowCloseButton #method:getShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    SearchBarGetShowCloseButtonMethodInfo   ,
#endif
    searchBarGetShowCloseButton             ,


-- ** handleEvent #method:handleEvent#

#if defined(ENABLE_OVERLOADING)
    SearchBarHandleEventMethodInfo          ,
#endif
    searchBarHandleEvent                    ,


-- ** new #method:new#

    searchBarNew                            ,


-- ** setSearchMode #method:setSearchMode#

#if defined(ENABLE_OVERLOADING)
    SearchBarSetSearchModeMethodInfo        ,
#endif
    searchBarSetSearchMode                  ,


-- ** setShowCloseButton #method:setShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    SearchBarSetShowCloseButtonMethodInfo   ,
#endif
    searchBarSetShowCloseButton             ,




 -- * Properties
-- ** searchModeEnabled #attr:searchModeEnabled#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SearchBarSearchModeEnabledPropertyInfo  ,
#endif
    constructSearchBarSearchModeEnabled     ,
    getSearchBarSearchModeEnabled           ,
#if defined(ENABLE_OVERLOADING)
    searchBarSearchModeEnabled              ,
#endif
    setSearchBarSearchModeEnabled           ,


-- ** showCloseButton #attr:showCloseButton#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SearchBarShowCloseButtonPropertyInfo    ,
#endif
    constructSearchBarShowCloseButton       ,
    getSearchBarShowCloseButton             ,
#if defined(ENABLE_OVERLOADING)
    searchBarShowCloseButton                ,
#endif
    setSearchBarShowCloseButton             ,




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
import qualified GI.Gdk.Unions.Event as Gdk.Event
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Entry as Gtk.Entry
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype SearchBar = SearchBar (ManagedPtr SearchBar)
    deriving (Eq)
foreign import ccall "gtk_search_bar_get_type"
    c_gtk_search_bar_get_type :: IO GType

instance GObject SearchBar where
    gobjectType = c_gtk_search_bar_get_type
    

-- | Convert 'SearchBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SearchBar where
    toGValue o = do
        gtype <- c_gtk_search_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SearchBar)
        B.ManagedPtr.newObject SearchBar ptr
        
    

-- | Type class for types which can be safely cast to `SearchBar`, for instance with `toSearchBar`.
class (GObject o, O.IsDescendantOf SearchBar o) => IsSearchBar o
instance (GObject o, O.IsDescendantOf SearchBar o) => IsSearchBar o

instance O.HasParentTypes SearchBar
type instance O.ParentTypes SearchBar = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `SearchBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSearchBar :: (MonadIO m, IsSearchBar o) => o -> m SearchBar
toSearchBar = liftIO . unsafeCastTo SearchBar

-- | A convenience alias for `Nothing` :: `Maybe` `SearchBar`.
noSearchBar :: Maybe SearchBar
noSearchBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSearchBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveSearchBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSearchBarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveSearchBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSearchBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSearchBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSearchBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSearchBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSearchBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSearchBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSearchBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSearchBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSearchBarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveSearchBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSearchBarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveSearchBarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveSearchBarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveSearchBarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveSearchBarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveSearchBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSearchBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSearchBarMethod "connectEntry" o = SearchBarConnectEntryMethodInfo
    ResolveSearchBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSearchBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSearchBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSearchBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSearchBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSearchBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSearchBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSearchBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSearchBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSearchBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSearchBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSearchBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSearchBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSearchBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSearchBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSearchBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSearchBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSearchBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSearchBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSearchBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSearchBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSearchBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSearchBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSearchBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSearchBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSearchBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSearchBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSearchBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSearchBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSearchBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSearchBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSearchBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSearchBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSearchBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSearchBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSearchBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSearchBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSearchBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSearchBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSearchBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSearchBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSearchBarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveSearchBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSearchBarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveSearchBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSearchBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSearchBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSearchBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSearchBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSearchBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSearchBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSearchBarMethod "handleEvent" o = SearchBarHandleEventMethodInfo
    ResolveSearchBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSearchBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSearchBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSearchBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSearchBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSearchBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSearchBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSearchBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSearchBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSearchBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSearchBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSearchBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSearchBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSearchBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSearchBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSearchBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSearchBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSearchBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSearchBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSearchBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSearchBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSearchBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSearchBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSearchBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSearchBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSearchBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSearchBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSearchBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSearchBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSearchBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSearchBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSearchBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSearchBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSearchBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSearchBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSearchBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSearchBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSearchBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSearchBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSearchBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSearchBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSearchBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSearchBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSearchBarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveSearchBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSearchBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSearchBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSearchBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSearchBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSearchBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSearchBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSearchBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSearchBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSearchBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSearchBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSearchBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSearchBarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveSearchBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSearchBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSearchBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSearchBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSearchBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSearchBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSearchBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSearchBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSearchBarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveSearchBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSearchBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSearchBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSearchBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSearchBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSearchBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSearchBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSearchBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSearchBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSearchBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSearchBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSearchBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSearchBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSearchBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSearchBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSearchBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSearchBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSearchBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSearchBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSearchBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSearchBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSearchBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSearchBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSearchBarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveSearchBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSearchBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSearchBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSearchBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSearchBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSearchBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSearchBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSearchBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSearchBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSearchBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSearchBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSearchBarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveSearchBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSearchBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSearchBarMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveSearchBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSearchBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSearchBarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveSearchBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSearchBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSearchBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSearchBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSearchBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSearchBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSearchBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSearchBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSearchBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSearchBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSearchBarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveSearchBarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveSearchBarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveSearchBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSearchBarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveSearchBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSearchBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSearchBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSearchBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSearchBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSearchBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSearchBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSearchBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSearchBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSearchBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSearchBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSearchBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSearchBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSearchBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSearchBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSearchBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSearchBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSearchBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSearchBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSearchBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSearchBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSearchBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSearchBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSearchBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSearchBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSearchBarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveSearchBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSearchBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSearchBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSearchBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSearchBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSearchBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSearchBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSearchBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSearchBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSearchBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSearchBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSearchBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSearchBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSearchBarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveSearchBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSearchBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSearchBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSearchBarMethod "getSearchMode" o = SearchBarGetSearchModeMethodInfo
    ResolveSearchBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSearchBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSearchBarMethod "getShowCloseButton" o = SearchBarGetShowCloseButtonMethodInfo
    ResolveSearchBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSearchBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSearchBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSearchBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSearchBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSearchBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSearchBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSearchBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSearchBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSearchBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSearchBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSearchBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSearchBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSearchBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSearchBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSearchBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSearchBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSearchBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSearchBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSearchBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSearchBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSearchBarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveSearchBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSearchBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSearchBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSearchBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSearchBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSearchBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSearchBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSearchBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSearchBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSearchBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSearchBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSearchBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSearchBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSearchBarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveSearchBarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveSearchBarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveSearchBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSearchBarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveSearchBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSearchBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSearchBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSearchBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSearchBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSearchBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSearchBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSearchBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSearchBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSearchBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSearchBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSearchBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSearchBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSearchBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSearchBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSearchBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSearchBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSearchBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSearchBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSearchBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSearchBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSearchBarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveSearchBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSearchBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSearchBarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveSearchBarMethod "setSearchMode" o = SearchBarSetSearchModeMethodInfo
    ResolveSearchBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSearchBarMethod "setShowCloseButton" o = SearchBarSetShowCloseButtonMethodInfo
    ResolveSearchBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSearchBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSearchBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSearchBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSearchBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSearchBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSearchBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSearchBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSearchBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSearchBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSearchBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSearchBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSearchBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSearchBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSearchBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSearchBarMethod t SearchBar, O.MethodInfo info SearchBar p) => OL.IsLabel t (SearchBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "search-mode-enabled"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@search-mode-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' searchBar #searchModeEnabled
-- @
getSearchBarSearchModeEnabled :: (MonadIO m, IsSearchBar o) => o -> m Bool
getSearchBarSearchModeEnabled obj = liftIO $ B.Properties.getObjectPropertyBool obj "search-mode-enabled"

-- | Set the value of the “@search-mode-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' searchBar [ #searchModeEnabled 'Data.GI.Base.Attributes.:=' value ]
-- @
setSearchBarSearchModeEnabled :: (MonadIO m, IsSearchBar o) => o -> Bool -> m ()
setSearchBarSearchModeEnabled obj val = liftIO $ B.Properties.setObjectPropertyBool obj "search-mode-enabled" val

-- | Construct a `GValueConstruct` with valid value for the “@search-mode-enabled@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSearchBarSearchModeEnabled :: (IsSearchBar o) => Bool -> IO (GValueConstruct o)
constructSearchBarSearchModeEnabled val = B.Properties.constructObjectPropertyBool "search-mode-enabled" val

#if defined(ENABLE_OVERLOADING)
data SearchBarSearchModeEnabledPropertyInfo
instance AttrInfo SearchBarSearchModeEnabledPropertyInfo where
    type AttrAllowedOps SearchBarSearchModeEnabledPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SearchBarSearchModeEnabledPropertyInfo = IsSearchBar
    type AttrSetTypeConstraint SearchBarSearchModeEnabledPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SearchBarSearchModeEnabledPropertyInfo = (~) Bool
    type AttrTransferType SearchBarSearchModeEnabledPropertyInfo = Bool
    type AttrGetType SearchBarSearchModeEnabledPropertyInfo = Bool
    type AttrLabel SearchBarSearchModeEnabledPropertyInfo = "search-mode-enabled"
    type AttrOrigin SearchBarSearchModeEnabledPropertyInfo = SearchBar
    attrGet = getSearchBarSearchModeEnabled
    attrSet = setSearchBarSearchModeEnabled
    attrTransfer _ v = do
        return v
    attrConstruct = constructSearchBarSearchModeEnabled
    attrClear = undefined
#endif

-- VVV Prop "show-close-button"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' searchBar #showCloseButton
-- @
getSearchBarShowCloseButton :: (MonadIO m, IsSearchBar o) => o -> m Bool
getSearchBarShowCloseButton obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-close-button"

-- | Set the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' searchBar [ #showCloseButton 'Data.GI.Base.Attributes.:=' value ]
-- @
setSearchBarShowCloseButton :: (MonadIO m, IsSearchBar o) => o -> Bool -> m ()
setSearchBarShowCloseButton obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-close-button" val

-- | Construct a `GValueConstruct` with valid value for the “@show-close-button@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSearchBarShowCloseButton :: (IsSearchBar o) => Bool -> IO (GValueConstruct o)
constructSearchBarShowCloseButton val = B.Properties.constructObjectPropertyBool "show-close-button" val

#if defined(ENABLE_OVERLOADING)
data SearchBarShowCloseButtonPropertyInfo
instance AttrInfo SearchBarShowCloseButtonPropertyInfo where
    type AttrAllowedOps SearchBarShowCloseButtonPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SearchBarShowCloseButtonPropertyInfo = IsSearchBar
    type AttrSetTypeConstraint SearchBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SearchBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferType SearchBarShowCloseButtonPropertyInfo = Bool
    type AttrGetType SearchBarShowCloseButtonPropertyInfo = Bool
    type AttrLabel SearchBarShowCloseButtonPropertyInfo = "show-close-button"
    type AttrOrigin SearchBarShowCloseButtonPropertyInfo = SearchBar
    attrGet = getSearchBarShowCloseButton
    attrSet = setSearchBarShowCloseButton
    attrTransfer _ v = do
        return v
    attrConstruct = constructSearchBarShowCloseButton
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SearchBar
type instance O.AttributeList SearchBar = SearchBarAttributeList
type SearchBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("searchModeEnabled", SearchBarSearchModeEnabledPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showCloseButton", SearchBarShowCloseButtonPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
searchBarSearchModeEnabled :: AttrLabelProxy "searchModeEnabled"
searchBarSearchModeEnabled = AttrLabelProxy

searchBarShowCloseButton :: AttrLabelProxy "showCloseButton"
searchBarShowCloseButton = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SearchBar = SearchBarSignalList
type SearchBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method SearchBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "SearchBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_search_bar_new" gtk_search_bar_new :: 
    IO (Ptr SearchBar)

-- | Creates a t'GI.Gtk.Objects.SearchBar.SearchBar'. You will need to tell it about
-- which widget is going to be your text entry using
-- 'GI.Gtk.Objects.SearchBar.searchBarConnectEntry'.
-- 
-- /Since: 3.10/
searchBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m SearchBar
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.SearchBar.SearchBar'
searchBarNew  = liftIO $ do
    result <- gtk_search_bar_new
    checkUnexpectedReturnNULL "searchBarNew" result
    result' <- (newObject SearchBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SearchBar::connect_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "entry"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Entry" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkEntry" , sinceVersion = Nothing }
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

foreign import ccall "gtk_search_bar_connect_entry" gtk_search_bar_connect_entry :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    Ptr Gtk.Entry.Entry ->                  -- entry : TInterface (Name {namespace = "Gtk", name = "Entry"})
    IO ()

-- | Connects the t'GI.Gtk.Objects.Entry.Entry' widget passed as the one to be used in
-- this search bar. The entry should be a descendant of the search bar.
-- This is only required if the entry isn’t the direct child of the
-- search bar (as in our main example).
-- 
-- /Since: 3.10/
searchBarConnectEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a, Gtk.Entry.IsEntry b) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> b
    -- ^ /@entry@/: a t'GI.Gtk.Objects.Entry.Entry'
    -> m ()
searchBarConnectEntry bar entry = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    entry' <- unsafeManagedPtrCastPtr entry
    gtk_search_bar_connect_entry bar' entry'
    touchManagedPtr bar
    touchManagedPtr entry
    return ()

#if defined(ENABLE_OVERLOADING)
data SearchBarConnectEntryMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsSearchBar a, Gtk.Entry.IsEntry b) => O.MethodInfo SearchBarConnectEntryMethodInfo a signature where
    overloadedMethod = searchBarConnectEntry

#endif

-- method SearchBar::get_search_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_search_bar_get_search_mode" gtk_search_bar_get_search_mode :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    IO CInt

-- | Returns whether the search mode is on or off.
-- 
-- /Since: 3.10/
searchBarGetSearchMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> m Bool
    -- ^ __Returns:__ whether search mode is toggled on
searchBarGetSearchMode bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_search_bar_get_search_mode bar'
    let result' = (/= 0) result
    touchManagedPtr bar
    return result'

#if defined(ENABLE_OVERLOADING)
data SearchBarGetSearchModeMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSearchBar a) => O.MethodInfo SearchBarGetSearchModeMethodInfo a signature where
    overloadedMethod = searchBarGetSearchMode

#endif

-- method SearchBar::get_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_search_bar_get_show_close_button" gtk_search_bar_get_show_close_button :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    IO CInt

-- | Returns whether the close button is shown.
-- 
-- /Since: 3.10/
searchBarGetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> m Bool
    -- ^ __Returns:__ whether the close button is shown
searchBarGetShowCloseButton bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_search_bar_get_show_close_button bar'
    let result' = (/= 0) result
    touchManagedPtr bar
    return result'

#if defined(ENABLE_OVERLOADING)
data SearchBarGetShowCloseButtonMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSearchBar a) => O.MethodInfo SearchBarGetShowCloseButtonMethodInfo a signature where
    overloadedMethod = searchBarGetShowCloseButton

#endif

-- method SearchBar::handle_event
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "event"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Event" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkEvent containing key press events"
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

foreign import ccall "gtk_search_bar_handle_event" gtk_search_bar_handle_event :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    Ptr Gdk.Event.Event ->                  -- event : TInterface (Name {namespace = "Gdk", name = "Event"})
    IO CInt

-- | This function should be called when the top-level
-- window which contains the search bar received a key event.
-- 
-- If the key event is handled by the search bar, the bar will
-- be shown, the entry populated with the entered text and 'GI.Gdk.Constants.EVENT_STOP'
-- will be returned. The caller should ensure that events are
-- not propagated further.
-- 
-- If no entry has been connected to the search bar, using
-- 'GI.Gtk.Objects.SearchBar.searchBarConnectEntry', this function will return
-- immediately with a warning.
-- 
-- == Showing the search bar on key presses
-- 
-- 
-- === /C code/
-- >
-- >static gboolean
-- >on_key_press_event (GtkWidget *widget,
-- >                    GdkEvent  *event,
-- >                    gpointer   user_data)
-- >{
-- >  GtkSearchBar *bar = GTK_SEARCH_BAR (user_data);
-- >  return gtk_search_bar_handle_event (bar, event);
-- >}
-- >
-- >static void
-- >create_toplevel (void)
-- >{
-- >  GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-- >  GtkWindow *search_bar = gtk_search_bar_new ();
-- >
-- > // Add more widgets to the window...
-- >
-- >  g_signal_connect (window,
-- >                   "key-press-event",
-- >                    G_CALLBACK (on_key_press_event),
-- >                    search_bar);
-- >}
-- 
-- 
-- /Since: 3.10/
searchBarHandleEvent ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> Gdk.Event.Event
    -- ^ /@event@/: a t'GI.Gdk.Unions.Event.Event' containing key press events
    -> m Bool
    -- ^ __Returns:__ 'GI.Gdk.Constants.EVENT_STOP' if the key press event resulted
    --     in text being entered in the search entry (and revealing
    --     the search bar if necessary), 'GI.Gdk.Constants.EVENT_PROPAGATE' otherwise.
searchBarHandleEvent bar event = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    event' <- unsafeManagedPtrGetPtr event
    result <- gtk_search_bar_handle_event bar' event'
    let result' = (/= 0) result
    touchManagedPtr bar
    touchManagedPtr event
    return result'

#if defined(ENABLE_OVERLOADING)
data SearchBarHandleEventMethodInfo
instance (signature ~ (Gdk.Event.Event -> m Bool), MonadIO m, IsSearchBar a) => O.MethodInfo SearchBarHandleEventMethodInfo a signature where
    overloadedMethod = searchBarHandleEvent

#endif

-- method SearchBar::set_search_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "search_mode"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new state of the search mode"
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

foreign import ccall "gtk_search_bar_set_search_mode" gtk_search_bar_set_search_mode :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    CInt ->                                 -- search_mode : TBasicType TBoolean
    IO ()

-- | Switches the search mode on or off.
-- 
-- /Since: 3.10/
searchBarSetSearchMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> Bool
    -- ^ /@searchMode@/: the new state of the search mode
    -> m ()
searchBarSetSearchMode bar searchMode = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    let searchMode' = (fromIntegral . fromEnum) searchMode
    gtk_search_bar_set_search_mode bar' searchMode'
    touchManagedPtr bar
    return ()

#if defined(ENABLE_OVERLOADING)
data SearchBarSetSearchModeMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSearchBar a) => O.MethodInfo SearchBarSetSearchModeMethodInfo a signature where
    overloadedMethod = searchBarSetSearchMode

#endif

-- method SearchBar::set_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SearchBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSearchBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visible"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the close button will be shown or not"
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

foreign import ccall "gtk_search_bar_set_show_close_button" gtk_search_bar_set_show_close_button :: 
    Ptr SearchBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "SearchBar"})
    CInt ->                                 -- visible : TBasicType TBoolean
    IO ()

-- | Shows or hides the close button. Applications that
-- already have a “search” toggle button should not show a close
-- button in their search bar, as it duplicates the role of the
-- toggle button.
-- 
-- /Since: 3.10/
searchBarSetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsSearchBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.SearchBar.SearchBar'
    -> Bool
    -- ^ /@visible@/: whether the close button will be shown or not
    -> m ()
searchBarSetShowCloseButton bar visible = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    let visible' = (fromIntegral . fromEnum) visible
    gtk_search_bar_set_show_close_button bar' visible'
    touchManagedPtr bar
    return ()

#if defined(ENABLE_OVERLOADING)
data SearchBarSetShowCloseButtonMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSearchBar a) => O.MethodInfo SearchBarSetShowCloseButtonMethodInfo a signature where
    overloadedMethod = searchBarSetShowCloseButton

#endif

