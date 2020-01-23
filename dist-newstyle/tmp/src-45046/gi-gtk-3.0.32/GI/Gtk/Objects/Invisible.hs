{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Invisible.Invisible' widget is used internally in GTK+, and is probably not
-- very useful for application developers.
-- 
-- It is used for reliable pointer grabs and selection handling in the code
-- for drag-and-drop.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Invisible
    ( 

-- * Exported types
    Invisible(..)                           ,
    IsInvisible                             ,
    toInvisible                             ,
    noInvisible                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInvisibleMethod                  ,
#endif


-- ** getScreen #method:getScreen#

#if defined(ENABLE_OVERLOADING)
    InvisibleGetScreenMethodInfo            ,
#endif
    invisibleGetScreen                      ,


-- ** new #method:new#

    invisibleNew                            ,


-- ** newForScreen #method:newForScreen#

    invisibleNewForScreen                   ,


-- ** setScreen #method:setScreen#

#if defined(ENABLE_OVERLOADING)
    InvisibleSetScreenMethodInfo            ,
#endif
    invisibleSetScreen                      ,




 -- * Properties
-- ** screen #attr:screen#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    InvisibleScreenPropertyInfo             ,
#endif
    constructInvisibleScreen                ,
    getInvisibleScreen                      ,
#if defined(ENABLE_OVERLOADING)
    invisibleScreen                         ,
#endif
    setInvisibleScreen                      ,




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
import qualified GI.Gdk.Objects.Screen as Gdk.Screen
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Invisible = Invisible (ManagedPtr Invisible)
    deriving (Eq)
foreign import ccall "gtk_invisible_get_type"
    c_gtk_invisible_get_type :: IO GType

instance GObject Invisible where
    gobjectType = c_gtk_invisible_get_type
    

-- | Convert 'Invisible' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Invisible where
    toGValue o = do
        gtype <- c_gtk_invisible_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Invisible)
        B.ManagedPtr.newObject Invisible ptr
        
    

-- | Type class for types which can be safely cast to `Invisible`, for instance with `toInvisible`.
class (GObject o, O.IsDescendantOf Invisible o) => IsInvisible o
instance (GObject o, O.IsDescendantOf Invisible o) => IsInvisible o

instance O.HasParentTypes Invisible
type instance O.ParentTypes Invisible = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Invisible`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInvisible :: (MonadIO m, IsInvisible o) => o -> m Invisible
toInvisible = liftIO . unsafeCastTo Invisible

-- | A convenience alias for `Nothing` :: `Maybe` `Invisible`.
noInvisible :: Maybe Invisible
noInvisible = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInvisibleMethod (t :: Symbol) (o :: *) :: * where
    ResolveInvisibleMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveInvisibleMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveInvisibleMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveInvisibleMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveInvisibleMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveInvisibleMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveInvisibleMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveInvisibleMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInvisibleMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInvisibleMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveInvisibleMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveInvisibleMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveInvisibleMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveInvisibleMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveInvisibleMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveInvisibleMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveInvisibleMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveInvisibleMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveInvisibleMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveInvisibleMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveInvisibleMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveInvisibleMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveInvisibleMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveInvisibleMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveInvisibleMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveInvisibleMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveInvisibleMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveInvisibleMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveInvisibleMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveInvisibleMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveInvisibleMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveInvisibleMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveInvisibleMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveInvisibleMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveInvisibleMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveInvisibleMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveInvisibleMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveInvisibleMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveInvisibleMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveInvisibleMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveInvisibleMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveInvisibleMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveInvisibleMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveInvisibleMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveInvisibleMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveInvisibleMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveInvisibleMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveInvisibleMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveInvisibleMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveInvisibleMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveInvisibleMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveInvisibleMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveInvisibleMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveInvisibleMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveInvisibleMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveInvisibleMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInvisibleMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveInvisibleMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInvisibleMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInvisibleMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveInvisibleMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveInvisibleMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveInvisibleMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveInvisibleMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveInvisibleMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveInvisibleMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveInvisibleMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveInvisibleMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveInvisibleMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveInvisibleMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveInvisibleMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveInvisibleMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveInvisibleMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveInvisibleMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveInvisibleMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveInvisibleMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveInvisibleMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveInvisibleMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveInvisibleMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveInvisibleMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInvisibleMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveInvisibleMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveInvisibleMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveInvisibleMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveInvisibleMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveInvisibleMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveInvisibleMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveInvisibleMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveInvisibleMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveInvisibleMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveInvisibleMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveInvisibleMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveInvisibleMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveInvisibleMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveInvisibleMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveInvisibleMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveInvisibleMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveInvisibleMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInvisibleMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInvisibleMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveInvisibleMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveInvisibleMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveInvisibleMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveInvisibleMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveInvisibleMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveInvisibleMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveInvisibleMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveInvisibleMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveInvisibleMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveInvisibleMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveInvisibleMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveInvisibleMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveInvisibleMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveInvisibleMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveInvisibleMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInvisibleMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInvisibleMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveInvisibleMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveInvisibleMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveInvisibleMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveInvisibleMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveInvisibleMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveInvisibleMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveInvisibleMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveInvisibleMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveInvisibleMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveInvisibleMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInvisibleMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveInvisibleMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveInvisibleMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveInvisibleMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveInvisibleMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveInvisibleMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveInvisibleMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveInvisibleMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveInvisibleMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveInvisibleMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInvisibleMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInvisibleMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveInvisibleMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveInvisibleMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveInvisibleMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInvisibleMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveInvisibleMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveInvisibleMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveInvisibleMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveInvisibleMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveInvisibleMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInvisibleMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveInvisibleMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveInvisibleMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInvisibleMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveInvisibleMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveInvisibleMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveInvisibleMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveInvisibleMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveInvisibleMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveInvisibleMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveInvisibleMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveInvisibleMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveInvisibleMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveInvisibleMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveInvisibleMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveInvisibleMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveInvisibleMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveInvisibleMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveInvisibleMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveInvisibleMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInvisibleMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveInvisibleMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveInvisibleMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveInvisibleMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveInvisibleMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveInvisibleMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveInvisibleMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveInvisibleMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveInvisibleMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveInvisibleMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveInvisibleMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveInvisibleMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveInvisibleMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveInvisibleMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveInvisibleMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveInvisibleMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveInvisibleMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveInvisibleMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveInvisibleMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveInvisibleMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveInvisibleMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveInvisibleMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveInvisibleMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveInvisibleMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveInvisibleMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveInvisibleMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveInvisibleMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveInvisibleMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveInvisibleMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveInvisibleMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveInvisibleMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveInvisibleMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveInvisibleMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveInvisibleMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveInvisibleMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveInvisibleMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveInvisibleMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveInvisibleMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveInvisibleMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveInvisibleMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInvisibleMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInvisibleMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveInvisibleMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveInvisibleMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveInvisibleMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveInvisibleMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveInvisibleMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveInvisibleMethod "getScreen" o = InvisibleGetScreenMethodInfo
    ResolveInvisibleMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveInvisibleMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveInvisibleMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveInvisibleMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveInvisibleMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveInvisibleMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveInvisibleMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveInvisibleMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveInvisibleMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveInvisibleMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveInvisibleMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveInvisibleMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveInvisibleMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveInvisibleMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveInvisibleMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveInvisibleMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveInvisibleMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveInvisibleMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveInvisibleMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveInvisibleMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveInvisibleMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveInvisibleMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveInvisibleMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveInvisibleMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveInvisibleMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveInvisibleMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveInvisibleMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveInvisibleMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveInvisibleMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveInvisibleMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInvisibleMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInvisibleMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveInvisibleMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveInvisibleMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveInvisibleMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveInvisibleMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveInvisibleMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveInvisibleMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveInvisibleMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveInvisibleMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveInvisibleMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveInvisibleMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveInvisibleMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveInvisibleMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveInvisibleMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveInvisibleMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveInvisibleMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveInvisibleMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveInvisibleMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveInvisibleMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveInvisibleMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveInvisibleMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveInvisibleMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveInvisibleMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveInvisibleMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveInvisibleMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveInvisibleMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInvisibleMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveInvisibleMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveInvisibleMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveInvisibleMethod "setScreen" o = InvisibleSetScreenMethodInfo
    ResolveInvisibleMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveInvisibleMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveInvisibleMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveInvisibleMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveInvisibleMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveInvisibleMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveInvisibleMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveInvisibleMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveInvisibleMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveInvisibleMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveInvisibleMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveInvisibleMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveInvisibleMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveInvisibleMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveInvisibleMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveInvisibleMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInvisibleMethod t Invisible, O.MethodInfo info Invisible p) => OL.IsLabel t (Invisible -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "screen"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Screen"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' invisible #screen
-- @
getInvisibleScreen :: (MonadIO m, IsInvisible o) => o -> m Gdk.Screen.Screen
getInvisibleScreen obj = liftIO $ checkUnexpectedNothing "getInvisibleScreen" $ B.Properties.getObjectPropertyObject obj "screen" Gdk.Screen.Screen

-- | Set the value of the “@screen@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' invisible [ #screen 'Data.GI.Base.Attributes.:=' value ]
-- @
setInvisibleScreen :: (MonadIO m, IsInvisible o, Gdk.Screen.IsScreen a) => o -> a -> m ()
setInvisibleScreen obj val = liftIO $ B.Properties.setObjectPropertyObject obj "screen" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@screen@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInvisibleScreen :: (IsInvisible o, Gdk.Screen.IsScreen a) => a -> IO (GValueConstruct o)
constructInvisibleScreen val = B.Properties.constructObjectPropertyObject "screen" (Just val)

#if defined(ENABLE_OVERLOADING)
data InvisibleScreenPropertyInfo
instance AttrInfo InvisibleScreenPropertyInfo where
    type AttrAllowedOps InvisibleScreenPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint InvisibleScreenPropertyInfo = IsInvisible
    type AttrSetTypeConstraint InvisibleScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferTypeConstraint InvisibleScreenPropertyInfo = Gdk.Screen.IsScreen
    type AttrTransferType InvisibleScreenPropertyInfo = Gdk.Screen.Screen
    type AttrGetType InvisibleScreenPropertyInfo = Gdk.Screen.Screen
    type AttrLabel InvisibleScreenPropertyInfo = "screen"
    type AttrOrigin InvisibleScreenPropertyInfo = Invisible
    attrGet = getInvisibleScreen
    attrSet = setInvisibleScreen
    attrTransfer _ v = do
        unsafeCastTo Gdk.Screen.Screen v
    attrConstruct = constructInvisibleScreen
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Invisible
type instance O.AttributeList Invisible = InvisibleAttributeList
type InvisibleAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", InvisibleScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
invisibleScreen :: AttrLabelProxy "screen"
invisibleScreen = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Invisible = InvisibleSignalList
type InvisibleSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Invisible::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Invisible" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_invisible_new" gtk_invisible_new :: 
    IO (Ptr Invisible)

-- | Creates a new t'GI.Gtk.Objects.Invisible.Invisible'.
invisibleNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Invisible
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Invisible.Invisible'.
invisibleNew  = liftIO $ do
    result <- gtk_invisible_new
    checkUnexpectedReturnNULL "invisibleNew" result
    result' <- (newObject Invisible) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Invisible::new_for_screen
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "screen"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Screen" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GdkScreen which identifies on which\n    the new #GtkInvisible will be created."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Invisible" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_invisible_new_for_screen" gtk_invisible_new_for_screen :: 
    Ptr Gdk.Screen.Screen ->                -- screen : TInterface (Name {namespace = "Gdk", name = "Screen"})
    IO (Ptr Invisible)

-- | Creates a new t'GI.Gtk.Objects.Invisible.Invisible' object for a specified screen
-- 
-- /Since: 2.2/
invisibleNewForScreen ::
    (B.CallStack.HasCallStack, MonadIO m, Gdk.Screen.IsScreen a) =>
    a
    -- ^ /@screen@/: a t'GI.Gdk.Objects.Screen.Screen' which identifies on which
    --     the new t'GI.Gtk.Objects.Invisible.Invisible' will be created.
    -> m Invisible
    -- ^ __Returns:__ a newly created t'GI.Gtk.Objects.Invisible.Invisible' object
invisibleNewForScreen screen = liftIO $ do
    screen' <- unsafeManagedPtrCastPtr screen
    result <- gtk_invisible_new_for_screen screen'
    checkUnexpectedReturnNULL "invisibleNewForScreen" result
    result' <- (newObject Invisible) result
    touchManagedPtr screen
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Invisible::get_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "invisible"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Invisible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInvisible." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Screen" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_invisible_get_screen" gtk_invisible_get_screen :: 
    Ptr Invisible ->                        -- invisible : TInterface (Name {namespace = "Gtk", name = "Invisible"})
    IO (Ptr Gdk.Screen.Screen)

-- | Returns the t'GI.Gdk.Objects.Screen.Screen' object associated with /@invisible@/
-- 
-- /Since: 2.2/
invisibleGetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsInvisible a) =>
    a
    -- ^ /@invisible@/: a t'GI.Gtk.Objects.Invisible.Invisible'.
    -> m Gdk.Screen.Screen
    -- ^ __Returns:__ the associated t'GI.Gdk.Objects.Screen.Screen'.
invisibleGetScreen invisible = liftIO $ do
    invisible' <- unsafeManagedPtrCastPtr invisible
    result <- gtk_invisible_get_screen invisible'
    checkUnexpectedReturnNULL "invisibleGetScreen" result
    result' <- (newObject Gdk.Screen.Screen) result
    touchManagedPtr invisible
    return result'

#if defined(ENABLE_OVERLOADING)
data InvisibleGetScreenMethodInfo
instance (signature ~ (m Gdk.Screen.Screen), MonadIO m, IsInvisible a) => O.MethodInfo InvisibleGetScreenMethodInfo a signature where
    overloadedMethod = invisibleGetScreen

#endif

-- method Invisible::set_screen
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "invisible"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Invisible" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInvisible." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "screen"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Screen" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkScreen." , sinceVersion = Nothing }
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

foreign import ccall "gtk_invisible_set_screen" gtk_invisible_set_screen :: 
    Ptr Invisible ->                        -- invisible : TInterface (Name {namespace = "Gtk", name = "Invisible"})
    Ptr Gdk.Screen.Screen ->                -- screen : TInterface (Name {namespace = "Gdk", name = "Screen"})
    IO ()

-- | Sets the t'GI.Gdk.Objects.Screen.Screen' where the t'GI.Gtk.Objects.Invisible.Invisible' object will be displayed.
-- 
-- /Since: 2.2/
invisibleSetScreen ::
    (B.CallStack.HasCallStack, MonadIO m, IsInvisible a, Gdk.Screen.IsScreen b) =>
    a
    -- ^ /@invisible@/: a t'GI.Gtk.Objects.Invisible.Invisible'.
    -> b
    -- ^ /@screen@/: a t'GI.Gdk.Objects.Screen.Screen'.
    -> m ()
invisibleSetScreen invisible screen = liftIO $ do
    invisible' <- unsafeManagedPtrCastPtr invisible
    screen' <- unsafeManagedPtrCastPtr screen
    gtk_invisible_set_screen invisible' screen'
    touchManagedPtr invisible
    touchManagedPtr screen
    return ()

#if defined(ENABLE_OVERLOADING)
data InvisibleSetScreenMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsInvisible a, Gdk.Screen.IsScreen b) => O.MethodInfo InvisibleSetScreenMethodInfo a signature where
    overloadedMethod = invisibleSetScreen

#endif

