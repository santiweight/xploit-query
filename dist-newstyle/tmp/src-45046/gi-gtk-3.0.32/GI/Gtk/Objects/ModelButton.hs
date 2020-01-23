{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkModelButton is a button class that can use a t'GI.Gio.Interfaces.Action.Action' as its model.
-- In contrast to t'GI.Gtk.Objects.ToggleButton.ToggleButton' or t'GI.Gtk.Objects.RadioButton.RadioButton', which can also
-- be backed by a t'GI.Gio.Interfaces.Action.Action' via the t'GI.Gtk.Interfaces.Actionable.Actionable':@/action-name/@ property,
-- GtkModelButton will adapt its appearance according to the kind of
-- action it is backed by, and appear either as a plain, check or
-- radio button.
-- 
-- Model buttons are used when popovers from a menu model with
-- 'GI.Gtk.Objects.Popover.popoverNewFromModel'; they can also be used manually in
-- a t'GI.Gtk.Objects.PopoverMenu.PopoverMenu'.
-- 
-- When the action is specified via the t'GI.Gtk.Interfaces.Actionable.Actionable':@/action-name/@
-- and t'GI.Gtk.Interfaces.Actionable.Actionable':@/action-target/@ properties, the role of the button
-- (i.e. whether it is a plain, check or radio button) is determined by
-- the type of the action and doesn\'t have to be explicitly specified
-- with the t'GI.Gtk.Objects.ModelButton.ModelButton':@/role/@ property.
-- 
-- The content of the button is specified by the t'GI.Gtk.Objects.ModelButton.ModelButton':@/text/@
-- and t'GI.Gtk.Objects.ModelButton.ModelButton':@/icon/@ properties.
-- 
-- The appearance of model buttons can be influenced with the
-- t'GI.Gtk.Objects.ModelButton.ModelButton':@/centered/@ and t'GI.Gtk.Objects.ModelButton.ModelButton':@/iconic/@ properties.
-- 
-- Model buttons have built-in support for submenus in t'GI.Gtk.Objects.PopoverMenu.PopoverMenu'.
-- To make a GtkModelButton that opens a submenu when activated, set
-- the t'GI.Gtk.Objects.ModelButton.ModelButton':@/menu-name/@ property. To make a button that goes
-- back to the parent menu, you should set the t'GI.Gtk.Objects.ModelButton.ModelButton':@/inverted/@
-- property to place the submenu indicator at the opposite side.
-- 
-- = Example
-- 
-- >
-- ><object class="GtkPopoverMenu">
-- >  <child>
-- >    <object class="GtkBox">
-- >      <property name="visible">True</property>
-- >      <property name="margin">10</property>
-- >      <child>
-- >        <object class="GtkModelButton">
-- >          <property name="visible">True</property>
-- >          <property name="action-name">view.cut</property>
-- >          <property name="text" translatable="yes">Cut</property>
-- >        </object>
-- >      </child>
-- >      <child>
-- >        <object class="GtkModelButton">
-- >          <property name="visible">True</property>
-- >          <property name="action-name">view.copy</property>
-- >          <property name="text" translatable="yes">Copy</property>
-- >        </object>
-- >      </child>
-- >      <child>
-- >        <object class="GtkModelButton">
-- >          <property name="visible">True</property>
-- >          <property name="action-name">view.paste</property>
-- >          <property name="text" translatable="yes">Paste</property>
-- >        </object>
-- >      </child>
-- >    </object>
-- >  </child>
-- ></object>
-- 
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >modelbutton
-- >├── <child>
-- >╰── check
-- 
-- 
-- 
-- === /plain code/
-- >
-- >modelbutton
-- >├── <child>
-- >╰── radio
-- 
-- 
-- 
-- === /plain code/
-- >
-- >modelbutton
-- >├── <child>
-- >╰── arrow
-- 
-- 
-- GtkModelButton has a main CSS node with name modelbutton, and a subnode,
-- which will have the name check, radio or arrow, depending on the role
-- of the button and whether it has a menu name set.
-- 
-- The subnode is positioned before or after the content nodes and gets the
-- .left or .right style class, depending on where it is located.
-- 
-- 
-- === /plain code/
-- >
-- >button.model
-- >├── <child>
-- >╰── check
-- 
-- 
-- Iconic model buttons (see t'GI.Gtk.Objects.ModelButton.ModelButton':@/iconic/@) change the name of
-- their main node to button and add a .model style class to it. The indicator
-- subnode is invisible in this case.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ModelButton
    ( 

-- * Exported types
    ModelButton(..)                         ,
    IsModelButton                           ,
    toModelButton                           ,
    noModelButton                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveModelButtonMethod                ,
#endif


-- ** new #method:new#

    modelButtonNew                          ,




 -- * Properties
-- ** active #attr:active#
-- | The state of the button. This is reflecting the state of the associated
-- t'GI.Gio.Interfaces.Action.Action'.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonActivePropertyInfo           ,
#endif
    constructModelButtonActive              ,
    getModelButtonActive                    ,
#if defined(ENABLE_OVERLOADING)
    modelButtonActive                       ,
#endif
    setModelButtonActive                    ,


-- ** centered #attr:centered#
-- | Whether to render the button contents centered instead of left-aligned.
-- This property should be set for title-like items.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonCenteredPropertyInfo         ,
#endif
    constructModelButtonCentered            ,
    getModelButtonCentered                  ,
#if defined(ENABLE_OVERLOADING)
    modelButtonCentered                     ,
#endif
    setModelButtonCentered                  ,


-- ** icon #attr:icon#
-- | A t'GI.Gio.Interfaces.Icon.Icon' that will be used if iconic appearance for the button is
-- desired.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonIconPropertyInfo             ,
#endif
    clearModelButtonIcon                    ,
    constructModelButtonIcon                ,
    getModelButtonIcon                      ,
#if defined(ENABLE_OVERLOADING)
    modelButtonIcon                         ,
#endif
    setModelButtonIcon                      ,


-- ** iconic #attr:iconic#
-- | If this property is set, the button will show an icon if one is set.
-- If no icon is set, the text will be used. This is typically used for
-- horizontal sections of linked buttons.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonIconicPropertyInfo           ,
#endif
    constructModelButtonIconic              ,
    getModelButtonIconic                    ,
#if defined(ENABLE_OVERLOADING)
    modelButtonIconic                       ,
#endif
    setModelButtonIconic                    ,


-- ** inverted #attr:inverted#
-- | Whether to show the submenu indicator at the opposite side than normal.
-- This property should be set for model buttons that \'go back\' to a parent
-- menu.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonInvertedPropertyInfo         ,
#endif
    constructModelButtonInverted            ,
    getModelButtonInverted                  ,
#if defined(ENABLE_OVERLOADING)
    modelButtonInverted                     ,
#endif
    setModelButtonInverted                  ,


-- ** menuName #attr:menuName#
-- | The name of a submenu to open when the button is activated.
-- If this is set, the button should not have an action associated with it.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonMenuNamePropertyInfo         ,
#endif
    clearModelButtonMenuName                ,
    constructModelButtonMenuName            ,
    getModelButtonMenuName                  ,
#if defined(ENABLE_OVERLOADING)
    modelButtonMenuName                     ,
#endif
    setModelButtonMenuName                  ,


-- ** role #attr:role#
-- | Specifies whether the button is a plain, check or radio button.
-- When t'GI.Gtk.Interfaces.Actionable.Actionable':@/action-name/@ is set, the role will be determined
-- from the action and does not have to be set explicitly.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonRolePropertyInfo             ,
#endif
    constructModelButtonRole                ,
    getModelButtonRole                      ,
#if defined(ENABLE_OVERLOADING)
    modelButtonRole                         ,
#endif
    setModelButtonRole                      ,


-- ** text #attr:text#
-- | The label for the button.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ModelButtonTextPropertyInfo             ,
#endif
    clearModelButtonText                    ,
    constructModelButtonText                ,
    getModelButtonText                      ,
#if defined(ENABLE_OVERLOADING)
    modelButtonText                         ,
#endif
    setModelButtonText                      ,


-- ** useMarkup #attr:useMarkup#
-- | If 'P.True', XML tags in the text of the button are interpreted as by
-- 'GI.Pango.Functions.parseMarkup' to format the enclosed spans of text. If 'P.False', the
-- text will be displayed verbatim.
-- 
-- /Since: 3.24/

#if defined(ENABLE_OVERLOADING)
    ModelButtonUseMarkupPropertyInfo        ,
#endif
    constructModelButtonUseMarkup           ,
    getModelButtonUseMarkup                 ,
#if defined(ENABLE_OVERLOADING)
    modelButtonUseMarkup                    ,
#endif
    setModelButtonUseMarkup                 ,




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
import qualified GI.Gio.Interfaces.Icon as Gio.Icon
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Actionable as Gtk.Actionable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Activatable as Gtk.Activatable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ModelButton = ModelButton (ManagedPtr ModelButton)
    deriving (Eq)
foreign import ccall "gtk_model_button_get_type"
    c_gtk_model_button_get_type :: IO GType

instance GObject ModelButton where
    gobjectType = c_gtk_model_button_get_type
    

-- | Convert 'ModelButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ModelButton where
    toGValue o = do
        gtype <- c_gtk_model_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ModelButton)
        B.ManagedPtr.newObject ModelButton ptr
        
    

-- | Type class for types which can be safely cast to `ModelButton`, for instance with `toModelButton`.
class (GObject o, O.IsDescendantOf ModelButton o) => IsModelButton o
instance (GObject o, O.IsDescendantOf ModelButton o) => IsModelButton o

instance O.HasParentTypes ModelButton
type instance O.ParentTypes ModelButton = '[Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `ModelButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toModelButton :: (MonadIO m, IsModelButton o) => o -> m ModelButton
toModelButton = liftIO . unsafeCastTo ModelButton

-- | A convenience alias for `Nothing` :: `Maybe` `ModelButton`.
noModelButton :: Maybe ModelButton
noModelButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveModelButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveModelButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveModelButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveModelButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveModelButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveModelButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveModelButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveModelButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveModelButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveModelButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveModelButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveModelButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveModelButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveModelButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveModelButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveModelButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveModelButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveModelButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveModelButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveModelButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveModelButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveModelButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveModelButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveModelButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveModelButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveModelButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveModelButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveModelButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveModelButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveModelButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveModelButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveModelButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveModelButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveModelButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveModelButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveModelButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveModelButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveModelButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveModelButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveModelButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveModelButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveModelButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveModelButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveModelButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveModelButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveModelButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveModelButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveModelButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveModelButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveModelButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveModelButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveModelButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveModelButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveModelButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveModelButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveModelButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveModelButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveModelButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveModelButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveModelButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveModelButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveModelButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveModelButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveModelButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveModelButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveModelButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveModelButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveModelButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveModelButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveModelButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveModelButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveModelButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveModelButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveModelButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveModelButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveModelButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveModelButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveModelButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveModelButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveModelButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveModelButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveModelButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveModelButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveModelButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveModelButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveModelButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveModelButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveModelButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveModelButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveModelButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveModelButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveModelButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveModelButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveModelButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveModelButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveModelButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveModelButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveModelButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveModelButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveModelButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveModelButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveModelButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveModelButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveModelButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveModelButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveModelButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveModelButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveModelButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveModelButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveModelButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveModelButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveModelButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveModelButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveModelButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveModelButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveModelButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveModelButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveModelButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveModelButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveModelButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveModelButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveModelButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveModelButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveModelButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveModelButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveModelButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveModelButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveModelButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveModelButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveModelButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveModelButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveModelButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveModelButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveModelButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveModelButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveModelButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveModelButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveModelButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveModelButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveModelButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveModelButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveModelButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveModelButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveModelButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveModelButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveModelButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveModelButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveModelButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveModelButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveModelButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveModelButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveModelButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveModelButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveModelButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveModelButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveModelButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveModelButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveModelButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveModelButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveModelButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveModelButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveModelButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveModelButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveModelButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveModelButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveModelButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveModelButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveModelButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveModelButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveModelButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveModelButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveModelButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveModelButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveModelButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveModelButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveModelButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveModelButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveModelButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveModelButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveModelButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveModelButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveModelButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveModelButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveModelButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveModelButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveModelButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveModelButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveModelButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveModelButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveModelButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveModelButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveModelButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveModelButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveModelButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveModelButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveModelButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveModelButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveModelButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveModelButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveModelButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveModelButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveModelButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveModelButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveModelButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveModelButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveModelButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveModelButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveModelButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveModelButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveModelButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveModelButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveModelButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveModelButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveModelButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveModelButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveModelButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveModelButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveModelButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveModelButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveModelButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveModelButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveModelButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveModelButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveModelButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveModelButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveModelButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveModelButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveModelButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveModelButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveModelButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveModelButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveModelButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveModelButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveModelButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveModelButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveModelButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveModelButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveModelButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveModelButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveModelButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveModelButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveModelButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveModelButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveModelButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveModelButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveModelButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveModelButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveModelButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveModelButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveModelButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveModelButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveModelButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveModelButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveModelButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveModelButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveModelButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveModelButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveModelButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveModelButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveModelButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveModelButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveModelButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveModelButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveModelButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveModelButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveModelButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveModelButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveModelButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveModelButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveModelButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveModelButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveModelButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveModelButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveModelButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveModelButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveModelButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveModelButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveModelButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveModelButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveModelButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveModelButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveModelButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveModelButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveModelButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveModelButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveModelButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveModelButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveModelButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveModelButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveModelButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveModelButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveModelButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveModelButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveModelButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveModelButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveModelButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveModelButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveModelButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveModelButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveModelButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveModelButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveModelButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveModelButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveModelButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveModelButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveModelButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveModelButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveModelButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveModelButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveModelButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveModelButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveModelButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveModelButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveModelButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveModelButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveModelButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveModelButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveModelButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveModelButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveModelButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveModelButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveModelButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveModelButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveModelButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveModelButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveModelButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveModelButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveModelButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveModelButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveModelButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveModelButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveModelButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveModelButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveModelButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveModelButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveModelButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveModelButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveModelButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveModelButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveModelButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveModelButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveModelButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveModelButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveModelButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveModelButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveModelButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveModelButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveModelButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveModelButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveModelButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveModelButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveModelButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveModelButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveModelButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveModelButtonMethod t ModelButton, O.MethodInfo info ModelButton p) => OL.IsLabel t (ModelButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "active"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #active
-- @
getModelButtonActive :: (MonadIO m, IsModelButton o) => o -> m Bool
getModelButtonActive obj = liftIO $ B.Properties.getObjectPropertyBool obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonActive :: (MonadIO m, IsModelButton o) => o -> Bool -> m ()
setModelButtonActive obj val = liftIO $ B.Properties.setObjectPropertyBool obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonActive :: (IsModelButton o) => Bool -> IO (GValueConstruct o)
constructModelButtonActive val = B.Properties.constructObjectPropertyBool "active" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonActivePropertyInfo
instance AttrInfo ModelButtonActivePropertyInfo where
    type AttrAllowedOps ModelButtonActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonActivePropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonActivePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ModelButtonActivePropertyInfo = (~) Bool
    type AttrTransferType ModelButtonActivePropertyInfo = Bool
    type AttrGetType ModelButtonActivePropertyInfo = Bool
    type AttrLabel ModelButtonActivePropertyInfo = "active"
    type AttrOrigin ModelButtonActivePropertyInfo = ModelButton
    attrGet = getModelButtonActive
    attrSet = setModelButtonActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonActive
    attrClear = undefined
#endif

-- VVV Prop "centered"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@centered@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #centered
-- @
getModelButtonCentered :: (MonadIO m, IsModelButton o) => o -> m Bool
getModelButtonCentered obj = liftIO $ B.Properties.getObjectPropertyBool obj "centered"

-- | Set the value of the “@centered@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #centered 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonCentered :: (MonadIO m, IsModelButton o) => o -> Bool -> m ()
setModelButtonCentered obj val = liftIO $ B.Properties.setObjectPropertyBool obj "centered" val

-- | Construct a `GValueConstruct` with valid value for the “@centered@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonCentered :: (IsModelButton o) => Bool -> IO (GValueConstruct o)
constructModelButtonCentered val = B.Properties.constructObjectPropertyBool "centered" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonCenteredPropertyInfo
instance AttrInfo ModelButtonCenteredPropertyInfo where
    type AttrAllowedOps ModelButtonCenteredPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonCenteredPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonCenteredPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ModelButtonCenteredPropertyInfo = (~) Bool
    type AttrTransferType ModelButtonCenteredPropertyInfo = Bool
    type AttrGetType ModelButtonCenteredPropertyInfo = Bool
    type AttrLabel ModelButtonCenteredPropertyInfo = "centered"
    type AttrOrigin ModelButtonCenteredPropertyInfo = ModelButton
    attrGet = getModelButtonCentered
    attrSet = setModelButtonCentered
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonCentered
    attrClear = undefined
#endif

-- VVV Prop "icon"
   -- Type: TInterface (Name {namespace = "Gio", name = "Icon"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@icon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #icon
-- @
getModelButtonIcon :: (MonadIO m, IsModelButton o) => o -> m (Maybe Gio.Icon.Icon)
getModelButtonIcon obj = liftIO $ B.Properties.getObjectPropertyObject obj "icon" Gio.Icon.Icon

-- | Set the value of the “@icon@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #icon 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonIcon :: (MonadIO m, IsModelButton o, Gio.Icon.IsIcon a) => o -> a -> m ()
setModelButtonIcon obj val = liftIO $ B.Properties.setObjectPropertyObject obj "icon" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@icon@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonIcon :: (IsModelButton o, Gio.Icon.IsIcon a) => a -> IO (GValueConstruct o)
constructModelButtonIcon val = B.Properties.constructObjectPropertyObject "icon" (Just val)

-- | Set the value of the “@icon@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #icon
-- @
clearModelButtonIcon :: (MonadIO m, IsModelButton o) => o -> m ()
clearModelButtonIcon obj = liftIO $ B.Properties.setObjectPropertyObject obj "icon" (Nothing :: Maybe Gio.Icon.Icon)

#if defined(ENABLE_OVERLOADING)
data ModelButtonIconPropertyInfo
instance AttrInfo ModelButtonIconPropertyInfo where
    type AttrAllowedOps ModelButtonIconPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ModelButtonIconPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonIconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferTypeConstraint ModelButtonIconPropertyInfo = Gio.Icon.IsIcon
    type AttrTransferType ModelButtonIconPropertyInfo = Gio.Icon.Icon
    type AttrGetType ModelButtonIconPropertyInfo = (Maybe Gio.Icon.Icon)
    type AttrLabel ModelButtonIconPropertyInfo = "icon"
    type AttrOrigin ModelButtonIconPropertyInfo = ModelButton
    attrGet = getModelButtonIcon
    attrSet = setModelButtonIcon
    attrTransfer _ v = do
        unsafeCastTo Gio.Icon.Icon v
    attrConstruct = constructModelButtonIcon
    attrClear = clearModelButtonIcon
#endif

-- VVV Prop "iconic"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@iconic@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #iconic
-- @
getModelButtonIconic :: (MonadIO m, IsModelButton o) => o -> m Bool
getModelButtonIconic obj = liftIO $ B.Properties.getObjectPropertyBool obj "iconic"

-- | Set the value of the “@iconic@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #iconic 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonIconic :: (MonadIO m, IsModelButton o) => o -> Bool -> m ()
setModelButtonIconic obj val = liftIO $ B.Properties.setObjectPropertyBool obj "iconic" val

-- | Construct a `GValueConstruct` with valid value for the “@iconic@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonIconic :: (IsModelButton o) => Bool -> IO (GValueConstruct o)
constructModelButtonIconic val = B.Properties.constructObjectPropertyBool "iconic" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonIconicPropertyInfo
instance AttrInfo ModelButtonIconicPropertyInfo where
    type AttrAllowedOps ModelButtonIconicPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonIconicPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonIconicPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ModelButtonIconicPropertyInfo = (~) Bool
    type AttrTransferType ModelButtonIconicPropertyInfo = Bool
    type AttrGetType ModelButtonIconicPropertyInfo = Bool
    type AttrLabel ModelButtonIconicPropertyInfo = "iconic"
    type AttrOrigin ModelButtonIconicPropertyInfo = ModelButton
    attrGet = getModelButtonIconic
    attrSet = setModelButtonIconic
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonIconic
    attrClear = undefined
#endif

-- VVV Prop "inverted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #inverted
-- @
getModelButtonInverted :: (MonadIO m, IsModelButton o) => o -> m Bool
getModelButtonInverted obj = liftIO $ B.Properties.getObjectPropertyBool obj "inverted"

-- | Set the value of the “@inverted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #inverted 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonInverted :: (MonadIO m, IsModelButton o) => o -> Bool -> m ()
setModelButtonInverted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "inverted" val

-- | Construct a `GValueConstruct` with valid value for the “@inverted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonInverted :: (IsModelButton o) => Bool -> IO (GValueConstruct o)
constructModelButtonInverted val = B.Properties.constructObjectPropertyBool "inverted" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonInvertedPropertyInfo
instance AttrInfo ModelButtonInvertedPropertyInfo where
    type AttrAllowedOps ModelButtonInvertedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonInvertedPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonInvertedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ModelButtonInvertedPropertyInfo = (~) Bool
    type AttrTransferType ModelButtonInvertedPropertyInfo = Bool
    type AttrGetType ModelButtonInvertedPropertyInfo = Bool
    type AttrLabel ModelButtonInvertedPropertyInfo = "inverted"
    type AttrOrigin ModelButtonInvertedPropertyInfo = ModelButton
    attrGet = getModelButtonInverted
    attrSet = setModelButtonInverted
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonInverted
    attrClear = undefined
#endif

-- VVV Prop "menu-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@menu-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #menuName
-- @
getModelButtonMenuName :: (MonadIO m, IsModelButton o) => o -> m (Maybe T.Text)
getModelButtonMenuName obj = liftIO $ B.Properties.getObjectPropertyString obj "menu-name"

-- | Set the value of the “@menu-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #menuName 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonMenuName :: (MonadIO m, IsModelButton o) => o -> T.Text -> m ()
setModelButtonMenuName obj val = liftIO $ B.Properties.setObjectPropertyString obj "menu-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@menu-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonMenuName :: (IsModelButton o) => T.Text -> IO (GValueConstruct o)
constructModelButtonMenuName val = B.Properties.constructObjectPropertyString "menu-name" (Just val)

-- | Set the value of the “@menu-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #menuName
-- @
clearModelButtonMenuName :: (MonadIO m, IsModelButton o) => o -> m ()
clearModelButtonMenuName obj = liftIO $ B.Properties.setObjectPropertyString obj "menu-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ModelButtonMenuNamePropertyInfo
instance AttrInfo ModelButtonMenuNamePropertyInfo where
    type AttrAllowedOps ModelButtonMenuNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ModelButtonMenuNamePropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonMenuNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ModelButtonMenuNamePropertyInfo = (~) T.Text
    type AttrTransferType ModelButtonMenuNamePropertyInfo = T.Text
    type AttrGetType ModelButtonMenuNamePropertyInfo = (Maybe T.Text)
    type AttrLabel ModelButtonMenuNamePropertyInfo = "menu-name"
    type AttrOrigin ModelButtonMenuNamePropertyInfo = ModelButton
    attrGet = getModelButtonMenuName
    attrSet = setModelButtonMenuName
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonMenuName
    attrClear = clearModelButtonMenuName
#endif

-- VVV Prop "role"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ButtonRole"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@role@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #role
-- @
getModelButtonRole :: (MonadIO m, IsModelButton o) => o -> m Gtk.Enums.ButtonRole
getModelButtonRole obj = liftIO $ B.Properties.getObjectPropertyEnum obj "role"

-- | Set the value of the “@role@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #role 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonRole :: (MonadIO m, IsModelButton o) => o -> Gtk.Enums.ButtonRole -> m ()
setModelButtonRole obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "role" val

-- | Construct a `GValueConstruct` with valid value for the “@role@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonRole :: (IsModelButton o) => Gtk.Enums.ButtonRole -> IO (GValueConstruct o)
constructModelButtonRole val = B.Properties.constructObjectPropertyEnum "role" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonRolePropertyInfo
instance AttrInfo ModelButtonRolePropertyInfo where
    type AttrAllowedOps ModelButtonRolePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonRolePropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonRolePropertyInfo = (~) Gtk.Enums.ButtonRole
    type AttrTransferTypeConstraint ModelButtonRolePropertyInfo = (~) Gtk.Enums.ButtonRole
    type AttrTransferType ModelButtonRolePropertyInfo = Gtk.Enums.ButtonRole
    type AttrGetType ModelButtonRolePropertyInfo = Gtk.Enums.ButtonRole
    type AttrLabel ModelButtonRolePropertyInfo = "role"
    type AttrOrigin ModelButtonRolePropertyInfo = ModelButton
    attrGet = getModelButtonRole
    attrSet = setModelButtonRole
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonRole
    attrClear = undefined
#endif

-- VVV Prop "text"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #text
-- @
getModelButtonText :: (MonadIO m, IsModelButton o) => o -> m (Maybe T.Text)
getModelButtonText obj = liftIO $ B.Properties.getObjectPropertyString obj "text"

-- | Set the value of the “@text@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #text 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonText :: (MonadIO m, IsModelButton o) => o -> T.Text -> m ()
setModelButtonText obj val = liftIO $ B.Properties.setObjectPropertyString obj "text" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@text@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonText :: (IsModelButton o) => T.Text -> IO (GValueConstruct o)
constructModelButtonText val = B.Properties.constructObjectPropertyString "text" (Just val)

-- | Set the value of the “@text@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #text
-- @
clearModelButtonText :: (MonadIO m, IsModelButton o) => o -> m ()
clearModelButtonText obj = liftIO $ B.Properties.setObjectPropertyString obj "text" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ModelButtonTextPropertyInfo
instance AttrInfo ModelButtonTextPropertyInfo where
    type AttrAllowedOps ModelButtonTextPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ModelButtonTextPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonTextPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ModelButtonTextPropertyInfo = (~) T.Text
    type AttrTransferType ModelButtonTextPropertyInfo = T.Text
    type AttrGetType ModelButtonTextPropertyInfo = (Maybe T.Text)
    type AttrLabel ModelButtonTextPropertyInfo = "text"
    type AttrOrigin ModelButtonTextPropertyInfo = ModelButton
    attrGet = getModelButtonText
    attrSet = setModelButtonText
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonText
    attrClear = clearModelButtonText
#endif

-- VVV Prop "use-markup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' modelButton #useMarkup
-- @
getModelButtonUseMarkup :: (MonadIO m, IsModelButton o) => o -> m Bool
getModelButtonUseMarkup obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-markup"

-- | Set the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' modelButton [ #useMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setModelButtonUseMarkup :: (MonadIO m, IsModelButton o) => o -> Bool -> m ()
setModelButtonUseMarkup obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-markup" val

-- | Construct a `GValueConstruct` with valid value for the “@use-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructModelButtonUseMarkup :: (IsModelButton o) => Bool -> IO (GValueConstruct o)
constructModelButtonUseMarkup val = B.Properties.constructObjectPropertyBool "use-markup" val

#if defined(ENABLE_OVERLOADING)
data ModelButtonUseMarkupPropertyInfo
instance AttrInfo ModelButtonUseMarkupPropertyInfo where
    type AttrAllowedOps ModelButtonUseMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ModelButtonUseMarkupPropertyInfo = IsModelButton
    type AttrSetTypeConstraint ModelButtonUseMarkupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ModelButtonUseMarkupPropertyInfo = (~) Bool
    type AttrTransferType ModelButtonUseMarkupPropertyInfo = Bool
    type AttrGetType ModelButtonUseMarkupPropertyInfo = Bool
    type AttrLabel ModelButtonUseMarkupPropertyInfo = "use-markup"
    type AttrOrigin ModelButtonUseMarkupPropertyInfo = ModelButton
    attrGet = getModelButtonUseMarkup
    attrSet = setModelButtonUseMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructModelButtonUseMarkup
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ModelButton
type instance O.AttributeList ModelButton = ModelButtonAttributeList
type ModelButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", ModelButtonActivePropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("centered", ModelButtonCenteredPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("icon", ModelButtonIconPropertyInfo), '("iconic", ModelButtonIconicPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("inverted", ModelButtonInvertedPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("menuName", ModelButtonMenuNamePropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", ModelButtonRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("text", ModelButtonTextPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useMarkup", ModelButtonUseMarkupPropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
modelButtonActive :: AttrLabelProxy "active"
modelButtonActive = AttrLabelProxy

modelButtonCentered :: AttrLabelProxy "centered"
modelButtonCentered = AttrLabelProxy

modelButtonIcon :: AttrLabelProxy "icon"
modelButtonIcon = AttrLabelProxy

modelButtonIconic :: AttrLabelProxy "iconic"
modelButtonIconic = AttrLabelProxy

modelButtonInverted :: AttrLabelProxy "inverted"
modelButtonInverted = AttrLabelProxy

modelButtonMenuName :: AttrLabelProxy "menuName"
modelButtonMenuName = AttrLabelProxy

modelButtonRole :: AttrLabelProxy "role"
modelButtonRole = AttrLabelProxy

modelButtonText :: AttrLabelProxy "text"
modelButtonText = AttrLabelProxy

modelButtonUseMarkup :: AttrLabelProxy "useMarkup"
modelButtonUseMarkup = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ModelButton = ModelButtonSignalList
type ModelButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ModelButton::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ModelButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_model_button_new" gtk_model_button_new :: 
    IO (Ptr ModelButton)

-- | Creates a new GtkModelButton.
-- 
-- /Since: 3.16/
modelButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ModelButton
    -- ^ __Returns:__ the newly created t'GI.Gtk.Objects.ModelButton.ModelButton' widget
modelButtonNew  = liftIO $ do
    result <- gtk_model_button_new
    checkUnexpectedReturnNULL "modelButtonNew" result
    result' <- (newObject ModelButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

