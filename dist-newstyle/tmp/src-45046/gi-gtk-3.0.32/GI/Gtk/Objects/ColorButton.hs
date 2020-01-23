{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.ColorButton.ColorButton' is a button which displays the currently selected
-- color and allows to open a color selection dialog to change the color.
-- It is suitable widget for selecting a color in a preference dialog.
-- 
-- = CSS nodes
-- 
-- GtkColorButton has a single CSS node with name button. To differentiate
-- it from a plain t'GI.Gtk.Objects.Button.Button', it gets the .color style class.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ColorButton
    ( 

-- * Exported types
    ColorButton(..)                         ,
    IsColorButton                           ,
    toColorButton                           ,
    noColorButton                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColorButtonMethod                ,
#endif


-- ** getAlpha #method:getAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorButtonGetAlphaMethodInfo           ,
#endif
    colorButtonGetAlpha                     ,


-- ** getColor #method:getColor#

#if defined(ENABLE_OVERLOADING)
    ColorButtonGetColorMethodInfo           ,
#endif
    colorButtonGetColor                     ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    ColorButtonGetTitleMethodInfo           ,
#endif
    colorButtonGetTitle                     ,


-- ** getUseAlpha #method:getUseAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorButtonGetUseAlphaMethodInfo        ,
#endif
    colorButtonGetUseAlpha                  ,


-- ** new #method:new#

    colorButtonNew                          ,


-- ** newWithColor #method:newWithColor#

    colorButtonNewWithColor                 ,


-- ** newWithRgba #method:newWithRgba#

    colorButtonNewWithRgba                  ,


-- ** setAlpha #method:setAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorButtonSetAlphaMethodInfo           ,
#endif
    colorButtonSetAlpha                     ,


-- ** setColor #method:setColor#

#if defined(ENABLE_OVERLOADING)
    ColorButtonSetColorMethodInfo           ,
#endif
    colorButtonSetColor                     ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    ColorButtonSetTitleMethodInfo           ,
#endif
    colorButtonSetTitle                     ,


-- ** setUseAlpha #method:setUseAlpha#

#if defined(ENABLE_OVERLOADING)
    ColorButtonSetUseAlphaMethodInfo        ,
#endif
    colorButtonSetUseAlpha                  ,




 -- * Properties
-- ** alpha #attr:alpha#
-- | The selected opacity value (0 fully transparent, 65535 fully opaque).
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ColorButtonAlphaPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorButtonAlpha                        ,
#endif
    constructColorButtonAlpha               ,
    getColorButtonAlpha                     ,
    setColorButtonAlpha                     ,


-- ** color #attr:color#
-- | The selected color.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ColorButtonColorPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorButtonColor                        ,
#endif
    constructColorButtonColor               ,
    getColorButtonColor                     ,
    setColorButtonColor                     ,


-- ** rgba #attr:rgba#
-- | The RGBA color.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ColorButtonRgbaPropertyInfo             ,
#endif
    clearColorButtonRgba                    ,
#if defined(ENABLE_OVERLOADING)
    colorButtonRgba                         ,
#endif
    constructColorButtonRgba                ,
    getColorButtonRgba                      ,
    setColorButtonRgba                      ,


-- ** showEditor #attr:showEditor#
-- | Set this property to 'P.True' to skip the palette
-- in the dialog and go directly to the color editor.
-- 
-- This property should be used in cases where the palette
-- in the editor would be redundant, such as when the color
-- button is already part of a palette.
-- 
-- /Since: 3.20/

#if defined(ENABLE_OVERLOADING)
    ColorButtonShowEditorPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorButtonShowEditor                   ,
#endif
    constructColorButtonShowEditor          ,
    getColorButtonShowEditor                ,
    setColorButtonShowEditor                ,


-- ** title #attr:title#
-- | The title of the color selection dialog
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ColorButtonTitlePropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorButtonTitle                        ,
#endif
    constructColorButtonTitle               ,
    getColorButtonTitle                     ,
    setColorButtonTitle                     ,


-- ** useAlpha #attr:useAlpha#
-- | If this property is set to 'P.True', the color swatch on the button is
-- rendered against a checkerboard background to show its opacity and
-- the opacity slider is displayed in the color selection dialog.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ColorButtonUseAlphaPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    colorButtonUseAlpha                     ,
#endif
    constructColorButtonUseAlpha            ,
    getColorButtonUseAlpha                  ,
    setColorButtonUseAlpha                  ,




 -- * Signals
-- ** colorSet #signal:colorSet#

    C_ColorButtonColorSetCallback           ,
    ColorButtonColorSetCallback             ,
#if defined(ENABLE_OVERLOADING)
    ColorButtonColorSetSignalInfo           ,
#endif
    afterColorButtonColorSet                ,
    genClosure_ColorButtonColorSet          ,
    mk_ColorButtonColorSetCallback          ,
    noColorButtonColorSetCallback           ,
    onColorButtonColorSet                   ,
    wrap_ColorButtonColorSetCallback        ,




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
import qualified GI.Gdk.Structs.Color as Gdk.Color
import qualified GI.Gdk.Structs.RGBA as Gdk.RGBA
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.ColorChooser as Gtk.ColorChooser
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ColorButton = ColorButton (ManagedPtr ColorButton)
    deriving (Eq)
foreign import ccall "gtk_color_button_get_type"
    c_gtk_color_button_get_type :: IO GType

instance GObject ColorButton where
    gobjectType = c_gtk_color_button_get_type
    

-- | Convert 'ColorButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ColorButton where
    toGValue o = do
        gtype <- c_gtk_color_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ColorButton)
        B.ManagedPtr.newObject ColorButton ptr
        
    

-- | Type class for types which can be safely cast to `ColorButton`, for instance with `toColorButton`.
class (GObject o, O.IsDescendantOf ColorButton o) => IsColorButton o
instance (GObject o, O.IsDescendantOf ColorButton o) => IsColorButton o

instance O.HasParentTypes ColorButton
type instance O.ParentTypes ColorButton = '[Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable, Gtk.ColorChooser.ColorChooser]

-- | Cast to `ColorButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColorButton :: (MonadIO m, IsColorButton o) => o -> m ColorButton
toColorButton = liftIO . unsafeCastTo ColorButton

-- | A convenience alias for `Nothing` :: `Maybe` `ColorButton`.
noColorButton :: Maybe ColorButton
noColorButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveColorButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveColorButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveColorButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveColorButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveColorButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveColorButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveColorButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveColorButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveColorButtonMethod "addPalette" o = Gtk.ColorChooser.ColorChooserAddPaletteMethodInfo
    ResolveColorButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveColorButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColorButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColorButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveColorButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveColorButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveColorButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveColorButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveColorButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveColorButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveColorButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveColorButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveColorButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveColorButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveColorButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveColorButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveColorButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveColorButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveColorButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveColorButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveColorButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveColorButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveColorButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveColorButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveColorButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveColorButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveColorButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveColorButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveColorButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveColorButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveColorButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveColorButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveColorButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveColorButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveColorButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveColorButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveColorButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveColorButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveColorButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveColorButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveColorButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveColorButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveColorButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveColorButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveColorButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveColorButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveColorButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveColorButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveColorButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveColorButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveColorButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveColorButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveColorButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveColorButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveColorButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveColorButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveColorButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveColorButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveColorButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColorButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveColorButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveColorButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColorButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColorButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveColorButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveColorButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveColorButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveColorButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveColorButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveColorButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveColorButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveColorButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveColorButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveColorButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveColorButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveColorButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveColorButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveColorButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveColorButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveColorButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveColorButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveColorButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveColorButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveColorButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColorButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveColorButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveColorButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveColorButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveColorButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveColorButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveColorButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveColorButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveColorButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveColorButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveColorButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveColorButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveColorButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveColorButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveColorButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveColorButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveColorButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveColorButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveColorButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColorButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColorButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveColorButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveColorButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveColorButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveColorButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveColorButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveColorButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveColorButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveColorButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveColorButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveColorButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveColorButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveColorButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveColorButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveColorButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveColorButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveColorButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveColorButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColorButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColorButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveColorButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveColorButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveColorButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveColorButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveColorButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveColorButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveColorButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveColorButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveColorButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveColorButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveColorButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveColorButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveColorButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColorButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveColorButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveColorButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveColorButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveColorButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveColorButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveColorButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveColorButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveColorButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveColorButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColorButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColorButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveColorButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveColorButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveColorButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveColorButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColorButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveColorButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveColorButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveColorButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveColorButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveColorButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColorButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveColorButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveColorButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveColorButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColorButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveColorButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveColorButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveColorButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveColorButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveColorButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveColorButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveColorButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveColorButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveColorButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveColorButtonMethod "getAlpha" o = ColorButtonGetAlphaMethodInfo
    ResolveColorButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveColorButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveColorButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveColorButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveColorButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveColorButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveColorButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveColorButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveColorButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveColorButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveColorButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveColorButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveColorButtonMethod "getColor" o = ColorButtonGetColorMethodInfo
    ResolveColorButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveColorButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveColorButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveColorButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveColorButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveColorButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveColorButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveColorButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveColorButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveColorButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveColorButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveColorButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveColorButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveColorButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveColorButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveColorButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveColorButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveColorButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveColorButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveColorButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveColorButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveColorButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveColorButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveColorButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveColorButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveColorButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveColorButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveColorButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveColorButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveColorButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveColorButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveColorButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveColorButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveColorButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveColorButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveColorButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveColorButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveColorButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveColorButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveColorButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveColorButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveColorButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveColorButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveColorButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveColorButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveColorButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveColorButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveColorButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveColorButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveColorButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveColorButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColorButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColorButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveColorButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveColorButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveColorButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveColorButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveColorButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveColorButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveColorButtonMethod "getRgba" o = Gtk.ColorChooser.ColorChooserGetRgbaMethodInfo
    ResolveColorButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveColorButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveColorButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveColorButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveColorButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveColorButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveColorButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveColorButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveColorButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveColorButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveColorButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveColorButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveColorButtonMethod "getTitle" o = ColorButtonGetTitleMethodInfo
    ResolveColorButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveColorButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveColorButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveColorButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveColorButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveColorButtonMethod "getUseAlpha" o = ColorButtonGetUseAlphaMethodInfo
    ResolveColorButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveColorButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveColorButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveColorButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveColorButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveColorButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveColorButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveColorButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveColorButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveColorButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveColorButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveColorButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveColorButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveColorButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveColorButtonMethod "setAlpha" o = ColorButtonSetAlphaMethodInfo
    ResolveColorButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveColorButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveColorButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveColorButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveColorButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveColorButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveColorButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveColorButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveColorButtonMethod "setColor" o = ColorButtonSetColorMethodInfo
    ResolveColorButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveColorButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColorButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColorButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveColorButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveColorButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveColorButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveColorButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveColorButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveColorButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveColorButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveColorButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveColorButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveColorButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveColorButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveColorButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveColorButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveColorButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveColorButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveColorButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveColorButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveColorButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveColorButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveColorButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveColorButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveColorButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveColorButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveColorButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveColorButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveColorButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveColorButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveColorButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveColorButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveColorButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveColorButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveColorButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveColorButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColorButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveColorButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveColorButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveColorButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveColorButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveColorButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveColorButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveColorButtonMethod "setRgba" o = Gtk.ColorChooser.ColorChooserSetRgbaMethodInfo
    ResolveColorButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveColorButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveColorButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveColorButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveColorButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveColorButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveColorButtonMethod "setTitle" o = ColorButtonSetTitleMethodInfo
    ResolveColorButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveColorButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveColorButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveColorButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveColorButtonMethod "setUseAlpha" o = ColorButtonSetUseAlphaMethodInfo
    ResolveColorButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveColorButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveColorButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveColorButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveColorButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveColorButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveColorButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveColorButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveColorButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColorButtonMethod t ColorButton, O.MethodInfo info ColorButton p) => OL.IsLabel t (ColorButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ColorButton::color-set
-- | The [colorSet](#signal:colorSet) signal is emitted when the user selects a color.
-- When handling this signal, use @/gtk_color_button_get_rgba()/@ to
-- find out which color was just selected.
-- 
-- Note that this signal is only emitted when the user
-- changes the color. If you need to react to programmatic color changes
-- as well, use the notify[color](#signal:color) signal.
-- 
-- /Since: 2.4/
type ColorButtonColorSetCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ColorButtonColorSetCallback`@.
noColorButtonColorSetCallback :: Maybe ColorButtonColorSetCallback
noColorButtonColorSetCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ColorButtonColorSetCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ColorButtonColorSetCallback`.
foreign import ccall "wrapper"
    mk_ColorButtonColorSetCallback :: C_ColorButtonColorSetCallback -> IO (FunPtr C_ColorButtonColorSetCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ColorButtonColorSet :: MonadIO m => ColorButtonColorSetCallback -> m (GClosure C_ColorButtonColorSetCallback)
genClosure_ColorButtonColorSet cb = liftIO $ do
    let cb' = wrap_ColorButtonColorSetCallback cb
    mk_ColorButtonColorSetCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ColorButtonColorSetCallback` into a `C_ColorButtonColorSetCallback`.
wrap_ColorButtonColorSetCallback ::
    ColorButtonColorSetCallback ->
    C_ColorButtonColorSetCallback
wrap_ColorButtonColorSetCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [colorSet](#signal:colorSet) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' colorButton #colorSet callback
-- @
-- 
-- 
onColorButtonColorSet :: (IsColorButton a, MonadIO m) => a -> ColorButtonColorSetCallback -> m SignalHandlerId
onColorButtonColorSet obj cb = liftIO $ do
    let cb' = wrap_ColorButtonColorSetCallback cb
    cb'' <- mk_ColorButtonColorSetCallback cb'
    connectSignalFunPtr obj "color-set" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [colorSet](#signal:colorSet) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' colorButton #colorSet callback
-- @
-- 
-- 
afterColorButtonColorSet :: (IsColorButton a, MonadIO m) => a -> ColorButtonColorSetCallback -> m SignalHandlerId
afterColorButtonColorSet obj cb = liftIO $ do
    let cb' = wrap_ColorButtonColorSetCallback cb
    cb'' <- mk_ColorButtonColorSetCallback cb'
    connectSignalFunPtr obj "color-set" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ColorButtonColorSetSignalInfo
instance SignalInfo ColorButtonColorSetSignalInfo where
    type HaskellCallbackType ColorButtonColorSetSignalInfo = ColorButtonColorSetCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ColorButtonColorSetCallback cb
        cb'' <- mk_ColorButtonColorSetCallback cb'
        connectSignalFunPtr obj "color-set" cb'' connectMode detail

#endif

--- XXX Duplicated object with different types:
  --- Name {namespace = "Gtk", name = "ColorButton"} -> Property {propName = "rgba", propType = TInterface (Name {namespace = "Gdk", name = "RGBA"}), propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "The RGBA color.", sinceVersion = Just "3.0"}, propDeprecated = Nothing}
  --- Name {namespace = "Gtk", name = "ColorChooser"} -> Property {propName = "rgba", propType = TInterface (Name {namespace = "Gdk", name = "RGBA"}), propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "The ::rgba property contains the currently selected color,\nas a #GdkRGBA struct. The property can be set to change\nthe current selection programmatically.", sinceVersion = Just "3.4"}, propDeprecated = Nothing}
--- XXX Duplicated object with different types:
  --- Name {namespace = "Gtk", name = "ColorButton"} -> Property {propName = "use-alpha", propType = TBasicType TBoolean, propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "If this property is set to %TRUE, the color swatch on the button is\nrendered against a checkerboard background to show its opacity and\nthe opacity slider is displayed in the color selection dialog.", sinceVersion = Just "2.4"}, propDeprecated = Nothing}
  --- Name {namespace = "Gtk", name = "ColorChooser"} -> Property {propName = "use-alpha", propType = TBasicType TBoolean, propFlags = [PropertyReadable,PropertyWritable], propReadNullable = Nothing, propWriteNullable = Nothing, propTransfer = TransferNothing, propDoc = Documentation {rawDocText = Just "When ::use-alpha is %TRUE, colors may have alpha (translucency)\ninformation. When it is %FALSE, the #GdkRGBA struct obtained\nvia the #GtkColorChooser:rgba property will be forced to have\nalpha == 1.\n\nImplementations are expected to show alpha by rendering the color\nover a non-uniform background (like a checkerboard pattern).", sinceVersion = Just "3.4"}, propDeprecated = Nothing}
-- VVV Prop "alpha"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorButton #alpha
-- @
getColorButtonAlpha :: (MonadIO m, IsColorButton o) => o -> m Word32
getColorButtonAlpha obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "alpha"

-- | Set the value of the “@alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #alpha 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonAlpha :: (MonadIO m, IsColorButton o) => o -> Word32 -> m ()
setColorButtonAlpha obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "alpha" val

-- | Construct a `GValueConstruct` with valid value for the “@alpha@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonAlpha :: (IsColorButton o) => Word32 -> IO (GValueConstruct o)
constructColorButtonAlpha val = B.Properties.constructObjectPropertyUInt32 "alpha" val

#if defined(ENABLE_OVERLOADING)
data ColorButtonAlphaPropertyInfo
instance AttrInfo ColorButtonAlphaPropertyInfo where
    type AttrAllowedOps ColorButtonAlphaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorButtonAlphaPropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonAlphaPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint ColorButtonAlphaPropertyInfo = (~) Word32
    type AttrTransferType ColorButtonAlphaPropertyInfo = Word32
    type AttrGetType ColorButtonAlphaPropertyInfo = Word32
    type AttrLabel ColorButtonAlphaPropertyInfo = "alpha"
    type AttrOrigin ColorButtonAlphaPropertyInfo = ColorButton
    attrGet = getColorButtonAlpha
    attrSet = setColorButtonAlpha
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonAlpha
    attrClear = undefined
#endif

-- VVV Prop "color"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Color"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@color@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorButton #color
-- @
getColorButtonColor :: (MonadIO m, IsColorButton o) => o -> m (Maybe Gdk.Color.Color)
getColorButtonColor obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "color" Gdk.Color.Color

-- | Set the value of the “@color@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #color 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonColor :: (MonadIO m, IsColorButton o) => o -> Gdk.Color.Color -> m ()
setColorButtonColor obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "color" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@color@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonColor :: (IsColorButton o) => Gdk.Color.Color -> IO (GValueConstruct o)
constructColorButtonColor val = B.Properties.constructObjectPropertyBoxed "color" (Just val)

#if defined(ENABLE_OVERLOADING)
data ColorButtonColorPropertyInfo
instance AttrInfo ColorButtonColorPropertyInfo where
    type AttrAllowedOps ColorButtonColorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorButtonColorPropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonColorPropertyInfo = (~) Gdk.Color.Color
    type AttrTransferTypeConstraint ColorButtonColorPropertyInfo = (~) Gdk.Color.Color
    type AttrTransferType ColorButtonColorPropertyInfo = Gdk.Color.Color
    type AttrGetType ColorButtonColorPropertyInfo = (Maybe Gdk.Color.Color)
    type AttrLabel ColorButtonColorPropertyInfo = "color"
    type AttrOrigin ColorButtonColorPropertyInfo = ColorButton
    attrGet = getColorButtonColor
    attrSet = setColorButtonColor
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonColor
    attrClear = undefined
#endif

-- VVV Prop "rgba"
   -- Type: TInterface (Name {namespace = "Gdk", name = "RGBA"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorButton #rgba
-- @
getColorButtonRgba :: (MonadIO m, IsColorButton o) => o -> m (Maybe Gdk.RGBA.RGBA)
getColorButtonRgba obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "rgba" Gdk.RGBA.RGBA

-- | Set the value of the “@rgba@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #rgba 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonRgba :: (MonadIO m, IsColorButton o) => o -> Gdk.RGBA.RGBA -> m ()
setColorButtonRgba obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "rgba" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@rgba@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonRgba :: (IsColorButton o) => Gdk.RGBA.RGBA -> IO (GValueConstruct o)
constructColorButtonRgba val = B.Properties.constructObjectPropertyBoxed "rgba" (Just val)

-- | Set the value of the “@rgba@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #rgba
-- @
clearColorButtonRgba :: (MonadIO m, IsColorButton o) => o -> m ()
clearColorButtonRgba obj = liftIO $ B.Properties.setObjectPropertyBoxed obj "rgba" (Nothing :: Maybe Gdk.RGBA.RGBA)

#if defined(ENABLE_OVERLOADING)
data ColorButtonRgbaPropertyInfo
instance AttrInfo ColorButtonRgbaPropertyInfo where
    type AttrAllowedOps ColorButtonRgbaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColorButtonRgbaPropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferTypeConstraint ColorButtonRgbaPropertyInfo = (~) Gdk.RGBA.RGBA
    type AttrTransferType ColorButtonRgbaPropertyInfo = Gdk.RGBA.RGBA
    type AttrGetType ColorButtonRgbaPropertyInfo = (Maybe Gdk.RGBA.RGBA)
    type AttrLabel ColorButtonRgbaPropertyInfo = "rgba"
    type AttrOrigin ColorButtonRgbaPropertyInfo = ColorButton
    attrGet = getColorButtonRgba
    attrSet = setColorButtonRgba
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonRgba
    attrClear = clearColorButtonRgba
#endif

-- VVV Prop "show-editor"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorButton #showEditor
-- @
getColorButtonShowEditor :: (MonadIO m, IsColorButton o) => o -> m Bool
getColorButtonShowEditor obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-editor"

-- | Set the value of the “@show-editor@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #showEditor 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonShowEditor :: (MonadIO m, IsColorButton o) => o -> Bool -> m ()
setColorButtonShowEditor obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-editor" val

-- | Construct a `GValueConstruct` with valid value for the “@show-editor@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonShowEditor :: (IsColorButton o) => Bool -> IO (GValueConstruct o)
constructColorButtonShowEditor val = B.Properties.constructObjectPropertyBool "show-editor" val

#if defined(ENABLE_OVERLOADING)
data ColorButtonShowEditorPropertyInfo
instance AttrInfo ColorButtonShowEditorPropertyInfo where
    type AttrAllowedOps ColorButtonShowEditorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorButtonShowEditorPropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonShowEditorPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ColorButtonShowEditorPropertyInfo = (~) Bool
    type AttrTransferType ColorButtonShowEditorPropertyInfo = Bool
    type AttrGetType ColorButtonShowEditorPropertyInfo = Bool
    type AttrLabel ColorButtonShowEditorPropertyInfo = "show-editor"
    type AttrOrigin ColorButtonShowEditorPropertyInfo = ColorButton
    attrGet = getColorButtonShowEditor
    attrSet = setColorButtonShowEditor
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonShowEditor
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
-- 'Data.GI.Base.Attributes.get' colorButton #title
-- @
getColorButtonTitle :: (MonadIO m, IsColorButton o) => o -> m T.Text
getColorButtonTitle obj = liftIO $ checkUnexpectedNothing "getColorButtonTitle" $ B.Properties.getObjectPropertyString obj "title"

-- | Set the value of the “@title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #title 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonTitle :: (MonadIO m, IsColorButton o) => o -> T.Text -> m ()
setColorButtonTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonTitle :: (IsColorButton o) => T.Text -> IO (GValueConstruct o)
constructColorButtonTitle val = B.Properties.constructObjectPropertyString "title" (Just val)

#if defined(ENABLE_OVERLOADING)
data ColorButtonTitlePropertyInfo
instance AttrInfo ColorButtonTitlePropertyInfo where
    type AttrAllowedOps ColorButtonTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorButtonTitlePropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ColorButtonTitlePropertyInfo = (~) T.Text
    type AttrTransferType ColorButtonTitlePropertyInfo = T.Text
    type AttrGetType ColorButtonTitlePropertyInfo = T.Text
    type AttrLabel ColorButtonTitlePropertyInfo = "title"
    type AttrOrigin ColorButtonTitlePropertyInfo = ColorButton
    attrGet = getColorButtonTitle
    attrSet = setColorButtonTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonTitle
    attrClear = undefined
#endif

-- VVV Prop "use-alpha"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' colorButton #useAlpha
-- @
getColorButtonUseAlpha :: (MonadIO m, IsColorButton o) => o -> m Bool
getColorButtonUseAlpha obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-alpha"

-- | Set the value of the “@use-alpha@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' colorButton [ #useAlpha 'Data.GI.Base.Attributes.:=' value ]
-- @
setColorButtonUseAlpha :: (MonadIO m, IsColorButton o) => o -> Bool -> m ()
setColorButtonUseAlpha obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-alpha" val

-- | Construct a `GValueConstruct` with valid value for the “@use-alpha@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColorButtonUseAlpha :: (IsColorButton o) => Bool -> IO (GValueConstruct o)
constructColorButtonUseAlpha val = B.Properties.constructObjectPropertyBool "use-alpha" val

#if defined(ENABLE_OVERLOADING)
data ColorButtonUseAlphaPropertyInfo
instance AttrInfo ColorButtonUseAlphaPropertyInfo where
    type AttrAllowedOps ColorButtonUseAlphaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ColorButtonUseAlphaPropertyInfo = IsColorButton
    type AttrSetTypeConstraint ColorButtonUseAlphaPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ColorButtonUseAlphaPropertyInfo = (~) Bool
    type AttrTransferType ColorButtonUseAlphaPropertyInfo = Bool
    type AttrGetType ColorButtonUseAlphaPropertyInfo = Bool
    type AttrLabel ColorButtonUseAlphaPropertyInfo = "use-alpha"
    type AttrOrigin ColorButtonUseAlphaPropertyInfo = ColorButton
    attrGet = getColorButtonUseAlpha
    attrSet = setColorButtonUseAlpha
    attrTransfer _ v = do
        return v
    attrConstruct = constructColorButtonUseAlpha
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ColorButton
type instance O.AttributeList ColorButton = ColorButtonAttributeList
type ColorButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("alpha", ColorButtonAlphaPropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("color", ColorButtonColorPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rgba", ColorButtonRgbaPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showEditor", ColorButtonShowEditorPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", ColorButtonTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useAlpha", ColorButtonUseAlphaPropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
colorButtonAlpha :: AttrLabelProxy "alpha"
colorButtonAlpha = AttrLabelProxy

colorButtonColor :: AttrLabelProxy "color"
colorButtonColor = AttrLabelProxy

colorButtonRgba :: AttrLabelProxy "rgba"
colorButtonRgba = AttrLabelProxy

colorButtonShowEditor :: AttrLabelProxy "showEditor"
colorButtonShowEditor = AttrLabelProxy

colorButtonTitle :: AttrLabelProxy "title"
colorButtonTitle = AttrLabelProxy

colorButtonUseAlpha :: AttrLabelProxy "useAlpha"
colorButtonUseAlpha = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ColorButton = ColorButtonSignalList
type ColorButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("colorActivated", Gtk.ColorChooser.ColorChooserColorActivatedSignalInfo), '("colorSet", ColorButtonColorSetSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ColorButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ColorButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_button_new" gtk_color_button_new :: 
    IO (Ptr ColorButton)

-- | Creates a new color button.
-- 
-- This returns a widget in the form of a small button containing
-- a swatch representing the current selected color. When the button
-- is clicked, a color-selection dialog will open, allowing the user
-- to select a color. The swatch will be updated to reflect the new
-- color when the user finishes.
-- 
-- /Since: 2.4/
colorButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ColorButton
    -- ^ __Returns:__ a new color button
colorButtonNew  = liftIO $ do
    result <- gtk_color_button_new
    checkUnexpectedReturnNULL "colorButtonNew" result
    result' <- (newObject ColorButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ColorButton::new_with_color
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Color" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GdkColor to set the current color with"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ColorButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_button_new_with_color" gtk_color_button_new_with_color :: 
    Ptr Gdk.Color.Color ->                  -- color : TInterface (Name {namespace = "Gdk", name = "Color"})
    IO (Ptr ColorButton)

{-# DEPRECATED colorButtonNewWithColor ["(Since version 3.4)","Use 'GI.Gtk.Objects.ColorButton.colorButtonNewWithRgba' instead."] #-}
-- | Creates a new color button.
-- 
-- /Since: 2.4/
colorButtonNewWithColor ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gdk.Color.Color
    -- ^ /@color@/: A t'GI.Gdk.Structs.Color.Color' to set the current color with
    -> m ColorButton
    -- ^ __Returns:__ a new color button
colorButtonNewWithColor color = liftIO $ do
    color' <- unsafeManagedPtrGetPtr color
    result <- gtk_color_button_new_with_color color'
    checkUnexpectedReturnNULL "colorButtonNewWithColor" result
    result' <- (newObject ColorButton) result
    touchManagedPtr color
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ColorButton::new_with_rgba
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "rgba"
--           , argType = TInterface Name { namespace = "Gdk" , name = "RGBA" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GdkRGBA to set the current color with"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ColorButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_button_new_with_rgba" gtk_color_button_new_with_rgba :: 
    Ptr Gdk.RGBA.RGBA ->                    -- rgba : TInterface (Name {namespace = "Gdk", name = "RGBA"})
    IO (Ptr ColorButton)

-- | Creates a new color button.
-- 
-- /Since: 3.0/
colorButtonNewWithRgba ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gdk.RGBA.RGBA
    -- ^ /@rgba@/: A t'GI.Gdk.Structs.RGBA.RGBA' to set the current color with
    -> m ColorButton
    -- ^ __Returns:__ a new color button
colorButtonNewWithRgba rgba = liftIO $ do
    rgba' <- unsafeManagedPtrGetPtr rgba
    result <- gtk_color_button_new_with_rgba rgba'
    checkUnexpectedReturnNULL "colorButtonNewWithRgba" result
    result' <- (newObject ColorButton) result
    touchManagedPtr rgba
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ColorButton::get_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_button_get_alpha" gtk_color_button_get_alpha :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    IO Word16

{-# DEPRECATED colorButtonGetAlpha ["(Since version 3.4)","Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserGetRgba' instead."] #-}
-- | Returns the current alpha value.
-- 
-- /Since: 2.4/
colorButtonGetAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> m Word16
    -- ^ __Returns:__ an integer between 0 and 65535
colorButtonGetAlpha button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_color_button_get_alpha button'
    touchManagedPtr button
    return result

#if defined(ENABLE_OVERLOADING)
data ColorButtonGetAlphaMethodInfo
instance (signature ~ (m Word16), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonGetAlphaMethodInfo a signature where
    overloadedMethod = colorButtonGetAlpha

#endif

-- method ColorButton::get_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Color" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkColor to fill in with the current color"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_color_button_get_color" gtk_color_button_get_color :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    Ptr Gdk.Color.Color ->                  -- color : TInterface (Name {namespace = "Gdk", name = "Color"})
    IO ()

{-# DEPRECATED colorButtonGetColor ["(Since version 3.4)","Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserGetRgba' instead."] #-}
-- | Sets /@color@/ to be the current color in the t'GI.Gtk.Objects.ColorButton.ColorButton' widget.
-- 
-- /Since: 2.4/
colorButtonGetColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> m (Gdk.Color.Color)
colorButtonGetColor button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    color <- callocBoxedBytes 12 :: IO (Ptr Gdk.Color.Color)
    gtk_color_button_get_color button' color
    color' <- (wrapBoxed Gdk.Color.Color) color
    touchManagedPtr button
    return color'

#if defined(ENABLE_OVERLOADING)
data ColorButtonGetColorMethodInfo
instance (signature ~ (m (Gdk.Color.Color)), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonGetColorMethodInfo a signature where
    overloadedMethod = colorButtonGetColor

#endif

-- method ColorButton::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_color_button_get_title" gtk_color_button_get_title :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    IO CString

-- | Gets the title of the color selection dialog.
-- 
-- /Since: 2.4/
colorButtonGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> m T.Text
    -- ^ __Returns:__ An internal string, do not free the return value
colorButtonGetTitle button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_color_button_get_title button'
    checkUnexpectedReturnNULL "colorButtonGetTitle" result
    result' <- cstringToText result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data ColorButtonGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonGetTitleMethodInfo a signature where
    overloadedMethod = colorButtonGetTitle

#endif

-- method ColorButton::get_use_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_color_button_get_use_alpha" gtk_color_button_get_use_alpha :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    IO CInt

{-# DEPRECATED colorButtonGetUseAlpha ["(Since version 3.4)","Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserGetUseAlpha' instead."] #-}
-- | Does the color selection dialog use the alpha channel ?
-- 
-- /Since: 2.4/
colorButtonGetUseAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the color sample uses alpha channel, 'P.False' if not
colorButtonGetUseAlpha button = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    result <- gtk_color_button_get_use_alpha button'
    let result' = (/= 0) result
    touchManagedPtr button
    return result'

#if defined(ENABLE_OVERLOADING)
data ColorButtonGetUseAlphaMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonGetUseAlphaMethodInfo a signature where
    overloadedMethod = colorButtonGetUseAlpha

#endif

-- method ColorButton::set_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "alpha"
--           , argType = TBasicType TUInt16
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an integer between 0 and 65535"
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

foreign import ccall "gtk_color_button_set_alpha" gtk_color_button_set_alpha :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    Word16 ->                               -- alpha : TBasicType TUInt16
    IO ()

{-# DEPRECATED colorButtonSetAlpha ["(Since version 3.4)","Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserSetRgba' instead."] #-}
-- | Sets the current opacity to be /@alpha@/.
-- 
-- /Since: 2.4/
colorButtonSetAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> Word16
    -- ^ /@alpha@/: an integer between 0 and 65535
    -> m ()
colorButtonSetAlpha button alpha = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    gtk_color_button_set_alpha button' alpha
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorButtonSetAlphaMethodInfo
instance (signature ~ (Word16 -> m ()), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonSetAlphaMethodInfo a signature where
    overloadedMethod = colorButtonSetAlpha

#endif

-- method ColorButton::set_color
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "color"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Color" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GdkColor to set the current color with"
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

foreign import ccall "gtk_color_button_set_color" gtk_color_button_set_color :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    Ptr Gdk.Color.Color ->                  -- color : TInterface (Name {namespace = "Gdk", name = "Color"})
    IO ()

{-# DEPRECATED colorButtonSetColor ["Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserSetRgba' instead."] #-}
-- | Sets the current color to be /@color@/.
-- 
-- /Since: 2.4/
colorButtonSetColor ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> Gdk.Color.Color
    -- ^ /@color@/: A t'GI.Gdk.Structs.Color.Color' to set the current color with
    -> m ()
colorButtonSetColor button color = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    color' <- unsafeManagedPtrGetPtr color
    gtk_color_button_set_color button' color'
    touchManagedPtr button
    touchManagedPtr color
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorButtonSetColorMethodInfo
instance (signature ~ (Gdk.Color.Color -> m ()), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonSetColorMethodInfo a signature where
    overloadedMethod = colorButtonSetColor

#endif

-- method ColorButton::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "String containing new window title"
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

foreign import ccall "gtk_color_button_set_title" gtk_color_button_set_title :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

-- | Sets the title for the color selection dialog.
-- 
-- /Since: 2.4/
colorButtonSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> T.Text
    -- ^ /@title@/: String containing new window title
    -> m ()
colorButtonSetTitle button title = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    title' <- textToCString title
    gtk_color_button_set_title button' title'
    touchManagedPtr button
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorButtonSetTitleMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonSetTitleMethodInfo a signature where
    overloadedMethod = colorButtonSetTitle

#endif

-- method ColorButton::set_use_alpha
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ColorButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkColorButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_alpha"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if color button should use alpha channel, %FALSE if not"
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

foreign import ccall "gtk_color_button_set_use_alpha" gtk_color_button_set_use_alpha :: 
    Ptr ColorButton ->                      -- button : TInterface (Name {namespace = "Gtk", name = "ColorButton"})
    CInt ->                                 -- use_alpha : TBasicType TBoolean
    IO ()

{-# DEPRECATED colorButtonSetUseAlpha ["(Since version 3.4)","Use 'GI.Gtk.Interfaces.ColorChooser.colorChooserSetUseAlpha' instead."] #-}
-- | Sets whether or not the color button should use the alpha channel.
-- 
-- /Since: 2.4/
colorButtonSetUseAlpha ::
    (B.CallStack.HasCallStack, MonadIO m, IsColorButton a) =>
    a
    -- ^ /@button@/: a t'GI.Gtk.Objects.ColorButton.ColorButton'
    -> Bool
    -- ^ /@useAlpha@/: 'P.True' if color button should use alpha channel, 'P.False' if not
    -> m ()
colorButtonSetUseAlpha button useAlpha = liftIO $ do
    button' <- unsafeManagedPtrCastPtr button
    let useAlpha' = (fromIntegral . fromEnum) useAlpha
    gtk_color_button_set_use_alpha button' useAlpha'
    touchManagedPtr button
    return ()

#if defined(ENABLE_OVERLOADING)
data ColorButtonSetUseAlphaMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsColorButton a) => O.MethodInfo ColorButtonSetUseAlphaMethodInfo a signature where
    overloadedMethod = colorButtonSetUseAlpha

#endif

