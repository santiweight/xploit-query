{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkSeparator is a horizontal or vertical separator widget, depending on the
-- value of the t'GI.Gtk.Interfaces.Orientable.Orientable':@/orientation/@ property, used to group the widgets
-- within a window. It displays a line with a shadow to make it appear sunken
-- into the interface.
-- 
-- = CSS nodes
-- 
-- GtkSeparator has a single CSS node with name separator. The node
-- gets one of the .horizontal or .vertical style classes.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Separator
    ( 

-- * Exported types
    Separator(..)                           ,
    IsSeparator                             ,
    toSeparator                             ,
    noSeparator                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSeparatorMethod                  ,
#endif


-- ** new #method:new#

    separatorNew                            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Separator = Separator (ManagedPtr Separator)
    deriving (Eq)
foreign import ccall "gtk_separator_get_type"
    c_gtk_separator_get_type :: IO GType

instance GObject Separator where
    gobjectType = c_gtk_separator_get_type
    

-- | Convert 'Separator' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Separator where
    toGValue o = do
        gtype <- c_gtk_separator_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Separator)
        B.ManagedPtr.newObject Separator ptr
        
    

-- | Type class for types which can be safely cast to `Separator`, for instance with `toSeparator`.
class (GObject o, O.IsDescendantOf Separator o) => IsSeparator o
instance (GObject o, O.IsDescendantOf Separator o) => IsSeparator o

instance O.HasParentTypes Separator
type instance O.ParentTypes Separator = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Separator`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSeparator :: (MonadIO m, IsSeparator o) => o -> m Separator
toSeparator = liftIO . unsafeCastTo Separator

-- | A convenience alias for `Nothing` :: `Maybe` `Separator`.
noSeparator :: Maybe Separator
noSeparator = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSeparatorMethod (t :: Symbol) (o :: *) :: * where
    ResolveSeparatorMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSeparatorMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSeparatorMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSeparatorMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSeparatorMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSeparatorMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSeparatorMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSeparatorMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSeparatorMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSeparatorMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSeparatorMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSeparatorMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveSeparatorMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSeparatorMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSeparatorMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSeparatorMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSeparatorMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSeparatorMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSeparatorMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSeparatorMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSeparatorMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSeparatorMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSeparatorMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSeparatorMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSeparatorMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSeparatorMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSeparatorMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSeparatorMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSeparatorMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSeparatorMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSeparatorMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSeparatorMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSeparatorMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSeparatorMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSeparatorMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSeparatorMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSeparatorMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSeparatorMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSeparatorMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSeparatorMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSeparatorMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSeparatorMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSeparatorMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSeparatorMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSeparatorMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSeparatorMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSeparatorMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSeparatorMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSeparatorMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSeparatorMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSeparatorMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSeparatorMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSeparatorMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSeparatorMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSeparatorMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSeparatorMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSeparatorMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSeparatorMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSeparatorMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSeparatorMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSeparatorMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSeparatorMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSeparatorMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSeparatorMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSeparatorMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSeparatorMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSeparatorMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSeparatorMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSeparatorMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSeparatorMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSeparatorMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSeparatorMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSeparatorMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSeparatorMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSeparatorMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSeparatorMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSeparatorMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSeparatorMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSeparatorMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSeparatorMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSeparatorMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSeparatorMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSeparatorMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSeparatorMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSeparatorMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSeparatorMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSeparatorMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSeparatorMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSeparatorMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSeparatorMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSeparatorMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSeparatorMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSeparatorMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSeparatorMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSeparatorMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSeparatorMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSeparatorMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSeparatorMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSeparatorMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSeparatorMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSeparatorMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSeparatorMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSeparatorMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSeparatorMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSeparatorMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSeparatorMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSeparatorMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSeparatorMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSeparatorMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSeparatorMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSeparatorMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSeparatorMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSeparatorMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSeparatorMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSeparatorMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSeparatorMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSeparatorMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSeparatorMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSeparatorMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSeparatorMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSeparatorMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSeparatorMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSeparatorMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSeparatorMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSeparatorMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSeparatorMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSeparatorMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSeparatorMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSeparatorMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSeparatorMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSeparatorMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSeparatorMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSeparatorMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSeparatorMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSeparatorMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSeparatorMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSeparatorMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSeparatorMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSeparatorMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSeparatorMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSeparatorMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSeparatorMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSeparatorMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSeparatorMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSeparatorMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSeparatorMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSeparatorMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSeparatorMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSeparatorMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSeparatorMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSeparatorMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSeparatorMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSeparatorMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSeparatorMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSeparatorMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSeparatorMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSeparatorMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSeparatorMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSeparatorMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSeparatorMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSeparatorMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSeparatorMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSeparatorMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSeparatorMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSeparatorMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSeparatorMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSeparatorMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSeparatorMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSeparatorMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSeparatorMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSeparatorMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSeparatorMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSeparatorMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSeparatorMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSeparatorMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSeparatorMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSeparatorMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSeparatorMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSeparatorMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSeparatorMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSeparatorMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSeparatorMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSeparatorMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSeparatorMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSeparatorMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSeparatorMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSeparatorMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSeparatorMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSeparatorMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSeparatorMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSeparatorMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSeparatorMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSeparatorMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSeparatorMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSeparatorMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSeparatorMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSeparatorMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveSeparatorMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSeparatorMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSeparatorMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSeparatorMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSeparatorMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSeparatorMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSeparatorMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSeparatorMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSeparatorMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSeparatorMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSeparatorMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSeparatorMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSeparatorMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSeparatorMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSeparatorMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSeparatorMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSeparatorMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSeparatorMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSeparatorMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSeparatorMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSeparatorMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSeparatorMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSeparatorMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSeparatorMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSeparatorMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSeparatorMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSeparatorMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSeparatorMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSeparatorMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSeparatorMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSeparatorMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSeparatorMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSeparatorMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSeparatorMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSeparatorMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSeparatorMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSeparatorMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSeparatorMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSeparatorMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSeparatorMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSeparatorMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSeparatorMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSeparatorMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSeparatorMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSeparatorMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSeparatorMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSeparatorMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSeparatorMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSeparatorMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSeparatorMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSeparatorMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSeparatorMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSeparatorMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSeparatorMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSeparatorMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSeparatorMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSeparatorMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSeparatorMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSeparatorMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSeparatorMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSeparatorMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSeparatorMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSeparatorMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSeparatorMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSeparatorMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSeparatorMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSeparatorMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSeparatorMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSeparatorMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSeparatorMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSeparatorMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSeparatorMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSeparatorMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSeparatorMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSeparatorMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveSeparatorMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSeparatorMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSeparatorMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSeparatorMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSeparatorMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSeparatorMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSeparatorMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSeparatorMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSeparatorMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSeparatorMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSeparatorMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSeparatorMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSeparatorMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSeparatorMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSeparatorMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSeparatorMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSeparatorMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSeparatorMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSeparatorMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSeparatorMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSeparatorMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSeparatorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSeparatorMethod t Separator, O.MethodInfo info Separator p) => OL.IsLabel t (Separator -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Separator
type instance O.AttributeList Separator = SeparatorAttributeList
type SeparatorAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Separator = SeparatorSignalList
type SeparatorSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Separator::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the separator\8217s orientation."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Separator" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_separator_new" gtk_separator_new :: 
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO (Ptr Separator)

-- | Creates a new t'GI.Gtk.Objects.Separator.Separator' with the given orientation.
-- 
-- /Since: 3.0/
separatorNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the separator’s orientation.
    -> m Separator
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Separator.Separator'.
separatorNew orientation = liftIO $ do
    let orientation' = (fromIntegral . fromEnum) orientation
    result <- gtk_separator_new orientation'
    checkUnexpectedReturnNULL "separatorNew" result
    result' <- (newObject Separator) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

