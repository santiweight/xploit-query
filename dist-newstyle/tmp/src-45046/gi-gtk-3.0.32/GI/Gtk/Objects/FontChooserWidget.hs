{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.FontChooserWidget.FontChooserWidget' widget lists the available fonts,
-- styles and sizes, allowing the user to select a font. It is
-- used in the t'GI.Gtk.Objects.FontChooserDialog.FontChooserDialog' widget to provide a
-- dialog box for selecting fonts.
-- 
-- To set the font which is initially selected, use
-- 'GI.Gtk.Interfaces.FontChooser.fontChooserSetFont' or 'GI.Gtk.Interfaces.FontChooser.fontChooserSetFontDesc'.
-- 
-- To get the selected font use 'GI.Gtk.Interfaces.FontChooser.fontChooserGetFont' or
-- 'GI.Gtk.Interfaces.FontChooser.fontChooserGetFontDesc'.
-- 
-- To change the text which is shown in the preview area, use
-- 'GI.Gtk.Interfaces.FontChooser.fontChooserSetPreviewText'.
-- 
-- = CSS nodes
-- 
-- GtkFontChooserWidget has a single CSS node with name fontchooser.
-- 
-- /Since: 3.2/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FontChooserWidget
    ( 

-- * Exported types
    FontChooserWidget(..)                   ,
    IsFontChooserWidget                     ,
    toFontChooserWidget                     ,
    noFontChooserWidget                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontChooserWidgetMethod          ,
#endif


-- ** new #method:new#

    fontChooserWidgetNew                    ,




 -- * Properties
-- ** tweakAction #attr:tweakAction#
-- | A toggle action that can be used to switch to the tweak page
-- of the font chooser widget, which lets the user tweak the
-- OpenType features and variation axes of the selected font.
-- 
-- The action will be enabled or disabled depending on whether
-- the selected font has any features or axes.

#if defined(ENABLE_OVERLOADING)
    FontChooserWidgetTweakActionPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    fontChooserWidgetTweakAction            ,
#endif
    getFontChooserWidgetTweakAction         ,




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
import qualified GI.Gio.Interfaces.Action as Gio.Action
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FontChooser as Gtk.FontChooser
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype FontChooserWidget = FontChooserWidget (ManagedPtr FontChooserWidget)
    deriving (Eq)
foreign import ccall "gtk_font_chooser_widget_get_type"
    c_gtk_font_chooser_widget_get_type :: IO GType

instance GObject FontChooserWidget where
    gobjectType = c_gtk_font_chooser_widget_get_type
    

-- | Convert 'FontChooserWidget' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontChooserWidget where
    toGValue o = do
        gtype <- c_gtk_font_chooser_widget_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontChooserWidget)
        B.ManagedPtr.newObject FontChooserWidget ptr
        
    

-- | Type class for types which can be safely cast to `FontChooserWidget`, for instance with `toFontChooserWidget`.
class (GObject o, O.IsDescendantOf FontChooserWidget o) => IsFontChooserWidget o
instance (GObject o, O.IsDescendantOf FontChooserWidget o) => IsFontChooserWidget o

instance O.HasParentTypes FontChooserWidget
type instance O.ParentTypes FontChooserWidget = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.FontChooser.FontChooser, Gtk.Orientable.Orientable]

-- | Cast to `FontChooserWidget`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontChooserWidget :: (MonadIO m, IsFontChooserWidget o) => o -> m FontChooserWidget
toFontChooserWidget = liftIO . unsafeCastTo FontChooserWidget

-- | A convenience alias for `Nothing` :: `Maybe` `FontChooserWidget`.
noFontChooserWidget :: Maybe FontChooserWidget
noFontChooserWidget = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFontChooserWidgetMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontChooserWidgetMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFontChooserWidgetMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFontChooserWidgetMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFontChooserWidgetMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFontChooserWidgetMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFontChooserWidgetMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFontChooserWidgetMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFontChooserWidgetMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFontChooserWidgetMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontChooserWidgetMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontChooserWidgetMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFontChooserWidgetMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFontChooserWidgetMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFontChooserWidgetMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFontChooserWidgetMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFontChooserWidgetMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFontChooserWidgetMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFontChooserWidgetMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFontChooserWidgetMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFontChooserWidgetMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFontChooserWidgetMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFontChooserWidgetMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFontChooserWidgetMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFontChooserWidgetMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFontChooserWidgetMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFontChooserWidgetMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFontChooserWidgetMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFontChooserWidgetMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFontChooserWidgetMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFontChooserWidgetMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFontChooserWidgetMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFontChooserWidgetMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFontChooserWidgetMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFontChooserWidgetMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFontChooserWidgetMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFontChooserWidgetMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFontChooserWidgetMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFontChooserWidgetMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFontChooserWidgetMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFontChooserWidgetMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFontChooserWidgetMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFontChooserWidgetMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFontChooserWidgetMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFontChooserWidgetMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFontChooserWidgetMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFontChooserWidgetMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFontChooserWidgetMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFontChooserWidgetMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFontChooserWidgetMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFontChooserWidgetMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontChooserWidgetMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFontChooserWidgetMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFontChooserWidgetMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontChooserWidgetMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontChooserWidgetMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFontChooserWidgetMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFontChooserWidgetMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFontChooserWidgetMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFontChooserWidgetMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFontChooserWidgetMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFontChooserWidgetMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFontChooserWidgetMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFontChooserWidgetMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFontChooserWidgetMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFontChooserWidgetMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFontChooserWidgetMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFontChooserWidgetMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFontChooserWidgetMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFontChooserWidgetMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFontChooserWidgetMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFontChooserWidgetMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFontChooserWidgetMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFontChooserWidgetMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFontChooserWidgetMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFontChooserWidgetMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontChooserWidgetMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFontChooserWidgetMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFontChooserWidgetMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFontChooserWidgetMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFontChooserWidgetMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFontChooserWidgetMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFontChooserWidgetMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFontChooserWidgetMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFontChooserWidgetMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFontChooserWidgetMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFontChooserWidgetMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFontChooserWidgetMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFontChooserWidgetMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFontChooserWidgetMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFontChooserWidgetMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFontChooserWidgetMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFontChooserWidgetMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFontChooserWidgetMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontChooserWidgetMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontChooserWidgetMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFontChooserWidgetMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFontChooserWidgetMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFontChooserWidgetMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFontChooserWidgetMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFontChooserWidgetMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveFontChooserWidgetMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveFontChooserWidgetMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFontChooserWidgetMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFontChooserWidgetMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFontChooserWidgetMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveFontChooserWidgetMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFontChooserWidgetMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFontChooserWidgetMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFontChooserWidgetMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFontChooserWidgetMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFontChooserWidgetMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFontChooserWidgetMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFontChooserWidgetMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFontChooserWidgetMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontChooserWidgetMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontChooserWidgetMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFontChooserWidgetMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFontChooserWidgetMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFontChooserWidgetMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFontChooserWidgetMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFontChooserWidgetMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFontChooserWidgetMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFontChooserWidgetMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFontChooserWidgetMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveFontChooserWidgetMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFontChooserWidgetMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFontChooserWidgetMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFontChooserWidgetMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFontChooserWidgetMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontChooserWidgetMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFontChooserWidgetMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFontChooserWidgetMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFontChooserWidgetMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFontChooserWidgetMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFontChooserWidgetMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFontChooserWidgetMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFontChooserWidgetMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFontChooserWidgetMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFontChooserWidgetMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontChooserWidgetMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontChooserWidgetMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFontChooserWidgetMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFontChooserWidgetMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFontChooserWidgetMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontChooserWidgetMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFontChooserWidgetMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFontChooserWidgetMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFontChooserWidgetMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFontChooserWidgetMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFontChooserWidgetMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontChooserWidgetMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFontChooserWidgetMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFontChooserWidgetMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFontChooserWidgetMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontChooserWidgetMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFontChooserWidgetMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFontChooserWidgetMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFontChooserWidgetMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFontChooserWidgetMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFontChooserWidgetMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFontChooserWidgetMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFontChooserWidgetMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFontChooserWidgetMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFontChooserWidgetMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveFontChooserWidgetMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFontChooserWidgetMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFontChooserWidgetMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFontChooserWidgetMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveFontChooserWidgetMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFontChooserWidgetMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFontChooserWidgetMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFontChooserWidgetMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFontChooserWidgetMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFontChooserWidgetMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFontChooserWidgetMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontChooserWidgetMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFontChooserWidgetMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFontChooserWidgetMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFontChooserWidgetMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFontChooserWidgetMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFontChooserWidgetMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFontChooserWidgetMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFontChooserWidgetMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFontChooserWidgetMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFontChooserWidgetMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveFontChooserWidgetMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFontChooserWidgetMethod "getFont" o = Gtk.FontChooser.FontChooserGetFontMethodInfo
    ResolveFontChooserWidgetMethod "getFontDesc" o = Gtk.FontChooser.FontChooserGetFontDescMethodInfo
    ResolveFontChooserWidgetMethod "getFontFace" o = Gtk.FontChooser.FontChooserGetFontFaceMethodInfo
    ResolveFontChooserWidgetMethod "getFontFamily" o = Gtk.FontChooser.FontChooserGetFontFamilyMethodInfo
    ResolveFontChooserWidgetMethod "getFontFeatures" o = Gtk.FontChooser.FontChooserGetFontFeaturesMethodInfo
    ResolveFontChooserWidgetMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFontChooserWidgetMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFontChooserWidgetMethod "getFontSize" o = Gtk.FontChooser.FontChooserGetFontSizeMethodInfo
    ResolveFontChooserWidgetMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFontChooserWidgetMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFontChooserWidgetMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFontChooserWidgetMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFontChooserWidgetMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFontChooserWidgetMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFontChooserWidgetMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveFontChooserWidgetMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFontChooserWidgetMethod "getLanguage" o = Gtk.FontChooser.FontChooserGetLanguageMethodInfo
    ResolveFontChooserWidgetMethod "getLevel" o = Gtk.FontChooser.FontChooserGetLevelMethodInfo
    ResolveFontChooserWidgetMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFontChooserWidgetMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFontChooserWidgetMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFontChooserWidgetMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFontChooserWidgetMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFontChooserWidgetMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFontChooserWidgetMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFontChooserWidgetMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFontChooserWidgetMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFontChooserWidgetMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFontChooserWidgetMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFontChooserWidgetMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFontChooserWidgetMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveFontChooserWidgetMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFontChooserWidgetMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFontChooserWidgetMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFontChooserWidgetMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFontChooserWidgetMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFontChooserWidgetMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFontChooserWidgetMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFontChooserWidgetMethod "getPreviewText" o = Gtk.FontChooser.FontChooserGetPreviewTextMethodInfo
    ResolveFontChooserWidgetMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontChooserWidgetMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontChooserWidgetMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFontChooserWidgetMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFontChooserWidgetMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFontChooserWidgetMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFontChooserWidgetMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFontChooserWidgetMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFontChooserWidgetMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFontChooserWidgetMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFontChooserWidgetMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFontChooserWidgetMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFontChooserWidgetMethod "getShowPreviewEntry" o = Gtk.FontChooser.FontChooserGetShowPreviewEntryMethodInfo
    ResolveFontChooserWidgetMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFontChooserWidgetMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveFontChooserWidgetMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFontChooserWidgetMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFontChooserWidgetMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFontChooserWidgetMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFontChooserWidgetMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFontChooserWidgetMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFontChooserWidgetMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFontChooserWidgetMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFontChooserWidgetMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFontChooserWidgetMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFontChooserWidgetMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFontChooserWidgetMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFontChooserWidgetMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFontChooserWidgetMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFontChooserWidgetMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFontChooserWidgetMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFontChooserWidgetMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFontChooserWidgetMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFontChooserWidgetMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFontChooserWidgetMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFontChooserWidgetMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveFontChooserWidgetMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFontChooserWidgetMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFontChooserWidgetMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFontChooserWidgetMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFontChooserWidgetMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveFontChooserWidgetMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveFontChooserWidgetMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFontChooserWidgetMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFontChooserWidgetMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFontChooserWidgetMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontChooserWidgetMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontChooserWidgetMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFontChooserWidgetMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFontChooserWidgetMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFontChooserWidgetMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFontChooserWidgetMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFontChooserWidgetMethod "setFilterFunc" o = Gtk.FontChooser.FontChooserSetFilterFuncMethodInfo
    ResolveFontChooserWidgetMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFontChooserWidgetMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFontChooserWidgetMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFontChooserWidgetMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveFontChooserWidgetMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFontChooserWidgetMethod "setFont" o = Gtk.FontChooser.FontChooserSetFontMethodInfo
    ResolveFontChooserWidgetMethod "setFontDesc" o = Gtk.FontChooser.FontChooserSetFontDescMethodInfo
    ResolveFontChooserWidgetMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFontChooserWidgetMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFontChooserWidgetMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFontChooserWidgetMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFontChooserWidgetMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFontChooserWidgetMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFontChooserWidgetMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFontChooserWidgetMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveFontChooserWidgetMethod "setLanguage" o = Gtk.FontChooser.FontChooserSetLanguageMethodInfo
    ResolveFontChooserWidgetMethod "setLevel" o = Gtk.FontChooser.FontChooserSetLevelMethodInfo
    ResolveFontChooserWidgetMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFontChooserWidgetMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFontChooserWidgetMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFontChooserWidgetMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFontChooserWidgetMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFontChooserWidgetMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFontChooserWidgetMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFontChooserWidgetMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFontChooserWidgetMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFontChooserWidgetMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFontChooserWidgetMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveFontChooserWidgetMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFontChooserWidgetMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFontChooserWidgetMethod "setPreviewText" o = Gtk.FontChooser.FontChooserSetPreviewTextMethodInfo
    ResolveFontChooserWidgetMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontChooserWidgetMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFontChooserWidgetMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFontChooserWidgetMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFontChooserWidgetMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFontChooserWidgetMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFontChooserWidgetMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFontChooserWidgetMethod "setShowPreviewEntry" o = Gtk.FontChooser.FontChooserSetShowPreviewEntryMethodInfo
    ResolveFontChooserWidgetMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFontChooserWidgetMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveFontChooserWidgetMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFontChooserWidgetMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFontChooserWidgetMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFontChooserWidgetMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFontChooserWidgetMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFontChooserWidgetMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFontChooserWidgetMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFontChooserWidgetMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFontChooserWidgetMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFontChooserWidgetMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFontChooserWidgetMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFontChooserWidgetMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFontChooserWidgetMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFontChooserWidgetMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontChooserWidgetMethod t FontChooserWidget, O.MethodInfo info FontChooserWidget p) => OL.IsLabel t (FontChooserWidget -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "tweak-action"
   -- Type: TInterface (Name {namespace = "Gio", name = "Action"})
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@tweak-action@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontChooserWidget #tweakAction
-- @
getFontChooserWidgetTweakAction :: (MonadIO m, IsFontChooserWidget o) => o -> m (Maybe Gio.Action.Action)
getFontChooserWidgetTweakAction obj = liftIO $ B.Properties.getObjectPropertyObject obj "tweak-action" Gio.Action.Action

#if defined(ENABLE_OVERLOADING)
data FontChooserWidgetTweakActionPropertyInfo
instance AttrInfo FontChooserWidgetTweakActionPropertyInfo where
    type AttrAllowedOps FontChooserWidgetTweakActionPropertyInfo = '[ 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FontChooserWidgetTweakActionPropertyInfo = IsFontChooserWidget
    type AttrSetTypeConstraint FontChooserWidgetTweakActionPropertyInfo = (~) ()
    type AttrTransferTypeConstraint FontChooserWidgetTweakActionPropertyInfo = (~) ()
    type AttrTransferType FontChooserWidgetTweakActionPropertyInfo = ()
    type AttrGetType FontChooserWidgetTweakActionPropertyInfo = (Maybe Gio.Action.Action)
    type AttrLabel FontChooserWidgetTweakActionPropertyInfo = "tweak-action"
    type AttrOrigin FontChooserWidgetTweakActionPropertyInfo = FontChooserWidget
    attrGet = getFontChooserWidgetTweakAction
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontChooserWidget
type instance O.AttributeList FontChooserWidget = FontChooserWidgetAttributeList
type FontChooserWidgetAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("font", Gtk.FontChooser.FontChooserFontPropertyInfo), '("fontDesc", Gtk.FontChooser.FontChooserFontDescPropertyInfo), '("fontFeatures", Gtk.FontChooser.FontChooserFontFeaturesPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("language", Gtk.FontChooser.FontChooserLanguagePropertyInfo), '("level", Gtk.FontChooser.FontChooserLevelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewText", Gtk.FontChooser.FontChooserPreviewTextPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showPreviewEntry", Gtk.FontChooser.FontChooserShowPreviewEntryPropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("tweakAction", FontChooserWidgetTweakActionPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fontChooserWidgetTweakAction :: AttrLabelProxy "tweakAction"
fontChooserWidgetTweakAction = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontChooserWidget = FontChooserWidgetSignalList
type FontChooserWidgetSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("fontActivated", Gtk.FontChooser.FontChooserFontActivatedSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FontChooserWidget::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "FontChooserWidget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_chooser_widget_new" gtk_font_chooser_widget_new :: 
    IO (Ptr FontChooserWidget)

-- | Creates a new t'GI.Gtk.Objects.FontChooserWidget.FontChooserWidget'.
-- 
-- /Since: 3.2/
fontChooserWidgetNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FontChooserWidget
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.FontChooserWidget.FontChooserWidget'
fontChooserWidgetNew  = liftIO $ do
    result <- gtk_font_chooser_widget_new
    checkUnexpectedReturnNULL "fontChooserWidgetNew" result
    result' <- (newObject FontChooserWidget) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

