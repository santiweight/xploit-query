{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.FontButton.FontButton' is a button which displays the currently selected
-- font an allows to open a font chooser dialog to change the font.
-- It is suitable widget for selecting a font in a preference dialog.
-- 
-- = CSS nodes
-- 
-- GtkFontButton has a single CSS node with name button and style class .font.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.FontButton
    ( 

-- * Exported types
    FontButton(..)                          ,
    IsFontButton                            ,
    toFontButton                            ,
    noFontButton                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFontButtonMethod                 ,
#endif


-- ** getFontName #method:getFontName#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetFontNameMethodInfo         ,
#endif
    fontButtonGetFontName                   ,


-- ** getShowSize #method:getShowSize#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetShowSizeMethodInfo         ,
#endif
    fontButtonGetShowSize                   ,


-- ** getShowStyle #method:getShowStyle#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetShowStyleMethodInfo        ,
#endif
    fontButtonGetShowStyle                  ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetTitleMethodInfo            ,
#endif
    fontButtonGetTitle                      ,


-- ** getUseFont #method:getUseFont#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetUseFontMethodInfo          ,
#endif
    fontButtonGetUseFont                    ,


-- ** getUseSize #method:getUseSize#

#if defined(ENABLE_OVERLOADING)
    FontButtonGetUseSizeMethodInfo          ,
#endif
    fontButtonGetUseSize                    ,


-- ** new #method:new#

    fontButtonNew                           ,


-- ** newWithFont #method:newWithFont#

    fontButtonNewWithFont                   ,


-- ** setFontName #method:setFontName#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetFontNameMethodInfo         ,
#endif
    fontButtonSetFontName                   ,


-- ** setShowSize #method:setShowSize#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetShowSizeMethodInfo         ,
#endif
    fontButtonSetShowSize                   ,


-- ** setShowStyle #method:setShowStyle#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetShowStyleMethodInfo        ,
#endif
    fontButtonSetShowStyle                  ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetTitleMethodInfo            ,
#endif
    fontButtonSetTitle                      ,


-- ** setUseFont #method:setUseFont#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetUseFontMethodInfo          ,
#endif
    fontButtonSetUseFont                    ,


-- ** setUseSize #method:setUseSize#

#if defined(ENABLE_OVERLOADING)
    FontButtonSetUseSizeMethodInfo          ,
#endif
    fontButtonSetUseSize                    ,




 -- * Properties
-- ** fontName #attr:fontName#
-- | The name of the currently selected font.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonFontNamePropertyInfo          ,
#endif
    clearFontButtonFontName                 ,
    constructFontButtonFontName             ,
#if defined(ENABLE_OVERLOADING)
    fontButtonFontName                      ,
#endif
    getFontButtonFontName                   ,
    setFontButtonFontName                   ,


-- ** showSize #attr:showSize#
-- | If this property is set to 'P.True', the selected font size will be shown
-- in the label. For a more WYSIWYG way to show the selected size, see the
-- [useSize](#signal:useSize) property.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonShowSizePropertyInfo          ,
#endif
    constructFontButtonShowSize             ,
#if defined(ENABLE_OVERLOADING)
    fontButtonShowSize                      ,
#endif
    getFontButtonShowSize                   ,
    setFontButtonShowSize                   ,


-- ** showStyle #attr:showStyle#
-- | If this property is set to 'P.True', the name of the selected font style
-- will be shown in the label. For a more WYSIWYG way to show the selected
-- style, see the [useFont](#signal:useFont) property.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonShowStylePropertyInfo         ,
#endif
    constructFontButtonShowStyle            ,
#if defined(ENABLE_OVERLOADING)
    fontButtonShowStyle                     ,
#endif
    getFontButtonShowStyle                  ,
    setFontButtonShowStyle                  ,


-- ** title #attr:title#
-- | The title of the font chooser dialog.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonTitlePropertyInfo             ,
#endif
    constructFontButtonTitle                ,
#if defined(ENABLE_OVERLOADING)
    fontButtonTitle                         ,
#endif
    getFontButtonTitle                      ,
    setFontButtonTitle                      ,


-- ** useFont #attr:useFont#
-- | If this property is set to 'P.True', the label will be drawn
-- in the selected font.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonUseFontPropertyInfo           ,
#endif
    constructFontButtonUseFont              ,
#if defined(ENABLE_OVERLOADING)
    fontButtonUseFont                       ,
#endif
    getFontButtonUseFont                    ,
    setFontButtonUseFont                    ,


-- ** useSize #attr:useSize#
-- | If this property is set to 'P.True', the label will be drawn
-- with the selected font size.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    FontButtonUseSizePropertyInfo           ,
#endif
    constructFontButtonUseSize              ,
#if defined(ENABLE_OVERLOADING)
    fontButtonUseSize                       ,
#endif
    getFontButtonUseSize                    ,
    setFontButtonUseSize                    ,




 -- * Signals
-- ** fontSet #signal:fontSet#

    C_FontButtonFontSetCallback             ,
    FontButtonFontSetCallback               ,
#if defined(ENABLE_OVERLOADING)
    FontButtonFontSetSignalInfo             ,
#endif
    afterFontButtonFontSet                  ,
    genClosure_FontButtonFontSet            ,
    mk_FontButtonFontSetCallback            ,
    noFontButtonFontSetCallback             ,
    onFontButtonFontSet                     ,
    wrap_FontButtonFontSetCallback          ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.FontChooser as Gtk.FontChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype FontButton = FontButton (ManagedPtr FontButton)
    deriving (Eq)
foreign import ccall "gtk_font_button_get_type"
    c_gtk_font_button_get_type :: IO GType

instance GObject FontButton where
    gobjectType = c_gtk_font_button_get_type
    

-- | Convert 'FontButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FontButton where
    toGValue o = do
        gtype <- c_gtk_font_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FontButton)
        B.ManagedPtr.newObject FontButton ptr
        
    

-- | Type class for types which can be safely cast to `FontButton`, for instance with `toFontButton`.
class (GObject o, O.IsDescendantOf FontButton o) => IsFontButton o
instance (GObject o, O.IsDescendantOf FontButton o) => IsFontButton o

instance O.HasParentTypes FontButton
type instance O.ParentTypes FontButton = '[Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable, Gtk.FontChooser.FontChooser]

-- | Cast to `FontButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFontButton :: (MonadIO m, IsFontButton o) => o -> m FontButton
toFontButton = liftIO . unsafeCastTo FontButton

-- | A convenience alias for `Nothing` :: `Maybe` `FontButton`.
noFontButton :: Maybe FontButton
noFontButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFontButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveFontButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveFontButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveFontButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveFontButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveFontButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveFontButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveFontButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveFontButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveFontButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFontButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFontButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveFontButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveFontButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveFontButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveFontButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveFontButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveFontButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveFontButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveFontButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveFontButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveFontButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveFontButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveFontButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveFontButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveFontButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveFontButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveFontButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveFontButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveFontButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveFontButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveFontButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveFontButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveFontButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveFontButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveFontButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveFontButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveFontButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveFontButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveFontButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveFontButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveFontButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveFontButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveFontButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveFontButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveFontButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveFontButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveFontButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveFontButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveFontButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveFontButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveFontButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveFontButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveFontButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveFontButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveFontButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveFontButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveFontButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveFontButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveFontButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveFontButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveFontButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveFontButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveFontButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveFontButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveFontButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveFontButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFontButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveFontButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveFontButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFontButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFontButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveFontButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveFontButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveFontButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveFontButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveFontButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveFontButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveFontButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveFontButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveFontButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveFontButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveFontButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveFontButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveFontButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveFontButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveFontButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveFontButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveFontButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveFontButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveFontButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveFontButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFontButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveFontButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveFontButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveFontButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveFontButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveFontButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveFontButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveFontButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveFontButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveFontButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveFontButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveFontButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveFontButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveFontButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveFontButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveFontButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveFontButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveFontButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveFontButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFontButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFontButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveFontButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveFontButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveFontButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveFontButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveFontButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveFontButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveFontButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveFontButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveFontButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveFontButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveFontButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveFontButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveFontButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveFontButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveFontButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveFontButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveFontButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFontButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFontButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveFontButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveFontButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveFontButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveFontButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveFontButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveFontButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveFontButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveFontButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveFontButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveFontButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveFontButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveFontButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveFontButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFontButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveFontButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveFontButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveFontButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveFontButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveFontButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveFontButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveFontButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveFontButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveFontButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFontButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFontButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveFontButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveFontButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveFontButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveFontButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFontButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveFontButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveFontButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveFontButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveFontButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveFontButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFontButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveFontButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveFontButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveFontButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFontButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveFontButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveFontButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveFontButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveFontButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveFontButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveFontButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveFontButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveFontButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveFontButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveFontButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveFontButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveFontButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveFontButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveFontButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveFontButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveFontButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveFontButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveFontButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveFontButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveFontButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveFontButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveFontButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveFontButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFontButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveFontButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveFontButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveFontButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveFontButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveFontButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveFontButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveFontButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveFontButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveFontButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveFontButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveFontButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveFontButtonMethod "getFont" o = Gtk.FontChooser.FontChooserGetFontMethodInfo
    ResolveFontButtonMethod "getFontDesc" o = Gtk.FontChooser.FontChooserGetFontDescMethodInfo
    ResolveFontButtonMethod "getFontFace" o = Gtk.FontChooser.FontChooserGetFontFaceMethodInfo
    ResolveFontButtonMethod "getFontFamily" o = Gtk.FontChooser.FontChooserGetFontFamilyMethodInfo
    ResolveFontButtonMethod "getFontFeatures" o = Gtk.FontChooser.FontChooserGetFontFeaturesMethodInfo
    ResolveFontButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveFontButtonMethod "getFontName" o = FontButtonGetFontNameMethodInfo
    ResolveFontButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveFontButtonMethod "getFontSize" o = Gtk.FontChooser.FontChooserGetFontSizeMethodInfo
    ResolveFontButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveFontButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveFontButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveFontButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveFontButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveFontButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveFontButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveFontButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveFontButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveFontButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveFontButtonMethod "getLanguage" o = Gtk.FontChooser.FontChooserGetLanguageMethodInfo
    ResolveFontButtonMethod "getLevel" o = Gtk.FontChooser.FontChooserGetLevelMethodInfo
    ResolveFontButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveFontButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveFontButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveFontButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveFontButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveFontButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveFontButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveFontButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveFontButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveFontButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveFontButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveFontButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveFontButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveFontButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveFontButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveFontButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveFontButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveFontButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveFontButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveFontButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveFontButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveFontButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveFontButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveFontButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveFontButtonMethod "getPreviewText" o = Gtk.FontChooser.FontChooserGetPreviewTextMethodInfo
    ResolveFontButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFontButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFontButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveFontButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveFontButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveFontButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveFontButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveFontButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveFontButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveFontButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveFontButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveFontButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveFontButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveFontButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveFontButtonMethod "getShowPreviewEntry" o = Gtk.FontChooser.FontChooserGetShowPreviewEntryMethodInfo
    ResolveFontButtonMethod "getShowSize" o = FontButtonGetShowSizeMethodInfo
    ResolveFontButtonMethod "getShowStyle" o = FontButtonGetShowStyleMethodInfo
    ResolveFontButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveFontButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveFontButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveFontButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveFontButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveFontButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveFontButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveFontButtonMethod "getTitle" o = FontButtonGetTitleMethodInfo
    ResolveFontButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveFontButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveFontButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveFontButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveFontButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveFontButtonMethod "getUseFont" o = FontButtonGetUseFontMethodInfo
    ResolveFontButtonMethod "getUseSize" o = FontButtonGetUseSizeMethodInfo
    ResolveFontButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveFontButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveFontButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveFontButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveFontButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveFontButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveFontButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveFontButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveFontButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveFontButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveFontButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveFontButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveFontButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveFontButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveFontButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveFontButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveFontButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveFontButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveFontButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveFontButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveFontButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveFontButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveFontButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveFontButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFontButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFontButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveFontButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveFontButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveFontButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveFontButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveFontButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveFontButtonMethod "setFilterFunc" o = Gtk.FontChooser.FontChooserSetFilterFuncMethodInfo
    ResolveFontButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveFontButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveFontButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveFontButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveFontButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveFontButtonMethod "setFont" o = Gtk.FontChooser.FontChooserSetFontMethodInfo
    ResolveFontButtonMethod "setFontDesc" o = Gtk.FontChooser.FontChooserSetFontDescMethodInfo
    ResolveFontButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveFontButtonMethod "setFontName" o = FontButtonSetFontNameMethodInfo
    ResolveFontButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveFontButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveFontButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveFontButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveFontButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveFontButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveFontButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveFontButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveFontButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveFontButtonMethod "setLanguage" o = Gtk.FontChooser.FontChooserSetLanguageMethodInfo
    ResolveFontButtonMethod "setLevel" o = Gtk.FontChooser.FontChooserSetLevelMethodInfo
    ResolveFontButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveFontButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveFontButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveFontButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveFontButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveFontButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveFontButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveFontButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveFontButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveFontButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveFontButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveFontButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveFontButtonMethod "setPreviewText" o = Gtk.FontChooser.FontChooserSetPreviewTextMethodInfo
    ResolveFontButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFontButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveFontButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveFontButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveFontButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveFontButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveFontButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveFontButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveFontButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveFontButtonMethod "setShowPreviewEntry" o = Gtk.FontChooser.FontChooserSetShowPreviewEntryMethodInfo
    ResolveFontButtonMethod "setShowSize" o = FontButtonSetShowSizeMethodInfo
    ResolveFontButtonMethod "setShowStyle" o = FontButtonSetShowStyleMethodInfo
    ResolveFontButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveFontButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveFontButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveFontButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveFontButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveFontButtonMethod "setTitle" o = FontButtonSetTitleMethodInfo
    ResolveFontButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveFontButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveFontButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveFontButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveFontButtonMethod "setUseFont" o = FontButtonSetUseFontMethodInfo
    ResolveFontButtonMethod "setUseSize" o = FontButtonSetUseSizeMethodInfo
    ResolveFontButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveFontButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveFontButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveFontButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveFontButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveFontButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveFontButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveFontButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveFontButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFontButtonMethod t FontButton, O.MethodInfo info FontButton p) => OL.IsLabel t (FontButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal FontButton::font-set
-- | The [fontSet](#signal:fontSet) signal is emitted when the user selects a font.
-- When handling this signal, use 'GI.Gtk.Interfaces.FontChooser.fontChooserGetFont'
-- to find out which font was just selected.
-- 
-- Note that this signal is only emitted when the user
-- changes the font. If you need to react to programmatic font changes
-- as well, use the notify[font](#signal:font) signal.
-- 
-- /Since: 2.4/
type FontButtonFontSetCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `FontButtonFontSetCallback`@.
noFontButtonFontSetCallback :: Maybe FontButtonFontSetCallback
noFontButtonFontSetCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_FontButtonFontSetCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_FontButtonFontSetCallback`.
foreign import ccall "wrapper"
    mk_FontButtonFontSetCallback :: C_FontButtonFontSetCallback -> IO (FunPtr C_FontButtonFontSetCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_FontButtonFontSet :: MonadIO m => FontButtonFontSetCallback -> m (GClosure C_FontButtonFontSetCallback)
genClosure_FontButtonFontSet cb = liftIO $ do
    let cb' = wrap_FontButtonFontSetCallback cb
    mk_FontButtonFontSetCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `FontButtonFontSetCallback` into a `C_FontButtonFontSetCallback`.
wrap_FontButtonFontSetCallback ::
    FontButtonFontSetCallback ->
    C_FontButtonFontSetCallback
wrap_FontButtonFontSetCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [fontSet](#signal:fontSet) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' fontButton #fontSet callback
-- @
-- 
-- 
onFontButtonFontSet :: (IsFontButton a, MonadIO m) => a -> FontButtonFontSetCallback -> m SignalHandlerId
onFontButtonFontSet obj cb = liftIO $ do
    let cb' = wrap_FontButtonFontSetCallback cb
    cb'' <- mk_FontButtonFontSetCallback cb'
    connectSignalFunPtr obj "font-set" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [fontSet](#signal:fontSet) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' fontButton #fontSet callback
-- @
-- 
-- 
afterFontButtonFontSet :: (IsFontButton a, MonadIO m) => a -> FontButtonFontSetCallback -> m SignalHandlerId
afterFontButtonFontSet obj cb = liftIO $ do
    let cb' = wrap_FontButtonFontSetCallback cb
    cb'' <- mk_FontButtonFontSetCallback cb'
    connectSignalFunPtr obj "font-set" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data FontButtonFontSetSignalInfo
instance SignalInfo FontButtonFontSetSignalInfo where
    type HaskellCallbackType FontButtonFontSetSignalInfo = FontButtonFontSetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_FontButtonFontSetCallback cb
        cb'' <- mk_FontButtonFontSetCallback cb'
        connectSignalFunPtr obj "font-set" cb'' connectMode detail

#endif

-- VVV Prop "font-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@font-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #fontName
-- @
getFontButtonFontName :: (MonadIO m, IsFontButton o) => o -> m T.Text
getFontButtonFontName obj = liftIO $ checkUnexpectedNothing "getFontButtonFontName" $ B.Properties.getObjectPropertyString obj "font-name"

-- | Set the value of the “@font-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #fontName 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonFontName :: (MonadIO m, IsFontButton o) => o -> T.Text -> m ()
setFontButtonFontName obj val = liftIO $ B.Properties.setObjectPropertyString obj "font-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@font-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonFontName :: (IsFontButton o) => T.Text -> IO (GValueConstruct o)
constructFontButtonFontName val = B.Properties.constructObjectPropertyString "font-name" (Just val)

-- | Set the value of the “@font-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #fontName
-- @
clearFontButtonFontName :: (MonadIO m, IsFontButton o) => o -> m ()
clearFontButtonFontName obj = liftIO $ B.Properties.setObjectPropertyString obj "font-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data FontButtonFontNamePropertyInfo
instance AttrInfo FontButtonFontNamePropertyInfo where
    type AttrAllowedOps FontButtonFontNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint FontButtonFontNamePropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonFontNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontButtonFontNamePropertyInfo = (~) T.Text
    type AttrTransferType FontButtonFontNamePropertyInfo = T.Text
    type AttrGetType FontButtonFontNamePropertyInfo = T.Text
    type AttrLabel FontButtonFontNamePropertyInfo = "font-name"
    type AttrOrigin FontButtonFontNamePropertyInfo = FontButton
    attrGet = getFontButtonFontName
    attrSet = setFontButtonFontName
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonFontName
    attrClear = clearFontButtonFontName
#endif

-- VVV Prop "show-size"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #showSize
-- @
getFontButtonShowSize :: (MonadIO m, IsFontButton o) => o -> m Bool
getFontButtonShowSize obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-size"

-- | Set the value of the “@show-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #showSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonShowSize :: (MonadIO m, IsFontButton o) => o -> Bool -> m ()
setFontButtonShowSize obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-size" val

-- | Construct a `GValueConstruct` with valid value for the “@show-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonShowSize :: (IsFontButton o) => Bool -> IO (GValueConstruct o)
constructFontButtonShowSize val = B.Properties.constructObjectPropertyBool "show-size" val

#if defined(ENABLE_OVERLOADING)
data FontButtonShowSizePropertyInfo
instance AttrInfo FontButtonShowSizePropertyInfo where
    type AttrAllowedOps FontButtonShowSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontButtonShowSizePropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonShowSizePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FontButtonShowSizePropertyInfo = (~) Bool
    type AttrTransferType FontButtonShowSizePropertyInfo = Bool
    type AttrGetType FontButtonShowSizePropertyInfo = Bool
    type AttrLabel FontButtonShowSizePropertyInfo = "show-size"
    type AttrOrigin FontButtonShowSizePropertyInfo = FontButton
    attrGet = getFontButtonShowSize
    attrSet = setFontButtonShowSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonShowSize
    attrClear = undefined
#endif

-- VVV Prop "show-style"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #showStyle
-- @
getFontButtonShowStyle :: (MonadIO m, IsFontButton o) => o -> m Bool
getFontButtonShowStyle obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-style"

-- | Set the value of the “@show-style@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #showStyle 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonShowStyle :: (MonadIO m, IsFontButton o) => o -> Bool -> m ()
setFontButtonShowStyle obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-style" val

-- | Construct a `GValueConstruct` with valid value for the “@show-style@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonShowStyle :: (IsFontButton o) => Bool -> IO (GValueConstruct o)
constructFontButtonShowStyle val = B.Properties.constructObjectPropertyBool "show-style" val

#if defined(ENABLE_OVERLOADING)
data FontButtonShowStylePropertyInfo
instance AttrInfo FontButtonShowStylePropertyInfo where
    type AttrAllowedOps FontButtonShowStylePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontButtonShowStylePropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonShowStylePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FontButtonShowStylePropertyInfo = (~) Bool
    type AttrTransferType FontButtonShowStylePropertyInfo = Bool
    type AttrGetType FontButtonShowStylePropertyInfo = Bool
    type AttrLabel FontButtonShowStylePropertyInfo = "show-style"
    type AttrOrigin FontButtonShowStylePropertyInfo = FontButton
    attrGet = getFontButtonShowStyle
    attrSet = setFontButtonShowStyle
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonShowStyle
    attrClear = undefined
#endif

-- VVV Prop "title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #title
-- @
getFontButtonTitle :: (MonadIO m, IsFontButton o) => o -> m T.Text
getFontButtonTitle obj = liftIO $ checkUnexpectedNothing "getFontButtonTitle" $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonTitle :: (MonadIO m, IsFontButton o) => o -> T.Text -> m ()
setFontButtonTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonTitle :: (IsFontButton o) => T.Text -> IO (GValueConstruct o)
constructFontButtonTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

#if defined(ENABLE_OVERLOADING)
data FontButtonTitlePropertyInfo
instance AttrInfo FontButtonTitlePropertyInfo where
    type AttrAllowedOps FontButtonTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontButtonTitlePropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint FontButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferType FontButtonTitlePropertyInfo = T.Text
    type AttrGetType FontButtonTitlePropertyInfo = T.Text
    type AttrLabel FontButtonTitlePropertyInfo = "title"
    type AttrOrigin FontButtonTitlePropertyInfo = FontButton
    attrGet = getFontButtonTitle
    attrSet = setFontButtonTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonTitle
    attrClear = undefined
#endif

-- VVV Prop "use-font"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-font@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #useFont
-- @
getFontButtonUseFont :: (MonadIO m, IsFontButton o) => o -> m Bool
getFontButtonUseFont obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-font"

-- | Set the value of the “@use-font@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #useFont 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonUseFont :: (MonadIO m, IsFontButton o) => o -> Bool -> m ()
setFontButtonUseFont obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-font" val

-- | Construct a `GValueConstruct` with valid value for the “@use-font@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonUseFont :: (IsFontButton o) => Bool -> IO (GValueConstruct o)
constructFontButtonUseFont val = B.Properties.constructObjectPropertyBool "use-font" val

#if defined(ENABLE_OVERLOADING)
data FontButtonUseFontPropertyInfo
instance AttrInfo FontButtonUseFontPropertyInfo where
    type AttrAllowedOps FontButtonUseFontPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontButtonUseFontPropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonUseFontPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FontButtonUseFontPropertyInfo = (~) Bool
    type AttrTransferType FontButtonUseFontPropertyInfo = Bool
    type AttrGetType FontButtonUseFontPropertyInfo = Bool
    type AttrLabel FontButtonUseFontPropertyInfo = "use-font"
    type AttrOrigin FontButtonUseFontPropertyInfo = FontButton
    attrGet = getFontButtonUseFont
    attrSet = setFontButtonUseFont
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonUseFont
    attrClear = undefined
#endif

-- VVV Prop "use-size"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' fontButton #useSize
-- @
getFontButtonUseSize :: (MonadIO m, IsFontButton o) => o -> m Bool
getFontButtonUseSize obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-size"

-- | Set the value of the “@use-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' fontButton [ #useSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setFontButtonUseSize :: (MonadIO m, IsFontButton o) => o -> Bool -> m ()
setFontButtonUseSize obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-size" val

-- | Construct a `GValueConstruct` with valid value for the “@use-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFontButtonUseSize :: (IsFontButton o) => Bool -> IO (GValueConstruct o)
constructFontButtonUseSize val = B.Properties.constructObjectPropertyBool "use-size" val

#if defined(ENABLE_OVERLOADING)
data FontButtonUseSizePropertyInfo
instance AttrInfo FontButtonUseSizePropertyInfo where
    type AttrAllowedOps FontButtonUseSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint FontButtonUseSizePropertyInfo = IsFontButton
    type AttrSetTypeConstraint FontButtonUseSizePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint FontButtonUseSizePropertyInfo = (~) Bool
    type AttrTransferType FontButtonUseSizePropertyInfo = Bool
    type AttrGetType FontButtonUseSizePropertyInfo = Bool
    type AttrLabel FontButtonUseSizePropertyInfo = "use-size"
    type AttrOrigin FontButtonUseSizePropertyInfo = FontButton
    attrGet = getFontButtonUseSize
    attrSet = setFontButtonUseSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructFontButtonUseSize
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FontButton
type instance O.AttributeList FontButton = FontButtonAttributeList
type FontButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("font", Gtk.FontChooser.FontChooserFontPropertyInfo), '("fontDesc", Gtk.FontChooser.FontChooserFontDescPropertyInfo), '("fontFeatures", Gtk.FontChooser.FontChooserFontFeaturesPropertyInfo), '("fontName", FontButtonFontNamePropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("language", Gtk.FontChooser.FontChooserLanguagePropertyInfo), '("level", Gtk.FontChooser.FontChooserLevelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("previewText", Gtk.FontChooser.FontChooserPreviewTextPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showPreviewEntry", Gtk.FontChooser.FontChooserShowPreviewEntryPropertyInfo), '("showSize", FontButtonShowSizePropertyInfo), '("showStyle", FontButtonShowStylePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", FontButtonTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useFont", FontButtonUseFontPropertyInfo), '("useSize", FontButtonUseSizePropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fontButtonFontName :: AttrLabelProxy "fontName"
fontButtonFontName = AttrLabelProxy

fontButtonShowSize :: AttrLabelProxy "showSize"
fontButtonShowSize = AttrLabelProxy

fontButtonShowStyle :: AttrLabelProxy "showStyle"
fontButtonShowStyle = AttrLabelProxy

fontButtonTitle :: AttrLabelProxy "title"
fontButtonTitle = AttrLabelProxy

fontButtonUseFont :: AttrLabelProxy "useFont"
fontButtonUseFont = AttrLabelProxy

fontButtonUseSize :: AttrLabelProxy "useSize"
fontButtonUseSize = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FontButton = FontButtonSignalList
type FontButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("fontActivated", Gtk.FontChooser.FontChooserFontActivatedSignalInfo), '("fontSet", FontButtonFontSetSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method FontButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "FontButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_button_new" gtk_font_button_new :: 
    IO (Ptr FontButton)

-- | Creates a new font picker widget.
-- 
-- /Since: 2.4/
fontButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FontButton
    -- ^ __Returns:__ a new font picker widget.
fontButtonNew  = liftIO $ do
    result <- gtk_font_button_new
    checkUnexpectedReturnNULL "fontButtonNew" result
    result' <- (newObject FontButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FontButton::new_with_font
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "fontname"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Name of font to display in font chooser dialog"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "FontButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_font_button_new_with_font" gtk_font_button_new_with_font :: 
    CString ->                              -- fontname : TBasicType TUTF8
    IO (Ptr FontButton)

-- | Creates a new font picker widget.
-- 
-- /Since: 2.4/
fontButtonNewWithFont ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@fontname@/: Name of font to display in font chooser dialog
    -> m FontButton
    -- ^ __Returns:__ a new font picker widget.
fontButtonNewWithFont fontname = liftIO $ do
    fontname' <- textToCString fontname
    result <- gtk_font_button_new_with_font fontname'
    checkUnexpectedReturnNULL "fontButtonNewWithFont" result
    result' <- (newObject FontButton) result
    freeMem fontname'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FontButton::get_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_font_name" gtk_font_button_get_font_name :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CString

{-# DEPRECATED fontButtonGetFontName ["(Since version 3.22)","Use 'GI.Gtk.Interfaces.FontChooser.fontChooserGetFont' instead"] #-}
-- | Retrieves the name of the currently selected font. This name includes
-- style and size information as well. If you want to render something
-- with the font, use this string with 'GI.Pango.Functions.fontDescriptionFromString' .
-- If you’re interested in peeking certain values (family name,
-- style, size, weight) just query these properties from the
-- t'GI.Pango.Structs.FontDescription.FontDescription' object.
-- 
-- /Since: 2.4/
fontButtonGetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m T.Text
    -- ^ __Returns:__ an internal copy of the font name which must not be freed.
fontButtonGetFontName fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_font_name fontButton'
    checkUnexpectedReturnNULL "fontButtonGetFontName" result
    result' <- cstringToText result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetFontNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetFontNameMethodInfo a signature where
    overloadedMethod = fontButtonGetFontName

#endif

-- method FontButton::get_show_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_show_size" gtk_font_button_get_show_size :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CInt

-- | Returns whether the font size will be shown in the label.
-- 
-- /Since: 2.4/
fontButtonGetShowSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m Bool
    -- ^ __Returns:__ whether the font size will be shown in the label.
fontButtonGetShowSize fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_show_size fontButton'
    let result' = (/= 0) result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetShowSizeMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetShowSizeMethodInfo a signature where
    overloadedMethod = fontButtonGetShowSize

#endif

-- method FontButton::get_show_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_show_style" gtk_font_button_get_show_style :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CInt

-- | Returns whether the name of the font style will be shown in the label.
-- 
-- /Since: 2.4/
fontButtonGetShowStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m Bool
    -- ^ __Returns:__ whether the font style will be shown in the label.
fontButtonGetShowStyle fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_show_style fontButton'
    let result' = (/= 0) result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetShowStyleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetShowStyleMethodInfo a signature where
    overloadedMethod = fontButtonGetShowStyle

#endif

-- method FontButton::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_title" gtk_font_button_get_title :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CString

-- | Retrieves the title of the font chooser dialog.
-- 
-- /Since: 2.4/
fontButtonGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m T.Text
    -- ^ __Returns:__ an internal copy of the title string which must not be freed.
fontButtonGetTitle fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_title fontButton'
    checkUnexpectedReturnNULL "fontButtonGetTitle" result
    result' <- cstringToText result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetTitleMethodInfo a signature where
    overloadedMethod = fontButtonGetTitle

#endif

-- method FontButton::get_use_font
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_use_font" gtk_font_button_get_use_font :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CInt

-- | Returns whether the selected font is used in the label.
-- 
-- /Since: 2.4/
fontButtonGetUseFont ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m Bool
    -- ^ __Returns:__ whether the selected font is used in the label.
fontButtonGetUseFont fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_use_font fontButton'
    let result' = (/= 0) result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetUseFontMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetUseFontMethodInfo a signature where
    overloadedMethod = fontButtonGetUseFont

#endif

-- method FontButton::get_use_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_font_button_get_use_size" gtk_font_button_get_use_size :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    IO CInt

-- | Returns whether the selected size is used in the label.
-- 
-- /Since: 2.4/
fontButtonGetUseSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> m Bool
    -- ^ __Returns:__ whether the selected size is used in the label.
fontButtonGetUseSize fontButton = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    result <- gtk_font_button_get_use_size fontButton'
    let result' = (/= 0) result
    touchManagedPtr fontButton
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonGetUseSizeMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonGetUseSizeMethodInfo a signature where
    overloadedMethod = fontButtonGetUseSize

#endif

-- method FontButton::set_font_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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
--                     Just "Name of font to display in font chooser dialog"
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

foreign import ccall "gtk_font_button_set_font_name" gtk_font_button_set_font_name :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CString ->                              -- fontname : TBasicType TUTF8
    IO CInt

{-# DEPRECATED fontButtonSetFontName ["(Since version 3.22)","Use 'GI.Gtk.Interfaces.FontChooser.fontChooserSetFont' instead"] #-}
-- | Sets or updates the currently-displayed font in font picker dialog.
-- 
-- /Since: 2.4/
fontButtonSetFontName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> T.Text
    -- ^ /@fontname@/: Name of font to display in font chooser dialog
    -> m Bool
    -- ^ __Returns:__ 'P.True'
fontButtonSetFontName fontButton fontname = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    fontname' <- textToCString fontname
    result <- gtk_font_button_set_font_name fontButton' fontname'
    let result' = (/= 0) result
    touchManagedPtr fontButton
    freeMem fontname'
    return result'

#if defined(ENABLE_OVERLOADING)
data FontButtonSetFontNameMethodInfo
instance (signature ~ (T.Text -> m Bool), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetFontNameMethodInfo a signature where
    overloadedMethod = fontButtonSetFontName

#endif

-- method FontButton::set_show_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_size"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if font size should be displayed in dialog."
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

foreign import ccall "gtk_font_button_set_show_size" gtk_font_button_set_show_size :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CInt ->                                 -- show_size : TBasicType TBoolean
    IO ()

-- | If /@showSize@/ is 'P.True', the font size will be displayed along with the name of the selected font.
-- 
-- /Since: 2.4/
fontButtonSetShowSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> Bool
    -- ^ /@showSize@/: 'P.True' if font size should be displayed in dialog.
    -> m ()
fontButtonSetShowSize fontButton showSize = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    let showSize' = (fromIntegral . fromEnum) showSize
    gtk_font_button_set_show_size fontButton' showSize'
    touchManagedPtr fontButton
    return ()

#if defined(ENABLE_OVERLOADING)
data FontButtonSetShowSizeMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetShowSizeMethodInfo a signature where
    overloadedMethod = fontButtonSetShowSize

#endif

-- method FontButton::set_show_style
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_style"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if font style should be displayed in label."
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

foreign import ccall "gtk_font_button_set_show_style" gtk_font_button_set_show_style :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CInt ->                                 -- show_style : TBasicType TBoolean
    IO ()

-- | If /@showStyle@/ is 'P.True', the font style will be displayed along with name of the selected font.
-- 
-- /Since: 2.4/
fontButtonSetShowStyle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> Bool
    -- ^ /@showStyle@/: 'P.True' if font style should be displayed in label.
    -> m ()
fontButtonSetShowStyle fontButton showStyle = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    let showStyle' = (fromIntegral . fromEnum) showStyle
    gtk_font_button_set_show_style fontButton' showStyle'
    touchManagedPtr fontButton
    return ()

#if defined(ENABLE_OVERLOADING)
data FontButtonSetShowStyleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetShowStyleMethodInfo a signature where
    overloadedMethod = fontButtonSetShowStyle

#endif

-- method FontButton::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
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
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a string containing the font chooser dialog title"
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

foreign import ccall "gtk_font_button_set_title" gtk_font_button_set_title :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

-- | Sets the title for the font chooser dialog.
-- 
-- /Since: 2.4/
fontButtonSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> T.Text
    -- ^ /@title@/: a string containing the font chooser dialog title
    -> m ()
fontButtonSetTitle fontButton title = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    title' <- textToCString title
    gtk_font_button_set_title fontButton' title'
    touchManagedPtr fontButton
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data FontButtonSetTitleMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetTitleMethodInfo a signature where
    overloadedMethod = fontButtonSetTitle

#endif

-- method FontButton::set_use_font
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_font"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "If %TRUE, font name will be written using font chosen."
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

foreign import ccall "gtk_font_button_set_use_font" gtk_font_button_set_use_font :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CInt ->                                 -- use_font : TBasicType TBoolean
    IO ()

-- | If /@useFont@/ is 'P.True', the font name will be written using the selected font.
-- 
-- /Since: 2.4/
fontButtonSetUseFont ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> Bool
    -- ^ /@useFont@/: If 'P.True', font name will be written using font chosen.
    -> m ()
fontButtonSetUseFont fontButton useFont = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    let useFont' = (fromIntegral . fromEnum) useFont
    gtk_font_button_set_use_font fontButton' useFont'
    touchManagedPtr fontButton
    return ()

#if defined(ENABLE_OVERLOADING)
data FontButtonSetUseFontMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetUseFontMethodInfo a signature where
    overloadedMethod = fontButtonSetUseFont

#endif

-- method FontButton::set_use_size
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "font_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "FontButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkFontButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_size"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "If %TRUE, font name will be written using the selected size."
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

foreign import ccall "gtk_font_button_set_use_size" gtk_font_button_set_use_size :: 
    Ptr FontButton ->                       -- font_button : TInterface (Name {namespace = "Gtk", name = "FontButton"})
    CInt ->                                 -- use_size : TBasicType TBoolean
    IO ()

-- | If /@useSize@/ is 'P.True', the font name will be written using the selected size.
-- 
-- /Since: 2.4/
fontButtonSetUseSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsFontButton a) =>
    a
    -- ^ /@fontButton@/: a t'GI.Gtk.Objects.FontButton.FontButton'
    -> Bool
    -- ^ /@useSize@/: If 'P.True', font name will be written using the selected size.
    -> m ()
fontButtonSetUseSize fontButton useSize = liftIO $ do
    fontButton' <- unsafeManagedPtrCastPtr fontButton
    let useSize' = (fromIntegral . fromEnum) useSize
    gtk_font_button_set_use_size fontButton' useSize'
    touchManagedPtr fontButton
    return ()

#if defined(ENABLE_OVERLOADING)
data FontButtonSetUseSizeMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsFontButton a) => O.MethodInfo FontButtonSetUseSizeMethodInfo a signature where
    overloadedMethod = fontButtonSetUseSize

#endif

