{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GtkComboBox is a widget that allows the user to choose from a list of
-- valid choices. The GtkComboBox displays the selected choice. When
-- activated, the GtkComboBox displays a popup which allows the user to
-- make a new choice. The style in which the selected value is displayed,
-- and the style of the popup is determined by the current theme. It may
-- be similar to a Windows-style combo box.
-- 
-- The GtkComboBox uses the model-view pattern; the list of valid choices
-- is specified in the form of a tree model, and the display of the choices
-- can be adapted to the data in the model by using cell renderers, as you
-- would in a tree view. This is possible since GtkComboBox implements the
-- t'GI.Gtk.Interfaces.CellLayout.CellLayout' interface. The tree model holding the valid choices is
-- not restricted to a flat list, it can be a real tree, and the popup will
-- reflect the tree structure.
-- 
-- To allow the user to enter values not in the model, the “has-entry”
-- property allows the GtkComboBox to contain a t'GI.Gtk.Objects.Entry.Entry'. This entry
-- can be accessed by calling 'GI.Gtk.Objects.Bin.binGetChild' on the combo box.
-- 
-- For a simple list of textual choices, the model-view API of GtkComboBox
-- can be a bit overwhelming. In this case, t'GI.Gtk.Objects.ComboBoxText.ComboBoxText' offers a
-- simple alternative. Both GtkComboBox and t'GI.Gtk.Objects.ComboBoxText.ComboBoxText' can contain
-- an entry.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >combobox
-- >├── box.linked
-- >│   ╰── button.combo
-- >│       ╰── box
-- >│           ├── cellview
-- >│           ╰── arrow
-- >╰── window.popup
-- 
-- 
-- A normal combobox contains a box with the .linked class, a button
-- with the .combo class and inside those buttons, there are a cellview and
-- an arrow.
-- 
-- 
-- === /plain code/
-- >
-- >combobox
-- >├── box.linked
-- >│   ├── entry.combo
-- >│   ╰── button.combo
-- >│       ╰── box
-- >│           ╰── arrow
-- >╰── window.popup
-- 
-- 
-- A GtkComboBox with an entry has a single CSS node with name combobox. It
-- contains a box with the .linked class. That box contains an entry and a
-- button, both with the .combo class added.
-- The button also contains another node with name arrow.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ComboBox
    ( 

-- * Exported types
    ComboBox(..)                            ,
    IsComboBox                              ,
    toComboBox                              ,
    noComboBox                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveComboBoxMethod                   ,
#endif


-- ** getActive #method:getActive#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetActiveMethodInfo             ,
#endif
    comboBoxGetActive                       ,


-- ** getActiveId #method:getActiveId#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetActiveIdMethodInfo           ,
#endif
    comboBoxGetActiveId                     ,


-- ** getActiveIter #method:getActiveIter#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetActiveIterMethodInfo         ,
#endif
    comboBoxGetActiveIter                   ,


-- ** getAddTearoffs #method:getAddTearoffs#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetAddTearoffsMethodInfo        ,
#endif
    comboBoxGetAddTearoffs                  ,


-- ** getButtonSensitivity #method:getButtonSensitivity#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetButtonSensitivityMethodInfo  ,
#endif
    comboBoxGetButtonSensitivity            ,


-- ** getColumnSpanColumn #method:getColumnSpanColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetColumnSpanColumnMethodInfo   ,
#endif
    comboBoxGetColumnSpanColumn             ,


-- ** getEntryTextColumn #method:getEntryTextColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetEntryTextColumnMethodInfo    ,
#endif
    comboBoxGetEntryTextColumn              ,


-- ** getFocusOnClick #method:getFocusOnClick#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetFocusOnClickMethodInfo       ,
#endif
    comboBoxGetFocusOnClick                 ,


-- ** getHasEntry #method:getHasEntry#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetHasEntryMethodInfo           ,
#endif
    comboBoxGetHasEntry                     ,


-- ** getIdColumn #method:getIdColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetIdColumnMethodInfo           ,
#endif
    comboBoxGetIdColumn                     ,


-- ** getModel #method:getModel#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetModelMethodInfo              ,
#endif
    comboBoxGetModel                        ,


-- ** getPopupAccessible #method:getPopupAccessible#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetPopupAccessibleMethodInfo    ,
#endif
    comboBoxGetPopupAccessible              ,


-- ** getPopupFixedWidth #method:getPopupFixedWidth#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetPopupFixedWidthMethodInfo    ,
#endif
    comboBoxGetPopupFixedWidth              ,


-- ** getRowSpanColumn #method:getRowSpanColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetRowSpanColumnMethodInfo      ,
#endif
    comboBoxGetRowSpanColumn                ,


-- ** getTitle #method:getTitle#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetTitleMethodInfo              ,
#endif
    comboBoxGetTitle                        ,


-- ** getWrapWidth #method:getWrapWidth#

#if defined(ENABLE_OVERLOADING)
    ComboBoxGetWrapWidthMethodInfo          ,
#endif
    comboBoxGetWrapWidth                    ,


-- ** new #method:new#

    comboBoxNew                             ,


-- ** newWithArea #method:newWithArea#

    comboBoxNewWithArea                     ,


-- ** newWithAreaAndEntry #method:newWithAreaAndEntry#

    comboBoxNewWithAreaAndEntry             ,


-- ** newWithEntry #method:newWithEntry#

    comboBoxNewWithEntry                    ,


-- ** newWithModel #method:newWithModel#

    comboBoxNewWithModel                    ,


-- ** newWithModelAndEntry #method:newWithModelAndEntry#

    comboBoxNewWithModelAndEntry            ,


-- ** popdown #method:popdown#

#if defined(ENABLE_OVERLOADING)
    ComboBoxPopdownMethodInfo               ,
#endif
    comboBoxPopdown                         ,


-- ** popup #method:popup#

#if defined(ENABLE_OVERLOADING)
    ComboBoxPopupMethodInfo                 ,
#endif
    comboBoxPopup                           ,


-- ** popupForDevice #method:popupForDevice#

#if defined(ENABLE_OVERLOADING)
    ComboBoxPopupForDeviceMethodInfo        ,
#endif
    comboBoxPopupForDevice                  ,


-- ** setActive #method:setActive#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetActiveMethodInfo             ,
#endif
    comboBoxSetActive                       ,


-- ** setActiveId #method:setActiveId#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetActiveIdMethodInfo           ,
#endif
    comboBoxSetActiveId                     ,


-- ** setActiveIter #method:setActiveIter#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetActiveIterMethodInfo         ,
#endif
    comboBoxSetActiveIter                   ,


-- ** setAddTearoffs #method:setAddTearoffs#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetAddTearoffsMethodInfo        ,
#endif
    comboBoxSetAddTearoffs                  ,


-- ** setButtonSensitivity #method:setButtonSensitivity#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetButtonSensitivityMethodInfo  ,
#endif
    comboBoxSetButtonSensitivity            ,


-- ** setColumnSpanColumn #method:setColumnSpanColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetColumnSpanColumnMethodInfo   ,
#endif
    comboBoxSetColumnSpanColumn             ,


-- ** setEntryTextColumn #method:setEntryTextColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetEntryTextColumnMethodInfo    ,
#endif
    comboBoxSetEntryTextColumn              ,


-- ** setFocusOnClick #method:setFocusOnClick#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetFocusOnClickMethodInfo       ,
#endif
    comboBoxSetFocusOnClick                 ,


-- ** setIdColumn #method:setIdColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetIdColumnMethodInfo           ,
#endif
    comboBoxSetIdColumn                     ,


-- ** setModel #method:setModel#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetModelMethodInfo              ,
#endif
    comboBoxSetModel                        ,


-- ** setPopupFixedWidth #method:setPopupFixedWidth#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetPopupFixedWidthMethodInfo    ,
#endif
    comboBoxSetPopupFixedWidth              ,


-- ** setRowSeparatorFunc #method:setRowSeparatorFunc#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetRowSeparatorFuncMethodInfo   ,
#endif
    comboBoxSetRowSeparatorFunc             ,


-- ** setRowSpanColumn #method:setRowSpanColumn#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetRowSpanColumnMethodInfo      ,
#endif
    comboBoxSetRowSpanColumn                ,


-- ** setTitle #method:setTitle#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetTitleMethodInfo              ,
#endif
    comboBoxSetTitle                        ,


-- ** setWrapWidth #method:setWrapWidth#

#if defined(ENABLE_OVERLOADING)
    ComboBoxSetWrapWidthMethodInfo          ,
#endif
    comboBoxSetWrapWidth                    ,




 -- * Properties
-- ** active #attr:active#
-- | The item which is currently active. If the model is a non-flat treemodel,
-- and the active item is not an immediate child of the root of the tree,
-- this property has the value
-- @gtk_tree_path_get_indices (path)[0]@,
-- where @path@ is the t'GI.Gtk.Structs.TreePath.TreePath' of the active item.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ComboBoxActivePropertyInfo              ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxActive                          ,
#endif
    constructComboBoxActive                 ,
    getComboBoxActive                       ,
    setComboBoxActive                       ,


-- ** activeId #attr:activeId#
-- | The value of the ID column of the active row.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ComboBoxActiveIdPropertyInfo            ,
#endif
    clearComboBoxActiveId                   ,
#if defined(ENABLE_OVERLOADING)
    comboBoxActiveId                        ,
#endif
    constructComboBoxActiveId               ,
    getComboBoxActiveId                     ,
    setComboBoxActiveId                     ,


-- ** addTearoffs #attr:addTearoffs#
-- | The add-tearoffs property controls whether generated menus
-- have tearoff menu items.
-- 
-- Note that this only affects menu style combo boxes.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    ComboBoxAddTearoffsPropertyInfo         ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxAddTearoffs                     ,
#endif
    constructComboBoxAddTearoffs            ,
    getComboBoxAddTearoffs                  ,
    setComboBoxAddTearoffs                  ,


-- ** buttonSensitivity #attr:buttonSensitivity#
-- | Whether the dropdown button is sensitive when
-- the model is empty.
-- 
-- /Since: 2.14/

#if defined(ENABLE_OVERLOADING)
    ComboBoxButtonSensitivityPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxButtonSensitivity               ,
#endif
    constructComboBoxButtonSensitivity      ,
    getComboBoxButtonSensitivity            ,
    setComboBoxButtonSensitivity            ,


-- ** cellArea #attr:cellArea#
-- | The t'GI.Gtk.Objects.CellArea.CellArea' used to layout cell renderers for this combo box.
-- 
-- If no area is specified when creating the combo box with 'GI.Gtk.Objects.ComboBox.comboBoxNewWithArea'
-- a horizontally oriented t'GI.Gtk.Objects.CellAreaBox.CellAreaBox' will be used.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ComboBoxCellAreaPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxCellArea                        ,
#endif
    constructComboBoxCellArea               ,
    getComboBoxCellArea                     ,


-- ** columnSpanColumn #attr:columnSpanColumn#
-- | If this is set to a non-negative value, it must be the index of a column
-- of type @/G_TYPE_INT/@ in the model. The value in that column for each item
-- will determine how many columns that item will span in the popup.
-- Therefore, values in this column must be greater than zero, and the sum of
-- an item’s column position + span should not exceed t'GI.Gtk.Objects.ComboBox.ComboBox':@/wrap-width/@.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ComboBoxColumnSpanColumnPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxColumnSpanColumn                ,
#endif
    constructComboBoxColumnSpanColumn       ,
    getComboBoxColumnSpanColumn             ,
    setComboBoxColumnSpanColumn             ,


-- ** entryTextColumn #attr:entryTextColumn#
-- | The column in the combo box\'s model to associate with strings from the entry
-- if the combo was created with t'GI.Gtk.Objects.ComboBox.ComboBox':@/has-entry/@ = 'P.True'.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    ComboBoxEntryTextColumnPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxEntryTextColumn                 ,
#endif
    constructComboBoxEntryTextColumn        ,
    getComboBoxEntryTextColumn              ,
    setComboBoxEntryTextColumn              ,


-- ** hasEntry #attr:hasEntry#
-- | Whether the combo box has an entry.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    ComboBoxHasEntryPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxHasEntry                        ,
#endif
    constructComboBoxHasEntry               ,
    getComboBoxHasEntry                     ,


-- ** hasFrame #attr:hasFrame#
-- | The has-frame property controls whether a frame
-- is drawn around the entry.
-- 
-- /Since: 2.6/

#if defined(ENABLE_OVERLOADING)
    ComboBoxHasFramePropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxHasFrame                        ,
#endif
    constructComboBoxHasFrame               ,
    getComboBoxHasFrame                     ,
    setComboBoxHasFrame                     ,


-- ** idColumn #attr:idColumn#
-- | The column in the combo box\'s model that provides string
-- IDs for the values in the model, if != -1.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ComboBoxIdColumnPropertyInfo            ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxIdColumn                        ,
#endif
    constructComboBoxIdColumn               ,
    getComboBoxIdColumn                     ,
    setComboBoxIdColumn                     ,


-- ** model #attr:model#
-- | The model from which the combo box takes the values shown
-- in the list.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ComboBoxModelPropertyInfo               ,
#endif
    clearComboBoxModel                      ,
#if defined(ENABLE_OVERLOADING)
    comboBoxModel                           ,
#endif
    constructComboBoxModel                  ,
    getComboBoxModel                        ,
    setComboBoxModel                        ,


-- ** popupFixedWidth #attr:popupFixedWidth#
-- | Whether the popup\'s width should be a fixed width matching the
-- allocated width of the combo box.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ComboBoxPopupFixedWidthPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxPopupFixedWidth                 ,
#endif
    constructComboBoxPopupFixedWidth        ,
    getComboBoxPopupFixedWidth              ,
    setComboBoxPopupFixedWidth              ,


-- ** popupShown #attr:popupShown#
-- | Whether the combo boxes dropdown is popped up.
-- Note that this property is mainly useful, because
-- it allows you to connect to notify[popupShown](#signal:popupShown).
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ComboBoxPopupShownPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxPopupShown                      ,
#endif
    getComboBoxPopupShown                   ,


-- ** rowSpanColumn #attr:rowSpanColumn#
-- | If this is set to a non-negative value, it must be the index of a column
-- of type @/G_TYPE_INT/@ in the model. The value in that column for each item
-- will determine how many rows that item will span in the popup. Therefore,
-- values in this column must be greater than zero.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ComboBoxRowSpanColumnPropertyInfo       ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxRowSpanColumn                   ,
#endif
    constructComboBoxRowSpanColumn          ,
    getComboBoxRowSpanColumn                ,
    setComboBoxRowSpanColumn                ,


-- ** tearoffTitle #attr:tearoffTitle#
-- | A title that may be displayed by the window manager
-- when the popup is torn-off.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ComboBoxTearoffTitlePropertyInfo        ,
#endif
    clearComboBoxTearoffTitle               ,
#if defined(ENABLE_OVERLOADING)
    comboBoxTearoffTitle                    ,
#endif
    constructComboBoxTearoffTitle           ,
    getComboBoxTearoffTitle                 ,
    setComboBoxTearoffTitle                 ,


-- ** wrapWidth #attr:wrapWidth#
-- | If wrap-width is set to a positive value, items in the popup will be laid
-- out along multiple columns, starting a new row on reaching the wrap width.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    ComboBoxWrapWidthPropertyInfo           ,
#endif
#if defined(ENABLE_OVERLOADING)
    comboBoxWrapWidth                       ,
#endif
    constructComboBoxWrapWidth              ,
    getComboBoxWrapWidth                    ,
    setComboBoxWrapWidth                    ,




 -- * Signals
-- ** changed #signal:changed#

    C_ComboBoxChangedCallback               ,
    ComboBoxChangedCallback                 ,
#if defined(ENABLE_OVERLOADING)
    ComboBoxChangedSignalInfo               ,
#endif
    afterComboBoxChanged                    ,
    genClosure_ComboBoxChanged              ,
    mk_ComboBoxChangedCallback              ,
    noComboBoxChangedCallback               ,
    onComboBoxChanged                       ,
    wrap_ComboBoxChangedCallback            ,


-- ** formatEntryText #signal:formatEntryText#

    C_ComboBoxFormatEntryTextCallback       ,
    ComboBoxFormatEntryTextCallback         ,
#if defined(ENABLE_OVERLOADING)
    ComboBoxFormatEntryTextSignalInfo       ,
#endif
    afterComboBoxFormatEntryText            ,
    genClosure_ComboBoxFormatEntryText      ,
    mk_ComboBoxFormatEntryTextCallback      ,
    noComboBoxFormatEntryTextCallback       ,
    onComboBoxFormatEntryText               ,
    wrap_ComboBoxFormatEntryTextCallback    ,


-- ** moveActive #signal:moveActive#

    C_ComboBoxMoveActiveCallback            ,
    ComboBoxMoveActiveCallback              ,
#if defined(ENABLE_OVERLOADING)
    ComboBoxMoveActiveSignalInfo            ,
#endif
    afterComboBoxMoveActive                 ,
    genClosure_ComboBoxMoveActive           ,
    mk_ComboBoxMoveActiveCallback           ,
    noComboBoxMoveActiveCallback            ,
    onComboBoxMoveActive                    ,
    wrap_ComboBoxMoveActiveCallback         ,


-- ** popdown #signal:popdown#

    C_ComboBoxPopdownCallback               ,
    ComboBoxPopdownCallback                 ,
#if defined(ENABLE_OVERLOADING)
    ComboBoxPopdownSignalInfo               ,
#endif
    afterComboBoxPopdown                    ,
    genClosure_ComboBoxPopdown              ,
    mk_ComboBoxPopdownCallback              ,
    noComboBoxPopdownCallback               ,
    onComboBoxPopdown                       ,
    wrap_ComboBoxPopdownCallback            ,


-- ** popup #signal:popup#

    C_ComboBoxPopupCallback                 ,
    ComboBoxPopupCallback                   ,
#if defined(ENABLE_OVERLOADING)
    ComboBoxPopupSignalInfo                 ,
#endif
    afterComboBoxPopup                      ,
    genClosure_ComboBoxPopup                ,
    mk_ComboBoxPopupCallback                ,
    noComboBoxPopupCallback                 ,
    onComboBoxPopup                         ,
    wrap_ComboBoxPopupCallback              ,




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
import qualified GI.Atk.Objects.Object as Atk.Object
import qualified GI.GLib.Callbacks as GLib.Callbacks
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gdk.Objects.Device as Gdk.Device
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellEditable as Gtk.CellEditable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.CellLayout as Gtk.CellLayout
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.TreeModel as Gtk.TreeModel
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.CellArea as Gtk.CellArea
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.TreeIter as Gtk.TreeIter

-- | Memory-managed wrapper type.
newtype ComboBox = ComboBox (ManagedPtr ComboBox)
    deriving (Eq)
foreign import ccall "gtk_combo_box_get_type"
    c_gtk_combo_box_get_type :: IO GType

instance GObject ComboBox where
    gobjectType = c_gtk_combo_box_get_type
    

-- | Convert 'ComboBox' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ComboBox where
    toGValue o = do
        gtype <- c_gtk_combo_box_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ComboBox)
        B.ManagedPtr.newObject ComboBox ptr
        
    

-- | Type class for types which can be safely cast to `ComboBox`, for instance with `toComboBox`.
class (GObject o, O.IsDescendantOf ComboBox o) => IsComboBox o
instance (GObject o, O.IsDescendantOf ComboBox o) => IsComboBox o

instance O.HasParentTypes ComboBox
type instance O.ParentTypes ComboBox = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.CellEditable.CellEditable, Gtk.CellLayout.CellLayout]

-- | Cast to `ComboBox`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toComboBox :: (MonadIO m, IsComboBox o) => o -> m ComboBox
toComboBox = liftIO . unsafeCastTo ComboBox

-- | A convenience alias for `Nothing` :: `Maybe` `ComboBox`.
noComboBox :: Maybe ComboBox
noComboBox = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveComboBoxMethod (t :: Symbol) (o :: *) :: * where
    ResolveComboBoxMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveComboBoxMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveComboBoxMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveComboBoxMethod "addAttribute" o = Gtk.CellLayout.CellLayoutAddAttributeMethodInfo
    ResolveComboBoxMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveComboBoxMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveComboBoxMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveComboBoxMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveComboBoxMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveComboBoxMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveComboBoxMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveComboBoxMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveComboBoxMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveComboBoxMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveComboBoxMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveComboBoxMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveComboBoxMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveComboBoxMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveComboBoxMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveComboBoxMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveComboBoxMethod "clear" o = Gtk.CellLayout.CellLayoutClearMethodInfo
    ResolveComboBoxMethod "clearAttributes" o = Gtk.CellLayout.CellLayoutClearAttributesMethodInfo
    ResolveComboBoxMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveComboBoxMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveComboBoxMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveComboBoxMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveComboBoxMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveComboBoxMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveComboBoxMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveComboBoxMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveComboBoxMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveComboBoxMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveComboBoxMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveComboBoxMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveComboBoxMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveComboBoxMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveComboBoxMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveComboBoxMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveComboBoxMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveComboBoxMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveComboBoxMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveComboBoxMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveComboBoxMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveComboBoxMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveComboBoxMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveComboBoxMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveComboBoxMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveComboBoxMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveComboBoxMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveComboBoxMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveComboBoxMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveComboBoxMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveComboBoxMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveComboBoxMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveComboBoxMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveComboBoxMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveComboBoxMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveComboBoxMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveComboBoxMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveComboBoxMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveComboBoxMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveComboBoxMethod "editingDone" o = Gtk.CellEditable.CellEditableEditingDoneMethodInfo
    ResolveComboBoxMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveComboBoxMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveComboBoxMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveComboBoxMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveComboBoxMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveComboBoxMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveComboBoxMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveComboBoxMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveComboBoxMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveComboBoxMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveComboBoxMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveComboBoxMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveComboBoxMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveComboBoxMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveComboBoxMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveComboBoxMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveComboBoxMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveComboBoxMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveComboBoxMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveComboBoxMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveComboBoxMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveComboBoxMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveComboBoxMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveComboBoxMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveComboBoxMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveComboBoxMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveComboBoxMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveComboBoxMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveComboBoxMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveComboBoxMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveComboBoxMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveComboBoxMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveComboBoxMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveComboBoxMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveComboBoxMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveComboBoxMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveComboBoxMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveComboBoxMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveComboBoxMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveComboBoxMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveComboBoxMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveComboBoxMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveComboBoxMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveComboBoxMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveComboBoxMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveComboBoxMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveComboBoxMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveComboBoxMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveComboBoxMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveComboBoxMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveComboBoxMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveComboBoxMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveComboBoxMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveComboBoxMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveComboBoxMethod "packEnd" o = Gtk.CellLayout.CellLayoutPackEndMethodInfo
    ResolveComboBoxMethod "packStart" o = Gtk.CellLayout.CellLayoutPackStartMethodInfo
    ResolveComboBoxMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveComboBoxMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveComboBoxMethod "popdown" o = ComboBoxPopdownMethodInfo
    ResolveComboBoxMethod "popup" o = ComboBoxPopupMethodInfo
    ResolveComboBoxMethod "popupForDevice" o = ComboBoxPopupForDeviceMethodInfo
    ResolveComboBoxMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveComboBoxMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveComboBoxMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveComboBoxMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveComboBoxMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveComboBoxMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveComboBoxMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveComboBoxMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveComboBoxMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveComboBoxMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveComboBoxMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveComboBoxMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveComboBoxMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveComboBoxMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveComboBoxMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveComboBoxMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveComboBoxMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveComboBoxMethod "removeWidget" o = Gtk.CellEditable.CellEditableRemoveWidgetMethodInfo
    ResolveComboBoxMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveComboBoxMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveComboBoxMethod "reorder" o = Gtk.CellLayout.CellLayoutReorderMethodInfo
    ResolveComboBoxMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveComboBoxMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveComboBoxMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveComboBoxMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveComboBoxMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveComboBoxMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveComboBoxMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveComboBoxMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveComboBoxMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveComboBoxMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveComboBoxMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveComboBoxMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveComboBoxMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveComboBoxMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveComboBoxMethod "startEditing" o = Gtk.CellEditable.CellEditableStartEditingMethodInfo
    ResolveComboBoxMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveComboBoxMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveComboBoxMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveComboBoxMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveComboBoxMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveComboBoxMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveComboBoxMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveComboBoxMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveComboBoxMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveComboBoxMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveComboBoxMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveComboBoxMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveComboBoxMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveComboBoxMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveComboBoxMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveComboBoxMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveComboBoxMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveComboBoxMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveComboBoxMethod "getActive" o = ComboBoxGetActiveMethodInfo
    ResolveComboBoxMethod "getActiveId" o = ComboBoxGetActiveIdMethodInfo
    ResolveComboBoxMethod "getActiveIter" o = ComboBoxGetActiveIterMethodInfo
    ResolveComboBoxMethod "getAddTearoffs" o = ComboBoxGetAddTearoffsMethodInfo
    ResolveComboBoxMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveComboBoxMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveComboBoxMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveComboBoxMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveComboBoxMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveComboBoxMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveComboBoxMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveComboBoxMethod "getArea" o = Gtk.CellLayout.CellLayoutGetAreaMethodInfo
    ResolveComboBoxMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveComboBoxMethod "getButtonSensitivity" o = ComboBoxGetButtonSensitivityMethodInfo
    ResolveComboBoxMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveComboBoxMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveComboBoxMethod "getCells" o = Gtk.CellLayout.CellLayoutGetCellsMethodInfo
    ResolveComboBoxMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveComboBoxMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveComboBoxMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveComboBoxMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveComboBoxMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveComboBoxMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveComboBoxMethod "getColumnSpanColumn" o = ComboBoxGetColumnSpanColumnMethodInfo
    ResolveComboBoxMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveComboBoxMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveComboBoxMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveComboBoxMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveComboBoxMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveComboBoxMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveComboBoxMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveComboBoxMethod "getEntryTextColumn" o = ComboBoxGetEntryTextColumnMethodInfo
    ResolveComboBoxMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveComboBoxMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveComboBoxMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveComboBoxMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveComboBoxMethod "getFocusOnClick" o = ComboBoxGetFocusOnClickMethodInfo
    ResolveComboBoxMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveComboBoxMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveComboBoxMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveComboBoxMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveComboBoxMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveComboBoxMethod "getHasEntry" o = ComboBoxGetHasEntryMethodInfo
    ResolveComboBoxMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveComboBoxMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveComboBoxMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveComboBoxMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveComboBoxMethod "getIdColumn" o = ComboBoxGetIdColumnMethodInfo
    ResolveComboBoxMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveComboBoxMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveComboBoxMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveComboBoxMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveComboBoxMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveComboBoxMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveComboBoxMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveComboBoxMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveComboBoxMethod "getModel" o = ComboBoxGetModelMethodInfo
    ResolveComboBoxMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveComboBoxMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveComboBoxMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveComboBoxMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveComboBoxMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveComboBoxMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveComboBoxMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveComboBoxMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveComboBoxMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveComboBoxMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveComboBoxMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveComboBoxMethod "getPopupAccessible" o = ComboBoxGetPopupAccessibleMethodInfo
    ResolveComboBoxMethod "getPopupFixedWidth" o = ComboBoxGetPopupFixedWidthMethodInfo
    ResolveComboBoxMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveComboBoxMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveComboBoxMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveComboBoxMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveComboBoxMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveComboBoxMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveComboBoxMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveComboBoxMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveComboBoxMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveComboBoxMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveComboBoxMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveComboBoxMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveComboBoxMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveComboBoxMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveComboBoxMethod "getRowSpanColumn" o = ComboBoxGetRowSpanColumnMethodInfo
    ResolveComboBoxMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveComboBoxMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveComboBoxMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveComboBoxMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveComboBoxMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveComboBoxMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveComboBoxMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveComboBoxMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveComboBoxMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveComboBoxMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveComboBoxMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveComboBoxMethod "getTitle" o = ComboBoxGetTitleMethodInfo
    ResolveComboBoxMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveComboBoxMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveComboBoxMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveComboBoxMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveComboBoxMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveComboBoxMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveComboBoxMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveComboBoxMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveComboBoxMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveComboBoxMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveComboBoxMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveComboBoxMethod "getWrapWidth" o = ComboBoxGetWrapWidthMethodInfo
    ResolveComboBoxMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveComboBoxMethod "setActive" o = ComboBoxSetActiveMethodInfo
    ResolveComboBoxMethod "setActiveId" o = ComboBoxSetActiveIdMethodInfo
    ResolveComboBoxMethod "setActiveIter" o = ComboBoxSetActiveIterMethodInfo
    ResolveComboBoxMethod "setAddTearoffs" o = ComboBoxSetAddTearoffsMethodInfo
    ResolveComboBoxMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveComboBoxMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveComboBoxMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveComboBoxMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveComboBoxMethod "setButtonSensitivity" o = ComboBoxSetButtonSensitivityMethodInfo
    ResolveComboBoxMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveComboBoxMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveComboBoxMethod "setCellDataFunc" o = Gtk.CellLayout.CellLayoutSetCellDataFuncMethodInfo
    ResolveComboBoxMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveComboBoxMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveComboBoxMethod "setColumnSpanColumn" o = ComboBoxSetColumnSpanColumnMethodInfo
    ResolveComboBoxMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveComboBoxMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveComboBoxMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveComboBoxMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveComboBoxMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveComboBoxMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveComboBoxMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveComboBoxMethod "setEntryTextColumn" o = ComboBoxSetEntryTextColumnMethodInfo
    ResolveComboBoxMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveComboBoxMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveComboBoxMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveComboBoxMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveComboBoxMethod "setFocusOnClick" o = ComboBoxSetFocusOnClickMethodInfo
    ResolveComboBoxMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveComboBoxMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveComboBoxMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveComboBoxMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveComboBoxMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveComboBoxMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveComboBoxMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveComboBoxMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveComboBoxMethod "setIdColumn" o = ComboBoxSetIdColumnMethodInfo
    ResolveComboBoxMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveComboBoxMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveComboBoxMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveComboBoxMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveComboBoxMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveComboBoxMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveComboBoxMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveComboBoxMethod "setModel" o = ComboBoxSetModelMethodInfo
    ResolveComboBoxMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveComboBoxMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveComboBoxMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveComboBoxMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveComboBoxMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveComboBoxMethod "setPopupFixedWidth" o = ComboBoxSetPopupFixedWidthMethodInfo
    ResolveComboBoxMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveComboBoxMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveComboBoxMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveComboBoxMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveComboBoxMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveComboBoxMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveComboBoxMethod "setRowSeparatorFunc" o = ComboBoxSetRowSeparatorFuncMethodInfo
    ResolveComboBoxMethod "setRowSpanColumn" o = ComboBoxSetRowSpanColumnMethodInfo
    ResolveComboBoxMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveComboBoxMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveComboBoxMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveComboBoxMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveComboBoxMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveComboBoxMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveComboBoxMethod "setTitle" o = ComboBoxSetTitleMethodInfo
    ResolveComboBoxMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveComboBoxMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveComboBoxMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveComboBoxMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveComboBoxMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveComboBoxMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveComboBoxMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveComboBoxMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveComboBoxMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveComboBoxMethod "setWrapWidth" o = ComboBoxSetWrapWidthMethodInfo
    ResolveComboBoxMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveComboBoxMethod t ComboBox, O.MethodInfo info ComboBox p) => OL.IsLabel t (ComboBox -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ComboBox::changed
-- | The changed signal is emitted when the active
-- item is changed. The can be due to the user selecting
-- a different item from the list, or due to a
-- call to 'GI.Gtk.Objects.ComboBox.comboBoxSetActiveIter'.
-- It will also be emitted while typing into the entry of a combo box
-- with an entry.
-- 
-- /Since: 2.4/
type ComboBoxChangedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ComboBoxChangedCallback`@.
noComboBoxChangedCallback :: Maybe ComboBoxChangedCallback
noComboBoxChangedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ComboBoxChangedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ComboBoxChangedCallback`.
foreign import ccall "wrapper"
    mk_ComboBoxChangedCallback :: C_ComboBoxChangedCallback -> IO (FunPtr C_ComboBoxChangedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ComboBoxChanged :: MonadIO m => ComboBoxChangedCallback -> m (GClosure C_ComboBoxChangedCallback)
genClosure_ComboBoxChanged cb = liftIO $ do
    let cb' = wrap_ComboBoxChangedCallback cb
    mk_ComboBoxChangedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ComboBoxChangedCallback` into a `C_ComboBoxChangedCallback`.
wrap_ComboBoxChangedCallback ::
    ComboBoxChangedCallback ->
    C_ComboBoxChangedCallback
wrap_ComboBoxChangedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' comboBox #changed callback
-- @
-- 
-- 
onComboBoxChanged :: (IsComboBox a, MonadIO m) => a -> ComboBoxChangedCallback -> m SignalHandlerId
onComboBoxChanged obj cb = liftIO $ do
    let cb' = wrap_ComboBoxChangedCallback cb
    cb'' <- mk_ComboBoxChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changed](#signal:changed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' comboBox #changed callback
-- @
-- 
-- 
afterComboBoxChanged :: (IsComboBox a, MonadIO m) => a -> ComboBoxChangedCallback -> m SignalHandlerId
afterComboBoxChanged obj cb = liftIO $ do
    let cb' = wrap_ComboBoxChangedCallback cb
    cb'' <- mk_ComboBoxChangedCallback cb'
    connectSignalFunPtr obj "changed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ComboBoxChangedSignalInfo
instance SignalInfo ComboBoxChangedSignalInfo where
    type HaskellCallbackType ComboBoxChangedSignalInfo = ComboBoxChangedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ComboBoxChangedCallback cb
        cb'' <- mk_ComboBoxChangedCallback cb'
        connectSignalFunPtr obj "changed" cb'' connectMode detail

#endif

-- signal ComboBox::format-entry-text
-- | For combo boxes that are created with an entry (See GtkComboBox:has-entry).
-- 
-- A signal which allows you to change how the text displayed in a combo box\'s
-- entry is displayed.
-- 
-- Connect a signal handler which returns an allocated string representing
-- /@path@/. That string will then be used to set the text in the combo box\'s entry.
-- The default signal handler uses the text from the GtkComboBox[entryTextColumn](#signal:entryTextColumn)
-- model column.
-- 
-- Here\'s an example signal handler which fetches data from the model and
-- displays it in the entry.
-- 
-- === /C code/
-- >
-- >static gchar*
-- >format_entry_text_callback (GtkComboBox *combo,
-- >                            const gchar *path,
-- >                            gpointer     user_data)
-- >{
-- >  GtkTreeIter iter;
-- >  GtkTreeModel model;
-- >  gdouble      value;
-- >
-- >  model = gtk_combo_box_get_model (combo);
-- >
-- >  gtk_tree_model_get_iter_from_string (model, &iter, path);
-- >  gtk_tree_model_get (model, &iter,
-- >                      THE_DOUBLE_VALUE_COLUMN, &value,
-- >                      -1);
-- >
-- >  return g_strdup_printf ("%g", value);
-- >}
-- 
-- 
-- /Since: 3.4/
type ComboBoxFormatEntryTextCallback =
    T.Text
    -- ^ /@path@/: the GtkTreePath string from the combo box\'s current model to format text for
    -> IO T.Text
    -- ^ __Returns:__ a newly allocated string representing /@path@/
    -- for the current GtkComboBox model.

-- | A convenience synonym for @`Nothing` :: `Maybe` `ComboBoxFormatEntryTextCallback`@.
noComboBoxFormatEntryTextCallback :: Maybe ComboBoxFormatEntryTextCallback
noComboBoxFormatEntryTextCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ComboBoxFormatEntryTextCallback =
    Ptr () ->                               -- object
    CString ->
    Ptr () ->                               -- user_data
    IO CString

-- | Generate a function pointer callable from C code, from a `C_ComboBoxFormatEntryTextCallback`.
foreign import ccall "wrapper"
    mk_ComboBoxFormatEntryTextCallback :: C_ComboBoxFormatEntryTextCallback -> IO (FunPtr C_ComboBoxFormatEntryTextCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ComboBoxFormatEntryText :: MonadIO m => ComboBoxFormatEntryTextCallback -> m (GClosure C_ComboBoxFormatEntryTextCallback)
genClosure_ComboBoxFormatEntryText cb = liftIO $ do
    let cb' = wrap_ComboBoxFormatEntryTextCallback cb
    mk_ComboBoxFormatEntryTextCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ComboBoxFormatEntryTextCallback` into a `C_ComboBoxFormatEntryTextCallback`.
wrap_ComboBoxFormatEntryTextCallback ::
    ComboBoxFormatEntryTextCallback ->
    C_ComboBoxFormatEntryTextCallback
wrap_ComboBoxFormatEntryTextCallback _cb _ path _ = do
    path' <- cstringToText path
    result <- _cb  path'
    result' <- textToCString result
    return result'


-- | Connect a signal handler for the [formatEntryText](#signal:formatEntryText) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' comboBox #formatEntryText callback
-- @
-- 
-- 
onComboBoxFormatEntryText :: (IsComboBox a, MonadIO m) => a -> ComboBoxFormatEntryTextCallback -> m SignalHandlerId
onComboBoxFormatEntryText obj cb = liftIO $ do
    let cb' = wrap_ComboBoxFormatEntryTextCallback cb
    cb'' <- mk_ComboBoxFormatEntryTextCallback cb'
    connectSignalFunPtr obj "format-entry-text" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [formatEntryText](#signal:formatEntryText) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' comboBox #formatEntryText callback
-- @
-- 
-- 
afterComboBoxFormatEntryText :: (IsComboBox a, MonadIO m) => a -> ComboBoxFormatEntryTextCallback -> m SignalHandlerId
afterComboBoxFormatEntryText obj cb = liftIO $ do
    let cb' = wrap_ComboBoxFormatEntryTextCallback cb
    cb'' <- mk_ComboBoxFormatEntryTextCallback cb'
    connectSignalFunPtr obj "format-entry-text" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ComboBoxFormatEntryTextSignalInfo
instance SignalInfo ComboBoxFormatEntryTextSignalInfo where
    type HaskellCallbackType ComboBoxFormatEntryTextSignalInfo = ComboBoxFormatEntryTextCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ComboBoxFormatEntryTextCallback cb
        cb'' <- mk_ComboBoxFormatEntryTextCallback cb'
        connectSignalFunPtr obj "format-entry-text" cb'' connectMode detail

#endif

-- signal ComboBox::move-active
-- | The [moveActive](#signal:moveActive) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to move the active selection.
-- 
-- /Since: 2.12/
type ComboBoxMoveActiveCallback =
    Gtk.Enums.ScrollType
    -- ^ /@scrollType@/: a t'GI.Gtk.Enums.ScrollType'
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ComboBoxMoveActiveCallback`@.
noComboBoxMoveActiveCallback :: Maybe ComboBoxMoveActiveCallback
noComboBoxMoveActiveCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ComboBoxMoveActiveCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ComboBoxMoveActiveCallback`.
foreign import ccall "wrapper"
    mk_ComboBoxMoveActiveCallback :: C_ComboBoxMoveActiveCallback -> IO (FunPtr C_ComboBoxMoveActiveCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ComboBoxMoveActive :: MonadIO m => ComboBoxMoveActiveCallback -> m (GClosure C_ComboBoxMoveActiveCallback)
genClosure_ComboBoxMoveActive cb = liftIO $ do
    let cb' = wrap_ComboBoxMoveActiveCallback cb
    mk_ComboBoxMoveActiveCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ComboBoxMoveActiveCallback` into a `C_ComboBoxMoveActiveCallback`.
wrap_ComboBoxMoveActiveCallback ::
    ComboBoxMoveActiveCallback ->
    C_ComboBoxMoveActiveCallback
wrap_ComboBoxMoveActiveCallback _cb _ scrollType _ = do
    let scrollType' = (toEnum . fromIntegral) scrollType
    _cb  scrollType'


-- | Connect a signal handler for the [moveActive](#signal:moveActive) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' comboBox #moveActive callback
-- @
-- 
-- 
onComboBoxMoveActive :: (IsComboBox a, MonadIO m) => a -> ComboBoxMoveActiveCallback -> m SignalHandlerId
onComboBoxMoveActive obj cb = liftIO $ do
    let cb' = wrap_ComboBoxMoveActiveCallback cb
    cb'' <- mk_ComboBoxMoveActiveCallback cb'
    connectSignalFunPtr obj "move-active" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveActive](#signal:moveActive) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' comboBox #moveActive callback
-- @
-- 
-- 
afterComboBoxMoveActive :: (IsComboBox a, MonadIO m) => a -> ComboBoxMoveActiveCallback -> m SignalHandlerId
afterComboBoxMoveActive obj cb = liftIO $ do
    let cb' = wrap_ComboBoxMoveActiveCallback cb
    cb'' <- mk_ComboBoxMoveActiveCallback cb'
    connectSignalFunPtr obj "move-active" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ComboBoxMoveActiveSignalInfo
instance SignalInfo ComboBoxMoveActiveSignalInfo where
    type HaskellCallbackType ComboBoxMoveActiveSignalInfo = ComboBoxMoveActiveCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ComboBoxMoveActiveCallback cb
        cb'' <- mk_ComboBoxMoveActiveCallback cb'
        connectSignalFunPtr obj "move-active" cb'' connectMode detail

#endif

-- signal ComboBox::popdown
-- | The [popdown](#signal:popdown) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to popdown the combo box list.
-- 
-- The default bindings for this signal are Alt+Up and Escape.
-- 
-- /Since: 2.12/
type ComboBoxPopdownCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `ComboBoxPopdownCallback`@.
noComboBoxPopdownCallback :: Maybe ComboBoxPopdownCallback
noComboBoxPopdownCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ComboBoxPopdownCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ComboBoxPopdownCallback`.
foreign import ccall "wrapper"
    mk_ComboBoxPopdownCallback :: C_ComboBoxPopdownCallback -> IO (FunPtr C_ComboBoxPopdownCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ComboBoxPopdown :: MonadIO m => ComboBoxPopdownCallback -> m (GClosure C_ComboBoxPopdownCallback)
genClosure_ComboBoxPopdown cb = liftIO $ do
    let cb' = wrap_ComboBoxPopdownCallback cb
    mk_ComboBoxPopdownCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ComboBoxPopdownCallback` into a `C_ComboBoxPopdownCallback`.
wrap_ComboBoxPopdownCallback ::
    ComboBoxPopdownCallback ->
    C_ComboBoxPopdownCallback
wrap_ComboBoxPopdownCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [popdown](#signal:popdown) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' comboBox #popdown callback
-- @
-- 
-- 
onComboBoxPopdown :: (IsComboBox a, MonadIO m) => a -> ComboBoxPopdownCallback -> m SignalHandlerId
onComboBoxPopdown obj cb = liftIO $ do
    let cb' = wrap_ComboBoxPopdownCallback cb
    cb'' <- mk_ComboBoxPopdownCallback cb'
    connectSignalFunPtr obj "popdown" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [popdown](#signal:popdown) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' comboBox #popdown callback
-- @
-- 
-- 
afterComboBoxPopdown :: (IsComboBox a, MonadIO m) => a -> ComboBoxPopdownCallback -> m SignalHandlerId
afterComboBoxPopdown obj cb = liftIO $ do
    let cb' = wrap_ComboBoxPopdownCallback cb
    cb'' <- mk_ComboBoxPopdownCallback cb'
    connectSignalFunPtr obj "popdown" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ComboBoxPopdownSignalInfo
instance SignalInfo ComboBoxPopdownSignalInfo where
    type HaskellCallbackType ComboBoxPopdownSignalInfo = ComboBoxPopdownCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ComboBoxPopdownCallback cb
        cb'' <- mk_ComboBoxPopdownCallback cb'
        connectSignalFunPtr obj "popdown" cb'' connectMode detail

#endif

-- signal ComboBox::popup
-- | The [popup](#signal:popup) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to popup the combo box list.
-- 
-- The default binding for this signal is Alt+Down.
-- 
-- /Since: 2.12/
type ComboBoxPopupCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ComboBoxPopupCallback`@.
noComboBoxPopupCallback :: Maybe ComboBoxPopupCallback
noComboBoxPopupCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ComboBoxPopupCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ComboBoxPopupCallback`.
foreign import ccall "wrapper"
    mk_ComboBoxPopupCallback :: C_ComboBoxPopupCallback -> IO (FunPtr C_ComboBoxPopupCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ComboBoxPopup :: MonadIO m => ComboBoxPopupCallback -> m (GClosure C_ComboBoxPopupCallback)
genClosure_ComboBoxPopup cb = liftIO $ do
    let cb' = wrap_ComboBoxPopupCallback cb
    mk_ComboBoxPopupCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ComboBoxPopupCallback` into a `C_ComboBoxPopupCallback`.
wrap_ComboBoxPopupCallback ::
    ComboBoxPopupCallback ->
    C_ComboBoxPopupCallback
wrap_ComboBoxPopupCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [popup](#signal:popup) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' comboBox #popup callback
-- @
-- 
-- 
onComboBoxPopup :: (IsComboBox a, MonadIO m) => a -> ComboBoxPopupCallback -> m SignalHandlerId
onComboBoxPopup obj cb = liftIO $ do
    let cb' = wrap_ComboBoxPopupCallback cb
    cb'' <- mk_ComboBoxPopupCallback cb'
    connectSignalFunPtr obj "popup" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [popup](#signal:popup) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' comboBox #popup callback
-- @
-- 
-- 
afterComboBoxPopup :: (IsComboBox a, MonadIO m) => a -> ComboBoxPopupCallback -> m SignalHandlerId
afterComboBoxPopup obj cb = liftIO $ do
    let cb' = wrap_ComboBoxPopupCallback cb
    cb'' <- mk_ComboBoxPopupCallback cb'
    connectSignalFunPtr obj "popup" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ComboBoxPopupSignalInfo
instance SignalInfo ComboBoxPopupSignalInfo where
    type HaskellCallbackType ComboBoxPopupSignalInfo = ComboBoxPopupCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ComboBoxPopupCallback cb
        cb'' <- mk_ComboBoxPopupCallback cb'
        connectSignalFunPtr obj "popup" cb'' connectMode detail

#endif

-- VVV Prop "active"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #active
-- @
getComboBoxActive :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxActive obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "active"

-- | Set the value of the “@active@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #active 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxActive :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxActive obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "active" val

-- | Construct a `GValueConstruct` with valid value for the “@active@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxActive :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxActive val = B.Properties.constructObjectPropertyInt32 "active" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxActivePropertyInfo
instance AttrInfo ComboBoxActivePropertyInfo where
    type AttrAllowedOps ComboBoxActivePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxActivePropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxActivePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxActivePropertyInfo = (~) Int32
    type AttrTransferType ComboBoxActivePropertyInfo = Int32
    type AttrGetType ComboBoxActivePropertyInfo = Int32
    type AttrLabel ComboBoxActivePropertyInfo = "active"
    type AttrOrigin ComboBoxActivePropertyInfo = ComboBox
    attrGet = getComboBoxActive
    attrSet = setComboBoxActive
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxActive
    attrClear = undefined
#endif

-- VVV Prop "active-id"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Nothing)

-- | Get the value of the “@active-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #activeId
-- @
getComboBoxActiveId :: (MonadIO m, IsComboBox o) => o -> m (Maybe T.Text)
getComboBoxActiveId obj = liftIO $ B.Properties.getObjectPropertyString obj "active-id"

-- | Set the value of the “@active-id@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #activeId 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxActiveId :: (MonadIO m, IsComboBox o) => o -> T.Text -> m ()
setComboBoxActiveId obj val = liftIO $ B.Properties.setObjectPropertyString obj "active-id" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@active-id@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxActiveId :: (IsComboBox o) => T.Text -> IO (GValueConstruct o)
constructComboBoxActiveId val = B.Properties.constructObjectPropertyString "active-id" (Just val)

-- | Set the value of the “@active-id@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #activeId
-- @
clearComboBoxActiveId :: (MonadIO m, IsComboBox o) => o -> m ()
clearComboBoxActiveId obj = liftIO $ B.Properties.setObjectPropertyString obj "active-id" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ComboBoxActiveIdPropertyInfo
instance AttrInfo ComboBoxActiveIdPropertyInfo where
    type AttrAllowedOps ComboBoxActiveIdPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ComboBoxActiveIdPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxActiveIdPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ComboBoxActiveIdPropertyInfo = (~) T.Text
    type AttrTransferType ComboBoxActiveIdPropertyInfo = T.Text
    type AttrGetType ComboBoxActiveIdPropertyInfo = (Maybe T.Text)
    type AttrLabel ComboBoxActiveIdPropertyInfo = "active-id"
    type AttrOrigin ComboBoxActiveIdPropertyInfo = ComboBox
    attrGet = getComboBoxActiveId
    attrSet = setComboBoxActiveId
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxActiveId
    attrClear = clearComboBoxActiveId
#endif

-- VVV Prop "add-tearoffs"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@add-tearoffs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #addTearoffs
-- @
getComboBoxAddTearoffs :: (MonadIO m, IsComboBox o) => o -> m Bool
getComboBoxAddTearoffs obj = liftIO $ B.Properties.getObjectPropertyBool obj "add-tearoffs"

-- | Set the value of the “@add-tearoffs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #addTearoffs 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxAddTearoffs :: (MonadIO m, IsComboBox o) => o -> Bool -> m ()
setComboBoxAddTearoffs obj val = liftIO $ B.Properties.setObjectPropertyBool obj "add-tearoffs" val

-- | Construct a `GValueConstruct` with valid value for the “@add-tearoffs@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxAddTearoffs :: (IsComboBox o) => Bool -> IO (GValueConstruct o)
constructComboBoxAddTearoffs val = B.Properties.constructObjectPropertyBool "add-tearoffs" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxAddTearoffsPropertyInfo
instance AttrInfo ComboBoxAddTearoffsPropertyInfo where
    type AttrAllowedOps ComboBoxAddTearoffsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxAddTearoffsPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxAddTearoffsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ComboBoxAddTearoffsPropertyInfo = (~) Bool
    type AttrTransferType ComboBoxAddTearoffsPropertyInfo = Bool
    type AttrGetType ComboBoxAddTearoffsPropertyInfo = Bool
    type AttrLabel ComboBoxAddTearoffsPropertyInfo = "add-tearoffs"
    type AttrOrigin ComboBoxAddTearoffsPropertyInfo = ComboBox
    attrGet = getComboBoxAddTearoffs
    attrSet = setComboBoxAddTearoffs
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxAddTearoffs
    attrClear = undefined
#endif

-- VVV Prop "button-sensitivity"
   -- Type: TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@button-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #buttonSensitivity
-- @
getComboBoxButtonSensitivity :: (MonadIO m, IsComboBox o) => o -> m Gtk.Enums.SensitivityType
getComboBoxButtonSensitivity obj = liftIO $ B.Properties.getObjectPropertyEnum obj "button-sensitivity"

-- | Set the value of the “@button-sensitivity@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #buttonSensitivity 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxButtonSensitivity :: (MonadIO m, IsComboBox o) => o -> Gtk.Enums.SensitivityType -> m ()
setComboBoxButtonSensitivity obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "button-sensitivity" val

-- | Construct a `GValueConstruct` with valid value for the “@button-sensitivity@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxButtonSensitivity :: (IsComboBox o) => Gtk.Enums.SensitivityType -> IO (GValueConstruct o)
constructComboBoxButtonSensitivity val = B.Properties.constructObjectPropertyEnum "button-sensitivity" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxButtonSensitivityPropertyInfo
instance AttrInfo ComboBoxButtonSensitivityPropertyInfo where
    type AttrAllowedOps ComboBoxButtonSensitivityPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxButtonSensitivityPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxButtonSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferTypeConstraint ComboBoxButtonSensitivityPropertyInfo = (~) Gtk.Enums.SensitivityType
    type AttrTransferType ComboBoxButtonSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrGetType ComboBoxButtonSensitivityPropertyInfo = Gtk.Enums.SensitivityType
    type AttrLabel ComboBoxButtonSensitivityPropertyInfo = "button-sensitivity"
    type AttrOrigin ComboBoxButtonSensitivityPropertyInfo = ComboBox
    attrGet = getComboBoxButtonSensitivity
    attrSet = setComboBoxButtonSensitivity
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxButtonSensitivity
    attrClear = undefined
#endif

-- VVV Prop "cell-area"
   -- Type: TInterface (Name {namespace = "Gtk", name = "CellArea"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@cell-area@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #cellArea
-- @
getComboBoxCellArea :: (MonadIO m, IsComboBox o) => o -> m (Maybe Gtk.CellArea.CellArea)
getComboBoxCellArea obj = liftIO $ B.Properties.getObjectPropertyObject obj "cell-area" Gtk.CellArea.CellArea

-- | Construct a `GValueConstruct` with valid value for the “@cell-area@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxCellArea :: (IsComboBox o, Gtk.CellArea.IsCellArea a) => a -> IO (GValueConstruct o)
constructComboBoxCellArea val = B.Properties.constructObjectPropertyObject "cell-area" (Just val)

#if defined(ENABLE_OVERLOADING)
data ComboBoxCellAreaPropertyInfo
instance AttrInfo ComboBoxCellAreaPropertyInfo where
    type AttrAllowedOps ComboBoxCellAreaPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ComboBoxCellAreaPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferTypeConstraint ComboBoxCellAreaPropertyInfo = Gtk.CellArea.IsCellArea
    type AttrTransferType ComboBoxCellAreaPropertyInfo = Gtk.CellArea.CellArea
    type AttrGetType ComboBoxCellAreaPropertyInfo = (Maybe Gtk.CellArea.CellArea)
    type AttrLabel ComboBoxCellAreaPropertyInfo = "cell-area"
    type AttrOrigin ComboBoxCellAreaPropertyInfo = ComboBox
    attrGet = getComboBoxCellArea
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gtk.CellArea.CellArea v
    attrConstruct = constructComboBoxCellArea
    attrClear = undefined
#endif

-- VVV Prop "column-span-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@column-span-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #columnSpanColumn
-- @
getComboBoxColumnSpanColumn :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxColumnSpanColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "column-span-column"

-- | Set the value of the “@column-span-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #columnSpanColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxColumnSpanColumn :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxColumnSpanColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "column-span-column" val

-- | Construct a `GValueConstruct` with valid value for the “@column-span-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxColumnSpanColumn :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxColumnSpanColumn val = B.Properties.constructObjectPropertyInt32 "column-span-column" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxColumnSpanColumnPropertyInfo
instance AttrInfo ComboBoxColumnSpanColumnPropertyInfo where
    type AttrAllowedOps ComboBoxColumnSpanColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxColumnSpanColumnPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxColumnSpanColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxColumnSpanColumnPropertyInfo = (~) Int32
    type AttrTransferType ComboBoxColumnSpanColumnPropertyInfo = Int32
    type AttrGetType ComboBoxColumnSpanColumnPropertyInfo = Int32
    type AttrLabel ComboBoxColumnSpanColumnPropertyInfo = "column-span-column"
    type AttrOrigin ComboBoxColumnSpanColumnPropertyInfo = ComboBox
    attrGet = getComboBoxColumnSpanColumn
    attrSet = setComboBoxColumnSpanColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxColumnSpanColumn
    attrClear = undefined
#endif

-- VVV Prop "entry-text-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@entry-text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #entryTextColumn
-- @
getComboBoxEntryTextColumn :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxEntryTextColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "entry-text-column"

-- | Set the value of the “@entry-text-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #entryTextColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxEntryTextColumn :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxEntryTextColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "entry-text-column" val

-- | Construct a `GValueConstruct` with valid value for the “@entry-text-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxEntryTextColumn :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxEntryTextColumn val = B.Properties.constructObjectPropertyInt32 "entry-text-column" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxEntryTextColumnPropertyInfo
instance AttrInfo ComboBoxEntryTextColumnPropertyInfo where
    type AttrAllowedOps ComboBoxEntryTextColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxEntryTextColumnPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxEntryTextColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxEntryTextColumnPropertyInfo = (~) Int32
    type AttrTransferType ComboBoxEntryTextColumnPropertyInfo = Int32
    type AttrGetType ComboBoxEntryTextColumnPropertyInfo = Int32
    type AttrLabel ComboBoxEntryTextColumnPropertyInfo = "entry-text-column"
    type AttrOrigin ComboBoxEntryTextColumnPropertyInfo = ComboBox
    attrGet = getComboBoxEntryTextColumn
    attrSet = setComboBoxEntryTextColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxEntryTextColumn
    attrClear = undefined
#endif

-- VVV Prop "has-entry"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@has-entry@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #hasEntry
-- @
getComboBoxHasEntry :: (MonadIO m, IsComboBox o) => o -> m Bool
getComboBoxHasEntry obj = liftIO $ B.Properties.getObjectPropertyBool obj "has-entry"

-- | Construct a `GValueConstruct` with valid value for the “@has-entry@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxHasEntry :: (IsComboBox o) => Bool -> IO (GValueConstruct o)
constructComboBoxHasEntry val = B.Properties.constructObjectPropertyBool "has-entry" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxHasEntryPropertyInfo
instance AttrInfo ComboBoxHasEntryPropertyInfo where
    type AttrAllowedOps ComboBoxHasEntryPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxHasEntryPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxHasEntryPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ComboBoxHasEntryPropertyInfo = (~) Bool
    type AttrTransferType ComboBoxHasEntryPropertyInfo = Bool
    type AttrGetType ComboBoxHasEntryPropertyInfo = Bool
    type AttrLabel ComboBoxHasEntryPropertyInfo = "has-entry"
    type AttrOrigin ComboBoxHasEntryPropertyInfo = ComboBox
    attrGet = getComboBoxHasEntry
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxHasEntry
    attrClear = undefined
#endif

-- VVV Prop "has-frame"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@has-frame@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #hasFrame
-- @
getComboBoxHasFrame :: (MonadIO m, IsComboBox o) => o -> m Bool
getComboBoxHasFrame obj = liftIO $ B.Properties.getObjectPropertyBool obj "has-frame"

-- | Set the value of the “@has-frame@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #hasFrame 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxHasFrame :: (MonadIO m, IsComboBox o) => o -> Bool -> m ()
setComboBoxHasFrame obj val = liftIO $ B.Properties.setObjectPropertyBool obj "has-frame" val

-- | Construct a `GValueConstruct` with valid value for the “@has-frame@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxHasFrame :: (IsComboBox o) => Bool -> IO (GValueConstruct o)
constructComboBoxHasFrame val = B.Properties.constructObjectPropertyBool "has-frame" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxHasFramePropertyInfo
instance AttrInfo ComboBoxHasFramePropertyInfo where
    type AttrAllowedOps ComboBoxHasFramePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxHasFramePropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxHasFramePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ComboBoxHasFramePropertyInfo = (~) Bool
    type AttrTransferType ComboBoxHasFramePropertyInfo = Bool
    type AttrGetType ComboBoxHasFramePropertyInfo = Bool
    type AttrLabel ComboBoxHasFramePropertyInfo = "has-frame"
    type AttrOrigin ComboBoxHasFramePropertyInfo = ComboBox
    attrGet = getComboBoxHasFrame
    attrSet = setComboBoxHasFrame
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxHasFrame
    attrClear = undefined
#endif

-- VVV Prop "id-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@id-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #idColumn
-- @
getComboBoxIdColumn :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxIdColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "id-column"

-- | Set the value of the “@id-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #idColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxIdColumn :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxIdColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "id-column" val

-- | Construct a `GValueConstruct` with valid value for the “@id-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxIdColumn :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxIdColumn val = B.Properties.constructObjectPropertyInt32 "id-column" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxIdColumnPropertyInfo
instance AttrInfo ComboBoxIdColumnPropertyInfo where
    type AttrAllowedOps ComboBoxIdColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxIdColumnPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxIdColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxIdColumnPropertyInfo = (~) Int32
    type AttrTransferType ComboBoxIdColumnPropertyInfo = Int32
    type AttrGetType ComboBoxIdColumnPropertyInfo = Int32
    type AttrLabel ComboBoxIdColumnPropertyInfo = "id-column"
    type AttrOrigin ComboBoxIdColumnPropertyInfo = ComboBox
    attrGet = getComboBoxIdColumn
    attrSet = setComboBoxIdColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxIdColumn
    attrClear = undefined
#endif

-- VVV Prop "model"
   -- Type: TInterface (Name {namespace = "Gtk", name = "TreeModel"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #model
-- @
getComboBoxModel :: (MonadIO m, IsComboBox o) => o -> m Gtk.TreeModel.TreeModel
getComboBoxModel obj = liftIO $ checkUnexpectedNothing "getComboBoxModel" $ B.Properties.getObjectPropertyObject obj "model" Gtk.TreeModel.TreeModel

-- | Set the value of the “@model@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #model 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxModel :: (MonadIO m, IsComboBox o, Gtk.TreeModel.IsTreeModel a) => o -> a -> m ()
setComboBoxModel obj val = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@model@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxModel :: (IsComboBox o, Gtk.TreeModel.IsTreeModel a) => a -> IO (GValueConstruct o)
constructComboBoxModel val = B.Properties.constructObjectPropertyObject "model" (Just val)

-- | Set the value of the “@model@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #model
-- @
clearComboBoxModel :: (MonadIO m, IsComboBox o) => o -> m ()
clearComboBoxModel obj = liftIO $ B.Properties.setObjectPropertyObject obj "model" (Nothing :: Maybe Gtk.TreeModel.TreeModel)

#if defined(ENABLE_OVERLOADING)
data ComboBoxModelPropertyInfo
instance AttrInfo ComboBoxModelPropertyInfo where
    type AttrAllowedOps ComboBoxModelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ComboBoxModelPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferTypeConstraint ComboBoxModelPropertyInfo = Gtk.TreeModel.IsTreeModel
    type AttrTransferType ComboBoxModelPropertyInfo = Gtk.TreeModel.TreeModel
    type AttrGetType ComboBoxModelPropertyInfo = Gtk.TreeModel.TreeModel
    type AttrLabel ComboBoxModelPropertyInfo = "model"
    type AttrOrigin ComboBoxModelPropertyInfo = ComboBox
    attrGet = getComboBoxModel
    attrSet = setComboBoxModel
    attrTransfer _ v = do
        unsafeCastTo Gtk.TreeModel.TreeModel v
    attrConstruct = constructComboBoxModel
    attrClear = clearComboBoxModel
#endif

-- VVV Prop "popup-fixed-width"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@popup-fixed-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #popupFixedWidth
-- @
getComboBoxPopupFixedWidth :: (MonadIO m, IsComboBox o) => o -> m Bool
getComboBoxPopupFixedWidth obj = liftIO $ B.Properties.getObjectPropertyBool obj "popup-fixed-width"

-- | Set the value of the “@popup-fixed-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #popupFixedWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxPopupFixedWidth :: (MonadIO m, IsComboBox o) => o -> Bool -> m ()
setComboBoxPopupFixedWidth obj val = liftIO $ B.Properties.setObjectPropertyBool obj "popup-fixed-width" val

-- | Construct a `GValueConstruct` with valid value for the “@popup-fixed-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxPopupFixedWidth :: (IsComboBox o) => Bool -> IO (GValueConstruct o)
constructComboBoxPopupFixedWidth val = B.Properties.constructObjectPropertyBool "popup-fixed-width" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxPopupFixedWidthPropertyInfo
instance AttrInfo ComboBoxPopupFixedWidthPropertyInfo where
    type AttrAllowedOps ComboBoxPopupFixedWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxPopupFixedWidthPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxPopupFixedWidthPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ComboBoxPopupFixedWidthPropertyInfo = (~) Bool
    type AttrTransferType ComboBoxPopupFixedWidthPropertyInfo = Bool
    type AttrGetType ComboBoxPopupFixedWidthPropertyInfo = Bool
    type AttrLabel ComboBoxPopupFixedWidthPropertyInfo = "popup-fixed-width"
    type AttrOrigin ComboBoxPopupFixedWidthPropertyInfo = ComboBox
    attrGet = getComboBoxPopupFixedWidth
    attrSet = setComboBoxPopupFixedWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxPopupFixedWidth
    attrClear = undefined
#endif

-- VVV Prop "popup-shown"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@popup-shown@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #popupShown
-- @
getComboBoxPopupShown :: (MonadIO m, IsComboBox o) => o -> m Bool
getComboBoxPopupShown obj = liftIO $ B.Properties.getObjectPropertyBool obj "popup-shown"

#if defined(ENABLE_OVERLOADING)
data ComboBoxPopupShownPropertyInfo
instance AttrInfo ComboBoxPopupShownPropertyInfo where
    type AttrAllowedOps ComboBoxPopupShownPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxPopupShownPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxPopupShownPropertyInfo = (~) ()
    type AttrTransferTypeConstraint ComboBoxPopupShownPropertyInfo = (~) ()
    type AttrTransferType ComboBoxPopupShownPropertyInfo = ()
    type AttrGetType ComboBoxPopupShownPropertyInfo = Bool
    type AttrLabel ComboBoxPopupShownPropertyInfo = "popup-shown"
    type AttrOrigin ComboBoxPopupShownPropertyInfo = ComboBox
    attrGet = getComboBoxPopupShown
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "row-span-column"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@row-span-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #rowSpanColumn
-- @
getComboBoxRowSpanColumn :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxRowSpanColumn obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "row-span-column"

-- | Set the value of the “@row-span-column@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #rowSpanColumn 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxRowSpanColumn :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxRowSpanColumn obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "row-span-column" val

-- | Construct a `GValueConstruct` with valid value for the “@row-span-column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxRowSpanColumn :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxRowSpanColumn val = B.Properties.constructObjectPropertyInt32 "row-span-column" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxRowSpanColumnPropertyInfo
instance AttrInfo ComboBoxRowSpanColumnPropertyInfo where
    type AttrAllowedOps ComboBoxRowSpanColumnPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxRowSpanColumnPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxRowSpanColumnPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxRowSpanColumnPropertyInfo = (~) Int32
    type AttrTransferType ComboBoxRowSpanColumnPropertyInfo = Int32
    type AttrGetType ComboBoxRowSpanColumnPropertyInfo = Int32
    type AttrLabel ComboBoxRowSpanColumnPropertyInfo = "row-span-column"
    type AttrOrigin ComboBoxRowSpanColumnPropertyInfo = ComboBox
    attrGet = getComboBoxRowSpanColumn
    attrSet = setComboBoxRowSpanColumn
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxRowSpanColumn
    attrClear = undefined
#endif

-- VVV Prop "tearoff-title"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@tearoff-title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #tearoffTitle
-- @
getComboBoxTearoffTitle :: (MonadIO m, IsComboBox o) => o -> m (Maybe T.Text)
getComboBoxTearoffTitle obj = liftIO $ B.Properties.getObjectPropertyString obj "tearoff-title"

-- | Set the value of the “@tearoff-title@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #tearoffTitle 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxTearoffTitle :: (MonadIO m, IsComboBox o) => o -> T.Text -> m ()
setComboBoxTearoffTitle obj val = liftIO $ B.Properties.setObjectPropertyString obj "tearoff-title" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@tearoff-title@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxTearoffTitle :: (IsComboBox o) => T.Text -> IO (GValueConstruct o)
constructComboBoxTearoffTitle val = B.Properties.constructObjectPropertyString "tearoff-title" (Just val)

-- | Set the value of the “@tearoff-title@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #tearoffTitle
-- @
clearComboBoxTearoffTitle :: (MonadIO m, IsComboBox o) => o -> m ()
clearComboBoxTearoffTitle obj = liftIO $ B.Properties.setObjectPropertyString obj "tearoff-title" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ComboBoxTearoffTitlePropertyInfo
instance AttrInfo ComboBoxTearoffTitlePropertyInfo where
    type AttrAllowedOps ComboBoxTearoffTitlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ComboBoxTearoffTitlePropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxTearoffTitlePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ComboBoxTearoffTitlePropertyInfo = (~) T.Text
    type AttrTransferType ComboBoxTearoffTitlePropertyInfo = T.Text
    type AttrGetType ComboBoxTearoffTitlePropertyInfo = (Maybe T.Text)
    type AttrLabel ComboBoxTearoffTitlePropertyInfo = "tearoff-title"
    type AttrOrigin ComboBoxTearoffTitlePropertyInfo = ComboBox
    attrGet = getComboBoxTearoffTitle
    attrSet = setComboBoxTearoffTitle
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxTearoffTitle
    attrClear = clearComboBoxTearoffTitle
#endif

-- VVV Prop "wrap-width"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@wrap-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' comboBox #wrapWidth
-- @
getComboBoxWrapWidth :: (MonadIO m, IsComboBox o) => o -> m Int32
getComboBoxWrapWidth obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "wrap-width"

-- | Set the value of the “@wrap-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' comboBox [ #wrapWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setComboBoxWrapWidth :: (MonadIO m, IsComboBox o) => o -> Int32 -> m ()
setComboBoxWrapWidth obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "wrap-width" val

-- | Construct a `GValueConstruct` with valid value for the “@wrap-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructComboBoxWrapWidth :: (IsComboBox o) => Int32 -> IO (GValueConstruct o)
constructComboBoxWrapWidth val = B.Properties.constructObjectPropertyInt32 "wrap-width" val

#if defined(ENABLE_OVERLOADING)
data ComboBoxWrapWidthPropertyInfo
instance AttrInfo ComboBoxWrapWidthPropertyInfo where
    type AttrAllowedOps ComboBoxWrapWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ComboBoxWrapWidthPropertyInfo = IsComboBox
    type AttrSetTypeConstraint ComboBoxWrapWidthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ComboBoxWrapWidthPropertyInfo = (~) Int32
    type AttrTransferType ComboBoxWrapWidthPropertyInfo = Int32
    type AttrGetType ComboBoxWrapWidthPropertyInfo = Int32
    type AttrLabel ComboBoxWrapWidthPropertyInfo = "wrap-width"
    type AttrOrigin ComboBoxWrapWidthPropertyInfo = ComboBox
    attrGet = getComboBoxWrapWidth
    attrSet = setComboBoxWrapWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructComboBoxWrapWidth
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ComboBox
type instance O.AttributeList ComboBox = ComboBoxAttributeList
type ComboBoxAttributeList = ('[ '("active", ComboBoxActivePropertyInfo), '("activeId", ComboBoxActiveIdPropertyInfo), '("addTearoffs", ComboBoxAddTearoffsPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("buttonSensitivity", ComboBoxButtonSensitivityPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("cellArea", ComboBoxCellAreaPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("columnSpanColumn", ComboBoxColumnSpanColumnPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("editingCanceled", Gtk.CellEditable.CellEditableEditingCanceledPropertyInfo), '("entryTextColumn", ComboBoxEntryTextColumnPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasEntry", ComboBoxHasEntryPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasFrame", ComboBoxHasFramePropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("idColumn", ComboBoxIdColumnPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("model", ComboBoxModelPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("popupFixedWidth", ComboBoxPopupFixedWidthPropertyInfo), '("popupShown", ComboBoxPopupShownPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("rowSpanColumn", ComboBoxRowSpanColumnPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tearoffTitle", ComboBoxTearoffTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("wrapWidth", ComboBoxWrapWidthPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
comboBoxActive :: AttrLabelProxy "active"
comboBoxActive = AttrLabelProxy

comboBoxActiveId :: AttrLabelProxy "activeId"
comboBoxActiveId = AttrLabelProxy

comboBoxAddTearoffs :: AttrLabelProxy "addTearoffs"
comboBoxAddTearoffs = AttrLabelProxy

comboBoxButtonSensitivity :: AttrLabelProxy "buttonSensitivity"
comboBoxButtonSensitivity = AttrLabelProxy

comboBoxCellArea :: AttrLabelProxy "cellArea"
comboBoxCellArea = AttrLabelProxy

comboBoxColumnSpanColumn :: AttrLabelProxy "columnSpanColumn"
comboBoxColumnSpanColumn = AttrLabelProxy

comboBoxEntryTextColumn :: AttrLabelProxy "entryTextColumn"
comboBoxEntryTextColumn = AttrLabelProxy

comboBoxHasEntry :: AttrLabelProxy "hasEntry"
comboBoxHasEntry = AttrLabelProxy

comboBoxHasFrame :: AttrLabelProxy "hasFrame"
comboBoxHasFrame = AttrLabelProxy

comboBoxIdColumn :: AttrLabelProxy "idColumn"
comboBoxIdColumn = AttrLabelProxy

comboBoxModel :: AttrLabelProxy "model"
comboBoxModel = AttrLabelProxy

comboBoxPopupFixedWidth :: AttrLabelProxy "popupFixedWidth"
comboBoxPopupFixedWidth = AttrLabelProxy

comboBoxPopupShown :: AttrLabelProxy "popupShown"
comboBoxPopupShown = AttrLabelProxy

comboBoxRowSpanColumn :: AttrLabelProxy "rowSpanColumn"
comboBoxRowSpanColumn = AttrLabelProxy

comboBoxTearoffTitle :: AttrLabelProxy "tearoffTitle"
comboBoxTearoffTitle = AttrLabelProxy

comboBoxWrapWidth :: AttrLabelProxy "wrapWidth"
comboBoxWrapWidth = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ComboBox = ComboBoxSignalList
type ComboBoxSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changed", ComboBoxChangedSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("editingDone", Gtk.CellEditable.CellEditableEditingDoneSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("formatEntryText", ComboBoxFormatEntryTextSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveActive", ComboBoxMoveActiveSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popdown", ComboBoxPopdownSignalInfo), '("popup", ComboBoxPopupSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("removeWidget", Gtk.CellEditable.CellEditableRemoveWidgetSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ComboBox::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new" gtk_combo_box_new :: 
    IO (Ptr ComboBox)

-- | Creates a new empty t'GI.Gtk.Objects.ComboBox.ComboBox'.
-- 
-- /Since: 2.4/
comboBoxNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'.
comboBoxNew  = liftIO $ do
    result <- gtk_combo_box_new
    checkUnexpectedReturnNULL "comboBoxNew" result
    result' <- (newObject ComboBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::new_with_area
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "area"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellArea" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkCellArea to use to layout cell renderers"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new_with_area" gtk_combo_box_new_with_area :: 
    Ptr Gtk.CellArea.CellArea ->            -- area : TInterface (Name {namespace = "Gtk", name = "CellArea"})
    IO (Ptr ComboBox)

-- | Creates a new empty t'GI.Gtk.Objects.ComboBox.ComboBox' using /@area@/ to layout cells.
comboBoxNewWithArea ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.CellArea.IsCellArea a) =>
    a
    -- ^ /@area@/: the t'GI.Gtk.Objects.CellArea.CellArea' to use to layout cell renderers
    -> m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'.
comboBoxNewWithArea area = liftIO $ do
    area' <- unsafeManagedPtrCastPtr area
    result <- gtk_combo_box_new_with_area area'
    checkUnexpectedReturnNULL "comboBoxNewWithArea" result
    result' <- (newObject ComboBox) result
    touchManagedPtr area
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::new_with_area_and_entry
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "area"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CellArea" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkCellArea to use to layout cell renderers"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new_with_area_and_entry" gtk_combo_box_new_with_area_and_entry :: 
    Ptr Gtk.CellArea.CellArea ->            -- area : TInterface (Name {namespace = "Gtk", name = "CellArea"})
    IO (Ptr ComboBox)

-- | Creates a new empty t'GI.Gtk.Objects.ComboBox.ComboBox' with an entry.
-- 
-- The new combo box will use /@area@/ to layout cells.
comboBoxNewWithAreaAndEntry ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.CellArea.IsCellArea a) =>
    a
    -- ^ /@area@/: the t'GI.Gtk.Objects.CellArea.CellArea' to use to layout cell renderers
    -> m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'.
comboBoxNewWithAreaAndEntry area = liftIO $ do
    area' <- unsafeManagedPtrCastPtr area
    result <- gtk_combo_box_new_with_area_and_entry area'
    checkUnexpectedReturnNULL "comboBoxNewWithAreaAndEntry" result
    result' <- (newObject ComboBox) result
    touchManagedPtr area
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::new_with_entry
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new_with_entry" gtk_combo_box_new_with_entry :: 
    IO (Ptr ComboBox)

-- | Creates a new empty t'GI.Gtk.Objects.ComboBox.ComboBox' with an entry.
-- 
-- /Since: 2.24/
comboBoxNewWithEntry ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'.
comboBoxNewWithEntry  = liftIO $ do
    result <- gtk_combo_box_new_with_entry
    checkUnexpectedReturnNULL "comboBoxNewWithEntry" result
    result' <- (newObject ComboBox) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::new_with_model
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeModel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeModel." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new_with_model" gtk_combo_box_new_with_model :: 
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO (Ptr ComboBox)

-- | Creates a new t'GI.Gtk.Objects.ComboBox.ComboBox' with the model initialized to /@model@/.
-- 
-- /Since: 2.4/
comboBoxNewWithModel ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.TreeModel.IsTreeModel a) =>
    a
    -- ^ /@model@/: A t'GI.Gtk.Interfaces.TreeModel.TreeModel'.
    -> m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'.
comboBoxNewWithModel model = liftIO $ do
    model' <- unsafeManagedPtrCastPtr model
    result <- gtk_combo_box_new_with_model model'
    checkUnexpectedReturnNULL "comboBoxNewWithModel" result
    result' <- (newObject ComboBox) result
    touchManagedPtr model
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::new_with_model_and_entry
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeModel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeModel" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ComboBox" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_new_with_model_and_entry" gtk_combo_box_new_with_model_and_entry :: 
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO (Ptr ComboBox)

-- | Creates a new empty t'GI.Gtk.Objects.ComboBox.ComboBox' with an entry
-- and with the model initialized to /@model@/.
-- 
-- /Since: 2.24/
comboBoxNewWithModelAndEntry ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.TreeModel.IsTreeModel a) =>
    a
    -- ^ /@model@/: A t'GI.Gtk.Interfaces.TreeModel.TreeModel'
    -> m ComboBox
    -- ^ __Returns:__ A new t'GI.Gtk.Objects.ComboBox.ComboBox'
comboBoxNewWithModelAndEntry model = liftIO $ do
    model' <- unsafeManagedPtrCastPtr model
    result <- gtk_combo_box_new_with_model_and_entry model'
    checkUnexpectedReturnNULL "comboBoxNewWithModelAndEntry" result
    result' <- (newObject ComboBox) result
    touchManagedPtr model
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ComboBox::get_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_active" gtk_combo_box_get_active :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the index of the currently active item, or -1 if there’s no
-- active item. If the model is a non-flat treemodel, and the active item
-- is not an immediate child of the root of the tree, this function returns
-- @gtk_tree_path_get_indices (path)[0]@, where
-- @path@ is the t'GI.Gtk.Structs.TreePath.TreePath' of the active item.
-- 
-- /Since: 2.4/
comboBoxGetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Int32
    -- ^ __Returns:__ An integer which is the index of the currently active item,
    --     or -1 if there’s no active item.
comboBoxGetActive comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_active comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetActiveMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetActiveMethodInfo a signature where
    overloadedMethod = comboBoxGetActive

#endif

-- method ComboBox::get_active_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_active_id" gtk_combo_box_get_active_id :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CString

-- | Returns the ID of the active row of /@comboBox@/.  This value is taken
-- from the active row and the column specified by the t'GI.Gtk.Objects.ComboBox.ComboBox':@/id-column/@
-- property of /@comboBox@/ (see 'GI.Gtk.Objects.ComboBox.comboBoxSetIdColumn').
-- 
-- The returned value is an interned string which means that you can
-- compare the pointer by value to other interned strings and that you
-- must not free it.
-- 
-- If the t'GI.Gtk.Objects.ComboBox.ComboBox':@/id-column/@ property of /@comboBox@/ is not set, or if
-- no row is active, or if the active row has a 'P.Nothing' ID value, then 'P.Nothing'
-- is returned.
-- 
-- /Since: 3.0/
comboBoxGetActiveId ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the ID of the active row, or 'P.Nothing'
comboBoxGetActiveId comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_active_id comboBox'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr comboBox
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetActiveIdMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetActiveIdMethodInfo a signature where
    overloadedMethod = comboBoxGetActiveId

#endif

-- method ComboBox::get_active_iter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeIter" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = True
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_get_active_iter" gtk_combo_box_get_active_iter :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO CInt

-- | Sets /@iter@/ to point to the currently active item, if any item is active.
-- Otherwise, /@iter@/ is left unchanged.
-- 
-- /Since: 2.4/
comboBoxGetActiveIter ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m ((Bool, Gtk.TreeIter.TreeIter))
    -- ^ __Returns:__ 'P.True' if /@iter@/ was set, 'P.False' otherwise
comboBoxGetActiveIter comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    iter <- callocBoxedBytes 32 :: IO (Ptr Gtk.TreeIter.TreeIter)
    result <- gtk_combo_box_get_active_iter comboBox' iter
    let result' = (/= 0) result
    iter' <- (wrapBoxed Gtk.TreeIter.TreeIter) iter
    touchManagedPtr comboBox
    return (result', iter')

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetActiveIterMethodInfo
instance (signature ~ (m ((Bool, Gtk.TreeIter.TreeIter))), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetActiveIterMethodInfo a signature where
    overloadedMethod = comboBoxGetActiveIter

#endif

-- method ComboBox::get_add_tearoffs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_add_tearoffs" gtk_combo_box_get_add_tearoffs :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CInt

{-# DEPRECATED comboBoxGetAddTearoffs ["(Since version 3.10)"] #-}
-- | Gets the current value of the :add-tearoffs property.
comboBoxGetAddTearoffs ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Bool
    -- ^ __Returns:__ the current value of the :add-tearoffs property.
comboBoxGetAddTearoffs comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_add_tearoffs comboBox'
    let result' = (/= 0) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetAddTearoffsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetAddTearoffsMethodInfo a signature where
    overloadedMethod = comboBoxGetAddTearoffs

#endif

-- method ComboBox::get_button_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "SensitivityType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_get_button_sensitivity" gtk_combo_box_get_button_sensitivity :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CUInt

-- | Returns whether the combo box sets the dropdown button
-- sensitive or not when there are no items in the model.
-- 
-- /Since: 2.14/
comboBoxGetButtonSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Gtk.Enums.SensitivityType
    -- ^ __Returns:__ 'GI.Gtk.Enums.SensitivityTypeOn' if the dropdown button
    --    is sensitive when the model is empty, 'GI.Gtk.Enums.SensitivityTypeOff'
    --    if the button is always insensitive or
    --    'GI.Gtk.Enums.SensitivityTypeAuto' if it is only sensitive as long as
    --    the model has one item to be selected.
comboBoxGetButtonSensitivity comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_button_sensitivity comboBox'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetButtonSensitivityMethodInfo
instance (signature ~ (m Gtk.Enums.SensitivityType), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetButtonSensitivityMethodInfo a signature where
    overloadedMethod = comboBoxGetButtonSensitivity

#endif

-- method ComboBox::get_column_span_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_column_span_column" gtk_combo_box_get_column_span_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the column with column span information for /@comboBox@/.
-- 
-- /Since: 2.6/
comboBoxGetColumnSpanColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Int32
    -- ^ __Returns:__ the column span column.
comboBoxGetColumnSpanColumn comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_column_span_column comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetColumnSpanColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetColumnSpanColumnMethodInfo a signature where
    overloadedMethod = comboBoxGetColumnSpanColumn

#endif

-- method ComboBox::get_entry_text_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox." , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_entry_text_column" gtk_combo_box_get_entry_text_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the column which /@comboBox@/ is using to get the strings
-- from to display in the internal entry.
-- 
-- /Since: 2.24/
comboBoxGetEntryTextColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'.
    -> m Int32
    -- ^ __Returns:__ A column in the data source model of /@comboBox@/.
comboBoxGetEntryTextColumn comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_entry_text_column comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetEntryTextColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetEntryTextColumnMethodInfo a signature where
    overloadedMethod = comboBoxGetEntryTextColumn

#endif

-- method ComboBox::get_focus_on_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_focus_on_click" gtk_combo_box_get_focus_on_click :: 
    Ptr ComboBox ->                         -- combo : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CInt

{-# DEPRECATED comboBoxGetFocusOnClick ["(Since version 3.20)","Use 'GI.Gtk.Objects.Widget.widgetGetFocusOnClick' instead"] #-}
-- | Returns whether the combo box grabs focus when it is clicked
-- with the mouse. See 'GI.Gtk.Objects.ComboBox.comboBoxSetFocusOnClick'.
-- 
-- /Since: 2.6/
comboBoxGetFocusOnClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@combo@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the combo box grabs focus when it is
    --     clicked with the mouse.
comboBoxGetFocusOnClick combo = liftIO $ do
    combo' <- unsafeManagedPtrCastPtr combo
    result <- gtk_combo_box_get_focus_on_click combo'
    let result' = (/= 0) result
    touchManagedPtr combo
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetFocusOnClickMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetFocusOnClickMethodInfo a signature where
    overloadedMethod = comboBoxGetFocusOnClick

#endif

-- method ComboBox::get_has_entry
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_has_entry" gtk_combo_box_get_has_entry :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CInt

-- | Returns whether the combo box has an entry.
-- 
-- /Since: 2.24/
comboBoxGetHasEntry ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Bool
    -- ^ __Returns:__ whether there is an entry in /@comboBox@/.
comboBoxGetHasEntry comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_has_entry comboBox'
    let result' = (/= 0) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetHasEntryMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetHasEntryMethodInfo a signature where
    overloadedMethod = comboBoxGetHasEntry

#endif

-- method ComboBox::get_id_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_id_column" gtk_combo_box_get_id_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the column which /@comboBox@/ is using to get string IDs
-- for values from.
-- 
-- /Since: 3.0/
comboBoxGetIdColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Int32
    -- ^ __Returns:__ A column in the data source model of /@comboBox@/.
comboBoxGetIdColumn comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_id_column comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetIdColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetIdColumnMethodInfo a signature where
    overloadedMethod = comboBoxGetIdColumn

#endif

-- method ComboBox::get_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "TreeModel" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_get_model" gtk_combo_box_get_model :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO (Ptr Gtk.TreeModel.TreeModel)

-- | Returns the t'GI.Gtk.Interfaces.TreeModel.TreeModel' which is acting as data source for /@comboBox@/.
-- 
-- /Since: 2.4/
comboBoxGetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Gtk.TreeModel.TreeModel
    -- ^ __Returns:__ A t'GI.Gtk.Interfaces.TreeModel.TreeModel' which was passed
    --     during construction.
comboBoxGetModel comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_model comboBox'
    checkUnexpectedReturnNULL "comboBoxGetModel" result
    result' <- (newObject Gtk.TreeModel.TreeModel) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetModelMethodInfo
instance (signature ~ (m Gtk.TreeModel.TreeModel), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetModelMethodInfo a signature where
    overloadedMethod = comboBoxGetModel

#endif

-- method ComboBox::get_popup_accessible
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Atk" , name = "Object" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_combo_box_get_popup_accessible" gtk_combo_box_get_popup_accessible :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO (Ptr Atk.Object.Object)

-- | Gets the accessible object corresponding to the combo box’s popup.
-- 
-- This function is mostly intended for use by accessibility technologies;
-- applications should have little use for it.
-- 
-- /Since: 2.6/
comboBoxGetPopupAccessible ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Atk.Object.Object
    -- ^ __Returns:__ the accessible object corresponding
    --     to the combo box’s popup.
comboBoxGetPopupAccessible comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_popup_accessible comboBox'
    checkUnexpectedReturnNULL "comboBoxGetPopupAccessible" result
    result' <- (newObject Atk.Object.Object) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetPopupAccessibleMethodInfo
instance (signature ~ (m Atk.Object.Object), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetPopupAccessibleMethodInfo a signature where
    overloadedMethod = comboBoxGetPopupAccessible

#endif

-- method ComboBox::get_popup_fixed_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_popup_fixed_width" gtk_combo_box_get_popup_fixed_width :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CInt

-- | Gets whether the popup uses a fixed width matching
-- the allocated width of the combo box.
-- 
-- /Since: 3.0/
comboBoxGetPopupFixedWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the popup uses a fixed width
comboBoxGetPopupFixedWidth comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_popup_fixed_width comboBox'
    let result' = (/= 0) result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetPopupFixedWidthMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetPopupFixedWidthMethodInfo a signature where
    overloadedMethod = comboBoxGetPopupFixedWidth

#endif

-- method ComboBox::get_row_span_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_row_span_column" gtk_combo_box_get_row_span_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the column with row span information for /@comboBox@/.
-- 
-- /Since: 2.6/
comboBoxGetRowSpanColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Int32
    -- ^ __Returns:__ the row span column.
comboBoxGetRowSpanColumn comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_row_span_column comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetRowSpanColumnMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetRowSpanColumnMethodInfo a signature where
    overloadedMethod = comboBoxGetRowSpanColumn

#endif

-- method ComboBox::get_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_title" gtk_combo_box_get_title :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO CString

{-# DEPRECATED comboBoxGetTitle ["(Since version 3.10)"] #-}
-- | Gets the current title of the menu in tearoff mode. See
-- 'GI.Gtk.Objects.ComboBox.comboBoxSetAddTearoffs'.
-- 
-- /Since: 2.10/
comboBoxGetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m T.Text
    -- ^ __Returns:__ the menu’s title in tearoff mode. This is an internal copy of the
    -- string which must not be freed.
comboBoxGetTitle comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_title comboBox'
    checkUnexpectedReturnNULL "comboBoxGetTitle" result
    result' <- cstringToText result
    touchManagedPtr comboBox
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetTitleMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetTitleMethodInfo a signature where
    overloadedMethod = comboBoxGetTitle

#endif

-- method ComboBox::get_wrap_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_get_wrap_width" gtk_combo_box_get_wrap_width :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO Int32

-- | Returns the wrap width which is used to determine the number of columns
-- for the popup menu. If the wrap width is larger than 1, the combo box
-- is in table mode.
-- 
-- /Since: 2.6/
comboBoxGetWrapWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m Int32
    -- ^ __Returns:__ the wrap width.
comboBoxGetWrapWidth comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    result <- gtk_combo_box_get_wrap_width comboBox'
    touchManagedPtr comboBox
    return result

#if defined(ENABLE_OVERLOADING)
data ComboBoxGetWrapWidthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxGetWrapWidthMethodInfo a signature where
    overloadedMethod = comboBoxGetWrapWidth

#endif

-- method ComboBox::popdown
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_popdown" gtk_combo_box_popdown :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO ()

-- | Hides the menu or dropdown list of /@comboBox@/.
-- 
-- This function is mostly intended for use by accessibility technologies;
-- applications should have little use for it.
-- 
-- /Since: 2.4/
comboBoxPopdown ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m ()
comboBoxPopdown comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_popdown comboBox'
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxPopdownMethodInfo
instance (signature ~ (m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxPopdownMethodInfo a signature where
    overloadedMethod = comboBoxPopdown

#endif

-- method ComboBox::popup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_popup" gtk_combo_box_popup :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    IO ()

-- | Pops up the menu or dropdown list of /@comboBox@/.
-- 
-- This function is mostly intended for use by accessibility technologies;
-- applications should have little use for it.
-- 
-- Before calling this, /@comboBox@/ must be mapped, or nothing will happen.
-- 
-- /Since: 2.4/
comboBoxPopup ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> m ()
comboBoxPopup comboBox = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_popup comboBox'
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxPopupMethodInfo
instance (signature ~ (m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxPopupMethodInfo a signature where
    overloadedMethod = comboBoxPopup

#endif

-- method ComboBox::popup_for_device
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "device"
--           , argType = TInterface Name { namespace = "Gdk" , name = "Device" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GdkDevice" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_popup_for_device" gtk_combo_box_popup_for_device :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Ptr Gdk.Device.Device ->                -- device : TInterface (Name {namespace = "Gdk", name = "Device"})
    IO ()

-- | Pops up the menu or dropdown list of /@comboBox@/, the popup window
-- will be grabbed so only /@device@/ and its associated pointer\/keyboard
-- are the only @/GdkDevices/@ able to send events to it.
-- 
-- /Since: 3.0/
comboBoxPopupForDevice ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a, Gdk.Device.IsDevice b) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> b
    -- ^ /@device@/: a t'GI.Gdk.Objects.Device.Device'
    -> m ()
comboBoxPopupForDevice comboBox device = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    device' <- unsafeManagedPtrCastPtr device
    gtk_combo_box_popup_for_device comboBox' device'
    touchManagedPtr comboBox
    touchManagedPtr device
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxPopupForDeviceMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsComboBox a, Gdk.Device.IsDevice b) => O.MethodInfo ComboBoxPopupForDeviceMethodInfo a signature where
    overloadedMethod = comboBoxPopupForDevice

#endif

-- method ComboBox::set_active
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "index_"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "An index in the model passed during construction, or -1 to have\nno active item"
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

foreign import ccall "gtk_combo_box_set_active" gtk_combo_box_set_active :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- index_ : TBasicType TInt
    IO ()

-- | Sets the active item of /@comboBox@/ to be the item at /@index@/.
-- 
-- /Since: 2.4/
comboBoxSetActive ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Int32
    -- ^ /@index_@/: An index in the model passed during construction, or -1 to have
    -- no active item
    -> m ()
comboBoxSetActive comboBox index_ = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_active comboBox' index_
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetActiveMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetActiveMethodInfo a signature where
    overloadedMethod = comboBoxSetActive

#endif

-- method ComboBox::set_active_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "active_id"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the ID of the row to select, or %NULL"
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

foreign import ccall "gtk_combo_box_set_active_id" gtk_combo_box_set_active_id :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CString ->                              -- active_id : TBasicType TUTF8
    IO CInt

-- | Changes the active row of /@comboBox@/ to the one that has an ID equal to
-- /@activeId@/, or unsets the active row if /@activeId@/ is 'P.Nothing'.  Rows having
-- a 'P.Nothing' ID string cannot be made active by this function.
-- 
-- If the t'GI.Gtk.Objects.ComboBox.ComboBox':@/id-column/@ property of /@comboBox@/ is unset or if no
-- row has the given ID then the function does nothing and returns 'P.False'.
-- 
-- /Since: 3.0/
comboBoxSetActiveId ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Maybe (T.Text)
    -- ^ /@activeId@/: the ID of the row to select, or 'P.Nothing'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if a row with a matching ID was found.  If a 'P.Nothing'
    --          /@activeId@/ was given to unset the active row, the function
    --          always returns 'P.True'.
comboBoxSetActiveId comboBox activeId = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    maybeActiveId <- case activeId of
        Nothing -> return nullPtr
        Just jActiveId -> do
            jActiveId' <- textToCString jActiveId
            return jActiveId'
    result <- gtk_combo_box_set_active_id comboBox' maybeActiveId
    let result' = (/= 0) result
    touchManagedPtr comboBox
    freeMem maybeActiveId
    return result'

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetActiveIdMethodInfo
instance (signature ~ (Maybe (T.Text) -> m Bool), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetActiveIdMethodInfo a signature where
    overloadedMethod = comboBoxSetActiveId

#endif

-- method ComboBox::set_active_iter
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "iter"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeIter" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GtkTreeIter, or %NULL"
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

foreign import ccall "gtk_combo_box_set_active_iter" gtk_combo_box_set_active_iter :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Ptr Gtk.TreeIter.TreeIter ->            -- iter : TInterface (Name {namespace = "Gtk", name = "TreeIter"})
    IO ()

-- | Sets the current active item to be the one referenced by /@iter@/, or
-- unsets the active item if /@iter@/ is 'P.Nothing'.
-- 
-- /Since: 2.4/
comboBoxSetActiveIter ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Maybe (Gtk.TreeIter.TreeIter)
    -- ^ /@iter@/: The t'GI.Gtk.Structs.TreeIter.TreeIter', or 'P.Nothing'
    -> m ()
comboBoxSetActiveIter comboBox iter = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    maybeIter <- case iter of
        Nothing -> return nullPtr
        Just jIter -> do
            jIter' <- unsafeManagedPtrGetPtr jIter
            return jIter'
    gtk_combo_box_set_active_iter comboBox' maybeIter
    touchManagedPtr comboBox
    whenJust iter touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetActiveIterMethodInfo
instance (signature ~ (Maybe (Gtk.TreeIter.TreeIter) -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetActiveIterMethodInfo a signature where
    overloadedMethod = comboBoxSetActiveIter

#endif

-- method ComboBox::set_add_tearoffs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "add_tearoffs"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to add tearoff menu items"
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

foreign import ccall "gtk_combo_box_set_add_tearoffs" gtk_combo_box_set_add_tearoffs :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CInt ->                                 -- add_tearoffs : TBasicType TBoolean
    IO ()

{-# DEPRECATED comboBoxSetAddTearoffs ["(Since version 3.10)"] #-}
-- | Sets whether the popup menu should have a tearoff
-- menu item.
-- 
-- /Since: 2.6/
comboBoxSetAddTearoffs ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Bool
    -- ^ /@addTearoffs@/: 'P.True' to add tearoff menu items
    -> m ()
comboBoxSetAddTearoffs comboBox addTearoffs = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    let addTearoffs' = (fromIntegral . fromEnum) addTearoffs
    gtk_combo_box_set_add_tearoffs comboBox' addTearoffs'
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetAddTearoffsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetAddTearoffsMethodInfo a signature where
    overloadedMethod = comboBoxSetAddTearoffs

#endif

-- method ComboBox::set_button_sensitivity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "sensitivity"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "SensitivityType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "specify the sensitivity of the dropdown button"
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

foreign import ccall "gtk_combo_box_set_button_sensitivity" gtk_combo_box_set_button_sensitivity :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CUInt ->                                -- sensitivity : TInterface (Name {namespace = "Gtk", name = "SensitivityType"})
    IO ()

-- | Sets whether the dropdown button of the combo box should be
-- always sensitive ('GI.Gtk.Enums.SensitivityTypeOn'), never sensitive ('GI.Gtk.Enums.SensitivityTypeOff')
-- or only if there is at least one item to display ('GI.Gtk.Enums.SensitivityTypeAuto').
-- 
-- /Since: 2.14/
comboBoxSetButtonSensitivity ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Gtk.Enums.SensitivityType
    -- ^ /@sensitivity@/: specify the sensitivity of the dropdown button
    -> m ()
comboBoxSetButtonSensitivity comboBox sensitivity = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    let sensitivity' = (fromIntegral . fromEnum) sensitivity
    gtk_combo_box_set_button_sensitivity comboBox' sensitivity'
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetButtonSensitivityMethodInfo
instance (signature ~ (Gtk.Enums.SensitivityType -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetButtonSensitivityMethodInfo a signature where
    overloadedMethod = comboBoxSetButtonSensitivity

#endif

-- method ComboBox::set_column_span_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column_span"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A column in the model passed during construction"
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

foreign import ccall "gtk_combo_box_set_column_span_column" gtk_combo_box_set_column_span_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- column_span : TBasicType TInt
    IO ()

-- | Sets the column with column span information for /@comboBox@/ to be
-- /@columnSpan@/. The column span column contains integers which indicate
-- how many columns an item should span.
-- 
-- /Since: 2.4/
comboBoxSetColumnSpanColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Int32
    -- ^ /@columnSpan@/: A column in the model passed during construction
    -> m ()
comboBoxSetColumnSpanColumn comboBox columnSpan = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_column_span_column comboBox' columnSpan
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetColumnSpanColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetColumnSpanColumnMethodInfo a signature where
    overloadedMethod = comboBoxSetColumnSpanColumn

#endif

-- method ComboBox::set_entry_text_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "text_column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "A column in @model to get the strings from for\n    the internal entry"
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

foreign import ccall "gtk_combo_box_set_entry_text_column" gtk_combo_box_set_entry_text_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- text_column : TBasicType TInt
    IO ()

-- | Sets the model column which /@comboBox@/ should use to get strings from
-- to be /@textColumn@/. The column /@textColumn@/ in the model of /@comboBox@/
-- must be of type @/G_TYPE_STRING/@.
-- 
-- This is only relevant if /@comboBox@/ has been created with
-- t'GI.Gtk.Objects.ComboBox.ComboBox':@/has-entry/@ as 'P.True'.
-- 
-- /Since: 2.24/
comboBoxSetEntryTextColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Int32
    -- ^ /@textColumn@/: A column in /@model@/ to get the strings from for
    --     the internal entry
    -> m ()
comboBoxSetEntryTextColumn comboBox textColumn = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_entry_text_column comboBox' textColumn
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetEntryTextColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetEntryTextColumnMethodInfo a signature where
    overloadedMethod = comboBoxSetEntryTextColumn

#endif

-- method ComboBox::set_focus_on_click
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "focus_on_click"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "whether the combo box grabs focus when clicked\n   with the mouse"
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

foreign import ccall "gtk_combo_box_set_focus_on_click" gtk_combo_box_set_focus_on_click :: 
    Ptr ComboBox ->                         -- combo : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CInt ->                                 -- focus_on_click : TBasicType TBoolean
    IO ()

{-# DEPRECATED comboBoxSetFocusOnClick ["(Since version 3.20)","Use 'GI.Gtk.Objects.Widget.widgetSetFocusOnClick' instead"] #-}
-- | Sets whether the combo box will grab focus when it is clicked with
-- the mouse. Making mouse clicks not grab focus is useful in places
-- like toolbars where you don’t want the keyboard focus removed from
-- the main area of the application.
-- 
-- /Since: 2.6/
comboBoxSetFocusOnClick ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@combo@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Bool
    -- ^ /@focusOnClick@/: whether the combo box grabs focus when clicked
    --    with the mouse
    -> m ()
comboBoxSetFocusOnClick combo focusOnClick = liftIO $ do
    combo' <- unsafeManagedPtrCastPtr combo
    let focusOnClick' = (fromIntegral . fromEnum) focusOnClick
    gtk_combo_box_set_focus_on_click combo' focusOnClick'
    touchManagedPtr combo
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetFocusOnClickMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetFocusOnClickMethodInfo a signature where
    overloadedMethod = comboBoxSetFocusOnClick

#endif

-- method ComboBox::set_id_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "id_column"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A column in @model to get string IDs for values from"
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

foreign import ccall "gtk_combo_box_set_id_column" gtk_combo_box_set_id_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- id_column : TBasicType TInt
    IO ()

-- | Sets the model column which /@comboBox@/ should use to get string IDs
-- for values from. The column /@idColumn@/ in the model of /@comboBox@/
-- must be of type @/G_TYPE_STRING/@.
-- 
-- /Since: 3.0/
comboBoxSetIdColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Int32
    -- ^ /@idColumn@/: A column in /@model@/ to get string IDs for values from
    -> m ()
comboBoxSetIdColumn comboBox idColumn = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_id_column comboBox' idColumn
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetIdColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetIdColumnMethodInfo a signature where
    overloadedMethod = comboBoxSetIdColumn

#endif

-- method ComboBox::set_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "TreeModel" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkTreeModel" , sinceVersion = Nothing }
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

foreign import ccall "gtk_combo_box_set_model" gtk_combo_box_set_model :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Ptr Gtk.TreeModel.TreeModel ->          -- model : TInterface (Name {namespace = "Gtk", name = "TreeModel"})
    IO ()

-- | Sets the model used by /@comboBox@/ to be /@model@/. Will unset a previously set
-- model (if applicable). If model is 'P.Nothing', then it will unset the model.
-- 
-- Note that this function does not clear the cell renderers, you have to
-- call 'GI.Gtk.Interfaces.CellLayout.cellLayoutClear' yourself if you need to set up different
-- cell renderers for the new model.
-- 
-- /Since: 2.4/
comboBoxSetModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a, Gtk.TreeModel.IsTreeModel b) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Maybe (b)
    -- ^ /@model@/: A t'GI.Gtk.Interfaces.TreeModel.TreeModel'
    -> m ()
comboBoxSetModel comboBox model = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    maybeModel <- case model of
        Nothing -> return nullPtr
        Just jModel -> do
            jModel' <- unsafeManagedPtrCastPtr jModel
            return jModel'
    gtk_combo_box_set_model comboBox' maybeModel
    touchManagedPtr comboBox
    whenJust model touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetModelMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsComboBox a, Gtk.TreeModel.IsTreeModel b) => O.MethodInfo ComboBoxSetModelMethodInfo a signature where
    overloadedMethod = comboBoxSetModel

#endif

-- method ComboBox::set_popup_fixed_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fixed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to use a fixed popup width"
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

foreign import ccall "gtk_combo_box_set_popup_fixed_width" gtk_combo_box_set_popup_fixed_width :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CInt ->                                 -- fixed : TBasicType TBoolean
    IO ()

-- | Specifies whether the popup’s width should be a fixed width
-- matching the allocated width of the combo box.
-- 
-- /Since: 3.0/
comboBoxSetPopupFixedWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Bool
    -- ^ /@fixed@/: whether to use a fixed popup width
    -> m ()
comboBoxSetPopupFixedWidth comboBox fixed = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    let fixed' = (fromIntegral . fromEnum) fixed
    gtk_combo_box_set_popup_fixed_width comboBox' fixed'
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetPopupFixedWidthMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetPopupFixedWidthMethodInfo a signature where
    overloadedMethod = comboBoxSetPopupFixedWidth

#endif

-- method ComboBox::set_row_separator_func
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "func"
--           , argType =
--               TInterface
--                 Name { namespace = "Gtk" , name = "TreeViewRowSeparatorFunc" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkTreeViewRowSeparatorFunc"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeNotified
--           , argClosure = 2
--           , argDestroy = 3
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "user data to pass to @func, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "destroy"
--           , argType =
--               TInterface Name { namespace = "GLib" , name = "DestroyNotify" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "destroy notifier for @data, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeAsync
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

foreign import ccall "gtk_combo_box_set_row_separator_func" gtk_combo_box_set_row_separator_func :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    FunPtr Gtk.Callbacks.C_TreeViewRowSeparatorFunc -> -- func : TInterface (Name {namespace = "Gtk", name = "TreeViewRowSeparatorFunc"})
    Ptr () ->                               -- data : TBasicType TPtr
    FunPtr GLib.Callbacks.C_DestroyNotify -> -- destroy : TInterface (Name {namespace = "GLib", name = "DestroyNotify"})
    IO ()

-- | Sets the row separator function, which is used to determine
-- whether a row should be drawn as a separator. If the row separator
-- function is 'P.Nothing', no separators are drawn. This is the default value.
-- 
-- /Since: 2.6/
comboBoxSetRowSeparatorFunc ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Gtk.Callbacks.TreeViewRowSeparatorFunc
    -- ^ /@func@/: a t'GI.Gtk.Callbacks.TreeViewRowSeparatorFunc'
    -> m ()
comboBoxSetRowSeparatorFunc comboBox func = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    func' <- Gtk.Callbacks.mk_TreeViewRowSeparatorFunc (Gtk.Callbacks.wrap_TreeViewRowSeparatorFunc Nothing (Gtk.Callbacks.drop_closures_TreeViewRowSeparatorFunc func))
    let data_ = castFunPtrToPtr func'
    let destroy = safeFreeFunPtrPtr
    gtk_combo_box_set_row_separator_func comboBox' func' data_ destroy
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetRowSeparatorFuncMethodInfo
instance (signature ~ (Gtk.Callbacks.TreeViewRowSeparatorFunc -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetRowSeparatorFuncMethodInfo a signature where
    overloadedMethod = comboBoxSetRowSeparatorFunc

#endif

-- method ComboBox::set_row_span_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "row_span"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "A column in the model passed during construction."
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

foreign import ccall "gtk_combo_box_set_row_span_column" gtk_combo_box_set_row_span_column :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- row_span : TBasicType TInt
    IO ()

-- | Sets the column with row span information for /@comboBox@/ to be /@rowSpan@/.
-- The row span column contains integers which indicate how many rows
-- an item should span.
-- 
-- /Since: 2.4/
comboBoxSetRowSpanColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'.
    -> Int32
    -- ^ /@rowSpan@/: A column in the model passed during construction.
    -> m ()
comboBoxSetRowSpanColumn comboBox rowSpan = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_row_span_column comboBox' rowSpan
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetRowSpanColumnMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetRowSpanColumnMethodInfo a signature where
    overloadedMethod = comboBoxSetRowSpanColumn

#endif

-- method ComboBox::set_title
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkComboBox" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a title for the menu in tearoff mode"
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

foreign import ccall "gtk_combo_box_set_title" gtk_combo_box_set_title :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    CString ->                              -- title : TBasicType TUTF8
    IO ()

{-# DEPRECATED comboBoxSetTitle ["(Since version 3.10)"] #-}
-- | Sets the menu’s title in tearoff mode.
-- 
-- /Since: 2.10/
comboBoxSetTitle ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: a t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> T.Text
    -- ^ /@title@/: a title for the menu in tearoff mode
    -> m ()
comboBoxSetTitle comboBox title = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    title' <- textToCString title
    gtk_combo_box_set_title comboBox' title'
    touchManagedPtr comboBox
    freeMem title'
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetTitleMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetTitleMethodInfo a signature where
    overloadedMethod = comboBoxSetTitle

#endif

-- method ComboBox::set_wrap_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "combo_box"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ComboBox" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GtkComboBox" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "width"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Preferred number of columns"
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

foreign import ccall "gtk_combo_box_set_wrap_width" gtk_combo_box_set_wrap_width :: 
    Ptr ComboBox ->                         -- combo_box : TInterface (Name {namespace = "Gtk", name = "ComboBox"})
    Int32 ->                                -- width : TBasicType TInt
    IO ()

-- | Sets the wrap width of /@comboBox@/ to be /@width@/. The wrap width is basically
-- the preferred number of columns when you want the popup to be layed out
-- in a table.
-- 
-- /Since: 2.4/
comboBoxSetWrapWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsComboBox a) =>
    a
    -- ^ /@comboBox@/: A t'GI.Gtk.Objects.ComboBox.ComboBox'
    -> Int32
    -- ^ /@width@/: Preferred number of columns
    -> m ()
comboBoxSetWrapWidth comboBox width = liftIO $ do
    comboBox' <- unsafeManagedPtrCastPtr comboBox
    gtk_combo_box_set_wrap_width comboBox' width
    touchManagedPtr comboBox
    return ()

#if defined(ENABLE_OVERLOADING)
data ComboBoxSetWrapWidthMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsComboBox a) => O.MethodInfo ComboBoxSetWrapWidthMethodInfo a signature where
    overloadedMethod = comboBoxSetWrapWidth

#endif

