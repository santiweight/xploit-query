{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.InfoBar.InfoBar' is a widget that can be used to show messages to
-- the user without showing a dialog. It is often temporarily shown
-- at the top or bottom of a document. In contrast to t'GI.Gtk.Objects.Dialog.Dialog', which
-- has a action area at the bottom, t'GI.Gtk.Objects.InfoBar.InfoBar' has an action area
-- at the side.
-- 
-- The API of t'GI.Gtk.Objects.InfoBar.InfoBar' is very similar to t'GI.Gtk.Objects.Dialog.Dialog', allowing you
-- to add buttons to the action area with 'GI.Gtk.Objects.InfoBar.infoBarAddButton' or
-- @/gtk_info_bar_new_with_buttons()/@. The sensitivity of action widgets
-- can be controlled with 'GI.Gtk.Objects.InfoBar.infoBarSetResponseSensitive'.
-- To add widgets to the main content area of a t'GI.Gtk.Objects.InfoBar.InfoBar', use
-- 'GI.Gtk.Objects.InfoBar.infoBarGetContentArea' and add your widgets to the container.
-- 
-- Similar to t'GI.Gtk.Objects.MessageDialog.MessageDialog', the contents of a t'GI.Gtk.Objects.InfoBar.InfoBar' can by
-- classified as error message, warning, informational message, etc,
-- by using 'GI.Gtk.Objects.InfoBar.infoBarSetMessageType'. GTK+ may use the message type
-- to determine how the message is displayed.
-- 
-- A simple example for using a t'GI.Gtk.Objects.InfoBar.InfoBar':
-- 
-- === /C code/
-- >
-- >GtkWidget *widget, *message_label, *content_area;
-- >GtkWidget *grid;
-- >GtkInfoBar *bar;
-- >
-- >// set up info bar
-- >widget = gtk_info_bar_new ();
-- >bar = GTK_INFO_BAR (widget);
-- >grid = gtk_grid_new ();
-- >
-- >gtk_widget_set_no_show_all (widget, TRUE);
-- >message_label = gtk_label_new ("");
-- >content_area = gtk_info_bar_get_content_area (bar);
-- >gtk_container_add (GTK_CONTAINER (content_area),
-- >                   message_label);
-- >gtk_info_bar_add_button (bar,
-- >                         _("_OK"),
-- >                         GTK_RESPONSE_OK);
-- >g_signal_connect (bar,
-- >                  "response",
-- >                  G_CALLBACK (gtk_widget_hide),
-- >                  NULL);
-- >gtk_grid_attach (GTK_GRID (grid),
-- >                 widget,
-- >                 0, 2, 1, 1);
-- >
-- >// ...
-- >
-- >// show an error message
-- >gtk_label_set_text (GTK_LABEL (message_label), "An error occurred!");
-- >gtk_info_bar_set_message_type (bar,
-- >                               GTK_MESSAGE_ERROR);
-- >gtk_widget_show (bar);
-- 
-- 
-- = GtkInfoBar as GtkBuildable
-- 
-- The GtkInfoBar implementation of the GtkBuildable interface exposes
-- the content area and action area as internal children with the names
-- “content_area” and “action_area”.
-- 
-- GtkInfoBar supports a custom \<action-widgets> element, which can contain
-- multiple \<action-widget> elements. The “response” attribute specifies a
-- numeric response, and the content of the element is the id of widget
-- (which should be a child of the dialogs /@actionArea@/).
-- 
-- = CSS nodes
-- 
-- GtkInfoBar has a single CSS node with name infobar. The node may get
-- one of the style classes .info, .warning, .error or .question, depending
-- on the message type.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.InfoBar
    ( 

-- * Exported types
    InfoBar(..)                             ,
    IsInfoBar                               ,
    toInfoBar                               ,
    noInfoBar                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInfoBarMethod                    ,
#endif


-- ** addActionWidget #method:addActionWidget#

#if defined(ENABLE_OVERLOADING)
    InfoBarAddActionWidgetMethodInfo        ,
#endif
    infoBarAddActionWidget                  ,


-- ** addButton #method:addButton#

#if defined(ENABLE_OVERLOADING)
    InfoBarAddButtonMethodInfo              ,
#endif
    infoBarAddButton                        ,


-- ** getActionArea #method:getActionArea#

#if defined(ENABLE_OVERLOADING)
    InfoBarGetActionAreaMethodInfo          ,
#endif
    infoBarGetActionArea                    ,


-- ** getContentArea #method:getContentArea#

#if defined(ENABLE_OVERLOADING)
    InfoBarGetContentAreaMethodInfo         ,
#endif
    infoBarGetContentArea                   ,


-- ** getMessageType #method:getMessageType#

#if defined(ENABLE_OVERLOADING)
    InfoBarGetMessageTypeMethodInfo         ,
#endif
    infoBarGetMessageType                   ,


-- ** getRevealed #method:getRevealed#

#if defined(ENABLE_OVERLOADING)
    InfoBarGetRevealedMethodInfo            ,
#endif
    infoBarGetRevealed                      ,


-- ** getShowCloseButton #method:getShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    InfoBarGetShowCloseButtonMethodInfo     ,
#endif
    infoBarGetShowCloseButton               ,


-- ** new #method:new#

    infoBarNew                              ,


-- ** response #method:response#

#if defined(ENABLE_OVERLOADING)
    InfoBarResponseMethodInfo               ,
#endif
    infoBarResponse                         ,


-- ** setDefaultResponse #method:setDefaultResponse#

#if defined(ENABLE_OVERLOADING)
    InfoBarSetDefaultResponseMethodInfo     ,
#endif
    infoBarSetDefaultResponse               ,


-- ** setMessageType #method:setMessageType#

#if defined(ENABLE_OVERLOADING)
    InfoBarSetMessageTypeMethodInfo         ,
#endif
    infoBarSetMessageType                   ,


-- ** setResponseSensitive #method:setResponseSensitive#

#if defined(ENABLE_OVERLOADING)
    InfoBarSetResponseSensitiveMethodInfo   ,
#endif
    infoBarSetResponseSensitive             ,


-- ** setRevealed #method:setRevealed#

#if defined(ENABLE_OVERLOADING)
    InfoBarSetRevealedMethodInfo            ,
#endif
    infoBarSetRevealed                      ,


-- ** setShowCloseButton #method:setShowCloseButton#

#if defined(ENABLE_OVERLOADING)
    InfoBarSetShowCloseButtonMethodInfo     ,
#endif
    infoBarSetShowCloseButton               ,




 -- * Properties
-- ** messageType #attr:messageType#
-- | The type of the message.
-- 
-- The type may be used to determine the appearance of the info bar.
-- 
-- /Since: 2.18/

#if defined(ENABLE_OVERLOADING)
    InfoBarMessageTypePropertyInfo          ,
#endif
    constructInfoBarMessageType             ,
    getInfoBarMessageType                   ,
#if defined(ENABLE_OVERLOADING)
    infoBarMessageType                      ,
#endif
    setInfoBarMessageType                   ,


-- ** revealed #attr:revealed#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    InfoBarRevealedPropertyInfo             ,
#endif
    constructInfoBarRevealed                ,
    getInfoBarRevealed                      ,
#if defined(ENABLE_OVERLOADING)
    infoBarRevealed                         ,
#endif
    setInfoBarRevealed                      ,


-- ** showCloseButton #attr:showCloseButton#
-- | Whether to include a standard close button.
-- 
-- /Since: 3.10/

#if defined(ENABLE_OVERLOADING)
    InfoBarShowCloseButtonPropertyInfo      ,
#endif
    constructInfoBarShowCloseButton         ,
    getInfoBarShowCloseButton               ,
#if defined(ENABLE_OVERLOADING)
    infoBarShowCloseButton                  ,
#endif
    setInfoBarShowCloseButton               ,




 -- * Signals
-- ** close #signal:close#

    C_InfoBarCloseCallback                  ,
    InfoBarCloseCallback                    ,
#if defined(ENABLE_OVERLOADING)
    InfoBarCloseSignalInfo                  ,
#endif
    afterInfoBarClose                       ,
    genClosure_InfoBarClose                 ,
    mk_InfoBarCloseCallback                 ,
    noInfoBarCloseCallback                  ,
    onInfoBarClose                          ,
    wrap_InfoBarCloseCallback               ,


-- ** response #signal:response#

    C_InfoBarResponseCallback               ,
    InfoBarResponseCallback                 ,
#if defined(ENABLE_OVERLOADING)
    InfoBarResponseSignalInfo               ,
#endif
    afterInfoBarResponse                    ,
    genClosure_InfoBarResponse              ,
    mk_InfoBarResponseCallback              ,
    noInfoBarResponseCallback               ,
    onInfoBarResponse                       ,
    wrap_InfoBarResponseCallback            ,




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
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Box as Gtk.Box
import {-# SOURCE #-} qualified GI.Gtk.Objects.Button as Gtk.Button
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype InfoBar = InfoBar (ManagedPtr InfoBar)
    deriving (Eq)
foreign import ccall "gtk_info_bar_get_type"
    c_gtk_info_bar_get_type :: IO GType

instance GObject InfoBar where
    gobjectType = c_gtk_info_bar_get_type
    

-- | Convert 'InfoBar' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue InfoBar where
    toGValue o = do
        gtype <- c_gtk_info_bar_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr InfoBar)
        B.ManagedPtr.newObject InfoBar ptr
        
    

-- | Type class for types which can be safely cast to `InfoBar`, for instance with `toInfoBar`.
class (GObject o, O.IsDescendantOf InfoBar o) => IsInfoBar o
instance (GObject o, O.IsDescendantOf InfoBar o) => IsInfoBar o

instance O.HasParentTypes InfoBar
type instance O.ParentTypes InfoBar = '[Gtk.Box.Box, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `InfoBar`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInfoBar :: (MonadIO m, IsInfoBar o) => o -> m InfoBar
toInfoBar = liftIO . unsafeCastTo InfoBar

-- | A convenience alias for `Nothing` :: `Maybe` `InfoBar`.
noInfoBar :: Maybe InfoBar
noInfoBar = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInfoBarMethod (t :: Symbol) (o :: *) :: * where
    ResolveInfoBarMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveInfoBarMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveInfoBarMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveInfoBarMethod "addActionWidget" o = InfoBarAddActionWidgetMethodInfo
    ResolveInfoBarMethod "addButton" o = InfoBarAddButtonMethodInfo
    ResolveInfoBarMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveInfoBarMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveInfoBarMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveInfoBarMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveInfoBarMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveInfoBarMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInfoBarMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInfoBarMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveInfoBarMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveInfoBarMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveInfoBarMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveInfoBarMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveInfoBarMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveInfoBarMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveInfoBarMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveInfoBarMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveInfoBarMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveInfoBarMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveInfoBarMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveInfoBarMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveInfoBarMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveInfoBarMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveInfoBarMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveInfoBarMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveInfoBarMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveInfoBarMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveInfoBarMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveInfoBarMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveInfoBarMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveInfoBarMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveInfoBarMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveInfoBarMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveInfoBarMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveInfoBarMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveInfoBarMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveInfoBarMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveInfoBarMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveInfoBarMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveInfoBarMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveInfoBarMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveInfoBarMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveInfoBarMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveInfoBarMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveInfoBarMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveInfoBarMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveInfoBarMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveInfoBarMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveInfoBarMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveInfoBarMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveInfoBarMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveInfoBarMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveInfoBarMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveInfoBarMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveInfoBarMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveInfoBarMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveInfoBarMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveInfoBarMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveInfoBarMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveInfoBarMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveInfoBarMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInfoBarMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveInfoBarMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveInfoBarMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInfoBarMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInfoBarMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveInfoBarMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveInfoBarMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveInfoBarMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveInfoBarMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveInfoBarMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveInfoBarMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveInfoBarMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveInfoBarMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveInfoBarMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveInfoBarMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveInfoBarMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveInfoBarMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveInfoBarMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveInfoBarMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveInfoBarMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveInfoBarMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveInfoBarMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveInfoBarMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveInfoBarMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveInfoBarMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInfoBarMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveInfoBarMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveInfoBarMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveInfoBarMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveInfoBarMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveInfoBarMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveInfoBarMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveInfoBarMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveInfoBarMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveInfoBarMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveInfoBarMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveInfoBarMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveInfoBarMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveInfoBarMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveInfoBarMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveInfoBarMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveInfoBarMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveInfoBarMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInfoBarMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInfoBarMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveInfoBarMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveInfoBarMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveInfoBarMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveInfoBarMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveInfoBarMethod "packEnd" o = Gtk.Box.BoxPackEndMethodInfo
    ResolveInfoBarMethod "packStart" o = Gtk.Box.BoxPackStartMethodInfo
    ResolveInfoBarMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveInfoBarMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveInfoBarMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveInfoBarMethod "queryChildPacking" o = Gtk.Box.BoxQueryChildPackingMethodInfo
    ResolveInfoBarMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveInfoBarMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveInfoBarMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveInfoBarMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveInfoBarMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveInfoBarMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveInfoBarMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveInfoBarMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveInfoBarMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInfoBarMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInfoBarMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveInfoBarMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveInfoBarMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveInfoBarMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveInfoBarMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveInfoBarMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveInfoBarMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveInfoBarMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveInfoBarMethod "reorderChild" o = Gtk.Box.BoxReorderChildMethodInfo
    ResolveInfoBarMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveInfoBarMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveInfoBarMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveInfoBarMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveInfoBarMethod "response" o = InfoBarResponseMethodInfo
    ResolveInfoBarMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInfoBarMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveInfoBarMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveInfoBarMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveInfoBarMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveInfoBarMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveInfoBarMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveInfoBarMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveInfoBarMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveInfoBarMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveInfoBarMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInfoBarMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInfoBarMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveInfoBarMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveInfoBarMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveInfoBarMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInfoBarMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveInfoBarMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveInfoBarMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveInfoBarMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveInfoBarMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveInfoBarMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInfoBarMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveInfoBarMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveInfoBarMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveInfoBarMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInfoBarMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveInfoBarMethod "getActionArea" o = InfoBarGetActionAreaMethodInfo
    ResolveInfoBarMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveInfoBarMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveInfoBarMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveInfoBarMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveInfoBarMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveInfoBarMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveInfoBarMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveInfoBarMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveInfoBarMethod "getBaselinePosition" o = Gtk.Box.BoxGetBaselinePositionMethodInfo
    ResolveInfoBarMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveInfoBarMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveInfoBarMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveInfoBarMethod "getCenterWidget" o = Gtk.Box.BoxGetCenterWidgetMethodInfo
    ResolveInfoBarMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveInfoBarMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveInfoBarMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveInfoBarMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveInfoBarMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveInfoBarMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveInfoBarMethod "getContentArea" o = InfoBarGetContentAreaMethodInfo
    ResolveInfoBarMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInfoBarMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveInfoBarMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveInfoBarMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveInfoBarMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveInfoBarMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveInfoBarMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveInfoBarMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveInfoBarMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveInfoBarMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveInfoBarMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveInfoBarMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveInfoBarMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveInfoBarMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveInfoBarMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveInfoBarMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveInfoBarMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveInfoBarMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveInfoBarMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveInfoBarMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveInfoBarMethod "getHomogeneous" o = Gtk.Box.BoxGetHomogeneousMethodInfo
    ResolveInfoBarMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveInfoBarMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveInfoBarMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveInfoBarMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveInfoBarMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveInfoBarMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveInfoBarMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveInfoBarMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveInfoBarMethod "getMessageType" o = InfoBarGetMessageTypeMethodInfo
    ResolveInfoBarMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveInfoBarMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveInfoBarMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveInfoBarMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveInfoBarMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveInfoBarMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolveInfoBarMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveInfoBarMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveInfoBarMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveInfoBarMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveInfoBarMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveInfoBarMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveInfoBarMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveInfoBarMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveInfoBarMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveInfoBarMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveInfoBarMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveInfoBarMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveInfoBarMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInfoBarMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInfoBarMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveInfoBarMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveInfoBarMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveInfoBarMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveInfoBarMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveInfoBarMethod "getRevealed" o = InfoBarGetRevealedMethodInfo
    ResolveInfoBarMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveInfoBarMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveInfoBarMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveInfoBarMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveInfoBarMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveInfoBarMethod "getShowCloseButton" o = InfoBarGetShowCloseButtonMethodInfo
    ResolveInfoBarMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveInfoBarMethod "getSpacing" o = Gtk.Box.BoxGetSpacingMethodInfo
    ResolveInfoBarMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveInfoBarMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveInfoBarMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveInfoBarMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveInfoBarMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveInfoBarMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveInfoBarMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveInfoBarMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveInfoBarMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveInfoBarMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveInfoBarMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveInfoBarMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveInfoBarMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveInfoBarMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveInfoBarMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveInfoBarMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveInfoBarMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveInfoBarMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveInfoBarMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveInfoBarMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveInfoBarMethod "setBaselinePosition" o = Gtk.Box.BoxSetBaselinePositionMethodInfo
    ResolveInfoBarMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveInfoBarMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveInfoBarMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveInfoBarMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveInfoBarMethod "setCenterWidget" o = Gtk.Box.BoxSetCenterWidgetMethodInfo
    ResolveInfoBarMethod "setChildPacking" o = Gtk.Box.BoxSetChildPackingMethodInfo
    ResolveInfoBarMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveInfoBarMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveInfoBarMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveInfoBarMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInfoBarMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInfoBarMethod "setDefaultResponse" o = InfoBarSetDefaultResponseMethodInfo
    ResolveInfoBarMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveInfoBarMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveInfoBarMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveInfoBarMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveInfoBarMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveInfoBarMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveInfoBarMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveInfoBarMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveInfoBarMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveInfoBarMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveInfoBarMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveInfoBarMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveInfoBarMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveInfoBarMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveInfoBarMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveInfoBarMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveInfoBarMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveInfoBarMethod "setHomogeneous" o = Gtk.Box.BoxSetHomogeneousMethodInfo
    ResolveInfoBarMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveInfoBarMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveInfoBarMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveInfoBarMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveInfoBarMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveInfoBarMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveInfoBarMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveInfoBarMethod "setMessageType" o = InfoBarSetMessageTypeMethodInfo
    ResolveInfoBarMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveInfoBarMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveInfoBarMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveInfoBarMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolveInfoBarMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveInfoBarMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveInfoBarMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInfoBarMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveInfoBarMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveInfoBarMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveInfoBarMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveInfoBarMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveInfoBarMethod "setResponseSensitive" o = InfoBarSetResponseSensitiveMethodInfo
    ResolveInfoBarMethod "setRevealed" o = InfoBarSetRevealedMethodInfo
    ResolveInfoBarMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveInfoBarMethod "setShowCloseButton" o = InfoBarSetShowCloseButtonMethodInfo
    ResolveInfoBarMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveInfoBarMethod "setSpacing" o = Gtk.Box.BoxSetSpacingMethodInfo
    ResolveInfoBarMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveInfoBarMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveInfoBarMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveInfoBarMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveInfoBarMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveInfoBarMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveInfoBarMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveInfoBarMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveInfoBarMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveInfoBarMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveInfoBarMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveInfoBarMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveInfoBarMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveInfoBarMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInfoBarMethod t InfoBar, O.MethodInfo info InfoBar p) => OL.IsLabel t (InfoBar -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal InfoBar::close
-- | The [close](#signal:close) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when the user uses a keybinding to dismiss
-- the info bar.
-- 
-- The default binding for this signal is the Escape key.
-- 
-- /Since: 2.18/
type InfoBarCloseCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `InfoBarCloseCallback`@.
noInfoBarCloseCallback :: Maybe InfoBarCloseCallback
noInfoBarCloseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_InfoBarCloseCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InfoBarCloseCallback`.
foreign import ccall "wrapper"
    mk_InfoBarCloseCallback :: C_InfoBarCloseCallback -> IO (FunPtr C_InfoBarCloseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_InfoBarClose :: MonadIO m => InfoBarCloseCallback -> m (GClosure C_InfoBarCloseCallback)
genClosure_InfoBarClose cb = liftIO $ do
    let cb' = wrap_InfoBarCloseCallback cb
    mk_InfoBarCloseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `InfoBarCloseCallback` into a `C_InfoBarCloseCallback`.
wrap_InfoBarCloseCallback ::
    InfoBarCloseCallback ->
    C_InfoBarCloseCallback
wrap_InfoBarCloseCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [close](#signal:close) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' infoBar #close callback
-- @
-- 
-- 
onInfoBarClose :: (IsInfoBar a, MonadIO m) => a -> InfoBarCloseCallback -> m SignalHandlerId
onInfoBarClose obj cb = liftIO $ do
    let cb' = wrap_InfoBarCloseCallback cb
    cb'' <- mk_InfoBarCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [close](#signal:close) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' infoBar #close callback
-- @
-- 
-- 
afterInfoBarClose :: (IsInfoBar a, MonadIO m) => a -> InfoBarCloseCallback -> m SignalHandlerId
afterInfoBarClose obj cb = liftIO $ do
    let cb' = wrap_InfoBarCloseCallback cb
    cb'' <- mk_InfoBarCloseCallback cb'
    connectSignalFunPtr obj "close" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InfoBarCloseSignalInfo
instance SignalInfo InfoBarCloseSignalInfo where
    type HaskellCallbackType InfoBarCloseSignalInfo = InfoBarCloseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InfoBarCloseCallback cb
        cb'' <- mk_InfoBarCloseCallback cb'
        connectSignalFunPtr obj "close" cb'' connectMode detail

#endif

-- signal InfoBar::response
-- | Emitted when an action widget is clicked or the application programmer
-- calls 'GI.Gtk.Objects.Dialog.dialogResponse'. The /@responseId@/ depends on which action
-- widget was clicked.
-- 
-- /Since: 2.18/
type InfoBarResponseCallback =
    Int32
    -- ^ /@responseId@/: the response ID
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `InfoBarResponseCallback`@.
noInfoBarResponseCallback :: Maybe InfoBarResponseCallback
noInfoBarResponseCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_InfoBarResponseCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_InfoBarResponseCallback`.
foreign import ccall "wrapper"
    mk_InfoBarResponseCallback :: C_InfoBarResponseCallback -> IO (FunPtr C_InfoBarResponseCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_InfoBarResponse :: MonadIO m => InfoBarResponseCallback -> m (GClosure C_InfoBarResponseCallback)
genClosure_InfoBarResponse cb = liftIO $ do
    let cb' = wrap_InfoBarResponseCallback cb
    mk_InfoBarResponseCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `InfoBarResponseCallback` into a `C_InfoBarResponseCallback`.
wrap_InfoBarResponseCallback ::
    InfoBarResponseCallback ->
    C_InfoBarResponseCallback
wrap_InfoBarResponseCallback _cb _ responseId _ = do
    _cb  responseId


-- | Connect a signal handler for the [response](#signal:response) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' infoBar #response callback
-- @
-- 
-- 
onInfoBarResponse :: (IsInfoBar a, MonadIO m) => a -> InfoBarResponseCallback -> m SignalHandlerId
onInfoBarResponse obj cb = liftIO $ do
    let cb' = wrap_InfoBarResponseCallback cb
    cb'' <- mk_InfoBarResponseCallback cb'
    connectSignalFunPtr obj "response" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [response](#signal:response) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' infoBar #response callback
-- @
-- 
-- 
afterInfoBarResponse :: (IsInfoBar a, MonadIO m) => a -> InfoBarResponseCallback -> m SignalHandlerId
afterInfoBarResponse obj cb = liftIO $ do
    let cb' = wrap_InfoBarResponseCallback cb
    cb'' <- mk_InfoBarResponseCallback cb'
    connectSignalFunPtr obj "response" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data InfoBarResponseSignalInfo
instance SignalInfo InfoBarResponseSignalInfo where
    type HaskellCallbackType InfoBarResponseSignalInfo = InfoBarResponseCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_InfoBarResponseCallback cb
        cb'' <- mk_InfoBarResponseCallback cb'
        connectSignalFunPtr obj "response" cb'' connectMode detail

#endif

-- VVV Prop "message-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "MessageType"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@message-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' infoBar #messageType
-- @
getInfoBarMessageType :: (MonadIO m, IsInfoBar o) => o -> m Gtk.Enums.MessageType
getInfoBarMessageType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "message-type"

-- | Set the value of the “@message-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' infoBar [ #messageType 'Data.GI.Base.Attributes.:=' value ]
-- @
setInfoBarMessageType :: (MonadIO m, IsInfoBar o) => o -> Gtk.Enums.MessageType -> m ()
setInfoBarMessageType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "message-type" val

-- | Construct a `GValueConstruct` with valid value for the “@message-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInfoBarMessageType :: (IsInfoBar o) => Gtk.Enums.MessageType -> IO (GValueConstruct o)
constructInfoBarMessageType val = B.Properties.constructObjectPropertyEnum "message-type" val

#if defined(ENABLE_OVERLOADING)
data InfoBarMessageTypePropertyInfo
instance AttrInfo InfoBarMessageTypePropertyInfo where
    type AttrAllowedOps InfoBarMessageTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint InfoBarMessageTypePropertyInfo = IsInfoBar
    type AttrSetTypeConstraint InfoBarMessageTypePropertyInfo = (~) Gtk.Enums.MessageType
    type AttrTransferTypeConstraint InfoBarMessageTypePropertyInfo = (~) Gtk.Enums.MessageType
    type AttrTransferType InfoBarMessageTypePropertyInfo = Gtk.Enums.MessageType
    type AttrGetType InfoBarMessageTypePropertyInfo = Gtk.Enums.MessageType
    type AttrLabel InfoBarMessageTypePropertyInfo = "message-type"
    type AttrOrigin InfoBarMessageTypePropertyInfo = InfoBar
    attrGet = getInfoBarMessageType
    attrSet = setInfoBarMessageType
    attrTransfer _ v = do
        return v
    attrConstruct = constructInfoBarMessageType
    attrClear = undefined
#endif

-- VVV Prop "revealed"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@revealed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' infoBar #revealed
-- @
getInfoBarRevealed :: (MonadIO m, IsInfoBar o) => o -> m Bool
getInfoBarRevealed obj = liftIO $ B.Properties.getObjectPropertyBool obj "revealed"

-- | Set the value of the “@revealed@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' infoBar [ #revealed 'Data.GI.Base.Attributes.:=' value ]
-- @
setInfoBarRevealed :: (MonadIO m, IsInfoBar o) => o -> Bool -> m ()
setInfoBarRevealed obj val = liftIO $ B.Properties.setObjectPropertyBool obj "revealed" val

-- | Construct a `GValueConstruct` with valid value for the “@revealed@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInfoBarRevealed :: (IsInfoBar o) => Bool -> IO (GValueConstruct o)
constructInfoBarRevealed val = B.Properties.constructObjectPropertyBool "revealed" val

#if defined(ENABLE_OVERLOADING)
data InfoBarRevealedPropertyInfo
instance AttrInfo InfoBarRevealedPropertyInfo where
    type AttrAllowedOps InfoBarRevealedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint InfoBarRevealedPropertyInfo = IsInfoBar
    type AttrSetTypeConstraint InfoBarRevealedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint InfoBarRevealedPropertyInfo = (~) Bool
    type AttrTransferType InfoBarRevealedPropertyInfo = Bool
    type AttrGetType InfoBarRevealedPropertyInfo = Bool
    type AttrLabel InfoBarRevealedPropertyInfo = "revealed"
    type AttrOrigin InfoBarRevealedPropertyInfo = InfoBar
    attrGet = getInfoBarRevealed
    attrSet = setInfoBarRevealed
    attrTransfer _ v = do
        return v
    attrConstruct = constructInfoBarRevealed
    attrClear = undefined
#endif

-- VVV Prop "show-close-button"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' infoBar #showCloseButton
-- @
getInfoBarShowCloseButton :: (MonadIO m, IsInfoBar o) => o -> m Bool
getInfoBarShowCloseButton obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-close-button"

-- | Set the value of the “@show-close-button@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' infoBar [ #showCloseButton 'Data.GI.Base.Attributes.:=' value ]
-- @
setInfoBarShowCloseButton :: (MonadIO m, IsInfoBar o) => o -> Bool -> m ()
setInfoBarShowCloseButton obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-close-button" val

-- | Construct a `GValueConstruct` with valid value for the “@show-close-button@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructInfoBarShowCloseButton :: (IsInfoBar o) => Bool -> IO (GValueConstruct o)
constructInfoBarShowCloseButton val = B.Properties.constructObjectPropertyBool "show-close-button" val

#if defined(ENABLE_OVERLOADING)
data InfoBarShowCloseButtonPropertyInfo
instance AttrInfo InfoBarShowCloseButtonPropertyInfo where
    type AttrAllowedOps InfoBarShowCloseButtonPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint InfoBarShowCloseButtonPropertyInfo = IsInfoBar
    type AttrSetTypeConstraint InfoBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint InfoBarShowCloseButtonPropertyInfo = (~) Bool
    type AttrTransferType InfoBarShowCloseButtonPropertyInfo = Bool
    type AttrGetType InfoBarShowCloseButtonPropertyInfo = Bool
    type AttrLabel InfoBarShowCloseButtonPropertyInfo = "show-close-button"
    type AttrOrigin InfoBarShowCloseButtonPropertyInfo = InfoBar
    attrGet = getInfoBarShowCloseButton
    attrSet = setInfoBarShowCloseButton
    attrTransfer _ v = do
        return v
    attrConstruct = constructInfoBarShowCloseButton
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList InfoBar
type instance O.AttributeList InfoBar = InfoBarAttributeList
type InfoBarAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("baselinePosition", Gtk.Box.BoxBaselinePositionPropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("homogeneous", Gtk.Box.BoxHomogeneousPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("messageType", InfoBarMessageTypePropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("revealed", InfoBarRevealedPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showCloseButton", InfoBarShowCloseButtonPropertyInfo), '("spacing", Gtk.Box.BoxSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
infoBarMessageType :: AttrLabelProxy "messageType"
infoBarMessageType = AttrLabelProxy

infoBarRevealed :: AttrLabelProxy "revealed"
infoBarRevealed = AttrLabelProxy

infoBarShowCloseButton :: AttrLabelProxy "showCloseButton"
infoBarShowCloseButton = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList InfoBar = InfoBarSignalList
type InfoBarSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("close", InfoBarCloseSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("response", InfoBarResponseSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method InfoBar::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "InfoBar" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_info_bar_new" gtk_info_bar_new :: 
    IO (Ptr InfoBar)

-- | Creates a new t'GI.Gtk.Objects.InfoBar.InfoBar' object.
-- 
-- /Since: 2.18/
infoBarNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m InfoBar
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.InfoBar.InfoBar' object
infoBarNew  = liftIO $ do
    result <- gtk_info_bar_new
    checkUnexpectedReturnNULL "infoBarNew" result
    result' <- (newObject InfoBar) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method InfoBar::add_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_add_action_widget" gtk_info_bar_add_action_widget :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Add an activatable widget to the action area of a t'GI.Gtk.Objects.InfoBar.InfoBar',
-- connecting a signal handler that will emit the [response]("GI.Gtk.Objects.InfoBar#signal:response")
-- signal on the message area when the widget is activated. The widget
-- is appended to the end of the message areas action area.
-- 
-- /Since: 2.18/
infoBarAddActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> b
    -- ^ /@child@/: an activatable widget
    -> Int32
    -- ^ /@responseId@/: response ID for /@child@/
    -> m ()
infoBarAddActionWidget infoBar child responseId = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    child' <- unsafeManagedPtrCastPtr child
    gtk_info_bar_add_action_widget infoBar' child' responseId
    touchManagedPtr infoBar
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarAddActionWidgetMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsInfoBar a, Gtk.Widget.IsWidget b) => O.MethodInfo InfoBarAddActionWidgetMethodInfo a signature where
    overloadedMethod = infoBarAddActionWidget

#endif

-- method InfoBar::add_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Button" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_info_bar_add_button" gtk_info_bar_add_button :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    CString ->                              -- button_text : TBasicType TUTF8
    Int32 ->                                -- response_id : TBasicType TInt
    IO (Ptr Gtk.Button.Button)

-- | Adds a button with the given text and sets things up so that
-- clicking the button will emit the “response” signal with the given
-- response_id. The button is appended to the end of the info bars\'s
-- action area. The button widget is returned, but usually you don\'t
-- need it.
-- 
-- /Since: 2.18/
infoBarAddButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> T.Text
    -- ^ /@buttonText@/: text of button
    -> Int32
    -- ^ /@responseId@/: response ID for the button
    -> m Gtk.Button.Button
    -- ^ __Returns:__ the t'GI.Gtk.Objects.Button.Button' widget
    -- that was added
infoBarAddButton infoBar buttonText responseId = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    buttonText' <- textToCString buttonText
    result <- gtk_info_bar_add_button infoBar' buttonText' responseId
    checkUnexpectedReturnNULL "infoBarAddButton" result
    result' <- (newObject Gtk.Button.Button) result
    touchManagedPtr infoBar
    freeMem buttonText'
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarAddButtonMethodInfo
instance (signature ~ (T.Text -> Int32 -> m Gtk.Button.Button), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarAddButtonMethodInfo a signature where
    overloadedMethod = infoBarAddButton

#endif

-- method InfoBar::get_action_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_get_action_area" gtk_info_bar_get_action_area :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the action area of /@infoBar@/.
-- 
-- /Since: 2.18/
infoBarGetActionArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the action area
infoBarGetActionArea infoBar = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    result <- gtk_info_bar_get_action_area infoBar'
    checkUnexpectedReturnNULL "infoBarGetActionArea" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr infoBar
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarGetActionAreaMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarGetActionAreaMethodInfo a signature where
    overloadedMethod = infoBarGetActionArea

#endif

-- method InfoBar::get_content_area
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_get_content_area" gtk_info_bar_get_content_area :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the content area of /@infoBar@/.
-- 
-- /Since: 2.18/
infoBarGetContentArea ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the content area
infoBarGetContentArea infoBar = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    result <- gtk_info_bar_get_content_area infoBar'
    checkUnexpectedReturnNULL "infoBarGetContentArea" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr infoBar
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarGetContentAreaMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarGetContentAreaMethodInfo a signature where
    overloadedMethod = infoBarGetContentArea

#endif

-- method InfoBar::get_message_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "MessageType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_info_bar_get_message_type" gtk_info_bar_get_message_type :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    IO CUInt

-- | Returns the message type of the message area.
-- 
-- /Since: 2.18/
infoBarGetMessageType ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> m Gtk.Enums.MessageType
    -- ^ __Returns:__ the message type of the message area.
infoBarGetMessageType infoBar = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    result <- gtk_info_bar_get_message_type infoBar'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr infoBar
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarGetMessageTypeMethodInfo
instance (signature ~ (m Gtk.Enums.MessageType), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarGetMessageTypeMethodInfo a signature where
    overloadedMethod = infoBarGetMessageType

#endif

-- method InfoBar::get_revealed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_get_revealed" gtk_info_bar_get_revealed :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 3.22.29/
infoBarGetRevealed ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> m Bool
    -- ^ __Returns:__ the current value of the GtkInfoBar:revealed property.
infoBarGetRevealed infoBar = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    result <- gtk_info_bar_get_revealed infoBar'
    let result' = (/= 0) result
    touchManagedPtr infoBar
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarGetRevealedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarGetRevealedMethodInfo a signature where
    overloadedMethod = infoBarGetRevealed

#endif

-- method InfoBar::get_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_get_show_close_button" gtk_info_bar_get_show_close_button :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    IO CInt

-- | Returns whether the widget will display a standard close button.
-- 
-- /Since: 3.10/
infoBarGetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the widget displays standard close button
infoBarGetShowCloseButton infoBar = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    result <- gtk_info_bar_get_show_close_button infoBar'
    let result' = (/= 0) result
    touchManagedPtr infoBar
    return result'

#if defined(ENABLE_OVERLOADING)
data InfoBarGetShowCloseButtonMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarGetShowCloseButtonMethodInfo a signature where
    overloadedMethod = infoBarGetShowCloseButton

#endif

-- method InfoBar::response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_response" gtk_info_bar_response :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Emits the “response” signal with the given /@responseId@/.
-- 
-- /Since: 2.18/
infoBarResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Int32
    -- ^ /@responseId@/: a response ID
    -> m ()
infoBarResponse infoBar responseId = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    gtk_info_bar_response infoBar' responseId
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarResponseMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarResponseMethodInfo a signature where
    overloadedMethod = infoBarResponse

#endif

-- method InfoBar::set_default_response
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_set_default_response" gtk_info_bar_set_default_response :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    Int32 ->                                -- response_id : TBasicType TInt
    IO ()

-- | Sets the last widget in the info bar’s action area with
-- the given response_id as the default widget for the dialog.
-- Pressing “Enter” normally activates the default widget.
-- 
-- Note that this function currently requires /@infoBar@/ to
-- be added to a widget hierarchy.
-- 
-- /Since: 2.18/
infoBarSetDefaultResponse ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Int32
    -- ^ /@responseId@/: a response ID
    -> m ()
infoBarSetDefaultResponse infoBar responseId = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    gtk_info_bar_set_default_response infoBar' responseId
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarSetDefaultResponseMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarSetDefaultResponseMethodInfo a signature where
    overloadedMethod = infoBarSetDefaultResponse

#endif

-- method InfoBar::set_message_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "message_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "MessageType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkMessageType" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_set_message_type" gtk_info_bar_set_message_type :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    CUInt ->                                -- message_type : TInterface (Name {namespace = "Gtk", name = "MessageType"})
    IO ()

-- | Sets the message type of the message area.
-- 
-- GTK+ uses this type to determine how the message is displayed.
-- 
-- /Since: 2.18/
infoBarSetMessageType ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Gtk.Enums.MessageType
    -- ^ /@messageType@/: a t'GI.Gtk.Enums.MessageType'
    -> m ()
infoBarSetMessageType infoBar messageType = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    let messageType' = (fromIntegral . fromEnum) messageType
    gtk_info_bar_set_message_type infoBar' messageType'
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarSetMessageTypeMethodInfo
instance (signature ~ (Gtk.Enums.MessageType -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarSetMessageTypeMethodInfo a signature where
    overloadedMethod = infoBarSetMessageType

#endif

-- method InfoBar::set_response_sensitive
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "TRUE for sensitive" , sinceVersion = Nothing }
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

foreign import ccall "gtk_info_bar_set_response_sensitive" gtk_info_bar_set_response_sensitive :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    Int32 ->                                -- response_id : TBasicType TInt
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | Calls gtk_widget_set_sensitive (widget, setting) for each
-- widget in the info bars’s action area with the given response_id.
-- A convenient way to sensitize\/desensitize dialog buttons.
-- 
-- /Since: 2.18/
infoBarSetResponseSensitive ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Int32
    -- ^ /@responseId@/: a response ID
    -> Bool
    -- ^ /@setting@/: TRUE for sensitive
    -> m ()
infoBarSetResponseSensitive infoBar responseId setting = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    let setting' = (fromIntegral . fromEnum) setting
    gtk_info_bar_set_response_sensitive infoBar' responseId setting'
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarSetResponseSensitiveMethodInfo
instance (signature ~ (Int32 -> Bool -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarSetResponseSensitiveMethodInfo a signature where
    overloadedMethod = infoBarSetResponseSensitive

#endif

-- method InfoBar::set_revealed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "revealed"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new value of the property"
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

foreign import ccall "gtk_info_bar_set_revealed" gtk_info_bar_set_revealed :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    CInt ->                                 -- revealed : TBasicType TBoolean
    IO ()

-- | Sets the GtkInfoBar:revealed property to /@revealed@/. This will cause
-- /@infoBar@/ to show up with a slide-in transition.
-- 
-- Note that this property does not automatically show /@infoBar@/ and thus won’t
-- have any effect if it is invisible.
-- 
-- /Since: 3.22.29/
infoBarSetRevealed ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Bool
    -- ^ /@revealed@/: The new value of the property
    -> m ()
infoBarSetRevealed infoBar revealed = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    let revealed' = (fromIntegral . fromEnum) revealed
    gtk_info_bar_set_revealed infoBar' revealed'
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarSetRevealedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarSetRevealedMethodInfo a signature where
    overloadedMethod = infoBarSetRevealed

#endif

-- method InfoBar::set_show_close_button
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "info_bar"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "InfoBar" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkInfoBar" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "%TRUE to include a close button"
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

foreign import ccall "gtk_info_bar_set_show_close_button" gtk_info_bar_set_show_close_button :: 
    Ptr InfoBar ->                          -- info_bar : TInterface (Name {namespace = "Gtk", name = "InfoBar"})
    CInt ->                                 -- setting : TBasicType TBoolean
    IO ()

-- | If true, a standard close button is shown. When clicked it emits
-- the response 'GI.Gtk.Enums.ResponseTypeClose'.
-- 
-- /Since: 3.10/
infoBarSetShowCloseButton ::
    (B.CallStack.HasCallStack, MonadIO m, IsInfoBar a) =>
    a
    -- ^ /@infoBar@/: a t'GI.Gtk.Objects.InfoBar.InfoBar'
    -> Bool
    -- ^ /@setting@/: 'P.True' to include a close button
    -> m ()
infoBarSetShowCloseButton infoBar setting = liftIO $ do
    infoBar' <- unsafeManagedPtrCastPtr infoBar
    let setting' = (fromIntegral . fromEnum) setting
    gtk_info_bar_set_show_close_button infoBar' setting'
    touchManagedPtr infoBar
    return ()

#if defined(ENABLE_OVERLOADING)
data InfoBarSetShowCloseButtonMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsInfoBar a) => O.MethodInfo InfoBarSetShowCloseButtonMethodInfo a signature where
    overloadedMethod = infoBarSetShowCloseButton

#endif

