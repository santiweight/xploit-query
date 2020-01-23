{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FontSelection
    ( 

-- * Exported types
    FontSelection(..)                       ,
    IsFontSelection                         ,
    toFontSelection                         ,
    noFontSelection                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontSelectionMethod              ,
#endif


-- ** getFace #method:getFace#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetFaceMethodInfo          ,
#endif
    fontSelectionGetFace                    ,


-- ** getFaceList #method:getFaceList#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetFaceListMethodInfo      ,
#endif
    fontSelectionGetFaceList                ,


-- ** getFamily #method:getFamily#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetFamilyMethodInfo        ,
#endif
    fontSelectionGetFamily                  ,


-- ** getFamilyList #method:getFamilyList#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetFamilyListMethodInfo    ,
#endif
    fontSelectionGetFamilyList              ,


-- ** getFontName #method:getFontName#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetFontNameMethodInfo      ,
#endif
    fontSelectionGetFontName                ,


-- ** getPreviewEntry #method:getPreviewEntry#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetPreviewEntryMethodInfo  ,
#endif
    fontSelectionGetPreviewEntry            ,


-- ** getPreviewText #method:getPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetPreviewTextMethodInfo   ,
#endif
    fontSelectionGetPreviewText             ,


-- ** getSize #method:getSize#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetSizeMethodInfo          ,
#endif
    fontSelectionGetSize                    ,


-- ** getSizeEntry #method:getSizeEntry#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetSizeEntryMethodInfo     ,
#endif
    fontSelectionGetSizeEntry               ,


-- ** getSizeList #method:getSizeList#

#if defined(ENABLE_OVERLOADING)
    FontSelectionGetSizeListMethodInfo      ,
#endif
    fontSelectionGetSizeList                ,


-- ** new #method:new#

    fontSelectionNew                        ,


-- ** setFontName #method:setFontName#

#if defined(ENABLE_OVERLOADING)
    FontSelectionSetFontNameMethodInfo      ,
#endif
    fontSelectionSetFontName                ,


-- ** setPreviewText #method:setPreviewText#

#if defined(ENABLE_OVERLOADING)
    FontSelectionSetPreviewTextMethodInfo   ,
#endif
    fontSelectionSetPreviewText             ,




 -- * Properties
-- ** fontName #attr:fontName#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FontSelectionFontNamePropertyInfo       ,
#endif
    clearFontSelectionFontName              ,
    constructFontSelectionFontName          ,
#if defined(ENABLE_OVERLOADING)
    fontSelectionFontName                   ,
#endif
    getFontSelectionFontName                ,
    setFontSelectionFontName                ,


-- ** previewText #attr:previewText#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FontSelectionPreviewTextPropertyInfo    ,
#endif
    constructFontSelectionPreviewText       ,
#if defined(ENABLE_OVERLOADING)
    fontSelectionPreviewText                ,
#endif
    getFontSelectionPreviewText             ,
    setFontSelectionPreviewText             ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Pango.Objects.FontFace as Pango.FontFace
import qualified GI.Pango.Objects.FontFamily as Pango.FontFamily

-- | Memory-managed wrapper type.
newtype FontSelection = FontSelection (ManagedPtr FontSelection)
    deriving (Eq)
foreign import ccall "gtk_font_selection_get_type"
    c_gtk_font_selection_get_type :: IO GType

instance GObject FontSelection where
    gobjectType = c_gtk_font_selection_get_type
    

-- | Convert 'FontSelection' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontSelection where
    toGValue o = do
        gtype <- c_gtk_font_selection_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontSelection)
        B.ManagedPtr.newObject FontSelection ptr
        
    

-- | Type class for types which can be safely cast to `FontSelection`, for instance with `toFontSelection`.
class (GObject o, O.IsDescendantOf FontSelection o) => IsFontSelection o
instance (GObject o, O.IsDescendantOf FontSelection o) => IsFontSelection o

instance O.HasParentTypes FontSelection
type instance O.ParentTypes FontSelection = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `FontSelection`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontSelection :: (MonadIO m, IsFontSelection o) => o -> m FontSelection
toFontSelection = liftIO . unsafeCastTo FontSelection

-- | A convenience alias for `Nothing` :: `Maybe` `FontSelection`.
noFontSelection :: Maybe FontSelection
noFontSelection = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFontSelectionMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontSelectionMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFontSelectionMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFontSelectionMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFontSelectionMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFontSelectionMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFontSelectionMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFontSelectionMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFontSelectionMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFontSelectionMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontSelectionMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontSelectionMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFontSelectionMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFontSelectionMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFontSelectionMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFontSelectionMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFontSelectionMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFontSelectionMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFontSelectionMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFontSelectionMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFontSelectionMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFontSelectionMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFontSelectionMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFontSelectionMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFontSelectionMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFontSelectionMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFontSelectionMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFontSelectionMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFontSelectionMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFontSelectionMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFontSelectionMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFontSelectionMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFontSelectionMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFontSelectionMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFontSelectionMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFontSelectionMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFontSelectionMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFontSelectionMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFontSelectionMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFontSelectionMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFontSelectionMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFontSelectionMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFontSelectionMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFontSelectionMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFontSelectionMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFontSelectionMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFontSelectionMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFontSelectionMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFontSelectionMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFontSelectionMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFontSelectionMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFontSelectionMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFontSelectionMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFontSelectionMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFontSelectionMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFontSelectionMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFontSelectionMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFontSelectionMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFontSelectionMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFontSelectionMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFontSelectionMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFontSelectionMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFontSelectionMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFontSelectionMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontSelectionMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFontSelectionMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFontSelectionMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontSelectionMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontSelectionMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFontSelectionMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFontSelectionMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFontSelectionMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFontSelectionMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFontSelectionMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFontSelectionMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFontSelectionMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFontSelectionMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFontSelectionMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFontSelectionMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFontSelectionMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFontSelectionMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFontSelectionMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFontSelectionMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFontSelectionMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFontSelectionMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFontSelectionMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFontSelectionMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFontSelectionMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFontSelectionMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontSelectionMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFontSelectionMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFontSelectionMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFontSelectionMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFontSelectionMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFontSelectionMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFontSelectionMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFontSelectionMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFontSelectionMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFontSelectionMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFontSelectionMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFontSelectionMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFontSelectionMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFontSelectionMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFontSelectionMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFontSelectionMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFontSelectionMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFontSelectionMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontSelectionMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontSelectionMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFontSelectionMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFontSelectionMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFontSelectionMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFontSelectionMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFontSelectionMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveFontSelectionMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveFontSelectionMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFontSelectionMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFontSelectionMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFontSelectionMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveFontSelectionMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFontSelectionMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFontSelectionMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFontSelectionMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFontSelectionMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFontSelectionMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFontSelectionMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFontSelectionMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFontSelectionMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontSelectionMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontSelectionMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFontSelectionMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFontSelectionMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFontSelectionMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFontSelectionMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFontSelectionMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFontSelectionMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFontSelectionMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFontSelectionMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveFontSelectionMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFontSelectionMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFontSelectionMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFontSelectionMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFontSelectionMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontSelectionMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFontSelectionMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFontSelectionMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFontSelectionMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFontSelectionMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFontSelectionMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFontSelectionMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFontSelectionMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFontSelectionMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFontSelectionMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontSelectionMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontSelectionMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFontSelectionMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFontSelectionMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFontSelectionMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontSelectionMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFontSelectionMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFontSelectionMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFontSelectionMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFontSelectionMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFontSelectionMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontSelectionMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFontSelectionMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFontSelectionMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFontSelectionMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontSelectionMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFontSelectionMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFontSelectionMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFontSelectionMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFontSelectionMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFontSelectionMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFontSelectionMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFontSelectionMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFontSelectionMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFontSelectionMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveFontSelectionMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFontSelectionMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFontSelectionMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFontSelectionMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveFontSelectionMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFontSelectionMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFontSelectionMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFontSelectionMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFontSelectionMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFontSelectionMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFontSelectionMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontSelectionMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFontSelectionMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFontSelectionMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFontSelectionMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFontSelectionMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFontSelectionMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFontSelectionMethod "getFace" o = FontSelectionGetFaceMethodInfo
    ResolveFontSelectionMethod "getFaceList" o = FontSelectionGetFaceListMethodInfo
    ResolveFontSelectionMethod "getFamily" o = FontSelectionGetFamilyMethodInfo
    ResolveFontSelectionMethod "getFamilyList" o = FontSelectionGetFamilyListMethodInfo
    ResolveFontSelectionMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFontSelectionMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFontSelectionMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFontSelectionMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFontSelectionMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFontSelectionMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFontSelectionMethod "getFontName" o = FontSelectionGetFontNameMethodInfo
    ResolveFontSelectionMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFontSelectionMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFontSelectionMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFontSelectionMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFontSelectionMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFontSelectionMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFontSelectionMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFontSelectionMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveFontSelectionMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFontSelectionMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFontSelectionMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFontSelectionMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFontSelectionMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFontSelectionMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFontSelectionMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFontSelectionMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFontSelectionMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFontSelectionMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFontSelectionMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFontSelectionMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFontSelectionMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFontSelectionMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveFontSelectionMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFontSelectionMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFontSelectionMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFontSelectionMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFontSelectionMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFontSelectionMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFontSelectionMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFontSelectionMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFontSelectionMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFontSelectionMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFontSelectionMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFontSelectionMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFontSelectionMethod "getPreviewEntry" o = FontSelectionGetPreviewEntryMethodInfo
    ResolveFontSelectionMethod "getPreviewText" o = FontSelectionGetPreviewTextMethodInfo
    ResolveFontSelectionMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontSelectionMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontSelectionMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFontSelectionMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFontSelectionMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFontSelectionMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFontSelectionMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFontSelectionMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFontSelectionMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFontSelectionMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFontSelectionMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFontSelectionMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFontSelectionMethod "getSize" o = FontSelectionGetSizeMethodInfo
    ResolveFontSelectionMethod "getSizeEntry" o = FontSelectionGetSizeEntryMethodInfo
    ResolveFontSelectionMethod "getSizeList" o = FontSelectionGetSizeListMethodInfo
    ResolveFontSelectionMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFontSelectionMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveFontSelectionMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFontSelectionMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFontSelectionMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFontSelectionMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFontSelectionMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFontSelectionMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFontSelectionMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFontSelectionMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFontSelectionMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFontSelectionMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFontSelectionMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFontSelectionMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFontSelectionMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFontSelectionMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFontSelectionMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFontSelectionMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFontSelectionMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFontSelectionMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFontSelectionMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFontSelectionMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFontSelectionMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveFontSelectionMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFontSelectionMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFontSelectionMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFontSelectionMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFontSelectionMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveFontSelectionMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveFontSelectionMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFontSelectionMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFontSelectionMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFontSelectionMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontSelectionMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontSelectionMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFontSelectionMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFontSelectionMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFontSelectionMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFontSelectionMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFontSelectionMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFontSelectionMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFontSelectionMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFontSelectionMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFontSelectionMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFontSelectionMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFontSelectionMethod "setFontName" o = FontSelectionSetFontNameMethodInfo
    ResolveFontSelectionMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFontSelectionMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFontSelectionMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFontSelectionMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFontSelectionMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFontSelectionMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFontSelectionMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveFontSelectionMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFontSelectionMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFontSelectionMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFontSelectionMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFontSelectionMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFontSelectionMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFontSelectionMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFontSelectionMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFontSelectionMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFontSelectionMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFontSelectionMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveFontSelectionMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFontSelectionMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFontSelectionMethod "setPreviewText" o = FontSelectionSetPreviewTextMethodInfo
    ResolveFontSelectionMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontSelectionMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFontSelectionMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFontSelectionMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFontSelectionMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFontSelectionMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFontSelectionMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFontSelectionMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFontSelectionMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveFontSelectionMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFontSelectionMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFontSelectionMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFontSelectionMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFontSelectionMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFontSelectionMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFontSelectionMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFontSelectionMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFontSelectionMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFontSelectionMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFontSelectionMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFontSelectionMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFontSelectionMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFontSelectionMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontSelectionMethod t FontSelection, O.MethodInfo info FontSelection p) => OL.IsLabel t (FontSelection -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "font-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@font-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontSelection #fontName
-- @
getFontSelectionFontName :: (MonadIO m, IsFontSelection o) => o -> m (Maybe T.Text)
getFontSelectionFontName obj = liftIO $ B.Properties.getObjectPropertyString obj "font-name"

-- | Set the value of the “@font-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontSelection [ #fontName 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontSelectionFontName :: (MonadIO m, IsFontSelection o) => o -> T.Text -> m ()
setFontSelectionFontName obj val = liftIO $ B.Properties.setObjectPropertyString obj "font-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@font-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontSelectionFontName :: (IsFontSelection o) => T.Text -> IO (GValueConstruct o)
constructFontSelectionFontName val = B.Properties.constructObjectPropertyString "font-name" (Just val)

-- | Set the value of the “@font-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #fontName
-- @
clearFontSelectionFontName :: (MonadIO m, IsFontSelection o) => o -> m ()
clearFontSelectionFontName obj = liftIO $ B.Properties.setObjectPropertyString obj "font-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data FontSelectionFontNamePropertyInfo
instance AttrInfo FontSelectionFontNamePropertyInfo where
    type AttrAllowedOps FontSelectionFontNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FontSelectionFontNamePropertyInfo = IsFontSelection
    type AttrSetTypeConstraint FontSelectionFontNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontSelectionFontNamePropertyInfo = (~) T.Text
    type AttrTransferType FontSelectionFontNamePropertyInfo = T.Text
    type AttrGetType FontSelectionFontNamePropertyInfo = (Maybe T.Text)
    type AttrLabel FontSelectionFontNamePropertyInfo = "font-name"
    type AttrOrigin FontSelectionFontNamePropertyInfo = FontSelection
    attrGet = getFontSelectionFontName
    attrSet = setFontSelectionFontName
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontSelectionFontName
    attrClear = clearFontSelectionFontName
#endif

-- VVV Prop "preview-text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@preview-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontSelection #previewText
-- @
getFontSelectionPreviewText :: (MonadIO m, IsFontSelection o) => o -> m T.Text
getFontSelectionPreviewText obj = liftIO $ checkUnexpectedNothing "getFontSelectionPreviewText" $ B.Properties.getObjectPropertyString obj "preview-text"

-- | Set the value of the “@preview-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontSelection [ #previewText 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontSelectionPreviewText :: (MonadIO m, IsFontSelection o) => o -> T.Text -> m ()
setFontSelectionPreviewText obj val = liftIO $ B.Properties.setObjectPropertyString obj "preview-text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@preview-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontSelectionPreviewText :: (IsFontSelection o) => T.Text -> IO (GValueConstruct o)
constructFontSelectionPreviewText val = B.Properties.constructObjectPropertyString "preview-text" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontSelectionPreviewTextPropertyInfo
instance AttrInfo FontSelectionPreviewTextPropertyInfo where
    type AttrAllowedOps FontSelectionPreviewTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontSelectionPreviewTextPropertyInfo = IsFontSelection
    type AttrSetTypeConstraint FontSelectionPreviewTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontSelectionPreviewTextPropertyInfo = (~) T.Text
    type AttrTransferType FontSelectionPreviewTextPropertyInfo = T.Text
    type AttrGetType FontSelectionPreviewTextPropertyInfo = T.Text
    type AttrLabel FontSelectionPreviewTextPropertyInfo = "preview-text"
    type AttrOrigin FontSelectionPreviewTextPropertyInfo = FontSelection
    attrGet = getFontSelectionPreviewText
    attrSet = setFontSelectionPreviewText
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontSelectionPreviewText
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontSelection
type instance O.AttributeList FontSelection = FontSelectionAttributeList
type FontSelectionAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("fontName", FontSelectionFontNamePropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewText", FontSelectionPreviewTextPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fontSelectionFontName :: AttrLabelProxy "fontName"
fontSelectionFontName = AttrLabelProxy

fontSelectionPreviewText :: AttrLabelProxy "previewText"
fontSelectionPreviewText = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontSelection = FontSelectionSignalList
type FontSelectionSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FontSelection::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "FontSelection" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_new" gtk_font_selection_new :: 
    IO (Ptr FontSelection)

{-# DEPRECATED fontSelectionNew ["(Since version 3.2)","Use t'GI.Gtk.Objects.FontChooserWidget.FontChooserWidget' instead"] #-}
-- | Creates a new t'GI.Gtk.Objects.FontSelection.FontSelection'.
fontSelectionNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FontSelection
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FontSelection.FontSelection'
fontSelectionNew  = liftIO $ do
    result <- gtk_font_selection_new
    checkUnexpectedReturnNULL "fontSelectionNew" result
    result' <- (newObject FontSelection) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FontSelection::get_face
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Pango" , name = "FontFace" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_face" gtk_font_selection_get_face :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Pango.FontFace.FontFace)

{-# DEPRECATED fontSelectionGetFace ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Gets the t'GI.Pango.Objects.FontFace.FontFace' representing the selected font group
-- details (i.e. family, slant, weight, width, etc).
-- 
-- /Since: 2.14/
fontSelectionGetFace ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Pango.FontFace.FontFace
    -- ^ __Returns:__ A t'GI.Pango.Objects.FontFace.FontFace' representing the
    --     selected font group details. The returned object is owned by
    --     /@fontsel@/ and must not be modified or freed.
fontSelectionGetFace fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_face fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetFace" result
    result' <- (newObject Pango.FontFace.FontFace) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetFaceMethodInfo
instance (signature ~ (m Pango.FontFace.FontFace), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetFaceMethodInfo a signature where
    overloadedMethod = fontSelectionGetFace

#endif

-- method FontSelection::get_face_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_face_list" gtk_font_selection_get_face_list :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionGetFaceList ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | This returns the t'GI.Gtk.Objects.TreeView.TreeView' which lists all styles available for
-- the selected font. For example, “Regular”, “Bold”, etc.
-- 
-- /Since: 2.14/
fontSelectionGetFaceList ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Widget.Widget' that is part of /@fontsel@/
fontSelectionGetFaceList fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_face_list fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetFaceList" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetFaceListMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetFaceListMethodInfo a signature where
    overloadedMethod = fontSelectionGetFaceList

#endif

-- method FontSelection::get_family
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
--               (TInterface Name { namespace = "Pango" , name = "FontFamily" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_family" gtk_font_selection_get_family :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Pango.FontFamily.FontFamily)

{-# DEPRECATED fontSelectionGetFamily ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Gets the t'GI.Pango.Objects.FontFamily.FontFamily' representing the selected font family.
-- 
-- /Since: 2.14/
fontSelectionGetFamily ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Pango.FontFamily.FontFamily
    -- ^ __Returns:__ A t'GI.Pango.Objects.FontFamily.FontFamily' representing the
    --     selected font family. Font families are a collection of font
    --     faces. The returned object is owned by /@fontsel@/ and must not
    --     be modified or freed.
fontSelectionGetFamily fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_family fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetFamily" result
    result' <- (newObject Pango.FontFamily.FontFamily) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetFamilyMethodInfo
instance (signature ~ (m Pango.FontFamily.FontFamily), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetFamilyMethodInfo a signature where
    overloadedMethod = fontSelectionGetFamily

#endif

-- method FontSelection::get_family_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_family_list" gtk_font_selection_get_family_list :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionGetFamilyList ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | This returns the t'GI.Gtk.Objects.TreeView.TreeView' that lists font families, for
-- example, “Sans”, “Serif”, etc.
-- 
-- /Since: 2.14/
fontSelectionGetFamilyList ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Widget.Widget' that is part of /@fontsel@/
fontSelectionGetFamilyList fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_family_list fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetFamilyList" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetFamilyListMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetFamilyListMethodInfo a signature where
    overloadedMethod = fontSelectionGetFamilyList

#endif

-- method FontSelection::get_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_font_name" gtk_font_selection_get_font_name :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO CString

{-# DEPRECATED fontSelectionGetFontName ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Gets the currently-selected font name.
-- 
-- Note that this can be a different string than what you set with
-- 'GI.Gtk.Objects.FontSelection.fontSelectionSetFontName', as the font selection widget may
-- normalize font names and thus return a string with a different structure.
-- For example, “Helvetica Italic Bold 12” could be normalized to
-- “Helvetica Bold Italic 12”. Use 'GI.Pango.Structs.FontDescription.fontDescriptionEqual'
-- if you want to compare two font descriptions.
fontSelectionGetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m T.Text
    -- ^ __Returns:__ A string with the name of the current font, or 'P.Nothing' if
    --     no font is selected. You must free this string with 'GI.GLib.Functions.free'.
fontSelectionGetFontName fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_font_name fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetFontName" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetFontNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetFontNameMethodInfo a signature where
    overloadedMethod = fontSelectionGetFontName

#endif

-- method FontSelection::get_preview_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_preview_entry" gtk_font_selection_get_preview_entry :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionGetPreviewEntry ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | This returns the t'GI.Gtk.Objects.Entry.Entry' used to display the font as a preview.
-- 
-- /Since: 2.14/
fontSelectionGetPreviewEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Widget.Widget' that is part of /@fontsel@/
fontSelectionGetPreviewEntry fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_preview_entry fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetPreviewEntry" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetPreviewEntryMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetPreviewEntryMethodInfo a signature where
    overloadedMethod = fontSelectionGetPreviewEntry

#endif

-- method FontSelection::get_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_preview_text" gtk_font_selection_get_preview_text :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO CString

{-# DEPRECATED fontSelectionGetPreviewText ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Gets the text displayed in the preview area.
fontSelectionGetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m T.Text
    -- ^ __Returns:__ the text displayed in the preview area.
    --     This string is owned by the widget and should not be
    --     modified or freed
fontSelectionGetPreviewText fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_preview_text fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetPreviewText" result
    result' <- cstringToText result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetPreviewTextMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetPreviewTextMethodInfo a signature where
    overloadedMethod = fontSelectionGetPreviewText

#endif

-- method FontSelection::get_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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

foreign import ccall "gtk_font_selection_get_size" gtk_font_selection_get_size :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO Int32

{-# DEPRECATED fontSelectionGetSize ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | The selected font size.
-- 
-- /Since: 2.14/
fontSelectionGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Int32
    -- ^ __Returns:__ A n integer representing the selected font size,
    --     or -1 if no font size is selected.
fontSelectionGetSize fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_size fontsel'
    touchManagedPtr fontsel
    return result

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetSizeMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetSizeMethodInfo a signature where
    overloadedMethod = fontSelectionGetSize

#endif

-- method FontSelection::get_size_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_size_entry" gtk_font_selection_get_size_entry :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionGetSizeEntry ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | This returns the t'GI.Gtk.Objects.Entry.Entry' used to allow the user to edit the font
-- number manually instead of selecting it from the list of font sizes.
-- 
-- /Since: 2.14/
fontSelectionGetSizeEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Widget.Widget' that is part of /@fontsel@/
fontSelectionGetSizeEntry fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_size_entry fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetSizeEntry" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetSizeEntryMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetSizeEntryMethodInfo a signature where
    overloadedMethod = fontSelectionGetSizeEntry

#endif

-- method FontSelection::get_size_list
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_selection_get_size_list" gtk_font_selection_get_size_list :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED fontSelectionGetSizeList ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | This returns the t'GI.Gtk.Objects.TreeView.TreeView' used to list font sizes.
-- 
-- /Since: 2.14/
fontSelectionGetSizeList ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ A t'GI.Gtk.Objects.Widget.Widget' that is part of /@fontsel@/
fontSelectionGetSizeList fontsel = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    result <- gtk_font_selection_get_size_list fontsel'
    checkUnexpectedReturnNULL "fontSelectionGetSizeList" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr fontsel
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionGetSizeListMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionGetSizeListMethodInfo a signature where
    overloadedMethod = fontSelectionGetSizeList

#endif

-- method FontSelection::set_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fontname"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a font name like \8220Helvetica 12\8221 or \8220Times Bold 18\8221"
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

foreign import ccall "gtk_font_selection_set_font_name" gtk_font_selection_set_font_name :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    CString ->                              -- fontname : TBasicType TUTF8
    IO CInt

{-# DEPRECATED fontSelectionSetFontName ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Sets the currently-selected font.
-- 
-- Note that the /@fontsel@/ needs to know the screen in which it will appear
-- for this to work; this can be guaranteed by simply making sure that the
-- /@fontsel@/ is inserted in a toplevel window before you call this function.
fontSelectionSetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> T.Text
    -- ^ /@fontname@/: a font name like “Helvetica 12” or “Times Bold 18”
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the font could be set successfully; 'P.False' if no
    --     such font exists or if the /@fontsel@/ doesn’t belong to a particular
    --     screen yet.
fontSelectionSetFontName fontsel fontname = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    fontname' <- textToCString fontname
    result <- gtk_font_selection_set_font_name fontsel' fontname'
    let result' = (/= 0) result
    touchManagedPtr fontsel
    freeMem fontname'
    return result'

#if defined(ENABLE_OVERLOADING)
data FontSelectionSetFontNameMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionSetFontNameMethodInfo a signature where
    overloadedMethod = fontSelectionSetFontName

#endif

-- method FontSelection::set_preview_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "fontsel"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontSelection" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontSelection"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text to display in the preview area"
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

foreign import ccall "gtk_font_selection_set_preview_text" gtk_font_selection_set_preview_text :: 
    Ptr FontSelection ->                    -- fontsel : TInterface (Name {namespace = "Gtk", name = "FontSelection"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

{-# DEPRECATED fontSelectionSetPreviewText ["(Since version 3.2)","Use t'GI.Gtk.Interfaces.FontChooser.FontChooser'"] #-}
-- | Sets the text displayed in the preview area.
-- The /@text@/ is used to show how the selected font looks.
fontSelectionSetPreviewText ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontSelection a) =>
    a
    -- ^ /@fontsel@/: a t'GI.Gtk.Objects.FontSelection.FontSelection'
    -> T.Text
    -- ^ /@text@/: the text to display in the preview area
    -> m ()
fontSelectionSetPreviewText fontsel text = liftIO $ do
    fontsel' <- unsafeManagedPtrCastPtr fontsel
    text' <- textToCString text
    gtk_font_selection_set_preview_text fontsel' text'
    touchManagedPtr fontsel
    freeMem text'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontSelectionSetPreviewTextMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontSelection a) => O.MethodInfo FontSelectionSetPreviewTextMethodInfo a signature where
    overloadedMethod = fontSelectionSetPreviewText

#endif

