{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A single radio button performs the same basic function as a t'GI.Gtk.Objects.CheckButton.CheckButton',
-- as its position in the object hierarchy reflects. It is only when multiple
-- radio buttons are grouped together that they become a different user
-- interface component in their own right.
-- 
-- Every radio button is a member of some group of radio buttons. When one is
-- selected, all other radio buttons in the same group are deselected. A
-- t'GI.Gtk.Objects.RadioButton.RadioButton' is one way of giving the user a choice from many options.
-- 
-- Radio button widgets are created with 'GI.Gtk.Objects.RadioButton.radioButtonNew', passing 'P.Nothing'
-- as the argument if this is the first radio button in a group. In subsequent
-- calls, the group you wish to add this button to should be passed as an
-- argument. Optionally, 'GI.Gtk.Objects.RadioButton.radioButtonNewWithLabel' can be used if you
-- want a text label on the radio button.
-- 
-- Alternatively, when adding widgets to an existing group of radio buttons,
-- use 'GI.Gtk.Objects.RadioButton.radioButtonNewFromWidget' with a t'GI.Gtk.Objects.RadioButton.RadioButton' that already
-- has a group assigned to it. The convenience function
-- 'GI.Gtk.Objects.RadioButton.radioButtonNewWithLabelFromWidget' is also provided.
-- 
-- To retrieve the group a t'GI.Gtk.Objects.RadioButton.RadioButton' is assigned to, use
-- 'GI.Gtk.Objects.RadioButton.radioButtonGetGroup'.
-- 
-- To remove a t'GI.Gtk.Objects.RadioButton.RadioButton' from one group and make it part of a new one,
-- use 'GI.Gtk.Objects.RadioButton.radioButtonSetGroup'.
-- 
-- The group list does not need to be freed, as each t'GI.Gtk.Objects.RadioButton.RadioButton' will remove
-- itself and its list item when it is destroyed.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >radiobutton
-- >├── radio
-- >╰── <child>
-- 
-- 
-- A GtkRadioButton with indicator (see 'GI.Gtk.Objects.ToggleButton.toggleButtonSetMode') has a
-- main CSS node with name radiobutton and a subnode with name radio.
-- 
-- 
-- === /plain code/
-- >
-- >button.radio
-- >├── radio
-- >╰── <child>
-- 
-- 
-- A GtkRadioButton without indicator changes the name of its main node
-- to button and adds a .radio style class to it. The subnode is invisible
-- in this case.
-- 
-- == How to create a group of two radio buttons.
-- 
-- 
-- === /C code/
-- >
-- >void create_radio_buttons (void) {
-- >
-- >   GtkWidget *window, *radio1, *radio2, *box, *entry;
-- >   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-- >   box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 2);
-- >   gtk_box_set_homogeneous (GTK_BOX (box), TRUE);
-- >
-- >   // Create a radio button with a GtkEntry widget
-- >   radio1 = gtk_radio_button_new (NULL);
-- >   entry = gtk_entry_new ();
-- >   gtk_container_add (GTK_CONTAINER (radio1), entry);
-- >
-- >
-- >   // Create a radio button with a label
-- >   radio2 = gtk_radio_button_new_with_label_from_widget (GTK_RADIO_BUTTON (radio1),
-- >                                                         "I’m the second radio button.");
-- >
-- >   // Pack them into a box, then show all the widgets
-- >   gtk_box_pack_start (GTK_BOX (box), radio1);
-- >   gtk_box_pack_start (GTK_BOX (box), radio2);
-- >   gtk_container_add (GTK_CONTAINER (window), box);
-- >   gtk_widget_show_all (window);
-- >   return;
-- >}
-- 
-- 
-- When an unselected button in the group is clicked the clicked button
-- receives the [toggled]("GI.Gtk.Objects.ToggleButton#signal:toggled") signal, as does the previously
-- selected button.
-- Inside the [toggled]("GI.Gtk.Objects.ToggleButton#signal:toggled") handler, 'GI.Gtk.Objects.ToggleButton.toggleButtonGetActive'
-- can be used to determine if the button has been selected or deselected.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.RadioButton
    ( 

-- * Exported types
    RadioButton(..)                         ,
    IsRadioButton                           ,
    toRadioButton                           ,
    noRadioButton                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRadioButtonMethod                ,
#endif


-- ** getGroup #method:getGroup#

#if defined(ENABLE_OVERLOADING)
    RadioButtonGetGroupMethodInfo           ,
#endif
    radioButtonGetGroup                     ,


-- ** joinGroup #method:joinGroup#

#if defined(ENABLE_OVERLOADING)
    RadioButtonJoinGroupMethodInfo          ,
#endif
    radioButtonJoinGroup                    ,


-- ** new #method:new#

    radioButtonNew                          ,


-- ** newFromWidget #method:newFromWidget#

    radioButtonNewFromWidget                ,


-- ** newWithLabel #method:newWithLabel#

    radioButtonNewWithLabel                 ,


-- ** newWithLabelFromWidget #method:newWithLabelFromWidget#

    radioButtonNewWithLabelFromWidget       ,


-- ** newWithMnemonic #method:newWithMnemonic#

    radioButtonNewWithMnemonic              ,


-- ** newWithMnemonicFromWidget #method:newWithMnemonicFromWidget#

    radioButtonNewWithMnemonicFromWidget    ,


-- ** setGroup #method:setGroup#

#if defined(ENABLE_OVERLOADING)
    RadioButtonSetGroupMethodInfo           ,
#endif
    radioButtonSetGroup                     ,




 -- * Properties
-- ** group #attr:group#
-- | Sets a new group for a radio button.

#if defined(ENABLE_OVERLOADING)
    RadioButtonGroupPropertyInfo            ,
#endif
    clearRadioButtonGroup                   ,
    constructRadioButtonGroup               ,
#if defined(ENABLE_OVERLOADING)
    radioButtonGroup                        ,
#endif
    setRadioButtonGroup                     ,




 -- * Signals
-- ** groupChanged #signal:groupChanged#

    C_RadioButtonGroupChangedCallback       ,
    RadioButtonGroupChangedCallback         ,
#if defined(ENABLE_OVERLOADING)
    RadioButtonGroupChangedSignalInfo       ,
#endif
    afterRadioButtonGroupChanged            ,
    genClosure_RadioButtonGroupChanged      ,
    mk_RadioButtonGroupChangedCallback      ,
    noRadioButtonGroupChangedCallback       ,
    onRadioButtonGroupChanged               ,
    wrap_RadioButtonGroupChangedCallback    ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.CheckButton as Gtk.CheckButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.ToggleButton as Gtk.ToggleButton
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype RadioButton = RadioButton (ManagedPtr RadioButton)
    deriving (Eq)
foreign import ccall "gtk_radio_button_get_type"
    c_gtk_radio_button_get_type :: IO GType

instance GObject RadioButton where
    gobjectType = c_gtk_radio_button_get_type
    

-- | Convert 'RadioButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RadioButton where
    toGValue o = do
        gtype <- c_gtk_radio_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RadioButton)
        B.ManagedPtr.newObject RadioButton ptr
        
    

-- | Type class for types which can be safely cast to `RadioButton`, for instance with `toRadioButton`.
class (GObject o, O.IsDescendantOf RadioButton o) => IsRadioButton o
instance (GObject o, O.IsDescendantOf RadioButton o) => IsRadioButton o

instance O.HasParentTypes RadioButton
type instance O.ParentTypes RadioButton = '[Gtk.CheckButton.CheckButton, Gtk.ToggleButton.ToggleButton, Gtk.Button.Button, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Actionable.Actionable, Gtk.Activatable.Activatable, Gtk.Buildable.Buildable]

-- | Cast to `RadioButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRadioButton :: (MonadIO m, IsRadioButton o) => o -> m RadioButton
toRadioButton = liftIO . unsafeCastTo RadioButton

-- | A convenience alias for `Nothing` :: `Maybe` `RadioButton`.
noRadioButton :: Maybe RadioButton
noRadioButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRadioButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveRadioButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveRadioButtonMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveRadioButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveRadioButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveRadioButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveRadioButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveRadioButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveRadioButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveRadioButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRadioButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRadioButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveRadioButtonMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveRadioButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveRadioButtonMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveRadioButtonMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveRadioButtonMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveRadioButtonMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveRadioButtonMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveRadioButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveRadioButtonMethod "clicked" o = Gtk.Button.ButtonClickedMethodInfo
    ResolveRadioButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveRadioButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveRadioButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveRadioButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveRadioButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveRadioButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveRadioButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveRadioButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveRadioButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveRadioButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveRadioButtonMethod "doSetRelatedAction" o = Gtk.Activatable.ActivatableDoSetRelatedActionMethodInfo
    ResolveRadioButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveRadioButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveRadioButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveRadioButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveRadioButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveRadioButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveRadioButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveRadioButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveRadioButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveRadioButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveRadioButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveRadioButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveRadioButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveRadioButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveRadioButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveRadioButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveRadioButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveRadioButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveRadioButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveRadioButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveRadioButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveRadioButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveRadioButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveRadioButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveRadioButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveRadioButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveRadioButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveRadioButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveRadioButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveRadioButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveRadioButtonMethod "enter" o = Gtk.Button.ButtonEnterMethodInfo
    ResolveRadioButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveRadioButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveRadioButtonMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveRadioButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRadioButtonMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveRadioButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveRadioButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRadioButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRadioButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveRadioButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveRadioButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveRadioButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveRadioButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveRadioButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveRadioButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveRadioButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveRadioButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveRadioButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveRadioButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveRadioButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveRadioButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveRadioButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveRadioButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveRadioButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveRadioButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveRadioButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveRadioButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveRadioButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveRadioButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRadioButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveRadioButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveRadioButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveRadioButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveRadioButtonMethod "joinGroup" o = RadioButtonJoinGroupMethodInfo
    ResolveRadioButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveRadioButtonMethod "leave" o = Gtk.Button.ButtonLeaveMethodInfo
    ResolveRadioButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveRadioButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveRadioButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveRadioButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveRadioButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveRadioButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveRadioButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveRadioButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveRadioButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveRadioButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveRadioButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveRadioButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveRadioButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRadioButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRadioButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveRadioButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveRadioButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveRadioButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveRadioButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveRadioButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveRadioButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveRadioButtonMethod "pressed" o = Gtk.Button.ButtonPressedMethodInfo
    ResolveRadioButtonMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveRadioButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveRadioButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveRadioButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveRadioButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveRadioButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveRadioButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveRadioButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveRadioButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveRadioButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRadioButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRadioButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveRadioButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveRadioButtonMethod "released" o = Gtk.Button.ButtonReleasedMethodInfo
    ResolveRadioButtonMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveRadioButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveRadioButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveRadioButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveRadioButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveRadioButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveRadioButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveRadioButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveRadioButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveRadioButtonMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveRadioButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRadioButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveRadioButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveRadioButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveRadioButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveRadioButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveRadioButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveRadioButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveRadioButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveRadioButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveRadioButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRadioButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRadioButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveRadioButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveRadioButtonMethod "syncActionProperties" o = Gtk.Activatable.ActivatableSyncActionPropertiesMethodInfo
    ResolveRadioButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveRadioButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRadioButtonMethod "toggled" o = Gtk.ToggleButton.ToggleButtonToggledMethodInfo
    ResolveRadioButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveRadioButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveRadioButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveRadioButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveRadioButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveRadioButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRadioButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveRadioButtonMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveRadioButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveRadioButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRadioButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveRadioButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveRadioButtonMethod "getActionName" o = Gtk.Actionable.ActionableGetActionNameMethodInfo
    ResolveRadioButtonMethod "getActionTargetValue" o = Gtk.Actionable.ActionableGetActionTargetValueMethodInfo
    ResolveRadioButtonMethod "getActive" o = Gtk.ToggleButton.ToggleButtonGetActiveMethodInfo
    ResolveRadioButtonMethod "getAlignment" o = Gtk.Button.ButtonGetAlignmentMethodInfo
    ResolveRadioButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveRadioButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveRadioButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveRadioButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveRadioButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveRadioButtonMethod "getAlwaysShowImage" o = Gtk.Button.ButtonGetAlwaysShowImageMethodInfo
    ResolveRadioButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveRadioButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveRadioButtonMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveRadioButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveRadioButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveRadioButtonMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveRadioButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveRadioButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveRadioButtonMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveRadioButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveRadioButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveRadioButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveRadioButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRadioButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveRadioButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveRadioButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveRadioButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveRadioButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveRadioButtonMethod "getEventWindow" o = Gtk.Button.ButtonGetEventWindowMethodInfo
    ResolveRadioButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveRadioButtonMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveRadioButtonMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveRadioButtonMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveRadioButtonMethod "getFocusOnClick" o = Gtk.Button.ButtonGetFocusOnClickMethodInfo
    ResolveRadioButtonMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveRadioButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveRadioButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveRadioButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveRadioButtonMethod "getGroup" o = RadioButtonGetGroupMethodInfo
    ResolveRadioButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveRadioButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveRadioButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveRadioButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveRadioButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveRadioButtonMethod "getImage" o = Gtk.Button.ButtonGetImageMethodInfo
    ResolveRadioButtonMethod "getImagePosition" o = Gtk.Button.ButtonGetImagePositionMethodInfo
    ResolveRadioButtonMethod "getInconsistent" o = Gtk.ToggleButton.ToggleButtonGetInconsistentMethodInfo
    ResolveRadioButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveRadioButtonMethod "getLabel" o = Gtk.Button.ButtonGetLabelMethodInfo
    ResolveRadioButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveRadioButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveRadioButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveRadioButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveRadioButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveRadioButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveRadioButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveRadioButtonMethod "getMode" o = Gtk.ToggleButton.ToggleButtonGetModeMethodInfo
    ResolveRadioButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveRadioButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveRadioButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveRadioButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveRadioButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveRadioButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveRadioButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveRadioButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveRadioButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveRadioButtonMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveRadioButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveRadioButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveRadioButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveRadioButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveRadioButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveRadioButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveRadioButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveRadioButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRadioButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRadioButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveRadioButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveRadioButtonMethod "getRelatedAction" o = Gtk.Activatable.ActivatableGetRelatedActionMethodInfo
    ResolveRadioButtonMethod "getRelief" o = Gtk.Button.ButtonGetReliefMethodInfo
    ResolveRadioButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveRadioButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveRadioButtonMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveRadioButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveRadioButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveRadioButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveRadioButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveRadioButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveRadioButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveRadioButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveRadioButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveRadioButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveRadioButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveRadioButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveRadioButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveRadioButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveRadioButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveRadioButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveRadioButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveRadioButtonMethod "getUseActionAppearance" o = Gtk.Activatable.ActivatableGetUseActionAppearanceMethodInfo
    ResolveRadioButtonMethod "getUseStock" o = Gtk.Button.ButtonGetUseStockMethodInfo
    ResolveRadioButtonMethod "getUseUnderline" o = Gtk.Button.ButtonGetUseUnderlineMethodInfo
    ResolveRadioButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveRadioButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveRadioButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveRadioButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveRadioButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveRadioButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveRadioButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveRadioButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveRadioButtonMethod "setActionName" o = Gtk.Actionable.ActionableSetActionNameMethodInfo
    ResolveRadioButtonMethod "setActionTargetValue" o = Gtk.Actionable.ActionableSetActionTargetValueMethodInfo
    ResolveRadioButtonMethod "setActive" o = Gtk.ToggleButton.ToggleButtonSetActiveMethodInfo
    ResolveRadioButtonMethod "setAlignment" o = Gtk.Button.ButtonSetAlignmentMethodInfo
    ResolveRadioButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveRadioButtonMethod "setAlwaysShowImage" o = Gtk.Button.ButtonSetAlwaysShowImageMethodInfo
    ResolveRadioButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveRadioButtonMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveRadioButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveRadioButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveRadioButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveRadioButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveRadioButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveRadioButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveRadioButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRadioButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRadioButtonMethod "setDetailedActionName" o = Gtk.Actionable.ActionableSetDetailedActionNameMethodInfo
    ResolveRadioButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveRadioButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveRadioButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveRadioButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveRadioButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveRadioButtonMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveRadioButtonMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveRadioButtonMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveRadioButtonMethod "setFocusOnClick" o = Gtk.Button.ButtonSetFocusOnClickMethodInfo
    ResolveRadioButtonMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveRadioButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveRadioButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveRadioButtonMethod "setGroup" o = RadioButtonSetGroupMethodInfo
    ResolveRadioButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveRadioButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveRadioButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveRadioButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveRadioButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveRadioButtonMethod "setImage" o = Gtk.Button.ButtonSetImageMethodInfo
    ResolveRadioButtonMethod "setImagePosition" o = Gtk.Button.ButtonSetImagePositionMethodInfo
    ResolveRadioButtonMethod "setInconsistent" o = Gtk.ToggleButton.ToggleButtonSetInconsistentMethodInfo
    ResolveRadioButtonMethod "setLabel" o = Gtk.Button.ButtonSetLabelMethodInfo
    ResolveRadioButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveRadioButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveRadioButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveRadioButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveRadioButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveRadioButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveRadioButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveRadioButtonMethod "setMode" o = Gtk.ToggleButton.ToggleButtonSetModeMethodInfo
    ResolveRadioButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveRadioButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveRadioButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveRadioButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveRadioButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveRadioButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRadioButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveRadioButtonMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveRadioButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveRadioButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveRadioButtonMethod "setRelatedAction" o = Gtk.Activatable.ActivatableSetRelatedActionMethodInfo
    ResolveRadioButtonMethod "setRelief" o = Gtk.Button.ButtonSetReliefMethodInfo
    ResolveRadioButtonMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveRadioButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveRadioButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveRadioButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveRadioButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveRadioButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveRadioButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveRadioButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveRadioButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveRadioButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveRadioButtonMethod "setUseActionAppearance" o = Gtk.Activatable.ActivatableSetUseActionAppearanceMethodInfo
    ResolveRadioButtonMethod "setUseStock" o = Gtk.Button.ButtonSetUseStockMethodInfo
    ResolveRadioButtonMethod "setUseUnderline" o = Gtk.Button.ButtonSetUseUnderlineMethodInfo
    ResolveRadioButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveRadioButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveRadioButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveRadioButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveRadioButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveRadioButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveRadioButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRadioButtonMethod t RadioButton, O.MethodInfo info RadioButton p) => OL.IsLabel t (RadioButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal RadioButton::group-changed
-- | Emitted when the group of radio buttons that a radio button belongs
-- to changes. This is emitted when a radio button switches from
-- being alone to being part of a group of 2 or more buttons, or
-- vice-versa, and when a button is moved from one group of 2 or
-- more buttons to a different one, but not when the composition
-- of the group that a button belongs to changes.
-- 
-- /Since: 2.4/
type RadioButtonGroupChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `RadioButtonGroupChangedCallback`@.
noRadioButtonGroupChangedCallback :: Maybe RadioButtonGroupChangedCallback
noRadioButtonGroupChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_RadioButtonGroupChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_RadioButtonGroupChangedCallback`.
foreign import ccall "wrapper"
    mk_RadioButtonGroupChangedCallback :: C_RadioButtonGroupChangedCallback -> IO (FunPtr C_RadioButtonGroupChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_RadioButtonGroupChanged :: MonadIO m => RadioButtonGroupChangedCallback -> m (GClosure C_RadioButtonGroupChangedCallback)
genClosure_RadioButtonGroupChanged cb = liftIO $ do
    let cb' = wrap_RadioButtonGroupChangedCallback cb
    mk_RadioButtonGroupChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `RadioButtonGroupChangedCallback` into a `C_RadioButtonGroupChangedCallback`.
wrap_RadioButtonGroupChangedCallback ::
    RadioButtonGroupChangedCallback ->
    C_RadioButtonGroupChangedCallback
wrap_RadioButtonGroupChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [groupChanged](#signal:groupChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' radioButton #groupChanged callback
-- @
-- 
-- 
onRadioButtonGroupChanged :: (IsRadioButton a, MonadIO m) => a -> RadioButtonGroupChangedCallback -> m SignalHandlerId
onRadioButtonGroupChanged obj cb = liftIO $ do
    let cb' = wrap_RadioButtonGroupChangedCallback cb
    cb'' <- mk_RadioButtonGroupChangedCallback cb'
    connectSignalFunPtr obj "group-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [groupChanged](#signal:groupChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' radioButton #groupChanged callback
-- @
-- 
-- 
afterRadioButtonGroupChanged :: (IsRadioButton a, MonadIO m) => a -> RadioButtonGroupChangedCallback -> m SignalHandlerId
afterRadioButtonGroupChanged obj cb = liftIO $ do
    let cb' = wrap_RadioButtonGroupChangedCallback cb
    cb'' <- mk_RadioButtonGroupChangedCallback cb'
    connectSignalFunPtr obj "group-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data RadioButtonGroupChangedSignalInfo
instance SignalInfo RadioButtonGroupChangedSignalInfo where
    type HaskellCallbackType RadioButtonGroupChangedSignalInfo = RadioButtonGroupChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_RadioButtonGroupChangedCallback cb
        cb'' <- mk_RadioButtonGroupChangedCallback cb'
        connectSignalFunPtr obj "group-changed" cb'' connectMode detail

#endif

-- VVV Prop "group"
   -- Type: TInterface (Name {namespace = "Gtk", name = "RadioButton"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@group@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' radioButton [ #group 'Data.GI.Base.Attributes.:=' value ]
-- @
setRadioButtonGroup :: (MonadIO m, IsRadioButton o, IsRadioButton a) => o -> a -> m ()
setRadioButtonGroup obj val = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@group@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRadioButtonGroup :: (IsRadioButton o, IsRadioButton a) => a -> IO (GValueConstruct o)
constructRadioButtonGroup val = B.Properties.constructObjectPropertyObject "group" (Just val)

-- | Set the value of the “@group@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #group
-- @
clearRadioButtonGroup :: (MonadIO m, IsRadioButton o) => o -> m ()
clearRadioButtonGroup obj = liftIO $ B.Properties.setObjectPropertyObject obj "group" (Nothing :: Maybe RadioButton)

#if defined(ENABLE_OVERLOADING)
data RadioButtonGroupPropertyInfo
instance AttrInfo RadioButtonGroupPropertyInfo where
    type AttrAllowedOps RadioButtonGroupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint RadioButtonGroupPropertyInfo = IsRadioButton
    type AttrSetTypeConstraint RadioButtonGroupPropertyInfo = IsRadioButton
    type AttrTransferTypeConstraint RadioButtonGroupPropertyInfo = IsRadioButton
    type AttrTransferType RadioButtonGroupPropertyInfo = RadioButton
    type AttrGetType RadioButtonGroupPropertyInfo = ()
    type AttrLabel RadioButtonGroupPropertyInfo = "group"
    type AttrOrigin RadioButtonGroupPropertyInfo = RadioButton
    attrGet = undefined
    attrSet = setRadioButtonGroup
    attrTransfer _ v = do
        unsafeCastTo RadioButton v
    attrConstruct = constructRadioButtonGroup
    attrClear = clearRadioButtonGroup
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RadioButton
type instance O.AttributeList RadioButton = RadioButtonAttributeList
type RadioButtonAttributeList = ('[ '("actionName", Gtk.Actionable.ActionableActionNamePropertyInfo), '("actionTarget", Gtk.Actionable.ActionableActionTargetPropertyInfo), '("active", Gtk.ToggleButton.ToggleButtonActivePropertyInfo), '("alwaysShowImage", Gtk.Button.ButtonAlwaysShowImagePropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("drawIndicator", Gtk.ToggleButton.ToggleButtonDrawIndicatorPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("group", RadioButtonGroupPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("image", Gtk.Button.ButtonImagePropertyInfo), '("imagePosition", Gtk.Button.ButtonImagePositionPropertyInfo), '("inconsistent", Gtk.ToggleButton.ToggleButtonInconsistentPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", Gtk.Button.ButtonLabelPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relatedAction", Gtk.Activatable.ActivatableRelatedActionPropertyInfo), '("relief", Gtk.Button.ButtonReliefPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useActionAppearance", Gtk.Activatable.ActivatableUseActionAppearancePropertyInfo), '("useStock", Gtk.Button.ButtonUseStockPropertyInfo), '("useUnderline", Gtk.Button.ButtonUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("xalign", Gtk.Button.ButtonXalignPropertyInfo), '("yalign", Gtk.Button.ButtonYalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
radioButtonGroup :: AttrLabelProxy "group"
radioButtonGroup = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RadioButton = RadioButtonSignalList
type RadioButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Button.ButtonActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("clicked", Gtk.Button.ButtonClickedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enter", Gtk.Button.ButtonEnterSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("groupChanged", RadioButtonGroupChangedSignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leave", Gtk.Button.ButtonLeaveSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("pressed", Gtk.Button.ButtonPressedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("released", Gtk.Button.ButtonReleasedSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggled", Gtk.ToggleButton.ToggleButtonToggledSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method RadioButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an existing\n        radio button group, or %NULL if you are creating a new group."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new" gtk_radio_button_new :: 
    Ptr (GSList (Ptr RadioButton)) ->       -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton'. To be of any practical value, a widget should
-- then be packed into the radio button.
radioButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    [a]
    -- ^ /@group@/: an existing
    --         radio button group, or 'P.Nothing' if you are creating a new group.
    -> m RadioButton
    -- ^ __Returns:__ a new radio button
radioButtonNew group = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    result <- gtk_radio_button_new group''
    checkUnexpectedReturnNULL "radioButtonNew" result
    result' <- (newObject RadioButton) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::new_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "radio_group_member"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "an existing #GtkRadioButton."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new_from_widget" gtk_radio_button_new_from_widget :: 
    Ptr RadioButton ->                      -- radio_group_member : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton', adding it to the same group as
-- /@radioGroupMember@/. As with 'GI.Gtk.Objects.RadioButton.radioButtonNew', a widget
-- should be packed into the radio button.
radioButtonNewFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    Maybe (a)
    -- ^ /@radioGroupMember@/: an existing t'GI.Gtk.Objects.RadioButton.RadioButton'.
    -> m RadioButton
    -- ^ __Returns:__ a new radio button.
radioButtonNewFromWidget radioGroupMember = liftIO $ do
    maybeRadioGroupMember <- case radioGroupMember of
        Nothing -> return nullPtr
        Just jRadioGroupMember -> do
            jRadioGroupMember' <- unsafeManagedPtrCastPtr jRadioGroupMember
            return jRadioGroupMember'
    result <- gtk_radio_button_new_from_widget maybeRadioGroupMember
    checkUnexpectedReturnNULL "radioButtonNewFromWidget" result
    result' <- (newObject RadioButton) result
    whenJust radioGroupMember touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::new_with_label
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an existing\n        radio button group, or %NULL if you are creating a new group."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the text label to display next to the radio button."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new_with_label" gtk_radio_button_new_with_label :: 
    Ptr (GSList (Ptr RadioButton)) ->       -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton' with a text label.
radioButtonNewWithLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    [a]
    -- ^ /@group@/: an existing
    --         radio button group, or 'P.Nothing' if you are creating a new group.
    -> T.Text
    -- ^ /@label@/: the text label to display next to the radio button.
    -> m RadioButton
    -- ^ __Returns:__ a new radio button.
radioButtonNewWithLabel group label = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    label' <- textToCString label
    result <- gtk_radio_button_new_with_label group'' label'
    checkUnexpectedReturnNULL "radioButtonNewWithLabel" result
    result' <- (newObject RadioButton) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::new_with_label_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "radio_group_member"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "widget to get radio group from or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a text string to display next to the radio button."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new_with_label_from_widget" gtk_radio_button_new_with_label_from_widget :: 
    Ptr RadioButton ->                      -- radio_group_member : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton' with a text label, adding it to
-- the same group as /@radioGroupMember@/.
radioButtonNewWithLabelFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    Maybe (a)
    -- ^ /@radioGroupMember@/: widget to get radio group from or 'P.Nothing'
    -> T.Text
    -- ^ /@label@/: a text string to display next to the radio button.
    -> m RadioButton
    -- ^ __Returns:__ a new radio button.
radioButtonNewWithLabelFromWidget radioGroupMember label = liftIO $ do
    maybeRadioGroupMember <- case radioGroupMember of
        Nothing -> return nullPtr
        Just jRadioGroupMember -> do
            jRadioGroupMember' <- unsafeManagedPtrCastPtr jRadioGroupMember
            return jRadioGroupMember'
    label' <- textToCString label
    result <- gtk_radio_button_new_with_label_from_widget maybeRadioGroupMember label'
    checkUnexpectedReturnNULL "radioButtonNewWithLabelFromWidget" result
    result' <- (newObject RadioButton) result
    whenJust radioGroupMember touchManagedPtr
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::new_with_mnemonic
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the radio button\n        group, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the button, with an underscore in front of the\n        mnemonic character"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new_with_mnemonic" gtk_radio_button_new_with_mnemonic :: 
    Ptr (GSList (Ptr RadioButton)) ->       -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton' containing a label, adding it to the same
-- group as /@group@/. The label will be created using
-- 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores in /@label@/ indicate the
-- mnemonic for the button.
radioButtonNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    [a]
    -- ^ /@group@/: the radio button
    --         group, or 'P.Nothing'
    -> T.Text
    -- ^ /@label@/: the text of the button, with an underscore in front of the
    --         mnemonic character
    -> m RadioButton
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.RadioButton.RadioButton'
radioButtonNewWithMnemonic group label = liftIO $ do
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    label' <- textToCString label
    result <- gtk_radio_button_new_with_mnemonic group'' label'
    checkUnexpectedReturnNULL "radioButtonNewWithMnemonic" result
    result' <- (newObject RadioButton) result
    mapM_ touchManagedPtr group
    g_slist_free group''
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::new_with_mnemonic_from_widget
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "radio_group_member"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "widget to get radio group from or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the button, with an underscore in front of the\n        mnemonic character"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_new_with_mnemonic_from_widget" gtk_radio_button_new_with_mnemonic_from_widget :: 
    Ptr RadioButton ->                      -- radio_group_member : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr RadioButton)

-- | Creates a new t'GI.Gtk.Objects.RadioButton.RadioButton' containing a label. The label
-- will be created using 'GI.Gtk.Objects.Label.labelNewWithMnemonic', so underscores
-- in /@label@/ indicate the mnemonic for the button.
radioButtonNewWithMnemonicFromWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    Maybe (a)
    -- ^ /@radioGroupMember@/: widget to get radio group from or 'P.Nothing'
    -> T.Text
    -- ^ /@label@/: the text of the button, with an underscore in front of the
    --         mnemonic character
    -> m RadioButton
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.RadioButton.RadioButton'
radioButtonNewWithMnemonicFromWidget radioGroupMember label = liftIO $ do
    maybeRadioGroupMember <- case radioGroupMember of
        Nothing -> return nullPtr
        Just jRadioGroupMember -> do
            jRadioGroupMember' <- unsafeManagedPtrCastPtr jRadioGroupMember
            return jRadioGroupMember'
    label' <- textToCString label
    result <- gtk_radio_button_new_with_mnemonic_from_widget maybeRadioGroupMember label'
    checkUnexpectedReturnNULL "radioButtonNewWithMnemonicFromWidget" result
    result' <- (newObject RadioButton) result
    whenJust radioGroupMember touchManagedPtr
    freeMem label'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method RadioButton::get_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioButton." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TGSList
--                  (TInterface Name { namespace = "Gtk" , name = "RadioButton" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_radio_button_get_group" gtk_radio_button_get_group :: 
    Ptr RadioButton ->                      -- radio_button : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    IO (Ptr (GSList (Ptr RadioButton)))

-- | Retrieves the group assigned to a radio button.
radioButtonGetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a) =>
    a
    -- ^ /@radioButton@/: a t'GI.Gtk.Objects.RadioButton.RadioButton'.
    -> m [RadioButton]
    -- ^ __Returns:__ a linked list
    -- containing all the radio buttons in the same group
    -- as /@radioButton@/. The returned list is owned by the radio button
    -- and must not be modified or freed.
radioButtonGetGroup radioButton = liftIO $ do
    radioButton' <- unsafeManagedPtrCastPtr radioButton
    result <- gtk_radio_button_get_group radioButton'
    result' <- unpackGSList result
    result'' <- mapM (newObject RadioButton) result'
    touchManagedPtr radioButton
    return result''

#if defined(ENABLE_OVERLOADING)
data RadioButtonGetGroupMethodInfo
instance (signature ~ (m [RadioButton]), MonadIO m, IsRadioButton a) => O.MethodInfo RadioButtonGetGroupMethodInfo a signature where
    overloadedMethod = radioButtonGetGroup

#endif

-- method RadioButton::join_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkRadioButton object"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group_source"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a radio button object whos group we are\n  joining, or %NULL to remove the radio button from its group"
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

foreign import ccall "gtk_radio_button_join_group" gtk_radio_button_join_group :: 
    Ptr RadioButton ->                      -- radio_button : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    Ptr RadioButton ->                      -- group_source : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    IO ()

-- | Joins a t'GI.Gtk.Objects.RadioButton.RadioButton' object to the group of another t'GI.Gtk.Objects.RadioButton.RadioButton' object
-- 
-- Use this in language bindings instead of the 'GI.Gtk.Objects.RadioButton.radioButtonGetGroup'
-- and 'GI.Gtk.Objects.RadioButton.radioButtonSetGroup' methods
-- 
-- A common way to set up a group of radio buttons is the following:
-- 
-- === /C code/
-- >
-- >  GtkRadioButton *radio_button;
-- >  GtkRadioButton *last_button;
-- >
-- >  while (some_condition)
-- >    {
-- >       radio_button = gtk_radio_button_new (NULL);
-- >
-- >       gtk_radio_button_join_group (radio_button, last_button);
-- >       last_button = radio_button;
-- >    }
-- 
-- 
-- /Since: 3.0/
radioButtonJoinGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a, IsRadioButton b) =>
    a
    -- ^ /@radioButton@/: the t'GI.Gtk.Objects.RadioButton.RadioButton' object
    -> Maybe (b)
    -- ^ /@groupSource@/: a radio button object whos group we are
    --   joining, or 'P.Nothing' to remove the radio button from its group
    -> m ()
radioButtonJoinGroup radioButton groupSource = liftIO $ do
    radioButton' <- unsafeManagedPtrCastPtr radioButton
    maybeGroupSource <- case groupSource of
        Nothing -> return nullPtr
        Just jGroupSource -> do
            jGroupSource' <- unsafeManagedPtrCastPtr jGroupSource
            return jGroupSource'
    gtk_radio_button_join_group radioButton' maybeGroupSource
    touchManagedPtr radioButton
    whenJust groupSource touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data RadioButtonJoinGroupMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsRadioButton a, IsRadioButton b) => O.MethodInfo RadioButtonJoinGroupMethodInfo a signature where
    overloadedMethod = radioButtonJoinGroup

#endif

-- method RadioButton::set_group
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "radio_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "RadioButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkRadioButton." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group"
--           , argType =
--               TGSList
--                 (TInterface Name { namespace = "Gtk" , name = "RadioButton" })
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "an existing radio\n    button group, such as one returned from gtk_radio_button_get_group(), or %NULL."
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

foreign import ccall "gtk_radio_button_set_group" gtk_radio_button_set_group :: 
    Ptr RadioButton ->                      -- radio_button : TInterface (Name {namespace = "Gtk", name = "RadioButton"})
    Ptr (GSList (Ptr RadioButton)) ->       -- group : TGSList (TInterface (Name {namespace = "Gtk", name = "RadioButton"}))
    IO ()

-- | Sets a t'GI.Gtk.Objects.RadioButton.RadioButton'’s group. It should be noted that this does not change
-- the layout of your interface in any way, so if you are changing the group,
-- it is likely you will need to re-arrange the user interface to reflect these
-- changes.
radioButtonSetGroup ::
    (B.CallStack.HasCallStack, MonadIO m, IsRadioButton a, IsRadioButton b) =>
    a
    -- ^ /@radioButton@/: a t'GI.Gtk.Objects.RadioButton.RadioButton'.
    -> [b]
    -- ^ /@group@/: an existing radio
    --     button group, such as one returned from 'GI.Gtk.Objects.RadioButton.radioButtonGetGroup', or 'P.Nothing'.
    -> m ()
radioButtonSetGroup radioButton group = liftIO $ do
    radioButton' <- unsafeManagedPtrCastPtr radioButton
    group' <- mapM unsafeManagedPtrCastPtr group
    group'' <- packGSList group'
    gtk_radio_button_set_group radioButton' group''
    touchManagedPtr radioButton
    mapM_ touchManagedPtr group
    g_slist_free group''
    return ()

#if defined(ENABLE_OVERLOADING)
data RadioButtonSetGroupMethodInfo
instance (signature ~ ([b] -> m ()), MonadIO m, IsRadioButton a, IsRadioButton b) => O.MethodInfo RadioButtonSetGroupMethodInfo a signature where
    overloadedMethod = radioButtonSetGroup

#endif

