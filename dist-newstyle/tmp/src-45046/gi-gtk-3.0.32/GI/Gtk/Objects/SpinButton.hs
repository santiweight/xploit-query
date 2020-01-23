{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.SpinButton.SpinButton' is an ideal way to allow the user to set the value of
-- some attribute. Rather than having to directly type a number into a
-- t'GI.Gtk.Objects.Entry.Entry', GtkSpinButton allows the user to click on one of two arrows
-- to increment or decrement the displayed value. A value can still be
-- typed in, with the bonus that it can be checked to ensure it is in a
-- given range.
-- 
-- The main properties of a GtkSpinButton are through an adjustment.
-- See the t'GI.Gtk.Objects.Adjustment.Adjustment' section for more details about an adjustment\'s
-- properties. Note that GtkSpinButton will by default make its entry
-- large enough to accomodate the lower and upper bounds of the adjustment,
-- which can lead to surprising results. Best practice is to set both
-- the t'GI.Gtk.Objects.Entry.Entry':@/width-chars/@ and t'GI.Gtk.Objects.Entry.Entry':@/max-width-chars/@ poperties
-- to the desired number of characters to display in the entry.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >spinbutton.horizontal
-- >├── undershoot.left
-- >├── undershoot.right
-- >├── entry
-- >│   ╰── ...
-- >├── button.down
-- >╰── button.up
-- 
-- 
-- 
-- === /plain code/
-- >
-- >spinbutton.vertical
-- >├── undershoot.left
-- >├── undershoot.right
-- >├── button.up
-- >├── entry
-- >│   ╰── ...
-- >╰── button.down
-- 
-- 
-- GtkSpinButtons main CSS node has the name spinbutton. It creates subnodes
-- for the entry and the two buttons, with these names. The button nodes have
-- the style classes .up and .down. The GtkEntry subnodes (if present) are put
-- below the entry node. The orientation of the spin button is reflected in
-- the .vertical or .horizontal style class on the main node.
-- 
-- == Using a GtkSpinButton to get an integer
-- 
-- 
-- === /C code/
-- >
-- >// Provides a function to retrieve an integer value from a GtkSpinButton
-- >// and creates a spin button to model percentage values.
-- >
-- >gint
-- >grab_int_value (GtkSpinButton *button,
-- >                gpointer       user_data)
-- >{
-- >  return gtk_spin_button_get_value_as_int (button);
-- >}
-- >
-- >void
-- >create_integer_spin_button (void)
-- >{
-- >
-- >  GtkWidget *window, *button;
-- >  GtkAdjustment *adjustment;
-- >
-- >  adjustment = gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 0.0);
-- >
-- >  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-- >  gtk_container_set_border_width (GTK_CONTAINER (window), 5);
-- >
-- >  // creates the spinbutton, with no decimal places
-- >  button = gtk_spin_button_new (adjustment, 1.0, 0);
-- >  gtk_container_add (GTK_CONTAINER (window), button);
-- >
-- >  gtk_widget_show_all (window);
-- >}
-- 
-- 
-- == Using a GtkSpinButton to get a floating point value
-- 
-- 
-- === /C code/
-- >
-- >// Provides a function to retrieve a floating point value from a
-- >// GtkSpinButton, and creates a high precision spin button.
-- >
-- >gfloat
-- >grab_float_value (GtkSpinButton *button,
-- >                  gpointer       user_data)
-- >{
-- >  return gtk_spin_button_get_value (button);
-- >}
-- >
-- >void
-- >create_floating_spin_button (void)
-- >{
-- >  GtkWidget *window, *button;
-- >  GtkAdjustment *adjustment;
-- >
-- >  adjustment = gtk_adjustment_new (2.500, 0.0, 5.0, 0.001, 0.1, 0.0);
-- >
-- >  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-- >  gtk_container_set_border_width (GTK_CONTAINER (window), 5);
-- >
-- >  // creates the spinbutton, with three decimal places
-- >  button = gtk_spin_button_new (adjustment, 0.001, 3);
-- >  gtk_container_add (GTK_CONTAINER (window), button);
-- >
-- >  gtk_widget_show_all (window);
-- >}
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.SpinButton
    ( 

-- * Exported types
    SpinButton(..)                          ,
    IsSpinButton                            ,
    toSpinButton                            ,
    noSpinButton                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSpinButtonMethod                 ,
#endif


-- ** configure #method:configure#

#if defined(ENABLE_OVERLOADING)
    SpinButtonConfigureMethodInfo           ,
#endif
    spinButtonConfigure                     ,


-- ** getAdjustment #method:getAdjustment#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetAdjustmentMethodInfo       ,
#endif
    spinButtonGetAdjustment                 ,


-- ** getDigits #method:getDigits#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetDigitsMethodInfo           ,
#endif
    spinButtonGetDigits                     ,


-- ** getIncrements #method:getIncrements#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetIncrementsMethodInfo       ,
#endif
    spinButtonGetIncrements                 ,


-- ** getNumeric #method:getNumeric#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetNumericMethodInfo          ,
#endif
    spinButtonGetNumeric                    ,


-- ** getRange #method:getRange#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetRangeMethodInfo            ,
#endif
    spinButtonGetRange                      ,


-- ** getSnapToTicks #method:getSnapToTicks#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetSnapToTicksMethodInfo      ,
#endif
    spinButtonGetSnapToTicks                ,


-- ** getUpdatePolicy #method:getUpdatePolicy#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetUpdatePolicyMethodInfo     ,
#endif
    spinButtonGetUpdatePolicy               ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetValueMethodInfo            ,
#endif
    spinButtonGetValue                      ,


-- ** getValueAsInt #method:getValueAsInt#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetValueAsIntMethodInfo       ,
#endif
    spinButtonGetValueAsInt                 ,


-- ** getWrap #method:getWrap#

#if defined(ENABLE_OVERLOADING)
    SpinButtonGetWrapMethodInfo             ,
#endif
    spinButtonGetWrap                       ,


-- ** new #method:new#

    spinButtonNew                           ,


-- ** newWithRange #method:newWithRange#

    spinButtonNewWithRange                  ,


-- ** setAdjustment #method:setAdjustment#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetAdjustmentMethodInfo       ,
#endif
    spinButtonSetAdjustment                 ,


-- ** setDigits #method:setDigits#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetDigitsMethodInfo           ,
#endif
    spinButtonSetDigits                     ,


-- ** setIncrements #method:setIncrements#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetIncrementsMethodInfo       ,
#endif
    spinButtonSetIncrements                 ,


-- ** setNumeric #method:setNumeric#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetNumericMethodInfo          ,
#endif
    spinButtonSetNumeric                    ,


-- ** setRange #method:setRange#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetRangeMethodInfo            ,
#endif
    spinButtonSetRange                      ,


-- ** setSnapToTicks #method:setSnapToTicks#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetSnapToTicksMethodInfo      ,
#endif
    spinButtonSetSnapToTicks                ,


-- ** setUpdatePolicy #method:setUpdatePolicy#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetUpdatePolicyMethodInfo     ,
#endif
    spinButtonSetUpdatePolicy               ,


-- ** setValue #method:setValue#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetValueMethodInfo            ,
#endif
    spinButtonSetValue                      ,


-- ** setWrap #method:setWrap#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSetWrapMethodInfo             ,
#endif
    spinButtonSetWrap                       ,


-- ** spin #method:spin#

#if defined(ENABLE_OVERLOADING)
    SpinButtonSpinMethodInfo                ,
#endif
    spinButtonSpin                          ,


-- ** update #method:update#

#if defined(ENABLE_OVERLOADING)
    SpinButtonUpdateMethodInfo              ,
#endif
    spinButtonUpdate                        ,




 -- * Properties
-- ** adjustment #attr:adjustment#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonAdjustmentPropertyInfo        ,
#endif
    constructSpinButtonAdjustment           ,
    getSpinButtonAdjustment                 ,
    setSpinButtonAdjustment                 ,
#if defined(ENABLE_OVERLOADING)
    spinButtonAdjustment                    ,
#endif


-- ** climbRate #attr:climbRate#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonClimbRatePropertyInfo         ,
#endif
    constructSpinButtonClimbRate            ,
    getSpinButtonClimbRate                  ,
    setSpinButtonClimbRate                  ,
#if defined(ENABLE_OVERLOADING)
    spinButtonClimbRate                     ,
#endif


-- ** digits #attr:digits#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonDigitsPropertyInfo            ,
#endif
    constructSpinButtonDigits               ,
    getSpinButtonDigits                     ,
    setSpinButtonDigits                     ,
#if defined(ENABLE_OVERLOADING)
    spinButtonDigits                        ,
#endif


-- ** numeric #attr:numeric#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonNumericPropertyInfo           ,
#endif
    constructSpinButtonNumeric              ,
    getSpinButtonNumeric                    ,
    setSpinButtonNumeric                    ,
#if defined(ENABLE_OVERLOADING)
    spinButtonNumeric                       ,
#endif


-- ** snapToTicks #attr:snapToTicks#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonSnapToTicksPropertyInfo       ,
#endif
    constructSpinButtonSnapToTicks          ,
    getSpinButtonSnapToTicks                ,
    setSpinButtonSnapToTicks                ,
#if defined(ENABLE_OVERLOADING)
    spinButtonSnapToTicks                   ,
#endif


-- ** updatePolicy #attr:updatePolicy#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonUpdatePolicyPropertyInfo      ,
#endif
    constructSpinButtonUpdatePolicy         ,
    getSpinButtonUpdatePolicy               ,
    setSpinButtonUpdatePolicy               ,
#if defined(ENABLE_OVERLOADING)
    spinButtonUpdatePolicy                  ,
#endif


-- ** value #attr:value#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonValuePropertyInfo             ,
#endif
    constructSpinButtonValue                ,
    getSpinButtonValue                      ,
    setSpinButtonValue                      ,
#if defined(ENABLE_OVERLOADING)
    spinButtonValue                         ,
#endif


-- ** wrap #attr:wrap#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SpinButtonWrapPropertyInfo              ,
#endif
    constructSpinButtonWrap                 ,
    getSpinButtonWrap                       ,
    setSpinButtonWrap                       ,
#if defined(ENABLE_OVERLOADING)
    spinButtonWrap                          ,
#endif




 -- * Signals
-- ** changeValue #signal:changeValue#

    C_SpinButtonChangeValueCallback         ,
    SpinButtonChangeValueCallback           ,
#if defined(ENABLE_OVERLOADING)
    SpinButtonChangeValueSignalInfo         ,
#endif
    afterSpinButtonChangeValue              ,
    genClosure_SpinButtonChangeValue        ,
    mk_SpinButtonChangeValueCallback        ,
    noSpinButtonChangeValueCallback         ,
    onSpinButtonChangeValue                 ,
    wrap_SpinButtonChangeValueCallback      ,


-- ** input #signal:input#

    C_SpinButtonInputCallback               ,
    SpinButtonInputCallback                 ,
#if defined(ENABLE_OVERLOADING)
    SpinButtonInputSignalInfo               ,
#endif
    afterSpinButtonInput                    ,
    genClosure_SpinButtonInput              ,
    mk_SpinButtonInputCallback              ,
    noSpinButtonInputCallback               ,
    onSpinButtonInput                       ,
    wrap_SpinButtonInputCallback            ,


-- ** output #signal:output#

    C_SpinButtonOutputCallback              ,
    SpinButtonOutputCallback                ,
#if defined(ENABLE_OVERLOADING)
    SpinButtonOutputSignalInfo              ,
#endif
    afterSpinButtonOutput                   ,
    genClosure_SpinButtonOutput             ,
    mk_SpinButtonOutputCallback             ,
    noSpinButtonOutputCallback              ,
    onSpinButtonOutput                      ,
    wrap_SpinButtonOutputCallback           ,


-- ** valueChanged #signal:valueChanged#

    C_SpinButtonValueChangedCallback        ,
    SpinButtonValueChangedCallback          ,
#if defined(ENABLE_OVERLOADING)
    SpinButtonValueChangedSignalInfo        ,
#endif
    afterSpinButtonValueChanged             ,
    genClosure_SpinButtonValueChanged       ,
    mk_SpinButtonValueChangedCallback       ,
    noSpinButtonValueChangedCallback        ,
    onSpinButtonValueChanged                ,
    wrap_SpinButtonValueChangedCallback     ,


-- ** wrapped #signal:wrapped#

    C_SpinButtonWrappedCallback             ,
    SpinButtonWrappedCallback               ,
#if defined(ENABLE_OVERLOADING)
    SpinButtonWrappedSignalInfo             ,
#endif
    afterSpinButtonWrapped                  ,
    genClosure_SpinButtonWrapped            ,
    mk_SpinButtonWrappedCallback            ,
    noSpinButtonWrappedCallback             ,
    onSpinButtonWrapped                     ,
    wrap_SpinButtonWrappedCallback          ,




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
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellEditable as Gtk.CellEditable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Editable as Gtk.Editable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Entry as Gtk.Entry
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype SpinButton = SpinButton (ManagedPtr SpinButton)
    deriving (Eq)
foreign import ccall "gtk_spin_button_get_type"
    c_gtk_spin_button_get_type :: IO GType

instance GObject SpinButton where
    gobjectType = c_gtk_spin_button_get_type
    

-- | Convert 'SpinButton' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SpinButton where
    toGValue o = do
        gtype <- c_gtk_spin_button_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SpinButton)
        B.ManagedPtr.newObject SpinButton ptr
        
    

-- | Type class for types which can be safely cast to `SpinButton`, for instance with `toSpinButton`.
class (GObject o, O.IsDescendantOf SpinButton o) => IsSpinButton o
instance (GObject o, O.IsDescendantOf SpinButton o) => IsSpinButton o

instance O.HasParentTypes SpinButton
type instance O.ParentTypes SpinButton = '[Gtk.Entry.Entry, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.CellEditable.CellEditable, Gtk.Editable.Editable, Gtk.Orientable.Orientable]

-- | Cast to `SpinButton`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSpinButton :: (MonadIO m, IsSpinButton o) => o -> m SpinButton
toSpinButton = liftIO . unsafeCastTo SpinButton

-- | A convenience alias for `Nothing` :: `Maybe` `SpinButton`.
noSpinButton :: Maybe SpinButton
noSpinButton = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSpinButtonMethod (t :: Symbol) (o :: *) :: * where
    ResolveSpinButtonMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveSpinButtonMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveSpinButtonMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveSpinButtonMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveSpinButtonMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveSpinButtonMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveSpinButtonMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveSpinButtonMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSpinButtonMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSpinButtonMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveSpinButtonMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveSpinButtonMethod "childNotify" o = Gtk.Widget.WidgetChildNotifyMethodInfo
    ResolveSpinButtonMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveSpinButtonMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveSpinButtonMethod "configure" o = SpinButtonConfigureMethodInfo
    ResolveSpinButtonMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveSpinButtonMethod "copyClipboard" o = Gtk.Editable.EditableCopyClipboardMethodInfo
    ResolveSpinButtonMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveSpinButtonMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveSpinButtonMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveSpinButtonMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveSpinButtonMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveSpinButtonMethod "cutClipboard" o = Gtk.Editable.EditableCutClipboardMethodInfo
    ResolveSpinButtonMethod "deleteSelection" o = Gtk.Editable.EditableDeleteSelectionMethodInfo
    ResolveSpinButtonMethod "deleteText" o = Gtk.Editable.EditableDeleteTextMethodInfo
    ResolveSpinButtonMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveSpinButtonMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveSpinButtonMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveSpinButtonMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveSpinButtonMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveSpinButtonMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveSpinButtonMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveSpinButtonMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveSpinButtonMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveSpinButtonMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveSpinButtonMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveSpinButtonMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveSpinButtonMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveSpinButtonMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveSpinButtonMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveSpinButtonMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveSpinButtonMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveSpinButtonMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveSpinButtonMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveSpinButtonMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveSpinButtonMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveSpinButtonMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveSpinButtonMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveSpinButtonMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveSpinButtonMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveSpinButtonMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveSpinButtonMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveSpinButtonMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveSpinButtonMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveSpinButtonMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveSpinButtonMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveSpinButtonMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveSpinButtonMethod "editingDone" o = Gtk.CellEditable.CellEditableEditingDoneMethodInfo
    ResolveSpinButtonMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveSpinButtonMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveSpinButtonMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveSpinButtonMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSpinButtonMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveSpinButtonMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSpinButtonMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSpinButtonMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveSpinButtonMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveSpinButtonMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveSpinButtonMethod "grabFocusWithoutSelecting" o = Gtk.Entry.EntryGrabFocusWithoutSelectingMethodInfo
    ResolveSpinButtonMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveSpinButtonMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveSpinButtonMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveSpinButtonMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveSpinButtonMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveSpinButtonMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveSpinButtonMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveSpinButtonMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveSpinButtonMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveSpinButtonMethod "imContextFilterKeypress" o = Gtk.Entry.EntryImContextFilterKeypressMethodInfo
    ResolveSpinButtonMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveSpinButtonMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveSpinButtonMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveSpinButtonMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveSpinButtonMethod "insertText" o = Gtk.Editable.EditableInsertTextMethodInfo
    ResolveSpinButtonMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveSpinButtonMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveSpinButtonMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveSpinButtonMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveSpinButtonMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSpinButtonMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveSpinButtonMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveSpinButtonMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveSpinButtonMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveSpinButtonMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveSpinButtonMethod "layoutIndexToTextIndex" o = Gtk.Entry.EntryLayoutIndexToTextIndexMethodInfo
    ResolveSpinButtonMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveSpinButtonMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveSpinButtonMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveSpinButtonMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveSpinButtonMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveSpinButtonMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveSpinButtonMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveSpinButtonMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveSpinButtonMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveSpinButtonMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveSpinButtonMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveSpinButtonMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveSpinButtonMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSpinButtonMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSpinButtonMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveSpinButtonMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveSpinButtonMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveSpinButtonMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveSpinButtonMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveSpinButtonMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveSpinButtonMethod "pasteClipboard" o = Gtk.Editable.EditablePasteClipboardMethodInfo
    ResolveSpinButtonMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveSpinButtonMethod "progressPulse" o = Gtk.Entry.EntryProgressPulseMethodInfo
    ResolveSpinButtonMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveSpinButtonMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveSpinButtonMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveSpinButtonMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveSpinButtonMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveSpinButtonMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveSpinButtonMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveSpinButtonMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveSpinButtonMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSpinButtonMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSpinButtonMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveSpinButtonMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveSpinButtonMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveSpinButtonMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveSpinButtonMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveSpinButtonMethod "removeWidget" o = Gtk.CellEditable.CellEditableRemoveWidgetMethodInfo
    ResolveSpinButtonMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveSpinButtonMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveSpinButtonMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveSpinButtonMethod "resetImContext" o = Gtk.Entry.EntryResetImContextMethodInfo
    ResolveSpinButtonMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveSpinButtonMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveSpinButtonMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSpinButtonMethod "selectRegion" o = Gtk.Editable.EditableSelectRegionMethodInfo
    ResolveSpinButtonMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveSpinButtonMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveSpinButtonMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveSpinButtonMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveSpinButtonMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveSpinButtonMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveSpinButtonMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveSpinButtonMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveSpinButtonMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveSpinButtonMethod "spin" o = SpinButtonSpinMethodInfo
    ResolveSpinButtonMethod "startEditing" o = Gtk.CellEditable.CellEditableStartEditingMethodInfo
    ResolveSpinButtonMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSpinButtonMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSpinButtonMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveSpinButtonMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveSpinButtonMethod "textIndexToLayoutIndex" o = Gtk.Entry.EntryTextIndexToLayoutIndexMethodInfo
    ResolveSpinButtonMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveSpinButtonMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSpinButtonMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveSpinButtonMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveSpinButtonMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveSpinButtonMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveSpinButtonMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveSpinButtonMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSpinButtonMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveSpinButtonMethod "unsetInvisibleChar" o = Gtk.Entry.EntryUnsetInvisibleCharMethodInfo
    ResolveSpinButtonMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveSpinButtonMethod "update" o = SpinButtonUpdateMethodInfo
    ResolveSpinButtonMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSpinButtonMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveSpinButtonMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveSpinButtonMethod "getActivatesDefault" o = Gtk.Entry.EntryGetActivatesDefaultMethodInfo
    ResolveSpinButtonMethod "getAdjustment" o = SpinButtonGetAdjustmentMethodInfo
    ResolveSpinButtonMethod "getAlignment" o = Gtk.Entry.EntryGetAlignmentMethodInfo
    ResolveSpinButtonMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveSpinButtonMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveSpinButtonMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveSpinButtonMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveSpinButtonMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveSpinButtonMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveSpinButtonMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveSpinButtonMethod "getAttributes" o = Gtk.Entry.EntryGetAttributesMethodInfo
    ResolveSpinButtonMethod "getBuffer" o = Gtk.Entry.EntryGetBufferMethodInfo
    ResolveSpinButtonMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveSpinButtonMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveSpinButtonMethod "getChars" o = Gtk.Editable.EditableGetCharsMethodInfo
    ResolveSpinButtonMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveSpinButtonMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveSpinButtonMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveSpinButtonMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveSpinButtonMethod "getCompletion" o = Gtk.Entry.EntryGetCompletionMethodInfo
    ResolveSpinButtonMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveSpinButtonMethod "getCurrentIconDragSource" o = Gtk.Entry.EntryGetCurrentIconDragSourceMethodInfo
    ResolveSpinButtonMethod "getCursorHadjustment" o = Gtk.Entry.EntryGetCursorHadjustmentMethodInfo
    ResolveSpinButtonMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSpinButtonMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveSpinButtonMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveSpinButtonMethod "getDigits" o = SpinButtonGetDigitsMethodInfo
    ResolveSpinButtonMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveSpinButtonMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveSpinButtonMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveSpinButtonMethod "getEditable" o = Gtk.Editable.EditableGetEditableMethodInfo
    ResolveSpinButtonMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveSpinButtonMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveSpinButtonMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveSpinButtonMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveSpinButtonMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveSpinButtonMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveSpinButtonMethod "getHasFrame" o = Gtk.Entry.EntryGetHasFrameMethodInfo
    ResolveSpinButtonMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveSpinButtonMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveSpinButtonMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveSpinButtonMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveSpinButtonMethod "getIconActivatable" o = Gtk.Entry.EntryGetIconActivatableMethodInfo
    ResolveSpinButtonMethod "getIconArea" o = Gtk.Entry.EntryGetIconAreaMethodInfo
    ResolveSpinButtonMethod "getIconAtPos" o = Gtk.Entry.EntryGetIconAtPosMethodInfo
    ResolveSpinButtonMethod "getIconGicon" o = Gtk.Entry.EntryGetIconGiconMethodInfo
    ResolveSpinButtonMethod "getIconName" o = Gtk.Entry.EntryGetIconNameMethodInfo
    ResolveSpinButtonMethod "getIconPixbuf" o = Gtk.Entry.EntryGetIconPixbufMethodInfo
    ResolveSpinButtonMethod "getIconSensitive" o = Gtk.Entry.EntryGetIconSensitiveMethodInfo
    ResolveSpinButtonMethod "getIconStock" o = Gtk.Entry.EntryGetIconStockMethodInfo
    ResolveSpinButtonMethod "getIconStorageType" o = Gtk.Entry.EntryGetIconStorageTypeMethodInfo
    ResolveSpinButtonMethod "getIconTooltipMarkup" o = Gtk.Entry.EntryGetIconTooltipMarkupMethodInfo
    ResolveSpinButtonMethod "getIconTooltipText" o = Gtk.Entry.EntryGetIconTooltipTextMethodInfo
    ResolveSpinButtonMethod "getIncrements" o = SpinButtonGetIncrementsMethodInfo
    ResolveSpinButtonMethod "getInnerBorder" o = Gtk.Entry.EntryGetInnerBorderMethodInfo
    ResolveSpinButtonMethod "getInputHints" o = Gtk.Entry.EntryGetInputHintsMethodInfo
    ResolveSpinButtonMethod "getInputPurpose" o = Gtk.Entry.EntryGetInputPurposeMethodInfo
    ResolveSpinButtonMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveSpinButtonMethod "getInvisibleChar" o = Gtk.Entry.EntryGetInvisibleCharMethodInfo
    ResolveSpinButtonMethod "getLayout" o = Gtk.Entry.EntryGetLayoutMethodInfo
    ResolveSpinButtonMethod "getLayoutOffsets" o = Gtk.Entry.EntryGetLayoutOffsetsMethodInfo
    ResolveSpinButtonMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveSpinButtonMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveSpinButtonMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveSpinButtonMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveSpinButtonMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveSpinButtonMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveSpinButtonMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveSpinButtonMethod "getMaxLength" o = Gtk.Entry.EntryGetMaxLengthMethodInfo
    ResolveSpinButtonMethod "getMaxWidthChars" o = Gtk.Entry.EntryGetMaxWidthCharsMethodInfo
    ResolveSpinButtonMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveSpinButtonMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveSpinButtonMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveSpinButtonMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveSpinButtonMethod "getNumeric" o = SpinButtonGetNumericMethodInfo
    ResolveSpinButtonMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveSpinButtonMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveSpinButtonMethod "getOverwriteMode" o = Gtk.Entry.EntryGetOverwriteModeMethodInfo
    ResolveSpinButtonMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveSpinButtonMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveSpinButtonMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveSpinButtonMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveSpinButtonMethod "getPlaceholderText" o = Gtk.Entry.EntryGetPlaceholderTextMethodInfo
    ResolveSpinButtonMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveSpinButtonMethod "getPosition" o = Gtk.Editable.EditableGetPositionMethodInfo
    ResolveSpinButtonMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveSpinButtonMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveSpinButtonMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveSpinButtonMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveSpinButtonMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveSpinButtonMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveSpinButtonMethod "getProgressFraction" o = Gtk.Entry.EntryGetProgressFractionMethodInfo
    ResolveSpinButtonMethod "getProgressPulseStep" o = Gtk.Entry.EntryGetProgressPulseStepMethodInfo
    ResolveSpinButtonMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSpinButtonMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSpinButtonMethod "getRange" o = SpinButtonGetRangeMethodInfo
    ResolveSpinButtonMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveSpinButtonMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveSpinButtonMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveSpinButtonMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveSpinButtonMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveSpinButtonMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveSpinButtonMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveSpinButtonMethod "getSelectionBounds" o = Gtk.Editable.EditableGetSelectionBoundsMethodInfo
    ResolveSpinButtonMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveSpinButtonMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveSpinButtonMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveSpinButtonMethod "getSnapToTicks" o = SpinButtonGetSnapToTicksMethodInfo
    ResolveSpinButtonMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveSpinButtonMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveSpinButtonMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveSpinButtonMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveSpinButtonMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveSpinButtonMethod "getTabs" o = Gtk.Entry.EntryGetTabsMethodInfo
    ResolveSpinButtonMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveSpinButtonMethod "getText" o = Gtk.Entry.EntryGetTextMethodInfo
    ResolveSpinButtonMethod "getTextArea" o = Gtk.Entry.EntryGetTextAreaMethodInfo
    ResolveSpinButtonMethod "getTextLength" o = Gtk.Entry.EntryGetTextLengthMethodInfo
    ResolveSpinButtonMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveSpinButtonMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveSpinButtonMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveSpinButtonMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveSpinButtonMethod "getUpdatePolicy" o = SpinButtonGetUpdatePolicyMethodInfo
    ResolveSpinButtonMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveSpinButtonMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveSpinButtonMethod "getValue" o = SpinButtonGetValueMethodInfo
    ResolveSpinButtonMethod "getValueAsInt" o = SpinButtonGetValueAsIntMethodInfo
    ResolveSpinButtonMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveSpinButtonMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveSpinButtonMethod "getVisibility" o = Gtk.Entry.EntryGetVisibilityMethodInfo
    ResolveSpinButtonMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveSpinButtonMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveSpinButtonMethod "getWidthChars" o = Gtk.Entry.EntryGetWidthCharsMethodInfo
    ResolveSpinButtonMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveSpinButtonMethod "getWrap" o = SpinButtonGetWrapMethodInfo
    ResolveSpinButtonMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveSpinButtonMethod "setActivatesDefault" o = Gtk.Entry.EntrySetActivatesDefaultMethodInfo
    ResolveSpinButtonMethod "setAdjustment" o = SpinButtonSetAdjustmentMethodInfo
    ResolveSpinButtonMethod "setAlignment" o = Gtk.Entry.EntrySetAlignmentMethodInfo
    ResolveSpinButtonMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveSpinButtonMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveSpinButtonMethod "setAttributes" o = Gtk.Entry.EntrySetAttributesMethodInfo
    ResolveSpinButtonMethod "setBuffer" o = Gtk.Entry.EntrySetBufferMethodInfo
    ResolveSpinButtonMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveSpinButtonMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveSpinButtonMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveSpinButtonMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveSpinButtonMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveSpinButtonMethod "setCompletion" o = Gtk.Entry.EntrySetCompletionMethodInfo
    ResolveSpinButtonMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveSpinButtonMethod "setCursorHadjustment" o = Gtk.Entry.EntrySetCursorHadjustmentMethodInfo
    ResolveSpinButtonMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSpinButtonMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSpinButtonMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveSpinButtonMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveSpinButtonMethod "setDigits" o = SpinButtonSetDigitsMethodInfo
    ResolveSpinButtonMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveSpinButtonMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveSpinButtonMethod "setEditable" o = Gtk.Editable.EditableSetEditableMethodInfo
    ResolveSpinButtonMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveSpinButtonMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveSpinButtonMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveSpinButtonMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveSpinButtonMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveSpinButtonMethod "setHasFrame" o = Gtk.Entry.EntrySetHasFrameMethodInfo
    ResolveSpinButtonMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveSpinButtonMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveSpinButtonMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveSpinButtonMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveSpinButtonMethod "setIconActivatable" o = Gtk.Entry.EntrySetIconActivatableMethodInfo
    ResolveSpinButtonMethod "setIconDragSource" o = Gtk.Entry.EntrySetIconDragSourceMethodInfo
    ResolveSpinButtonMethod "setIconFromGicon" o = Gtk.Entry.EntrySetIconFromGiconMethodInfo
    ResolveSpinButtonMethod "setIconFromIconName" o = Gtk.Entry.EntrySetIconFromIconNameMethodInfo
    ResolveSpinButtonMethod "setIconFromPixbuf" o = Gtk.Entry.EntrySetIconFromPixbufMethodInfo
    ResolveSpinButtonMethod "setIconFromStock" o = Gtk.Entry.EntrySetIconFromStockMethodInfo
    ResolveSpinButtonMethod "setIconSensitive" o = Gtk.Entry.EntrySetIconSensitiveMethodInfo
    ResolveSpinButtonMethod "setIconTooltipMarkup" o = Gtk.Entry.EntrySetIconTooltipMarkupMethodInfo
    ResolveSpinButtonMethod "setIconTooltipText" o = Gtk.Entry.EntrySetIconTooltipTextMethodInfo
    ResolveSpinButtonMethod "setIncrements" o = SpinButtonSetIncrementsMethodInfo
    ResolveSpinButtonMethod "setInnerBorder" o = Gtk.Entry.EntrySetInnerBorderMethodInfo
    ResolveSpinButtonMethod "setInputHints" o = Gtk.Entry.EntrySetInputHintsMethodInfo
    ResolveSpinButtonMethod "setInputPurpose" o = Gtk.Entry.EntrySetInputPurposeMethodInfo
    ResolveSpinButtonMethod "setInvisibleChar" o = Gtk.Entry.EntrySetInvisibleCharMethodInfo
    ResolveSpinButtonMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveSpinButtonMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveSpinButtonMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveSpinButtonMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveSpinButtonMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveSpinButtonMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveSpinButtonMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveSpinButtonMethod "setMaxLength" o = Gtk.Entry.EntrySetMaxLengthMethodInfo
    ResolveSpinButtonMethod "setMaxWidthChars" o = Gtk.Entry.EntrySetMaxWidthCharsMethodInfo
    ResolveSpinButtonMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveSpinButtonMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveSpinButtonMethod "setNumeric" o = SpinButtonSetNumericMethodInfo
    ResolveSpinButtonMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveSpinButtonMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveSpinButtonMethod "setOverwriteMode" o = Gtk.Entry.EntrySetOverwriteModeMethodInfo
    ResolveSpinButtonMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveSpinButtonMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveSpinButtonMethod "setPlaceholderText" o = Gtk.Entry.EntrySetPlaceholderTextMethodInfo
    ResolveSpinButtonMethod "setPosition" o = Gtk.Editable.EditableSetPositionMethodInfo
    ResolveSpinButtonMethod "setProgressFraction" o = Gtk.Entry.EntrySetProgressFractionMethodInfo
    ResolveSpinButtonMethod "setProgressPulseStep" o = Gtk.Entry.EntrySetProgressPulseStepMethodInfo
    ResolveSpinButtonMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSpinButtonMethod "setRange" o = SpinButtonSetRangeMethodInfo
    ResolveSpinButtonMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveSpinButtonMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveSpinButtonMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveSpinButtonMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveSpinButtonMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveSpinButtonMethod "setSnapToTicks" o = SpinButtonSetSnapToTicksMethodInfo
    ResolveSpinButtonMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveSpinButtonMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveSpinButtonMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveSpinButtonMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveSpinButtonMethod "setTabs" o = Gtk.Entry.EntrySetTabsMethodInfo
    ResolveSpinButtonMethod "setText" o = Gtk.Entry.EntrySetTextMethodInfo
    ResolveSpinButtonMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveSpinButtonMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveSpinButtonMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveSpinButtonMethod "setUpdatePolicy" o = SpinButtonSetUpdatePolicyMethodInfo
    ResolveSpinButtonMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveSpinButtonMethod "setValue" o = SpinButtonSetValueMethodInfo
    ResolveSpinButtonMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveSpinButtonMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveSpinButtonMethod "setVisibility" o = Gtk.Entry.EntrySetVisibilityMethodInfo
    ResolveSpinButtonMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveSpinButtonMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveSpinButtonMethod "setWidthChars" o = Gtk.Entry.EntrySetWidthCharsMethodInfo
    ResolveSpinButtonMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveSpinButtonMethod "setWrap" o = SpinButtonSetWrapMethodInfo
    ResolveSpinButtonMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSpinButtonMethod t SpinButton, O.MethodInfo info SpinButton p) => OL.IsLabel t (SpinButton -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal SpinButton::change-value
-- | The [changeValue](#signal:changeValue) signal is a [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user initiates a value change.
-- 
-- Applications should not connect to it, but may emit it with
-- @/g_signal_emit_by_name()/@ if they need to control the cursor
-- programmatically.
-- 
-- The default bindings for this signal are Up\/Down and PageUp and\/PageDown.
type SpinButtonChangeValueCallback =
    Gtk.Enums.ScrollType
    -- ^ /@scroll@/: a t'GI.Gtk.Enums.ScrollType' to specify the speed and amount of change
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SpinButtonChangeValueCallback`@.
noSpinButtonChangeValueCallback :: Maybe SpinButtonChangeValueCallback
noSpinButtonChangeValueCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SpinButtonChangeValueCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SpinButtonChangeValueCallback`.
foreign import ccall "wrapper"
    mk_SpinButtonChangeValueCallback :: C_SpinButtonChangeValueCallback -> IO (FunPtr C_SpinButtonChangeValueCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SpinButtonChangeValue :: MonadIO m => SpinButtonChangeValueCallback -> m (GClosure C_SpinButtonChangeValueCallback)
genClosure_SpinButtonChangeValue cb = liftIO $ do
    let cb' = wrap_SpinButtonChangeValueCallback cb
    mk_SpinButtonChangeValueCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SpinButtonChangeValueCallback` into a `C_SpinButtonChangeValueCallback`.
wrap_SpinButtonChangeValueCallback ::
    SpinButtonChangeValueCallback ->
    C_SpinButtonChangeValueCallback
wrap_SpinButtonChangeValueCallback _cb _ scroll _ = do
    let scroll' = (toEnum . fromIntegral) scroll
    _cb  scroll'


-- | Connect a signal handler for the [changeValue](#signal:changeValue) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' spinButton #changeValue callback
-- @
-- 
-- 
onSpinButtonChangeValue :: (IsSpinButton a, MonadIO m) => a -> SpinButtonChangeValueCallback -> m SignalHandlerId
onSpinButtonChangeValue obj cb = liftIO $ do
    let cb' = wrap_SpinButtonChangeValueCallback cb
    cb'' <- mk_SpinButtonChangeValueCallback cb'
    connectSignalFunPtr obj "change-value" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changeValue](#signal:changeValue) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' spinButton #changeValue callback
-- @
-- 
-- 
afterSpinButtonChangeValue :: (IsSpinButton a, MonadIO m) => a -> SpinButtonChangeValueCallback -> m SignalHandlerId
afterSpinButtonChangeValue obj cb = liftIO $ do
    let cb' = wrap_SpinButtonChangeValueCallback cb
    cb'' <- mk_SpinButtonChangeValueCallback cb'
    connectSignalFunPtr obj "change-value" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SpinButtonChangeValueSignalInfo
instance SignalInfo SpinButtonChangeValueSignalInfo where
    type HaskellCallbackType SpinButtonChangeValueSignalInfo = SpinButtonChangeValueCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SpinButtonChangeValueCallback cb
        cb'' <- mk_SpinButtonChangeValueCallback cb'
        connectSignalFunPtr obj "change-value" cb'' connectMode detail

#endif

-- signal SpinButton::input
-- | The [input](#signal:input) signal can be used to influence the conversion of
-- the users input into a double value. The signal handler is
-- expected to use 'GI.Gtk.Objects.Entry.entryGetText' to retrieve the text of
-- the entry and set /@newValue@/ to the new value.
-- 
-- The default conversion uses 'GI.GLib.Functions.strtod'.
type SpinButtonInputCallback =
    IO ((Int32, Double))
    -- ^ __Returns:__ 'P.True' for a successful conversion, 'P.False' if the input
    --     was not handled, and 'GI.Gtk.Constants.INPUT_ERROR' if the conversion failed.

-- | A convenience synonym for @`Nothing` :: `Maybe` `SpinButtonInputCallback`@.
noSpinButtonInputCallback :: Maybe SpinButtonInputCallback
noSpinButtonInputCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SpinButtonInputCallback =
    Ptr () ->                               -- object
    Ptr CDouble ->
    Ptr () ->                               -- user_data
    IO Int32

-- | Generate a function pointer callable from C code, from a `C_SpinButtonInputCallback`.
foreign import ccall "wrapper"
    mk_SpinButtonInputCallback :: C_SpinButtonInputCallback -> IO (FunPtr C_SpinButtonInputCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SpinButtonInput :: MonadIO m => SpinButtonInputCallback -> m (GClosure C_SpinButtonInputCallback)
genClosure_SpinButtonInput cb = liftIO $ do
    let cb' = wrap_SpinButtonInputCallback cb
    mk_SpinButtonInputCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SpinButtonInputCallback` into a `C_SpinButtonInputCallback`.
wrap_SpinButtonInputCallback ::
    SpinButtonInputCallback ->
    C_SpinButtonInputCallback
wrap_SpinButtonInputCallback _cb _ newValue _ = do
    (result, outnewValue) <- _cb 
    let outnewValue' = realToFrac outnewValue
    poke newValue outnewValue'
    return result


-- | Connect a signal handler for the [input](#signal:input) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' spinButton #input callback
-- @
-- 
-- 
onSpinButtonInput :: (IsSpinButton a, MonadIO m) => a -> SpinButtonInputCallback -> m SignalHandlerId
onSpinButtonInput obj cb = liftIO $ do
    let cb' = wrap_SpinButtonInputCallback cb
    cb'' <- mk_SpinButtonInputCallback cb'
    connectSignalFunPtr obj "input" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [input](#signal:input) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' spinButton #input callback
-- @
-- 
-- 
afterSpinButtonInput :: (IsSpinButton a, MonadIO m) => a -> SpinButtonInputCallback -> m SignalHandlerId
afterSpinButtonInput obj cb = liftIO $ do
    let cb' = wrap_SpinButtonInputCallback cb
    cb'' <- mk_SpinButtonInputCallback cb'
    connectSignalFunPtr obj "input" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SpinButtonInputSignalInfo
instance SignalInfo SpinButtonInputSignalInfo where
    type HaskellCallbackType SpinButtonInputSignalInfo = SpinButtonInputCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SpinButtonInputCallback cb
        cb'' <- mk_SpinButtonInputCallback cb'
        connectSignalFunPtr obj "input" cb'' connectMode detail

#endif

-- signal SpinButton::output
-- | The [output](#signal:output) signal can be used to change to formatting
-- of the value that is displayed in the spin buttons entry.
-- 
-- === /C code/
-- >
-- >// show leading zeros
-- >static gboolean
-- >on_output (GtkSpinButton *spin,
-- >           gpointer       data)
-- >{
-- >   GtkAdjustment *adjustment;
-- >   gchar *text;
-- >   int value;
-- >
-- >   adjustment = gtk_spin_button_get_adjustment (spin);
-- >   value = (int)gtk_adjustment_get_value (adjustment);
-- >   text = g_strdup_printf ("%02d", value);
-- >   gtk_entry_set_text (GTK_ENTRY (spin), text);
-- >   g_free (text);
-- >
-- >   return TRUE;
-- >}
type SpinButtonOutputCallback =
    IO Bool
    -- ^ __Returns:__ 'P.True' if the value has been displayed

-- | A convenience synonym for @`Nothing` :: `Maybe` `SpinButtonOutputCallback`@.
noSpinButtonOutputCallback :: Maybe SpinButtonOutputCallback
noSpinButtonOutputCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SpinButtonOutputCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_SpinButtonOutputCallback`.
foreign import ccall "wrapper"
    mk_SpinButtonOutputCallback :: C_SpinButtonOutputCallback -> IO (FunPtr C_SpinButtonOutputCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SpinButtonOutput :: MonadIO m => SpinButtonOutputCallback -> m (GClosure C_SpinButtonOutputCallback)
genClosure_SpinButtonOutput cb = liftIO $ do
    let cb' = wrap_SpinButtonOutputCallback cb
    mk_SpinButtonOutputCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SpinButtonOutputCallback` into a `C_SpinButtonOutputCallback`.
wrap_SpinButtonOutputCallback ::
    SpinButtonOutputCallback ->
    C_SpinButtonOutputCallback
wrap_SpinButtonOutputCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [output](#signal:output) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' spinButton #output callback
-- @
-- 
-- 
onSpinButtonOutput :: (IsSpinButton a, MonadIO m) => a -> SpinButtonOutputCallback -> m SignalHandlerId
onSpinButtonOutput obj cb = liftIO $ do
    let cb' = wrap_SpinButtonOutputCallback cb
    cb'' <- mk_SpinButtonOutputCallback cb'
    connectSignalFunPtr obj "output" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [output](#signal:output) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' spinButton #output callback
-- @
-- 
-- 
afterSpinButtonOutput :: (IsSpinButton a, MonadIO m) => a -> SpinButtonOutputCallback -> m SignalHandlerId
afterSpinButtonOutput obj cb = liftIO $ do
    let cb' = wrap_SpinButtonOutputCallback cb
    cb'' <- mk_SpinButtonOutputCallback cb'
    connectSignalFunPtr obj "output" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SpinButtonOutputSignalInfo
instance SignalInfo SpinButtonOutputSignalInfo where
    type HaskellCallbackType SpinButtonOutputSignalInfo = SpinButtonOutputCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SpinButtonOutputCallback cb
        cb'' <- mk_SpinButtonOutputCallback cb'
        connectSignalFunPtr obj "output" cb'' connectMode detail

#endif

-- signal SpinButton::value-changed
-- | The [valueChanged](#signal:valueChanged) signal is emitted when the value represented by
-- /@spinbutton@/ changes. Also see the [output]("GI.Gtk.Objects.SpinButton#signal:output") signal.
type SpinButtonValueChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SpinButtonValueChangedCallback`@.
noSpinButtonValueChangedCallback :: Maybe SpinButtonValueChangedCallback
noSpinButtonValueChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SpinButtonValueChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SpinButtonValueChangedCallback`.
foreign import ccall "wrapper"
    mk_SpinButtonValueChangedCallback :: C_SpinButtonValueChangedCallback -> IO (FunPtr C_SpinButtonValueChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SpinButtonValueChanged :: MonadIO m => SpinButtonValueChangedCallback -> m (GClosure C_SpinButtonValueChangedCallback)
genClosure_SpinButtonValueChanged cb = liftIO $ do
    let cb' = wrap_SpinButtonValueChangedCallback cb
    mk_SpinButtonValueChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SpinButtonValueChangedCallback` into a `C_SpinButtonValueChangedCallback`.
wrap_SpinButtonValueChangedCallback ::
    SpinButtonValueChangedCallback ->
    C_SpinButtonValueChangedCallback
wrap_SpinButtonValueChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' spinButton #valueChanged callback
-- @
-- 
-- 
onSpinButtonValueChanged :: (IsSpinButton a, MonadIO m) => a -> SpinButtonValueChangedCallback -> m SignalHandlerId
onSpinButtonValueChanged obj cb = liftIO $ do
    let cb' = wrap_SpinButtonValueChangedCallback cb
    cb'' <- mk_SpinButtonValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [valueChanged](#signal:valueChanged) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' spinButton #valueChanged callback
-- @
-- 
-- 
afterSpinButtonValueChanged :: (IsSpinButton a, MonadIO m) => a -> SpinButtonValueChangedCallback -> m SignalHandlerId
afterSpinButtonValueChanged obj cb = liftIO $ do
    let cb' = wrap_SpinButtonValueChangedCallback cb
    cb'' <- mk_SpinButtonValueChangedCallback cb'
    connectSignalFunPtr obj "value-changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SpinButtonValueChangedSignalInfo
instance SignalInfo SpinButtonValueChangedSignalInfo where
    type HaskellCallbackType SpinButtonValueChangedSignalInfo = SpinButtonValueChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SpinButtonValueChangedCallback cb
        cb'' <- mk_SpinButtonValueChangedCallback cb'
        connectSignalFunPtr obj "value-changed" cb'' connectMode detail

#endif

-- signal SpinButton::wrapped
-- | The [wrapped](#signal:wrapped) signal is emitted right after the spinbutton wraps
-- from its maximum to minimum value or vice-versa.
-- 
-- /Since: 2.10/
type SpinButtonWrappedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `SpinButtonWrappedCallback`@.
noSpinButtonWrappedCallback :: Maybe SpinButtonWrappedCallback
noSpinButtonWrappedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_SpinButtonWrappedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_SpinButtonWrappedCallback`.
foreign import ccall "wrapper"
    mk_SpinButtonWrappedCallback :: C_SpinButtonWrappedCallback -> IO (FunPtr C_SpinButtonWrappedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_SpinButtonWrapped :: MonadIO m => SpinButtonWrappedCallback -> m (GClosure C_SpinButtonWrappedCallback)
genClosure_SpinButtonWrapped cb = liftIO $ do
    let cb' = wrap_SpinButtonWrappedCallback cb
    mk_SpinButtonWrappedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `SpinButtonWrappedCallback` into a `C_SpinButtonWrappedCallback`.
wrap_SpinButtonWrappedCallback ::
    SpinButtonWrappedCallback ->
    C_SpinButtonWrappedCallback
wrap_SpinButtonWrappedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [wrapped](#signal:wrapped) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' spinButton #wrapped callback
-- @
-- 
-- 
onSpinButtonWrapped :: (IsSpinButton a, MonadIO m) => a -> SpinButtonWrappedCallback -> m SignalHandlerId
onSpinButtonWrapped obj cb = liftIO $ do
    let cb' = wrap_SpinButtonWrappedCallback cb
    cb'' <- mk_SpinButtonWrappedCallback cb'
    connectSignalFunPtr obj "wrapped" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [wrapped](#signal:wrapped) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' spinButton #wrapped callback
-- @
-- 
-- 
afterSpinButtonWrapped :: (IsSpinButton a, MonadIO m) => a -> SpinButtonWrappedCallback -> m SignalHandlerId
afterSpinButtonWrapped obj cb = liftIO $ do
    let cb' = wrap_SpinButtonWrappedCallback cb
    cb'' <- mk_SpinButtonWrappedCallback cb'
    connectSignalFunPtr obj "wrapped" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data SpinButtonWrappedSignalInfo
instance SignalInfo SpinButtonWrappedSignalInfo where
    type HaskellCallbackType SpinButtonWrappedSignalInfo = SpinButtonWrappedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_SpinButtonWrappedCallback cb
        cb'' <- mk_SpinButtonWrappedCallback cb'
        connectSignalFunPtr obj "wrapped" cb'' connectMode detail

#endif

-- VVV Prop "adjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #adjustment
-- @
getSpinButtonAdjustment :: (MonadIO m, IsSpinButton o) => o -> m Gtk.Adjustment.Adjustment
getSpinButtonAdjustment obj = liftIO $ checkUnexpectedNothing "getSpinButtonAdjustment" $ B.Properties.getObjectPropertyObject obj "adjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@adjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #adjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonAdjustment :: (MonadIO m, IsSpinButton o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setSpinButtonAdjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "adjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@adjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonAdjustment :: (IsSpinButton o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructSpinButtonAdjustment val = B.Properties.constructObjectPropertyObject "adjustment" (Just val)

#if defined(ENABLE_OVERLOADING)
data SpinButtonAdjustmentPropertyInfo
instance AttrInfo SpinButtonAdjustmentPropertyInfo where
    type AttrAllowedOps SpinButtonAdjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonAdjustmentPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint SpinButtonAdjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType SpinButtonAdjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType SpinButtonAdjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel SpinButtonAdjustmentPropertyInfo = "adjustment"
    type AttrOrigin SpinButtonAdjustmentPropertyInfo = SpinButton
    attrGet = getSpinButtonAdjustment
    attrSet = setSpinButtonAdjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructSpinButtonAdjustment
    attrClear = undefined
#endif

-- VVV Prop "climb-rate"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@climb-rate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #climbRate
-- @
getSpinButtonClimbRate :: (MonadIO m, IsSpinButton o) => o -> m Double
getSpinButtonClimbRate obj = liftIO $ B.Properties.getObjectPropertyDouble obj "climb-rate"

-- | Set the value of the “@climb-rate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #climbRate 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonClimbRate :: (MonadIO m, IsSpinButton o) => o -> Double -> m ()
setSpinButtonClimbRate obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "climb-rate" val

-- | Construct a `GValueConstruct` with valid value for the “@climb-rate@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonClimbRate :: (IsSpinButton o) => Double -> IO (GValueConstruct o)
constructSpinButtonClimbRate val = B.Properties.constructObjectPropertyDouble "climb-rate" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonClimbRatePropertyInfo
instance AttrInfo SpinButtonClimbRatePropertyInfo where
    type AttrAllowedOps SpinButtonClimbRatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonClimbRatePropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonClimbRatePropertyInfo = (~) Double
    type AttrTransferTypeConstraint SpinButtonClimbRatePropertyInfo = (~) Double
    type AttrTransferType SpinButtonClimbRatePropertyInfo = Double
    type AttrGetType SpinButtonClimbRatePropertyInfo = Double
    type AttrLabel SpinButtonClimbRatePropertyInfo = "climb-rate"
    type AttrOrigin SpinButtonClimbRatePropertyInfo = SpinButton
    attrGet = getSpinButtonClimbRate
    attrSet = setSpinButtonClimbRate
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonClimbRate
    attrClear = undefined
#endif

-- VVV Prop "digits"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #digits
-- @
getSpinButtonDigits :: (MonadIO m, IsSpinButton o) => o -> m Word32
getSpinButtonDigits obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "digits"

-- | Set the value of the “@digits@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #digits 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonDigits :: (MonadIO m, IsSpinButton o) => o -> Word32 -> m ()
setSpinButtonDigits obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "digits" val

-- | Construct a `GValueConstruct` with valid value for the “@digits@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonDigits :: (IsSpinButton o) => Word32 -> IO (GValueConstruct o)
constructSpinButtonDigits val = B.Properties.constructObjectPropertyUInt32 "digits" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonDigitsPropertyInfo
instance AttrInfo SpinButtonDigitsPropertyInfo where
    type AttrAllowedOps SpinButtonDigitsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonDigitsPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonDigitsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint SpinButtonDigitsPropertyInfo = (~) Word32
    type AttrTransferType SpinButtonDigitsPropertyInfo = Word32
    type AttrGetType SpinButtonDigitsPropertyInfo = Word32
    type AttrLabel SpinButtonDigitsPropertyInfo = "digits"
    type AttrOrigin SpinButtonDigitsPropertyInfo = SpinButton
    attrGet = getSpinButtonDigits
    attrSet = setSpinButtonDigits
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonDigits
    attrClear = undefined
#endif

-- VVV Prop "numeric"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@numeric@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #numeric
-- @
getSpinButtonNumeric :: (MonadIO m, IsSpinButton o) => o -> m Bool
getSpinButtonNumeric obj = liftIO $ B.Properties.getObjectPropertyBool obj "numeric"

-- | Set the value of the “@numeric@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #numeric 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonNumeric :: (MonadIO m, IsSpinButton o) => o -> Bool -> m ()
setSpinButtonNumeric obj val = liftIO $ B.Properties.setObjectPropertyBool obj "numeric" val

-- | Construct a `GValueConstruct` with valid value for the “@numeric@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonNumeric :: (IsSpinButton o) => Bool -> IO (GValueConstruct o)
constructSpinButtonNumeric val = B.Properties.constructObjectPropertyBool "numeric" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonNumericPropertyInfo
instance AttrInfo SpinButtonNumericPropertyInfo where
    type AttrAllowedOps SpinButtonNumericPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonNumericPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonNumericPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SpinButtonNumericPropertyInfo = (~) Bool
    type AttrTransferType SpinButtonNumericPropertyInfo = Bool
    type AttrGetType SpinButtonNumericPropertyInfo = Bool
    type AttrLabel SpinButtonNumericPropertyInfo = "numeric"
    type AttrOrigin SpinButtonNumericPropertyInfo = SpinButton
    attrGet = getSpinButtonNumeric
    attrSet = setSpinButtonNumeric
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonNumeric
    attrClear = undefined
#endif

-- VVV Prop "snap-to-ticks"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@snap-to-ticks@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #snapToTicks
-- @
getSpinButtonSnapToTicks :: (MonadIO m, IsSpinButton o) => o -> m Bool
getSpinButtonSnapToTicks obj = liftIO $ B.Properties.getObjectPropertyBool obj "snap-to-ticks"

-- | Set the value of the “@snap-to-ticks@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #snapToTicks 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonSnapToTicks :: (MonadIO m, IsSpinButton o) => o -> Bool -> m ()
setSpinButtonSnapToTicks obj val = liftIO $ B.Properties.setObjectPropertyBool obj "snap-to-ticks" val

-- | Construct a `GValueConstruct` with valid value for the “@snap-to-ticks@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonSnapToTicks :: (IsSpinButton o) => Bool -> IO (GValueConstruct o)
constructSpinButtonSnapToTicks val = B.Properties.constructObjectPropertyBool "snap-to-ticks" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonSnapToTicksPropertyInfo
instance AttrInfo SpinButtonSnapToTicksPropertyInfo where
    type AttrAllowedOps SpinButtonSnapToTicksPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonSnapToTicksPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonSnapToTicksPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SpinButtonSnapToTicksPropertyInfo = (~) Bool
    type AttrTransferType SpinButtonSnapToTicksPropertyInfo = Bool
    type AttrGetType SpinButtonSnapToTicksPropertyInfo = Bool
    type AttrLabel SpinButtonSnapToTicksPropertyInfo = "snap-to-ticks"
    type AttrOrigin SpinButtonSnapToTicksPropertyInfo = SpinButton
    attrGet = getSpinButtonSnapToTicks
    attrSet = setSpinButtonSnapToTicks
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonSnapToTicks
    attrClear = undefined
#endif

-- VVV Prop "update-policy"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SpinButtonUpdatePolicy"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@update-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #updatePolicy
-- @
getSpinButtonUpdatePolicy :: (MonadIO m, IsSpinButton o) => o -> m Gtk.Enums.SpinButtonUpdatePolicy
getSpinButtonUpdatePolicy obj = liftIO $ B.Properties.getObjectPropertyEnum obj "update-policy"

-- | Set the value of the “@update-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #updatePolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonUpdatePolicy :: (MonadIO m, IsSpinButton o) => o -> Gtk.Enums.SpinButtonUpdatePolicy -> m ()
setSpinButtonUpdatePolicy obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "update-policy" val

-- | Construct a `GValueConstruct` with valid value for the “@update-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonUpdatePolicy :: (IsSpinButton o) => Gtk.Enums.SpinButtonUpdatePolicy -> IO (GValueConstruct o)
constructSpinButtonUpdatePolicy val = B.Properties.constructObjectPropertyEnum "update-policy" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonUpdatePolicyPropertyInfo
instance AttrInfo SpinButtonUpdatePolicyPropertyInfo where
    type AttrAllowedOps SpinButtonUpdatePolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonUpdatePolicyPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonUpdatePolicyPropertyInfo = (~) Gtk.Enums.SpinButtonUpdatePolicy
    type AttrTransferTypeConstraint SpinButtonUpdatePolicyPropertyInfo = (~) Gtk.Enums.SpinButtonUpdatePolicy
    type AttrTransferType SpinButtonUpdatePolicyPropertyInfo = Gtk.Enums.SpinButtonUpdatePolicy
    type AttrGetType SpinButtonUpdatePolicyPropertyInfo = Gtk.Enums.SpinButtonUpdatePolicy
    type AttrLabel SpinButtonUpdatePolicyPropertyInfo = "update-policy"
    type AttrOrigin SpinButtonUpdatePolicyPropertyInfo = SpinButton
    attrGet = getSpinButtonUpdatePolicy
    attrSet = setSpinButtonUpdatePolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonUpdatePolicy
    attrClear = undefined
#endif

-- VVV Prop "value"
   -- Type: TBasicType TDouble
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #value
-- @
getSpinButtonValue :: (MonadIO m, IsSpinButton o) => o -> m Double
getSpinButtonValue obj = liftIO $ B.Properties.getObjectPropertyDouble obj "value"

-- | Set the value of the “@value@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #value 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonValue :: (MonadIO m, IsSpinButton o) => o -> Double -> m ()
setSpinButtonValue obj val = liftIO $ B.Properties.setObjectPropertyDouble obj "value" val

-- | Construct a `GValueConstruct` with valid value for the “@value@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonValue :: (IsSpinButton o) => Double -> IO (GValueConstruct o)
constructSpinButtonValue val = B.Properties.constructObjectPropertyDouble "value" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonValuePropertyInfo
instance AttrInfo SpinButtonValuePropertyInfo where
    type AttrAllowedOps SpinButtonValuePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonValuePropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonValuePropertyInfo = (~) Double
    type AttrTransferTypeConstraint SpinButtonValuePropertyInfo = (~) Double
    type AttrTransferType SpinButtonValuePropertyInfo = Double
    type AttrGetType SpinButtonValuePropertyInfo = Double
    type AttrLabel SpinButtonValuePropertyInfo = "value"
    type AttrOrigin SpinButtonValuePropertyInfo = SpinButton
    attrGet = getSpinButtonValue
    attrSet = setSpinButtonValue
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonValue
    attrClear = undefined
#endif

-- VVV Prop "wrap"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@wrap@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' spinButton #wrap
-- @
getSpinButtonWrap :: (MonadIO m, IsSpinButton o) => o -> m Bool
getSpinButtonWrap obj = liftIO $ B.Properties.getObjectPropertyBool obj "wrap"

-- | Set the value of the “@wrap@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' spinButton [ #wrap 'Data.GI.Base.Attributes.:=' value ]
-- @
setSpinButtonWrap :: (MonadIO m, IsSpinButton o) => o -> Bool -> m ()
setSpinButtonWrap obj val = liftIO $ B.Properties.setObjectPropertyBool obj "wrap" val

-- | Construct a `GValueConstruct` with valid value for the “@wrap@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSpinButtonWrap :: (IsSpinButton o) => Bool -> IO (GValueConstruct o)
constructSpinButtonWrap val = B.Properties.constructObjectPropertyBool "wrap" val

#if defined(ENABLE_OVERLOADING)
data SpinButtonWrapPropertyInfo
instance AttrInfo SpinButtonWrapPropertyInfo where
    type AttrAllowedOps SpinButtonWrapPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint SpinButtonWrapPropertyInfo = IsSpinButton
    type AttrSetTypeConstraint SpinButtonWrapPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint SpinButtonWrapPropertyInfo = (~) Bool
    type AttrTransferType SpinButtonWrapPropertyInfo = Bool
    type AttrGetType SpinButtonWrapPropertyInfo = Bool
    type AttrLabel SpinButtonWrapPropertyInfo = "wrap"
    type AttrOrigin SpinButtonWrapPropertyInfo = SpinButton
    attrGet = getSpinButtonWrap
    attrSet = setSpinButtonWrap
    attrTransfer _ v = do
        return v
    attrConstruct = constructSpinButtonWrap
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SpinButton
type instance O.AttributeList SpinButton = SpinButtonAttributeList
type SpinButtonAttributeList = ('[ '("activatesDefault", Gtk.Entry.EntryActivatesDefaultPropertyInfo), '("adjustment", SpinButtonAdjustmentPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("attributes", Gtk.Entry.EntryAttributesPropertyInfo), '("buffer", Gtk.Entry.EntryBufferPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("capsLockWarning", Gtk.Entry.EntryCapsLockWarningPropertyInfo), '("climbRate", SpinButtonClimbRatePropertyInfo), '("completion", Gtk.Entry.EntryCompletionPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("cursorPosition", Gtk.Entry.EntryCursorPositionPropertyInfo), '("digits", SpinButtonDigitsPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editable", Gtk.Entry.EntryEditablePropertyInfo), '("editingCanceled", Gtk.CellEditable.CellEditableEditingCanceledPropertyInfo), '("enableEmojiCompletion", Gtk.Entry.EntryEnableEmojiCompletionPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasFrame", Gtk.Entry.EntryHasFramePropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("imModule", Gtk.Entry.EntryImModulePropertyInfo), '("innerBorder", Gtk.Entry.EntryInnerBorderPropertyInfo), '("inputHints", Gtk.Entry.EntryInputHintsPropertyInfo), '("inputPurpose", Gtk.Entry.EntryInputPurposePropertyInfo), '("invisibleChar", Gtk.Entry.EntryInvisibleCharPropertyInfo), '("invisibleCharSet", Gtk.Entry.EntryInvisibleCharSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxLength", Gtk.Entry.EntryMaxLengthPropertyInfo), '("maxWidthChars", Gtk.Entry.EntryMaxWidthCharsPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("numeric", SpinButtonNumericPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("overwriteMode", Gtk.Entry.EntryOverwriteModePropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("placeholderText", Gtk.Entry.EntryPlaceholderTextPropertyInfo), '("populateAll", Gtk.Entry.EntryPopulateAllPropertyInfo), '("primaryIconActivatable", Gtk.Entry.EntryPrimaryIconActivatablePropertyInfo), '("primaryIconGicon", Gtk.Entry.EntryPrimaryIconGiconPropertyInfo), '("primaryIconName", Gtk.Entry.EntryPrimaryIconNamePropertyInfo), '("primaryIconPixbuf", Gtk.Entry.EntryPrimaryIconPixbufPropertyInfo), '("primaryIconSensitive", Gtk.Entry.EntryPrimaryIconSensitivePropertyInfo), '("primaryIconStock", Gtk.Entry.EntryPrimaryIconStockPropertyInfo), '("primaryIconStorageType", Gtk.Entry.EntryPrimaryIconStorageTypePropertyInfo), '("primaryIconTooltipMarkup", Gtk.Entry.EntryPrimaryIconTooltipMarkupPropertyInfo), '("primaryIconTooltipText", Gtk.Entry.EntryPrimaryIconTooltipTextPropertyInfo), '("progressFraction", Gtk.Entry.EntryProgressFractionPropertyInfo), '("progressPulseStep", Gtk.Entry.EntryProgressPulseStepPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("scrollOffset", Gtk.Entry.EntryScrollOffsetPropertyInfo), '("secondaryIconActivatable", Gtk.Entry.EntrySecondaryIconActivatablePropertyInfo), '("secondaryIconGicon", Gtk.Entry.EntrySecondaryIconGiconPropertyInfo), '("secondaryIconName", Gtk.Entry.EntrySecondaryIconNamePropertyInfo), '("secondaryIconPixbuf", Gtk.Entry.EntrySecondaryIconPixbufPropertyInfo), '("secondaryIconSensitive", Gtk.Entry.EntrySecondaryIconSensitivePropertyInfo), '("secondaryIconStock", Gtk.Entry.EntrySecondaryIconStockPropertyInfo), '("secondaryIconStorageType", Gtk.Entry.EntrySecondaryIconStorageTypePropertyInfo), '("secondaryIconTooltipMarkup", Gtk.Entry.EntrySecondaryIconTooltipMarkupPropertyInfo), '("secondaryIconTooltipText", Gtk.Entry.EntrySecondaryIconTooltipTextPropertyInfo), '("selectionBound", Gtk.Entry.EntrySelectionBoundPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", Gtk.Entry.EntryShadowTypePropertyInfo), '("showEmojiIcon", Gtk.Entry.EntryShowEmojiIconPropertyInfo), '("snapToTicks", SpinButtonSnapToTicksPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tabs", Gtk.Entry.EntryTabsPropertyInfo), '("text", Gtk.Entry.EntryTextPropertyInfo), '("textLength", Gtk.Entry.EntryTextLengthPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("truncateMultiline", Gtk.Entry.EntryTruncateMultilinePropertyInfo), '("updatePolicy", SpinButtonUpdatePolicyPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("value", SpinButtonValuePropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visibility", Gtk.Entry.EntryVisibilityPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthChars", Gtk.Entry.EntryWidthCharsPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("wrap", SpinButtonWrapPropertyInfo), '("xalign", Gtk.Entry.EntryXalignPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
spinButtonAdjustment :: AttrLabelProxy "adjustment"
spinButtonAdjustment = AttrLabelProxy

spinButtonClimbRate :: AttrLabelProxy "climbRate"
spinButtonClimbRate = AttrLabelProxy

spinButtonDigits :: AttrLabelProxy "digits"
spinButtonDigits = AttrLabelProxy

spinButtonNumeric :: AttrLabelProxy "numeric"
spinButtonNumeric = AttrLabelProxy

spinButtonSnapToTicks :: AttrLabelProxy "snapToTicks"
spinButtonSnapToTicks = AttrLabelProxy

spinButtonUpdatePolicy :: AttrLabelProxy "updatePolicy"
spinButtonUpdatePolicy = AttrLabelProxy

spinButtonValue :: AttrLabelProxy "value"
spinButtonValue = AttrLabelProxy

spinButtonWrap :: AttrLabelProxy "wrap"
spinButtonWrap = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SpinButton = SpinButtonSignalList
type SpinButtonSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", Gtk.Entry.EntryActivateSignalInfo), '("backspace", Gtk.Entry.EntryBackspaceSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeValue", SpinButtonChangeValueSignalInfo), '("changed", Gtk.Editable.EditableChangedSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("copyClipboard", Gtk.Entry.EntryCopyClipboardSignalInfo), '("cutClipboard", Gtk.Entry.EntryCutClipboardSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("deleteFromCursor", Gtk.Entry.EntryDeleteFromCursorSignalInfo), '("deleteText", Gtk.Editable.EditableDeleteTextSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("editingDone", Gtk.CellEditable.CellEditableEditingDoneSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("iconPress", Gtk.Entry.EntryIconPressSignalInfo), '("iconRelease", Gtk.Entry.EntryIconReleaseSignalInfo), '("input", SpinButtonInputSignalInfo), '("insertAtCursor", Gtk.Entry.EntryInsertAtCursorSignalInfo), '("insertEmoji", Gtk.Entry.EntryInsertEmojiSignalInfo), '("insertText", Gtk.Editable.EditableInsertTextSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveCursor", Gtk.Entry.EntryMoveCursorSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("output", SpinButtonOutputSignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("pasteClipboard", Gtk.Entry.EntryPasteClipboardSignalInfo), '("populatePopup", Gtk.Entry.EntryPopulatePopupSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("preeditChanged", Gtk.Entry.EntryPreeditChangedSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("removeWidget", Gtk.CellEditable.CellEditableRemoveWidgetSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleOverwrite", Gtk.Entry.EntryToggleOverwriteSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("valueChanged", SpinButtonValueChangedSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo), '("wrapped", SpinButtonWrappedSignalInfo)] :: [(Symbol, *)])

#endif

-- method SpinButton::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkAdjustment object that this spin\n    button should use, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "climb_rate"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "specifies by how much the rate of change in the value will\n    accelerate if you continue to hold down an up/down button or arrow key"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "digits"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of decimal places to display"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "SpinButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spin_button_new" gtk_spin_button_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- climb_rate : TBasicType TDouble
    Word32 ->                               -- digits : TBasicType TUInt
    IO (Ptr SpinButton)

-- | Creates a new t'GI.Gtk.Objects.SpinButton.SpinButton'.
spinButtonNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a) =>
    Maybe (a)
    -- ^ /@adjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' object that this spin
    --     button should use, or 'P.Nothing'
    -> Double
    -- ^ /@climbRate@/: specifies by how much the rate of change in the value will
    --     accelerate if you continue to hold down an up\/down button or arrow key
    -> Word32
    -- ^ /@digits@/: the number of decimal places to display
    -> m SpinButton
    -- ^ __Returns:__ The new spin button as a t'GI.Gtk.Objects.Widget.Widget'
spinButtonNew adjustment climbRate digits = liftIO $ do
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    let climbRate' = realToFrac climbRate
    result <- gtk_spin_button_new maybeAdjustment climbRate' digits
    checkUnexpectedReturnNULL "spinButtonNew" result
    result' <- (newObject SpinButton) result
    whenJust adjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SpinButton::new_with_range
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "min"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Minimum allowable value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "max"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Maximum allowable value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Increment added or subtracted by spinning the widget"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "SpinButton" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spin_button_new_with_range" gtk_spin_button_new_with_range :: 
    CDouble ->                              -- min : TBasicType TDouble
    CDouble ->                              -- max : TBasicType TDouble
    CDouble ->                              -- step : TBasicType TDouble
    IO (Ptr SpinButton)

-- | This is a convenience constructor that allows creation of a numeric
-- t'GI.Gtk.Objects.SpinButton.SpinButton' without manually creating an adjustment. The value is
-- initially set to the minimum value and a page increment of 10 * /@step@/
-- is the default. The precision of the spin button is equivalent to the
-- precision of /@step@/.
-- 
-- Note that the way in which the precision is derived works best if /@step@/
-- is a power of ten. If the resulting precision is not suitable for your
-- needs, use 'GI.Gtk.Objects.SpinButton.spinButtonSetDigits' to correct it.
spinButtonNewWithRange ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Double
    -- ^ /@min@/: Minimum allowable value
    -> Double
    -- ^ /@max@/: Maximum allowable value
    -> Double
    -- ^ /@step@/: Increment added or subtracted by spinning the widget
    -> m SpinButton
    -- ^ __Returns:__ The new spin button as a t'GI.Gtk.Objects.Widget.Widget'
spinButtonNewWithRange min max step = liftIO $ do
    let min' = realToFrac min
    let max' = realToFrac max
    let step' = realToFrac step
    result <- gtk_spin_button_new_with_range min' max' step'
    checkUnexpectedReturnNULL "spinButtonNewWithRange" result
    result' <- (newObject SpinButton) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method SpinButton::configure
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "a #GtkAdjustment to replace the spin button\8217s\n    existing adjustment, or %NULL to leave its current adjustment unchanged"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "climb_rate"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new climb rate" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "digits"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the number of decimal places to display in the spin button"
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

foreign import ccall "gtk_spin_button_configure" gtk_spin_button_configure :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    CDouble ->                              -- climb_rate : TBasicType TDouble
    Word32 ->                               -- digits : TBasicType TUInt
    IO ()

-- | Changes the properties of an existing spin button. The adjustment,
-- climb rate, and number of decimal places are updated accordingly.
spinButtonConfigure ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Maybe (b)
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment' to replace the spin button’s
    --     existing adjustment, or 'P.Nothing' to leave its current adjustment unchanged
    -> Double
    -- ^ /@climbRate@/: the new climb rate
    -> Word32
    -- ^ /@digits@/: the number of decimal places to display in the spin button
    -> m ()
spinButtonConfigure spinButton adjustment climbRate digits = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    maybeAdjustment <- case adjustment of
        Nothing -> return nullPtr
        Just jAdjustment -> do
            jAdjustment' <- unsafeManagedPtrCastPtr jAdjustment
            return jAdjustment'
    let climbRate' = realToFrac climbRate
    gtk_spin_button_configure spinButton' maybeAdjustment climbRate' digits
    touchManagedPtr spinButton
    whenJust adjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonConfigureMethodInfo
instance (signature ~ (Maybe (b) -> Double -> Word32 -> m ()), MonadIO m, IsSpinButton a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo SpinButtonConfigureMethodInfo a signature where
    overloadedMethod = spinButtonConfigure

#endif

-- method SpinButton::get_adjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spin_button_get_adjustment" gtk_spin_button_get_adjustment :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Get the adjustment associated with a t'GI.Gtk.Objects.SpinButton.SpinButton'
spinButtonGetAdjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Adjustment.Adjustment' of /@spinButton@/
spinButtonGetAdjustment spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_adjustment spinButton'
    checkUnexpectedReturnNULL "spinButtonGetAdjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetAdjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetAdjustmentMethodInfo a signature where
    overloadedMethod = spinButtonGetAdjustment

#endif

-- method SpinButton::get_digits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spin_button_get_digits" gtk_spin_button_get_digits :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO Word32

-- | Fetches the precision of /@spinButton@/. See 'GI.Gtk.Objects.SpinButton.spinButtonSetDigits'.
spinButtonGetDigits ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Word32
    -- ^ __Returns:__ the current precision
spinButtonGetDigits spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_digits spinButton'
    touchManagedPtr spinButton
    return result

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetDigitsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetDigitsMethodInfo a signature where
    overloadedMethod = spinButtonGetDigits

#endif

-- method SpinButton::get_increments
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to store step increment, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to store page increment, or %NULL"
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

foreign import ccall "gtk_spin_button_get_increments" gtk_spin_button_get_increments :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    Ptr CDouble ->                          -- step : TBasicType TDouble
    Ptr CDouble ->                          -- page : TBasicType TDouble
    IO ()

-- | Gets the current step and page the increments used by /@spinButton@/. See
-- 'GI.Gtk.Objects.SpinButton.spinButtonSetIncrements'.
spinButtonGetIncrements ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m ((Double, Double))
spinButtonGetIncrements spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    step <- allocMem :: IO (Ptr CDouble)
    page <- allocMem :: IO (Ptr CDouble)
    gtk_spin_button_get_increments spinButton' step page
    step' <- peek step
    let step'' = realToFrac step'
    page' <- peek page
    let page'' = realToFrac page'
    touchManagedPtr spinButton
    freeMem step
    freeMem page
    return (step'', page'')

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetIncrementsMethodInfo
instance (signature ~ (m ((Double, Double))), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetIncrementsMethodInfo a signature where
    overloadedMethod = spinButtonGetIncrements

#endif

-- method SpinButton::get_numeric
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_get_numeric" gtk_spin_button_get_numeric :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO CInt

-- | Returns whether non-numeric text can be typed into the spin button.
-- See 'GI.Gtk.Objects.SpinButton.spinButtonSetNumeric'.
spinButtonGetNumeric ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if only numeric text can be entered
spinButtonGetNumeric spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_numeric spinButton'
    let result' = (/= 0) result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetNumericMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetNumericMethodInfo a signature where
    overloadedMethod = spinButtonGetNumeric

#endif

-- method SpinButton::get_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "min"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store minimum allowed value, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "max"
--           , argType = TBasicType TDouble
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "location to store maximum allowed value, or %NULL"
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

foreign import ccall "gtk_spin_button_get_range" gtk_spin_button_get_range :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    Ptr CDouble ->                          -- min : TBasicType TDouble
    Ptr CDouble ->                          -- max : TBasicType TDouble
    IO ()

-- | Gets the range allowed for /@spinButton@/.
-- See 'GI.Gtk.Objects.SpinButton.spinButtonSetRange'.
spinButtonGetRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m ((Double, Double))
spinButtonGetRange spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    min <- allocMem :: IO (Ptr CDouble)
    max <- allocMem :: IO (Ptr CDouble)
    gtk_spin_button_get_range spinButton' min max
    min' <- peek min
    let min'' = realToFrac min'
    max' <- peek max
    let max'' = realToFrac max'
    touchManagedPtr spinButton
    freeMem min
    freeMem max
    return (min'', max'')

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetRangeMethodInfo
instance (signature ~ (m ((Double, Double))), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetRangeMethodInfo a signature where
    overloadedMethod = spinButtonGetRange

#endif

-- method SpinButton::get_snap_to_ticks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_get_snap_to_ticks" gtk_spin_button_get_snap_to_ticks :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO CInt

-- | Returns whether the values are corrected to the nearest step.
-- See 'GI.Gtk.Objects.SpinButton.spinButtonSetSnapToTicks'.
spinButtonGetSnapToTicks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if values are snapped to the nearest step
spinButtonGetSnapToTicks spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_snap_to_ticks spinButton'
    let result' = (/= 0) result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetSnapToTicksMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetSnapToTicksMethodInfo a signature where
    overloadedMethod = spinButtonGetSnapToTicks

#endif

-- method SpinButton::get_update_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Gtk" , name = "SpinButtonUpdatePolicy" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_spin_button_get_update_policy" gtk_spin_button_get_update_policy :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO CUInt

-- | Gets the update behavior of a spin button.
-- See 'GI.Gtk.Objects.SpinButton.spinButtonSetUpdatePolicy'.
spinButtonGetUpdatePolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Gtk.Enums.SpinButtonUpdatePolicy
    -- ^ __Returns:__ the current update policy
spinButtonGetUpdatePolicy spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_update_policy spinButton'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetUpdatePolicyMethodInfo
instance (signature ~ (m Gtk.Enums.SpinButtonUpdatePolicy), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetUpdatePolicyMethodInfo a signature where
    overloadedMethod = spinButtonGetUpdatePolicy

#endif

-- method SpinButton::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_get_value" gtk_spin_button_get_value :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO CDouble

-- | Get the value in the /@spinButton@/.
spinButtonGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Double
    -- ^ __Returns:__ the value of /@spinButton@/
spinButtonGetValue spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_value spinButton'
    let result' = realToFrac result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetValueMethodInfo
instance (signature ~ (m Double), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetValueMethodInfo a signature where
    overloadedMethod = spinButtonGetValue

#endif

-- method SpinButton::get_value_as_int
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_get_value_as_int" gtk_spin_button_get_value_as_int :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO Int32

-- | Get the value /@spinButton@/ represented as an integer.
spinButtonGetValueAsInt ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Int32
    -- ^ __Returns:__ the value of /@spinButton@/
spinButtonGetValueAsInt spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_value_as_int spinButton'
    touchManagedPtr spinButton
    return result

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetValueAsIntMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetValueAsIntMethodInfo a signature where
    overloadedMethod = spinButtonGetValueAsInt

#endif

-- method SpinButton::get_wrap
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_get_wrap" gtk_spin_button_get_wrap :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO CInt

-- | Returns whether the spin button’s value wraps around to the
-- opposite limit when the upper or lower limit of the range is
-- exceeded. See 'GI.Gtk.Objects.SpinButton.spinButtonSetWrap'.
spinButtonGetWrap ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the spin button wraps around
spinButtonGetWrap spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    result <- gtk_spin_button_get_wrap spinButton'
    let result' = (/= 0) result
    touchManagedPtr spinButton
    return result'

#if defined(ENABLE_OVERLOADING)
data SpinButtonGetWrapMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonGetWrapMethodInfo a signature where
    overloadedMethod = spinButtonGetWrap

#endif

-- method SpinButton::set_adjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "adjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkAdjustment to replace the existing adjustment"
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

foreign import ccall "gtk_spin_button_set_adjustment" gtk_spin_button_set_adjustment :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Replaces the t'GI.Gtk.Objects.Adjustment.Adjustment' associated with /@spinButton@/.
spinButtonSetAdjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> b
    -- ^ /@adjustment@/: a t'GI.Gtk.Objects.Adjustment.Adjustment' to replace the existing adjustment
    -> m ()
spinButtonSetAdjustment spinButton adjustment = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_spin_button_set_adjustment spinButton' adjustment'
    touchManagedPtr spinButton
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetAdjustmentMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsSpinButton a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo SpinButtonSetAdjustmentMethodInfo a signature where
    overloadedMethod = spinButtonSetAdjustment

#endif

-- method SpinButton::set_digits
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "digits"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the number of digits after the decimal point to be displayed for the spin button\8217s value"
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

foreign import ccall "gtk_spin_button_set_digits" gtk_spin_button_set_digits :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    Word32 ->                               -- digits : TBasicType TUInt
    IO ()

-- | Set the precision to be displayed by /@spinButton@/. Up to 20 digit precision
-- is allowed.
spinButtonSetDigits ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Word32
    -- ^ /@digits@/: the number of digits after the decimal point to be displayed for the spin button’s value
    -> m ()
spinButtonSetDigits spinButton digits = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    gtk_spin_button_set_digits spinButton' digits
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetDigitsMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetDigitsMethodInfo a signature where
    overloadedMethod = spinButtonSetDigits

#endif

-- method SpinButton::set_increments
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "step"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "increment applied for a button 1 press."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "increment applied for a button 2 press."
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

foreign import ccall "gtk_spin_button_set_increments" gtk_spin_button_set_increments :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CDouble ->                              -- step : TBasicType TDouble
    CDouble ->                              -- page : TBasicType TDouble
    IO ()

-- | Sets the step and page increments for spin_button.  This affects how
-- quickly the value changes when the spin button’s arrows are activated.
spinButtonSetIncrements ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Double
    -- ^ /@step@/: increment applied for a button 1 press.
    -> Double
    -- ^ /@page@/: increment applied for a button 2 press.
    -> m ()
spinButtonSetIncrements spinButton step page = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let step' = realToFrac step
    let page' = realToFrac page
    gtk_spin_button_set_increments spinButton' step' page'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetIncrementsMethodInfo
instance (signature ~ (Double -> Double -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetIncrementsMethodInfo a signature where
    overloadedMethod = spinButtonSetIncrements

#endif

-- method SpinButton::set_numeric
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "numeric"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "flag indicating if only numeric entry is allowed"
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

foreign import ccall "gtk_spin_button_set_numeric" gtk_spin_button_set_numeric :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CInt ->                                 -- numeric : TBasicType TBoolean
    IO ()

-- | Sets the flag that determines if non-numeric text can be typed
-- into the spin button.
spinButtonSetNumeric ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Bool
    -- ^ /@numeric@/: flag indicating if only numeric entry is allowed
    -> m ()
spinButtonSetNumeric spinButton numeric = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let numeric' = (fromIntegral . fromEnum) numeric
    gtk_spin_button_set_numeric spinButton' numeric'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetNumericMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetNumericMethodInfo a signature where
    overloadedMethod = spinButtonSetNumeric

#endif

-- method SpinButton::set_range
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "min"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "minimum allowable value"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "max"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "maximum allowable value"
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

foreign import ccall "gtk_spin_button_set_range" gtk_spin_button_set_range :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CDouble ->                              -- min : TBasicType TDouble
    CDouble ->                              -- max : TBasicType TDouble
    IO ()

-- | Sets the minimum and maximum allowable values for /@spinButton@/.
-- 
-- If the current value is outside this range, it will be adjusted
-- to fit within the range, otherwise it will remain unchanged.
spinButtonSetRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Double
    -- ^ /@min@/: minimum allowable value
    -> Double
    -- ^ /@max@/: maximum allowable value
    -> m ()
spinButtonSetRange spinButton min max = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let min' = realToFrac min
    let max' = realToFrac max
    gtk_spin_button_set_range spinButton' min' max'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetRangeMethodInfo
instance (signature ~ (Double -> Double -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetRangeMethodInfo a signature where
    overloadedMethod = spinButtonSetRange

#endif

-- method SpinButton::set_snap_to_ticks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "snap_to_ticks"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a flag indicating if invalid values should be corrected"
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

foreign import ccall "gtk_spin_button_set_snap_to_ticks" gtk_spin_button_set_snap_to_ticks :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CInt ->                                 -- snap_to_ticks : TBasicType TBoolean
    IO ()

-- | Sets the policy as to whether values are corrected to the
-- nearest step increment when a spin button is activated after
-- providing an invalid value.
spinButtonSetSnapToTicks ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Bool
    -- ^ /@snapToTicks@/: a flag indicating if invalid values should be corrected
    -> m ()
spinButtonSetSnapToTicks spinButton snapToTicks = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let snapToTicks' = (fromIntegral . fromEnum) snapToTicks
    gtk_spin_button_set_snap_to_ticks spinButton' snapToTicks'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetSnapToTicksMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetSnapToTicksMethodInfo a signature where
    overloadedMethod = spinButtonSetSnapToTicks

#endif

-- method SpinButton::set_update_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "policy"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "SpinButtonUpdatePolicy" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButtonUpdatePolicy value"
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

foreign import ccall "gtk_spin_button_set_update_policy" gtk_spin_button_set_update_policy :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CUInt ->                                -- policy : TInterface (Name {namespace = "Gtk", name = "SpinButtonUpdatePolicy"})
    IO ()

-- | Sets the update behavior of a spin button.
-- This determines whether the spin button is always updated
-- or only when a valid value is set.
spinButtonSetUpdatePolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Gtk.Enums.SpinButtonUpdatePolicy
    -- ^ /@policy@/: a t'GI.Gtk.Enums.SpinButtonUpdatePolicy' value
    -> m ()
spinButtonSetUpdatePolicy spinButton policy = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let policy' = (fromIntegral . fromEnum) policy
    gtk_spin_button_set_update_policy spinButton' policy'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetUpdatePolicyMethodInfo
instance (signature ~ (Gtk.Enums.SpinButtonUpdatePolicy -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetUpdatePolicyMethodInfo a signature where
    overloadedMethod = spinButtonSetUpdatePolicy

#endif

-- method SpinButton::set_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new value" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_set_value" gtk_spin_button_set_value :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CDouble ->                              -- value : TBasicType TDouble
    IO ()

-- | Sets the value of /@spinButton@/.
spinButtonSetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Double
    -- ^ /@value@/: the new value
    -> m ()
spinButtonSetValue spinButton value = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let value' = realToFrac value
    gtk_spin_button_set_value spinButton' value'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetValueMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetValueMethodInfo a signature where
    overloadedMethod = spinButtonSetValue

#endif

-- method SpinButton::set_wrap
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wrap"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a flag indicating if wrapping behavior is performed"
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

foreign import ccall "gtk_spin_button_set_wrap" gtk_spin_button_set_wrap :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CInt ->                                 -- wrap : TBasicType TBoolean
    IO ()

-- | Sets the flag that determines if a spin button value wraps
-- around to the opposite limit when the upper or lower limit
-- of the range is exceeded.
spinButtonSetWrap ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Bool
    -- ^ /@wrap@/: a flag indicating if wrapping behavior is performed
    -> m ()
spinButtonSetWrap spinButton wrap = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let wrap' = (fromIntegral . fromEnum) wrap
    gtk_spin_button_set_wrap spinButton' wrap'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSetWrapMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSetWrapMethodInfo a signature where
    overloadedMethod = spinButtonSetWrap

#endif

-- method SpinButton::spin
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "direction"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "a #GtkSpinType indicating the direction to spin"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "increment"
--           , argType = TBasicType TDouble
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "step increment to apply in the specified direction"
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

foreign import ccall "gtk_spin_button_spin" gtk_spin_button_spin :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    CUInt ->                                -- direction : TInterface (Name {namespace = "Gtk", name = "SpinType"})
    CDouble ->                              -- increment : TBasicType TDouble
    IO ()

-- | Increment or decrement a spin button’s value in a specified
-- direction by a specified amount.
spinButtonSpin ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> Gtk.Enums.SpinType
    -- ^ /@direction@/: a t'GI.Gtk.Enums.SpinType' indicating the direction to spin
    -> Double
    -- ^ /@increment@/: step increment to apply in the specified direction
    -> m ()
spinButtonSpin spinButton direction increment = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    let direction' = (fromIntegral . fromEnum) direction
    let increment' = realToFrac increment
    gtk_spin_button_spin spinButton' direction' increment'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonSpinMethodInfo
instance (signature ~ (Gtk.Enums.SpinType -> Double -> m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonSpinMethodInfo a signature where
    overloadedMethod = spinButtonSpin

#endif

-- method SpinButton::update
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "spin_button"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SpinButton" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkSpinButton" , sinceVersion = Nothing }
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

foreign import ccall "gtk_spin_button_update" gtk_spin_button_update :: 
    Ptr SpinButton ->                       -- spin_button : TInterface (Name {namespace = "Gtk", name = "SpinButton"})
    IO ()

-- | Manually force an update of the spin button.
spinButtonUpdate ::
    (B.CallStack.HasCallStack, MonadIO m, IsSpinButton a) =>
    a
    -- ^ /@spinButton@/: a t'GI.Gtk.Objects.SpinButton.SpinButton'
    -> m ()
spinButtonUpdate spinButton = liftIO $ do
    spinButton' <- unsafeManagedPtrCastPtr spinButton
    gtk_spin_button_update spinButton'
    touchManagedPtr spinButton
    return ()

#if defined(ENABLE_OVERLOADING)
data SpinButtonUpdateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsSpinButton a) => O.MethodInfo SpinButtonUpdateMethodInfo a signature where
    overloadedMethod = spinButtonUpdate

#endif

