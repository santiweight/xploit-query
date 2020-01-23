{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- @/GtkToolButtons/@ are @/GtkToolItems/@ containing buttons.
-- 
-- Use 'GI.Gtk.Objects.ToolButton.toolButtonNew' to create a new t'GI.Gtk.Objects.ToolButton.ToolButton'.
-- 
-- The label of a t'GI.Gtk.Objects.ToolButton.ToolButton' is determined by the properties
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@, t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@, and
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@. If t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@ is
-- non-'P.Nothing', then that widget is used as the label. Otherwise, if
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@ is non-'P.Nothing', that string is used as the label.
-- Otherwise, if t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ is non-'P.Nothing', the label is
-- determined by the stock item. Otherwise, the button does not have a label.
-- 
-- The icon of a t'GI.Gtk.Objects.ToolButton.ToolButton' is determined by the properties
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-widget/@ and t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@. If
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-widget/@ is non-'P.Nothing', then
-- that widget is used as the icon. Otherwise, if t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ is
-- non-'P.Nothing', the icon is determined by the stock item. Otherwise,
-- the button does not have a icon.
-- 
-- = CSS nodes
-- 
-- GtkToolButton has a single CSS node with name toolbutton.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ToolButton
    ( 

-- * Exported types
    ToolButton(..)                          ,
    IsToolButton                            ,
    toToolButton                            ,
    noToolButton                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveToolButtonMethod                 ,
#endif


-- ** getIconName #method:getIconName#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetIconNameMethodInfo         ,
#endif
    toolButtonGetIconName                   ,


-- ** getIconWidget #method:getIconWidget#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetIconWidgetMethodInfo       ,
#endif
    toolButtonGetIconWidget                 ,


-- ** getLabel #method:getLabel#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetLabelMethodInfo            ,
#endif
    toolButtonGetLabel                      ,


-- ** getLabelWidget #method:getLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetLabelWidgetMethodInfo      ,
#endif
    toolButtonGetLabelWidget                ,


-- ** getStockId #method:getStockId#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetStockIdMethodInfo          ,
#endif
    toolButtonGetStockId                    ,


-- ** getUseUnderline #method:getUseUnderline#

#if defined(ENABLE_OVERLOADING)
    ToolButtonGetUseUnderlineMethodInfo     ,
#endif
    toolButtonGetUseUnderline               ,


-- ** new #method:new#

    toolButtonNew                           ,


-- ** newFromStock #method:newFromStock#

    toolButtonNewFromStock                  ,


-- ** setIconName #method:setIconName#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetIconNameMethodInfo         ,
#endif
    toolButtonSetIconName                   ,


-- ** setIconWidget #method:setIconWidget#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetIconWidgetMethodInfo       ,
#endif
    toolButtonSetIconWidget                 ,


-- ** setLabel #method:setLabel#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetLabelMethodInfo            ,
#endif
    toolButtonSetLabel                      ,


-- ** setLabelWidget #method:setLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetLabelWidgetMethodInfo      ,
#endif
    toolButtonSetLabelWidget                ,


-- ** setStockId #method:setStockId#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetStockIdMethodInfo          ,
#endif
    toolButtonSetStockId                    ,


-- ** setUseUnderline #method:setUseUnderline#

#if defined(ENABLE_OVERLOADING)
    ToolButtonSetUseUnderlineMethodInfo     ,
#endif
    toolButtonSetUseUnderline               ,




 -- * Properties
-- ** iconName #attr:iconName#
-- | The name of the themed icon displayed on the item.
-- This property only has an effect if not overridden by
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@, t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-widget/@ or
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ properties.
-- 
-- /Since: 2.8/

#if defined(ENABLE_OVERLOADING)
    ToolButtonIconNamePropertyInfo          ,
#endif
    clearToolButtonIconName                 ,
    constructToolButtonIconName             ,
    getToolButtonIconName                   ,
    setToolButtonIconName                   ,
#if defined(ENABLE_OVERLOADING)
    toolButtonIconName                      ,
#endif


-- ** iconWidget #attr:iconWidget#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolButtonIconWidgetPropertyInfo        ,
#endif
    clearToolButtonIconWidget               ,
    constructToolButtonIconWidget           ,
    getToolButtonIconWidget                 ,
    setToolButtonIconWidget                 ,
#if defined(ENABLE_OVERLOADING)
    toolButtonIconWidget                    ,
#endif


-- ** label #attr:label#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolButtonLabelPropertyInfo             ,
#endif
    clearToolButtonLabel                    ,
    constructToolButtonLabel                ,
    getToolButtonLabel                      ,
    setToolButtonLabel                      ,
#if defined(ENABLE_OVERLOADING)
    toolButtonLabel                         ,
#endif


-- ** labelWidget #attr:labelWidget#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolButtonLabelWidgetPropertyInfo       ,
#endif
    clearToolButtonLabelWidget              ,
    constructToolButtonLabelWidget          ,
    getToolButtonLabelWidget                ,
    setToolButtonLabelWidget                ,
#if defined(ENABLE_OVERLOADING)
    toolButtonLabelWidget                   ,
#endif


-- ** stockId #attr:stockId#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolButtonStockIdPropertyInfo           ,
#endif
    clearToolButtonStockId                  ,
    constructToolButtonStockId              ,
    getToolButtonStockId                    ,
    setToolButtonStockId                    ,
#if defined(ENABLE_OVERLOADING)
    toolButtonStockId                       ,
#endif


-- ** useUnderline #attr:useUnderline#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ToolButtonUseUnderlinePropertyInfo      ,
#endif
    constructToolButtonUseUnderline         ,
    getToolButtonUseUnderline               ,
    setToolButtonUseUnderline               ,
#if defined(ENABLE_OVERLOADING)
    toolButtonUseUnderline                  ,
#endif




 -- * Signals
-- ** clicked #signal:clicked#

    C_ToolButtonClickedCallback             ,
    ToolButtonClickedCallback               ,
#if defined(ENABLE_OVERLOADING)
    ToolButtonClickedSignalInfo             ,
#endif
    afterToolButtonClicked                  ,
    genClosure_ToolButtonClicked            ,
    mk_ToolButtonClickedCallback            ,
    noToolButtonClickedCallback             ,
    onToolButtonClicked                     ,
    wrap_ToolButtonClickedCallback          ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToolItem as Gtk.ToolItem
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ToolButton = ToolButton (ManagedPtr ToolButton)
    deriving (Eq)
foreign import ccall "gtk_tool_button_get_type"
    c_gtk_tool_button_get_type :: IO GType

instance GObject ToolButton where
    gobjectType = c_gtk_tool_button_get_type
    

-- | Convert 'ToolButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ToolButton where
    toGValue o = do
        gtype <- c_gtk_tool_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ToolButton)
        B.ManagedPtr.newObject ToolButton ptr
        
    

-- | Type class for types which can be safely cast to `ToolButton`, for instance with `toToolButton`.
class (GObject o, O.IsDescendantOf ToolButton o) => IsToolButton o
instance (GObject o, O.IsDescendantOf ToolButton o) => IsToolButton o

instance O.HasParentTypes ToolButton
type instance O.ParentTypes ToolButton = '[Gtk.ToolItem.ToolItem, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `ToolButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toToolButton :: (MonadIO m, IsToolButton o) => o -> m ToolButton
toToolButton = liftIO . unsafeCastTo ToolButton

-- | A convenience alias for `Nothing` :: `Maybe` `ToolButton`.
noToolButton :: Maybe ToolButton
noToolButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveToolButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveToolButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveToolButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveToolButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveToolButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveToolButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveToolButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveToolButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveToolButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveToolButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveToolButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveToolButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveToolButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveToolButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveToolButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveToolButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveToolButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveToolButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveToolButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveToolButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveToolButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveToolButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveToolButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveToolButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveToolButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveToolButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveToolButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveToolButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveToolButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveToolButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveToolButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveToolButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveToolButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveToolButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveToolButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveToolButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveToolButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveToolButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveToolButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveToolButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveToolButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveToolButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveToolButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveToolButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveToolButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveToolButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveToolButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveToolButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveToolButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveToolButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveToolButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveToolButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveToolButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveToolButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveToolButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveToolButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveToolButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveToolButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveToolButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveToolButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveToolButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveToolButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveToolButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveToolButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveToolButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveToolButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveToolButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveToolButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveToolButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveToolButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveToolButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveToolButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveToolButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveToolButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveToolButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveToolButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveToolButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveToolButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveToolButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveToolButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveToolButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveToolButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveToolButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveToolButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveToolButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveToolButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveToolButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveToolButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveToolButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveToolButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveToolButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveToolButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveToolButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveToolButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveToolButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveToolButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveToolButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveToolButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveToolButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveToolButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveToolButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveToolButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveToolButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveToolButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveToolButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveToolButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveToolButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveToolButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveToolButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveToolButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveToolButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveToolButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveToolButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveToolButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveToolButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveToolButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveToolButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveToolButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveToolButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveToolButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveToolButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveToolButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveToolButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveToolButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveToolButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveToolButtonMethod "rebuildMenu" o = Gtk.ToolItem.ToolItemRebuildMenuMethodInfo
    ResolveToolButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveToolButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveToolButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveToolButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveToolButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveToolButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveToolButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveToolButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveToolButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveToolButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveToolButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveToolButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveToolButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveToolButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveToolButtonMethod "retrieveProxyMenuItem" o = Gtk.ToolItem.ToolItemRetrieveProxyMenuItemMethodInfo
    ResolveToolButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveToolButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveToolButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveToolButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveToolButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveToolButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveToolButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveToolButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveToolButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveToolButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveToolButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveToolButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveToolButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveToolButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveToolButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveToolButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveToolButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveToolButtonMethod "toolbarReconfigured" o = Gtk.ToolItem.ToolItemToolbarReconfiguredMethodInfo
    ResolveToolButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveToolButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveToolButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveToolButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveToolButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveToolButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveToolButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveToolButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveToolButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveToolButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveToolButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveToolButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveToolButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveToolButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveToolButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveToolButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveToolButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveToolButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveToolButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveToolButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveToolButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveToolButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveToolButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveToolButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveToolButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveToolButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveToolButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveToolButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveToolButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveToolButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveToolButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveToolButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveToolButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveToolButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveToolButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveToolButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveToolButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveToolButtonMethod "getEllipsizeMode" o = Gtk.ToolItem.ToolItemGetEllipsizeModeMethodInfo
    ResolveToolButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveToolButtonMethod "getExpand" o = Gtk.ToolItem.ToolItemGetExpandMethodInfo
    ResolveToolButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveToolButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveToolButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveToolButtonMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveToolButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveToolButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveToolButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveToolButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveToolButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveToolButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveToolButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveToolButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveToolButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveToolButtonMethod "getHomogeneous" o = Gtk.ToolItem.ToolItemGetHomogeneousMethodInfo
    ResolveToolButtonMethod "getIconName" o = ToolButtonGetIconNameMethodInfo
    ResolveToolButtonMethod "getIconSize" o = Gtk.ToolItem.ToolItemGetIconSizeMethodInfo
    ResolveToolButtonMethod "getIconWidget" o = ToolButtonGetIconWidgetMethodInfo
    ResolveToolButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveToolButtonMethod "getIsImportant" o = Gtk.ToolItem.ToolItemGetIsImportantMethodInfo
    ResolveToolButtonMethod "getLabel" o = ToolButtonGetLabelMethodInfo
    ResolveToolButtonMethod "getLabelWidget" o = ToolButtonGetLabelWidgetMethodInfo
    ResolveToolButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveToolButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveToolButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveToolButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveToolButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveToolButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveToolButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveToolButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveToolButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveToolButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveToolButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveToolButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveToolButtonMethod "getOrientation" o = Gtk.ToolItem.ToolItemGetOrientationMethodInfo
    ResolveToolButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveToolButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveToolButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveToolButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveToolButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveToolButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveToolButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveToolButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveToolButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveToolButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveToolButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveToolButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveToolButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveToolButtonMethod "getProxyMenuItem" o = Gtk.ToolItem.ToolItemGetProxyMenuItemMethodInfo
    ResolveToolButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveToolButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveToolButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveToolButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveToolButtonMethod "getReliefStyle" o = Gtk.ToolItem.ToolItemGetReliefStyleMethodInfo
    ResolveToolButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveToolButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveToolButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveToolButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveToolButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveToolButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveToolButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveToolButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveToolButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveToolButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveToolButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveToolButtonMethod "getStockId" o = ToolButtonGetStockIdMethodInfo
    ResolveToolButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveToolButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveToolButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveToolButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveToolButtonMethod "getTextAlignment" o = Gtk.ToolItem.ToolItemGetTextAlignmentMethodInfo
    ResolveToolButtonMethod "getTextOrientation" o = Gtk.ToolItem.ToolItemGetTextOrientationMethodInfo
    ResolveToolButtonMethod "getTextSizeGroup" o = Gtk.ToolItem.ToolItemGetTextSizeGroupMethodInfo
    ResolveToolButtonMethod "getToolbarStyle" o = Gtk.ToolItem.ToolItemGetToolbarStyleMethodInfo
    ResolveToolButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveToolButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveToolButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveToolButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveToolButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveToolButtonMethod "getUseDragWindow" o = Gtk.ToolItem.ToolItemGetUseDragWindowMethodInfo
    ResolveToolButtonMethod "getUseUnderline" o = ToolButtonGetUseUnderlineMethodInfo
    ResolveToolButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveToolButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveToolButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveToolButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveToolButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveToolButtonMethod "getVisibleHorizontal" o = Gtk.ToolItem.ToolItemGetVisibleHorizontalMethodInfo
    ResolveToolButtonMethod "getVisibleVertical" o = Gtk.ToolItem.ToolItemGetVisibleVerticalMethodInfo
    ResolveToolButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveToolButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveToolButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveToolButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveToolButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveToolButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveToolButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveToolButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveToolButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveToolButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveToolButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveToolButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveToolButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveToolButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveToolButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveToolButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveToolButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveToolButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveToolButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveToolButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveToolButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveToolButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveToolButtonMethod "setExpand" o = Gtk.ToolItem.ToolItemSetExpandMethodInfo
    ResolveToolButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveToolButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveToolButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveToolButtonMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveToolButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveToolButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveToolButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveToolButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveToolButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveToolButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveToolButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveToolButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveToolButtonMethod "setHomogeneous" o = Gtk.ToolItem.ToolItemSetHomogeneousMethodInfo
    ResolveToolButtonMethod "setIconName" o = ToolButtonSetIconNameMethodInfo
    ResolveToolButtonMethod "setIconWidget" o = ToolButtonSetIconWidgetMethodInfo
    ResolveToolButtonMethod "setIsImportant" o = Gtk.ToolItem.ToolItemSetIsImportantMethodInfo
    ResolveToolButtonMethod "setLabel" o = ToolButtonSetLabelMethodInfo
    ResolveToolButtonMethod "setLabelWidget" o = ToolButtonSetLabelWidgetMethodInfo
    ResolveToolButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveToolButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveToolButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveToolButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveToolButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveToolButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveToolButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveToolButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveToolButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveToolButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveToolButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveToolButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveToolButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveToolButtonMethod "setProxyMenuItem" o = Gtk.ToolItem.ToolItemSetProxyMenuItemMethodInfo
    ResolveToolButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveToolButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveToolButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveToolButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveToolButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveToolButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveToolButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveToolButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveToolButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveToolButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveToolButtonMethod "setStockId" o = ToolButtonSetStockIdMethodInfo
    ResolveToolButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveToolButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveToolButtonMethod "setTooltipMarkup" o = Gtk.ToolItem.ToolItemSetTooltipMarkupMethodInfo
    ResolveToolButtonMethod "setTooltipText" o = Gtk.ToolItem.ToolItemSetTooltipTextMethodInfo
    ResolveToolButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveToolButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveToolButtonMethod "setUseDragWindow" o = Gtk.ToolItem.ToolItemSetUseDragWindowMethodInfo
    ResolveToolButtonMethod "setUseUnderline" o = ToolButtonSetUseUnderlineMethodInfo
    ResolveToolButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveToolButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveToolButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveToolButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveToolButtonMethod "setVisibleHorizontal" o = Gtk.ToolItem.ToolItemSetVisibleHorizontalMethodInfo
    ResolveToolButtonMethod "setVisibleVertical" o = Gtk.ToolItem.ToolItemSetVisibleVerticalMethodInfo
    ResolveToolButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveToolButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveToolButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveToolButtonMethod t ToolButton, O.MethodInfo info ToolButton p) => OL.IsLabel t (ToolButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ToolButton::clicked
-- | This signal is emitted when the tool button is clicked with the mouse
-- or activated with the keyboard.
type ToolButtonClickedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ToolButtonClickedCallback`@.
noToolButtonClickedCallback :: Maybe ToolButtonClickedCallback
noToolButtonClickedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ToolButtonClickedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ToolButtonClickedCallback`.
foreign import ccall "wrapper"
    mk_ToolButtonClickedCallback :: C_ToolButtonClickedCallback -> IO (FunPtr C_ToolButtonClickedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ToolButtonClicked :: MonadIO m => ToolButtonClickedCallback -> m (GClosure C_ToolButtonClickedCallback)
genClosure_ToolButtonClicked cb = liftIO $ do
    let cb' = wrap_ToolButtonClickedCallback cb
    mk_ToolButtonClickedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ToolButtonClickedCallback` into a `C_ToolButtonClickedCallback`.
wrap_ToolButtonClickedCallback ::
    ToolButtonClickedCallback ->
    C_ToolButtonClickedCallback
wrap_ToolButtonClickedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [clicked](#signal:clicked) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' toolButton #clicked callback
-- @
-- 
-- 
onToolButtonClicked :: (IsToolButton a, MonadIO m) => a -> ToolButtonClickedCallback -> m SignalHandlerId
onToolButtonClicked obj cb = liftIO $ do
    let cb' = wrap_ToolButtonClickedCallback cb
    cb'' <- mk_ToolButtonClickedCallback cb'
    connectSignalFunPtr obj "clicked" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [clicked](#signal:clicked) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' toolButton #clicked callback
-- @
-- 
-- 
afterToolButtonClicked :: (IsToolButton a, MonadIO m) => a -> ToolButtonClickedCallback -> m SignalHandlerId
afterToolButtonClicked obj cb = liftIO $ do
    let cb' = wrap_ToolButtonClickedCallback cb
    cb'' <- mk_ToolButtonClickedCallback cb'
    connectSignalFunPtr obj "clicked" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ToolButtonClickedSignalInfo
instance SignalInfo ToolButtonClickedSignalInfo where
    type HaskellCallbackType ToolButtonClickedSignalInfo = ToolButtonClickedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ToolButtonClickedCallback cb
        cb'' <- mk_ToolButtonClickedCallback cb'
        connectSignalFunPtr obj "clicked" cb'' connectMode detail

#endif

-- VVV Prop "icon-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #iconName
-- @
getToolButtonIconName :: (MonadIO m, IsToolButton o) => o -> m (Maybe T.Text)
getToolButtonIconName obj = liftIO $ B.Properties.getObjectPropertyString obj "icon-name"

-- | Set the value of the “@icon-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #iconName 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonIconName :: (MonadIO m, IsToolButton o) => o -> T.Text -> m ()
setToolButtonIconName obj val = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonIconName :: (IsToolButton o) => T.Text -> IO (GValueConstruct o)
constructToolButtonIconName val = B.Properties.constructObjectPropertyString "icon-name" (Just val)

-- | Set the value of the “@icon-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #iconName
-- @
clearToolButtonIconName :: (MonadIO m, IsToolButton o) => o -> m ()
clearToolButtonIconName obj = liftIO $ B.Properties.setObjectPropertyString obj "icon-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ToolButtonIconNamePropertyInfo
instance AttrInfo ToolButtonIconNamePropertyInfo where
    type AttrAllowedOps ToolButtonIconNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ToolButtonIconNamePropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonIconNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ToolButtonIconNamePropertyInfo = (~) T.Text
    type AttrTransferType ToolButtonIconNamePropertyInfo = T.Text
    type AttrGetType ToolButtonIconNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ToolButtonIconNamePropertyInfo = "icon-name"
    type AttrOrigin ToolButtonIconNamePropertyInfo = ToolButton
    attrGet = getToolButtonIconName
    attrSet = setToolButtonIconName
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolButtonIconName
    attrClear = clearToolButtonIconName
#endif

-- VVV Prop "icon-widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@icon-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #iconWidget
-- @
getToolButtonIconWidget :: (MonadIO m, IsToolButton o) => o -> m (Maybe Gtk.Widget.Widget)
getToolButtonIconWidget obj = liftIO $ B.Properties.getObjectPropertyObject obj "icon-widget" Gtk.Widget.Widget

-- | Set the value of the “@icon-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #iconWidget 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonIconWidget :: (MonadIO m, IsToolButton o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setToolButtonIconWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "icon-widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon-widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonIconWidget :: (IsToolButton o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructToolButtonIconWidget val = B.Properties.constructObjectPropertyObject "icon-widget" (Just val)

-- | Set the value of the “@icon-widget@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #iconWidget
-- @
clearToolButtonIconWidget :: (MonadIO m, IsToolButton o) => o -> m ()
clearToolButtonIconWidget obj = liftIO $ B.Properties.setObjectPropertyObject obj "icon-widget" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data ToolButtonIconWidgetPropertyInfo
instance AttrInfo ToolButtonIconWidgetPropertyInfo where
    type AttrAllowedOps ToolButtonIconWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ToolButtonIconWidgetPropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonIconWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ToolButtonIconWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ToolButtonIconWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType ToolButtonIconWidgetPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ToolButtonIconWidgetPropertyInfo = "icon-widget"
    type AttrOrigin ToolButtonIconWidgetPropertyInfo = ToolButton
    attrGet = getToolButtonIconWidget
    attrSet = setToolButtonIconWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructToolButtonIconWidget
    attrClear = clearToolButtonIconWidget
#endif

-- VVV Prop "label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #label
-- @
getToolButtonLabel :: (MonadIO m, IsToolButton o) => o -> m (Maybe T.Text)
getToolButtonLabel obj = liftIO $ B.Properties.getObjectPropertyString obj "label"

-- | Set the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #label 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonLabel :: (MonadIO m, IsToolButton o) => o -> T.Text -> m ()
setToolButtonLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonLabel :: (IsToolButton o) => T.Text -> IO (GValueConstruct o)
constructToolButtonLabel val = B.Properties.constructObjectPropertyString "label" (Just val)

-- | Set the value of the “@label@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #label
-- @
clearToolButtonLabel :: (MonadIO m, IsToolButton o) => o -> m ()
clearToolButtonLabel obj = liftIO $ B.Properties.setObjectPropertyString obj "label" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ToolButtonLabelPropertyInfo
instance AttrInfo ToolButtonLabelPropertyInfo where
    type AttrAllowedOps ToolButtonLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ToolButtonLabelPropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ToolButtonLabelPropertyInfo = (~) T.Text
    type AttrTransferType ToolButtonLabelPropertyInfo = T.Text
    type AttrGetType ToolButtonLabelPropertyInfo = (Maybe T.Text)
    type AttrLabel ToolButtonLabelPropertyInfo = "label"
    type AttrOrigin ToolButtonLabelPropertyInfo = ToolButton
    attrGet = getToolButtonLabel
    attrSet = setToolButtonLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolButtonLabel
    attrClear = clearToolButtonLabel
#endif

-- VVV Prop "label-widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #labelWidget
-- @
getToolButtonLabelWidget :: (MonadIO m, IsToolButton o) => o -> m (Maybe Gtk.Widget.Widget)
getToolButtonLabelWidget obj = liftIO $ B.Properties.getObjectPropertyObject obj "label-widget" Gtk.Widget.Widget

-- | Set the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #labelWidget 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonLabelWidget :: (MonadIO m, IsToolButton o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setToolButtonLabelWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "label-widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label-widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonLabelWidget :: (IsToolButton o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructToolButtonLabelWidget val = B.Properties.constructObjectPropertyObject "label-widget" (Just val)

-- | Set the value of the “@label-widget@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #labelWidget
-- @
clearToolButtonLabelWidget :: (MonadIO m, IsToolButton o) => o -> m ()
clearToolButtonLabelWidget obj = liftIO $ B.Properties.setObjectPropertyObject obj "label-widget" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data ToolButtonLabelWidgetPropertyInfo
instance AttrInfo ToolButtonLabelWidgetPropertyInfo where
    type AttrAllowedOps ToolButtonLabelWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ToolButtonLabelWidgetPropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ToolButtonLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ToolButtonLabelWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType ToolButtonLabelWidgetPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ToolButtonLabelWidgetPropertyInfo = "label-widget"
    type AttrOrigin ToolButtonLabelWidgetPropertyInfo = ToolButton
    attrGet = getToolButtonLabelWidget
    attrSet = setToolButtonLabelWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructToolButtonLabelWidget
    attrClear = clearToolButtonLabelWidget
#endif

-- VVV Prop "stock-id"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #stockId
-- @
getToolButtonStockId :: (MonadIO m, IsToolButton o) => o -> m T.Text
getToolButtonStockId obj = liftIO $ checkUnexpectedNothing "getToolButtonStockId" $ B.Properties.getObjectPropertyString obj "stock-id"

-- | Set the value of the “@stock-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #stockId 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonStockId :: (MonadIO m, IsToolButton o) => o -> T.Text -> m ()
setToolButtonStockId obj val = liftIO $ B.Properties.setObjectPropertyString obj "stock-id" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@stock-id@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonStockId :: (IsToolButton o) => T.Text -> IO (GValueConstruct o)
constructToolButtonStockId val = B.Properties.constructObjectPropertyString "stock-id" (Just val)

-- | Set the value of the “@stock-id@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #stockId
-- @
clearToolButtonStockId :: (MonadIO m, IsToolButton o) => o -> m ()
clearToolButtonStockId obj = liftIO $ B.Properties.setObjectPropertyString obj "stock-id" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ToolButtonStockIdPropertyInfo
instance AttrInfo ToolButtonStockIdPropertyInfo where
    type AttrAllowedOps ToolButtonStockIdPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ToolButtonStockIdPropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonStockIdPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ToolButtonStockIdPropertyInfo = (~) T.Text
    type AttrTransferType ToolButtonStockIdPropertyInfo = T.Text
    type AttrGetType ToolButtonStockIdPropertyInfo = T.Text
    type AttrLabel ToolButtonStockIdPropertyInfo = "stock-id"
    type AttrOrigin ToolButtonStockIdPropertyInfo = ToolButton
    attrGet = getToolButtonStockId
    attrSet = setToolButtonStockId
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolButtonStockId
    attrClear = clearToolButtonStockId
#endif

-- VVV Prop "use-underline"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-underline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' toolButton #useUnderline
-- @
getToolButtonUseUnderline :: (MonadIO m, IsToolButton o) => o -> m Bool
getToolButtonUseUnderline obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-underline"

-- | Set the value of the “@use-underline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' toolButton [ #useUnderline 'Data.GI.Base.Attributes.:=' value ]
-- @
setToolButtonUseUnderline :: (MonadIO m, IsToolButton o) => o -> Bool -> m ()
setToolButtonUseUnderline obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-underline" val

-- | Construct a `GValueConstruct` with valid value for the “@use-underline@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructToolButtonUseUnderline :: (IsToolButton o) => Bool -> IO (GValueConstruct o)
constructToolButtonUseUnderline val = B.Properties.constructObjectPropertyBool "use-underline" val

#if defined(ENABLE_OVERLOADING)
data ToolButtonUseUnderlinePropertyInfo
instance AttrInfo ToolButtonUseUnderlinePropertyInfo where
    type AttrAllowedOps ToolButtonUseUnderlinePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ToolButtonUseUnderlinePropertyInfo = IsToolButton
    type AttrSetTypeConstraint ToolButtonUseUnderlinePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ToolButtonUseUnderlinePropertyInfo = (~) Bool
    type AttrTransferType ToolButtonUseUnderlinePropertyInfo = Bool
    type AttrGetType ToolButtonUseUnderlinePropertyInfo = Bool
    type AttrLabel ToolButtonUseUnderlinePropertyInfo = "use-underline"
    type AttrOrigin ToolButtonUseUnderlinePropertyInfo = ToolButton
    attrGet = getToolButtonUseUnderline
    attrSet = setToolButtonUseUnderline
    attrTransfer _ v = do
        return v
    attrConstruct = constructToolButtonUseUnderline
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ToolButton
type instance O.AttributeList ToolButton = ToolButtonAttributeList
type ToolButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("iconName", ToolButtonIconNamePropertyInfo), '("iconWidget", ToolButtonIconWidgetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isImportant", Gtk.ToolItem.ToolItemIsImportantPropertyInfo), '("label", ToolButtonLabelPropertyInfo), '("labelWidget", ToolButtonLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("stockId", ToolButtonStockIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useUnderline", ToolButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visibleHorizontal", Gtk.ToolItem.ToolItemVisibleHorizontalPropertyInfo), '("visibleVertical", Gtk.ToolItem.ToolItemVisibleVerticalPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
toolButtonIconName :: AttrLabelProxy "iconName"
toolButtonIconName = AttrLabelProxy

toolButtonIconWidget :: AttrLabelProxy "iconWidget"
toolButtonIconWidget = AttrLabelProxy

toolButtonLabel :: AttrLabelProxy "label"
toolButtonLabel = AttrLabelProxy

toolButtonLabelWidget :: AttrLabelProxy "labelWidget"
toolButtonLabelWidget = AttrLabelProxy

toolButtonStockId :: AttrLabelProxy "stockId"
toolButtonStockId = AttrLabelProxy

toolButtonUseUnderline :: AttrLabelProxy "useUnderline"
toolButtonUseUnderline = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ToolButton = ToolButtonSignalList
type ToolButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", ToolButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createMenuProxy", Gtk.ToolItem.ToolItemCreateMenuProxySignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toolbarReconfigured", Gtk.ToolItem.ToolItemToolbarReconfiguredSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ToolButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "icon_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a widget that will be used as the button contents, or %NULL"
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string that will be used as label, or %NULL"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_button_new" gtk_tool_button_new :: 
    Ptr Gtk.Widget.Widget ->                -- icon_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr ToolButton)

-- | Creates a new t'GI.Gtk.Objects.ToolButton.ToolButton' using /@iconWidget@/ as contents and /@label@/ as
-- label.
-- 
-- /Since: 2.4/
toolButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    Maybe (a)
    -- ^ /@iconWidget@/: a widget that will be used as the button contents, or 'P.Nothing'
    -> Maybe (T.Text)
    -- ^ /@label@/: a string that will be used as label, or 'P.Nothing'
    -> m ToolButton
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ToolButton.ToolButton'
toolButtonNew iconWidget label = liftIO $ do
    maybeIconWidget <- case iconWidget of
        Nothing -> return nullPtr
        Just jIconWidget -> do
            jIconWidget' <- unsafeManagedPtrCastPtr jIconWidget
            return jIconWidget'
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_tool_button_new maybeIconWidget maybeLabel
    checkUnexpectedReturnNULL "toolButtonNew" result
    result' <- (newObject ToolButton) result
    whenJust iconWidget touchManagedPtr
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToolButton::new_from_stock
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the stock item"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ToolButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_tool_button_new_from_stock" gtk_tool_button_new_from_stock :: 
    CString ->                              -- stock_id : TBasicType TUTF8
    IO (Ptr ToolButton)

{-# DEPRECATED toolButtonNewFromStock ["(Since version 3.10)","Use 'GI.Gtk.Objects.ToolButton.toolButtonNew' together with","'GI.Gtk.Objects.Image.imageNewFromIconName' instead."] #-}
-- | Creates a new t'GI.Gtk.Objects.ToolButton.ToolButton' containing the image and text from a
-- stock item. Some stock ids have preprocessor macros like 'GI.Gtk.Constants.STOCK_OK'
-- and 'GI.Gtk.Constants.STOCK_APPLY'.
-- 
-- It is an error if /@stockId@/ is not a name of a stock item.
-- 
-- /Since: 2.4/
toolButtonNewFromStock ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@stockId@/: the name of the stock item
    -> m ToolButton
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ToolButton.ToolButton'
toolButtonNewFromStock stockId = liftIO $ do
    stockId' <- textToCString stockId
    result <- gtk_tool_button_new_from_stock stockId'
    checkUnexpectedReturnNULL "toolButtonNewFromStock" result
    result' <- (newObject ToolButton) result
    freeMem stockId'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ToolButton::get_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_icon_name" gtk_tool_button_get_icon_name :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO CString

-- | Returns the name of the themed icon for the tool button,
-- see 'GI.Gtk.Objects.ToolButton.toolButtonSetIconName'.
-- 
-- /Since: 2.8/
toolButtonGetIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the icon name or 'P.Nothing' if the tool button has
    -- no themed icon
toolButtonGetIconName button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_icon_name button'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr button
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetIconNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetIconNameMethodInfo a signature where
    overloadedMethod = toolButtonGetIconName

#endif

-- method ToolButton::get_icon_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_icon_widget" gtk_tool_button_get_icon_widget :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO (Ptr Gtk.Widget.Widget)

-- | Return the widget used as icon widget on /@button@/.
-- See 'GI.Gtk.Objects.ToolButton.toolButtonSetIconWidget'.
-- 
-- /Since: 2.4/
toolButtonGetIconWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ The widget used as icon
    --     on /@button@/, or 'P.Nothing'.
toolButtonGetIconWidget button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_icon_widget button'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr button
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetIconWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetIconWidgetMethodInfo a signature where
    overloadedMethod = toolButtonGetIconWidget

#endif

-- method ToolButton::get_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_label" gtk_tool_button_get_label :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO CString

-- | Returns the label used by the tool button, or 'P.Nothing' if the tool button
-- doesn’t have a label. or uses a the label from a stock item. The returned
-- string is owned by GTK+, and must not be modified or freed.
-- 
-- /Since: 2.4/
toolButtonGetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The label, or 'P.Nothing'
toolButtonGetLabel button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_label button'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr button
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetLabelMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetLabelMethodInfo a signature where
    overloadedMethod = toolButtonGetLabel

#endif

-- method ToolButton::get_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_label_widget" gtk_tool_button_get_label_widget :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the widget used as label on /@button@/.
-- See 'GI.Gtk.Objects.ToolButton.toolButtonSetLabelWidget'.
-- 
-- /Since: 2.4/
toolButtonGetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ The widget used as label
    --     on /@button@/, or 'P.Nothing'.
toolButtonGetLabelWidget button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_label_widget button'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr button
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetLabelWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetLabelWidgetMethodInfo a signature where
    overloadedMethod = toolButtonGetLabelWidget

#endif

-- method ToolButton::get_stock_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_stock_id" gtk_tool_button_get_stock_id :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO CString

{-# DEPRECATED toolButtonGetStockId ["(Since version 3.10)","Use 'GI.Gtk.Objects.ToolButton.toolButtonGetIconName' instead."] #-}
-- | Returns the name of the stock item. See 'GI.Gtk.Objects.ToolButton.toolButtonSetStockId'.
-- The returned string is owned by GTK+ and must not be freed or modifed.
-- 
-- /Since: 2.4/
toolButtonGetStockId ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m T.Text
    -- ^ __Returns:__ the name of the stock item for /@button@/.
toolButtonGetStockId button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_stock_id button'
    checkUnexpectedReturnNULL "toolButtonGetStockId" result
    result' <- cstringToText result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetStockIdMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetStockIdMethodInfo a signature where
    overloadedMethod = toolButtonGetStockId

#endif

-- method ToolButton::get_use_underline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_tool_button_get_use_underline" gtk_tool_button_get_use_underline :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    IO CInt

-- | Returns whether underscores in the label property are used as mnemonics
-- on menu items on the overflow menu. See 'GI.Gtk.Objects.ToolButton.toolButtonSetUseUnderline'.
-- 
-- /Since: 2.4/
toolButtonGetUseUnderline ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if underscores in the label property are used as
    -- mnemonics on menu items on the overflow menu.
toolButtonGetUseUnderline button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_tool_button_get_use_underline button'
    let result' = (/= 0) result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data ToolButtonGetUseUnderlineMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonGetUseUnderlineMethodInfo a signature where
    overloadedMethod = toolButtonGetUseUnderline

#endif

-- method ToolButton::set_icon_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the themed icon"
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

foreign import ccall "gtk_tool_button_set_icon_name" gtk_tool_button_set_icon_name :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    CString ->                              -- icon_name : TBasicType TUTF8
    IO ()

-- | Sets the icon for the tool button from a named themed icon.
-- See the docs for t'GI.Gtk.Objects.IconTheme.IconTheme' for more details.
-- The t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-name/@ property only has an effect if not
-- overridden by non-'P.Nothing' t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@,
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-widget/@ and t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ properties.
-- 
-- /Since: 2.8/
toolButtonSetIconName ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Maybe (T.Text)
    -- ^ /@iconName@/: the name of the themed icon
    -> m ()
toolButtonSetIconName button iconName = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    maybeIconName <- case iconName of
        Nothing -> return nullPtr
        Just jIconName -> do
            jIconName' <- textToCString jIconName
            return jIconName'
    gtk_tool_button_set_icon_name button' maybeIconName
    touchManagedPtr button
    freeMem maybeIconName
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetIconNameMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonSetIconNameMethodInfo a signature where
    overloadedMethod = toolButtonSetIconName

#endif

-- method ToolButton::set_icon_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "icon_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the widget used as icon, or %NULL"
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

foreign import ccall "gtk_tool_button_set_icon_widget" gtk_tool_button_set_icon_widget :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    Ptr Gtk.Widget.Widget ->                -- icon_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets /@icon@/ as the widget used as icon on /@button@/. If /@iconWidget@/ is
-- 'P.Nothing' the icon is determined by the t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ property. If the
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ property is also 'P.Nothing', /@button@/ will not have an icon.
-- 
-- /Since: 2.4/
toolButtonSetIconWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Maybe (b)
    -- ^ /@iconWidget@/: the widget used as icon, or 'P.Nothing'
    -> m ()
toolButtonSetIconWidget button iconWidget = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    maybeIconWidget <- case iconWidget of
        Nothing -> return nullPtr
        Just jIconWidget -> do
            jIconWidget' <- unsafeManagedPtrCastPtr jIconWidget
            return jIconWidget'
    gtk_tool_button_set_icon_widget button' maybeIconWidget
    touchManagedPtr button
    whenJust iconWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetIconWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsToolButton a, Gtk.Widget.IsWidget b) => O.MethodInfo ToolButtonSetIconWidgetMethodInfo a signature where
    overloadedMethod = toolButtonSetIconWidget

#endif

-- method ToolButton::set_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a string that will be used as label, or %NULL."
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

foreign import ccall "gtk_tool_button_set_label" gtk_tool_button_set_label :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    CString ->                              -- label : TBasicType TUTF8
    IO ()

-- | Sets /@label@/ as the label used for the tool button. The t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@
-- property only has an effect if not overridden by a non-'P.Nothing'
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@ property. If both the t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@
-- and t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@ properties are 'P.Nothing', the label is determined by the
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ property. If the t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ property is
-- also 'P.Nothing', /@button@/ will not have a label.
-- 
-- /Since: 2.4/
toolButtonSetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Maybe (T.Text)
    -- ^ /@label@/: a string that will be used as label, or 'P.Nothing'.
    -> m ()
toolButtonSetLabel button label = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    gtk_tool_button_set_label button' maybeLabel
    touchManagedPtr button
    freeMem maybeLabel
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetLabelMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonSetLabelMethodInfo a signature where
    overloadedMethod = toolButtonSetLabel

#endif

-- method ToolButton::set_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the widget used as label, or %NULL"
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

foreign import ccall "gtk_tool_button_set_label_widget" gtk_tool_button_set_label_widget :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    Ptr Gtk.Widget.Widget ->                -- label_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets /@labelWidget@/ as the widget that will be used as the label
-- for /@button@/. If /@labelWidget@/ is 'P.Nothing' the t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@ property is used
-- as label. If t'GI.Gtk.Objects.ToolButton.ToolButton':@/label/@ is also 'P.Nothing', the label in the stock item
-- determined by the t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ property is used as label. If
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/stock-id/@ is also 'P.Nothing', /@button@/ does not have a label.
-- 
-- /Since: 2.4/
toolButtonSetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Maybe (b)
    -- ^ /@labelWidget@/: the widget used as label, or 'P.Nothing'
    -> m ()
toolButtonSetLabelWidget button labelWidget = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    maybeLabelWidget <- case labelWidget of
        Nothing -> return nullPtr
        Just jLabelWidget -> do
            jLabelWidget' <- unsafeManagedPtrCastPtr jLabelWidget
            return jLabelWidget'
    gtk_tool_button_set_label_widget button' maybeLabelWidget
    touchManagedPtr button
    whenJust labelWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetLabelWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsToolButton a, Gtk.Widget.IsWidget b) => O.MethodInfo ToolButtonSetLabelWidgetMethodInfo a signature where
    overloadedMethod = toolButtonSetLabelWidget

#endif

-- method ToolButton::set_stock_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "stock_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a name of a stock item, or %NULL"
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

foreign import ccall "gtk_tool_button_set_stock_id" gtk_tool_button_set_stock_id :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    CString ->                              -- stock_id : TBasicType TUTF8
    IO ()

{-# DEPRECATED toolButtonSetStockId ["(Since version 3.10)","Use 'GI.Gtk.Objects.ToolButton.toolButtonSetIconName' instead."] #-}
-- | Sets the name of the stock item. See 'GI.Gtk.Objects.ToolButton.toolButtonNewFromStock'.
-- The stock_id property only has an effect if not overridden by non-'P.Nothing'
-- t'GI.Gtk.Objects.ToolButton.ToolButton':@/label-widget/@ and t'GI.Gtk.Objects.ToolButton.ToolButton':@/icon-widget/@ properties.
-- 
-- /Since: 2.4/
toolButtonSetStockId ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Maybe (T.Text)
    -- ^ /@stockId@/: a name of a stock item, or 'P.Nothing'
    -> m ()
toolButtonSetStockId button stockId = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    maybeStockId <- case stockId of
        Nothing -> return nullPtr
        Just jStockId -> do
            jStockId' <- textToCString jStockId
            return jStockId'
    gtk_tool_button_set_stock_id button' maybeStockId
    touchManagedPtr button
    freeMem maybeStockId
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetStockIdMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonSetStockIdMethodInfo a signature where
    overloadedMethod = toolButtonSetStockId

#endif

-- method ToolButton::set_use_underline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ToolButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkToolButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_underline"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "whether the button label has the form \8220_Open\8221"
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

foreign import ccall "gtk_tool_button_set_use_underline" gtk_tool_button_set_use_underline :: 
    Ptr ToolButton ->                       -- button : TInterface (Name {namespace = "Gtk", name = "ToolButton"})
    CInt ->                                 -- use_underline : TBasicType TBoolean
    IO ()

-- | If set, an underline in the label property indicates that the next character
-- should be used for the mnemonic accelerator key in the overflow menu. For
-- example, if the label property is “_Open” and /@useUnderline@/ is 'P.True',
-- the label on the tool button will be “Open” and the item on the overflow
-- menu will have an underlined “O”.
-- 
-- Labels shown on tool buttons never have mnemonics on them; this property
-- only affects the menu item on the overflow menu.
-- 
-- /Since: 2.4/
toolButtonSetUseUnderline ::
    (B.CallStack.HasCallStack, MonadIO m, IsToolButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ToolButton.ToolButton'
    -> Bool
    -- ^ /@useUnderline@/: whether the button label has the form “_Open”
    -> m ()
toolButtonSetUseUnderline button useUnderline = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    let useUnderline' = (fromIntegral . fromEnum) useUnderline
    gtk_tool_button_set_use_underline button' useUnderline'
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data ToolButtonSetUseUnderlineMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsToolButton a) => O.MethodInfo ToolButtonSetUseUnderlineMethodInfo a signature where
    overloadedMethod = toolButtonSetUseUnderline

#endif

