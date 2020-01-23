{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkHeaderBar is similar to a horizontal t'GI.Gtk.Objects.Box.Box'. It allows children to
-- be placed at the start or the end. In addition, it allows a title and
-- subtitle to be displayed. The title will be centered with respect to
-- the width of the box, even if the children at either side take up
-- different amounts of space. The height of the titlebar will be
-- set to provide sufficient space for the subtitle, even if none is
-- currently set. If a subtitle is not needed, the space reservation
-- can be turned off with 'GI.Gtk.Objects.HeaderBar.headerBarSetHasSubtitle'.
-- 
-- GtkHeaderBar can add typical window frame controls, such as minimize,
-- maximize and close buttons, or the window icon.
-- 
-- For these reasons, GtkHeaderBar is the natural choice for use as the custom
-- titlebar widget of a t'GI.Gtk.Objects.Window.Window' (see 'GI.Gtk.Objects.Window.windowSetTitlebar'), as it gives
-- features typical of titlebars while allowing the addition of child widgets.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.HeaderBar
    ( 

-- * Exported types
    HeaderBar(..)                           ,
    IsHeaderBar                             ,
    toHeaderBar                             ,
    noHeaderBar                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveHeaderBarMethod                  ,
#endif


-- ** getCustomTitle #method:getCustomTitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetCustomTitleMethodInfo       ,
#endif
    headerBarGetCustomTitle                 ,


-- ** getDecorationLayout #method:getDecorationLayout#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetDecorationLayoutMethodInfo  ,
#endif
    headerBarGetDecorationLayout            ,


-- ** getHasSubtitle #method:getHasSubtitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetHasSubtitleMethodInfo       ,
#endif
    headerBarGetHasSubtitle                 ,


-- ** getShowCloseButton #method:getShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetShowCloseButtonMethodInfo   ,
#endif
    headerBarGetShowCloseButton             ,


-- ** getSubtitle #method:getSubtitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetSubtitleMethodInfo          ,
#endif
    headerBarGetSubtitle                    ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarGetTitleMethodInfo             ,
#endif
    headerBarGetTitle                       ,


-- ** new #method:new#

    headerBarNew                            ,


-- ** packEnd #method:packEnd#

#if defined(ENABLE_OVERLOADING)
    HeaderBarPackEndMethodInfo              ,
#endif
    headerBarPackEnd                        ,


-- ** packStart #method:packStart#

#if defined(ENABLE_OVERLOADING)
    HeaderBarPackStartMethodInfo            ,
#endif
    headerBarPackStart                      ,


-- ** setCustomTitle #method:setCustomTitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetCustomTitleMethodInfo       ,
#endif
    headerBarSetCustomTitle                 ,


-- ** setDecorationLayout #method:setDecorationLayout#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetDecorationLayoutMethodInfo  ,
#endif
    headerBarSetDecorationLayout            ,


-- ** setHasSubtitle #method:setHasSubtitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetHasSubtitleMethodInfo       ,
#endif
    headerBarSetHasSubtitle                 ,


-- ** setShowCloseButton #method:setShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetShowCloseButtonMethodInfo   ,
#endif
    headerBarSetShowCloseButton             ,


-- ** setSubtitle #method:setSubtitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetSubtitleMethodInfo          ,
#endif
    headerBarSetSubtitle                    ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    HeaderBarSetTitleMethodInfo             ,
#endif
    headerBarSetTitle                       ,




 -- * Properties
-- ** customTitle #attr:customTitle#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HeaderBarCustomTitlePropertyInfo        ,
#endif
    clearHeaderBarCustomTitle               ,
    constructHeaderBarCustomTitle           ,
    getHeaderBarCustomTitle                 ,
#if defined(ENABLE_OVERLOADING)
    headerBarCustomTitle                    ,
#endif
    setHeaderBarCustomTitle                 ,


-- ** decorationLayout #attr:decorationLayout#
-- | The decoration layout for buttons. If this property is
-- not set, the t'GI.Gtk.Objects.Settings.Settings':@/gtk-decoration-layout/@ setting
-- is used.
-- 
-- See 'GI.Gtk.Objects.HeaderBar.headerBarSetDecorationLayout' for information
-- about the format of this string.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    HeaderBarDecorationLayoutPropertyInfo   ,
#endif
    clearHeaderBarDecorationLayout          ,
    constructHeaderBarDecorationLayout      ,
    getHeaderBarDecorationLayout            ,
#if defined(ENABLE_OVERLOADING)
    headerBarDecorationLayout               ,
#endif
    setHeaderBarDecorationLayout            ,


-- ** decorationLayoutSet #attr:decorationLayoutSet#
-- | Set to 'P.True' if t'GI.Gtk.Objects.HeaderBar.HeaderBar':@/decoration-layout/@ is set.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    HeaderBarDecorationLayoutSetPropertyInfo,
#endif
    constructHeaderBarDecorationLayoutSet   ,
    getHeaderBarDecorationLayoutSet         ,
#if defined(ENABLE_OVERLOADING)
    headerBarDecorationLayoutSet            ,
#endif
    setHeaderBarDecorationLayoutSet         ,


-- ** hasSubtitle #attr:hasSubtitle#
-- | If 'P.True', reserve space for a subtitle, even if none
-- is currently set.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    HeaderBarHasSubtitlePropertyInfo        ,
#endif
    constructHeaderBarHasSubtitle           ,
    getHeaderBarHasSubtitle                 ,
#if defined(ENABLE_OVERLOADING)
    headerBarHasSubtitle                    ,
#endif
    setHeaderBarHasSubtitle                 ,


-- ** showCloseButton #attr:showCloseButton#
-- | Whether to show window decorations.
-- 
-- Which buttons are actually shown and where is determined
-- by the t'GI.Gtk.Objects.HeaderBar.HeaderBar':@/decoration-layout/@ property, and by
-- the state of the window (e.g. a close button will not be
-- shown if the window can\'t be closed).

#if defined(ENABLE_OVERLOADING)
    HeaderBarShowCloseButtonPropertyInfo    ,
#endif
    constructHeaderBarShowCloseButton       ,
    getHeaderBarShowCloseButton             ,
#if defined(ENABLE_OVERLOADING)
    headerBarShowCloseButton                ,
#endif
    setHeaderBarShowCloseButton             ,


-- ** spacing #attr:spacing#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HeaderBarSpacingPropertyInfo            ,
#endif
    constructHeaderBarSpacing               ,
    getHeaderBarSpacing                     ,
#if defined(ENABLE_OVERLOADING)
    headerBarSpacing                        ,
#endif
    setHeaderBarSpacing                     ,


-- ** subtitle #attr:subtitle#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HeaderBarSubtitlePropertyInfo           ,
#endif
    clearHeaderBarSubtitle                  ,
    constructHeaderBarSubtitle              ,
    getHeaderBarSubtitle                    ,
#if defined(ENABLE_OVERLOADING)
    headerBarSubtitle                       ,
#endif
    setHeaderBarSubtitle                    ,


-- ** title #attr:title#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    HeaderBarTitlePropertyInfo              ,
#endif
    clearHeaderBarTitle                     ,
    constructHeaderBarTitle                 ,
    getHeaderBarTitle                       ,
#if defined(ENABLE_OVERLOADING)
    headerBarTitle                          ,
#endif
    setHeaderBarTitle                       ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype HeaderBar = HeaderBar (ManagedPtr HeaderBar)
    deriving (Eq)
foreign import ccall "gtk_header_bar_get_type"
    c_gtk_header_bar_get_type :: IO GType

instance GObject HeaderBar where
    gobjectType = c_gtk_header_bar_get_type
    

-- | Convert 'HeaderBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue HeaderBar where
    toGValue o = do
        gtype <- c_gtk_header_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr HeaderBar)
        B.ManagedPtr.newObject HeaderBar ptr
        
    

-- | Type class for types which can be safely cast to `HeaderBar`, for instance with `toHeaderBar`.
class (GObject o, O.IsDescendantOf HeaderBar o) => IsHeaderBar o
instance (GObject o, O.IsDescendantOf HeaderBar o) => IsHeaderBar o

instance O.HasParentTypes HeaderBar
type instance O.ParentTypes HeaderBar = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `HeaderBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toHeaderBar :: (MonadIO m, IsHeaderBar o) => o -> m HeaderBar
toHeaderBar = liftIO . unsafeCastTo HeaderBar

-- | A convenience alias for `Nothing` :: `Maybe` `HeaderBar`.
noHeaderBar :: Maybe HeaderBar
noHeaderBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveHeaderBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveHeaderBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveHeaderBarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveHeaderBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveHeaderBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveHeaderBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveHeaderBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveHeaderBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveHeaderBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveHeaderBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveHeaderBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveHeaderBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveHeaderBarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveHeaderBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveHeaderBarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveHeaderBarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveHeaderBarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveHeaderBarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveHeaderBarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveHeaderBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveHeaderBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveHeaderBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveHeaderBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveHeaderBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveHeaderBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveHeaderBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveHeaderBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveHeaderBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveHeaderBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveHeaderBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveHeaderBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveHeaderBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveHeaderBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveHeaderBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveHeaderBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveHeaderBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveHeaderBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveHeaderBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveHeaderBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveHeaderBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveHeaderBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveHeaderBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveHeaderBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveHeaderBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveHeaderBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveHeaderBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveHeaderBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveHeaderBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveHeaderBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveHeaderBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveHeaderBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveHeaderBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveHeaderBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveHeaderBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveHeaderBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveHeaderBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveHeaderBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveHeaderBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveHeaderBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveHeaderBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveHeaderBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveHeaderBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveHeaderBarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveHeaderBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveHeaderBarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveHeaderBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveHeaderBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveHeaderBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveHeaderBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveHeaderBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveHeaderBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveHeaderBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveHeaderBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveHeaderBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveHeaderBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveHeaderBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveHeaderBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveHeaderBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveHeaderBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveHeaderBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveHeaderBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveHeaderBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveHeaderBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveHeaderBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveHeaderBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveHeaderBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveHeaderBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveHeaderBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveHeaderBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveHeaderBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveHeaderBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveHeaderBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveHeaderBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveHeaderBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveHeaderBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveHeaderBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveHeaderBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveHeaderBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveHeaderBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveHeaderBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveHeaderBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveHeaderBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveHeaderBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveHeaderBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveHeaderBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveHeaderBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveHeaderBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveHeaderBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveHeaderBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveHeaderBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveHeaderBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveHeaderBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveHeaderBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveHeaderBarMethod "packEnd" o = HeaderBarPackEndMethodInfo
    ResolveHeaderBarMethod "packStart" o = HeaderBarPackStartMethodInfo
    ResolveHeaderBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveHeaderBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveHeaderBarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveHeaderBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveHeaderBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveHeaderBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveHeaderBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveHeaderBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveHeaderBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveHeaderBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveHeaderBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveHeaderBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveHeaderBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveHeaderBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveHeaderBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveHeaderBarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveHeaderBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveHeaderBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveHeaderBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveHeaderBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveHeaderBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveHeaderBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveHeaderBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveHeaderBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveHeaderBarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveHeaderBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveHeaderBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveHeaderBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveHeaderBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveHeaderBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveHeaderBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveHeaderBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveHeaderBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveHeaderBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveHeaderBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveHeaderBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveHeaderBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveHeaderBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveHeaderBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveHeaderBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveHeaderBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveHeaderBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveHeaderBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveHeaderBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveHeaderBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveHeaderBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveHeaderBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveHeaderBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveHeaderBarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveHeaderBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveHeaderBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveHeaderBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveHeaderBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveHeaderBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveHeaderBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveHeaderBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveHeaderBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveHeaderBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveHeaderBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveHeaderBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveHeaderBarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveHeaderBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveHeaderBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveHeaderBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveHeaderBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveHeaderBarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveHeaderBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveHeaderBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveHeaderBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveHeaderBarMethod "getCustomTitle" o = HeaderBarGetCustomTitleMethodInfo
    ResolveHeaderBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveHeaderBarMethod "getDecorationLayout" o = HeaderBarGetDecorationLayoutMethodInfo
    ResolveHeaderBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveHeaderBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveHeaderBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveHeaderBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveHeaderBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveHeaderBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveHeaderBarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveHeaderBarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveHeaderBarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveHeaderBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveHeaderBarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveHeaderBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveHeaderBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveHeaderBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveHeaderBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveHeaderBarMethod "getHasSubtitle" o = HeaderBarGetHasSubtitleMethodInfo
    ResolveHeaderBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveHeaderBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveHeaderBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveHeaderBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveHeaderBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveHeaderBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveHeaderBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveHeaderBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveHeaderBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveHeaderBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveHeaderBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveHeaderBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveHeaderBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveHeaderBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveHeaderBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveHeaderBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveHeaderBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveHeaderBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveHeaderBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveHeaderBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveHeaderBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveHeaderBarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveHeaderBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveHeaderBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveHeaderBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveHeaderBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveHeaderBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveHeaderBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveHeaderBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveHeaderBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveHeaderBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveHeaderBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveHeaderBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveHeaderBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveHeaderBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveHeaderBarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveHeaderBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveHeaderBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveHeaderBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveHeaderBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveHeaderBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveHeaderBarMethod "getShowCloseButton" o = HeaderBarGetShowCloseButtonMethodInfo
    ResolveHeaderBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveHeaderBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveHeaderBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveHeaderBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveHeaderBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveHeaderBarMethod "getSubtitle" o = HeaderBarGetSubtitleMethodInfo
    ResolveHeaderBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveHeaderBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveHeaderBarMethod "getTitle" o = HeaderBarGetTitleMethodInfo
    ResolveHeaderBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveHeaderBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveHeaderBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveHeaderBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveHeaderBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveHeaderBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveHeaderBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveHeaderBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveHeaderBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveHeaderBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveHeaderBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveHeaderBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveHeaderBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveHeaderBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveHeaderBarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveHeaderBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveHeaderBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveHeaderBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveHeaderBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveHeaderBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveHeaderBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveHeaderBarMethod "setCustomTitle" o = HeaderBarSetCustomTitleMethodInfo
    ResolveHeaderBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveHeaderBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveHeaderBarMethod "setDecorationLayout" o = HeaderBarSetDecorationLayoutMethodInfo
    ResolveHeaderBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveHeaderBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveHeaderBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveHeaderBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveHeaderBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveHeaderBarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveHeaderBarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveHeaderBarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveHeaderBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveHeaderBarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveHeaderBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveHeaderBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveHeaderBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveHeaderBarMethod "setHasSubtitle" o = HeaderBarSetHasSubtitleMethodInfo
    ResolveHeaderBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveHeaderBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveHeaderBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveHeaderBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveHeaderBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveHeaderBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveHeaderBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveHeaderBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveHeaderBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveHeaderBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveHeaderBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveHeaderBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveHeaderBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveHeaderBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveHeaderBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveHeaderBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveHeaderBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveHeaderBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveHeaderBarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveHeaderBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveHeaderBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveHeaderBarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveHeaderBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveHeaderBarMethod "setShowCloseButton" o = HeaderBarSetShowCloseButtonMethodInfo
    ResolveHeaderBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveHeaderBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveHeaderBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveHeaderBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveHeaderBarMethod "setSubtitle" o = HeaderBarSetSubtitleMethodInfo
    ResolveHeaderBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveHeaderBarMethod "setTitle" o = HeaderBarSetTitleMethodInfo
    ResolveHeaderBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveHeaderBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveHeaderBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveHeaderBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveHeaderBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveHeaderBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveHeaderBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveHeaderBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveHeaderBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveHeaderBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveHeaderBarMethod t HeaderBar, O.MethodInfo info HeaderBar p) => OL.IsLabel t (HeaderBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "custom-title"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@custom-title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #customTitle
-- @
getHeaderBarCustomTitle :: (MonadIO m, IsHeaderBar o) => o -> m (Maybe Gtk.Widget.Widget)
getHeaderBarCustomTitle obj = liftIO $ B.Properties.getObjectPropertyObject obj "custom-title" Gtk.Widget.Widget

-- | Set the value of the “@custom-title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #customTitle 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarCustomTitle :: (MonadIO m, IsHeaderBar o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setHeaderBarCustomTitle obj val = liftIO $ B.Properties.setObjectPropertyObject obj "custom-title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@custom-title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarCustomTitle :: (IsHeaderBar o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructHeaderBarCustomTitle val = B.Properties.constructObjectPropertyObject "custom-title" (Just val)

-- | Set the value of the “@custom-title@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #customTitle
-- @
clearHeaderBarCustomTitle :: (MonadIO m, IsHeaderBar o) => o -> m ()
clearHeaderBarCustomTitle obj = liftIO $ B.Properties.setObjectPropertyObject obj "custom-title" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data HeaderBarCustomTitlePropertyInfo
instance AttrInfo HeaderBarCustomTitlePropertyInfo where
    type AttrAllowedOps HeaderBarCustomTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HeaderBarCustomTitlePropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarCustomTitlePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint HeaderBarCustomTitlePropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType HeaderBarCustomTitlePropertyInfo = Gtk.Widget.Widget
    type AttrGetType HeaderBarCustomTitlePropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel HeaderBarCustomTitlePropertyInfo = "custom-title"
    type AttrOrigin HeaderBarCustomTitlePropertyInfo = HeaderBar
    attrGet = getHeaderBarCustomTitle
    attrSet = setHeaderBarCustomTitle
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructHeaderBarCustomTitle
    attrClear = clearHeaderBarCustomTitle
#endif

-- VVV Prop "decoration-layout"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@decoration-layout@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #decorationLayout
-- @
getHeaderBarDecorationLayout :: (MonadIO m, IsHeaderBar o) => o -> m T.Text
getHeaderBarDecorationLayout obj = liftIO $ checkUnexpectedNothing "getHeaderBarDecorationLayout" $ B.Properties.getObjectPropertyString obj "decoration-layout"

-- | Set the value of the “@decoration-layout@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #decorationLayout 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarDecorationLayout :: (MonadIO m, IsHeaderBar o) => o -> T.Text -> m ()
setHeaderBarDecorationLayout obj val = liftIO $ B.Properties.setObjectPropertyString obj "decoration-layout" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@decoration-layout@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarDecorationLayout :: (IsHeaderBar o) => T.Text -> IO (GValueConstruct o)
constructHeaderBarDecorationLayout val = B.Properties.constructObjectPropertyString "decoration-layout" (Just val)

-- | Set the value of the “@decoration-layout@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #decorationLayout
-- @
clearHeaderBarDecorationLayout :: (MonadIO m, IsHeaderBar o) => o -> m ()
clearHeaderBarDecorationLayout obj = liftIO $ B.Properties.setObjectPropertyString obj "decoration-layout" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data HeaderBarDecorationLayoutPropertyInfo
instance AttrInfo HeaderBarDecorationLayoutPropertyInfo where
    type AttrAllowedOps HeaderBarDecorationLayoutPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HeaderBarDecorationLayoutPropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarDecorationLayoutPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HeaderBarDecorationLayoutPropertyInfo = (~) T.Text
    type AttrTransferType HeaderBarDecorationLayoutPropertyInfo = T.Text
    type AttrGetType HeaderBarDecorationLayoutPropertyInfo = T.Text
    type AttrLabel HeaderBarDecorationLayoutPropertyInfo = "decoration-layout"
    type AttrOrigin HeaderBarDecorationLayoutPropertyInfo = HeaderBar
    attrGet = getHeaderBarDecorationLayout
    attrSet = setHeaderBarDecorationLayout
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarDecorationLayout
    attrClear = clearHeaderBarDecorationLayout
#endif

-- VVV Prop "decoration-layout-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@decoration-layout-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #decorationLayoutSet
-- @
getHeaderBarDecorationLayoutSet :: (MonadIO m, IsHeaderBar o) => o -> m Bool
getHeaderBarDecorationLayoutSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "decoration-layout-set"

-- | Set the value of the “@decoration-layout-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #decorationLayoutSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarDecorationLayoutSet :: (MonadIO m, IsHeaderBar o) => o -> Bool -> m ()
setHeaderBarDecorationLayoutSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "decoration-layout-set" val

-- | Construct a `GValueConstruct` with valid value for the “@decoration-layout-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarDecorationLayoutSet :: (IsHeaderBar o) => Bool -> IO (GValueConstruct o)
constructHeaderBarDecorationLayoutSet val = B.Properties.constructObjectPropertyBool "decoration-layout-set" val

#if defined(ENABLE_OVERLOADING)
data HeaderBarDecorationLayoutSetPropertyInfo
instance AttrInfo HeaderBarDecorationLayoutSetPropertyInfo where
    type AttrAllowedOps HeaderBarDecorationLayoutSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HeaderBarDecorationLayoutSetPropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarDecorationLayoutSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint HeaderBarDecorationLayoutSetPropertyInfo = (~) Bool
    type AttrTransferType HeaderBarDecorationLayoutSetPropertyInfo = Bool
    type AttrGetType HeaderBarDecorationLayoutSetPropertyInfo = Bool
    type AttrLabel HeaderBarDecorationLayoutSetPropertyInfo = "decoration-layout-set"
    type AttrOrigin HeaderBarDecorationLayoutSetPropertyInfo = HeaderBar
    attrGet = getHeaderBarDecorationLayoutSet
    attrSet = setHeaderBarDecorationLayoutSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarDecorationLayoutSet
    attrClear = undefined
#endif

-- VVV Prop "has-subtitle"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@has-subtitle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #hasSubtitle
-- @
getHeaderBarHasSubtitle :: (MonadIO m, IsHeaderBar o) => o -> m Bool
getHeaderBarHasSubtitle obj = liftIO $ B.Properties.getObjectPropertyBool obj "has-subtitle"

-- | Set the value of the “@has-subtitle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #hasSubtitle 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarHasSubtitle :: (MonadIO m, IsHeaderBar o) => o -> Bool -> m ()
setHeaderBarHasSubtitle obj val = liftIO $ B.Properties.setObjectPropertyBool obj "has-subtitle" val

-- | Construct a `GValueConstruct` with valid value for the “@has-subtitle@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarHasSubtitle :: (IsHeaderBar o) => Bool -> IO (GValueConstruct o)
constructHeaderBarHasSubtitle val = B.Properties.constructObjectPropertyBool "has-subtitle" val

#if defined(ENABLE_OVERLOADING)
data HeaderBarHasSubtitlePropertyInfo
instance AttrInfo HeaderBarHasSubtitlePropertyInfo where
    type AttrAllowedOps HeaderBarHasSubtitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HeaderBarHasSubtitlePropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarHasSubtitlePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint HeaderBarHasSubtitlePropertyInfo = (~) Bool
    type AttrTransferType HeaderBarHasSubtitlePropertyInfo = Bool
    type AttrGetType HeaderBarHasSubtitlePropertyInfo = Bool
    type AttrLabel HeaderBarHasSubtitlePropertyInfo = "has-subtitle"
    type AttrOrigin HeaderBarHasSubtitlePropertyInfo = HeaderBar
    attrGet = getHeaderBarHasSubtitle
    attrSet = setHeaderBarHasSubtitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarHasSubtitle
    attrClear = undefined
#endif

-- VVV Prop "show-close-button"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #showCloseButton
-- @
getHeaderBarShowCloseButton :: (MonadIO m, IsHeaderBar o) => o -> m Bool
getHeaderBarShowCloseButton obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-close-button"

-- | Set the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #showCloseButton 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarShowCloseButton :: (MonadIO m, IsHeaderBar o) => o -> Bool -> m ()
setHeaderBarShowCloseButton obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-close-button" val

-- | Construct a `GValueConstruct` with valid value for the “@show-close-button@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarShowCloseButton :: (IsHeaderBar o) => Bool -> IO (GValueConstruct o)
constructHeaderBarShowCloseButton val = B.Properties.constructObjectPropertyBool "show-close-button" val

#if defined(ENABLE_OVERLOADING)
data HeaderBarShowCloseButtonPropertyInfo
instance AttrInfo HeaderBarShowCloseButtonPropertyInfo where
    type AttrAllowedOps HeaderBarShowCloseButtonPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HeaderBarShowCloseButtonPropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint HeaderBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferType HeaderBarShowCloseButtonPropertyInfo = Bool
    type AttrGetType HeaderBarShowCloseButtonPropertyInfo = Bool
    type AttrLabel HeaderBarShowCloseButtonPropertyInfo = "show-close-button"
    type AttrOrigin HeaderBarShowCloseButtonPropertyInfo = HeaderBar
    attrGet = getHeaderBarShowCloseButton
    attrSet = setHeaderBarShowCloseButton
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarShowCloseButton
    attrClear = undefined
#endif

-- VVV Prop "spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #spacing
-- @
getHeaderBarSpacing :: (MonadIO m, IsHeaderBar o) => o -> m Int32
getHeaderBarSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "spacing"

-- | Set the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #spacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarSpacing :: (MonadIO m, IsHeaderBar o) => o -> Int32 -> m ()
setHeaderBarSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarSpacing :: (IsHeaderBar o) => Int32 -> IO (GValueConstruct o)
constructHeaderBarSpacing val = B.Properties.constructObjectPropertyInt32 "spacing" val

#if defined(ENABLE_OVERLOADING)
data HeaderBarSpacingPropertyInfo
instance AttrInfo HeaderBarSpacingPropertyInfo where
    type AttrAllowedOps HeaderBarSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint HeaderBarSpacingPropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint HeaderBarSpacingPropertyInfo = (~) Int32
    type AttrTransferType HeaderBarSpacingPropertyInfo = Int32
    type AttrGetType HeaderBarSpacingPropertyInfo = Int32
    type AttrLabel HeaderBarSpacingPropertyInfo = "spacing"
    type AttrOrigin HeaderBarSpacingPropertyInfo = HeaderBar
    attrGet = getHeaderBarSpacing
    attrSet = setHeaderBarSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarSpacing
    attrClear = undefined
#endif

-- VVV Prop "subtitle"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@subtitle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #subtitle
-- @
getHeaderBarSubtitle :: (MonadIO m, IsHeaderBar o) => o -> m (Maybe T.Text)
getHeaderBarSubtitle obj = liftIO $ B.Properties.getObjectPropertyString obj "subtitle"

-- | Set the value of the “@subtitle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #subtitle 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarSubtitle :: (MonadIO m, IsHeaderBar o) => o -> T.Text -> m ()
setHeaderBarSubtitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "subtitle" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@subtitle@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarSubtitle :: (IsHeaderBar o) => T.Text -> IO (GValueConstruct o)
constructHeaderBarSubtitle val = B.Properties.constructObjectPropertyString "subtitle" (Just val)

-- | Set the value of the “@subtitle@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #subtitle
-- @
clearHeaderBarSubtitle :: (MonadIO m, IsHeaderBar o) => o -> m ()
clearHeaderBarSubtitle obj = liftIO $ B.Properties.setObjectPropertyString obj "subtitle" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data HeaderBarSubtitlePropertyInfo
instance AttrInfo HeaderBarSubtitlePropertyInfo where
    type AttrAllowedOps HeaderBarSubtitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HeaderBarSubtitlePropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarSubtitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HeaderBarSubtitlePropertyInfo = (~) T.Text
    type AttrTransferType HeaderBarSubtitlePropertyInfo = T.Text
    type AttrGetType HeaderBarSubtitlePropertyInfo = (Maybe T.Text)
    type AttrLabel HeaderBarSubtitlePropertyInfo = "subtitle"
    type AttrOrigin HeaderBarSubtitlePropertyInfo = HeaderBar
    attrGet = getHeaderBarSubtitle
    attrSet = setHeaderBarSubtitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarSubtitle
    attrClear = clearHeaderBarSubtitle
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' headerBar #title
-- @
getHeaderBarTitle :: (MonadIO m, IsHeaderBar o) => o -> m (Maybe T.Text)
getHeaderBarTitle obj = liftIO $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' headerBar [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setHeaderBarTitle :: (MonadIO m, IsHeaderBar o) => o -> T.Text -> m ()
setHeaderBarTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructHeaderBarTitle :: (IsHeaderBar o) => T.Text -> IO (GValueConstruct o)
constructHeaderBarTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

-- | Set the value of the “@title@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #title
-- @
clearHeaderBarTitle :: (MonadIO m, IsHeaderBar o) => o -> m ()
clearHeaderBarTitle obj = liftIO $ B.Properties.setObjectPropertyString obj "title" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data HeaderBarTitlePropertyInfo
instance AttrInfo HeaderBarTitlePropertyInfo where
    type AttrAllowedOps HeaderBarTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint HeaderBarTitlePropertyInfo = IsHeaderBar
    type AttrSetTypeConstraint HeaderBarTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint HeaderBarTitlePropertyInfo = (~) T.Text
    type AttrTransferType HeaderBarTitlePropertyInfo = T.Text
    type AttrGetType HeaderBarTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel HeaderBarTitlePropertyInfo = "title"
    type AttrOrigin HeaderBarTitlePropertyInfo = HeaderBar
    attrGet = getHeaderBarTitle
    attrSet = setHeaderBarTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructHeaderBarTitle
    attrClear = clearHeaderBarTitle
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList HeaderBar
type instance O.AttributeList HeaderBar = HeaderBarAttributeList
type HeaderBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("customTitle", HeaderBarCustomTitlePropertyInfo), '("decorationLayout", HeaderBarDecorationLayoutPropertyInfo), '("decorationLayoutSet", HeaderBarDecorationLayoutSetPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasSubtitle", HeaderBarHasSubtitlePropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showCloseButton", HeaderBarShowCloseButtonPropertyInfo), '("spacing", HeaderBarSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("subtitle", HeaderBarSubtitlePropertyInfo), '("title", HeaderBarTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
headerBarCustomTitle :: AttrLabelProxy "customTitle"
headerBarCustomTitle = AttrLabelProxy

headerBarDecorationLayout :: AttrLabelProxy "decorationLayout"
headerBarDecorationLayout = AttrLabelProxy

headerBarDecorationLayoutSet :: AttrLabelProxy "decorationLayoutSet"
headerBarDecorationLayoutSet = AttrLabelProxy

headerBarHasSubtitle :: AttrLabelProxy "hasSubtitle"
headerBarHasSubtitle = AttrLabelProxy

headerBarShowCloseButton :: AttrLabelProxy "showCloseButton"
headerBarShowCloseButton = AttrLabelProxy

headerBarSpacing :: AttrLabelProxy "spacing"
headerBarSpacing = AttrLabelProxy

headerBarSubtitle :: AttrLabelProxy "subtitle"
headerBarSubtitle = AttrLabelProxy

headerBarTitle :: AttrLabelProxy "title"
headerBarTitle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList HeaderBar = HeaderBarSignalList
type HeaderBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method HeaderBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "HeaderBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_header_bar_new" gtk_header_bar_new :: 
    IO (Ptr HeaderBar)

-- | Creates a new t'GI.Gtk.Objects.HeaderBar.HeaderBar' widget.
-- 
-- /Since: 3.10/
headerBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m HeaderBar
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.HeaderBar.HeaderBar'
headerBarNew  = liftIO $ do
    result <- gtk_header_bar_new
    checkUnexpectedReturnNULL "headerBarNew" result
    result' <- (newObject HeaderBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method HeaderBar::get_custom_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_custom_title" gtk_header_bar_get_custom_title :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the custom title widget of the header. See
-- 'GI.Gtk.Objects.HeaderBar.headerBarSetCustomTitle'.
-- 
-- /Since: 3.10/
headerBarGetCustomTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the custom title widget
    --    of the header, or 'P.Nothing' if none has been set explicitly.
headerBarGetCustomTitle bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_custom_title bar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr bar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetCustomTitleMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetCustomTitleMethodInfo a signature where
    overloadedMethod = headerBarGetCustomTitle

#endif

-- method HeaderBar::get_decoration_layout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_decoration_layout" gtk_header_bar_get_decoration_layout :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO CString

-- | Gets the decoration layout set with
-- 'GI.Gtk.Objects.HeaderBar.headerBarSetDecorationLayout'.
-- 
-- /Since: 3.12/
headerBarGetDecorationLayout ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m T.Text
    -- ^ __Returns:__ the decoration layout
headerBarGetDecorationLayout bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_decoration_layout bar'
    checkUnexpectedReturnNULL "headerBarGetDecorationLayout" result
    result' <- cstringToText result
    touchManagedPtr bar
    return result'

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetDecorationLayoutMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetDecorationLayoutMethodInfo a signature where
    overloadedMethod = headerBarGetDecorationLayout

#endif

-- method HeaderBar::get_has_subtitle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_has_subtitle" gtk_header_bar_get_has_subtitle :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO CInt

-- | Retrieves whether the header bar reserves space for
-- a subtitle, regardless if one is currently set or not.
-- 
-- /Since: 3.12/
headerBarGetHasSubtitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the header bar reserves space
    --     for a subtitle
headerBarGetHasSubtitle bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_has_subtitle bar'
    let result' = (/= 0) result
    touchManagedPtr bar
    return result'

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetHasSubtitleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetHasSubtitleMethodInfo a signature where
    overloadedMethod = headerBarGetHasSubtitle

#endif

-- method HeaderBar::get_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_show_close_button" gtk_header_bar_get_show_close_button :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO CInt

-- | Returns whether this header bar shows the standard window
-- decorations.
-- 
-- /Since: 3.10/
headerBarGetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decorations are shown
headerBarGetShowCloseButton bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_show_close_button bar'
    let result' = (/= 0) result
    touchManagedPtr bar
    return result'

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetShowCloseButtonMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetShowCloseButtonMethodInfo a signature where
    overloadedMethod = headerBarGetShowCloseButton

#endif

-- method HeaderBar::get_subtitle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_subtitle" gtk_header_bar_get_subtitle :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO CString

-- | Retrieves the subtitle of the header. See 'GI.Gtk.Objects.HeaderBar.headerBarSetSubtitle'.
-- 
-- /Since: 3.10/
headerBarGetSubtitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the subtitle of the header, or 'P.Nothing' if none has
    --    been set explicitly. The returned string is owned by the widget
    --    and must not be modified or freed.
headerBarGetSubtitle bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_subtitle bar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr bar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetSubtitleMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetSubtitleMethodInfo a signature where
    overloadedMethod = headerBarGetSubtitle

#endif

-- method HeaderBar::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_get_title" gtk_header_bar_get_title :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    IO CString

-- | Retrieves the title of the header. See 'GI.Gtk.Objects.HeaderBar.headerBarSetTitle'.
-- 
-- /Since: 3.10/
headerBarGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the title of the header, or 'P.Nothing' if none has
    --    been set explicitly. The returned string is owned by the widget
    --    and must not be modified or freed.
headerBarGetTitle bar = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    result <- gtk_header_bar_get_title bar'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr bar
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data HeaderBarGetTitleMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarGetTitleMethodInfo a signature where
    overloadedMethod = headerBarGetTitle

#endif

-- method HeaderBar::pack_end
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkWidget to be added to @bar"
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

foreign import ccall "gtk_header_bar_pack_end" gtk_header_bar_pack_end :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@child@/ to /@bar@/, packed with reference to the
-- end of the /@bar@/.
-- 
-- /Since: 3.10/
headerBarPackEnd ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@bar@/: A t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@bar@/
    -> m ()
headerBarPackEnd bar child = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    child' <- unsafeManagedPtrCastPtr child
    gtk_header_bar_pack_end bar' child'
    touchManagedPtr bar
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarPackEndMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) => O.MethodInfo HeaderBarPackEndMethodInfo a signature where
    overloadedMethod = headerBarPackEnd

#endif

-- method HeaderBar::pack_start
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkWidget to be added to @bar"
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

foreign import ccall "gtk_header_bar_pack_start" gtk_header_bar_pack_start :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@child@/ to /@bar@/, packed with reference to the
-- start of the /@bar@/.
-- 
-- /Since: 3.10/
headerBarPackStart ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@bar@/: A t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to be added to /@bar@/
    -> m ()
headerBarPackStart bar child = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    child' <- unsafeManagedPtrCastPtr child
    gtk_header_bar_pack_start bar' child'
    touchManagedPtr bar
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarPackStartMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) => O.MethodInfo HeaderBarPackStartMethodInfo a signature where
    overloadedMethod = headerBarPackStart

#endif

-- method HeaderBar::set_custom_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "title_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a custom widget to use for a title"
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

foreign import ccall "gtk_header_bar_set_custom_title" gtk_header_bar_set_custom_title :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    Ptr Gtk.Widget.Widget ->                -- title_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets a custom title for the t'GI.Gtk.Objects.HeaderBar.HeaderBar'.
-- 
-- The title should help a user identify the current view. This
-- supersedes any title set by 'GI.Gtk.Objects.HeaderBar.headerBarSetTitle' or
-- 'GI.Gtk.Objects.HeaderBar.headerBarSetSubtitle'. To achieve the same style as
-- the builtin title and subtitle, use the “title” and “subtitle”
-- style classes.
-- 
-- You should set the custom title to 'P.Nothing', for the header title
-- label to be visible again.
-- 
-- /Since: 3.10/
headerBarSetCustomTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Maybe (b)
    -- ^ /@titleWidget@/: a custom widget to use for a title
    -> m ()
headerBarSetCustomTitle bar titleWidget = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    maybeTitleWidget <- case titleWidget of
        Nothing -> return nullPtr
        Just jTitleWidget -> do
            jTitleWidget' <- unsafeManagedPtrCastPtr jTitleWidget
            return jTitleWidget'
    gtk_header_bar_set_custom_title bar' maybeTitleWidget
    touchManagedPtr bar
    whenJust titleWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetCustomTitleMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsHeaderBar a, Gtk.Widget.IsWidget b) => O.MethodInfo HeaderBarSetCustomTitleMethodInfo a signature where
    overloadedMethod = headerBarSetCustomTitle

#endif

-- method HeaderBar::set_decoration_layout
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "layout"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a decoration layout, or %NULL to\n    unset the layout"
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

foreign import ccall "gtk_header_bar_set_decoration_layout" gtk_header_bar_set_decoration_layout :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    CString ->                              -- layout : TBasicType TUTF8
    IO ()

-- | Sets the decoration layout for this header bar, overriding
-- the t'GI.Gtk.Objects.Settings.Settings':@/gtk-decoration-layout/@ setting.
-- 
-- There can be valid reasons for overriding the setting, such
-- as a header bar design that does not allow for buttons to take
-- room on the right, or only offers room for a single close button.
-- Split header bars are another example for overriding the
-- setting.
-- 
-- The format of the string is button names, separated by commas.
-- A colon separates the buttons that should appear on the left
-- from those on the right. Recognized button names are minimize,
-- maximize, close, icon (the window icon) and menu (a menu button
-- for the fallback app menu).
-- 
-- For example, “menu:minimize,maximize,close” specifies a menu
-- on the left, and minimize, maximize and close buttons on the right.
-- 
-- /Since: 3.12/
headerBarSetDecorationLayout ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Maybe (T.Text)
    -- ^ /@layout@/: a decoration layout, or 'P.Nothing' to
    --     unset the layout
    -> m ()
headerBarSetDecorationLayout bar layout = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    maybeLayout <- case layout of
        Nothing -> return nullPtr
        Just jLayout -> do
            jLayout' <- textToCString jLayout
            return jLayout'
    gtk_header_bar_set_decoration_layout bar' maybeLayout
    touchManagedPtr bar
    freeMem maybeLayout
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetDecorationLayoutMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarSetDecorationLayoutMethodInfo a signature where
    overloadedMethod = headerBarSetDecorationLayout

#endif

-- method HeaderBar::set_has_subtitle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to reserve space for a subtitle"
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

foreign import ccall "gtk_header_bar_set_has_subtitle" gtk_header_bar_set_has_subtitle :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Sets whether the header bar should reserve space
-- for a subtitle, even if none is currently set.
-- 
-- /Since: 3.12/
headerBarSetHasSubtitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Bool
    -- ^ /@setting@/: 'P.True' to reserve space for a subtitle
    -> m ()
headerBarSetHasSubtitle bar setting = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    let setting' = (fromIntegral . fromEnum) setting
    gtk_header_bar_set_has_subtitle bar' setting'
    touchManagedPtr bar
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetHasSubtitleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarSetHasSubtitleMethodInfo a signature where
    overloadedMethod = headerBarSetHasSubtitle

#endif

-- method HeaderBar::set_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "setting"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to show standard window decorations"
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

foreign import ccall "gtk_header_bar_set_show_close_button" gtk_header_bar_set_show_close_button :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Sets whether this header bar shows the standard window decorations,
-- including close, maximize, and minimize.
-- 
-- /Since: 3.10/
headerBarSetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Bool
    -- ^ /@setting@/: 'P.True' to show standard window decorations
    -> m ()
headerBarSetShowCloseButton bar setting = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    let setting' = (fromIntegral . fromEnum) setting
    gtk_header_bar_set_show_close_button bar' setting'
    touchManagedPtr bar
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetShowCloseButtonMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarSetShowCloseButtonMethodInfo a signature where
    overloadedMethod = headerBarSetShowCloseButton

#endif

-- method HeaderBar::set_subtitle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "subtitle"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a subtitle, or %NULL"
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

foreign import ccall "gtk_header_bar_set_subtitle" gtk_header_bar_set_subtitle :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    CString ->                              -- subtitle : TBasicType TUTF8
    IO ()

-- | Sets the subtitle of the t'GI.Gtk.Objects.HeaderBar.HeaderBar'. The title should give a user
-- an additional detail to help him identify the current view.
-- 
-- Note that GtkHeaderBar by default reserves room for the subtitle,
-- even if none is currently set. If this is not desired, set the
-- t'GI.Gtk.Objects.HeaderBar.HeaderBar':@/has-subtitle/@ property to 'P.False'.
-- 
-- /Since: 3.10/
headerBarSetSubtitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Maybe (T.Text)
    -- ^ /@subtitle@/: a subtitle, or 'P.Nothing'
    -> m ()
headerBarSetSubtitle bar subtitle = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    maybeSubtitle <- case subtitle of
        Nothing -> return nullPtr
        Just jSubtitle -> do
            jSubtitle' <- textToCString jSubtitle
            return jSubtitle'
    gtk_header_bar_set_subtitle bar' maybeSubtitle
    touchManagedPtr bar
    freeMem maybeSubtitle
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetSubtitleMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarSetSubtitleMethodInfo a signature where
    overloadedMethod = headerBarSetSubtitle

#endif

-- method HeaderBar::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "HeaderBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkHeaderBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "title"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a title, or %NULL" , sinceVersion = Nothing }
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

foreign import ccall "gtk_header_bar_set_title" gtk_header_bar_set_title :: 
    Ptr HeaderBar ->                        -- bar : TInterface (Name {namespace = "Gtk", name = "HeaderBar"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

-- | Sets the title of the t'GI.Gtk.Objects.HeaderBar.HeaderBar'. The title should help a user
-- identify the current view. A good title should not include the
-- application name.
-- 
-- /Since: 3.10/
headerBarSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsHeaderBar a) =>
    a
    -- ^ /@bar@/: a t'GI.Gtk.Objects.HeaderBar.HeaderBar'
    -> Maybe (T.Text)
    -- ^ /@title@/: a title, or 'P.Nothing'
    -> m ()
headerBarSetTitle bar title = liftIO $ do
    bar' <- unsafeManagedPtrCastPtr bar
    maybeTitle <- case title of
        Nothing -> return nullPtr
        Just jTitle -> do
            jTitle' <- textToCString jTitle
            return jTitle'
    gtk_header_bar_set_title bar' maybeTitle
    touchManagedPtr bar
    freeMem maybeTitle
    return ()

#if defined(ENABLE_OVERLOADING)
data HeaderBarSetTitleMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsHeaderBar a) => O.MethodInfo HeaderBarSetTitleMethodInfo a signature where
    overloadedMethod = headerBarSetTitle

#endif

