{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.ProgressBar.ProgressBar' is typically used to display the progress of a long
-- running operation. It provides a visual clue that processing is underway.
-- The GtkProgressBar can be used in two different modes: percentage mode
-- and activity mode.
-- 
-- When an application can determine how much work needs to take place
-- (e.g. read a fixed number of bytes from a file) and can monitor its
-- progress, it can use the GtkProgressBar in percentage mode and the
-- user sees a growing bar indicating the percentage of the work that
-- has been completed. In this mode, the application is required to call
-- 'GI.Gtk.Objects.ProgressBar.progressBarSetFraction' periodically to update the progress bar.
-- 
-- When an application has no accurate way of knowing the amount of work
-- to do, it can use the t'GI.Gtk.Objects.ProgressBar.ProgressBar' in activity mode, which shows
-- activity by a block moving back and forth within the progress area. In
-- this mode, the application is required to call 'GI.Gtk.Objects.ProgressBar.progressBarPulse'
-- periodically to update the progress bar.
-- 
-- There is quite a bit of flexibility provided to control the appearance
-- of the t'GI.Gtk.Objects.ProgressBar.ProgressBar'. Functions are provided to control the orientation
-- of the bar, optional text can be displayed along with the bar, and the
-- step size used in activity mode can be set.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >progressbar[.osd]
-- >├── [text]
-- >╰── trough[.empty][.full]
-- >    ╰── progress[.pulse]
-- 
-- 
-- GtkProgressBar has a main CSS node with name progressbar and subnodes with
-- names text and trough, of which the latter has a subnode named progress. The
-- text subnode is only present if text is shown. The progress subnode has the
-- style class .pulse when in activity mode. It gets the style classes .left,
-- .right, .top or .bottom added when the progress \'touches\' the corresponding
-- end of the GtkProgressBar. The .osd class on the progressbar node is for use
-- in overlays like the one Epiphany has for page loading progress.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ProgressBar
    ( 

-- * Exported types
    ProgressBar(..)                         ,
    IsProgressBar                           ,
    toProgressBar                           ,
    noProgressBar                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveProgressBarMethod                ,
#endif


-- ** getEllipsize #method:getEllipsize#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetEllipsizeMethodInfo       ,
#endif
    progressBarGetEllipsize                 ,


-- ** getFraction #method:getFraction#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetFractionMethodInfo        ,
#endif
    progressBarGetFraction                  ,


-- ** getInverted #method:getInverted#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetInvertedMethodInfo        ,
#endif
    progressBarGetInverted                  ,


-- ** getPulseStep #method:getPulseStep#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetPulseStepMethodInfo       ,
#endif
    progressBarGetPulseStep                 ,


-- ** getShowText #method:getShowText#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetShowTextMethodInfo        ,
#endif
    progressBarGetShowText                  ,


-- ** getText #method:getText#

#if defined(ENABLE_OVERLOADING)
    ProgressBarGetTextMethodInfo            ,
#endif
    progressBarGetText                      ,


-- ** new #method:new#

    progressBarNew                          ,


-- ** pulse #method:pulse#

#if defined(ENABLE_OVERLOADING)
    ProgressBarPulseMethodInfo              ,
#endif
    progressBarPulse                        ,


-- ** setEllipsize #method:setEllipsize#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetEllipsizeMethodInfo       ,
#endif
    progressBarSetEllipsize                 ,


-- ** setFraction #method:setFraction#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetFractionMethodInfo        ,
#endif
    progressBarSetFraction                  ,


-- ** setInverted #method:setInverted#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetInvertedMethodInfo        ,
#endif
    progressBarSetInverted                  ,


-- ** setPulseStep #method:setPulseStep#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetPulseStepMethodInfo       ,
#endif
    progressBarSetPulseStep                 ,


-- ** setShowText #method:setShowText#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetShowTextMethodInfo        ,
#endif
    progressBarSetShowText                  ,


-- ** setText #method:setText#

#if defined(ENABLE_OVERLOADING)
    ProgressBarSetTextMethodInfo            ,
#endif
    progressBarSetText                      ,




 -- * Properties
-- ** ellipsize #attr:ellipsize#
-- | The preferred place to ellipsize the string, if the progress bar does
-- not have enough room to display the entire string, specified as a
-- t'GI.Pango.Enums.EllipsizeMode'.
-- 
-- Note that setting this property to a value other than
-- 'GI.Pango.Enums.EllipsizeModeNone' has the side-effect that the progress bar requests
-- only enough space to display the ellipsis (\"...\"). Another means to set a
-- progress bar\'s width is 'GI.Gtk.Objects.Widget.widgetSetSizeRequest'.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    ProgressBarEllipsizePropertyInfo        ,
#endif
    constructProgressBarEllipsize           ,
    getProgressBarEllipsize                 ,
#if defined(ENABLE_OVERLOADING)
    progressBarEllipsize                    ,
#endif
    setProgressBarEllipsize                 ,


-- ** fraction #attr:fraction#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ProgressBarFractionPropertyInfo         ,
#endif
    constructProgressBarFraction            ,
    getProgressBarFraction                  ,
#if defined(ENABLE_OVERLOADING)
    progressBarFraction                     ,
#endif
    setProgressBarFraction                  ,


-- ** inverted #attr:inverted#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ProgressBarInvertedPropertyInfo         ,
#endif
    constructProgressBarInverted            ,
    getProgressBarInverted                  ,
#if defined(ENABLE_OVERLOADING)
    progressBarInverted                     ,
#endif
    setProgressBarInverted                  ,


-- ** pulseStep #attr:pulseStep#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ProgressBarPulseStepPropertyInfo        ,
#endif
    constructProgressBarPulseStep           ,
    getProgressBarPulseStep                 ,
#if defined(ENABLE_OVERLOADING)
    progressBarPulseStep                    ,
#endif
    setProgressBarPulseStep                 ,


-- ** showText #attr:showText#
-- | Sets whether the progress bar will show a text in addition
-- to the bar itself. The shown text is either the value of
-- the t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/text/@ property or, if that is 'P.Nothing',
-- the t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/fraction/@ value, as a percentage.
-- 
-- To make a progress bar that is styled and sized suitably for
-- showing text (even if the actual text is blank), set
-- t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ to 'P.True' and t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/text/@
-- to the empty string (not 'P.Nothing').
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ProgressBarShowTextPropertyInfo         ,
#endif
    constructProgressBarShowText            ,
    getProgressBarShowText                  ,
#if defined(ENABLE_OVERLOADING)
    progressBarShowText                     ,
#endif
    setProgressBarShowText                  ,


-- ** text #attr:text#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ProgressBarTextPropertyInfo             ,
#endif
    clearProgressBarText                    ,
    constructProgressBarText                ,
    getProgressBarText                      ,
#if defined(ENABLE_OVERLOADING)
    progressBarText                         ,
#endif
    setProgressBarText                      ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import qualified GI.Pango.Enums as Pango.Enums

-- | Memory-managed wrapper type.
newtype ProgressBar = ProgressBar (ManagedPtr ProgressBar)
    deriving (Eq)
foreign import ccall "gtk_progress_bar_get_type"
    c_gtk_progress_bar_get_type :: IO GType

instance GObject ProgressBar where
    gobjectType = c_gtk_progress_bar_get_type
    

-- | Convert 'ProgressBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ProgressBar where
    toGValue o = do
        gtype <- c_gtk_progress_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ProgressBar)
        B.ManagedPtr.newObject ProgressBar ptr
        
    

-- | Type class for types which can be safely cast to `ProgressBar`, for instance with `toProgressBar`.
class (GObject o, O.IsDescendantOf ProgressBar o) => IsProgressBar o
instance (GObject o, O.IsDescendantOf ProgressBar o) => IsProgressBar o

instance O.HasParentTypes ProgressBar
type instance O.ParentTypes ProgressBar = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `ProgressBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toProgressBar :: (MonadIO m, IsProgressBar o) => o -> m ProgressBar
toProgressBar = liftIO . unsafeCastTo ProgressBar

-- | A convenience alias for `Nothing` :: `Maybe` `ProgressBar`.
noProgressBar :: Maybe ProgressBar
noProgressBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveProgressBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveProgressBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveProgressBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveProgressBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveProgressBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveProgressBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveProgressBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveProgressBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveProgressBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveProgressBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveProgressBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveProgressBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveProgressBarMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveProgressBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveProgressBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveProgressBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveProgressBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveProgressBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveProgressBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveProgressBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveProgressBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveProgressBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveProgressBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveProgressBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveProgressBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveProgressBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveProgressBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveProgressBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveProgressBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveProgressBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveProgressBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveProgressBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveProgressBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveProgressBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveProgressBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveProgressBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveProgressBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveProgressBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveProgressBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveProgressBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveProgressBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveProgressBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveProgressBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveProgressBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveProgressBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveProgressBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveProgressBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveProgressBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveProgressBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveProgressBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveProgressBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveProgressBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveProgressBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveProgressBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveProgressBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveProgressBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveProgressBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveProgressBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveProgressBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveProgressBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveProgressBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveProgressBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveProgressBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveProgressBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveProgressBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveProgressBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveProgressBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveProgressBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveProgressBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveProgressBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveProgressBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveProgressBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveProgressBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveProgressBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveProgressBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveProgressBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveProgressBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveProgressBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveProgressBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveProgressBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveProgressBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveProgressBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveProgressBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveProgressBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveProgressBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveProgressBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveProgressBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveProgressBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveProgressBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveProgressBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveProgressBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveProgressBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveProgressBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveProgressBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveProgressBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveProgressBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveProgressBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveProgressBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveProgressBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveProgressBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveProgressBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveProgressBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveProgressBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveProgressBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveProgressBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveProgressBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveProgressBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveProgressBarMethod "pulse" o = ProgressBarPulseMethodInfo
    ResolveProgressBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveProgressBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveProgressBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveProgressBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveProgressBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveProgressBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveProgressBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveProgressBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveProgressBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveProgressBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveProgressBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveProgressBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveProgressBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveProgressBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveProgressBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveProgressBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveProgressBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveProgressBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveProgressBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveProgressBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveProgressBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveProgressBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveProgressBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveProgressBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveProgressBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveProgressBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveProgressBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveProgressBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveProgressBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveProgressBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveProgressBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveProgressBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveProgressBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveProgressBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveProgressBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveProgressBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveProgressBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveProgressBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveProgressBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveProgressBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveProgressBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveProgressBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveProgressBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveProgressBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveProgressBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveProgressBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveProgressBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveProgressBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveProgressBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveProgressBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveProgressBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveProgressBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveProgressBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveProgressBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveProgressBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveProgressBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveProgressBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveProgressBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveProgressBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveProgressBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveProgressBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveProgressBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveProgressBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveProgressBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveProgressBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveProgressBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveProgressBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveProgressBarMethod "getEllipsize" o = ProgressBarGetEllipsizeMethodInfo
    ResolveProgressBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveProgressBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveProgressBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveProgressBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveProgressBarMethod "getFraction" o = ProgressBarGetFractionMethodInfo
    ResolveProgressBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveProgressBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveProgressBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveProgressBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveProgressBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveProgressBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveProgressBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveProgressBarMethod "getInverted" o = ProgressBarGetInvertedMethodInfo
    ResolveProgressBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveProgressBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveProgressBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveProgressBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveProgressBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveProgressBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveProgressBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveProgressBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveProgressBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveProgressBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveProgressBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveProgressBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveProgressBarMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveProgressBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveProgressBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveProgressBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveProgressBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveProgressBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveProgressBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveProgressBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveProgressBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveProgressBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveProgressBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveProgressBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveProgressBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveProgressBarMethod "getPulseStep" o = ProgressBarGetPulseStepMethodInfo
    ResolveProgressBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveProgressBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveProgressBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveProgressBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveProgressBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveProgressBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveProgressBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveProgressBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveProgressBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveProgressBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveProgressBarMethod "getShowText" o = ProgressBarGetShowTextMethodInfo
    ResolveProgressBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveProgressBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveProgressBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveProgressBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveProgressBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveProgressBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveProgressBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveProgressBarMethod "getText" o = ProgressBarGetTextMethodInfo
    ResolveProgressBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveProgressBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveProgressBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveProgressBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveProgressBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveProgressBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveProgressBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveProgressBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveProgressBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveProgressBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveProgressBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveProgressBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveProgressBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveProgressBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveProgressBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveProgressBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveProgressBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveProgressBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveProgressBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveProgressBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveProgressBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveProgressBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveProgressBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveProgressBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveProgressBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveProgressBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveProgressBarMethod "setEllipsize" o = ProgressBarSetEllipsizeMethodInfo
    ResolveProgressBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveProgressBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveProgressBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveProgressBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveProgressBarMethod "setFraction" o = ProgressBarSetFractionMethodInfo
    ResolveProgressBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveProgressBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveProgressBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveProgressBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveProgressBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveProgressBarMethod "setInverted" o = ProgressBarSetInvertedMethodInfo
    ResolveProgressBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveProgressBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveProgressBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveProgressBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveProgressBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveProgressBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveProgressBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveProgressBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveProgressBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveProgressBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveProgressBarMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveProgressBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveProgressBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveProgressBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveProgressBarMethod "setPulseStep" o = ProgressBarSetPulseStepMethodInfo
    ResolveProgressBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveProgressBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveProgressBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveProgressBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveProgressBarMethod "setShowText" o = ProgressBarSetShowTextMethodInfo
    ResolveProgressBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveProgressBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveProgressBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveProgressBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveProgressBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveProgressBarMethod "setText" o = ProgressBarSetTextMethodInfo
    ResolveProgressBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveProgressBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveProgressBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveProgressBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveProgressBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveProgressBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveProgressBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveProgressBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveProgressBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveProgressBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveProgressBarMethod t ProgressBar, O.MethodInfo info ProgressBar p) => OL.IsLabel t (ProgressBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "ellipsize"
   -- Type: TInterface (Name {namespace = "Pango", name = "EllipsizeMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@ellipsize@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #ellipsize
-- @
getProgressBarEllipsize :: (MonadIO m, IsProgressBar o) => o -> m Pango.Enums.EllipsizeMode
getProgressBarEllipsize obj = liftIO $ B.Properties.getObjectPropertyEnum obj "ellipsize"

-- | Set the value of the “@ellipsize@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #ellipsize 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarEllipsize :: (MonadIO m, IsProgressBar o) => o -> Pango.Enums.EllipsizeMode -> m ()
setProgressBarEllipsize obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "ellipsize" val

-- | Construct a `GValueConstruct` with valid value for the “@ellipsize@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarEllipsize :: (IsProgressBar o) => Pango.Enums.EllipsizeMode -> IO (GValueConstruct o)
constructProgressBarEllipsize val = B.Properties.constructObjectPropertyEnum "ellipsize" val

#if defined(ENABLE_OVERLOADING)
data ProgressBarEllipsizePropertyInfo
instance AttrInfo ProgressBarEllipsizePropertyInfo where
    type AttrAllowedOps ProgressBarEllipsizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ProgressBarEllipsizePropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarEllipsizePropertyInfo = (~) Pango.Enums.EllipsizeMode
    type AttrTransferTypeConstraint ProgressBarEllipsizePropertyInfo = (~) Pango.Enums.EllipsizeMode
    type AttrTransferType ProgressBarEllipsizePropertyInfo = Pango.Enums.EllipsizeMode
    type AttrGetType ProgressBarEllipsizePropertyInfo = Pango.Enums.EllipsizeMode
    type AttrLabel ProgressBarEllipsizePropertyInfo = "ellipsize"
    type AttrOrigin ProgressBarEllipsizePropertyInfo = ProgressBar
    attrGet = getProgressBarEllipsize
    attrSet = setProgressBarEllipsize
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarEllipsize
    attrClear = undefined
#endif

-- VVV Prop "fraction"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@fraction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #fraction
-- @
getProgressBarFraction :: (MonadIO m, IsProgressBar o) => o -> m Double
getProgressBarFraction obj = liftIO $ B.Properties.getObjectPropertyDouble obj "fraction"

-- | Set the value of the “@fraction@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #fraction 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarFraction :: (MonadIO m, IsProgressBar o) => o -> Double -> m ()
setProgressBarFraction obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "fraction" val

-- | Construct a `GValueConstruct` with valid value for the “@fraction@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarFraction :: (IsProgressBar o) => Double -> IO (GValueConstruct o)
constructProgressBarFraction val = B.Properties.constructObjectPropertyDouble "fraction" val

#if defined(ENABLE_OVERLOADING)
data ProgressBarFractionPropertyInfo
instance AttrInfo ProgressBarFractionPropertyInfo where
    type AttrAllowedOps ProgressBarFractionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ProgressBarFractionPropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarFractionPropertyInfo = (~) Double
    type AttrTransferTypeConstraint ProgressBarFractionPropertyInfo = (~) Double
    type AttrTransferType ProgressBarFractionPropertyInfo = Double
    type AttrGetType ProgressBarFractionPropertyInfo = Double
    type AttrLabel ProgressBarFractionPropertyInfo = "fraction"
    type AttrOrigin ProgressBarFractionPropertyInfo = ProgressBar
    attrGet = getProgressBarFraction
    attrSet = setProgressBarFraction
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarFraction
    attrClear = undefined
#endif

-- VVV Prop "inverted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #inverted
-- @
getProgressBarInverted :: (MonadIO m, IsProgressBar o) => o -> m Bool
getProgressBarInverted obj = liftIO $ B.Properties.getObjectPropertyBool obj "inverted"

-- | Set the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #inverted 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarInverted :: (MonadIO m, IsProgressBar o) => o -> Bool -> m ()
setProgressBarInverted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inverted" val

-- | Construct a `GValueConstruct` with valid value for the “@inverted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarInverted :: (IsProgressBar o) => Bool -> IO (GValueConstruct o)
constructProgressBarInverted val = B.Properties.constructObjectPropertyBool "inverted" val

#if defined(ENABLE_OVERLOADING)
data ProgressBarInvertedPropertyInfo
instance AttrInfo ProgressBarInvertedPropertyInfo where
    type AttrAllowedOps ProgressBarInvertedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ProgressBarInvertedPropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarInvertedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ProgressBarInvertedPropertyInfo = (~) Bool
    type AttrTransferType ProgressBarInvertedPropertyInfo = Bool
    type AttrGetType ProgressBarInvertedPropertyInfo = Bool
    type AttrLabel ProgressBarInvertedPropertyInfo = "inverted"
    type AttrOrigin ProgressBarInvertedPropertyInfo = ProgressBar
    attrGet = getProgressBarInverted
    attrSet = setProgressBarInverted
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarInverted
    attrClear = undefined
#endif

-- VVV Prop "pulse-step"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@pulse-step@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #pulseStep
-- @
getProgressBarPulseStep :: (MonadIO m, IsProgressBar o) => o -> m Double
getProgressBarPulseStep obj = liftIO $ B.Properties.getObjectPropertyDouble obj "pulse-step"

-- | Set the value of the “@pulse-step@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #pulseStep 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarPulseStep :: (MonadIO m, IsProgressBar o) => o -> Double -> m ()
setProgressBarPulseStep obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "pulse-step" val

-- | Construct a `GValueConstruct` with valid value for the “@pulse-step@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarPulseStep :: (IsProgressBar o) => Double -> IO (GValueConstruct o)
constructProgressBarPulseStep val = B.Properties.constructObjectPropertyDouble "pulse-step" val

#if defined(ENABLE_OVERLOADING)
data ProgressBarPulseStepPropertyInfo
instance AttrInfo ProgressBarPulseStepPropertyInfo where
    type AttrAllowedOps ProgressBarPulseStepPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ProgressBarPulseStepPropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarPulseStepPropertyInfo = (~) Double
    type AttrTransferTypeConstraint ProgressBarPulseStepPropertyInfo = (~) Double
    type AttrTransferType ProgressBarPulseStepPropertyInfo = Double
    type AttrGetType ProgressBarPulseStepPropertyInfo = Double
    type AttrLabel ProgressBarPulseStepPropertyInfo = "pulse-step"
    type AttrOrigin ProgressBarPulseStepPropertyInfo = ProgressBar
    attrGet = getProgressBarPulseStep
    attrSet = setProgressBarPulseStep
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarPulseStep
    attrClear = undefined
#endif

-- VVV Prop "show-text"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #showText
-- @
getProgressBarShowText :: (MonadIO m, IsProgressBar o) => o -> m Bool
getProgressBarShowText obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-text"

-- | Set the value of the “@show-text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #showText 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarShowText :: (MonadIO m, IsProgressBar o) => o -> Bool -> m ()
setProgressBarShowText obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-text" val

-- | Construct a `GValueConstruct` with valid value for the “@show-text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarShowText :: (IsProgressBar o) => Bool -> IO (GValueConstruct o)
constructProgressBarShowText val = B.Properties.constructObjectPropertyBool "show-text" val

#if defined(ENABLE_OVERLOADING)
data ProgressBarShowTextPropertyInfo
instance AttrInfo ProgressBarShowTextPropertyInfo where
    type AttrAllowedOps ProgressBarShowTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ProgressBarShowTextPropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarShowTextPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ProgressBarShowTextPropertyInfo = (~) Bool
    type AttrTransferType ProgressBarShowTextPropertyInfo = Bool
    type AttrGetType ProgressBarShowTextPropertyInfo = Bool
    type AttrLabel ProgressBarShowTextPropertyInfo = "show-text"
    type AttrOrigin ProgressBarShowTextPropertyInfo = ProgressBar
    attrGet = getProgressBarShowText
    attrSet = setProgressBarShowText
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarShowText
    attrClear = undefined
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' progressBar #text
-- @
getProgressBarText :: (MonadIO m, IsProgressBar o) => o -> m (Maybe T.Text)
getProgressBarText obj = liftIO $ B.Properties.getObjectPropertyString obj "text"

-- | Set the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' progressBar [ #text 'Data.GI.Base.Attributes.:=' value ]
-- @
setProgressBarText :: (MonadIO m, IsProgressBar o) => o -> T.Text -> m ()
setProgressBarText obj val = liftIO $ B.Properties.setObjectPropertyString obj "text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructProgressBarText :: (IsProgressBar o) => T.Text -> IO (GValueConstruct o)
constructProgressBarText val = B.Properties.constructObjectPropertyString "text" (Just val)

-- | Set the value of the “@text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #text
-- @
clearProgressBarText :: (MonadIO m, IsProgressBar o) => o -> m ()
clearProgressBarText obj = liftIO $ B.Properties.setObjectPropertyString obj "text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ProgressBarTextPropertyInfo
instance AttrInfo ProgressBarTextPropertyInfo where
    type AttrAllowedOps ProgressBarTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ProgressBarTextPropertyInfo = IsProgressBar
    type AttrSetTypeConstraint ProgressBarTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ProgressBarTextPropertyInfo = (~) T.Text
    type AttrTransferType ProgressBarTextPropertyInfo = T.Text
    type AttrGetType ProgressBarTextPropertyInfo = (Maybe T.Text)
    type AttrLabel ProgressBarTextPropertyInfo = "text"
    type AttrOrigin ProgressBarTextPropertyInfo = ProgressBar
    attrGet = getProgressBarText
    attrSet = setProgressBarText
    attrTransfer _ v = do
        return v
    attrConstruct = constructProgressBarText
    attrClear = clearProgressBarText
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ProgressBar
type instance O.AttributeList ProgressBar = ProgressBarAttributeList
type ProgressBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("ellipsize", ProgressBarEllipsizePropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("fraction", ProgressBarFractionPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("inverted", ProgressBarInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("pulseStep", ProgressBarPulseStepPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showText", ProgressBarShowTextPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("text", ProgressBarTextPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
progressBarEllipsize :: AttrLabelProxy "ellipsize"
progressBarEllipsize = AttrLabelProxy

progressBarFraction :: AttrLabelProxy "fraction"
progressBarFraction = AttrLabelProxy

progressBarInverted :: AttrLabelProxy "inverted"
progressBarInverted = AttrLabelProxy

progressBarPulseStep :: AttrLabelProxy "pulseStep"
progressBarPulseStep = AttrLabelProxy

progressBarShowText :: AttrLabelProxy "showText"
progressBarShowText = AttrLabelProxy

progressBarText :: AttrLabelProxy "text"
progressBarText = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ProgressBar = ProgressBarSignalList
type ProgressBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ProgressBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ProgressBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_progress_bar_new" gtk_progress_bar_new :: 
    IO (Ptr ProgressBar)

-- | Creates a new t'GI.Gtk.Objects.ProgressBar.ProgressBar'.
progressBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ProgressBar
    -- ^ __Returns:__ a t'GI.Gtk.Objects.ProgressBar.ProgressBar'.
progressBarNew  = liftIO $ do
    result <- gtk_progress_bar_new
    checkUnexpectedReturnNULL "progressBarNew" result
    result' <- (newObject ProgressBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ProgressBar::get_ellipsize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Pango" , name = "EllipsizeMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_progress_bar_get_ellipsize" gtk_progress_bar_get_ellipsize :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CUInt

-- | Returns the ellipsizing position of the progress bar.
-- See 'GI.Gtk.Objects.ProgressBar.progressBarSetEllipsize'.
-- 
-- /Since: 2.6/
progressBarGetEllipsize ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m Pango.Enums.EllipsizeMode
    -- ^ __Returns:__ t'GI.Pango.Enums.EllipsizeMode'
progressBarGetEllipsize pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_ellipsize pbar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr pbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetEllipsizeMethodInfo
instance (signature ~ (m Pango.Enums.EllipsizeMode), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetEllipsizeMethodInfo a signature where
    overloadedMethod = progressBarGetEllipsize

#endif

-- method ProgressBar::get_fraction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_progress_bar_get_fraction" gtk_progress_bar_get_fraction :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CDouble

-- | Returns the current fraction of the task that’s been completed.
progressBarGetFraction ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m Double
    -- ^ __Returns:__ a fraction from 0.0 to 1.0
progressBarGetFraction pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_fraction pbar'
    let result' = realToFrac result
    touchManagedPtr pbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetFractionMethodInfo
instance (signature ~ (m Double), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetFractionMethodInfo a signature where
    overloadedMethod = progressBarGetFraction

#endif

-- method ProgressBar::get_inverted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_progress_bar_get_inverted" gtk_progress_bar_get_inverted :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CInt

-- | Gets the value set by 'GI.Gtk.Objects.ProgressBar.progressBarSetInverted'.
progressBarGetInverted ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the progress bar is inverted
progressBarGetInverted pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_inverted pbar'
    let result' = (/= 0) result
    touchManagedPtr pbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetInvertedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetInvertedMethodInfo a signature where
    overloadedMethod = progressBarGetInverted

#endif

-- method ProgressBar::get_pulse_step
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_progress_bar_get_pulse_step" gtk_progress_bar_get_pulse_step :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CDouble

-- | Retrieves the pulse step set with 'GI.Gtk.Objects.ProgressBar.progressBarSetPulseStep'.
progressBarGetPulseStep ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m Double
    -- ^ __Returns:__ a fraction from 0.0 to 1.0
progressBarGetPulseStep pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_pulse_step pbar'
    let result' = realToFrac result
    touchManagedPtr pbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetPulseStepMethodInfo
instance (signature ~ (m Double), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetPulseStepMethodInfo a signature where
    overloadedMethod = progressBarGetPulseStep

#endif

-- method ProgressBar::get_show_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_progress_bar_get_show_text" gtk_progress_bar_get_show_text :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CInt

-- | Gets the value of the t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ property.
-- See 'GI.Gtk.Objects.ProgressBar.progressBarSetShowText'.
-- 
-- /Since: 3.0/
progressBarGetShowText ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if text is shown in the progress bar
progressBarGetShowText pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_show_text pbar'
    let result' = (/= 0) result
    touchManagedPtr pbar
    return result'

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetShowTextMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetShowTextMethodInfo a signature where
    overloadedMethod = progressBarGetShowText

#endif

-- method ProgressBar::get_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_progress_bar_get_text" gtk_progress_bar_get_text :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO CString

-- | Retrieves the text that is displayed with the progress bar,
-- if any, otherwise 'P.Nothing'. The return value is a reference
-- to the text, not a copy of it, so will become invalid
-- if you change the text in the progress bar.
progressBarGetText ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ text, or 'P.Nothing'; this string is owned by the widget
    -- and should not be modified or freed.
progressBarGetText pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    result <- gtk_progress_bar_get_text pbar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr pbar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ProgressBarGetTextMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarGetTextMethodInfo a signature where
    overloadedMethod = progressBarGetText

#endif

-- method ProgressBar::pulse
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_progress_bar_pulse" gtk_progress_bar_pulse :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    IO ()

-- | Indicates that some progress has been made, but you don’t know how much.
-- Causes the progress bar to enter “activity mode,” where a block
-- bounces back and forth. Each call to 'GI.Gtk.Objects.ProgressBar.progressBarPulse'
-- causes the block to move by a little bit (the amount of movement
-- per pulse is determined by 'GI.Gtk.Objects.ProgressBar.progressBarSetPulseStep').
progressBarPulse ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> m ()
progressBarPulse pbar = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    gtk_progress_bar_pulse pbar'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarPulseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarPulseMethodInfo a signature where
    overloadedMethod = progressBarPulse

#endif

-- method ProgressBar::set_ellipsize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "mode"
--           , argType =
--               TInterface Name { namespace = "Pango" , name = "EllipsizeMode" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #PangoEllipsizeMode"
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

foreign import ccall "gtk_progress_bar_set_ellipsize" gtk_progress_bar_set_ellipsize :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CUInt ->                                -- mode : TInterface (Name {namespace = "Pango", name = "EllipsizeMode"})
    IO ()

-- | Sets the mode used to ellipsize (add an ellipsis: \"...\") the
-- text if there is not enough space to render the entire string.
-- 
-- /Since: 2.6/
progressBarSetEllipsize ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Pango.Enums.EllipsizeMode
    -- ^ /@mode@/: a t'GI.Pango.Enums.EllipsizeMode'
    -> m ()
progressBarSetEllipsize pbar mode = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    let mode' = (fromIntegral . fromEnum) mode
    gtk_progress_bar_set_ellipsize pbar' mode'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetEllipsizeMethodInfo
instance (signature ~ (Pango.Enums.EllipsizeMode -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetEllipsizeMethodInfo a signature where
    overloadedMethod = progressBarSetEllipsize

#endif

-- method ProgressBar::set_fraction
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fraction"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "fraction of the task that\8217s been completed"
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

foreign import ccall "gtk_progress_bar_set_fraction" gtk_progress_bar_set_fraction :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CDouble ->                              -- fraction : TBasicType TDouble
    IO ()

-- | Causes the progress bar to “fill in” the given fraction
-- of the bar. The fraction should be between 0.0 and 1.0,
-- inclusive.
progressBarSetFraction ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Double
    -- ^ /@fraction@/: fraction of the task that’s been completed
    -> m ()
progressBarSetFraction pbar fraction = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    let fraction' = realToFrac fraction
    gtk_progress_bar_set_fraction pbar' fraction'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetFractionMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetFractionMethodInfo a signature where
    overloadedMethod = progressBarSetFraction

#endif

-- method ProgressBar::set_inverted
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "inverted"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to invert the progress bar"
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

foreign import ccall "gtk_progress_bar_set_inverted" gtk_progress_bar_set_inverted :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CInt ->                                 -- inverted : TBasicType TBoolean
    IO ()

-- | Progress bars normally grow from top to bottom or left to right.
-- Inverted progress bars grow in the opposite direction.
progressBarSetInverted ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Bool
    -- ^ /@inverted@/: 'P.True' to invert the progress bar
    -> m ()
progressBarSetInverted pbar inverted = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    let inverted' = (fromIntegral . fromEnum) inverted
    gtk_progress_bar_set_inverted pbar' inverted'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetInvertedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetInvertedMethodInfo a signature where
    overloadedMethod = progressBarSetInverted

#endif

-- method ProgressBar::set_pulse_step
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fraction"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "fraction between 0.0 and 1.0"
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

foreign import ccall "gtk_progress_bar_set_pulse_step" gtk_progress_bar_set_pulse_step :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CDouble ->                              -- fraction : TBasicType TDouble
    IO ()

-- | Sets the fraction of total progress bar length to move the
-- bouncing block for each call to 'GI.Gtk.Objects.ProgressBar.progressBarPulse'.
progressBarSetPulseStep ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Double
    -- ^ /@fraction@/: fraction between 0.0 and 1.0
    -> m ()
progressBarSetPulseStep pbar fraction = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    let fraction' = realToFrac fraction
    gtk_progress_bar_set_pulse_step pbar' fraction'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetPulseStepMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetPulseStepMethodInfo a signature where
    overloadedMethod = progressBarSetPulseStep

#endif

-- method ProgressBar::set_show_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_text"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to show text"
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

foreign import ccall "gtk_progress_bar_set_show_text" gtk_progress_bar_set_show_text :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CInt ->                                 -- show_text : TBasicType TBoolean
    IO ()

-- | Sets whether the progress bar will show text next to the bar.
-- The shown text is either the value of the t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/text/@
-- property or, if that is 'P.Nothing', the t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/fraction/@ value,
-- as a percentage.
-- 
-- To make a progress bar that is styled and sized suitably for containing
-- text (even if the actual text is blank), set t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ to
-- 'P.True' and t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/text/@ to the empty string (not 'P.Nothing').
-- 
-- /Since: 3.0/
progressBarSetShowText ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Bool
    -- ^ /@showText@/: whether to show text
    -> m ()
progressBarSetShowText pbar showText = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    let showText' = (fromIntegral . fromEnum) showText
    gtk_progress_bar_set_show_text pbar' showText'
    touchManagedPtr pbar
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetShowTextMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetShowTextMethodInfo a signature where
    overloadedMethod = progressBarSetShowText

#endif

-- method ProgressBar::set_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "pbar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ProgressBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkProgressBar" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a UTF-8 string, or %NULL"
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

foreign import ccall "gtk_progress_bar_set_text" gtk_progress_bar_set_text :: 
    Ptr ProgressBar ->                      -- pbar : TInterface (Name {namespace = "Gtk", name = "ProgressBar"})
    CString ->                              -- text : TBasicType TUTF8
    IO ()

-- | Causes the given /@text@/ to appear next to the progress bar.
-- 
-- If /@text@/ is 'P.Nothing' and t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ is 'P.True', the current
-- value of t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/fraction/@ will be displayed as a percentage.
-- 
-- If /@text@/ is non-'P.Nothing' and t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ is 'P.True', the text
-- will be displayed. In this case, it will not display the progress
-- percentage. If /@text@/ is the empty string, the progress bar will still
-- be styled and sized suitably for containing text, as long as
-- t'GI.Gtk.Objects.ProgressBar.ProgressBar':@/show-text/@ is 'P.True'.
progressBarSetText ::
    (B.CallStack.HasCallStack, MonadIO m, IsProgressBar a) =>
    a
    -- ^ /@pbar@/: a t'GI.Gtk.Objects.ProgressBar.ProgressBar'
    -> Maybe (T.Text)
    -- ^ /@text@/: a UTF-8 string, or 'P.Nothing'
    -> m ()
progressBarSetText pbar text = liftIO $ do
    pbar' <- unsafeManagedPtrCastPtr pbar
    maybeText <- case text of
        Nothing -> return nullPtr
        Just jText -> do
            jText' <- textToCString jText
            return jText'
    gtk_progress_bar_set_text pbar' maybeText
    touchManagedPtr pbar
    freeMem maybeText
    return ()

#if defined(ENABLE_OVERLOADING)
data ProgressBarSetTextMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsProgressBar a) => O.MethodInfo ProgressBarSetTextMethodInfo a signature where
    overloadedMethod = progressBarSetText

#endif

