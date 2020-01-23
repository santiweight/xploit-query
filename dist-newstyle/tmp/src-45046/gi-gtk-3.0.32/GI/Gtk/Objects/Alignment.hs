{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Alignment.Alignment' widget controls the alignment and size of its child widget.
-- It has four settings: xscale, yscale, xalign, and yalign.
-- 
-- The scale settings are used to specify how much the child widget should
-- expand to fill the space allocated to the t'GI.Gtk.Objects.Alignment.Alignment'.
-- The values can range from 0 (meaning the child doesn’t expand at all) to
-- 1 (meaning the child expands to fill all of the available space).
-- 
-- The align settings are used to place the child widget within the available
-- area. The values range from 0 (top or left) to 1 (bottom or right).
-- Of course, if the scale settings are both set to 1, the alignment settings
-- have no effect.
-- 
-- GtkAlignment has been deprecated in 3.14 and should not be used in
-- newly-written code. The desired effect can be achieved by using the
-- t'GI.Gtk.Objects.Widget.Widget':@/halign/@, t'GI.Gtk.Objects.Widget.Widget':@/valign/@ and t'GI.Gtk.Objects.Widget.Widget':@/margin/@ properties on the
-- child widget.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Alignment
    ( 

-- * Exported types
    Alignment(..)                           ,
    IsAlignment                             ,
    toAlignment                             ,
    noAlignment                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveAlignmentMethod                  ,
#endif


-- ** getPadding #method:getPadding#

#if defined(ENABLE_OVERLOADING)
    AlignmentGetPaddingMethodInfo           ,
#endif
    alignmentGetPadding                     ,


-- ** new #method:new#

    alignmentNew                            ,


-- ** set #method:set#

#if defined(ENABLE_OVERLOADING)
    AlignmentSetMethodInfo                  ,
#endif
    alignmentSet                            ,


-- ** setPadding #method:setPadding#

#if defined(ENABLE_OVERLOADING)
    AlignmentSetPaddingMethodInfo           ,
#endif
    alignmentSetPadding                     ,




 -- * Properties
-- ** bottomPadding #attr:bottomPadding#
-- | The padding to insert at the bottom of the widget.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AlignmentBottomPaddingPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentBottomPadding                  ,
#endif
    constructAlignmentBottomPadding         ,
    getAlignmentBottomPadding               ,
    setAlignmentBottomPadding               ,


-- ** leftPadding #attr:leftPadding#
-- | The padding to insert at the left of the widget.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AlignmentLeftPaddingPropertyInfo        ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentLeftPadding                    ,
#endif
    constructAlignmentLeftPadding           ,
    getAlignmentLeftPadding                 ,
    setAlignmentLeftPadding                 ,


-- ** rightPadding #attr:rightPadding#
-- | The padding to insert at the right of the widget.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AlignmentRightPaddingPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentRightPadding                   ,
#endif
    constructAlignmentRightPadding          ,
    getAlignmentRightPadding                ,
    setAlignmentRightPadding                ,


-- ** topPadding #attr:topPadding#
-- | The padding to insert at the top of the widget.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    AlignmentTopPaddingPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentTopPadding                     ,
#endif
    constructAlignmentTopPadding            ,
    getAlignmentTopPadding                  ,
    setAlignmentTopPadding                  ,


-- ** xalign #attr:xalign#
-- | Horizontal position of child in available space. A value of 0.0
-- will flush the child left (or right, in RTL locales); a value
-- of 1.0 will flush the child right (or left, in RTL locales).

#if defined(ENABLE_OVERLOADING)
    AlignmentXalignPropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentXalign                         ,
#endif
    constructAlignmentXalign                ,
    getAlignmentXalign                      ,
    setAlignmentXalign                      ,


-- ** xscale #attr:xscale#
-- | If available horizontal space is bigger than needed, how much
-- of it to use for the child. A value of 0.0 means none; a value
-- of 1.0 means all.

#if defined(ENABLE_OVERLOADING)
    AlignmentXscalePropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentXscale                         ,
#endif
    constructAlignmentXscale                ,
    getAlignmentXscale                      ,
    setAlignmentXscale                      ,


-- ** yalign #attr:yalign#
-- | Vertical position of child in available space. A value of 0.0
-- will flush the child to the top; a value of 1.0 will flush the
-- child to the bottom.

#if defined(ENABLE_OVERLOADING)
    AlignmentYalignPropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentYalign                         ,
#endif
    constructAlignmentYalign                ,
    getAlignmentYalign                      ,
    setAlignmentYalign                      ,


-- ** yscale #attr:yscale#
-- | If available vertical space is bigger than needed, how much
-- of it to use for the child. A value of 0.0 means none; a value
-- of 1.0 means all.

#if defined(ENABLE_OVERLOADING)
    AlignmentYscalePropertyInfo             ,
#endif
#if defined(ENABLE_OVERLOADING)
    alignmentYscale                         ,
#endif
    constructAlignmentYscale                ,
    getAlignmentYscale                      ,
    setAlignmentYscale                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Alignment = Alignment (ManagedPtr Alignment)
    deriving (Eq)
foreign import ccall "gtk_alignment_get_type"
    c_gtk_alignment_get_type :: IO GType

instance GObject Alignment where
    gobjectType = c_gtk_alignment_get_type
    

-- | Convert 'Alignment' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Alignment where
    toGValue o = do
        gtype <- c_gtk_alignment_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Alignment)
        B.ManagedPtr.newObject Alignment ptr
        
    

-- | Type class for types which can be safely cast to `Alignment`, for instance with `toAlignment`.
class (GObject o, O.IsDescendantOf Alignment o) => IsAlignment o
instance (GObject o, O.IsDescendantOf Alignment o) => IsAlignment o

instance O.HasParentTypes Alignment
type instance O.ParentTypes Alignment = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Alignment`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toAlignment :: (MonadIO m, IsAlignment o) => o -> m Alignment
toAlignment = liftIO . unsafeCastTo Alignment

-- | A convenience alias for `Nothing` :: `Maybe` `Alignment`.
noAlignment :: Maybe Alignment
noAlignment = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveAlignmentMethod (t :: Symbol) (o :: *) :: * where
    ResolveAlignmentMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveAlignmentMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveAlignmentMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveAlignmentMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveAlignmentMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveAlignmentMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveAlignmentMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveAlignmentMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveAlignmentMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveAlignmentMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveAlignmentMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveAlignmentMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveAlignmentMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveAlignmentMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveAlignmentMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveAlignmentMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveAlignmentMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveAlignmentMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveAlignmentMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveAlignmentMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveAlignmentMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveAlignmentMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveAlignmentMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveAlignmentMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveAlignmentMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveAlignmentMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveAlignmentMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveAlignmentMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveAlignmentMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveAlignmentMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveAlignmentMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveAlignmentMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveAlignmentMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveAlignmentMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveAlignmentMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveAlignmentMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveAlignmentMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveAlignmentMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveAlignmentMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveAlignmentMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveAlignmentMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveAlignmentMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveAlignmentMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveAlignmentMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveAlignmentMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveAlignmentMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveAlignmentMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveAlignmentMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveAlignmentMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveAlignmentMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveAlignmentMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveAlignmentMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveAlignmentMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveAlignmentMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveAlignmentMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveAlignmentMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveAlignmentMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveAlignmentMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveAlignmentMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveAlignmentMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveAlignmentMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveAlignmentMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveAlignmentMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveAlignmentMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveAlignmentMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveAlignmentMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveAlignmentMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveAlignmentMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveAlignmentMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveAlignmentMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveAlignmentMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveAlignmentMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveAlignmentMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveAlignmentMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveAlignmentMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveAlignmentMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveAlignmentMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveAlignmentMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveAlignmentMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveAlignmentMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveAlignmentMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveAlignmentMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveAlignmentMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveAlignmentMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveAlignmentMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveAlignmentMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveAlignmentMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveAlignmentMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveAlignmentMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveAlignmentMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveAlignmentMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveAlignmentMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveAlignmentMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveAlignmentMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveAlignmentMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveAlignmentMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveAlignmentMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveAlignmentMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveAlignmentMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveAlignmentMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveAlignmentMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveAlignmentMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveAlignmentMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveAlignmentMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveAlignmentMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveAlignmentMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveAlignmentMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveAlignmentMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveAlignmentMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveAlignmentMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveAlignmentMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveAlignmentMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveAlignmentMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveAlignmentMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveAlignmentMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveAlignmentMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveAlignmentMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveAlignmentMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveAlignmentMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveAlignmentMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveAlignmentMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveAlignmentMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveAlignmentMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveAlignmentMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveAlignmentMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveAlignmentMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveAlignmentMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveAlignmentMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveAlignmentMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveAlignmentMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveAlignmentMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveAlignmentMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveAlignmentMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveAlignmentMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveAlignmentMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveAlignmentMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveAlignmentMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveAlignmentMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveAlignmentMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveAlignmentMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveAlignmentMethod "set" o = AlignmentSetMethodInfo
    ResolveAlignmentMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveAlignmentMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveAlignmentMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveAlignmentMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveAlignmentMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveAlignmentMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveAlignmentMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveAlignmentMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveAlignmentMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveAlignmentMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveAlignmentMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveAlignmentMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveAlignmentMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveAlignmentMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveAlignmentMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveAlignmentMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveAlignmentMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveAlignmentMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveAlignmentMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveAlignmentMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveAlignmentMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveAlignmentMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveAlignmentMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveAlignmentMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveAlignmentMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveAlignmentMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveAlignmentMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveAlignmentMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveAlignmentMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveAlignmentMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveAlignmentMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveAlignmentMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveAlignmentMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveAlignmentMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveAlignmentMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveAlignmentMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveAlignmentMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveAlignmentMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveAlignmentMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveAlignmentMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveAlignmentMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveAlignmentMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveAlignmentMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveAlignmentMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveAlignmentMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveAlignmentMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveAlignmentMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveAlignmentMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveAlignmentMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveAlignmentMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveAlignmentMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveAlignmentMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveAlignmentMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveAlignmentMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveAlignmentMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveAlignmentMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveAlignmentMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveAlignmentMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveAlignmentMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveAlignmentMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveAlignmentMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveAlignmentMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveAlignmentMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveAlignmentMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveAlignmentMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveAlignmentMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveAlignmentMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveAlignmentMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveAlignmentMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveAlignmentMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveAlignmentMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveAlignmentMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveAlignmentMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveAlignmentMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveAlignmentMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveAlignmentMethod "getPadding" o = AlignmentGetPaddingMethodInfo
    ResolveAlignmentMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveAlignmentMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveAlignmentMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveAlignmentMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveAlignmentMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveAlignmentMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveAlignmentMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveAlignmentMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveAlignmentMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveAlignmentMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveAlignmentMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveAlignmentMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveAlignmentMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveAlignmentMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveAlignmentMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveAlignmentMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveAlignmentMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveAlignmentMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveAlignmentMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveAlignmentMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveAlignmentMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveAlignmentMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveAlignmentMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveAlignmentMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveAlignmentMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveAlignmentMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveAlignmentMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveAlignmentMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveAlignmentMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveAlignmentMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveAlignmentMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveAlignmentMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveAlignmentMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveAlignmentMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveAlignmentMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveAlignmentMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveAlignmentMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveAlignmentMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveAlignmentMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveAlignmentMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveAlignmentMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveAlignmentMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveAlignmentMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveAlignmentMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveAlignmentMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveAlignmentMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveAlignmentMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveAlignmentMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveAlignmentMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveAlignmentMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveAlignmentMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveAlignmentMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveAlignmentMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveAlignmentMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveAlignmentMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveAlignmentMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveAlignmentMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveAlignmentMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveAlignmentMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveAlignmentMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveAlignmentMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveAlignmentMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveAlignmentMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveAlignmentMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveAlignmentMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveAlignmentMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveAlignmentMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveAlignmentMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveAlignmentMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveAlignmentMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveAlignmentMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveAlignmentMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveAlignmentMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveAlignmentMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveAlignmentMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveAlignmentMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveAlignmentMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveAlignmentMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveAlignmentMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveAlignmentMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveAlignmentMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveAlignmentMethod "setPadding" o = AlignmentSetPaddingMethodInfo
    ResolveAlignmentMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveAlignmentMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveAlignmentMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveAlignmentMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveAlignmentMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveAlignmentMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveAlignmentMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveAlignmentMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveAlignmentMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveAlignmentMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveAlignmentMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveAlignmentMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveAlignmentMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveAlignmentMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveAlignmentMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveAlignmentMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveAlignmentMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveAlignmentMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveAlignmentMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveAlignmentMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveAlignmentMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveAlignmentMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveAlignmentMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveAlignmentMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveAlignmentMethod t Alignment, O.MethodInfo info Alignment p) => OL.IsLabel t (Alignment -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "bottom-padding"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@bottom-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #bottomPadding
-- @
getAlignmentBottomPadding :: (MonadIO m, IsAlignment o) => o -> m Word32
getAlignmentBottomPadding obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "bottom-padding"

-- | Set the value of the “@bottom-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #bottomPadding 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentBottomPadding :: (MonadIO m, IsAlignment o) => o -> Word32 -> m ()
setAlignmentBottomPadding obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "bottom-padding" val

-- | Construct a `GValueConstruct` with valid value for the “@bottom-padding@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentBottomPadding :: (IsAlignment o) => Word32 -> IO (GValueConstruct o)
constructAlignmentBottomPadding val = B.Properties.constructObjectPropertyUInt32 "bottom-padding" val

#if defined(ENABLE_OVERLOADING)
data AlignmentBottomPaddingPropertyInfo
instance AttrInfo AlignmentBottomPaddingPropertyInfo where
    type AttrAllowedOps AlignmentBottomPaddingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentBottomPaddingPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentBottomPaddingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint AlignmentBottomPaddingPropertyInfo = (~) Word32
    type AttrTransferType AlignmentBottomPaddingPropertyInfo = Word32
    type AttrGetType AlignmentBottomPaddingPropertyInfo = Word32
    type AttrLabel AlignmentBottomPaddingPropertyInfo = "bottom-padding"
    type AttrOrigin AlignmentBottomPaddingPropertyInfo = Alignment
    attrGet = getAlignmentBottomPadding
    attrSet = setAlignmentBottomPadding
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentBottomPadding
    attrClear = undefined
#endif

-- VVV Prop "left-padding"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@left-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #leftPadding
-- @
getAlignmentLeftPadding :: (MonadIO m, IsAlignment o) => o -> m Word32
getAlignmentLeftPadding obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "left-padding"

-- | Set the value of the “@left-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #leftPadding 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentLeftPadding :: (MonadIO m, IsAlignment o) => o -> Word32 -> m ()
setAlignmentLeftPadding obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "left-padding" val

-- | Construct a `GValueConstruct` with valid value for the “@left-padding@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentLeftPadding :: (IsAlignment o) => Word32 -> IO (GValueConstruct o)
constructAlignmentLeftPadding val = B.Properties.constructObjectPropertyUInt32 "left-padding" val

#if defined(ENABLE_OVERLOADING)
data AlignmentLeftPaddingPropertyInfo
instance AttrInfo AlignmentLeftPaddingPropertyInfo where
    type AttrAllowedOps AlignmentLeftPaddingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentLeftPaddingPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentLeftPaddingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint AlignmentLeftPaddingPropertyInfo = (~) Word32
    type AttrTransferType AlignmentLeftPaddingPropertyInfo = Word32
    type AttrGetType AlignmentLeftPaddingPropertyInfo = Word32
    type AttrLabel AlignmentLeftPaddingPropertyInfo = "left-padding"
    type AttrOrigin AlignmentLeftPaddingPropertyInfo = Alignment
    attrGet = getAlignmentLeftPadding
    attrSet = setAlignmentLeftPadding
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentLeftPadding
    attrClear = undefined
#endif

-- VVV Prop "right-padding"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@right-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #rightPadding
-- @
getAlignmentRightPadding :: (MonadIO m, IsAlignment o) => o -> m Word32
getAlignmentRightPadding obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "right-padding"

-- | Set the value of the “@right-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #rightPadding 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentRightPadding :: (MonadIO m, IsAlignment o) => o -> Word32 -> m ()
setAlignmentRightPadding obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "right-padding" val

-- | Construct a `GValueConstruct` with valid value for the “@right-padding@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentRightPadding :: (IsAlignment o) => Word32 -> IO (GValueConstruct o)
constructAlignmentRightPadding val = B.Properties.constructObjectPropertyUInt32 "right-padding" val

#if defined(ENABLE_OVERLOADING)
data AlignmentRightPaddingPropertyInfo
instance AttrInfo AlignmentRightPaddingPropertyInfo where
    type AttrAllowedOps AlignmentRightPaddingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentRightPaddingPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentRightPaddingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint AlignmentRightPaddingPropertyInfo = (~) Word32
    type AttrTransferType AlignmentRightPaddingPropertyInfo = Word32
    type AttrGetType AlignmentRightPaddingPropertyInfo = Word32
    type AttrLabel AlignmentRightPaddingPropertyInfo = "right-padding"
    type AttrOrigin AlignmentRightPaddingPropertyInfo = Alignment
    attrGet = getAlignmentRightPadding
    attrSet = setAlignmentRightPadding
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentRightPadding
    attrClear = undefined
#endif

-- VVV Prop "top-padding"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@top-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #topPadding
-- @
getAlignmentTopPadding :: (MonadIO m, IsAlignment o) => o -> m Word32
getAlignmentTopPadding obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "top-padding"

-- | Set the value of the “@top-padding@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #topPadding 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentTopPadding :: (MonadIO m, IsAlignment o) => o -> Word32 -> m ()
setAlignmentTopPadding obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "top-padding" val

-- | Construct a `GValueConstruct` with valid value for the “@top-padding@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentTopPadding :: (IsAlignment o) => Word32 -> IO (GValueConstruct o)
constructAlignmentTopPadding val = B.Properties.constructObjectPropertyUInt32 "top-padding" val

#if defined(ENABLE_OVERLOADING)
data AlignmentTopPaddingPropertyInfo
instance AttrInfo AlignmentTopPaddingPropertyInfo where
    type AttrAllowedOps AlignmentTopPaddingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentTopPaddingPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentTopPaddingPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint AlignmentTopPaddingPropertyInfo = (~) Word32
    type AttrTransferType AlignmentTopPaddingPropertyInfo = Word32
    type AttrGetType AlignmentTopPaddingPropertyInfo = Word32
    type AttrLabel AlignmentTopPaddingPropertyInfo = "top-padding"
    type AttrOrigin AlignmentTopPaddingPropertyInfo = Alignment
    attrGet = getAlignmentTopPadding
    attrSet = setAlignmentTopPadding
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentTopPadding
    attrClear = undefined
#endif

-- VVV Prop "xalign"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #xalign
-- @
getAlignmentXalign :: (MonadIO m, IsAlignment o) => o -> m Float
getAlignmentXalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "xalign"

-- | Set the value of the “@xalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #xalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentXalign :: (MonadIO m, IsAlignment o) => o -> Float -> m ()
setAlignmentXalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "xalign" val

-- | Construct a `GValueConstruct` with valid value for the “@xalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentXalign :: (IsAlignment o) => Float -> IO (GValueConstruct o)
constructAlignmentXalign val = B.Properties.constructObjectPropertyFloat "xalign" val

#if defined(ENABLE_OVERLOADING)
data AlignmentXalignPropertyInfo
instance AttrInfo AlignmentXalignPropertyInfo where
    type AttrAllowedOps AlignmentXalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentXalignPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentXalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint AlignmentXalignPropertyInfo = (~) Float
    type AttrTransferType AlignmentXalignPropertyInfo = Float
    type AttrGetType AlignmentXalignPropertyInfo = Float
    type AttrLabel AlignmentXalignPropertyInfo = "xalign"
    type AttrOrigin AlignmentXalignPropertyInfo = Alignment
    attrGet = getAlignmentXalign
    attrSet = setAlignmentXalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentXalign
    attrClear = undefined
#endif

-- VVV Prop "xscale"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@xscale@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #xscale
-- @
getAlignmentXscale :: (MonadIO m, IsAlignment o) => o -> m Float
getAlignmentXscale obj = liftIO $ B.Properties.getObjectPropertyFloat obj "xscale"

-- | Set the value of the “@xscale@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #xscale 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentXscale :: (MonadIO m, IsAlignment o) => o -> Float -> m ()
setAlignmentXscale obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "xscale" val

-- | Construct a `GValueConstruct` with valid value for the “@xscale@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentXscale :: (IsAlignment o) => Float -> IO (GValueConstruct o)
constructAlignmentXscale val = B.Properties.constructObjectPropertyFloat "xscale" val

#if defined(ENABLE_OVERLOADING)
data AlignmentXscalePropertyInfo
instance AttrInfo AlignmentXscalePropertyInfo where
    type AttrAllowedOps AlignmentXscalePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentXscalePropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentXscalePropertyInfo = (~) Float
    type AttrTransferTypeConstraint AlignmentXscalePropertyInfo = (~) Float
    type AttrTransferType AlignmentXscalePropertyInfo = Float
    type AttrGetType AlignmentXscalePropertyInfo = Float
    type AttrLabel AlignmentXscalePropertyInfo = "xscale"
    type AttrOrigin AlignmentXscalePropertyInfo = Alignment
    attrGet = getAlignmentXscale
    attrSet = setAlignmentXscale
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentXscale
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
-- 'Data.GI.Base.Attributes.get' alignment #yalign
-- @
getAlignmentYalign :: (MonadIO m, IsAlignment o) => o -> m Float
getAlignmentYalign obj = liftIO $ B.Properties.getObjectPropertyFloat obj "yalign"

-- | Set the value of the “@yalign@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #yalign 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentYalign :: (MonadIO m, IsAlignment o) => o -> Float -> m ()
setAlignmentYalign obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "yalign" val

-- | Construct a `GValueConstruct` with valid value for the “@yalign@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentYalign :: (IsAlignment o) => Float -> IO (GValueConstruct o)
constructAlignmentYalign val = B.Properties.constructObjectPropertyFloat "yalign" val

#if defined(ENABLE_OVERLOADING)
data AlignmentYalignPropertyInfo
instance AttrInfo AlignmentYalignPropertyInfo where
    type AttrAllowedOps AlignmentYalignPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentYalignPropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentYalignPropertyInfo = (~) Float
    type AttrTransferTypeConstraint AlignmentYalignPropertyInfo = (~) Float
    type AttrTransferType AlignmentYalignPropertyInfo = Float
    type AttrGetType AlignmentYalignPropertyInfo = Float
    type AttrLabel AlignmentYalignPropertyInfo = "yalign"
    type AttrOrigin AlignmentYalignPropertyInfo = Alignment
    attrGet = getAlignmentYalign
    attrSet = setAlignmentYalign
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentYalign
    attrClear = undefined
#endif

-- VVV Prop "yscale"
   -- Type: TBasicType TFloat
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@yscale@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' alignment #yscale
-- @
getAlignmentYscale :: (MonadIO m, IsAlignment o) => o -> m Float
getAlignmentYscale obj = liftIO $ B.Properties.getObjectPropertyFloat obj "yscale"

-- | Set the value of the “@yscale@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' alignment [ #yscale 'Data.GI.Base.Attributes.:=' value ]
-- @
setAlignmentYscale :: (MonadIO m, IsAlignment o) => o -> Float -> m ()
setAlignmentYscale obj val = liftIO $ B.Properties.setObjectPropertyFloat obj "yscale" val

-- | Construct a `GValueConstruct` with valid value for the “@yscale@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructAlignmentYscale :: (IsAlignment o) => Float -> IO (GValueConstruct o)
constructAlignmentYscale val = B.Properties.constructObjectPropertyFloat "yscale" val

#if defined(ENABLE_OVERLOADING)
data AlignmentYscalePropertyInfo
instance AttrInfo AlignmentYscalePropertyInfo where
    type AttrAllowedOps AlignmentYscalePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint AlignmentYscalePropertyInfo = IsAlignment
    type AttrSetTypeConstraint AlignmentYscalePropertyInfo = (~) Float
    type AttrTransferTypeConstraint AlignmentYscalePropertyInfo = (~) Float
    type AttrTransferType AlignmentYscalePropertyInfo = Float
    type AttrGetType AlignmentYscalePropertyInfo = Float
    type AttrLabel AlignmentYscalePropertyInfo = "yscale"
    type AttrOrigin AlignmentYscalePropertyInfo = Alignment
    attrGet = getAlignmentYscale
    attrSet = setAlignmentYscale
    attrTransfer _ v = do
        return v
    attrConstruct = constructAlignmentYscale
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Alignment
type instance O.AttributeList Alignment = AlignmentAttributeList
type AlignmentAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("bottomPadding", AlignmentBottomPaddingPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("leftPadding", AlignmentLeftPaddingPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rightPadding", AlignmentRightPaddingPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("topPadding", AlignmentTopPaddingPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", AlignmentXalignPropertyInfo), '("xscale", AlignmentXscalePropertyInfo), '("yalign", AlignmentYalignPropertyInfo), '("yscale", AlignmentYscalePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
alignmentBottomPadding :: AttrLabelProxy "bottomPadding"
alignmentBottomPadding = AttrLabelProxy

alignmentLeftPadding :: AttrLabelProxy "leftPadding"
alignmentLeftPadding = AttrLabelProxy

alignmentRightPadding :: AttrLabelProxy "rightPadding"
alignmentRightPadding = AttrLabelProxy

alignmentTopPadding :: AttrLabelProxy "topPadding"
alignmentTopPadding = AttrLabelProxy

alignmentXalign :: AttrLabelProxy "xalign"
alignmentXalign = AttrLabelProxy

alignmentXscale :: AttrLabelProxy "xscale"
alignmentXscale = AttrLabelProxy

alignmentYalign :: AttrLabelProxy "yalign"
alignmentYalign = AttrLabelProxy

alignmentYscale :: AttrLabelProxy "yscale"
alignmentYscale = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Alignment = AlignmentSignalList
type AlignmentSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Alignment::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "xalign"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the horizontal alignment of the child widget, from 0 (left) to 1\n (right)."
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
--                     Just
--                       "the vertical alignment of the child widget, from 0 (top) to 1\n (bottom)."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xscale"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount that the child widget expands horizontally to fill up\n unused space, from 0 to 1.\n A value of 0 indicates that the child widget should never expand.\n A value of 1 indicates that the child widget will expand to fill all of the\n space allocated for the #GtkAlignment."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yscale"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount that the child widget expands vertically to fill up\n unused space, from 0 to 1. The values are similar to @xscale."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Alignment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_alignment_new" gtk_alignment_new :: 
    CFloat ->                               -- xalign : TBasicType TFloat
    CFloat ->                               -- yalign : TBasicType TFloat
    CFloat ->                               -- xscale : TBasicType TFloat
    CFloat ->                               -- yscale : TBasicType TFloat
    IO (Ptr Alignment)

{-# DEPRECATED alignmentNew ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties"] #-}
-- | Creates a new t'GI.Gtk.Objects.Alignment.Alignment'.
alignmentNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Float
    -- ^ /@xalign@/: the horizontal alignment of the child widget, from 0 (left) to 1
    --  (right).
    -> Float
    -- ^ /@yalign@/: the vertical alignment of the child widget, from 0 (top) to 1
    --  (bottom).
    -> Float
    -- ^ /@xscale@/: the amount that the child widget expands horizontally to fill up
    --  unused space, from 0 to 1.
    --  A value of 0 indicates that the child widget should never expand.
    --  A value of 1 indicates that the child widget will expand to fill all of the
    --  space allocated for the t'GI.Gtk.Objects.Alignment.Alignment'.
    -> Float
    -- ^ /@yscale@/: the amount that the child widget expands vertically to fill up
    --  unused space, from 0 to 1. The values are similar to /@xscale@/.
    -> m Alignment
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.Alignment.Alignment'
alignmentNew xalign yalign xscale yscale = liftIO $ do
    let xalign' = realToFrac xalign
    let yalign' = realToFrac yalign
    let xscale' = realToFrac xscale
    let yscale' = realToFrac yscale
    result <- gtk_alignment_new xalign' yalign' xscale' yscale'
    checkUnexpectedReturnNULL "alignmentNew" result
    result' <- (newObject Alignment) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Alignment::get_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "alignment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Alignment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAlignment" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding_top"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the padding for\n    the top of the widget, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "padding_bottom"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the padding\n    for the bottom of the widget, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "padding_left"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the padding\n    for the left of the widget, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "padding_right"
--           , argType = TBasicType TUInt
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the padding\n    for the right of the widget, or %NULL"
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

foreign import ccall "gtk_alignment_get_padding" gtk_alignment_get_padding :: 
    Ptr Alignment ->                        -- alignment : TInterface (Name {namespace = "Gtk", name = "Alignment"})
    Ptr Word32 ->                           -- padding_top : TBasicType TUInt
    Ptr Word32 ->                           -- padding_bottom : TBasicType TUInt
    Ptr Word32 ->                           -- padding_left : TBasicType TUInt
    Ptr Word32 ->                           -- padding_right : TBasicType TUInt
    IO ()

{-# DEPRECATED alignmentGetPadding ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties"] #-}
-- | Gets the padding on the different sides of the widget.
-- See gtk_alignment_set_padding ().
-- 
-- /Since: 2.4/
alignmentGetPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsAlignment a) =>
    a
    -- ^ /@alignment@/: a t'GI.Gtk.Objects.Alignment.Alignment'
    -> m ((Word32, Word32, Word32, Word32))
alignmentGetPadding alignment = liftIO $ do
    alignment' <- unsafeManagedPtrCastPtr alignment
    paddingTop <- allocMem :: IO (Ptr Word32)
    paddingBottom <- allocMem :: IO (Ptr Word32)
    paddingLeft <- allocMem :: IO (Ptr Word32)
    paddingRight <- allocMem :: IO (Ptr Word32)
    gtk_alignment_get_padding alignment' paddingTop paddingBottom paddingLeft paddingRight
    paddingTop' <- peek paddingTop
    paddingBottom' <- peek paddingBottom
    paddingLeft' <- peek paddingLeft
    paddingRight' <- peek paddingRight
    touchManagedPtr alignment
    freeMem paddingTop
    freeMem paddingBottom
    freeMem paddingLeft
    freeMem paddingRight
    return (paddingTop', paddingBottom', paddingLeft', paddingRight')

#if defined(ENABLE_OVERLOADING)
data AlignmentGetPaddingMethodInfo
instance (signature ~ (m ((Word32, Word32, Word32, Word32))), MonadIO m, IsAlignment a) => O.MethodInfo AlignmentGetPaddingMethodInfo a signature where
    overloadedMethod = alignmentGetPadding

#endif

-- method Alignment::set
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "alignment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Alignment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAlignment." , sinceVersion = Nothing }
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
--                     Just
--                       "the horizontal alignment of the child widget, from 0 (left) to 1\n (right)."
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
--                     Just
--                       "the vertical alignment of the child widget, from 0 (top) to 1\n (bottom)."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "xscale"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount that the child widget expands horizontally to fill up\n unused space, from 0 to 1.\n A value of 0 indicates that the child widget should never expand.\n A value of 1 indicates that the child widget will expand to fill all of the\n space allocated for the #GtkAlignment."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "yscale"
--           , argType = TBasicType TFloat
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the amount that the child widget expands vertically to fill up\n unused space, from 0 to 1. The values are similar to @xscale."
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

foreign import ccall "gtk_alignment_set" gtk_alignment_set :: 
    Ptr Alignment ->                        -- alignment : TInterface (Name {namespace = "Gtk", name = "Alignment"})
    CFloat ->                               -- xalign : TBasicType TFloat
    CFloat ->                               -- yalign : TBasicType TFloat
    CFloat ->                               -- xscale : TBasicType TFloat
    CFloat ->                               -- yscale : TBasicType TFloat
    IO ()

{-# DEPRECATED alignmentSet ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties"] #-}
-- | Sets the t'GI.Gtk.Objects.Alignment.Alignment' values.
alignmentSet ::
    (B.CallStack.HasCallStack, MonadIO m, IsAlignment a) =>
    a
    -- ^ /@alignment@/: a t'GI.Gtk.Objects.Alignment.Alignment'.
    -> Float
    -- ^ /@xalign@/: the horizontal alignment of the child widget, from 0 (left) to 1
    --  (right).
    -> Float
    -- ^ /@yalign@/: the vertical alignment of the child widget, from 0 (top) to 1
    --  (bottom).
    -> Float
    -- ^ /@xscale@/: the amount that the child widget expands horizontally to fill up
    --  unused space, from 0 to 1.
    --  A value of 0 indicates that the child widget should never expand.
    --  A value of 1 indicates that the child widget will expand to fill all of the
    --  space allocated for the t'GI.Gtk.Objects.Alignment.Alignment'.
    -> Float
    -- ^ /@yscale@/: the amount that the child widget expands vertically to fill up
    --  unused space, from 0 to 1. The values are similar to /@xscale@/.
    -> m ()
alignmentSet alignment xalign yalign xscale yscale = liftIO $ do
    alignment' <- unsafeManagedPtrCastPtr alignment
    let xalign' = realToFrac xalign
    let yalign' = realToFrac yalign
    let xscale' = realToFrac xscale
    let yscale' = realToFrac yscale
    gtk_alignment_set alignment' xalign' yalign' xscale' yscale'
    touchManagedPtr alignment
    return ()

#if defined(ENABLE_OVERLOADING)
data AlignmentSetMethodInfo
instance (signature ~ (Float -> Float -> Float -> Float -> m ()), MonadIO m, IsAlignment a) => O.MethodInfo AlignmentSetMethodInfo a signature where
    overloadedMethod = alignmentSet

#endif

-- method Alignment::set_padding
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "alignment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Alignment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkAlignment" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding_top"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the padding at the top of the widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding_bottom"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the padding at the bottom of the widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding_left"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the padding at the left of the widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "padding_right"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the padding at the right of the widget."
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

foreign import ccall "gtk_alignment_set_padding" gtk_alignment_set_padding :: 
    Ptr Alignment ->                        -- alignment : TInterface (Name {namespace = "Gtk", name = "Alignment"})
    Word32 ->                               -- padding_top : TBasicType TUInt
    Word32 ->                               -- padding_bottom : TBasicType TUInt
    Word32 ->                               -- padding_left : TBasicType TUInt
    Word32 ->                               -- padding_right : TBasicType TUInt
    IO ()

{-# DEPRECATED alignmentSetPadding ["(Since version 3.14)","Use t'GI.Gtk.Objects.Widget.Widget' alignment and margin properties"] #-}
-- | Sets the padding on the different sides of the widget.
-- The padding adds blank space to the sides of the widget. For instance,
-- this can be used to indent the child widget towards the right by adding
-- padding on the left.
-- 
-- /Since: 2.4/
alignmentSetPadding ::
    (B.CallStack.HasCallStack, MonadIO m, IsAlignment a) =>
    a
    -- ^ /@alignment@/: a t'GI.Gtk.Objects.Alignment.Alignment'
    -> Word32
    -- ^ /@paddingTop@/: the padding at the top of the widget
    -> Word32
    -- ^ /@paddingBottom@/: the padding at the bottom of the widget
    -> Word32
    -- ^ /@paddingLeft@/: the padding at the left of the widget
    -> Word32
    -- ^ /@paddingRight@/: the padding at the right of the widget.
    -> m ()
alignmentSetPadding alignment paddingTop paddingBottom paddingLeft paddingRight = liftIO $ do
    alignment' <- unsafeManagedPtrCastPtr alignment
    gtk_alignment_set_padding alignment' paddingTop paddingBottom paddingLeft paddingRight
    touchManagedPtr alignment
    return ()

#if defined(ENABLE_OVERLOADING)
data AlignmentSetPaddingMethodInfo
instance (signature ~ (Word32 -> Word32 -> Word32 -> Word32 -> m ()), MonadIO m, IsAlignment a) => O.MethodInfo AlignmentSetPaddingMethodInfo a signature where
    overloadedMethod = alignmentSetPadding

#endif

