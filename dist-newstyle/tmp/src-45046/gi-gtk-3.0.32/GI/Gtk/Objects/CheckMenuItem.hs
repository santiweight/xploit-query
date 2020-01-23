{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem' is a menu item that maintains the state of a boolean
-- value in addition to a t'GI.Gtk.Objects.MenuItem.MenuItem' usual role in activating application
-- code.
-- 
-- A check box indicating the state of the boolean value is displayed
-- at the left side of the t'GI.Gtk.Objects.MenuItem.MenuItem'.  Activating the t'GI.Gtk.Objects.MenuItem.MenuItem'
-- toggles the value.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >menuitem
-- >├── check.left
-- >╰── <child>
-- 
-- 
-- GtkCheckMenuItem has a main CSS node with name menuitem, and a subnode
-- with name check, which gets the .left or .right style class.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.CheckMenuItem
    ( 

-- * Exported types
    CheckMenuItem(..)                       ,
    IsCheckMenuItem                         ,
    toCheckMenuItem                         ,
    noCheckMenuItem                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCheckMenuItemMethod              ,
#endif


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemGetActiveMethodInfo        ,
#endif
    checkMenuItemGetActive                  ,


-- ** getDrawAsRadio #method:getDrawAsRadio#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemGetDrawAsRadioMethodInfo   ,
#endif
    checkMenuItemGetDrawAsRadio             ,


-- ** getInconsistent #method:getInconsistent#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemGetInconsistentMethodInfo  ,
#endif
    checkMenuItemGetInconsistent            ,


-- ** new #method:new#

    checkMenuItemNew                        ,


-- ** newWithLabel #method:newWithLabel#

    checkMenuItemNewWithLabel               ,


-- ** newWithMnemonic #method:newWithMnemonic#

    checkMenuItemNewWithMnemonic            ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemSetActiveMethodInfo        ,
#endif
    checkMenuItemSetActive                  ,


-- ** setDrawAsRadio #method:setDrawAsRadio#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemSetDrawAsRadioMethodInfo   ,
#endif
    checkMenuItemSetDrawAsRadio             ,


-- ** setInconsistent #method:setInconsistent#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemSetInconsistentMethodInfo  ,
#endif
    checkMenuItemSetInconsistent            ,


-- ** toggled #method:toggled#

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemToggledMethodInfo          ,
#endif
    checkMenuItemToggled                    ,




 -- * Properties
-- ** active #attr:active#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemActivePropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    checkMenuItemActive                     ,
#endif
    constructCheckMenuItemActive            ,
    getCheckMenuItemActive                  ,
    setCheckMenuItemActive                  ,


-- ** drawAsRadio #attr:drawAsRadio#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemDrawAsRadioPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    checkMenuItemDrawAsRadio                ,
#endif
    constructCheckMenuItemDrawAsRadio       ,
    getCheckMenuItemDrawAsRadio             ,
    setCheckMenuItemDrawAsRadio             ,


-- ** inconsistent #attr:inconsistent#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CheckMenuItemInconsistentPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    checkMenuItemInconsistent               ,
#endif
    constructCheckMenuItemInconsistent      ,
    getCheckMenuItemInconsistent            ,
    setCheckMenuItemInconsistent            ,




 -- * Signals
-- ** toggled #signal:toggled#

    C_CheckMenuItemToggledCallback          ,
    CheckMenuItemToggledCallback            ,
#if defined(ENABLE_OVERLOADING)
    CheckMenuItemToggledSignalInfo          ,
#endif
    afterCheckMenuItemToggled               ,
    genClosure_CheckMenuItemToggled         ,
    mk_CheckMenuItemToggledCallback         ,
    noCheckMenuItemToggledCallback          ,
    onCheckMenuItemToggled                  ,
    wrap_CheckMenuItemToggledCallback       ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.MenuItem as Gtk.MenuItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype CheckMenuItem = CheckMenuItem (ManagedPtr CheckMenuItem)
    deriving (Eq)
foreign import ccall "gtk_check_menu_item_get_type"
    c_gtk_check_menu_item_get_type :: IO GType

instance GObject CheckMenuItem where
    gobjectType = c_gtk_check_menu_item_get_type
    

-- | Convert 'CheckMenuItem' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CheckMenuItem where
    toGValue o = do
        gtype <- c_gtk_check_menu_item_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CheckMenuItem)
        B.ManagedPtr.newObject CheckMenuItem ptr
        
    

-- | Type class for types which can be safely cast to `CheckMenuItem`, for instance with `toCheckMenuItem`.
class (GObject o, O.IsDescendantOf CheckMenuItem o) => IsCheckMenuItem o
instance (GObject o, O.IsDescendantOf CheckMenuItem o) => IsCheckMenuItem o

instance O.HasParentTypes CheckMenuItem
type instance O.ParentTypes CheckMenuItem = '[Gtk.MenuItem.MenuItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `CheckMenuItem`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCheckMenuItem :: (MonadIO m, IsCheckMenuItem o) => o -> m CheckMenuItem
toCheckMenuItem = liftIO . unsafeCastTo CheckMenuItem

-- | A convenience alias for `Nothing` :: `Maybe` `CheckMenuItem`.
noCheckMenuItem :: Maybe CheckMenuItem
noCheckMenuItem = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCheckMenuItemMethod (t :: Symbol) (o :: *) :: * where
    ResolveCheckMenuItemMethod "activate" o = Gtk.MenuItem.MenuItemActivateMethodInfo
    ResolveCheckMenuItemMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveCheckMenuItemMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveCheckMenuItemMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveCheckMenuItemMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveCheckMenuItemMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveCheckMenuItemMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveCheckMenuItemMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveCheckMenuItemMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCheckMenuItemMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCheckMenuItemMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveCheckMenuItemMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveCheckMenuItemMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveCheckMenuItemMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveCheckMenuItemMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveCheckMenuItemMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveCheckMenuItemMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveCheckMenuItemMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveCheckMenuItemMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveCheckMenuItemMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveCheckMenuItemMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveCheckMenuItemMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveCheckMenuItemMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveCheckMenuItemMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveCheckMenuItemMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveCheckMenuItemMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveCheckMenuItemMethod "deselect" o = Gtk.MenuItem.MenuItemDeselectMethodInfo
    ResolveCheckMenuItemMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveCheckMenuItemMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveCheckMenuItemMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveCheckMenuItemMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveCheckMenuItemMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveCheckMenuItemMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveCheckMenuItemMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveCheckMenuItemMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveCheckMenuItemMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveCheckMenuItemMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveCheckMenuItemMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveCheckMenuItemMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveCheckMenuItemMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveCheckMenuItemMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveCheckMenuItemMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveCheckMenuItemMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveCheckMenuItemMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveCheckMenuItemMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveCheckMenuItemMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveCheckMenuItemMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveCheckMenuItemMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveCheckMenuItemMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveCheckMenuItemMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveCheckMenuItemMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveCheckMenuItemMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveCheckMenuItemMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveCheckMenuItemMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveCheckMenuItemMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCheckMenuItemMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveCheckMenuItemMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveCheckMenuItemMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCheckMenuItemMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCheckMenuItemMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveCheckMenuItemMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveCheckMenuItemMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveCheckMenuItemMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveCheckMenuItemMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveCheckMenuItemMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveCheckMenuItemMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveCheckMenuItemMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveCheckMenuItemMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveCheckMenuItemMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveCheckMenuItemMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveCheckMenuItemMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveCheckMenuItemMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveCheckMenuItemMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveCheckMenuItemMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveCheckMenuItemMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveCheckMenuItemMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveCheckMenuItemMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveCheckMenuItemMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveCheckMenuItemMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveCheckMenuItemMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCheckMenuItemMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveCheckMenuItemMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveCheckMenuItemMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveCheckMenuItemMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveCheckMenuItemMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveCheckMenuItemMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveCheckMenuItemMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveCheckMenuItemMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveCheckMenuItemMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveCheckMenuItemMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveCheckMenuItemMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveCheckMenuItemMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveCheckMenuItemMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveCheckMenuItemMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveCheckMenuItemMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveCheckMenuItemMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveCheckMenuItemMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveCheckMenuItemMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCheckMenuItemMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCheckMenuItemMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveCheckMenuItemMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveCheckMenuItemMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveCheckMenuItemMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveCheckMenuItemMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveCheckMenuItemMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveCheckMenuItemMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveCheckMenuItemMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveCheckMenuItemMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveCheckMenuItemMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveCheckMenuItemMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveCheckMenuItemMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveCheckMenuItemMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveCheckMenuItemMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveCheckMenuItemMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveCheckMenuItemMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveCheckMenuItemMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCheckMenuItemMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCheckMenuItemMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveCheckMenuItemMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveCheckMenuItemMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveCheckMenuItemMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveCheckMenuItemMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveCheckMenuItemMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveCheckMenuItemMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveCheckMenuItemMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveCheckMenuItemMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveCheckMenuItemMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveCheckMenuItemMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveCheckMenuItemMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveCheckMenuItemMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCheckMenuItemMethod "select" o = Gtk.MenuItem.MenuItemSelectMethodInfo
    ResolveCheckMenuItemMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveCheckMenuItemMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveCheckMenuItemMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveCheckMenuItemMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveCheckMenuItemMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveCheckMenuItemMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveCheckMenuItemMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveCheckMenuItemMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveCheckMenuItemMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveCheckMenuItemMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCheckMenuItemMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCheckMenuItemMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveCheckMenuItemMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveCheckMenuItemMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveCheckMenuItemMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveCheckMenuItemMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCheckMenuItemMethod "toggleSizeAllocate" o = Gtk.MenuItem.MenuItemToggleSizeAllocateMethodInfo
    ResolveCheckMenuItemMethod "toggleSizeRequest" o = Gtk.MenuItem.MenuItemToggleSizeRequestMethodInfo
    ResolveCheckMenuItemMethod "toggled" o = CheckMenuItemToggledMethodInfo
    ResolveCheckMenuItemMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveCheckMenuItemMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveCheckMenuItemMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveCheckMenuItemMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveCheckMenuItemMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveCheckMenuItemMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCheckMenuItemMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveCheckMenuItemMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveCheckMenuItemMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveCheckMenuItemMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCheckMenuItemMethod "getAccelPath" o = Gtk.MenuItem.MenuItemGetAccelPathMethodInfo
    ResolveCheckMenuItemMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveCheckMenuItemMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveCheckMenuItemMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveCheckMenuItemMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveCheckMenuItemMethod "getActive" o = CheckMenuItemGetActiveMethodInfo
    ResolveCheckMenuItemMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveCheckMenuItemMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveCheckMenuItemMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveCheckMenuItemMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveCheckMenuItemMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveCheckMenuItemMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveCheckMenuItemMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveCheckMenuItemMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveCheckMenuItemMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveCheckMenuItemMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveCheckMenuItemMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveCheckMenuItemMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveCheckMenuItemMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveCheckMenuItemMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveCheckMenuItemMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveCheckMenuItemMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveCheckMenuItemMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveCheckMenuItemMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCheckMenuItemMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveCheckMenuItemMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveCheckMenuItemMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveCheckMenuItemMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveCheckMenuItemMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveCheckMenuItemMethod "getDrawAsRadio" o = CheckMenuItemGetDrawAsRadioMethodInfo
    ResolveCheckMenuItemMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveCheckMenuItemMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveCheckMenuItemMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveCheckMenuItemMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveCheckMenuItemMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveCheckMenuItemMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveCheckMenuItemMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveCheckMenuItemMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveCheckMenuItemMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveCheckMenuItemMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveCheckMenuItemMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveCheckMenuItemMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveCheckMenuItemMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveCheckMenuItemMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveCheckMenuItemMethod "getInconsistent" o = CheckMenuItemGetInconsistentMethodInfo
    ResolveCheckMenuItemMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveCheckMenuItemMethod "getLabel" o = Gtk.MenuItem.MenuItemGetLabelMethodInfo
    ResolveCheckMenuItemMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveCheckMenuItemMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveCheckMenuItemMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveCheckMenuItemMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveCheckMenuItemMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveCheckMenuItemMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveCheckMenuItemMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveCheckMenuItemMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveCheckMenuItemMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveCheckMenuItemMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveCheckMenuItemMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveCheckMenuItemMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveCheckMenuItemMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveCheckMenuItemMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveCheckMenuItemMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveCheckMenuItemMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveCheckMenuItemMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveCheckMenuItemMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveCheckMenuItemMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveCheckMenuItemMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveCheckMenuItemMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveCheckMenuItemMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveCheckMenuItemMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveCheckMenuItemMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveCheckMenuItemMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCheckMenuItemMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCheckMenuItemMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveCheckMenuItemMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveCheckMenuItemMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveCheckMenuItemMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveCheckMenuItemMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveCheckMenuItemMethod "getReserveIndicator" o = Gtk.MenuItem.MenuItemGetReserveIndicatorMethodInfo
    ResolveCheckMenuItemMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveCheckMenuItemMethod "getRightJustified" o = Gtk.MenuItem.MenuItemGetRightJustifiedMethodInfo
    ResolveCheckMenuItemMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveCheckMenuItemMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveCheckMenuItemMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveCheckMenuItemMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveCheckMenuItemMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveCheckMenuItemMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveCheckMenuItemMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveCheckMenuItemMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveCheckMenuItemMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveCheckMenuItemMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveCheckMenuItemMethod "getSubmenu" o = Gtk.MenuItem.MenuItemGetSubmenuMethodInfo
    ResolveCheckMenuItemMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveCheckMenuItemMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveCheckMenuItemMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveCheckMenuItemMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveCheckMenuItemMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveCheckMenuItemMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveCheckMenuItemMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveCheckMenuItemMethod "getUseUnderline" o = Gtk.MenuItem.MenuItemGetUseUnderlineMethodInfo
    ResolveCheckMenuItemMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveCheckMenuItemMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveCheckMenuItemMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveCheckMenuItemMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveCheckMenuItemMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveCheckMenuItemMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveCheckMenuItemMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveCheckMenuItemMethod "setAccelPath" o = Gtk.MenuItem.MenuItemSetAccelPathMethodInfo
    ResolveCheckMenuItemMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveCheckMenuItemMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveCheckMenuItemMethod "setActive" o = CheckMenuItemSetActiveMethodInfo
    ResolveCheckMenuItemMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveCheckMenuItemMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveCheckMenuItemMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveCheckMenuItemMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveCheckMenuItemMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveCheckMenuItemMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveCheckMenuItemMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveCheckMenuItemMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveCheckMenuItemMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveCheckMenuItemMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCheckMenuItemMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCheckMenuItemMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveCheckMenuItemMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveCheckMenuItemMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveCheckMenuItemMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveCheckMenuItemMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveCheckMenuItemMethod "setDrawAsRadio" o = CheckMenuItemSetDrawAsRadioMethodInfo
    ResolveCheckMenuItemMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveCheckMenuItemMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveCheckMenuItemMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveCheckMenuItemMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveCheckMenuItemMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveCheckMenuItemMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveCheckMenuItemMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveCheckMenuItemMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveCheckMenuItemMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveCheckMenuItemMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveCheckMenuItemMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveCheckMenuItemMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveCheckMenuItemMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveCheckMenuItemMethod "setInconsistent" o = CheckMenuItemSetInconsistentMethodInfo
    ResolveCheckMenuItemMethod "setLabel" o = Gtk.MenuItem.MenuItemSetLabelMethodInfo
    ResolveCheckMenuItemMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveCheckMenuItemMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveCheckMenuItemMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveCheckMenuItemMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveCheckMenuItemMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveCheckMenuItemMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveCheckMenuItemMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveCheckMenuItemMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveCheckMenuItemMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveCheckMenuItemMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveCheckMenuItemMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveCheckMenuItemMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveCheckMenuItemMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCheckMenuItemMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveCheckMenuItemMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveCheckMenuItemMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveCheckMenuItemMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveCheckMenuItemMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveCheckMenuItemMethod "setReserveIndicator" o = Gtk.MenuItem.MenuItemSetReserveIndicatorMethodInfo
    ResolveCheckMenuItemMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveCheckMenuItemMethod "setRightJustified" o = Gtk.MenuItem.MenuItemSetRightJustifiedMethodInfo
    ResolveCheckMenuItemMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveCheckMenuItemMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveCheckMenuItemMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveCheckMenuItemMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveCheckMenuItemMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveCheckMenuItemMethod "setSubmenu" o = Gtk.MenuItem.MenuItemSetSubmenuMethodInfo
    ResolveCheckMenuItemMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveCheckMenuItemMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveCheckMenuItemMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveCheckMenuItemMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveCheckMenuItemMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveCheckMenuItemMethod "setUseUnderline" o = Gtk.MenuItem.MenuItemSetUseUnderlineMethodInfo
    ResolveCheckMenuItemMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveCheckMenuItemMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveCheckMenuItemMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveCheckMenuItemMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveCheckMenuItemMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveCheckMenuItemMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveCheckMenuItemMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCheckMenuItemMethod t CheckMenuItem, O.MethodInfo info CheckMenuItem p) => OL.IsLabel t (CheckMenuItem -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal CheckMenuItem::toggled
-- | This signal is emitted when the state of the check box is changed.
-- 
-- A signal handler can use 'GI.Gtk.Objects.CheckMenuItem.checkMenuItemGetActive'
-- to discover the new state.
type CheckMenuItemToggledCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `CheckMenuItemToggledCallback`@.
noCheckMenuItemToggledCallback :: Maybe CheckMenuItemToggledCallback
noCheckMenuItemToggledCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_CheckMenuItemToggledCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_CheckMenuItemToggledCallback`.
foreign import ccall "wrapper"
    mk_CheckMenuItemToggledCallback :: C_CheckMenuItemToggledCallback -> IO (FunPtr C_CheckMenuItemToggledCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_CheckMenuItemToggled :: MonadIO m => CheckMenuItemToggledCallback -> m (GClosure C_CheckMenuItemToggledCallback)
genClosure_CheckMenuItemToggled cb = liftIO $ do
    let cb' = wrap_CheckMenuItemToggledCallback cb
    mk_CheckMenuItemToggledCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `CheckMenuItemToggledCallback` into a `C_CheckMenuItemToggledCallback`.
wrap_CheckMenuItemToggledCallback ::
    CheckMenuItemToggledCallback ->
    C_CheckMenuItemToggledCallback
wrap_CheckMenuItemToggledCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' checkMenuItem #toggled callback
-- @
-- 
-- 
onCheckMenuItemToggled :: (IsCheckMenuItem a, MonadIO m) => a -> CheckMenuItemToggledCallback -> m SignalHandlerId
onCheckMenuItemToggled obj cb = liftIO $ do
    let cb' = wrap_CheckMenuItemToggledCallback cb
    cb'' <- mk_CheckMenuItemToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggled](#signal:toggled) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' checkMenuItem #toggled callback
-- @
-- 
-- 
afterCheckMenuItemToggled :: (IsCheckMenuItem a, MonadIO m) => a -> CheckMenuItemToggledCallback -> m SignalHandlerId
afterCheckMenuItemToggled obj cb = liftIO $ do
    let cb' = wrap_CheckMenuItemToggledCallback cb
    cb'' <- mk_CheckMenuItemToggledCallback cb'
    connectSignalFunPtr obj "toggled" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data CheckMenuItemToggledSignalInfo
instance SignalInfo CheckMenuItemToggledSignalInfo where
    type HaskellCallbackType CheckMenuItemToggledSignalInfo = CheckMenuItemToggledCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_CheckMenuItemToggledCallback cb
        cb'' <- mk_CheckMenuItemToggledCallback cb'
        connectSignalFunPtr obj "toggled" cb'' connectMode detail

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' checkMenuItem #active
-- @
getCheckMenuItemActive :: (MonadIO m, IsCheckMenuItem o) => o -> m Bool
getCheckMenuItemActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' checkMenuItem [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setCheckMenuItemActive :: (MonadIO m, IsCheckMenuItem o) => o -> Bool -> m ()
setCheckMenuItemActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCheckMenuItemActive :: (IsCheckMenuItem o) => Bool -> IO (GValueConstruct o)
constructCheckMenuItemActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemActivePropertyInfo
instance AttrInfo CheckMenuItemActivePropertyInfo where
    type AttrAllowedOps CheckMenuItemActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CheckMenuItemActivePropertyInfo = IsCheckMenuItem
    type AttrSetTypeConstraint CheckMenuItemActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CheckMenuItemActivePropertyInfo = (~) Bool
    type AttrTransferType CheckMenuItemActivePropertyInfo = Bool
    type AttrGetType CheckMenuItemActivePropertyInfo = Bool
    type AttrLabel CheckMenuItemActivePropertyInfo = "active"
    type AttrOrigin CheckMenuItemActivePropertyInfo = CheckMenuItem
    attrGet = getCheckMenuItemActive
    attrSet = setCheckMenuItemActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructCheckMenuItemActive
    attrClear = undefined
#endif

-- VVV Prop "draw-as-radio"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@draw-as-radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' checkMenuItem #drawAsRadio
-- @
getCheckMenuItemDrawAsRadio :: (MonadIO m, IsCheckMenuItem o) => o -> m Bool
getCheckMenuItemDrawAsRadio obj = liftIO $ B.Properties.getObjectPropertyBool obj "draw-as-radio"

-- | Set the value of the “@draw-as-radio@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' checkMenuItem [ #drawAsRadio 'Data.GI.Base.Attributes.:=' value ]
-- @
setCheckMenuItemDrawAsRadio :: (MonadIO m, IsCheckMenuItem o) => o -> Bool -> m ()
setCheckMenuItemDrawAsRadio obj val = liftIO $ B.Properties.setObjectPropertyBool obj "draw-as-radio" val

-- | Construct a `GValueConstruct` with valid value for the “@draw-as-radio@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCheckMenuItemDrawAsRadio :: (IsCheckMenuItem o) => Bool -> IO (GValueConstruct o)
constructCheckMenuItemDrawAsRadio val = B.Properties.constructObjectPropertyBool "draw-as-radio" val

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemDrawAsRadioPropertyInfo
instance AttrInfo CheckMenuItemDrawAsRadioPropertyInfo where
    type AttrAllowedOps CheckMenuItemDrawAsRadioPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CheckMenuItemDrawAsRadioPropertyInfo = IsCheckMenuItem
    type AttrSetTypeConstraint CheckMenuItemDrawAsRadioPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CheckMenuItemDrawAsRadioPropertyInfo = (~) Bool
    type AttrTransferType CheckMenuItemDrawAsRadioPropertyInfo = Bool
    type AttrGetType CheckMenuItemDrawAsRadioPropertyInfo = Bool
    type AttrLabel CheckMenuItemDrawAsRadioPropertyInfo = "draw-as-radio"
    type AttrOrigin CheckMenuItemDrawAsRadioPropertyInfo = CheckMenuItem
    attrGet = getCheckMenuItemDrawAsRadio
    attrSet = setCheckMenuItemDrawAsRadio
    attrTransfer _ v = do
        return v
    attrConstruct = constructCheckMenuItemDrawAsRadio
    attrClear = undefined
#endif

-- VVV Prop "inconsistent"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@inconsistent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' checkMenuItem #inconsistent
-- @
getCheckMenuItemInconsistent :: (MonadIO m, IsCheckMenuItem o) => o -> m Bool
getCheckMenuItemInconsistent obj = liftIO $ B.Properties.getObjectPropertyBool obj "inconsistent"

-- | Set the value of the “@inconsistent@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' checkMenuItem [ #inconsistent 'Data.GI.Base.Attributes.:=' value ]
-- @
setCheckMenuItemInconsistent :: (MonadIO m, IsCheckMenuItem o) => o -> Bool -> m ()
setCheckMenuItemInconsistent obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inconsistent" val

-- | Construct a `GValueConstruct` with valid value for the “@inconsistent@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCheckMenuItemInconsistent :: (IsCheckMenuItem o) => Bool -> IO (GValueConstruct o)
constructCheckMenuItemInconsistent val = B.Properties.constructObjectPropertyBool "inconsistent" val

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemInconsistentPropertyInfo
instance AttrInfo CheckMenuItemInconsistentPropertyInfo where
    type AttrAllowedOps CheckMenuItemInconsistentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CheckMenuItemInconsistentPropertyInfo = IsCheckMenuItem
    type AttrSetTypeConstraint CheckMenuItemInconsistentPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CheckMenuItemInconsistentPropertyInfo = (~) Bool
    type AttrTransferType CheckMenuItemInconsistentPropertyInfo = Bool
    type AttrGetType CheckMenuItemInconsistentPropertyInfo = Bool
    type AttrLabel CheckMenuItemInconsistentPropertyInfo = "inconsistent"
    type AttrOrigin CheckMenuItemInconsistentPropertyInfo = CheckMenuItem
    attrGet = getCheckMenuItemInconsistent
    attrSet = setCheckMenuItemInconsistent
    attrTransfer _ v = do
        return v
    attrConstruct = constructCheckMenuItemInconsistent
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CheckMenuItem
type instance O.AttributeList CheckMenuItem = CheckMenuItemAttributeList
type CheckMenuItemAttributeList = ('[ '("accelPath", Gtk.MenuItem.MenuItemAccelPathPropertyInfo), '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", CheckMenuItemActivePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawAsRadio", CheckMenuItemDrawAsRadioPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inconsistent", CheckMenuItemInconsistentPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.MenuItem.MenuItemLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightJustified", Gtk.MenuItem.MenuItemRightJustifiedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("submenu", Gtk.MenuItem.MenuItemSubmenuPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", Gtk.MenuItem.MenuItemUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
checkMenuItemActive :: AttrLabelProxy "active"
checkMenuItemActive = AttrLabelProxy

checkMenuItemDrawAsRadio :: AttrLabelProxy "drawAsRadio"
checkMenuItemDrawAsRadio = AttrLabelProxy

checkMenuItemInconsistent :: AttrLabelProxy "inconsistent"
checkMenuItemInconsistent = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CheckMenuItem = CheckMenuItemSignalList
type CheckMenuItemSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.MenuItem.MenuItemActivateSignalInfo), '("activateItem", Gtk.MenuItem.MenuItemActivateItemSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deselect", Gtk.MenuItem.MenuItemDeselectSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("select", Gtk.MenuItem.MenuItemSelectSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleSizeAllocate", Gtk.MenuItem.MenuItemToggleSizeAllocateSignalInfo), '("toggleSizeRequest", Gtk.MenuItem.MenuItemToggleSizeRequestSignalInfo), '("toggled", CheckMenuItemToggledSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method CheckMenuItem::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_menu_item_new" gtk_check_menu_item_new :: 
    IO (Ptr CheckMenuItem)

-- | Creates a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'.
checkMenuItemNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CheckMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'.
checkMenuItemNew  = liftIO $ do
    result <- gtk_check_menu_item_new
    checkUnexpectedReturnNULL "checkMenuItemNew" result
    result' <- (newObject CheckMenuItem) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CheckMenuItem::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the string to use for the label."
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
--               (TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_menu_item_new_with_label" gtk_check_menu_item_new_with_label :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr CheckMenuItem)

-- | Creates a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem' with a label.
checkMenuItemNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: the string to use for the label.
    -> m CheckMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'.
checkMenuItemNewWithLabel label = liftIO $ do
    label' <- textToCString label
    result <- gtk_check_menu_item_new_with_label label'
    checkUnexpectedReturnNULL "checkMenuItemNewWithLabel" result
    result' <- (newObject CheckMenuItem) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CheckMenuItem::new_with_mnemonic
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The text of the button, with an underscore in front of the\n    character"
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
--               (TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_check_menu_item_new_with_mnemonic" gtk_check_menu_item_new_with_mnemonic :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr CheckMenuItem)

-- | Creates a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem' containing a label. The label
-- will be created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores
-- in /@label@/ indicate the mnemonic for the menu item.
checkMenuItemNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@label@/: The text of the button, with an underscore in front of the
    --     character
    -> m CheckMenuItem
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
checkMenuItemNewWithMnemonic label = liftIO $ do
    label' <- textToCString label
    result <- gtk_check_menu_item_new_with_mnemonic label'
    checkUnexpectedReturnNULL "checkMenuItemNewWithMnemonic" result
    result' <- (newObject CheckMenuItem) result
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CheckMenuItem::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem"
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

foreign import ccall "gtk_check_menu_item_get_active" gtk_check_menu_item_get_active :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    IO CInt

-- | Returns whether the check menu item is active. See
-- gtk_check_menu_item_set_active ().
checkMenuItemGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the menu item is checked.
checkMenuItemGetActive checkMenuItem = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    result <- gtk_check_menu_item_get_active checkMenuItem'
    let result' = (/= 0) result
    touchManagedPtr checkMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetActiveMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemGetActiveMethodInfo a signature where
    overloadedMethod = checkMenuItemGetActive

#endif

-- method CheckMenuItem::get_draw_as_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem"
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

foreign import ccall "gtk_check_menu_item_get_draw_as_radio" gtk_check_menu_item_get_draw_as_radio :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    IO CInt

-- | Returns whether /@checkMenuItem@/ looks like a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
-- 
-- /Since: 2.4/
checkMenuItemGetDrawAsRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
    -> m Bool
    -- ^ __Returns:__ Whether /@checkMenuItem@/ looks like a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
checkMenuItemGetDrawAsRadio checkMenuItem = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    result <- gtk_check_menu_item_get_draw_as_radio checkMenuItem'
    let result' = (/= 0) result
    touchManagedPtr checkMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetDrawAsRadioMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemGetDrawAsRadioMethodInfo a signature where
    overloadedMethod = checkMenuItemGetDrawAsRadio

#endif

-- method CheckMenuItem::get_inconsistent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem"
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

foreign import ccall "gtk_check_menu_item_get_inconsistent" gtk_check_menu_item_get_inconsistent :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    IO CInt

-- | Retrieves the value set by 'GI.Gtk.Objects.CheckMenuItem.checkMenuItemSetInconsistent'.
checkMenuItemGetInconsistent ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if inconsistent
checkMenuItemGetInconsistent checkMenuItem = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    result <- gtk_check_menu_item_get_inconsistent checkMenuItem'
    let result' = (/= 0) result
    touchManagedPtr checkMenuItem
    return result'

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemGetInconsistentMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemGetInconsistentMethodInfo a signature where
    overloadedMethod = checkMenuItemGetInconsistent

#endif

-- method CheckMenuItem::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_active"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "boolean value indicating whether the check box is active."
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

foreign import ccall "gtk_check_menu_item_set_active" gtk_check_menu_item_set_active :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    CInt ->                                 -- is_active : TBasicType TBoolean
    IO ()

-- | Sets the active state of the menu item’s check box.
checkMenuItemSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'.
    -> Bool
    -- ^ /@isActive@/: boolean value indicating whether the check box is active.
    -> m ()
checkMenuItemSetActive checkMenuItem isActive = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    let isActive' = (fromIntegral . fromEnum) isActive
    gtk_check_menu_item_set_active checkMenuItem' isActive'
    touchManagedPtr checkMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetActiveMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemSetActiveMethodInfo a signature where
    overloadedMethod = checkMenuItemSetActive

#endif

-- method CheckMenuItem::set_draw_as_radio
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "draw_as_radio"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether @check_menu_item is drawn like a #GtkRadioMenuItem"
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

foreign import ccall "gtk_check_menu_item_set_draw_as_radio" gtk_check_menu_item_set_draw_as_radio :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    CInt ->                                 -- draw_as_radio : TBasicType TBoolean
    IO ()

-- | Sets whether /@checkMenuItem@/ is drawn like a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
-- 
-- /Since: 2.4/
checkMenuItemSetDrawAsRadio ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
    -> Bool
    -- ^ /@drawAsRadio@/: whether /@checkMenuItem@/ is drawn like a t'GI.Gtk.Objects.RadioMenuItem.RadioMenuItem'
    -> m ()
checkMenuItemSetDrawAsRadio checkMenuItem drawAsRadio = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    let drawAsRadio' = (fromIntegral . fromEnum) drawAsRadio
    gtk_check_menu_item_set_draw_as_radio checkMenuItem' drawAsRadio'
    touchManagedPtr checkMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetDrawAsRadioMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemSetDrawAsRadioMethodInfo a signature where
    overloadedMethod = checkMenuItemSetDrawAsRadio

#endif

-- method CheckMenuItem::set_inconsistent
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE to display an \8220inconsistent\8221 third state check"
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

foreign import ccall "gtk_check_menu_item_set_inconsistent" gtk_check_menu_item_set_inconsistent :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | If the user has selected a range of elements (such as some text or
-- spreadsheet cells) that are affected by a boolean setting, and the
-- current values in that range are inconsistent, you may want to
-- display the check in an “in between” state. This function turns on
-- “in between” display.  Normally you would turn off the inconsistent
-- state again if the user explicitly selects a setting. This has to be
-- done manually, 'GI.Gtk.Objects.CheckMenuItem.checkMenuItemSetInconsistent' only affects
-- visual appearance, it doesn’t affect the semantics of the widget.
checkMenuItemSetInconsistent ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'
    -> Bool
    -- ^ /@setting@/: 'P.True' to display an “inconsistent” third state check
    -> m ()
checkMenuItemSetInconsistent checkMenuItem setting = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    let setting' = (fromIntegral . fromEnum) setting
    gtk_check_menu_item_set_inconsistent checkMenuItem' setting'
    touchManagedPtr checkMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemSetInconsistentMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemSetInconsistentMethodInfo a signature where
    overloadedMethod = checkMenuItemSetInconsistent

#endif

-- method CheckMenuItem::toggled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "check_menu_item"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CheckMenuItem" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkCheckMenuItem."
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

foreign import ccall "gtk_check_menu_item_toggled" gtk_check_menu_item_toggled :: 
    Ptr CheckMenuItem ->                    -- check_menu_item : TInterface (Name {namespace = "Gtk", name = "CheckMenuItem"})
    IO ()

-- | Emits the [toggled]("GI.Gtk.Objects.CheckMenuItem#signal:toggled") signal.
checkMenuItemToggled ::
    (B.CallStack.HasCallStack, MonadIO m, IsCheckMenuItem a) =>
    a
    -- ^ /@checkMenuItem@/: a t'GI.Gtk.Objects.CheckMenuItem.CheckMenuItem'.
    -> m ()
checkMenuItemToggled checkMenuItem = liftIO $ do
    checkMenuItem' <- unsafeManagedPtrCastPtr checkMenuItem
    gtk_check_menu_item_toggled checkMenuItem'
    touchManagedPtr checkMenuItem
    return ()

#if defined(ENABLE_OVERLOADING)
data CheckMenuItemToggledMethodInfo
instance (signature ~ (m ()), MonadIO m, IsCheckMenuItem a) => O.MethodInfo CheckMenuItemToggledMethodInfo a signature where
    overloadedMethod = checkMenuItemToggled

#endif

