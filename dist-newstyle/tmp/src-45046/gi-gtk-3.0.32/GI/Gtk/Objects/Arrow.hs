{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkArrow should be used to draw simple arrows that need to point in
-- one of the four cardinal directions (up, down, left, or right).  The
-- style of the arrow can be one of shadow in, shadow out, etched in, or
-- etched out.  Note that these directions and style types may be
-- amended in versions of GTK+ to come.
-- 
-- GtkArrow will fill any space alloted to it, but since it is inherited
-- from t'GI.Gtk.Objects.Misc.Misc', it can be padded and\/or aligned, to fill exactly the
-- space the programmer desires.
-- 
-- Arrows are created with a call to 'GI.Gtk.Objects.Arrow.arrowNew'.  The direction or
-- style of an arrow can be changed after creation by using 'GI.Gtk.Objects.Arrow.arrowSet'.
-- 
-- GtkArrow has been deprecated; you can simply use a t'GI.Gtk.Objects.Image.Image' with a
-- suitable icon name, such as “pan-down-symbolic“. When replacing
-- GtkArrow by an image, pay attention to the fact that GtkArrow is
-- doing automatic flipping between @/GTK_ARROW_LEFT/@ and @/GTK_ARROW_RIGHT/@,
-- depending on the text direction. To get the same effect with an image,
-- use the icon names “pan-start-symbolic“ and “pan-end-symbolic“, which
-- react to the text direction.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Arrow
    ( 

-- * Exported types
    Arrow(..)                               ,
    IsArrow                                 ,
    toArrow                                 ,
    noArrow                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveArrowMethod                      ,
#endif


-- ** new #method:new#

    arrowNew                                ,


-- ** set #method:set#

#if defined(ENABLE_OVERLOADING)
    ArrowSetMethodInfo                      ,
#endif
    arrowSet                                ,




 -- * Properties
-- ** arrowType #attr:arrowType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ArrowArrowTypePropertyInfo              ,
#endif
#if defined(ENABLE_OVERLOADING)
    arrowArrowType                          ,
#endif
    constructArrowArrowType                 ,
    getArrowArrowType                       ,
    setArrowArrowType                       ,


-- ** shadowType #attr:shadowType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ArrowShadowTypePropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    arrowShadowType                         ,
#endif
    constructArrowShadowType                ,
    getArrowShadowType                      ,
    setArrowShadowType                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Misc as Gtk.Misc
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Arrow = Arrow (ManagedPtr Arrow)
    deriving (Eq)
foreign import ccall "gtk_arrow_get_type"
    c_gtk_arrow_get_type :: IO GType

instance GObject Arrow where
    gobjectType = c_gtk_arrow_get_type
    

-- | Convert 'Arrow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Arrow where
    toGValue o = do
        gtype <- c_gtk_arrow_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Arrow)
        B.ManagedPtr.newObject Arrow ptr
        
    

-- | Type class for types which can be safely cast to `Arrow`, for instance with `toArrow`.
class (GObject o, O.IsDescendantOf Arrow o) => IsArrow o
instance (GObject o, O.IsDescendantOf Arrow o) => IsArrow o

instance O.HasParentTypes Arrow
type instance O.ParentTypes Arrow = '[Gtk.Misc.Misc, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Arrow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toArrow :: (MonadIO m, IsArrow o) => o -> m Arrow
toArrow = liftIO . unsafeCastTo Arrow

-- | A convenience alias for `Nothing` :: `Maybe` `Arrow`.
noArrow :: Maybe Arrow
noArrow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveArrowMethod (t :: Symbol) (o :: *) :: * where
    ResolveArrowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveArrowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveArrowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveArrowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveArrowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveArrowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveArrowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveArrowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveArrowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveArrowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveArrowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveArrowMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveArrowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveArrowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveArrowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveArrowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveArrowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveArrowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveArrowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveArrowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveArrowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveArrowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveArrowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveArrowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveArrowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveArrowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveArrowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveArrowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveArrowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveArrowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveArrowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveArrowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveArrowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveArrowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveArrowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveArrowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveArrowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveArrowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveArrowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveArrowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveArrowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveArrowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveArrowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveArrowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveArrowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveArrowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveArrowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveArrowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveArrowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveArrowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveArrowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveArrowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveArrowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveArrowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveArrowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveArrowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveArrowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveArrowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveArrowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveArrowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveArrowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveArrowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveArrowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveArrowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveArrowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveArrowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveArrowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveArrowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveArrowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveArrowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveArrowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveArrowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveArrowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveArrowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveArrowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveArrowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveArrowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveArrowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveArrowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveArrowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveArrowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveArrowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveArrowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveArrowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveArrowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveArrowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveArrowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveArrowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveArrowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveArrowMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveArrowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveArrowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveArrowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveArrowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveArrowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveArrowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveArrowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveArrowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveArrowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveArrowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveArrowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveArrowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveArrowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveArrowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveArrowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveArrowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveArrowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveArrowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveArrowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveArrowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveArrowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveArrowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveArrowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveArrowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveArrowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveArrowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveArrowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveArrowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveArrowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveArrowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveArrowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveArrowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveArrowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveArrowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveArrowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveArrowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveArrowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveArrowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveArrowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveArrowMethod "set" o = ArrowSetMethodInfo
    ResolveArrowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveArrowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveArrowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveArrowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveArrowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveArrowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveArrowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveArrowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveArrowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveArrowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveArrowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveArrowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveArrowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveArrowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveArrowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveArrowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveArrowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveArrowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveArrowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveArrowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveArrowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveArrowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveArrowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveArrowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveArrowMethod "getAlignment" o = Gtk.Misc.MiscGetAlignmentMethodInfo
    ResolveArrowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveArrowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveArrowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveArrowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveArrowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveArrowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveArrowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveArrowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveArrowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveArrowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveArrowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveArrowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveArrowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveArrowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveArrowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveArrowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveArrowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveArrowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveArrowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveArrowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveArrowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveArrowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveArrowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveArrowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveArrowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveArrowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveArrowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveArrowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveArrowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveArrowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveArrowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveArrowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveArrowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveArrowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveArrowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveArrowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveArrowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveArrowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveArrowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveArrowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveArrowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveArrowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveArrowMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveArrowMethod "getPadding" o = Gtk.Misc.MiscGetPaddingMethodInfo
    ResolveArrowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveArrowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveArrowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveArrowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveArrowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveArrowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveArrowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveArrowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveArrowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveArrowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveArrowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveArrowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveArrowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveArrowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveArrowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveArrowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveArrowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveArrowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveArrowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveArrowMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveArrowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveArrowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveArrowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveArrowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveArrowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveArrowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveArrowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveArrowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveArrowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveArrowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveArrowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveArrowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveArrowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveArrowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveArrowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveArrowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveArrowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveArrowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveArrowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveArrowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveArrowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveArrowMethod "setAlignment" o = Gtk.Misc.MiscSetAlignmentMethodInfo
    ResolveArrowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveArrowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveArrowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveArrowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveArrowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveArrowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveArrowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveArrowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveArrowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveArrowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveArrowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveArrowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveArrowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveArrowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveArrowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveArrowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveArrowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveArrowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveArrowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveArrowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveArrowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveArrowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveArrowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveArrowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveArrowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveArrowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveArrowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveArrowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveArrowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveArrowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveArrowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveArrowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveArrowMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveArrowMethod "setPadding" o = Gtk.Misc.MiscSetPaddingMethodInfo
    ResolveArrowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveArrowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveArrowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveArrowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveArrowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveArrowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveArrowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveArrowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveArrowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveArrowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveArrowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveArrowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveArrowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveArrowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveArrowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveArrowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveArrowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveArrowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveArrowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveArrowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveArrowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveArrowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveArrowMethod t Arrow, O.MethodInfo info Arrow p) => OL.IsLabel t (Arrow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "arrow-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ArrowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@arrow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' arrow #arrowType
-- @
getArrowArrowType :: (MonadIO m, IsArrow o) => o -> m Gtk.Enums.ArrowType
getArrowArrowType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "arrow-type"

-- | Set the value of the “@arrow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' arrow [ #arrowType 'Data.GI.Base.Attributes.:=' value ]
-- @
setArrowArrowType :: (MonadIO m, IsArrow o) => o -> Gtk.Enums.ArrowType -> m ()
setArrowArrowType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "arrow-type" val

-- | Construct a `GValueConstruct` with valid value for the “@arrow-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructArrowArrowType :: (IsArrow o) => Gtk.Enums.ArrowType -> IO (GValueConstruct o)
constructArrowArrowType val = B.Properties.constructObjectPropertyEnum "arrow-type" val

#if defined(ENABLE_OVERLOADING)
data ArrowArrowTypePropertyInfo
instance AttrInfo ArrowArrowTypePropertyInfo where
    type AttrAllowedOps ArrowArrowTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ArrowArrowTypePropertyInfo = IsArrow
    type AttrSetTypeConstraint ArrowArrowTypePropertyInfo = (~) Gtk.Enums.ArrowType
    type AttrTransferTypeConstraint ArrowArrowTypePropertyInfo = (~) Gtk.Enums.ArrowType
    type AttrTransferType ArrowArrowTypePropertyInfo = Gtk.Enums.ArrowType
    type AttrGetType ArrowArrowTypePropertyInfo = Gtk.Enums.ArrowType
    type AttrLabel ArrowArrowTypePropertyInfo = "arrow-type"
    type AttrOrigin ArrowArrowTypePropertyInfo = Arrow
    attrGet = getArrowArrowType
    attrSet = setArrowArrowType
    attrTransfer _ v = do
        return v
    attrConstruct = constructArrowArrowType
    attrClear = undefined
#endif

-- VVV Prop "shadow-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ShadowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' arrow #shadowType
-- @
getArrowShadowType :: (MonadIO m, IsArrow o) => o -> m Gtk.Enums.ShadowType
getArrowShadowType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "shadow-type"

-- | Set the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' arrow [ #shadowType 'Data.GI.Base.Attributes.:=' value ]
-- @
setArrowShadowType :: (MonadIO m, IsArrow o) => o -> Gtk.Enums.ShadowType -> m ()
setArrowShadowType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "shadow-type" val

-- | Construct a `GValueConstruct` with valid value for the “@shadow-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructArrowShadowType :: (IsArrow o) => Gtk.Enums.ShadowType -> IO (GValueConstruct o)
constructArrowShadowType val = B.Properties.constructObjectPropertyEnum "shadow-type" val

#if defined(ENABLE_OVERLOADING)
data ArrowShadowTypePropertyInfo
instance AttrInfo ArrowShadowTypePropertyInfo where
    type AttrAllowedOps ArrowShadowTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ArrowShadowTypePropertyInfo = IsArrow
    type AttrSetTypeConstraint ArrowShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferTypeConstraint ArrowShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferType ArrowShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrGetType ArrowShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrLabel ArrowShadowTypePropertyInfo = "shadow-type"
    type AttrOrigin ArrowShadowTypePropertyInfo = Arrow
    attrGet = getArrowShadowType
    attrSet = setArrowShadowType
    attrTransfer _ v = do
        return v
    attrConstruct = constructArrowShadowType
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Arrow
type instance O.AttributeList Arrow = ArrowAttributeList
type ArrowAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("arrowType", ArrowArrowTypePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", ArrowShadowTypePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Misc.MiscXalignPropertyInfo), '("xpad", Gtk.Misc.MiscXpadPropertyInfo), '("yalign", Gtk.Misc.MiscYalignPropertyInfo), '("ypad", Gtk.Misc.MiscYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
arrowArrowType :: AttrLabelProxy "arrowType"
arrowArrowType = AttrLabelProxy

arrowShadowType :: AttrLabelProxy "shadowType"
arrowShadowType = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Arrow = ArrowSignalList
type ArrowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Arrow::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "arrow_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ArrowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid #GtkArrowType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "shadow_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShadowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid #GtkShadowType."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Arrow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_arrow_new" gtk_arrow_new :: 
    CUInt ->                                -- arrow_type : TInterface (Name {namespace = "Gtk", name = "ArrowType"})
    CUInt ->                                -- shadow_type : TInterface (Name {namespace = "Gtk", name = "ShadowType"})
    IO (Ptr Arrow)

{-# DEPRECATED arrowNew ["(Since version 3.14)","Use a t'GI.Gtk.Objects.Image.Image' with a suitable icon."] #-}
-- | Creates a new t'GI.Gtk.Objects.Arrow.Arrow' widget.
arrowNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.ArrowType
    -- ^ /@arrowType@/: a valid t'GI.Gtk.Enums.ArrowType'.
    -> Gtk.Enums.ShadowType
    -- ^ /@shadowType@/: a valid t'GI.Gtk.Enums.ShadowType'.
    -> m Arrow
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.Arrow.Arrow' widget.
arrowNew arrowType shadowType = liftIO $ do
    let arrowType' = (fromIntegral . fromEnum) arrowType
    let shadowType' = (fromIntegral . fromEnum) shadowType
    result <- gtk_arrow_new arrowType' shadowType'
    checkUnexpectedReturnNULL "arrowNew" result
    result' <- (newObject Arrow) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Arrow::set
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "arrow"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Arrow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a widget of type #GtkArrow."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "arrow_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ArrowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid #GtkArrowType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "shadow_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShadowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a valid #GtkShadowType."
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

foreign import ccall "gtk_arrow_set" gtk_arrow_set :: 
    Ptr Arrow ->                            -- arrow : TInterface (Name {namespace = "Gtk", name = "Arrow"})
    CUInt ->                                -- arrow_type : TInterface (Name {namespace = "Gtk", name = "ArrowType"})
    CUInt ->                                -- shadow_type : TInterface (Name {namespace = "Gtk", name = "ShadowType"})
    IO ()

{-# DEPRECATED arrowSet ["(Since version 3.14)","Use a t'GI.Gtk.Objects.Image.Image' with a suitable icon."] #-}
-- | Sets the direction and style of the t'GI.Gtk.Objects.Arrow.Arrow', /@arrow@/.
arrowSet ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrow a) =>
    a
    -- ^ /@arrow@/: a widget of type t'GI.Gtk.Objects.Arrow.Arrow'.
    -> Gtk.Enums.ArrowType
    -- ^ /@arrowType@/: a valid t'GI.Gtk.Enums.ArrowType'.
    -> Gtk.Enums.ShadowType
    -- ^ /@shadowType@/: a valid t'GI.Gtk.Enums.ShadowType'.
    -> m ()
arrowSet arrow arrowType shadowType = liftIO $ do
    arrow' <- unsafeManagedPtrCastPtr arrow
    let arrowType' = (fromIntegral . fromEnum) arrowType
    let shadowType' = (fromIntegral . fromEnum) shadowType
    gtk_arrow_set arrow' arrowType' shadowType'
    touchManagedPtr arrow
    return ()

#if defined(ENABLE_OVERLOADING)
data ArrowSetMethodInfo
instance (signature ~ (Gtk.Enums.ArrowType -> Gtk.Enums.ShadowType -> m ()), MonadIO m, IsArrow a) => O.MethodInfo ArrowSetMethodInfo a signature where
    overloadedMethod = arrowSet

#endif

