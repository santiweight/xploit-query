{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.HSeparator.HSeparator' widget is a horizontal separator, used to group the
-- widgets within a window. It displays a horizontal line with a shadow to
-- make it appear sunken into the interface.
-- 
-- > The t'GI.Gtk.Objects.HSeparator.HSeparator' widget is not used as a separator within menus.
-- > To create a separator in a menu create an empty t'GI.Gtk.Objects.SeparatorMenuItem.SeparatorMenuItem'
-- > widget using 'GI.Gtk.Objects.SeparatorMenuItem.separatorMenuItemNew' and add it to the menu with
-- > 'GI.Gtk.Objects.MenuShell.menuShellAppend'.
-- 
-- GtkHSeparator has been deprecated, use t'GI.Gtk.Objects.Separator.Separator' instead.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HSeparator
    ( 

-- * Exported types
    HSeparator(..)                          ,
    IsHSeparator                            ,
    toHSeparator                            ,
    noHSeparator                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHSeparatorMethod                 ,
#endif


-- ** new #method:new#

    hSeparatorNew                           ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Separator as Gtk.Separator
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HSeparator = HSeparator (ManagedPtr HSeparator)
    deriving (Eq)
foreign import ccall "gtk_hseparator_get_type"
    c_gtk_hseparator_get_type :: IO GType

instance GObject HSeparator where
    gobjectType = c_gtk_hseparator_get_type
    

-- | Convert 'HSeparator' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HSeparator where
    toGValue o = do
        gtype <- c_gtk_hseparator_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HSeparator)
        B.ManagedPtr.newObject HSeparator ptr
        
    

-- | Type class for types which can be safely cast to `HSeparator`, for instance with `toHSeparator`.
class (GObject o, O.IsDescendantOf HSeparator o) => IsHSeparator o
instance (GObject o, O.IsDescendantOf HSeparator o) => IsHSeparator o

instance O.HasParentTypes HSeparator
type instance O.ParentTypes HSeparator = '[Gtk.Separator.Separator, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `HSeparator`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHSeparator :: (MonadIO m, IsHSeparator o) => o -> m HSeparator
toHSeparator = liftIO . unsafeCastTo HSeparator

-- | A convenience alias for `Nothing` :: `Maybe` `HSeparator`.
noHSeparator :: Maybe HSeparator
noHSeparator = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHSeparatorMethod (t :: Symbol) (o :: *) :: * where
    ResolveHSeparatorMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHSeparatorMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHSeparatorMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHSeparatorMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHSeparatorMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHSeparatorMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHSeparatorMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHSeparatorMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHSeparatorMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHSeparatorMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHSeparatorMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHSeparatorMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveHSeparatorMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHSeparatorMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHSeparatorMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHSeparatorMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHSeparatorMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHSeparatorMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHSeparatorMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHSeparatorMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHSeparatorMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHSeparatorMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHSeparatorMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHSeparatorMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHSeparatorMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHSeparatorMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHSeparatorMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHSeparatorMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHSeparatorMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHSeparatorMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHSeparatorMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHSeparatorMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHSeparatorMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHSeparatorMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHSeparatorMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHSeparatorMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHSeparatorMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHSeparatorMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHSeparatorMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHSeparatorMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHSeparatorMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHSeparatorMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHSeparatorMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHSeparatorMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHSeparatorMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHSeparatorMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHSeparatorMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHSeparatorMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHSeparatorMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHSeparatorMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHSeparatorMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHSeparatorMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHSeparatorMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHSeparatorMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHSeparatorMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHSeparatorMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHSeparatorMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHSeparatorMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHSeparatorMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHSeparatorMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHSeparatorMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHSeparatorMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHSeparatorMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHSeparatorMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHSeparatorMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHSeparatorMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHSeparatorMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHSeparatorMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHSeparatorMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHSeparatorMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHSeparatorMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHSeparatorMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHSeparatorMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHSeparatorMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHSeparatorMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHSeparatorMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHSeparatorMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHSeparatorMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHSeparatorMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHSeparatorMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHSeparatorMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHSeparatorMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHSeparatorMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHSeparatorMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHSeparatorMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHSeparatorMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHSeparatorMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHSeparatorMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHSeparatorMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHSeparatorMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHSeparatorMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHSeparatorMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHSeparatorMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHSeparatorMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHSeparatorMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHSeparatorMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHSeparatorMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHSeparatorMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHSeparatorMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHSeparatorMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHSeparatorMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHSeparatorMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHSeparatorMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHSeparatorMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHSeparatorMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHSeparatorMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHSeparatorMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHSeparatorMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHSeparatorMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHSeparatorMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHSeparatorMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHSeparatorMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHSeparatorMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHSeparatorMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHSeparatorMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHSeparatorMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHSeparatorMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHSeparatorMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHSeparatorMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHSeparatorMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHSeparatorMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHSeparatorMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHSeparatorMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHSeparatorMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHSeparatorMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHSeparatorMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHSeparatorMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHSeparatorMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHSeparatorMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHSeparatorMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHSeparatorMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHSeparatorMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHSeparatorMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHSeparatorMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHSeparatorMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHSeparatorMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHSeparatorMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHSeparatorMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHSeparatorMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHSeparatorMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHSeparatorMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHSeparatorMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHSeparatorMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHSeparatorMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHSeparatorMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHSeparatorMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHSeparatorMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHSeparatorMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHSeparatorMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHSeparatorMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHSeparatorMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHSeparatorMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHSeparatorMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHSeparatorMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHSeparatorMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHSeparatorMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHSeparatorMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHSeparatorMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHSeparatorMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHSeparatorMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHSeparatorMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHSeparatorMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHSeparatorMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHSeparatorMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHSeparatorMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHSeparatorMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHSeparatorMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHSeparatorMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHSeparatorMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHSeparatorMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHSeparatorMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHSeparatorMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHSeparatorMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHSeparatorMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHSeparatorMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHSeparatorMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHSeparatorMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHSeparatorMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHSeparatorMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHSeparatorMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHSeparatorMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHSeparatorMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHSeparatorMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHSeparatorMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHSeparatorMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHSeparatorMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHSeparatorMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHSeparatorMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHSeparatorMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHSeparatorMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHSeparatorMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHSeparatorMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHSeparatorMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHSeparatorMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHSeparatorMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHSeparatorMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHSeparatorMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveHSeparatorMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHSeparatorMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHSeparatorMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHSeparatorMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHSeparatorMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHSeparatorMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHSeparatorMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHSeparatorMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHSeparatorMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHSeparatorMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHSeparatorMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHSeparatorMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHSeparatorMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHSeparatorMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHSeparatorMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHSeparatorMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHSeparatorMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHSeparatorMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHSeparatorMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHSeparatorMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHSeparatorMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHSeparatorMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHSeparatorMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHSeparatorMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHSeparatorMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHSeparatorMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHSeparatorMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHSeparatorMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHSeparatorMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHSeparatorMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHSeparatorMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHSeparatorMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHSeparatorMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHSeparatorMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHSeparatorMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHSeparatorMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHSeparatorMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHSeparatorMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHSeparatorMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHSeparatorMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHSeparatorMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHSeparatorMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHSeparatorMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHSeparatorMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHSeparatorMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHSeparatorMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHSeparatorMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHSeparatorMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHSeparatorMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHSeparatorMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHSeparatorMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHSeparatorMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHSeparatorMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHSeparatorMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHSeparatorMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHSeparatorMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHSeparatorMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHSeparatorMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHSeparatorMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHSeparatorMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHSeparatorMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHSeparatorMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHSeparatorMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHSeparatorMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHSeparatorMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHSeparatorMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHSeparatorMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHSeparatorMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHSeparatorMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHSeparatorMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHSeparatorMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHSeparatorMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHSeparatorMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHSeparatorMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHSeparatorMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveHSeparatorMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHSeparatorMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHSeparatorMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHSeparatorMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHSeparatorMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHSeparatorMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHSeparatorMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHSeparatorMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHSeparatorMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHSeparatorMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHSeparatorMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHSeparatorMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHSeparatorMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHSeparatorMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHSeparatorMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHSeparatorMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHSeparatorMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHSeparatorMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHSeparatorMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHSeparatorMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHSeparatorMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHSeparatorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHSeparatorMethod t HSeparator, O.MethodInfo info HSeparator p) => OL.IsLabel t (HSeparator -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HSeparator
type instance O.AttributeList HSeparator = HSeparatorAttributeList
type HSeparatorAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HSeparator = HSeparatorSignalList
type HSeparatorSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HSeparator::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HSeparator" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_hseparator_new" gtk_hseparator_new :: 
    IO (Ptr HSeparator)

{-# DEPRECATED hSeparatorNew ["(Since version 3.2)","Use 'GI.Gtk.Objects.Separator.separatorNew' with 'GI.Gtk.Enums.OrientationHorizontal' instead"] #-}
-- | Creates a new t'GI.Gtk.Objects.HSeparator.HSeparator'.
hSeparatorNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m HSeparator
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.HSeparator.HSeparator'.
hSeparatorNew  = liftIO $ do
    result <- gtk_hseparator_new
    checkUnexpectedReturnNULL "hSeparatorNew" result
    result' <- (newObject HSeparator) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

