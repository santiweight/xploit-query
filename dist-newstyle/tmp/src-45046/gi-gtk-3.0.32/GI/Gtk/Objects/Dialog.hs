{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- Dialog boxes are a convenient way to prompt the user for a small amount
-- of input, e.g. to display a message, ask a question, or anything else
-- that does not require extensive effort on the user’s part.
-- 
-- GTK+ treats a dialog as a window split vertically. The top section is a
-- t'GI.Gtk.Objects.VBox.VBox', and is where widgets such as a t'GI.Gtk.Objects.Label.Label' or a t'GI.Gtk.Objects.Entry.Entry' should
-- be packed. The bottom area is known as the
-- “action area”. This is generally used for
-- packing buttons into the dialog which may perform functions such as
-- cancel, ok, or apply.
-- 
-- t'GI.Gtk.Objects.Dialog.Dialog' boxes are created with a call to 'GI.Gtk.Objects.Dialog.dialogNew' or
-- @/gtk_dialog_new_with_buttons()/@. @/gtk_dialog_new_with_buttons()/@ is
-- recommended; it allows you to set the dialog title, some convenient
-- flags, and add simple buttons.
-- 
-- If “dialog” is a newly created dialog, the two primary areas of the
-- window can be accessed through 'GI.Gtk.Objects.Dialog.dialogGetContentArea' and
-- 'GI.Gtk.Objects.Dialog.dialogGetActionArea', as can be seen from the example below.
-- 
-- A “modal” dialog (that is, one which freezes the rest of the application
-- from user input), can be created by calling 'GI.Gtk.Objects.Window.windowSetModal' on the
-- dialog. Use the @/GTK_WINDOW()/@ macro to cast the widget returned from
-- 'GI.Gtk.Objects.Dialog.dialogNew' into a t'GI.Gtk.Objects.Window.Window'. When using @/gtk_dialog_new_with_buttons()/@
-- you can also pass the @/GTK_DIALOG_MODAL/@ flag to make a dialog modal.
-- 
-- If you add buttons to t'GI.Gtk.Objects.Dialog.Dialog' using @/gtk_dialog_new_with_buttons()/@,
-- 'GI.Gtk.Objects.Dialog.dialogAddButton', @/gtk_dialog_add_buttons()/@, or
-- 'GI.Gtk.Objects.Dialog.dialogAddActionWidget', clicking the button will emit a signal
-- called [response]("GI.Gtk.Objects.Dialog#signal:response") with a response ID that you specified. GTK+
-- will never assign a meaning to positive response IDs; these are entirely
-- user-defined. But for convenience, you can use the response IDs in the
-- t'GI.Gtk.Enums.ResponseType' enumeration (these all have values less than zero). If
-- a dialog receives a delete event, the [response]("GI.Gtk.Objects.Dialog#signal:response") signal will
-- be emitted with a response ID of @/GTK_RESPONSE_DELETE_EVENT/@.
-- 
-- If you want to block waiting for a dialog to return before returning
-- control flow to your code, you can call 'GI.Gtk.Objects.Dialog.dialogRun'. This function
-- enters a recursive main loop and waits for the user to respond to the
-- dialog, returning the response ID corresponding to the button the user
-- clicked.
-- 
-- For the simple dialog in the following example, in reality you’d probably
-- use t'GI.Gtk.Objects.MessageDialog.MessageDialog' to save yourself some effort. But you’d need to
-- create the dialog contents manually if you had more than a simple message
-- in the dialog.
-- 
-- An example for simple GtkDialog usage:
-- 
-- === /C code/
-- >
-- >// Function to open a dialog box with a message
-- >void
-- >quick_message (GtkWindow *parent, gchar *message)
-- >{
-- > GtkWidget *dialog, *label, *content_area;
-- > GtkDialogFlags flags;
-- >
-- > // Create the widgets
-- > flags = GTK_DIALOG_DESTROY_WITH_PARENT;
-- > dialog = gtk_dialog_new_with_buttons ("Message",
-- >                                       parent,
-- >                                       flags,
-- >                                       _("_OK"),
-- >                                       GTK_RESPONSE_NONE,
-- >                                       NULL);
-- > content_area = gtk_dialog_get_content_area (GTK_DIALOG (dialog));
-- > label = gtk_label_new (message);
-- >
-- > // Ensure that the dialog box is destroyed when the user responds
-- >
-- > g_signal_connect_swapped (dialog,
-- >                           "response",
-- >                           G_CALLBACK (gtk_widget_destroy),
-- >                           dialog);
-- >
-- > // Add the label, and show everything we’ve added
-- >
-- > gtk_container_add (GTK_CONTAINER (content_area), label);
-- > gtk_widget_show_all (dialog);
-- >}
-- 
-- 
-- = GtkDialog as GtkBuildable
-- 
-- The GtkDialog implementation of the t'GI.Gtk.Interfaces.Buildable.Buildable' interface exposes the
-- /@vbox@/ and /@actionArea@/ as internal children with the names “vbox” and
-- “action_area”.
-- 
-- GtkDialog supports a custom \<action-widgets> element, which can contain
-- multiple \<action-widget> elements. The “response” attribute specifies a
-- numeric response, and the content of the element is the id of widget
-- (which should be a child of the dialogs /@actionArea@/). To mark a response
-- as default, set the “default“ attribute of the \<action-widget> element
-- to true.
-- 
-- GtkDialog supports adding action widgets by specifying “action“ as
-- the “type“ attribute of a \<child> element. The widget will be added
-- either to the action area or the headerbar of the dialog, depending
-- on the “use-header-bar“ property. The response id has to be associated
-- with the action widget using the \<action-widgets> element.
-- 
-- An example of a t'GI.Gtk.Objects.Dialog.Dialog' UI definition fragment:
-- >
-- ><object class="GtkDialog" id="dialog1">
-- >  <child type="action">
-- >    <object class="GtkButton" id="button_cancel"/>
-- >  </child>
-- >  <child type="action">
-- >    <object class="GtkButton" id="button_ok">
-- >      <property name="can-default">True</property>
-- >    </object>
-- >  </child>
-- >  <action-widgets>
-- >    <action-widget response="cancel">button_cancel</action-widget>
-- >    <action-widget response="ok" default="true">button_ok</action-widget>
-- >  </action-widgets>
-- ></object>
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Dialog
    ( 

-- * Exported types
    Dialog(..)                              ,
    IsDialog                                ,
    toDialog                                ,
    noDialog                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDialogMethod                     ,
#endif


-- ** addActionWidget #method:addActionWidget#

#if defined(ENABLE_OVERLOADING)
    DialogAddActionWidgetMethodInfo         ,
#endif
    dialogAddActionWidget                   ,


-- ** addButton #method:addButton#

#if defined(ENABLE_OVERLOADING)
    DialogAddButtonMethodInfo               ,
#endif
    dialogAddButton                         ,


-- ** getActionArea #method:getActionArea#

#if defined(ENABLE_OVERLOADING)
    DialogGetActionAreaMethodInfo           ,
#endif
    dialogGetActionArea                     ,


-- ** getContentArea #method:getContentArea#

#if defined(ENABLE_OVERLOADING)
    DialogGetContentAreaMethodInfo          ,
#endif
    dialogGetContentArea                    ,


-- ** getHeaderBar #method:getHeaderBar#

#if defined(ENABLE_OVERLOADING)
    DialogGetHeaderBarMethodInfo            ,
#endif
    dialogGetHeaderBar                      ,


-- ** getResponseForWidget #method:getResponseForWidget#

#if defined(ENABLE_OVERLOADING)
    DialogGetResponseForWidgetMethodInfo    ,
#endif
    dialogGetResponseForWidget              ,


-- ** getWidgetForResponse #method:getWidgetForResponse#

#if defined(ENABLE_OVERLOADING)
    DialogGetWidgetForResponseMethodInfo    ,
#endif
    dialogGetWidgetForResponse              ,


-- ** new #method:new#

    dialogNew                               ,


-- ** response #method:response#

#if defined(ENABLE_OVERLOADING)
    DialogResponseMethodInfo                ,
#endif
    dialogResponse                          ,


-- ** run #method:run#

#if defined(ENABLE_OVERLOADING)
    DialogRunMethodInfo                     ,
#endif
    dialogRun                               ,


-- ** setAlternativeButtonOrderFromArray #method:setAlternativeButtonOrderFromArray#

#if defined(ENABLE_OVERLOADING)
    DialogSetAlternativeButtonOrderFromArrayMethodInfo,
#endif
    dialogSetAlternativeButtonOrderFromArray,


-- ** setDefaultResponse #method:setDefaultResponse#

#if defined(ENABLE_OVERLOADING)
    DialogSetDefaultResponseMethodInfo      ,
#endif
    dialogSetDefaultResponse                ,


-- ** setResponseSensitive #method:setResponseSensitive#

#if defined(ENABLE_OVERLOADING)
    DialogSetResponseSensitiveMethodInfo    ,
#endif
    dialogSetResponseSensitive              ,




 -- * Properties
-- ** useHeaderBar #attr:useHeaderBar#
-- | 'P.True' if the dialog uses a t'GI.Gtk.Objects.HeaderBar.HeaderBar' for action buttons
-- instead of the action-area.
-- 
-- For technical reasons, this property is declared as an integer
-- property, but you should only set it to 'P.True' or 'P.False'.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    DialogUseHeaderBarPropertyInfo          ,
#endif
    constructDialogUseHeaderBar             ,
#if defined(ENABLE_OVERLOADING)
    dialogUseHeaderBar                      ,
#endif
    getDialogUseHeaderBar                   ,




 -- * Signals
-- ** close #signal:close#

    C_DialogCloseCallback                   ,
    DialogCloseCallback                     ,
#if defined(ENABLE_OVERLOADING)
    DialogCloseSignalInfo                   ,
#endif
    afterDialogClose                        ,
    genClosure_DialogClose                  ,
    mk_DialogCloseCallback                  ,
    noDialogCloseCallback                   ,
    onDialogClose                           ,
    wrap_DialogCloseCallback                ,


-- ** response #signal:response#

    C_DialogResponseCallback                ,
    DialogResponseCallback                  ,
#if defined(ENABLE_OVERLOADING)
    DialogResponseSignalInfo                ,
#endif
    afterDialogResponse                     ,
    genClosure_DialogResponse               ,
    mk_DialogResponseCallback               ,
    noDialogResponseCallback                ,
    onDialogResponse                        ,
    wrap_DialogResponseCallback             ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Objects.Window as Gtk.Window

-- | Memory-managed wrapper type.
newtype Dialog = Dialog (ManagedPtr Dialog)
    deriving (Eq)
foreign import ccall "gtk_dialog_get_type"
    c_gtk_dialog_get_type :: IO GType

instance GObject Dialog where
    gobjectType = c_gtk_dialog_get_type
    

-- | Convert 'Dialog' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Dialog where
    toGValue o = do
        gtype <- c_gtk_dialog_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Dialog)
        B.ManagedPtr.newObject Dialog ptr
        
    

-- | Type class for types which can be safely cast to `Dialog`, for instance with `toDialog`.
class (GObject o, O.IsDescendantOf Dialog o) => IsDialog o
instance (GObject o, O.IsDescendantOf Dialog o) => IsDialog o

instance O.HasParentTypes Dialog
type instance O.ParentTypes Dialog = '[Gtk.Window.Window, Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Dialog`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDialog :: (MonadIO m, IsDialog o) => o -> m Dialog
toDialog = liftIO . unsafeCastTo Dialog

-- | A convenience alias for `Nothing` :: `Maybe` `Dialog`.
noDialog :: Maybe Dialog
noDialog = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDialogMethod (t :: Symbol) (o :: *) :: * where
    ResolveDialogMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveDialogMethod "activateDefault" o = Gtk.Window.WindowActivateDefaultMethodInfo
    ResolveDialogMethod "activateFocus" o = Gtk.Window.WindowActivateFocusMethodInfo
    ResolveDialogMethod "activateKey" o = Gtk.Window.WindowActivateKeyMethodInfo
    ResolveDialogMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveDialogMethod "addAccelGroup" o = Gtk.Window.WindowAddAccelGroupMethodInfo
    ResolveDialogMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveDialogMethod "addActionWidget" o = DialogAddActionWidgetMethodInfo
    ResolveDialogMethod "addButton" o = DialogAddButtonMethodInfo
    ResolveDialogMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveDialogMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveDialogMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveDialogMethod "addMnemonic" o = Gtk.Window.WindowAddMnemonicMethodInfo
    ResolveDialogMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveDialogMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveDialogMethod "beginMoveDrag" o = Gtk.Window.WindowBeginMoveDragMethodInfo
    ResolveDialogMethod "beginResizeDrag" o = Gtk.Window.WindowBeginResizeDragMethodInfo
    ResolveDialogMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDialogMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDialogMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveDialogMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveDialogMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveDialogMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveDialogMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveDialogMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveDialogMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveDialogMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveDialogMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveDialogMethod "close" o = Gtk.Window.WindowCloseMethodInfo
    ResolveDialogMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveDialogMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveDialogMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveDialogMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveDialogMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveDialogMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveDialogMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveDialogMethod "deiconify" o = Gtk.Window.WindowDeiconifyMethodInfo
    ResolveDialogMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveDialogMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveDialogMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveDialogMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveDialogMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveDialogMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveDialogMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveDialogMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveDialogMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveDialogMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveDialogMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveDialogMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveDialogMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveDialogMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveDialogMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveDialogMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveDialogMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveDialogMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveDialogMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveDialogMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveDialogMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveDialogMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveDialogMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveDialogMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveDialogMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveDialogMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveDialogMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveDialogMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveDialogMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveDialogMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveDialogMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveDialogMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveDialogMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveDialogMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveDialogMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveDialogMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveDialogMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDialogMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveDialogMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveDialogMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDialogMethod "fullscreen" o = Gtk.Window.WindowFullscreenMethodInfo
    ResolveDialogMethod "fullscreenOnMonitor" o = Gtk.Window.WindowFullscreenOnMonitorMethodInfo
    ResolveDialogMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDialogMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveDialogMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveDialogMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveDialogMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveDialogMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveDialogMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveDialogMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveDialogMethod "hasGroup" o = Gtk.Window.WindowHasGroupMethodInfo
    ResolveDialogMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveDialogMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveDialogMethod "hasToplevelFocus" o = Gtk.Window.WindowHasToplevelFocusMethodInfo
    ResolveDialogMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveDialogMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveDialogMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveDialogMethod "iconify" o = Gtk.Window.WindowIconifyMethodInfo
    ResolveDialogMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveDialogMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveDialogMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveDialogMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveDialogMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveDialogMethod "isActive" o = Gtk.Window.WindowIsActiveMethodInfo
    ResolveDialogMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveDialogMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveDialogMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveDialogMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDialogMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveDialogMethod "isMaximized" o = Gtk.Window.WindowIsMaximizedMethodInfo
    ResolveDialogMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveDialogMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveDialogMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveDialogMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveDialogMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveDialogMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveDialogMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveDialogMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveDialogMethod "maximize" o = Gtk.Window.WindowMaximizeMethodInfo
    ResolveDialogMethod "mnemonicActivate" o = Gtk.Window.WindowMnemonicActivateMethodInfo
    ResolveDialogMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveDialogMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveDialogMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveDialogMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveDialogMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveDialogMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveDialogMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveDialogMethod "move" o = Gtk.Window.WindowMoveMethodInfo
    ResolveDialogMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDialogMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDialogMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveDialogMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveDialogMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveDialogMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveDialogMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveDialogMethod "parseGeometry" o = Gtk.Window.WindowParseGeometryMethodInfo
    ResolveDialogMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveDialogMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveDialogMethod "present" o = Gtk.Window.WindowPresentMethodInfo
    ResolveDialogMethod "presentWithTime" o = Gtk.Window.WindowPresentWithTimeMethodInfo
    ResolveDialogMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveDialogMethod "propagateKeyEvent" o = Gtk.Window.WindowPropagateKeyEventMethodInfo
    ResolveDialogMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveDialogMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveDialogMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveDialogMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveDialogMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveDialogMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveDialogMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveDialogMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveDialogMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDialogMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDialogMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveDialogMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveDialogMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveDialogMethod "removeAccelGroup" o = Gtk.Window.WindowRemoveAccelGroupMethodInfo
    ResolveDialogMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveDialogMethod "removeMnemonic" o = Gtk.Window.WindowRemoveMnemonicMethodInfo
    ResolveDialogMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveDialogMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveDialogMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveDialogMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveDialogMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveDialogMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveDialogMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveDialogMethod "reshowWithInitialSize" o = Gtk.Window.WindowReshowWithInitialSizeMethodInfo
    ResolveDialogMethod "resize" o = Gtk.Window.WindowResizeMethodInfo
    ResolveDialogMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveDialogMethod "resizeGripIsVisible" o = Gtk.Window.WindowResizeGripIsVisibleMethodInfo
    ResolveDialogMethod "resizeToGeometry" o = Gtk.Window.WindowResizeToGeometryMethodInfo
    ResolveDialogMethod "response" o = DialogResponseMethodInfo
    ResolveDialogMethod "run" o = DialogRunMethodInfo
    ResolveDialogMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDialogMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveDialogMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveDialogMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveDialogMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveDialogMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveDialogMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveDialogMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveDialogMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveDialogMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveDialogMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDialogMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDialogMethod "stick" o = Gtk.Window.WindowStickMethodInfo
    ResolveDialogMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveDialogMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveDialogMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveDialogMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDialogMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveDialogMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveDialogMethod "unfullscreen" o = Gtk.Window.WindowUnfullscreenMethodInfo
    ResolveDialogMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveDialogMethod "unmaximize" o = Gtk.Window.WindowUnmaximizeMethodInfo
    ResolveDialogMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveDialogMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveDialogMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDialogMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveDialogMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveDialogMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveDialogMethod "unstick" o = Gtk.Window.WindowUnstickMethodInfo
    ResolveDialogMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDialogMethod "getAcceptFocus" o = Gtk.Window.WindowGetAcceptFocusMethodInfo
    ResolveDialogMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveDialogMethod "getActionArea" o = DialogGetActionAreaMethodInfo
    ResolveDialogMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveDialogMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveDialogMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveDialogMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveDialogMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveDialogMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveDialogMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveDialogMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveDialogMethod "getApplication" o = Gtk.Window.WindowGetApplicationMethodInfo
    ResolveDialogMethod "getAttachedTo" o = Gtk.Window.WindowGetAttachedToMethodInfo
    ResolveDialogMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveDialogMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveDialogMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveDialogMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveDialogMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveDialogMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveDialogMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveDialogMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveDialogMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveDialogMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveDialogMethod "getContentArea" o = DialogGetContentAreaMethodInfo
    ResolveDialogMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDialogMethod "getDecorated" o = Gtk.Window.WindowGetDecoratedMethodInfo
    ResolveDialogMethod "getDefaultSize" o = Gtk.Window.WindowGetDefaultSizeMethodInfo
    ResolveDialogMethod "getDefaultWidget" o = Gtk.Window.WindowGetDefaultWidgetMethodInfo
    ResolveDialogMethod "getDeletable" o = Gtk.Window.WindowGetDeletableMethodInfo
    ResolveDialogMethod "getDestroyWithParent" o = Gtk.Window.WindowGetDestroyWithParentMethodInfo
    ResolveDialogMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveDialogMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveDialogMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveDialogMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveDialogMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveDialogMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveDialogMethod "getFocus" o = Gtk.Window.WindowGetFocusMethodInfo
    ResolveDialogMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveDialogMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveDialogMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveDialogMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveDialogMethod "getFocusOnMap" o = Gtk.Window.WindowGetFocusOnMapMethodInfo
    ResolveDialogMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveDialogMethod "getFocusVisible" o = Gtk.Window.WindowGetFocusVisibleMethodInfo
    ResolveDialogMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveDialogMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveDialogMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveDialogMethod "getGravity" o = Gtk.Window.WindowGetGravityMethodInfo
    ResolveDialogMethod "getGroup" o = Gtk.Window.WindowGetGroupMethodInfo
    ResolveDialogMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveDialogMethod "getHasResizeGrip" o = Gtk.Window.WindowGetHasResizeGripMethodInfo
    ResolveDialogMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveDialogMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveDialogMethod "getHeaderBar" o = DialogGetHeaderBarMethodInfo
    ResolveDialogMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveDialogMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveDialogMethod "getHideTitlebarWhenMaximized" o = Gtk.Window.WindowGetHideTitlebarWhenMaximizedMethodInfo
    ResolveDialogMethod "getIcon" o = Gtk.Window.WindowGetIconMethodInfo
    ResolveDialogMethod "getIconList" o = Gtk.Window.WindowGetIconListMethodInfo
    ResolveDialogMethod "getIconName" o = Gtk.Window.WindowGetIconNameMethodInfo
    ResolveDialogMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveDialogMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveDialogMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveDialogMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveDialogMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveDialogMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveDialogMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveDialogMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveDialogMethod "getMnemonicModifier" o = Gtk.Window.WindowGetMnemonicModifierMethodInfo
    ResolveDialogMethod "getMnemonicsVisible" o = Gtk.Window.WindowGetMnemonicsVisibleMethodInfo
    ResolveDialogMethod "getModal" o = Gtk.Window.WindowGetModalMethodInfo
    ResolveDialogMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveDialogMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveDialogMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveDialogMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveDialogMethod "getOpacity" o = Gtk.Window.WindowGetOpacityMethodInfo
    ResolveDialogMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveDialogMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveDialogMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveDialogMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveDialogMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveDialogMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveDialogMethod "getPosition" o = Gtk.Window.WindowGetPositionMethodInfo
    ResolveDialogMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveDialogMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveDialogMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveDialogMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveDialogMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveDialogMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveDialogMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDialogMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDialogMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveDialogMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveDialogMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveDialogMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveDialogMethod "getResizable" o = Gtk.Window.WindowGetResizableMethodInfo
    ResolveDialogMethod "getResizeGripArea" o = Gtk.Window.WindowGetResizeGripAreaMethodInfo
    ResolveDialogMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveDialogMethod "getResponseForWidget" o = DialogGetResponseForWidgetMethodInfo
    ResolveDialogMethod "getRole" o = Gtk.Window.WindowGetRoleMethodInfo
    ResolveDialogMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveDialogMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveDialogMethod "getScreen" o = Gtk.Window.WindowGetScreenMethodInfo
    ResolveDialogMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveDialogMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveDialogMethod "getSize" o = Gtk.Window.WindowGetSizeMethodInfo
    ResolveDialogMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveDialogMethod "getSkipPagerHint" o = Gtk.Window.WindowGetSkipPagerHintMethodInfo
    ResolveDialogMethod "getSkipTaskbarHint" o = Gtk.Window.WindowGetSkipTaskbarHintMethodInfo
    ResolveDialogMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveDialogMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveDialogMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveDialogMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveDialogMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveDialogMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveDialogMethod "getTitle" o = Gtk.Window.WindowGetTitleMethodInfo
    ResolveDialogMethod "getTitlebar" o = Gtk.Window.WindowGetTitlebarMethodInfo
    ResolveDialogMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveDialogMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveDialogMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveDialogMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveDialogMethod "getTransientFor" o = Gtk.Window.WindowGetTransientForMethodInfo
    ResolveDialogMethod "getTypeHint" o = Gtk.Window.WindowGetTypeHintMethodInfo
    ResolveDialogMethod "getUrgencyHint" o = Gtk.Window.WindowGetUrgencyHintMethodInfo
    ResolveDialogMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveDialogMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveDialogMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveDialogMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveDialogMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveDialogMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveDialogMethod "getWidgetForResponse" o = DialogGetWidgetForResponseMethodInfo
    ResolveDialogMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveDialogMethod "getWindowType" o = Gtk.Window.WindowGetWindowTypeMethodInfo
    ResolveDialogMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveDialogMethod "setAcceptFocus" o = Gtk.Window.WindowSetAcceptFocusMethodInfo
    ResolveDialogMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveDialogMethod "setAlternativeButtonOrderFromArray" o = DialogSetAlternativeButtonOrderFromArrayMethodInfo
    ResolveDialogMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveDialogMethod "setApplication" o = Gtk.Window.WindowSetApplicationMethodInfo
    ResolveDialogMethod "setAttachedTo" o = Gtk.Window.WindowSetAttachedToMethodInfo
    ResolveDialogMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveDialogMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveDialogMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveDialogMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveDialogMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveDialogMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveDialogMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveDialogMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDialogMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDialogMethod "setDecorated" o = Gtk.Window.WindowSetDecoratedMethodInfo
    ResolveDialogMethod "setDefault" o = Gtk.Window.WindowSetDefaultMethodInfo
    ResolveDialogMethod "setDefaultGeometry" o = Gtk.Window.WindowSetDefaultGeometryMethodInfo
    ResolveDialogMethod "setDefaultResponse" o = DialogSetDefaultResponseMethodInfo
    ResolveDialogMethod "setDefaultSize" o = Gtk.Window.WindowSetDefaultSizeMethodInfo
    ResolveDialogMethod "setDeletable" o = Gtk.Window.WindowSetDeletableMethodInfo
    ResolveDialogMethod "setDestroyWithParent" o = Gtk.Window.WindowSetDestroyWithParentMethodInfo
    ResolveDialogMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveDialogMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveDialogMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveDialogMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveDialogMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveDialogMethod "setFocus" o = Gtk.Window.WindowSetFocusMethodInfo
    ResolveDialogMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveDialogMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveDialogMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveDialogMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveDialogMethod "setFocusOnMap" o = Gtk.Window.WindowSetFocusOnMapMethodInfo
    ResolveDialogMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveDialogMethod "setFocusVisible" o = Gtk.Window.WindowSetFocusVisibleMethodInfo
    ResolveDialogMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveDialogMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveDialogMethod "setGeometryHints" o = Gtk.Window.WindowSetGeometryHintsMethodInfo
    ResolveDialogMethod "setGravity" o = Gtk.Window.WindowSetGravityMethodInfo
    ResolveDialogMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveDialogMethod "setHasResizeGrip" o = Gtk.Window.WindowSetHasResizeGripMethodInfo
    ResolveDialogMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveDialogMethod "setHasUserRefCount" o = Gtk.Window.WindowSetHasUserRefCountMethodInfo
    ResolveDialogMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveDialogMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveDialogMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveDialogMethod "setHideTitlebarWhenMaximized" o = Gtk.Window.WindowSetHideTitlebarWhenMaximizedMethodInfo
    ResolveDialogMethod "setIcon" o = Gtk.Window.WindowSetIconMethodInfo
    ResolveDialogMethod "setIconFromFile" o = Gtk.Window.WindowSetIconFromFileMethodInfo
    ResolveDialogMethod "setIconList" o = Gtk.Window.WindowSetIconListMethodInfo
    ResolveDialogMethod "setIconName" o = Gtk.Window.WindowSetIconNameMethodInfo
    ResolveDialogMethod "setKeepAbove" o = Gtk.Window.WindowSetKeepAboveMethodInfo
    ResolveDialogMethod "setKeepBelow" o = Gtk.Window.WindowSetKeepBelowMethodInfo
    ResolveDialogMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveDialogMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveDialogMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveDialogMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveDialogMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveDialogMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveDialogMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveDialogMethod "setMnemonicModifier" o = Gtk.Window.WindowSetMnemonicModifierMethodInfo
    ResolveDialogMethod "setMnemonicsVisible" o = Gtk.Window.WindowSetMnemonicsVisibleMethodInfo
    ResolveDialogMethod "setModal" o = Gtk.Window.WindowSetModalMethodInfo
    ResolveDialogMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveDialogMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveDialogMethod "setOpacity" o = Gtk.Window.WindowSetOpacityMethodInfo
    ResolveDialogMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveDialogMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveDialogMethod "setPosition" o = Gtk.Window.WindowSetPositionMethodInfo
    ResolveDialogMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDialogMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveDialogMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveDialogMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveDialogMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveDialogMethod "setResizable" o = Gtk.Window.WindowSetResizableMethodInfo
    ResolveDialogMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveDialogMethod "setResponseSensitive" o = DialogSetResponseSensitiveMethodInfo
    ResolveDialogMethod "setRole" o = Gtk.Window.WindowSetRoleMethodInfo
    ResolveDialogMethod "setScreen" o = Gtk.Window.WindowSetScreenMethodInfo
    ResolveDialogMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveDialogMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveDialogMethod "setSkipPagerHint" o = Gtk.Window.WindowSetSkipPagerHintMethodInfo
    ResolveDialogMethod "setSkipTaskbarHint" o = Gtk.Window.WindowSetSkipTaskbarHintMethodInfo
    ResolveDialogMethod "setStartupId" o = Gtk.Window.WindowSetStartupIdMethodInfo
    ResolveDialogMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveDialogMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveDialogMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveDialogMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveDialogMethod "setTitle" o = Gtk.Window.WindowSetTitleMethodInfo
    ResolveDialogMethod "setTitlebar" o = Gtk.Window.WindowSetTitlebarMethodInfo
    ResolveDialogMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveDialogMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveDialogMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveDialogMethod "setTransientFor" o = Gtk.Window.WindowSetTransientForMethodInfo
    ResolveDialogMethod "setTypeHint" o = Gtk.Window.WindowSetTypeHintMethodInfo
    ResolveDialogMethod "setUrgencyHint" o = Gtk.Window.WindowSetUrgencyHintMethodInfo
    ResolveDialogMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveDialogMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveDialogMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveDialogMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveDialogMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveDialogMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveDialogMethod "setWmclass" o = Gtk.Window.WindowSetWmclassMethodInfo
    ResolveDialogMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDialogMethod t Dialog, O.MethodInfo info Dialog p) => OL.IsLabel t (Dialog -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Dialog::close
-- | The [close](#signal:close) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user uses a keybinding to close
-- the dialog.
-- 
-- The default binding for this signal is the Escape key.
type DialogCloseCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `DialogCloseCallback`@.
noDialogCloseCallback :: Maybe DialogCloseCallback
noDialogCloseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_DialogCloseCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DialogCloseCallback`.
foreign import ccall "wrapper"
    mk_DialogCloseCallback :: C_DialogCloseCallback -> IO (FunPtr C_DialogCloseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_DialogClose :: MonadIO m => DialogCloseCallback -> m (GClosure C_DialogCloseCallback)
genClosure_DialogClose cb = liftIO $ do
    let cb' = wrap_DialogCloseCallback cb
    mk_DialogCloseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `DialogCloseCallback` into a `C_DialogCloseCallback`.
wrap_DialogCloseCallback ::
    DialogCloseCallback ->
    C_DialogCloseCallback
wrap_DialogCloseCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' dialog #close callback
-- @
-- 
-- 
onDialogClose :: (IsDialog a, MonadIO m) => a -> DialogCloseCallback -> m SignalHandlerId
onDialogClose obj cb = liftIO $ do
    let cb' = wrap_DialogCloseCallback cb
    cb'' <- mk_DialogCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' dialog #close callback
-- @
-- 
-- 
afterDialogClose :: (IsDialog a, MonadIO m) => a -> DialogCloseCallback -> m SignalHandlerId
afterDialogClose obj cb = liftIO $ do
    let cb' = wrap_DialogCloseCallback cb
    cb'' <- mk_DialogCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DialogCloseSignalInfo
instance SignalInfo DialogCloseSignalInfo where
    type HaskellCallbackType DialogCloseSignalInfo = DialogCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DialogCloseCallback cb
        cb'' <- mk_DialogCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail

#endif

-- signal Dialog::response
-- | Emitted when an action widget is clicked, the dialog receives a
-- delete event, or the application programmer calls 'GI.Gtk.Objects.Dialog.dialogResponse'.
-- On a delete event, the response ID is @/GTK_RESPONSE_DELETE_EVENT/@.
-- Otherwise, it depends on which action widget was clicked.
type DialogResponseCallback =
    Int32
    -- ^ /@responseId@/: the response ID
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `DialogResponseCallback`@.
noDialogResponseCallback :: Maybe DialogResponseCallback
noDialogResponseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_DialogResponseCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_DialogResponseCallback`.
foreign import ccall "wrapper"
    mk_DialogResponseCallback :: C_DialogResponseCallback -> IO (FunPtr C_DialogResponseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_DialogResponse :: MonadIO m => DialogResponseCallback -> m (GClosure C_DialogResponseCallback)
genClosure_DialogResponse cb = liftIO $ do
    let cb' = wrap_DialogResponseCallback cb
    mk_DialogResponseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `DialogResponseCallback` into a `C_DialogResponseCallback`.
wrap_DialogResponseCallback ::
    DialogResponseCallback ->
    C_DialogResponseCallback
wrap_DialogResponseCallback _cb _ responseId _ = do
    _cb  responseId


-- | Connect a signal handler for the [response](#signal:response) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' dialog #response callback
-- @
-- 
-- 
onDialogResponse :: (IsDialog a, MonadIO m) => a -> DialogResponseCallback -> m SignalHandlerId
onDialogResponse obj cb = liftIO $ do
    let cb' = wrap_DialogResponseCallback cb
    cb'' <- mk_DialogResponseCallback cb'
    connectSignalFunPtr obj "response" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [response](#signal:response) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' dialog #response callback
-- @
-- 
-- 
afterDialogResponse :: (IsDialog a, MonadIO m) => a -> DialogResponseCallback -> m SignalHandlerId
afterDialogResponse obj cb = liftIO $ do
    let cb' = wrap_DialogResponseCallback cb
    cb'' <- mk_DialogResponseCallback cb'
    connectSignalFunPtr obj "response" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data DialogResponseSignalInfo
instance SignalInfo DialogResponseSignalInfo where
    type HaskellCallbackType DialogResponseSignalInfo = DialogResponseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_DialogResponseCallback cb
        cb'' <- mk_DialogResponseCallback cb'
        connectSignalFunPtr obj "response" cb'' connectMode detail

#endif

-- VVV Prop "use-header-bar"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-header-bar@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' dialog #useHeaderBar
-- @
getDialogUseHeaderBar :: (MonadIO m, IsDialog o) => o -> m Int32
getDialogUseHeaderBar obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "use-header-bar"

-- | Construct a `GValueConstruct` with valid value for the “@use-header-bar@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructDialogUseHeaderBar :: (IsDialog o) => Int32 -> IO (GValueConstruct o)
constructDialogUseHeaderBar val = B.Properties.constructObjectPropertyInt32 "use-header-bar" val

#if defined(ENABLE_OVERLOADING)
data DialogUseHeaderBarPropertyInfo
instance AttrInfo DialogUseHeaderBarPropertyInfo where
    type AttrAllowedOps DialogUseHeaderBarPropertyInfo = '[ 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint DialogUseHeaderBarPropertyInfo = IsDialog
    type AttrSetTypeConstraint DialogUseHeaderBarPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint DialogUseHeaderBarPropertyInfo = (~) Int32
    type AttrTransferType DialogUseHeaderBarPropertyInfo = Int32
    type AttrGetType DialogUseHeaderBarPropertyInfo = Int32
    type AttrLabel DialogUseHeaderBarPropertyInfo = "use-header-bar"
    type AttrOrigin DialogUseHeaderBarPropertyInfo = Dialog
    attrGet = getDialogUseHeaderBar
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructDialogUseHeaderBar
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Dialog
type instance O.AttributeList Dialog = DialogAttributeList
type DialogAttributeList = ('[ '("acceptFocus", Gtk.Window.WindowAcceptFocusPropertyInfo), '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("application", Gtk.Window.WindowApplicationPropertyInfo), '("attachedTo", Gtk.Window.WindowAttachedToPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("decorated", Gtk.Window.WindowDecoratedPropertyInfo), '("defaultHeight", Gtk.Window.WindowDefaultHeightPropertyInfo), '("defaultWidth", Gtk.Window.WindowDefaultWidthPropertyInfo), '("deletable", Gtk.Window.WindowDeletablePropertyInfo), '("destroyWithParent", Gtk.Window.WindowDestroyWithParentPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("focusOnMap", Gtk.Window.WindowFocusOnMapPropertyInfo), '("focusVisible", Gtk.Window.WindowFocusVisiblePropertyInfo), '("gravity", Gtk.Window.WindowGravityPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasResizeGrip", Gtk.Window.WindowHasResizeGripPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("hasToplevelFocus", Gtk.Window.WindowHasToplevelFocusPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hideTitlebarWhenMaximized", Gtk.Window.WindowHideTitlebarWhenMaximizedPropertyInfo), '("icon", Gtk.Window.WindowIconPropertyInfo), '("iconName", Gtk.Window.WindowIconNamePropertyInfo), '("isActive", Gtk.Window.WindowIsActivePropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("isMaximized", Gtk.Window.WindowIsMaximizedPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("mnemonicsVisible", Gtk.Window.WindowMnemonicsVisiblePropertyInfo), '("modal", Gtk.Window.WindowModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizable", Gtk.Window.WindowResizablePropertyInfo), '("resizeGripVisible", Gtk.Window.WindowResizeGripVisiblePropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("role", Gtk.Window.WindowRolePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("screen", Gtk.Window.WindowScreenPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("skipPagerHint", Gtk.Window.WindowSkipPagerHintPropertyInfo), '("skipTaskbarHint", Gtk.Window.WindowSkipTaskbarHintPropertyInfo), '("startupId", Gtk.Window.WindowStartupIdPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("title", Gtk.Window.WindowTitlePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transientFor", Gtk.Window.WindowTransientForPropertyInfo), '("type", Gtk.Window.WindowTypePropertyInfo), '("typeHint", Gtk.Window.WindowTypeHintPropertyInfo), '("urgencyHint", Gtk.Window.WindowUrgencyHintPropertyInfo), '("useHeaderBar", DialogUseHeaderBarPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPosition", Gtk.Window.WindowWindowPositionPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
dialogUseHeaderBar :: AttrLabelProxy "useHeaderBar"
dialogUseHeaderBar = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Dialog = DialogSignalList
type DialogSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activateDefault", Gtk.Window.WindowActivateDefaultSignalInfo), '("activateFocus", Gtk.Window.WindowActivateFocusSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", DialogCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enableDebugging", Gtk.Window.WindowEnableDebuggingSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("keysChanged", Gtk.Window.WindowKeysChangedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", DialogResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocus", Gtk.Window.WindowSetFocusSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Dialog::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Dialog" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_new" gtk_dialog_new :: 
    IO (Ptr Dialog)

-- | Creates a new dialog box.
-- 
-- Widgets should not be packed into this t'GI.Gtk.Objects.Window.Window'
-- directly, but into the /@vbox@/ and /@actionArea@/, as described above.
dialogNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Dialog
    -- ^ __Returns:__ the new dialog as a t'GI.Gtk.Objects.Widget.Widget'
dialogNew  = liftIO $ do
    result <- gtk_dialog_new
    checkUnexpectedReturnNULL "dialogNew" result
    result' <- (newObject Dialog) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Dialog::add_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "an activatable widget"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "response ID for @child"
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

foreign import ccall "gtk_dialog_add_action_widget" gtk_dialog_add_action_widget :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Adds an activatable widget to the action area of a t'GI.Gtk.Objects.Dialog.Dialog',
-- connecting a signal handler that will emit the [response]("GI.Gtk.Objects.Dialog#signal:response")
-- signal on the dialog when the widget is activated. The widget is
-- appended to the end of the dialog’s action area. If you want to add a
-- non-activatable widget, simply pack it into the /@actionArea@/ field
-- of the t'GI.Gtk.Objects.Dialog.Dialog' struct.
dialogAddActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> b
    -- ^ /@child@/: an activatable widget
    -> Int32
    -- ^ /@responseId@/: response ID for /@child@/
    -> m ()
dialogAddActionWidget dialog child responseId = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    child' <- unsafeManagedPtrCastPtr child
    gtk_dialog_add_action_widget dialog' child' responseId
    touchManagedPtr dialog
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data DialogAddActionWidgetMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsDialog a, Gtk.Widget.IsWidget b) => O.MethodInfo DialogAddActionWidgetMethodInfo a signature where
    overloadedMethod = dialogAddActionWidget

#endif

-- method Dialog::add_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "button_text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "text of button" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "response ID for the button"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_add_button" gtk_dialog_add_button :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    CString ->                              -- button_text : TBasicType TUTF8
    Int32 ->                                -- response_id : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

-- | Adds a button with the given text and sets things up so that
-- clicking the button will emit the [response]("GI.Gtk.Objects.Dialog#signal:response") signal with
-- the given /@responseId@/. The button is appended to the end of the
-- dialog’s action area. The button widget is returned, but usually
-- you don’t need it.
dialogAddButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> T.Text
    -- ^ /@buttonText@/: text of button
    -> Int32
    -- ^ /@responseId@/: response ID for the button
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Button.Button' widget that was added
dialogAddButton dialog buttonText responseId = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    buttonText' <- textToCString buttonText
    result <- gtk_dialog_add_button dialog' buttonText' responseId
    checkUnexpectedReturnNULL "dialogAddButton" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr dialog
    freeMem buttonText'
    return result'

#if defined(ENABLE_OVERLOADING)
data DialogAddButtonMethodInfo
instance (signature ~ (T.Text -> Int32 -> m Gtk.Widget.Widget), MonadIO m, IsDialog a) => O.MethodInfo DialogAddButtonMethodInfo a signature where
    overloadedMethod = dialogAddButton

#endif

-- method Dialog::get_action_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_dialog_get_action_area" gtk_dialog_get_action_area :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    IO (Ptr Gtk.Widget.Widget)

{-# DEPRECATED dialogGetActionArea ["(Since version 3.12)","Direct access to the action area","  is discouraged; use 'GI.Gtk.Objects.Dialog.dialogAddButton', etc."] #-}
-- | Returns the action area of /@dialog@/.
-- 
-- /Since: 2.14/
dialogGetActionArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the action area
dialogGetActionArea dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_dialog_get_action_area dialog'
    checkUnexpectedReturnNULL "dialogGetActionArea" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data DialogGetActionAreaMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsDialog a) => O.MethodInfo DialogGetActionAreaMethodInfo a signature where
    overloadedMethod = dialogGetActionArea

#endif

-- method Dialog::get_content_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Box" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_get_content_area" gtk_dialog_get_content_area :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    IO (Ptr Gtk.Box.Box)

-- | Returns the content area of /@dialog@/.
-- 
-- /Since: 2.14/
dialogGetContentArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> m Gtk.Box.Box
    -- ^ __Returns:__ the content area t'GI.Gtk.Objects.Box.Box'.
dialogGetContentArea dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_dialog_get_content_area dialog'
    checkUnexpectedReturnNULL "dialogGetContentArea" result
    result' <- (newObject Gtk.Box.Box) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data DialogGetContentAreaMethodInfo
instance (signature ~ (m Gtk.Box.Box), MonadIO m, IsDialog a) => O.MethodInfo DialogGetContentAreaMethodInfo a signature where
    overloadedMethod = dialogGetContentArea

#endif

-- method Dialog::get_header_bar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_dialog_get_header_bar" gtk_dialog_get_header_bar :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the header bar of /@dialog@/. Note that the
-- headerbar is only used by the dialog if the
-- t'GI.Gtk.Objects.Dialog.Dialog':@/use-header-bar/@ property is 'P.True'.
-- 
-- /Since: 3.12/
dialogGetHeaderBar ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the header bar
dialogGetHeaderBar dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_dialog_get_header_bar dialog'
    checkUnexpectedReturnNULL "dialogGetHeaderBar" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr dialog
    return result'

#if defined(ENABLE_OVERLOADING)
data DialogGetHeaderBarMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsDialog a) => O.MethodInfo DialogGetHeaderBarMethodInfo a signature where
    overloadedMethod = dialogGetHeaderBar

#endif

-- method Dialog::get_response_for_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a widget in the action area of @dialog"
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_get_response_for_widget" gtk_dialog_get_response_for_widget :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Gets the response id of a widget in the action area
-- of a dialog.
-- 
-- /Since: 2.8/
dialogGetResponseForWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> b
    -- ^ /@widget@/: a widget in the action area of /@dialog@/
    -> m Int32
    -- ^ __Returns:__ the response id of /@widget@/, or 'GI.Gtk.Enums.ResponseTypeNone'
    --  if /@widget@/ doesn’t have a response id set.
dialogGetResponseForWidget dialog widget = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    widget' <- unsafeManagedPtrCastPtr widget
    result <- gtk_dialog_get_response_for_widget dialog' widget'
    touchManagedPtr dialog
    touchManagedPtr widget
    return result

#if defined(ENABLE_OVERLOADING)
data DialogGetResponseForWidgetMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsDialog a, Gtk.Widget.IsWidget b) => O.MethodInfo DialogGetResponseForWidgetMethodInfo a signature where
    overloadedMethod = dialogGetResponseForWidget

#endif

-- method Dialog::get_widget_for_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the response ID used by the @dialog widget"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Widget" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_get_widget_for_response" gtk_dialog_get_widget_for_response :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the widget button that uses the given response ID in the action area
-- of a dialog.
-- 
-- /Since: 2.20/
dialogGetWidgetForResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> Int32
    -- ^ /@responseId@/: the response ID used by the /@dialog@/ widget
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the /@widget@/ button that uses the given
    --     /@responseId@/, or 'P.Nothing'.
dialogGetWidgetForResponse dialog responseId = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_dialog_get_widget_for_response dialog' responseId
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr dialog
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data DialogGetWidgetForResponseMethodInfo
instance (signature ~ (Int32 -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsDialog a) => O.MethodInfo DialogGetWidgetForResponseMethodInfo a signature where
    overloadedMethod = dialogGetWidgetForResponse

#endif

-- method Dialog::response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "response ID" , sinceVersion = Nothing }
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

foreign import ccall "gtk_dialog_response" gtk_dialog_response :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Emits the [response]("GI.Gtk.Objects.Dialog#signal:response") signal with the given response ID.
-- Used to indicate that the user has responded to the dialog in some way;
-- typically either you or 'GI.Gtk.Objects.Dialog.dialogRun' will be monitoring the
-- [response](#signal:response) signal and take appropriate action.
dialogResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> Int32
    -- ^ /@responseId@/: response ID
    -> m ()
dialogResponse dialog responseId = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    gtk_dialog_response dialog' responseId
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data DialogResponseMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsDialog a) => O.MethodInfo DialogResponseMethodInfo a signature where
    overloadedMethod = dialogResponse

#endif

-- method Dialog::run
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
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

foreign import ccall "gtk_dialog_run" gtk_dialog_run :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    IO Int32

-- | Blocks in a recursive main loop until the /@dialog@/ either emits the
-- [response]("GI.Gtk.Objects.Dialog#signal:response") signal, or is destroyed. If the dialog is
-- destroyed during the call to 'GI.Gtk.Objects.Dialog.dialogRun', 'GI.Gtk.Objects.Dialog.dialogRun' returns
-- @/GTK_RESPONSE_NONE/@. Otherwise, it returns the response ID from the
-- [response](#signal:response) signal emission.
-- 
-- Before entering the recursive main loop, 'GI.Gtk.Objects.Dialog.dialogRun' calls
-- 'GI.Gtk.Objects.Widget.widgetShow' on the dialog for you. Note that you still
-- need to show any children of the dialog yourself.
-- 
-- During 'GI.Gtk.Objects.Dialog.dialogRun', the default behavior of [deleteEvent]("GI.Gtk.Objects.Widget#signal:deleteEvent")
-- is disabled; if the dialog receives [delete_event](#signal:delete_event), it will not be
-- destroyed as windows usually are, and 'GI.Gtk.Objects.Dialog.dialogRun' will return
-- @/GTK_RESPONSE_DELETE_EVENT/@. Also, during 'GI.Gtk.Objects.Dialog.dialogRun' the dialog
-- will be modal. You can force 'GI.Gtk.Objects.Dialog.dialogRun' to return at any time by
-- calling 'GI.Gtk.Objects.Dialog.dialogResponse' to emit the [response](#signal:response) signal. Destroying
-- the dialog during 'GI.Gtk.Objects.Dialog.dialogRun' is a very bad idea, because your
-- post-run code won’t know whether the dialog was destroyed or not.
-- 
-- After 'GI.Gtk.Objects.Dialog.dialogRun' returns, you are responsible for hiding or
-- destroying the dialog if you wish to do so.
-- 
-- Typical usage of this function might be:
-- 
-- === /C code/
-- >
-- >  GtkWidget *dialog = gtk_dialog_new ();
-- >  // Set up dialog...
-- >
-- >  int result = gtk_dialog_run (GTK_DIALOG (dialog));
-- >  switch (result)
-- >    {
-- >      case GTK_RESPONSE_ACCEPT:
-- >         // do_application_specific_something ();
-- >         break;
-- >      default:
-- >         // do_nothing_since_dialog_was_cancelled ();
-- >         break;
-- >    }
-- >  gtk_widget_destroy (dialog);
-- 
-- 
-- Note that even though the recursive main loop gives the effect of a
-- modal dialog (it prevents the user from interacting with other
-- windows in the same window group while the dialog is run), callbacks
-- such as timeouts, IO channel watches, DND drops, etc, will
-- be triggered during a 'GI.Gtk.Objects.Dialog.dialogRun' call.
dialogRun ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> m Int32
    -- ^ __Returns:__ response ID
dialogRun dialog = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    result <- gtk_dialog_run dialog'
    touchManagedPtr dialog
    return result

#if defined(ENABLE_OVERLOADING)
data DialogRunMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsDialog a) => O.MethodInfo DialogRunMethodInfo a signature where
    overloadedMethod = dialogRun

#endif

-- method Dialog::set_alternative_button_order_from_array
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_params"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the number of response ids in @new_order"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_order"
--           , argType = TCArray False (-1) 1 (TBasicType TInt)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "an array of response ids of\n    @dialog\8217s buttons"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_params"
--              , argType = TBasicType TInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "the number of response ids in @new_order"
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "gtk_dialog_set_alternative_button_order_from_array" gtk_dialog_set_alternative_button_order_from_array :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Int32 ->                                -- n_params : TBasicType TInt
    Ptr Int32 ->                            -- new_order : TCArray False (-1) 1 (TBasicType TInt)
    IO ()

{-# DEPRECATED dialogSetAlternativeButtonOrderFromArray ["(Since version 3.10)","Deprecated"] #-}
-- | Sets an alternative button order. If the
-- t'GI.Gtk.Objects.Settings.Settings':@/gtk-alternative-button-order/@ setting is set to 'P.True',
-- the dialog buttons are reordered according to the order of the
-- response ids in /@newOrder@/.
-- 
-- See @/gtk_dialog_set_alternative_button_order()/@ for more information.
-- 
-- This function is for use by language bindings.
-- 
-- /Since: 2.6/
dialogSetAlternativeButtonOrderFromArray ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> [Int32]
    -- ^ /@newOrder@/: an array of response ids of
    --     /@dialog@/’s buttons
    -> m ()
dialogSetAlternativeButtonOrderFromArray dialog newOrder = liftIO $ do
    let nParams = fromIntegral $ length newOrder
    dialog' <- unsafeManagedPtrCastPtr dialog
    newOrder' <- packStorableArray newOrder
    gtk_dialog_set_alternative_button_order_from_array dialog' nParams newOrder'
    touchManagedPtr dialog
    freeMem newOrder'
    return ()

#if defined(ENABLE_OVERLOADING)
data DialogSetAlternativeButtonOrderFromArrayMethodInfo
instance (signature ~ ([Int32] -> m ()), MonadIO m, IsDialog a) => O.MethodInfo DialogSetAlternativeButtonOrderFromArrayMethodInfo a signature where
    overloadedMethod = dialogSetAlternativeButtonOrderFromArray

#endif

-- method Dialog::set_default_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a response ID" , sinceVersion = Nothing }
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

foreign import ccall "gtk_dialog_set_default_response" gtk_dialog_set_default_response :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Sets the last widget in the dialog’s action area with the given /@responseId@/
-- as the default widget for the dialog. Pressing “Enter” normally activates
-- the default widget.
dialogSetDefaultResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> Int32
    -- ^ /@responseId@/: a response ID
    -> m ()
dialogSetDefaultResponse dialog responseId = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    gtk_dialog_set_default_response dialog' responseId
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data DialogSetDefaultResponseMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsDialog a) => O.MethodInfo DialogSetDefaultResponseMethodInfo a signature where
    overloadedMethod = dialogSetDefaultResponse

#endif

-- method Dialog::set_response_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dialog"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Dialog" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkDialog" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "response_id"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a response ID" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "%TRUE for sensitive"
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

foreign import ccall "gtk_dialog_set_response_sensitive" gtk_dialog_set_response_sensitive :: 
    Ptr Dialog ->                           -- dialog : TInterface (Name {namespace = "Gtk", name = "Dialog"})
    Int32 ->                                -- response_id : TBasicType TInt
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Calls @gtk_widget_set_sensitive (widget, \@setting)@
-- for each widget in the dialog’s action area with the given /@responseId@/.
-- A convenient way to sensitize\/desensitize dialog buttons.
dialogSetResponseSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsDialog a) =>
    a
    -- ^ /@dialog@/: a t'GI.Gtk.Objects.Dialog.Dialog'
    -> Int32
    -- ^ /@responseId@/: a response ID
    -> Bool
    -- ^ /@setting@/: 'P.True' for sensitive
    -> m ()
dialogSetResponseSensitive dialog responseId setting = liftIO $ do
    dialog' <- unsafeManagedPtrCastPtr dialog
    let setting' = (fromIntegral . fromEnum) setting
    gtk_dialog_set_response_sensitive dialog' responseId setting'
    touchManagedPtr dialog
    return ()

#if defined(ENABLE_OVERLOADING)
data DialogSetResponseSensitiveMethodInfo
instance (signature ~ (Int32 -> Bool -> m ()), MonadIO m, IsDialog a) => O.MethodInfo DialogSetResponseSensitiveMethodInfo a signature where
    overloadedMethod = dialogSetResponseSensitive

#endif

