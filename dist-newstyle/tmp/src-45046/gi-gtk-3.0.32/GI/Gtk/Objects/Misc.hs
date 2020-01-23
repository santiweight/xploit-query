{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Misc.Misc' widget is an abstract widget which is not useful itself, but
-- is used to derive subclasses which have alignment and padding attributes.
-- 
-- The horizontal and vertical padding attributes allows extra space to be
-- added around the widget.
-- 
-- The horizontal and vertical alignment attributes enable the widget to be
-- positioned within its allocated area. Note that if the widget is added to
-- a container in such a way that it expands automatically to fill its
-- allocated area, the alignment settings will not alter the widget\'s position.
-- 
-- Note that the desired effect can in most cases be achieved by using the
-- t'GI.Gtk.Objects.Widget.Widget':@/halign/@, t'GI.Gtk.Objects.Widget.Widget':@/valign/@ and t'GI.Gtk.Objects.Widget.Widget':@/margin/@ properties
-- on the child widget, so GtkMisc should not be used in new code. To reflect
-- this fact, all t'GI.Gtk.Objects.Misc.Misc' API has been deprecated.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Misc
    ( 

-- * Exported types
    Misc(..)                                ,
    IsMisc                                  ,
    toMisc                                  ,
    noMisc                                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMiscMethod                       ,
#endif


-- ** getAlignment #method:getAlignment#

#if defined(ENABLE_OVERLOADING)
    MiscGetAlignmentMethodInfo              ,
#endif
    miscGetAlignment                        ,


-- ** getPadding #method:getPadding#

#if defined(ENABLE_OVERLOADING)
    MiscGetPaddingMethodInfo                ,
#endif
    miscGetPadding                          ,


-- ** setAlignment #method:setAlignment#

#if defined(ENABLE_OVERLOADING)
    MiscSetAlignmentMethodInfo              ,
#endif
    miscSetAlignment                        ,


-- ** setPadding #method:setPadding#

#if defined(ENABLE_OVERLOADING)
    MiscSetPaddingMethodInfo                ,
#endif
    miscSetPadding                          ,




 -- * Properties
-- ** xalign #attr:xalign#
-- | The horizontal alignment. A value of 0.0 means left alignment (or right
-- on RTL locales); a value of 1.0 means right alignment (or left on RTL
-- locales).

#if defined(ENABLE_OVERLOADING)
    MiscXalignPropertyInfo                  ,
#endif
    constructMiscXalign                     ,
    getMiscXalign                           ,
#if defined(ENABLE_OVERLOADING)
    miscXalign                              ,
#endif
    setMiscXalign                           ,


-- ** xpad #attr:xpad#
-- | The amount of space to add on the left and right of the widget, in
-- pixels.

#if defined(ENABLE_OVERLOADING)
    MiscXpadPropertyInfo                    ,
#endif
    constructMiscXpad                       ,
    getMiscXpad                             ,
#if defined(ENABLE_OVERLOADING)
    miscXpad                                ,
#endif
    setMiscXpad                             ,


-- ** yalign #attr:yalign#
-- | The vertical alignment. A value of 0.0 means top alignment;
-- a value of 1.0 means bottom alignment.

#if defined(ENABLE_OVERLOADING)
    MiscYalignPropertyInfo                  ,
#endif
    constructMiscYalign                     ,
    getMiscYalign                           ,
#if defined(ENABLE_OVERLOADING)
    miscYalign                              ,
#endif
    setMiscYalign                           ,


-- ** ypad #attr:ypad#
-- | The amount of space to add on the top and bottom of the widget, in
-- pixels.

#if defined(ENABLE_OVERLOADING)
    MiscYpadPropertyInfo                    ,
#endif
    constructMiscYpad                       ,
    getMiscYpad                             ,
#if defined(ENABLE_OVERLOADING)
    miscYpad                                ,
#endif
    setMiscYpad                             ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Misc = Misc (ManagedPtr Misc)
    deriving (Eq)
foreign import ccall "gtk_misc_get_type"
    c_gtk_misc_get_type :: IO GType

instance GObject Misc where
    gobjectType = c_gtk_misc_get_type
    

-- | Convert 'Misc' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Misc where
    toGValue o = do
        gtype <- c_gtk_misc_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Misc)
        B.ManagedPtr.newObject Misc ptr
        
    

-- | Type class for types which can be safely cast to `Misc`, for instance with `toMisc`.
class (GObject o, O.IsDescendantOf Misc o) => IsMisc o
instance (GObject o, O.IsDescendantOf Misc o) => IsMisc o

instance O.HasParentTypes Misc
type instance O.ParentTypes Misc = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Misc`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMisc :: (MonadIO m, IsMisc o) => o -> m Misc
toMisc = liftIO . unsafeCastTo Misc

-- | A convenience alias for `Nothing` :: `Maybe` `Misc`.
noMisc :: Maybe Misc
noMisc = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMiscMethod (t :: Symbol) (o :: *) :: * where
    ResolveMiscMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveMiscMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveMiscMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveMiscMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveMiscMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveMiscMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveMiscMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveMiscMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMiscMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMiscMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveMiscMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveMiscMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveMiscMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveMiscMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveMiscMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveMiscMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveMiscMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveMiscMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveMiscMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveMiscMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveMiscMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveMiscMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveMiscMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveMiscMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveMiscMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveMiscMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveMiscMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveMiscMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveMiscMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveMiscMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveMiscMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveMiscMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveMiscMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveMiscMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveMiscMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveMiscMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveMiscMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveMiscMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveMiscMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveMiscMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveMiscMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveMiscMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveMiscMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveMiscMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveMiscMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveMiscMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveMiscMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveMiscMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveMiscMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveMiscMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveMiscMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveMiscMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveMiscMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveMiscMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveMiscMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveMiscMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMiscMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveMiscMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMiscMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMiscMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveMiscMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveMiscMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveMiscMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveMiscMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveMiscMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveMiscMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveMiscMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveMiscMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveMiscMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveMiscMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveMiscMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveMiscMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveMiscMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveMiscMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveMiscMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveMiscMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveMiscMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveMiscMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveMiscMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveMiscMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMiscMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveMiscMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveMiscMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveMiscMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveMiscMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveMiscMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveMiscMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveMiscMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveMiscMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveMiscMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveMiscMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveMiscMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveMiscMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveMiscMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveMiscMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveMiscMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveMiscMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveMiscMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMiscMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMiscMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveMiscMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveMiscMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveMiscMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveMiscMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveMiscMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveMiscMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveMiscMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveMiscMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveMiscMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveMiscMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveMiscMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveMiscMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveMiscMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveMiscMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveMiscMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMiscMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMiscMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveMiscMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveMiscMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveMiscMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveMiscMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveMiscMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveMiscMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveMiscMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveMiscMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveMiscMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveMiscMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMiscMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveMiscMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveMiscMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveMiscMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveMiscMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveMiscMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveMiscMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveMiscMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveMiscMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveMiscMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMiscMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMiscMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveMiscMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveMiscMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveMiscMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMiscMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveMiscMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveMiscMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveMiscMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveMiscMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveMiscMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMiscMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveMiscMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveMiscMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMiscMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveMiscMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveMiscMethod "getAlignment" o = MiscGetAlignmentMethodInfo
    ResolveMiscMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveMiscMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveMiscMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveMiscMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveMiscMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveMiscMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveMiscMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveMiscMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveMiscMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveMiscMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveMiscMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveMiscMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveMiscMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveMiscMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveMiscMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMiscMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveMiscMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveMiscMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveMiscMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveMiscMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveMiscMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveMiscMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveMiscMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveMiscMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveMiscMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveMiscMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveMiscMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveMiscMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveMiscMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveMiscMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveMiscMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveMiscMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveMiscMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveMiscMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveMiscMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveMiscMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveMiscMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveMiscMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveMiscMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveMiscMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveMiscMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveMiscMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveMiscMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveMiscMethod "getPadding" o = MiscGetPaddingMethodInfo
    ResolveMiscMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveMiscMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveMiscMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveMiscMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveMiscMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveMiscMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveMiscMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveMiscMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveMiscMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveMiscMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveMiscMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveMiscMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMiscMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMiscMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveMiscMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveMiscMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveMiscMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveMiscMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveMiscMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveMiscMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveMiscMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveMiscMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveMiscMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveMiscMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveMiscMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveMiscMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveMiscMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveMiscMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveMiscMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveMiscMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveMiscMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveMiscMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveMiscMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveMiscMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveMiscMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveMiscMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveMiscMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveMiscMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveMiscMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveMiscMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveMiscMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveMiscMethod "setAlignment" o = MiscSetAlignmentMethodInfo
    ResolveMiscMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveMiscMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveMiscMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveMiscMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveMiscMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveMiscMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveMiscMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveMiscMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveMiscMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMiscMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMiscMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveMiscMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveMiscMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveMiscMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveMiscMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveMiscMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveMiscMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveMiscMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveMiscMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveMiscMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveMiscMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveMiscMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveMiscMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveMiscMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveMiscMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveMiscMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveMiscMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveMiscMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveMiscMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveMiscMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveMiscMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveMiscMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveMiscMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveMiscMethod "setPadding" o = MiscSetPaddingMethodInfo
    ResolveMiscMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveMiscMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveMiscMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMiscMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveMiscMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveMiscMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveMiscMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveMiscMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveMiscMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveMiscMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveMiscMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveMiscMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveMiscMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveMiscMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveMiscMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveMiscMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveMiscMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveMiscMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveMiscMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveMiscMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveMiscMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveMiscMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMiscMethod t Misc, O.MethodInfo info Misc p) => OL.IsLabel t (Misc -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "xalign"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' misc #xalign
-- @
getMiscXalign :: (MonadIO m, IsMisc o) => o -> m Float
getMiscXalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "xalign"

-- | Set the value of the “@xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' misc [ #xalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setMiscXalign :: (MonadIO m, IsMisc o) => o -> Float -> m ()
setMiscXalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "xalign" val

-- | Construct a `GValueConstruct` with valid value for the “@xalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMiscXalign :: (IsMisc o) => Float -> IO (GValueConstruct o)
constructMiscXalign val = B.Properties.constructObjectPropertyFloat "xalign" val

#if defined(ENABLE_OVERLOADING)
data MiscXalignPropertyInfo
instance AttrInfo MiscXalignPropertyInfo where
    type AttrAllowedOps MiscXalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MiscXalignPropertyInfo = IsMisc
    type AttrSetTypeConstraint MiscXalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint MiscXalignPropertyInfo = (~) Float
    type AttrTransferType MiscXalignPropertyInfo = Float
    type AttrGetType MiscXalignPropertyInfo = Float
    type AttrLabel MiscXalignPropertyInfo = "xalign"
    type AttrOrigin MiscXalignPropertyInfo = Misc
    attrGet = getMiscXalign
    attrSet = setMiscXalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructMiscXalign
    attrClear = undefined
#endif

-- VVV Prop "xpad"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@xpad@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' misc #xpad
-- @
getMiscXpad :: (MonadIO m, IsMisc o) => o -> m Int32
getMiscXpad obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "xpad"

-- | Set the value of the “@xpad@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' misc [ #xpad 'Data.GI.Base.Attributes.:=' value ]
-- @
setMiscXpad :: (MonadIO m, IsMisc o) => o -> Int32 -> m ()
setMiscXpad obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "xpad" val

-- | Construct a `GValueConstruct` with valid value for the “@xpad@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMiscXpad :: (IsMisc o) => Int32 -> IO (GValueConstruct o)
constructMiscXpad val = B.Properties.constructObjectPropertyInt32 "xpad" val

#if defined(ENABLE_OVERLOADING)
data MiscXpadPropertyInfo
instance AttrInfo MiscXpadPropertyInfo where
    type AttrAllowedOps MiscXpadPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MiscXpadPropertyInfo = IsMisc
    type AttrSetTypeConstraint MiscXpadPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint MiscXpadPropertyInfo = (~) Int32
    type AttrTransferType MiscXpadPropertyInfo = Int32
    type AttrGetType MiscXpadPropertyInfo = Int32
    type AttrLabel MiscXpadPropertyInfo = "xpad"
    type AttrOrigin MiscXpadPropertyInfo = Misc
    attrGet = getMiscXpad
    attrSet = setMiscXpad
    attrTransfer _ v = do
        return v
    attrConstruct = constructMiscXpad
    attrClear = undefined
#endif

-- VVV Prop "yalign"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@yalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' misc #yalign
-- @
getMiscYalign :: (MonadIO m, IsMisc o) => o -> m Float
getMiscYalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "yalign"

-- | Set the value of the “@yalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' misc [ #yalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setMiscYalign :: (MonadIO m, IsMisc o) => o -> Float -> m ()
setMiscYalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "yalign" val

-- | Construct a `GValueConstruct` with valid value for the “@yalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMiscYalign :: (IsMisc o) => Float -> IO (GValueConstruct o)
constructMiscYalign val = B.Properties.constructObjectPropertyFloat "yalign" val

#if defined(ENABLE_OVERLOADING)
data MiscYalignPropertyInfo
instance AttrInfo MiscYalignPropertyInfo where
    type AttrAllowedOps MiscYalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MiscYalignPropertyInfo = IsMisc
    type AttrSetTypeConstraint MiscYalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint MiscYalignPropertyInfo = (~) Float
    type AttrTransferType MiscYalignPropertyInfo = Float
    type AttrGetType MiscYalignPropertyInfo = Float
    type AttrLabel MiscYalignPropertyInfo = "yalign"
    type AttrOrigin MiscYalignPropertyInfo = Misc
    attrGet = getMiscYalign
    attrSet = setMiscYalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructMiscYalign
    attrClear = undefined
#endif

-- VVV Prop "ypad"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@ypad@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' misc #ypad
-- @
getMiscYpad :: (MonadIO m, IsMisc o) => o -> m Int32
getMiscYpad obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "ypad"

-- | Set the value of the “@ypad@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' misc [ #ypad 'Data.GI.Base.Attributes.:=' value ]
-- @
setMiscYpad :: (MonadIO m, IsMisc o) => o -> Int32 -> m ()
setMiscYpad obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "ypad" val

-- | Construct a `GValueConstruct` with valid value for the “@ypad@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructMiscYpad :: (IsMisc o) => Int32 -> IO (GValueConstruct o)
constructMiscYpad val = B.Properties.constructObjectPropertyInt32 "ypad" val

#if defined(ENABLE_OVERLOADING)
data MiscYpadPropertyInfo
instance AttrInfo MiscYpadPropertyInfo where
    type AttrAllowedOps MiscYpadPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint MiscYpadPropertyInfo = IsMisc
    type AttrSetTypeConstraint MiscYpadPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint MiscYpadPropertyInfo = (~) Int32
    type AttrTransferType MiscYpadPropertyInfo = Int32
    type AttrGetType MiscYpadPropertyInfo = Int32
    type AttrLabel MiscYpadPropertyInfo = "ypad"
    type AttrOrigin MiscYpadPropertyInfo = Misc
    attrGet = getMiscYpad
    attrSet = setMiscYpad
    attrTransfer _ v = do
        return v
    attrConstruct = constructMiscYpad
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Misc
type instance O.AttributeList Misc = MiscAttributeList
type MiscAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", MiscXalignPropertyInfo), '("xpad", MiscXpadPropertyInfo), '("yalign", MiscYalignPropertyInfo), '("ypad", MiscYpadPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
miscXalign :: AttrLabelProxy "xalign"
miscXalign = AttrLabelProxy

miscXpad :: AttrLabelProxy "xpad"
miscXpad = AttrLabelProxy

miscYalign :: AttrLabelProxy "yalign"
miscYalign = AttrLabelProxy

miscYpad :: AttrLabelProxy "ypad"
miscYpad = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Misc = MiscSignalList
type MiscSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Misc::get_alignment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "misc"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Misc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMisc" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xalign"
--           , argType = TBasicType TFloat
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store X alignment of @misc, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "yalign"
--           , argType = TBasicType TFloat
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store Y alignment of @misc, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_misc_get_alignment" gtk_misc_get_alignment :: 
    Ptr Misc ->                             -- misc : TInterface (Name {namespace = "Gtk", name = "Misc"})
    Ptr CFloat ->                           -- xalign : TBasicType TFloat
    Ptr CFloat ->                           -- yalign : TBasicType TFloat
    IO ()

{-# DEPRECATED miscGetAlignment ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties."] #-}
-- | Gets the X and Y alignment of the widget within its allocation.
-- See 'GI.Gtk.Objects.Misc.miscSetAlignment'.
miscGetAlignment ::
    (B.CallStack.HasCallStack, MonadIO m, IsMisc a) =>
    a
    -- ^ /@misc@/: a t'GI.Gtk.Objects.Misc.Misc'
    -> m ((Float, Float))
miscGetAlignment misc = liftIO $ do
    misc' <- unsafeManagedPtrCastPtr misc
    xalign <- allocMem :: IO (Ptr CFloat)
    yalign <- allocMem :: IO (Ptr CFloat)
    gtk_misc_get_alignment misc' xalign yalign
    xalign' <- peek xalign
    let xalign'' = realToFrac xalign'
    yalign' <- peek yalign
    let yalign'' = realToFrac yalign'
    touchManagedPtr misc
    freeMem xalign
    freeMem yalign
    return (xalign'', yalign'')

#if defined(ENABLE_OVERLOADING)
data MiscGetAlignmentMethodInfo
instance (signature ~ (m ((Float, Float))), MonadIO m, IsMisc a) => O.MethodInfo MiscGetAlignmentMethodInfo a signature where
    overloadedMethod = miscGetAlignment

#endif

-- method Misc::get_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "misc"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Misc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMisc" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xpad"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store padding in the X\n       direction, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "ypad"
--           , argType = TBasicType TInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store padding in the Y\n       direction, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_misc_get_padding" gtk_misc_get_padding :: 
    Ptr Misc ->                             -- misc : TInterface (Name {namespace = "Gtk", name = "Misc"})
    Ptr Int32 ->                            -- xpad : TBasicType TInt
    Ptr Int32 ->                            -- ypad : TBasicType TInt
    IO ()

{-# DEPRECATED miscGetPadding ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties."] #-}
-- | Gets the padding in the X and Y directions of the widget.
-- See 'GI.Gtk.Objects.Misc.miscSetPadding'.
miscGetPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsMisc a) =>
    a
    -- ^ /@misc@/: a t'GI.Gtk.Objects.Misc.Misc'
    -> m ((Int32, Int32))
miscGetPadding misc = liftIO $ do
    misc' <- unsafeManagedPtrCastPtr misc
    xpad <- allocMem :: IO (Ptr Int32)
    ypad <- allocMem :: IO (Ptr Int32)
    gtk_misc_get_padding misc' xpad ypad
    xpad' <- peek xpad
    ypad' <- peek ypad
    touchManagedPtr misc
    freeMem xpad
    freeMem ypad
    return (xpad', ypad')

#if defined(ENABLE_OVERLOADING)
data MiscGetPaddingMethodInfo
instance (signature ~ (m ((Int32, Int32))), MonadIO m, IsMisc a) => O.MethodInfo MiscGetPaddingMethodInfo a signature where
    overloadedMethod = miscGetPadding

#endif

-- method Misc::set_alignment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "misc"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Misc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMisc." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xalign"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the horizontal alignment, from 0 (left) to 1 (right)."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yalign"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the vertical alignment, from 0 (top) to 1 (bottom)."
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

foreign import ccall "gtk_misc_set_alignment" gtk_misc_set_alignment :: 
    Ptr Misc ->                             -- misc : TInterface (Name {namespace = "Gtk", name = "Misc"})
    CFloat ->                               -- xalign : TBasicType TFloat
    CFloat ->                               -- yalign : TBasicType TFloat
    IO ()

{-# DEPRECATED miscSetAlignment ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget'\\'s alignment (t'GI.Gtk.Objects.Widget.Widget':@/halign/@ and t'GI.Gtk.Objects.Widget.Widget':@/valign/@) and margin properties or t'GI.Gtk.Objects.Label.Label'\\'s t'GI.Gtk.Objects.Label.Label':@/xalign/@ and t'GI.Gtk.Objects.Label.Label':@/yalign/@ properties."] #-}
-- | Sets the alignment of the widget.
miscSetAlignment ::
    (B.CallStack.HasCallStack, MonadIO m, IsMisc a) =>
    a
    -- ^ /@misc@/: a t'GI.Gtk.Objects.Misc.Misc'.
    -> Float
    -- ^ /@xalign@/: the horizontal alignment, from 0 (left) to 1 (right).
    -> Float
    -- ^ /@yalign@/: the vertical alignment, from 0 (top) to 1 (bottom).
    -> m ()
miscSetAlignment misc xalign yalign = liftIO $ do
    misc' <- unsafeManagedPtrCastPtr misc
    let xalign' = realToFrac xalign
    let yalign' = realToFrac yalign
    gtk_misc_set_alignment misc' xalign' yalign'
    touchManagedPtr misc
    return ()

#if defined(ENABLE_OVERLOADING)
data MiscSetAlignmentMethodInfo
instance (signature ~ (Float -> Float -> m ()), MonadIO m, IsMisc a) => O.MethodInfo MiscSetAlignmentMethodInfo a signature where
    overloadedMethod = miscSetAlignment

#endif

-- method Misc::set_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "misc"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Misc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMisc." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xpad"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount of space to add on the left and right of the widget,\n  in pixels."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ypad"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount of space to add on the top and bottom of the widget,\n  in pixels."
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

foreign import ccall "gtk_misc_set_padding" gtk_misc_set_padding :: 
    Ptr Misc ->                             -- misc : TInterface (Name {namespace = "Gtk", name = "Misc"})
    Int32 ->                                -- xpad : TBasicType TInt
    Int32 ->                                -- ypad : TBasicType TInt
    IO ()

{-# DEPRECATED miscSetPadding ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties."] #-}
-- | Sets the amount of space to add around the widget.
miscSetPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsMisc a) =>
    a
    -- ^ /@misc@/: a t'GI.Gtk.Objects.Misc.Misc'.
    -> Int32
    -- ^ /@xpad@/: the amount of space to add on the left and right of the widget,
    --   in pixels.
    -> Int32
    -- ^ /@ypad@/: the amount of space to add on the top and bottom of the widget,
    --   in pixels.
    -> m ()
miscSetPadding misc xpad ypad = liftIO $ do
    misc' <- unsafeManagedPtrCastPtr misc
    gtk_misc_set_padding misc' xpad ypad
    touchManagedPtr misc
    return ()

#if defined(ENABLE_OVERLOADING)
data MiscSetPaddingMethodInfo
instance (signature ~ (Int32 -> Int32 -> m ()), MonadIO m, IsMisc a) => O.MethodInfo MiscSetPaddingMethodInfo a signature where
    overloadedMethod = miscSetPadding

#endif

