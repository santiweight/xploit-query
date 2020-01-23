{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkLinkButton is a t'GI.Gtk.Objects.Button.Button' with a hyperlink, similar to the one
-- used by web browsers, which triggers an action when clicked. It is useful
-- to show quick links to resources.
-- 
-- A link button is created by calling either 'GI.Gtk.Objects.LinkButton.linkButtonNew' or
-- 'GI.Gtk.Objects.LinkButton.linkButtonNewWithLabel'. If using the former, the URI you pass
-- to the constructor is used as a label for the widget.
-- 
-- The URI bound to a GtkLinkButton can be set specifically using
-- 'GI.Gtk.Objects.LinkButton.linkButtonSetUri', and retrieved using 'GI.Gtk.Objects.LinkButton.linkButtonGetUri'.
-- 
-- By default, GtkLinkButton calls 'GI.Gtk.Functions.showUriOnWindow' when the button is
-- clicked. This behaviour can be overridden by connecting to the
-- [activateLink]("GI.Gtk.Objects.LinkButton#signal:activateLink") signal and returning 'P.True' from the
-- signal handler.
-- 
-- = CSS nodes
-- 
-- GtkLinkButton has a single CSS node with name button. To differentiate
-- it from a plain t'GI.Gtk.Objects.Button.Button', it gets the .link style class.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.LinkButton
    ( 

-- * Exported types
    LinkButton(..)                          ,
    IsLinkButton                            ,
    toLinkButton                            ,
    noLinkButton                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveLinkButtonMethod                 ,
#endif


-- ** getUri #method:getUri#

#if defined(ENABLE_OVERLOADING)
    LinkButtonGetUriMethodInfo              ,
#endif
    linkButtonGetUri                        ,


-- ** getVisited #method:getVisited#

#if defined(ENABLE_OVERLOADING)
    LinkButtonGetVisitedMethodInfo          ,
#endif
    linkButtonGetVisited                    ,


-- ** new #method:new#

    linkButtonNew                           ,


-- ** newWithLabel #method:newWithLabel#

    linkButtonNewWithLabel                  ,


-- ** setUri #method:setUri#

#if defined(ENABLE_OVERLOADING)
    LinkButtonSetUriMethodInfo              ,
#endif
    linkButtonSetUri                        ,


-- ** setVisited #method:setVisited#

#if defined(ENABLE_OVERLOADING)
    LinkButtonSetVisitedMethodInfo          ,
#endif
    linkButtonSetVisited                    ,




 -- * Properties
-- ** uri #attr:uri#
-- | The URI bound to this button.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    LinkButtonUriPropertyInfo               ,
#endif
    constructLinkButtonUri                  ,
    getLinkButtonUri                        ,
#if defined(ENABLE_OVERLOADING)
    linkButtonUri                           ,
#endif
    setLinkButtonUri                        ,


-- ** visited #attr:visited#
-- | The \'visited\' state of this button. A visited link is drawn in a
-- different color.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    LinkButtonVisitedPropertyInfo           ,
#endif
    constructLinkButtonVisited              ,
    getLinkButtonVisited                    ,
#if defined(ENABLE_OVERLOADING)
    linkButtonVisited                       ,
#endif
    setLinkButtonVisited                    ,




 -- * Signals
-- ** activateLink #signal:activateLink#

    C_LinkButtonActivateLinkCallback        ,
    LinkButtonActivateLinkCallback          ,
#if defined(ENABLE_OVERLOADING)
    LinkButtonActivateLinkSignalInfo        ,
#endif
    afterLinkButtonActivateLink             ,
    genClosure_LinkButtonActivateLink       ,
    mk_LinkButtonActivateLinkCallback       ,
    noLinkButtonActivateLinkCallback        ,
    onLinkButtonActivateLink                ,
    wrap_LinkButtonActivateLinkCallback     ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype LinkButton = LinkButton (ManagedPtr LinkButton)
    deriving (Eq)
foreign import ccall "gtk_link_button_get_type"
    c_gtk_link_button_get_type :: IO GType

instance GObject LinkButton where
    gobjectType = c_gtk_link_button_get_type
    

-- | Convert 'LinkButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue LinkButton where
    toGValue o = do
        gtype <- c_gtk_link_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr LinkButton)
        B.ManagedPtr.newObject LinkButton ptr
        
    

-- | Type class for types which can be safely cast to `LinkButton`, for instance with `toLinkButton`.
class (GObject o, O.IsDescendantOf LinkButton o) => IsLinkButton o
instance (GObject o, O.IsDescendantOf LinkButton o) => IsLinkButton o

instance O.HasParentTypes LinkButton
type instance O.ParentTypes LinkButton = '[Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `LinkButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toLinkButton :: (MonadIO m, IsLinkButton o) => o -> m LinkButton
toLinkButton = liftIO . unsafeCastTo LinkButton

-- | A convenience alias for `Nothing` :: `Maybe` `LinkButton`.
noLinkButton :: Maybe LinkButton
noLinkButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveLinkButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveLinkButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveLinkButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveLinkButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveLinkButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveLinkButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveLinkButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveLinkButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveLinkButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveLinkButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveLinkButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveLinkButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveLinkButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveLinkButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveLinkButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveLinkButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveLinkButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveLinkButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveLinkButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveLinkButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveLinkButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveLinkButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveLinkButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveLinkButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveLinkButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveLinkButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveLinkButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveLinkButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveLinkButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveLinkButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveLinkButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveLinkButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveLinkButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveLinkButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveLinkButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveLinkButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveLinkButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveLinkButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveLinkButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveLinkButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveLinkButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveLinkButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveLinkButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveLinkButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveLinkButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveLinkButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveLinkButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveLinkButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveLinkButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveLinkButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveLinkButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveLinkButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveLinkButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveLinkButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveLinkButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveLinkButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveLinkButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveLinkButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveLinkButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveLinkButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveLinkButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveLinkButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveLinkButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveLinkButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveLinkButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveLinkButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveLinkButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveLinkButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveLinkButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveLinkButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveLinkButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveLinkButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveLinkButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveLinkButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveLinkButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveLinkButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveLinkButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveLinkButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveLinkButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveLinkButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveLinkButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveLinkButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveLinkButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveLinkButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveLinkButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveLinkButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveLinkButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveLinkButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveLinkButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveLinkButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveLinkButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveLinkButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveLinkButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveLinkButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveLinkButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveLinkButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveLinkButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveLinkButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveLinkButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveLinkButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveLinkButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveLinkButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveLinkButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveLinkButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveLinkButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveLinkButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveLinkButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveLinkButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveLinkButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveLinkButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveLinkButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveLinkButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveLinkButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveLinkButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveLinkButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveLinkButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveLinkButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveLinkButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveLinkButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveLinkButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveLinkButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveLinkButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveLinkButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveLinkButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveLinkButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveLinkButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveLinkButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveLinkButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveLinkButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveLinkButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveLinkButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveLinkButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveLinkButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveLinkButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveLinkButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveLinkButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveLinkButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveLinkButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveLinkButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveLinkButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveLinkButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveLinkButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveLinkButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveLinkButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveLinkButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveLinkButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveLinkButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveLinkButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveLinkButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveLinkButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveLinkButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveLinkButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveLinkButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveLinkButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveLinkButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveLinkButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveLinkButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveLinkButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveLinkButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveLinkButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveLinkButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveLinkButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveLinkButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveLinkButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveLinkButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveLinkButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveLinkButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveLinkButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveLinkButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveLinkButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveLinkButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveLinkButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveLinkButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveLinkButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveLinkButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveLinkButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveLinkButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveLinkButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveLinkButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveLinkButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveLinkButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveLinkButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveLinkButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveLinkButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveLinkButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveLinkButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveLinkButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveLinkButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveLinkButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveLinkButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveLinkButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveLinkButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveLinkButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveLinkButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveLinkButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveLinkButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveLinkButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveLinkButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveLinkButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveLinkButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveLinkButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveLinkButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveLinkButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveLinkButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveLinkButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveLinkButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveLinkButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveLinkButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveLinkButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveLinkButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveLinkButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveLinkButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveLinkButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveLinkButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveLinkButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveLinkButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveLinkButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveLinkButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveLinkButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveLinkButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveLinkButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveLinkButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveLinkButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveLinkButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveLinkButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveLinkButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveLinkButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveLinkButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveLinkButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveLinkButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveLinkButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveLinkButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveLinkButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveLinkButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveLinkButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveLinkButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveLinkButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveLinkButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveLinkButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveLinkButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveLinkButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveLinkButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveLinkButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveLinkButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveLinkButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveLinkButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveLinkButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveLinkButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveLinkButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveLinkButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveLinkButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveLinkButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveLinkButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveLinkButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveLinkButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveLinkButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveLinkButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveLinkButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveLinkButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveLinkButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveLinkButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveLinkButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveLinkButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveLinkButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveLinkButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveLinkButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveLinkButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveLinkButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveLinkButtonMethod "getUri" o = LinkButtonGetUriMethodInfo
    ResolveLinkButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveLinkButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveLinkButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveLinkButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveLinkButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveLinkButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveLinkButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveLinkButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveLinkButtonMethod "getVisited" o = LinkButtonGetVisitedMethodInfo
    ResolveLinkButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveLinkButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveLinkButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveLinkButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveLinkButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveLinkButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveLinkButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveLinkButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveLinkButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveLinkButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveLinkButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveLinkButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveLinkButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveLinkButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveLinkButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveLinkButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveLinkButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveLinkButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveLinkButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveLinkButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveLinkButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveLinkButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveLinkButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveLinkButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveLinkButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveLinkButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveLinkButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveLinkButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveLinkButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveLinkButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveLinkButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveLinkButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveLinkButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveLinkButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveLinkButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveLinkButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveLinkButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveLinkButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveLinkButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveLinkButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveLinkButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveLinkButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveLinkButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveLinkButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveLinkButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveLinkButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveLinkButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveLinkButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveLinkButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveLinkButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveLinkButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveLinkButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveLinkButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveLinkButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveLinkButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveLinkButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveLinkButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveLinkButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveLinkButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveLinkButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveLinkButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveLinkButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveLinkButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveLinkButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveLinkButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveLinkButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveLinkButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveLinkButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveLinkButtonMethod "setUri" o = LinkButtonSetUriMethodInfo
    ResolveLinkButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveLinkButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveLinkButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveLinkButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveLinkButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveLinkButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveLinkButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveLinkButtonMethod "setVisited" o = LinkButtonSetVisitedMethodInfo
    ResolveLinkButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveLinkButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveLinkButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveLinkButtonMethod t LinkButton, O.MethodInfo info LinkButton p) => OL.IsLabel t (LinkButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal LinkButton::activate-link
-- | The [activateLink](#signal:activateLink) signal is emitted each time the t'GI.Gtk.Objects.LinkButton.LinkButton'
-- has been clicked.
-- 
-- The default handler will call 'GI.Gtk.Functions.showUriOnWindow' with the URI stored inside
-- the t'GI.Gtk.Objects.LinkButton.LinkButton':@/uri/@ property.
-- 
-- To override the default behavior, you can connect to the [activateLink](#signal:activateLink)
-- signal and stop the propagation of the signal by returning 'P.True' from
-- your handler.
type LinkButtonActivateLinkCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `LinkButtonActivateLinkCallback`@.
noLinkButtonActivateLinkCallback :: Maybe LinkButtonActivateLinkCallback
noLinkButtonActivateLinkCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_LinkButtonActivateLinkCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_LinkButtonActivateLinkCallback`.
foreign import ccall "wrapper"
    mk_LinkButtonActivateLinkCallback :: C_LinkButtonActivateLinkCallback -> IO (FunPtr C_LinkButtonActivateLinkCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_LinkButtonActivateLink :: MonadIO m => LinkButtonActivateLinkCallback -> m (GClosure C_LinkButtonActivateLinkCallback)
genClosure_LinkButtonActivateLink cb = liftIO $ do
    let cb' = wrap_LinkButtonActivateLinkCallback cb
    mk_LinkButtonActivateLinkCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `LinkButtonActivateLinkCallback` into a `C_LinkButtonActivateLinkCallback`.
wrap_LinkButtonActivateLinkCallback ::
    LinkButtonActivateLinkCallback ->
    C_LinkButtonActivateLinkCallback
wrap_LinkButtonActivateLinkCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [activateLink](#signal:activateLink) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' linkButton #activateLink callback
-- @
-- 
-- 
onLinkButtonActivateLink :: (IsLinkButton a, MonadIO m) => a -> LinkButtonActivateLinkCallback -> m SignalHandlerId
onLinkButtonActivateLink obj cb = liftIO $ do
    let cb' = wrap_LinkButtonActivateLinkCallback cb
    cb'' <- mk_LinkButtonActivateLinkCallback cb'
    connectSignalFunPtr obj "activate-link" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activateLink](#signal:activateLink) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' linkButton #activateLink callback
-- @
-- 
-- 
afterLinkButtonActivateLink :: (IsLinkButton a, MonadIO m) => a -> LinkButtonActivateLinkCallback -> m SignalHandlerId
afterLinkButtonActivateLink obj cb = liftIO $ do
    let cb' = wrap_LinkButtonActivateLinkCallback cb
    cb'' <- mk_LinkButtonActivateLinkCallback cb'
    connectSignalFunPtr obj "activate-link" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data LinkButtonActivateLinkSignalInfo
instance SignalInfo LinkButtonActivateLinkSignalInfo where
    type HaskellCallbackType LinkButtonActivateLinkSignalInfo = LinkButtonActivateLinkCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_LinkButtonActivateLinkCallback cb
        cb'' <- mk_LinkButtonActivateLinkCallback cb'
        connectSignalFunPtr obj "activate-link" cb'' connectMode detail

#endif

-- VVV Prop "uri"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' linkButton #uri
-- @
getLinkButtonUri :: (MonadIO m, IsLinkButton o) => o -> m T.Text
getLinkButtonUri obj = liftIO $ checkUnexpectedNothing "getLinkButtonUri" $ B.Properties.getObjectPropertyString obj "uri"

-- | Set the value of the “@uri@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' linkButton [ #uri 'Data.GI.Base.Attributes.:=' value ]
-- @
setLinkButtonUri :: (MonadIO m, IsLinkButton o) => o -> T.Text -> m ()
setLinkButtonUri obj val = liftIO $ B.Properties.setObjectPropertyString obj "uri" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@uri@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructLinkButtonUri :: (IsLinkButton o) => T.Text -> IO (GValueConstruct o)
constructLinkButtonUri val = B.Properties.constructObjectPropertyString "uri" (Just val)

#if defined(ENABLE_OVERLOADING)
data LinkButtonUriPropertyInfo
instance AttrInfo LinkButtonUriPropertyInfo where
    type AttrAllowedOps LinkButtonUriPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint LinkButtonUriPropertyInfo = IsLinkButton
    type AttrSetTypeConstraint LinkButtonUriPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint LinkButtonUriPropertyInfo = (~) T.Text
    type AttrTransferType LinkButtonUriPropertyInfo = T.Text
    type AttrGetType LinkButtonUriPropertyInfo = T.Text
    type AttrLabel LinkButtonUriPropertyInfo = "uri"
    type AttrOrigin LinkButtonUriPropertyInfo = LinkButton
    attrGet = getLinkButtonUri
    attrSet = setLinkButtonUri
    attrTransfer _ v = do
        return v
    attrConstruct = constructLinkButtonUri
    attrClear = undefined
#endif

-- VVV Prop "visited"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@visited@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' linkButton #visited
-- @
getLinkButtonVisited :: (MonadIO m, IsLinkButton o) => o -> m Bool
getLinkButtonVisited obj = liftIO $ B.Properties.getObjectPropertyBool obj "visited"

-- | Set the value of the “@visited@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' linkButton [ #visited 'Data.GI.Base.Attributes.:=' value ]
-- @
setLinkButtonVisited :: (MonadIO m, IsLinkButton o) => o -> Bool -> m ()
setLinkButtonVisited obj val = liftIO $ B.Properties.setObjectPropertyBool obj "visited" val

-- | Construct a `GValueConstruct` with valid value for the “@visited@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructLinkButtonVisited :: (IsLinkButton o) => Bool -> IO (GValueConstruct o)
constructLinkButtonVisited val = B.Properties.constructObjectPropertyBool "visited" val

#if defined(ENABLE_OVERLOADING)
data LinkButtonVisitedPropertyInfo
instance AttrInfo LinkButtonVisitedPropertyInfo where
    type AttrAllowedOps LinkButtonVisitedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint LinkButtonVisitedPropertyInfo = IsLinkButton
    type AttrSetTypeConstraint LinkButtonVisitedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint LinkButtonVisitedPropertyInfo = (~) Bool
    type AttrTransferType LinkButtonVisitedPropertyInfo = Bool
    type AttrGetType LinkButtonVisitedPropertyInfo = Bool
    type AttrLabel LinkButtonVisitedPropertyInfo = "visited"
    type AttrOrigin LinkButtonVisitedPropertyInfo = LinkButton
    attrGet = getLinkButtonVisited
    attrSet = setLinkButtonVisited
    attrTransfer _ v = do
        return v
    attrConstruct = constructLinkButtonVisited
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList LinkButton
type instance O.AttributeList LinkButton = LinkButtonAttributeList
type LinkButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("uri", LinkButtonUriPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("visited", LinkButtonVisitedPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
linkButtonUri :: AttrLabelProxy "uri"
linkButtonUri = AttrLabelProxy

linkButtonVisited :: AttrLabelProxy "visited"
linkButtonVisited = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList LinkButton = LinkButtonSignalList
type LinkButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("activateLink", LinkButtonActivateLinkSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method LinkButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid URI" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "LinkButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_link_button_new" gtk_link_button_new :: 
    CString ->                              -- uri : TBasicType TUTF8
    IO (Ptr LinkButton)

-- | Creates a new t'GI.Gtk.Objects.LinkButton.LinkButton' with the URI as its text.
-- 
-- /Since: 2.10/
linkButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@uri@/: a valid URI
    -> m LinkButton
    -- ^ __Returns:__ a new link button widget.
linkButtonNew uri = liftIO $ do
    uri' <- textToCString uri
    result <- gtk_link_button_new uri'
    checkUnexpectedReturnNULL "linkButtonNew" result
    result' <- (newObject LinkButton) result
    freeMem uri'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method LinkButton::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid URI" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the text of the button"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "LinkButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_link_button_new_with_label" gtk_link_button_new_with_label :: 
    CString ->                              -- uri : TBasicType TUTF8
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr LinkButton)

-- | Creates a new t'GI.Gtk.Objects.LinkButton.LinkButton' containing a label.
-- 
-- /Since: 2.10/
linkButtonNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@uri@/: a valid URI
    -> Maybe (T.Text)
    -- ^ /@label@/: the text of the button
    -> m LinkButton
    -- ^ __Returns:__ a new link button widget.
linkButtonNewWithLabel uri label = liftIO $ do
    uri' <- textToCString uri
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_link_button_new_with_label uri' maybeLabel
    checkUnexpectedReturnNULL "linkButtonNewWithLabel" result
    result' <- (newObject LinkButton) result
    freeMem uri'
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method LinkButton::get_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "link_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "LinkButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkLinkButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_link_button_get_uri" gtk_link_button_get_uri :: 
    Ptr LinkButton ->                       -- link_button : TInterface (Name {namespace = "Gtk", name = "LinkButton"})
    IO CString

-- | Retrieves the URI set using 'GI.Gtk.Objects.LinkButton.linkButtonSetUri'.
-- 
-- /Since: 2.10/
linkButtonGetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsLinkButton a) =>
    a
    -- ^ /@linkButton@/: a t'GI.Gtk.Objects.LinkButton.LinkButton'
    -> m T.Text
    -- ^ __Returns:__ a valid URI.  The returned string is owned by the link button
    --   and should not be modified or freed.
linkButtonGetUri linkButton = liftIO $ do
    linkButton' <- unsafeManagedPtrCastPtr linkButton
    result <- gtk_link_button_get_uri linkButton'
    checkUnexpectedReturnNULL "linkButtonGetUri" result
    result' <- cstringToText result
    touchManagedPtr linkButton
    return result'

#if defined(ENABLE_OVERLOADING)
data LinkButtonGetUriMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsLinkButton a) => O.MethodInfo LinkButtonGetUriMethodInfo a signature where
    overloadedMethod = linkButtonGetUri

#endif

-- method LinkButton::get_visited
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "link_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "LinkButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkLinkButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_link_button_get_visited" gtk_link_button_get_visited :: 
    Ptr LinkButton ->                       -- link_button : TInterface (Name {namespace = "Gtk", name = "LinkButton"})
    IO CInt

-- | Retrieves the “visited” state of the URI where the t'GI.Gtk.Objects.LinkButton.LinkButton'
-- points. The button becomes visited when it is clicked. If the URI
-- is changed on the button, the “visited” state is unset again.
-- 
-- The state may also be changed using 'GI.Gtk.Objects.LinkButton.linkButtonSetVisited'.
-- 
-- /Since: 2.14/
linkButtonGetVisited ::
    (B.CallStack.HasCallStack, MonadIO m, IsLinkButton a) =>
    a
    -- ^ /@linkButton@/: a t'GI.Gtk.Objects.LinkButton.LinkButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the link has been visited, 'P.False' otherwise
linkButtonGetVisited linkButton = liftIO $ do
    linkButton' <- unsafeManagedPtrCastPtr linkButton
    result <- gtk_link_button_get_visited linkButton'
    let result' = (/= 0) result
    touchManagedPtr linkButton
    return result'

#if defined(ENABLE_OVERLOADING)
data LinkButtonGetVisitedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsLinkButton a) => O.MethodInfo LinkButtonGetVisitedMethodInfo a signature where
    overloadedMethod = linkButtonGetVisited

#endif

-- method LinkButton::set_uri
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "link_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "LinkButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkLinkButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "uri"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid URI" , sinceVersion = Nothing }
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

foreign import ccall "gtk_link_button_set_uri" gtk_link_button_set_uri :: 
    Ptr LinkButton ->                       -- link_button : TInterface (Name {namespace = "Gtk", name = "LinkButton"})
    CString ->                              -- uri : TBasicType TUTF8
    IO ()

-- | Sets /@uri@/ as the URI where the t'GI.Gtk.Objects.LinkButton.LinkButton' points. As a side-effect
-- this unsets the “visited” state of the button.
-- 
-- /Since: 2.10/
linkButtonSetUri ::
    (B.CallStack.HasCallStack, MonadIO m, IsLinkButton a) =>
    a
    -- ^ /@linkButton@/: a t'GI.Gtk.Objects.LinkButton.LinkButton'
    -> T.Text
    -- ^ /@uri@/: a valid URI
    -> m ()
linkButtonSetUri linkButton uri = liftIO $ do
    linkButton' <- unsafeManagedPtrCastPtr linkButton
    uri' <- textToCString uri
    gtk_link_button_set_uri linkButton' uri'
    touchManagedPtr linkButton
    freeMem uri'
    return ()

#if defined(ENABLE_OVERLOADING)
data LinkButtonSetUriMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsLinkButton a) => O.MethodInfo LinkButtonSetUriMethodInfo a signature where
    overloadedMethod = linkButtonSetUri

#endif

-- method LinkButton::set_visited
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "link_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "LinkButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkLinkButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "visited"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new \8220visited\8221 state"
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

foreign import ccall "gtk_link_button_set_visited" gtk_link_button_set_visited :: 
    Ptr LinkButton ->                       -- link_button : TInterface (Name {namespace = "Gtk", name = "LinkButton"})
    CInt ->                                 -- visited : TBasicType TBoolean
    IO ()

-- | Sets the “visited” state of the URI where the t'GI.Gtk.Objects.LinkButton.LinkButton'
-- points.  See 'GI.Gtk.Objects.LinkButton.linkButtonGetVisited' for more details.
-- 
-- /Since: 2.14/
linkButtonSetVisited ::
    (B.CallStack.HasCallStack, MonadIO m, IsLinkButton a) =>
    a
    -- ^ /@linkButton@/: a t'GI.Gtk.Objects.LinkButton.LinkButton'
    -> Bool
    -- ^ /@visited@/: the new “visited” state
    -> m ()
linkButtonSetVisited linkButton visited = liftIO $ do
    linkButton' <- unsafeManagedPtrCastPtr linkButton
    let visited' = (fromIntegral . fromEnum) visited
    gtk_link_button_set_visited linkButton' visited'
    touchManagedPtr linkButton
    return ()

#if defined(ENABLE_OVERLOADING)
data LinkButtonSetVisitedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsLinkButton a) => O.MethodInfo LinkButtonSetVisitedMethodInfo a signature where
    overloadedMethod = linkButtonSetVisited

#endif

