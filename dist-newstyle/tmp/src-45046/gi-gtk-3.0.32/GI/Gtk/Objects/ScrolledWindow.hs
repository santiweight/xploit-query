{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkScrolledWindow is a container that accepts a single child widget, makes
-- that child scrollable using either internally added scrollbars or externally
-- associated adjustments, and optionally draws a frame around the child.
-- 
-- Widgets with native scrolling support, i.e. those whose classes implement the
-- t'GI.Gtk.Interfaces.Scrollable.Scrollable' interface, are added directly. For other types of widget, the
-- class t'GI.Gtk.Objects.Viewport.Viewport' acts as an adaptor, giving scrollability to other widgets.
-- GtkScrolledWindow’s implementation of 'GI.Gtk.Objects.Container.containerAdd' intelligently
-- accounts for whether or not the added child is a t'GI.Gtk.Interfaces.Scrollable.Scrollable'. If it isn’t,
-- t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow' wraps the child in a t'GI.Gtk.Objects.Viewport.Viewport' and adds that for you.
-- Therefore, you can just add any child widget and not worry about the details.
-- 
-- If 'GI.Gtk.Objects.Container.containerAdd' has added a t'GI.Gtk.Objects.Viewport.Viewport' for you, you can remove
-- both your added child widget from the t'GI.Gtk.Objects.Viewport.Viewport', and the t'GI.Gtk.Objects.Viewport.Viewport'
-- from the GtkScrolledWindow, like this:
-- 
-- 
-- === /C code/
-- >
-- >GtkWidget *scrolled_window = gtk_scrolled_window_new (NULL, NULL);
-- >GtkWidget *child_widget = gtk_button_new ();
-- >
-- >// GtkButton is not a GtkScrollable, so GtkScrolledWindow will automatically
-- >// add a GtkViewport.
-- >gtk_container_add (GTK_CONTAINER (scrolled_window),
-- >                   child_widget);
-- >
-- >// Either of these will result in child_widget being unparented:
-- >gtk_container_remove (GTK_CONTAINER (scrolled_window),
-- >                      child_widget);
-- >// or
-- >gtk_container_remove (GTK_CONTAINER (scrolled_window),
-- >                      gtk_bin_get_child (GTK_BIN (scrolled_window)));
-- 
-- 
-- Unless t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/policy/@ is GTK_POLICY_NEVER or GTK_POLICY_EXTERNAL,
-- GtkScrolledWindow adds internal t'GI.Gtk.Objects.Scrollbar.Scrollbar' widgets around its child. The
-- scroll position of the child, and if applicable the scrollbars, is controlled
-- by the t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/hadjustment/@ and t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/vadjustment/@
-- that are associated with the GtkScrolledWindow. See the docs on t'GI.Gtk.Objects.Scrollbar.Scrollbar'
-- for the details, but note that the “step_increment” and “page_increment”
-- fields are only effective if the policy causes scrollbars to be present.
-- 
-- If a GtkScrolledWindow doesn’t behave quite as you would like, or
-- doesn’t have exactly the right layout, it’s very possible to set up
-- your own scrolling with t'GI.Gtk.Objects.Scrollbar.Scrollbar' and for example a t'GI.Gtk.Objects.Grid.Grid'.
-- 
-- = Touch support
-- 
-- GtkScrolledWindow has built-in support for touch devices. When a
-- touchscreen is used, swiping will move the scrolled window, and will
-- expose \'kinetic\' behavior. This can be turned off with the
-- t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/kinetic-scrolling/@ property if it is undesired.
-- 
-- GtkScrolledWindow also displays visual \'overshoot\' indication when
-- the content is pulled beyond the end, and this situation can be
-- captured with the [edgeOvershot]("GI.Gtk.Objects.ScrolledWindow#signal:edgeOvershot") signal.
-- 
-- If no mouse device is present, the scrollbars will overlayed as
-- narrow, auto-hiding indicators over the content. If traditional
-- scrollbars are desired although no mouse is present, this behaviour
-- can be turned off with the t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/overlay-scrolling/@
-- property.
-- 
-- = CSS nodes
-- 
-- GtkScrolledWindow has a main CSS node with name scrolledwindow.
-- 
-- It uses subnodes with names overshoot and undershoot to
-- draw the overflow and underflow indications. These nodes get
-- the .left, .right, .top or .bottom style class added depending
-- on where the indication is drawn.
-- 
-- GtkScrolledWindow also sets the positional style classes (.left,
-- .right, .top, .bottom) and style classes related to overlay
-- scrolling (.overlay-indicator, .dragging, .hovering) on its scrollbars.
-- 
-- If both scrollbars are visible, the area where they meet is drawn
-- with a subnode named junction.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.ScrolledWindow
    ( 

-- * Exported types
    ScrolledWindow(..)                      ,
    IsScrolledWindow                        ,
    toScrolledWindow                        ,
    noScrolledWindow                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveScrolledWindowMethod             ,
#endif


-- ** addWithViewport #method:addWithViewport#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowAddWithViewportMethodInfo ,
#endif
    scrolledWindowAddWithViewport           ,


-- ** getCaptureButtonPress #method:getCaptureButtonPress#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetCaptureButtonPressMethodInfo,
#endif
    scrolledWindowGetCaptureButtonPress     ,


-- ** getHadjustment #method:getHadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetHadjustmentMethodInfo  ,
#endif
    scrolledWindowGetHadjustment            ,


-- ** getHscrollbar #method:getHscrollbar#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetHscrollbarMethodInfo   ,
#endif
    scrolledWindowGetHscrollbar             ,


-- ** getKineticScrolling #method:getKineticScrolling#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetKineticScrollingMethodInfo,
#endif
    scrolledWindowGetKineticScrolling       ,


-- ** getMaxContentHeight #method:getMaxContentHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetMaxContentHeightMethodInfo,
#endif
    scrolledWindowGetMaxContentHeight       ,


-- ** getMaxContentWidth #method:getMaxContentWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetMaxContentWidthMethodInfo,
#endif
    scrolledWindowGetMaxContentWidth        ,


-- ** getMinContentHeight #method:getMinContentHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetMinContentHeightMethodInfo,
#endif
    scrolledWindowGetMinContentHeight       ,


-- ** getMinContentWidth #method:getMinContentWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetMinContentWidthMethodInfo,
#endif
    scrolledWindowGetMinContentWidth        ,


-- ** getOverlayScrolling #method:getOverlayScrolling#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetOverlayScrollingMethodInfo,
#endif
    scrolledWindowGetOverlayScrolling       ,


-- ** getPlacement #method:getPlacement#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetPlacementMethodInfo    ,
#endif
    scrolledWindowGetPlacement              ,


-- ** getPolicy #method:getPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetPolicyMethodInfo       ,
#endif
    scrolledWindowGetPolicy                 ,


-- ** getPropagateNaturalHeight #method:getPropagateNaturalHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetPropagateNaturalHeightMethodInfo,
#endif
    scrolledWindowGetPropagateNaturalHeight ,


-- ** getPropagateNaturalWidth #method:getPropagateNaturalWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetPropagateNaturalWidthMethodInfo,
#endif
    scrolledWindowGetPropagateNaturalWidth  ,


-- ** getShadowType #method:getShadowType#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetShadowTypeMethodInfo   ,
#endif
    scrolledWindowGetShadowType             ,


-- ** getVadjustment #method:getVadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetVadjustmentMethodInfo  ,
#endif
    scrolledWindowGetVadjustment            ,


-- ** getVscrollbar #method:getVscrollbar#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowGetVscrollbarMethodInfo   ,
#endif
    scrolledWindowGetVscrollbar             ,


-- ** new #method:new#

    scrolledWindowNew                       ,


-- ** setCaptureButtonPress #method:setCaptureButtonPress#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetCaptureButtonPressMethodInfo,
#endif
    scrolledWindowSetCaptureButtonPress     ,


-- ** setHadjustment #method:setHadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetHadjustmentMethodInfo  ,
#endif
    scrolledWindowSetHadjustment            ,


-- ** setKineticScrolling #method:setKineticScrolling#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetKineticScrollingMethodInfo,
#endif
    scrolledWindowSetKineticScrolling       ,


-- ** setMaxContentHeight #method:setMaxContentHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetMaxContentHeightMethodInfo,
#endif
    scrolledWindowSetMaxContentHeight       ,


-- ** setMaxContentWidth #method:setMaxContentWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetMaxContentWidthMethodInfo,
#endif
    scrolledWindowSetMaxContentWidth        ,


-- ** setMinContentHeight #method:setMinContentHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetMinContentHeightMethodInfo,
#endif
    scrolledWindowSetMinContentHeight       ,


-- ** setMinContentWidth #method:setMinContentWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetMinContentWidthMethodInfo,
#endif
    scrolledWindowSetMinContentWidth        ,


-- ** setOverlayScrolling #method:setOverlayScrolling#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetOverlayScrollingMethodInfo,
#endif
    scrolledWindowSetOverlayScrolling       ,


-- ** setPlacement #method:setPlacement#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetPlacementMethodInfo    ,
#endif
    scrolledWindowSetPlacement              ,


-- ** setPolicy #method:setPolicy#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetPolicyMethodInfo       ,
#endif
    scrolledWindowSetPolicy                 ,


-- ** setPropagateNaturalHeight #method:setPropagateNaturalHeight#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetPropagateNaturalHeightMethodInfo,
#endif
    scrolledWindowSetPropagateNaturalHeight ,


-- ** setPropagateNaturalWidth #method:setPropagateNaturalWidth#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetPropagateNaturalWidthMethodInfo,
#endif
    scrolledWindowSetPropagateNaturalWidth  ,


-- ** setShadowType #method:setShadowType#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetShadowTypeMethodInfo   ,
#endif
    scrolledWindowSetShadowType             ,


-- ** setVadjustment #method:setVadjustment#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowSetVadjustmentMethodInfo  ,
#endif
    scrolledWindowSetVadjustment            ,


-- ** unsetPlacement #method:unsetPlacement#

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowUnsetPlacementMethodInfo  ,
#endif
    scrolledWindowUnsetPlacement            ,




 -- * Properties
-- ** hadjustment #attr:hadjustment#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowHadjustmentPropertyInfo   ,
#endif
    clearScrolledWindowHadjustment          ,
    constructScrolledWindowHadjustment      ,
    getScrolledWindowHadjustment            ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowHadjustment               ,
#endif
    setScrolledWindowHadjustment            ,


-- ** hscrollbarPolicy #attr:hscrollbarPolicy#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowHscrollbarPolicyPropertyInfo,
#endif
    constructScrolledWindowHscrollbarPolicy ,
    getScrolledWindowHscrollbarPolicy       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowHscrollbarPolicy          ,
#endif
    setScrolledWindowHscrollbarPolicy       ,


-- ** kineticScrolling #attr:kineticScrolling#
-- | Whether kinetic scrolling is enabled or not. Kinetic scrolling
-- only applies to devices with source 'GI.Gdk.Enums.InputSourceTouchscreen'.
-- 
-- /Since: 3.4/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowKineticScrollingPropertyInfo,
#endif
    constructScrolledWindowKineticScrolling ,
    getScrolledWindowKineticScrolling       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowKineticScrolling          ,
#endif
    setScrolledWindowKineticScrolling       ,


-- ** maxContentHeight #attr:maxContentHeight#
-- | The maximum content height of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowMaxContentHeightPropertyInfo,
#endif
    constructScrolledWindowMaxContentHeight ,
    getScrolledWindowMaxContentHeight       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowMaxContentHeight          ,
#endif
    setScrolledWindowMaxContentHeight       ,


-- ** maxContentWidth #attr:maxContentWidth#
-- | The maximum content width of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowMaxContentWidthPropertyInfo,
#endif
    constructScrolledWindowMaxContentWidth  ,
    getScrolledWindowMaxContentWidth        ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowMaxContentWidth           ,
#endif
    setScrolledWindowMaxContentWidth        ,


-- ** minContentHeight #attr:minContentHeight#
-- | The minimum content height of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowMinContentHeightPropertyInfo,
#endif
    constructScrolledWindowMinContentHeight ,
    getScrolledWindowMinContentHeight       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowMinContentHeight          ,
#endif
    setScrolledWindowMinContentHeight       ,


-- ** minContentWidth #attr:minContentWidth#
-- | The minimum content width of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.0/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowMinContentWidthPropertyInfo,
#endif
    constructScrolledWindowMinContentWidth  ,
    getScrolledWindowMinContentWidth        ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowMinContentWidth           ,
#endif
    setScrolledWindowMinContentWidth        ,


-- ** overlayScrolling #attr:overlayScrolling#
-- | Whether overlay scrolling is enabled or not. If it is, the
-- scrollbars are only added as traditional widgets when a mouse
-- is present. Otherwise, they are overlayed on top of the content,
-- as narrow indicators.
-- 
-- Note that overlay scrolling can also be globally disabled, with
-- the t'GI.Gtk.Objects.Settings.Settings'::@/gtk-overlay-scrolling/@ setting.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowOverlayScrollingPropertyInfo,
#endif
    constructScrolledWindowOverlayScrolling ,
    getScrolledWindowOverlayScrolling       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowOverlayScrolling          ,
#endif
    setScrolledWindowOverlayScrolling       ,


-- ** propagateNaturalHeight #attr:propagateNaturalHeight#
-- | Whether the natural height of the child should be calculated and propagated
-- through the scrolled window’s requested natural height.
-- 
-- This is useful in cases where an attempt should be made to allocate exactly
-- enough space for the natural size of the child.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowPropagateNaturalHeightPropertyInfo,
#endif
    constructScrolledWindowPropagateNaturalHeight,
    getScrolledWindowPropagateNaturalHeight ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowPropagateNaturalHeight    ,
#endif
    setScrolledWindowPropagateNaturalHeight ,


-- ** propagateNaturalWidth #attr:propagateNaturalWidth#
-- | Whether the natural width of the child should be calculated and propagated
-- through the scrolled window’s requested natural width.
-- 
-- This is useful in cases where an attempt should be made to allocate exactly
-- enough space for the natural size of the child.
-- 
-- /Since: 3.22/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowPropagateNaturalWidthPropertyInfo,
#endif
    constructScrolledWindowPropagateNaturalWidth,
    getScrolledWindowPropagateNaturalWidth  ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowPropagateNaturalWidth     ,
#endif
    setScrolledWindowPropagateNaturalWidth  ,


-- ** shadowType #attr:shadowType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowShadowTypePropertyInfo    ,
#endif
    constructScrolledWindowShadowType       ,
    getScrolledWindowShadowType             ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowShadowType                ,
#endif
    setScrolledWindowShadowType             ,


-- ** vadjustment #attr:vadjustment#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowVadjustmentPropertyInfo   ,
#endif
    clearScrolledWindowVadjustment          ,
    constructScrolledWindowVadjustment      ,
    getScrolledWindowVadjustment            ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowVadjustment               ,
#endif
    setScrolledWindowVadjustment            ,


-- ** vscrollbarPolicy #attr:vscrollbarPolicy#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowVscrollbarPolicyPropertyInfo,
#endif
    constructScrolledWindowVscrollbarPolicy ,
    getScrolledWindowVscrollbarPolicy       ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowVscrollbarPolicy          ,
#endif
    setScrolledWindowVscrollbarPolicy       ,


-- ** windowPlacement #attr:windowPlacement#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowWindowPlacementPropertyInfo,
#endif
    constructScrolledWindowWindowPlacement  ,
    getScrolledWindowWindowPlacement        ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowWindowPlacement           ,
#endif
    setScrolledWindowWindowPlacement        ,


-- ** windowPlacementSet #attr:windowPlacementSet#
-- | Whether \"window-placement\" should be used to determine the location
-- of the contents with respect to the scrollbars.
-- 
-- /Since: 2.10/

#if defined(ENABLE_OVERLOADING)
    ScrolledWindowWindowPlacementSetPropertyInfo,
#endif
    constructScrolledWindowWindowPlacementSet,
    getScrolledWindowWindowPlacementSet     ,
#if defined(ENABLE_OVERLOADING)
    scrolledWindowWindowPlacementSet        ,
#endif
    setScrolledWindowWindowPlacementSet     ,




 -- * Signals
-- ** edgeOvershot #signal:edgeOvershot#

    C_ScrolledWindowEdgeOvershotCallback    ,
    ScrolledWindowEdgeOvershotCallback      ,
#if defined(ENABLE_OVERLOADING)
    ScrolledWindowEdgeOvershotSignalInfo    ,
#endif
    afterScrolledWindowEdgeOvershot         ,
    genClosure_ScrolledWindowEdgeOvershot   ,
    mk_ScrolledWindowEdgeOvershotCallback   ,
    noScrolledWindowEdgeOvershotCallback    ,
    onScrolledWindowEdgeOvershot            ,
    wrap_ScrolledWindowEdgeOvershotCallback ,


-- ** edgeReached #signal:edgeReached#

    C_ScrolledWindowEdgeReachedCallback     ,
    ScrolledWindowEdgeReachedCallback       ,
#if defined(ENABLE_OVERLOADING)
    ScrolledWindowEdgeReachedSignalInfo     ,
#endif
    afterScrolledWindowEdgeReached          ,
    genClosure_ScrolledWindowEdgeReached    ,
    mk_ScrolledWindowEdgeReachedCallback    ,
    noScrolledWindowEdgeReachedCallback     ,
    onScrolledWindowEdgeReached             ,
    wrap_ScrolledWindowEdgeReachedCallback  ,


-- ** moveFocusOut #signal:moveFocusOut#

    C_ScrolledWindowMoveFocusOutCallback    ,
    ScrolledWindowMoveFocusOutCallback      ,
#if defined(ENABLE_OVERLOADING)
    ScrolledWindowMoveFocusOutSignalInfo    ,
#endif
    afterScrolledWindowMoveFocusOut         ,
    genClosure_ScrolledWindowMoveFocusOut   ,
    mk_ScrolledWindowMoveFocusOutCallback   ,
    noScrolledWindowMoveFocusOutCallback    ,
    onScrolledWindowMoveFocusOut            ,
    wrap_ScrolledWindowMoveFocusOutCallback ,


-- ** scrollChild #signal:scrollChild#

    C_ScrolledWindowScrollChildCallback     ,
    ScrolledWindowScrollChildCallback       ,
#if defined(ENABLE_OVERLOADING)
    ScrolledWindowScrollChildSignalInfo     ,
#endif
    afterScrolledWindowScrollChild          ,
    genClosure_ScrolledWindowScrollChild    ,
    mk_ScrolledWindowScrollChildCallback    ,
    noScrolledWindowScrollChildCallback     ,
    onScrolledWindowScrollChild             ,
    wrap_ScrolledWindowScrollChildCallback  ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype ScrolledWindow = ScrolledWindow (ManagedPtr ScrolledWindow)
    deriving (Eq)
foreign import ccall "gtk_scrolled_window_get_type"
    c_gtk_scrolled_window_get_type :: IO GType

instance GObject ScrolledWindow where
    gobjectType = c_gtk_scrolled_window_get_type
    

-- | Convert 'ScrolledWindow' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ScrolledWindow where
    toGValue o = do
        gtype <- c_gtk_scrolled_window_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ScrolledWindow)
        B.ManagedPtr.newObject ScrolledWindow ptr
        
    

-- | Type class for types which can be safely cast to `ScrolledWindow`, for instance with `toScrolledWindow`.
class (GObject o, O.IsDescendantOf ScrolledWindow o) => IsScrolledWindow o
instance (GObject o, O.IsDescendantOf ScrolledWindow o) => IsScrolledWindow o

instance O.HasParentTypes ScrolledWindow
type instance O.ParentTypes ScrolledWindow = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `ScrolledWindow`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toScrolledWindow :: (MonadIO m, IsScrolledWindow o) => o -> m ScrolledWindow
toScrolledWindow = liftIO . unsafeCastTo ScrolledWindow

-- | A convenience alias for `Nothing` :: `Maybe` `ScrolledWindow`.
noScrolledWindow :: Maybe ScrolledWindow
noScrolledWindow = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveScrolledWindowMethod (t :: Symbol) (o :: *) :: * where
    ResolveScrolledWindowMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveScrolledWindowMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveScrolledWindowMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveScrolledWindowMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveScrolledWindowMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveScrolledWindowMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveScrolledWindowMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveScrolledWindowMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveScrolledWindowMethod "addWithViewport" o = ScrolledWindowAddWithViewportMethodInfo
    ResolveScrolledWindowMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveScrolledWindowMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveScrolledWindowMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveScrolledWindowMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveScrolledWindowMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveScrolledWindowMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveScrolledWindowMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveScrolledWindowMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveScrolledWindowMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveScrolledWindowMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveScrolledWindowMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveScrolledWindowMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveScrolledWindowMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveScrolledWindowMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveScrolledWindowMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveScrolledWindowMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveScrolledWindowMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveScrolledWindowMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveScrolledWindowMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveScrolledWindowMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveScrolledWindowMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveScrolledWindowMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveScrolledWindowMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveScrolledWindowMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveScrolledWindowMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveScrolledWindowMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveScrolledWindowMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveScrolledWindowMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveScrolledWindowMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveScrolledWindowMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveScrolledWindowMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveScrolledWindowMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveScrolledWindowMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveScrolledWindowMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveScrolledWindowMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveScrolledWindowMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveScrolledWindowMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveScrolledWindowMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveScrolledWindowMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveScrolledWindowMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveScrolledWindowMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveScrolledWindowMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveScrolledWindowMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveScrolledWindowMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveScrolledWindowMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveScrolledWindowMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveScrolledWindowMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveScrolledWindowMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveScrolledWindowMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveScrolledWindowMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveScrolledWindowMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveScrolledWindowMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveScrolledWindowMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveScrolledWindowMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveScrolledWindowMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveScrolledWindowMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveScrolledWindowMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveScrolledWindowMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveScrolledWindowMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveScrolledWindowMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveScrolledWindowMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveScrolledWindowMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveScrolledWindowMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveScrolledWindowMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveScrolledWindowMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveScrolledWindowMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveScrolledWindowMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveScrolledWindowMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveScrolledWindowMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveScrolledWindowMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveScrolledWindowMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveScrolledWindowMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveScrolledWindowMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveScrolledWindowMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveScrolledWindowMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveScrolledWindowMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveScrolledWindowMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveScrolledWindowMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveScrolledWindowMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveScrolledWindowMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveScrolledWindowMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveScrolledWindowMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveScrolledWindowMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveScrolledWindowMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveScrolledWindowMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveScrolledWindowMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveScrolledWindowMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveScrolledWindowMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveScrolledWindowMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveScrolledWindowMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveScrolledWindowMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveScrolledWindowMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveScrolledWindowMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveScrolledWindowMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveScrolledWindowMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveScrolledWindowMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveScrolledWindowMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveScrolledWindowMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveScrolledWindowMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveScrolledWindowMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveScrolledWindowMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveScrolledWindowMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveScrolledWindowMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveScrolledWindowMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveScrolledWindowMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveScrolledWindowMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveScrolledWindowMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveScrolledWindowMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveScrolledWindowMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveScrolledWindowMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveScrolledWindowMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveScrolledWindowMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveScrolledWindowMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveScrolledWindowMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveScrolledWindowMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveScrolledWindowMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveScrolledWindowMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveScrolledWindowMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveScrolledWindowMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveScrolledWindowMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveScrolledWindowMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveScrolledWindowMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveScrolledWindowMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveScrolledWindowMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveScrolledWindowMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveScrolledWindowMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveScrolledWindowMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveScrolledWindowMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveScrolledWindowMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveScrolledWindowMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveScrolledWindowMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveScrolledWindowMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveScrolledWindowMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveScrolledWindowMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveScrolledWindowMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveScrolledWindowMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveScrolledWindowMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveScrolledWindowMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveScrolledWindowMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveScrolledWindowMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveScrolledWindowMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveScrolledWindowMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveScrolledWindowMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveScrolledWindowMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveScrolledWindowMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveScrolledWindowMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveScrolledWindowMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveScrolledWindowMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveScrolledWindowMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveScrolledWindowMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveScrolledWindowMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveScrolledWindowMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveScrolledWindowMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveScrolledWindowMethod "unsetPlacement" o = ScrolledWindowUnsetPlacementMethodInfo
    ResolveScrolledWindowMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveScrolledWindowMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveScrolledWindowMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveScrolledWindowMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveScrolledWindowMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveScrolledWindowMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveScrolledWindowMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveScrolledWindowMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveScrolledWindowMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveScrolledWindowMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveScrolledWindowMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveScrolledWindowMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveScrolledWindowMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveScrolledWindowMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveScrolledWindowMethod "getCaptureButtonPress" o = ScrolledWindowGetCaptureButtonPressMethodInfo
    ResolveScrolledWindowMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveScrolledWindowMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveScrolledWindowMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveScrolledWindowMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveScrolledWindowMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveScrolledWindowMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveScrolledWindowMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveScrolledWindowMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveScrolledWindowMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveScrolledWindowMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveScrolledWindowMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveScrolledWindowMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveScrolledWindowMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveScrolledWindowMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveScrolledWindowMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveScrolledWindowMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveScrolledWindowMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveScrolledWindowMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveScrolledWindowMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveScrolledWindowMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveScrolledWindowMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveScrolledWindowMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveScrolledWindowMethod "getHadjustment" o = ScrolledWindowGetHadjustmentMethodInfo
    ResolveScrolledWindowMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveScrolledWindowMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveScrolledWindowMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveScrolledWindowMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveScrolledWindowMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveScrolledWindowMethod "getHscrollbar" o = ScrolledWindowGetHscrollbarMethodInfo
    ResolveScrolledWindowMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveScrolledWindowMethod "getKineticScrolling" o = ScrolledWindowGetKineticScrollingMethodInfo
    ResolveScrolledWindowMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveScrolledWindowMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveScrolledWindowMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveScrolledWindowMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveScrolledWindowMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveScrolledWindowMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveScrolledWindowMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveScrolledWindowMethod "getMaxContentHeight" o = ScrolledWindowGetMaxContentHeightMethodInfo
    ResolveScrolledWindowMethod "getMaxContentWidth" o = ScrolledWindowGetMaxContentWidthMethodInfo
    ResolveScrolledWindowMethod "getMinContentHeight" o = ScrolledWindowGetMinContentHeightMethodInfo
    ResolveScrolledWindowMethod "getMinContentWidth" o = ScrolledWindowGetMinContentWidthMethodInfo
    ResolveScrolledWindowMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveScrolledWindowMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveScrolledWindowMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveScrolledWindowMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveScrolledWindowMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveScrolledWindowMethod "getOverlayScrolling" o = ScrolledWindowGetOverlayScrollingMethodInfo
    ResolveScrolledWindowMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveScrolledWindowMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveScrolledWindowMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveScrolledWindowMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveScrolledWindowMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveScrolledWindowMethod "getPlacement" o = ScrolledWindowGetPlacementMethodInfo
    ResolveScrolledWindowMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveScrolledWindowMethod "getPolicy" o = ScrolledWindowGetPolicyMethodInfo
    ResolveScrolledWindowMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveScrolledWindowMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveScrolledWindowMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveScrolledWindowMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveScrolledWindowMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveScrolledWindowMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveScrolledWindowMethod "getPropagateNaturalHeight" o = ScrolledWindowGetPropagateNaturalHeightMethodInfo
    ResolveScrolledWindowMethod "getPropagateNaturalWidth" o = ScrolledWindowGetPropagateNaturalWidthMethodInfo
    ResolveScrolledWindowMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveScrolledWindowMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveScrolledWindowMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveScrolledWindowMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveScrolledWindowMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveScrolledWindowMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveScrolledWindowMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveScrolledWindowMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveScrolledWindowMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveScrolledWindowMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveScrolledWindowMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveScrolledWindowMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveScrolledWindowMethod "getShadowType" o = ScrolledWindowGetShadowTypeMethodInfo
    ResolveScrolledWindowMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveScrolledWindowMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveScrolledWindowMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveScrolledWindowMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveScrolledWindowMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveScrolledWindowMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveScrolledWindowMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveScrolledWindowMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveScrolledWindowMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveScrolledWindowMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveScrolledWindowMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveScrolledWindowMethod "getVadjustment" o = ScrolledWindowGetVadjustmentMethodInfo
    ResolveScrolledWindowMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveScrolledWindowMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveScrolledWindowMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveScrolledWindowMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveScrolledWindowMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveScrolledWindowMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveScrolledWindowMethod "getVscrollbar" o = ScrolledWindowGetVscrollbarMethodInfo
    ResolveScrolledWindowMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveScrolledWindowMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveScrolledWindowMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveScrolledWindowMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveScrolledWindowMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveScrolledWindowMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveScrolledWindowMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveScrolledWindowMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveScrolledWindowMethod "setCaptureButtonPress" o = ScrolledWindowSetCaptureButtonPressMethodInfo
    ResolveScrolledWindowMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveScrolledWindowMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveScrolledWindowMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveScrolledWindowMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveScrolledWindowMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveScrolledWindowMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveScrolledWindowMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveScrolledWindowMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveScrolledWindowMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveScrolledWindowMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveScrolledWindowMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveScrolledWindowMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveScrolledWindowMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveScrolledWindowMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveScrolledWindowMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveScrolledWindowMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveScrolledWindowMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveScrolledWindowMethod "setHadjustment" o = ScrolledWindowSetHadjustmentMethodInfo
    ResolveScrolledWindowMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveScrolledWindowMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveScrolledWindowMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveScrolledWindowMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveScrolledWindowMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveScrolledWindowMethod "setKineticScrolling" o = ScrolledWindowSetKineticScrollingMethodInfo
    ResolveScrolledWindowMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveScrolledWindowMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveScrolledWindowMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveScrolledWindowMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveScrolledWindowMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveScrolledWindowMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveScrolledWindowMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveScrolledWindowMethod "setMaxContentHeight" o = ScrolledWindowSetMaxContentHeightMethodInfo
    ResolveScrolledWindowMethod "setMaxContentWidth" o = ScrolledWindowSetMaxContentWidthMethodInfo
    ResolveScrolledWindowMethod "setMinContentHeight" o = ScrolledWindowSetMinContentHeightMethodInfo
    ResolveScrolledWindowMethod "setMinContentWidth" o = ScrolledWindowSetMinContentWidthMethodInfo
    ResolveScrolledWindowMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveScrolledWindowMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveScrolledWindowMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveScrolledWindowMethod "setOverlayScrolling" o = ScrolledWindowSetOverlayScrollingMethodInfo
    ResolveScrolledWindowMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveScrolledWindowMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveScrolledWindowMethod "setPlacement" o = ScrolledWindowSetPlacementMethodInfo
    ResolveScrolledWindowMethod "setPolicy" o = ScrolledWindowSetPolicyMethodInfo
    ResolveScrolledWindowMethod "setPropagateNaturalHeight" o = ScrolledWindowSetPropagateNaturalHeightMethodInfo
    ResolveScrolledWindowMethod "setPropagateNaturalWidth" o = ScrolledWindowSetPropagateNaturalWidthMethodInfo
    ResolveScrolledWindowMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveScrolledWindowMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveScrolledWindowMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveScrolledWindowMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveScrolledWindowMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveScrolledWindowMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveScrolledWindowMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveScrolledWindowMethod "setShadowType" o = ScrolledWindowSetShadowTypeMethodInfo
    ResolveScrolledWindowMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveScrolledWindowMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveScrolledWindowMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveScrolledWindowMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveScrolledWindowMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveScrolledWindowMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveScrolledWindowMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveScrolledWindowMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveScrolledWindowMethod "setVadjustment" o = ScrolledWindowSetVadjustmentMethodInfo
    ResolveScrolledWindowMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveScrolledWindowMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveScrolledWindowMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveScrolledWindowMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveScrolledWindowMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveScrolledWindowMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveScrolledWindowMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveScrolledWindowMethod t ScrolledWindow, O.MethodInfo info ScrolledWindow p) => OL.IsLabel t (ScrolledWindow -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal ScrolledWindow::edge-overshot
-- | The [edgeOvershot](#signal:edgeOvershot) signal is emitted whenever user initiated scrolling
-- makes the scrolled window firmly surpass (i.e. with some edge resistance)
-- the lower or upper limits defined by the adjustment in that orientation.
-- 
-- A similar behavior without edge resistance is provided by the
-- [edgeReached]("GI.Gtk.Objects.ScrolledWindow#signal:edgeReached") signal.
-- 
-- Note: The /@pos@/ argument is LTR\/RTL aware, so callers should be aware too
-- if intending to provide behavior on horizontal edges.
-- 
-- /Since: 3.16/
type ScrolledWindowEdgeOvershotCallback =
    Gtk.Enums.PositionType
    -- ^ /@pos@/: edge side that was hit
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ScrolledWindowEdgeOvershotCallback`@.
noScrolledWindowEdgeOvershotCallback :: Maybe ScrolledWindowEdgeOvershotCallback
noScrolledWindowEdgeOvershotCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ScrolledWindowEdgeOvershotCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ScrolledWindowEdgeOvershotCallback`.
foreign import ccall "wrapper"
    mk_ScrolledWindowEdgeOvershotCallback :: C_ScrolledWindowEdgeOvershotCallback -> IO (FunPtr C_ScrolledWindowEdgeOvershotCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ScrolledWindowEdgeOvershot :: MonadIO m => ScrolledWindowEdgeOvershotCallback -> m (GClosure C_ScrolledWindowEdgeOvershotCallback)
genClosure_ScrolledWindowEdgeOvershot cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeOvershotCallback cb
    mk_ScrolledWindowEdgeOvershotCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ScrolledWindowEdgeOvershotCallback` into a `C_ScrolledWindowEdgeOvershotCallback`.
wrap_ScrolledWindowEdgeOvershotCallback ::
    ScrolledWindowEdgeOvershotCallback ->
    C_ScrolledWindowEdgeOvershotCallback
wrap_ScrolledWindowEdgeOvershotCallback _cb _ pos _ = do
    let pos' = (toEnum . fromIntegral) pos
    _cb  pos'


-- | Connect a signal handler for the [edgeOvershot](#signal:edgeOvershot) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' scrolledWindow #edgeOvershot callback
-- @
-- 
-- 
onScrolledWindowEdgeOvershot :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowEdgeOvershotCallback -> m SignalHandlerId
onScrolledWindowEdgeOvershot obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeOvershotCallback cb
    cb'' <- mk_ScrolledWindowEdgeOvershotCallback cb'
    connectSignalFunPtr obj "edge-overshot" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [edgeOvershot](#signal:edgeOvershot) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' scrolledWindow #edgeOvershot callback
-- @
-- 
-- 
afterScrolledWindowEdgeOvershot :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowEdgeOvershotCallback -> m SignalHandlerId
afterScrolledWindowEdgeOvershot obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeOvershotCallback cb
    cb'' <- mk_ScrolledWindowEdgeOvershotCallback cb'
    connectSignalFunPtr obj "edge-overshot" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ScrolledWindowEdgeOvershotSignalInfo
instance SignalInfo ScrolledWindowEdgeOvershotSignalInfo where
    type HaskellCallbackType ScrolledWindowEdgeOvershotSignalInfo = ScrolledWindowEdgeOvershotCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ScrolledWindowEdgeOvershotCallback cb
        cb'' <- mk_ScrolledWindowEdgeOvershotCallback cb'
        connectSignalFunPtr obj "edge-overshot" cb'' connectMode detail

#endif

-- signal ScrolledWindow::edge-reached
-- | The [edgeReached](#signal:edgeReached) signal is emitted whenever user-initiated scrolling
-- makes the scrolled window exactly reach the lower or upper limits
-- defined by the adjustment in that orientation.
-- 
-- A similar behavior with edge resistance is provided by the
-- [edgeOvershot]("GI.Gtk.Objects.ScrolledWindow#signal:edgeOvershot") signal.
-- 
-- Note: The /@pos@/ argument is LTR\/RTL aware, so callers should be aware too
-- if intending to provide behavior on horizontal edges.
-- 
-- /Since: 3.16/
type ScrolledWindowEdgeReachedCallback =
    Gtk.Enums.PositionType
    -- ^ /@pos@/: edge side that was reached
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ScrolledWindowEdgeReachedCallback`@.
noScrolledWindowEdgeReachedCallback :: Maybe ScrolledWindowEdgeReachedCallback
noScrolledWindowEdgeReachedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ScrolledWindowEdgeReachedCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ScrolledWindowEdgeReachedCallback`.
foreign import ccall "wrapper"
    mk_ScrolledWindowEdgeReachedCallback :: C_ScrolledWindowEdgeReachedCallback -> IO (FunPtr C_ScrolledWindowEdgeReachedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ScrolledWindowEdgeReached :: MonadIO m => ScrolledWindowEdgeReachedCallback -> m (GClosure C_ScrolledWindowEdgeReachedCallback)
genClosure_ScrolledWindowEdgeReached cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeReachedCallback cb
    mk_ScrolledWindowEdgeReachedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ScrolledWindowEdgeReachedCallback` into a `C_ScrolledWindowEdgeReachedCallback`.
wrap_ScrolledWindowEdgeReachedCallback ::
    ScrolledWindowEdgeReachedCallback ->
    C_ScrolledWindowEdgeReachedCallback
wrap_ScrolledWindowEdgeReachedCallback _cb _ pos _ = do
    let pos' = (toEnum . fromIntegral) pos
    _cb  pos'


-- | Connect a signal handler for the [edgeReached](#signal:edgeReached) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' scrolledWindow #edgeReached callback
-- @
-- 
-- 
onScrolledWindowEdgeReached :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowEdgeReachedCallback -> m SignalHandlerId
onScrolledWindowEdgeReached obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeReachedCallback cb
    cb'' <- mk_ScrolledWindowEdgeReachedCallback cb'
    connectSignalFunPtr obj "edge-reached" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [edgeReached](#signal:edgeReached) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' scrolledWindow #edgeReached callback
-- @
-- 
-- 
afterScrolledWindowEdgeReached :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowEdgeReachedCallback -> m SignalHandlerId
afterScrolledWindowEdgeReached obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowEdgeReachedCallback cb
    cb'' <- mk_ScrolledWindowEdgeReachedCallback cb'
    connectSignalFunPtr obj "edge-reached" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ScrolledWindowEdgeReachedSignalInfo
instance SignalInfo ScrolledWindowEdgeReachedSignalInfo where
    type HaskellCallbackType ScrolledWindowEdgeReachedSignalInfo = ScrolledWindowEdgeReachedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ScrolledWindowEdgeReachedCallback cb
        cb'' <- mk_ScrolledWindowEdgeReachedCallback cb'
        connectSignalFunPtr obj "edge-reached" cb'' connectMode detail

#endif

-- signal ScrolledWindow::move-focus-out
-- | The [moveFocusOut](#signal:moveFocusOut) signal is a
-- [keybinding signal][GtkBindingSignal] which gets
-- emitted when focus is moved away from the scrolled window by a
-- keybinding. The [moveFocus]("GI.Gtk.Objects.Widget#signal:moveFocus") signal is emitted with
-- /@directionType@/ on this scrolled window’s toplevel parent in the
-- container hierarchy. The default bindings for this signal are
-- @Ctrl + Tab@ to move forward and @Ctrl + Shift + Tab@ to move backward.
type ScrolledWindowMoveFocusOutCallback =
    Gtk.Enums.DirectionType
    -- ^ /@directionType@/: either 'GI.Gtk.Enums.DirectionTypeTabForward' or
    --   'GI.Gtk.Enums.DirectionTypeTabBackward'
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ScrolledWindowMoveFocusOutCallback`@.
noScrolledWindowMoveFocusOutCallback :: Maybe ScrolledWindowMoveFocusOutCallback
noScrolledWindowMoveFocusOutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ScrolledWindowMoveFocusOutCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ScrolledWindowMoveFocusOutCallback`.
foreign import ccall "wrapper"
    mk_ScrolledWindowMoveFocusOutCallback :: C_ScrolledWindowMoveFocusOutCallback -> IO (FunPtr C_ScrolledWindowMoveFocusOutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ScrolledWindowMoveFocusOut :: MonadIO m => ScrolledWindowMoveFocusOutCallback -> m (GClosure C_ScrolledWindowMoveFocusOutCallback)
genClosure_ScrolledWindowMoveFocusOut cb = liftIO $ do
    let cb' = wrap_ScrolledWindowMoveFocusOutCallback cb
    mk_ScrolledWindowMoveFocusOutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ScrolledWindowMoveFocusOutCallback` into a `C_ScrolledWindowMoveFocusOutCallback`.
wrap_ScrolledWindowMoveFocusOutCallback ::
    ScrolledWindowMoveFocusOutCallback ->
    C_ScrolledWindowMoveFocusOutCallback
wrap_ScrolledWindowMoveFocusOutCallback _cb _ directionType _ = do
    let directionType' = (toEnum . fromIntegral) directionType
    _cb  directionType'


-- | Connect a signal handler for the [moveFocusOut](#signal:moveFocusOut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' scrolledWindow #moveFocusOut callback
-- @
-- 
-- 
onScrolledWindowMoveFocusOut :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowMoveFocusOutCallback -> m SignalHandlerId
onScrolledWindowMoveFocusOut obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowMoveFocusOutCallback cb
    cb'' <- mk_ScrolledWindowMoveFocusOutCallback cb'
    connectSignalFunPtr obj "move-focus-out" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveFocusOut](#signal:moveFocusOut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' scrolledWindow #moveFocusOut callback
-- @
-- 
-- 
afterScrolledWindowMoveFocusOut :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowMoveFocusOutCallback -> m SignalHandlerId
afterScrolledWindowMoveFocusOut obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowMoveFocusOutCallback cb
    cb'' <- mk_ScrolledWindowMoveFocusOutCallback cb'
    connectSignalFunPtr obj "move-focus-out" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ScrolledWindowMoveFocusOutSignalInfo
instance SignalInfo ScrolledWindowMoveFocusOutSignalInfo where
    type HaskellCallbackType ScrolledWindowMoveFocusOutSignalInfo = ScrolledWindowMoveFocusOutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ScrolledWindowMoveFocusOutCallback cb
        cb'' <- mk_ScrolledWindowMoveFocusOutCallback cb'
        connectSignalFunPtr obj "move-focus-out" cb'' connectMode detail

#endif

-- signal ScrolledWindow::scroll-child
-- | The [scrollChild](#signal:scrollChild) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted when a keybinding that scrolls is pressed.
-- The horizontal or vertical adjustment is updated which triggers a
-- signal that the scrolled window’s child may listen to and scroll itself.
type ScrolledWindowScrollChildCallback =
    Gtk.Enums.ScrollType
    -- ^ /@scroll@/: a t'GI.Gtk.Enums.ScrollType' describing how much to scroll
    -> Bool
    -- ^ /@horizontal@/: whether the keybinding scrolls the child
    --   horizontally or not
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `ScrolledWindowScrollChildCallback`@.
noScrolledWindowScrollChildCallback :: Maybe ScrolledWindowScrollChildCallback
noScrolledWindowScrollChildCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ScrolledWindowScrollChildCallback =
    Ptr () ->                               -- object
    CUInt ->
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_ScrolledWindowScrollChildCallback`.
foreign import ccall "wrapper"
    mk_ScrolledWindowScrollChildCallback :: C_ScrolledWindowScrollChildCallback -> IO (FunPtr C_ScrolledWindowScrollChildCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ScrolledWindowScrollChild :: MonadIO m => ScrolledWindowScrollChildCallback -> m (GClosure C_ScrolledWindowScrollChildCallback)
genClosure_ScrolledWindowScrollChild cb = liftIO $ do
    let cb' = wrap_ScrolledWindowScrollChildCallback cb
    mk_ScrolledWindowScrollChildCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ScrolledWindowScrollChildCallback` into a `C_ScrolledWindowScrollChildCallback`.
wrap_ScrolledWindowScrollChildCallback ::
    ScrolledWindowScrollChildCallback ->
    C_ScrolledWindowScrollChildCallback
wrap_ScrolledWindowScrollChildCallback _cb _ scroll horizontal _ = do
    let scroll' = (toEnum . fromIntegral) scroll
    let horizontal' = (/= 0) horizontal
    result <- _cb  scroll' horizontal'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [scrollChild](#signal:scrollChild) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' scrolledWindow #scrollChild callback
-- @
-- 
-- 
onScrolledWindowScrollChild :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowScrollChildCallback -> m SignalHandlerId
onScrolledWindowScrollChild obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowScrollChildCallback cb
    cb'' <- mk_ScrolledWindowScrollChildCallback cb'
    connectSignalFunPtr obj "scroll-child" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [scrollChild](#signal:scrollChild) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' scrolledWindow #scrollChild callback
-- @
-- 
-- 
afterScrolledWindowScrollChild :: (IsScrolledWindow a, MonadIO m) => a -> ScrolledWindowScrollChildCallback -> m SignalHandlerId
afterScrolledWindowScrollChild obj cb = liftIO $ do
    let cb' = wrap_ScrolledWindowScrollChildCallback cb
    cb'' <- mk_ScrolledWindowScrollChildCallback cb'
    connectSignalFunPtr obj "scroll-child" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ScrolledWindowScrollChildSignalInfo
instance SignalInfo ScrolledWindowScrollChildSignalInfo where
    type HaskellCallbackType ScrolledWindowScrollChildSignalInfo = ScrolledWindowScrollChildCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ScrolledWindowScrollChildCallback cb
        cb'' <- mk_ScrolledWindowScrollChildCallback cb'
        connectSignalFunPtr obj "scroll-child" cb'' connectMode detail

#endif

-- VVV Prop "hadjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@hadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #hadjustment
-- @
getScrolledWindowHadjustment :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Adjustment.Adjustment
getScrolledWindowHadjustment obj = liftIO $ checkUnexpectedNothing "getScrolledWindowHadjustment" $ B.Properties.getObjectPropertyObject obj "hadjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@hadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #hadjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowHadjustment :: (MonadIO m, IsScrolledWindow o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setScrolledWindowHadjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "hadjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@hadjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowHadjustment :: (IsScrolledWindow o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructScrolledWindowHadjustment val = B.Properties.constructObjectPropertyObject "hadjustment" (Just val)

-- | Set the value of the “@hadjustment@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #hadjustment
-- @
clearScrolledWindowHadjustment :: (MonadIO m, IsScrolledWindow o) => o -> m ()
clearScrolledWindowHadjustment obj = liftIO $ B.Properties.setObjectPropertyObject obj "hadjustment" (Nothing :: Maybe Gtk.Adjustment.Adjustment)

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowHadjustmentPropertyInfo
instance AttrInfo ScrolledWindowHadjustmentPropertyInfo where
    type AttrAllowedOps ScrolledWindowHadjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ScrolledWindowHadjustmentPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowHadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint ScrolledWindowHadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType ScrolledWindowHadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType ScrolledWindowHadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel ScrolledWindowHadjustmentPropertyInfo = "hadjustment"
    type AttrOrigin ScrolledWindowHadjustmentPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowHadjustment
    attrSet = setScrolledWindowHadjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructScrolledWindowHadjustment
    attrClear = clearScrolledWindowHadjustment
#endif

-- VVV Prop "hscrollbar-policy"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PolicyType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@hscrollbar-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #hscrollbarPolicy
-- @
getScrolledWindowHscrollbarPolicy :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Enums.PolicyType
getScrolledWindowHscrollbarPolicy obj = liftIO $ B.Properties.getObjectPropertyEnum obj "hscrollbar-policy"

-- | Set the value of the “@hscrollbar-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #hscrollbarPolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowHscrollbarPolicy :: (MonadIO m, IsScrolledWindow o) => o -> Gtk.Enums.PolicyType -> m ()
setScrolledWindowHscrollbarPolicy obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "hscrollbar-policy" val

-- | Construct a `GValueConstruct` with valid value for the “@hscrollbar-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowHscrollbarPolicy :: (IsScrolledWindow o) => Gtk.Enums.PolicyType -> IO (GValueConstruct o)
constructScrolledWindowHscrollbarPolicy val = B.Properties.constructObjectPropertyEnum "hscrollbar-policy" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowHscrollbarPolicyPropertyInfo
instance AttrInfo ScrolledWindowHscrollbarPolicyPropertyInfo where
    type AttrAllowedOps ScrolledWindowHscrollbarPolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowHscrollbarPolicyPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowHscrollbarPolicyPropertyInfo = (~) Gtk.Enums.PolicyType
    type AttrTransferTypeConstraint ScrolledWindowHscrollbarPolicyPropertyInfo = (~) Gtk.Enums.PolicyType
    type AttrTransferType ScrolledWindowHscrollbarPolicyPropertyInfo = Gtk.Enums.PolicyType
    type AttrGetType ScrolledWindowHscrollbarPolicyPropertyInfo = Gtk.Enums.PolicyType
    type AttrLabel ScrolledWindowHscrollbarPolicyPropertyInfo = "hscrollbar-policy"
    type AttrOrigin ScrolledWindowHscrollbarPolicyPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowHscrollbarPolicy
    attrSet = setScrolledWindowHscrollbarPolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowHscrollbarPolicy
    attrClear = undefined
#endif

-- VVV Prop "kinetic-scrolling"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@kinetic-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #kineticScrolling
-- @
getScrolledWindowKineticScrolling :: (MonadIO m, IsScrolledWindow o) => o -> m Bool
getScrolledWindowKineticScrolling obj = liftIO $ B.Properties.getObjectPropertyBool obj "kinetic-scrolling"

-- | Set the value of the “@kinetic-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #kineticScrolling 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowKineticScrolling :: (MonadIO m, IsScrolledWindow o) => o -> Bool -> m ()
setScrolledWindowKineticScrolling obj val = liftIO $ B.Properties.setObjectPropertyBool obj "kinetic-scrolling" val

-- | Construct a `GValueConstruct` with valid value for the “@kinetic-scrolling@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowKineticScrolling :: (IsScrolledWindow o) => Bool -> IO (GValueConstruct o)
constructScrolledWindowKineticScrolling val = B.Properties.constructObjectPropertyBool "kinetic-scrolling" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowKineticScrollingPropertyInfo
instance AttrInfo ScrolledWindowKineticScrollingPropertyInfo where
    type AttrAllowedOps ScrolledWindowKineticScrollingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowKineticScrollingPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowKineticScrollingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ScrolledWindowKineticScrollingPropertyInfo = (~) Bool
    type AttrTransferType ScrolledWindowKineticScrollingPropertyInfo = Bool
    type AttrGetType ScrolledWindowKineticScrollingPropertyInfo = Bool
    type AttrLabel ScrolledWindowKineticScrollingPropertyInfo = "kinetic-scrolling"
    type AttrOrigin ScrolledWindowKineticScrollingPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowKineticScrolling
    attrSet = setScrolledWindowKineticScrolling
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowKineticScrolling
    attrClear = undefined
#endif

-- VVV Prop "max-content-height"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@max-content-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #maxContentHeight
-- @
getScrolledWindowMaxContentHeight :: (MonadIO m, IsScrolledWindow o) => o -> m Int32
getScrolledWindowMaxContentHeight obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "max-content-height"

-- | Set the value of the “@max-content-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #maxContentHeight 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowMaxContentHeight :: (MonadIO m, IsScrolledWindow o) => o -> Int32 -> m ()
setScrolledWindowMaxContentHeight obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "max-content-height" val

-- | Construct a `GValueConstruct` with valid value for the “@max-content-height@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowMaxContentHeight :: (IsScrolledWindow o) => Int32 -> IO (GValueConstruct o)
constructScrolledWindowMaxContentHeight val = B.Properties.constructObjectPropertyInt32 "max-content-height" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowMaxContentHeightPropertyInfo
instance AttrInfo ScrolledWindowMaxContentHeightPropertyInfo where
    type AttrAllowedOps ScrolledWindowMaxContentHeightPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowMaxContentHeightPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowMaxContentHeightPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ScrolledWindowMaxContentHeightPropertyInfo = (~) Int32
    type AttrTransferType ScrolledWindowMaxContentHeightPropertyInfo = Int32
    type AttrGetType ScrolledWindowMaxContentHeightPropertyInfo = Int32
    type AttrLabel ScrolledWindowMaxContentHeightPropertyInfo = "max-content-height"
    type AttrOrigin ScrolledWindowMaxContentHeightPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowMaxContentHeight
    attrSet = setScrolledWindowMaxContentHeight
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowMaxContentHeight
    attrClear = undefined
#endif

-- VVV Prop "max-content-width"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@max-content-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #maxContentWidth
-- @
getScrolledWindowMaxContentWidth :: (MonadIO m, IsScrolledWindow o) => o -> m Int32
getScrolledWindowMaxContentWidth obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "max-content-width"

-- | Set the value of the “@max-content-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #maxContentWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowMaxContentWidth :: (MonadIO m, IsScrolledWindow o) => o -> Int32 -> m ()
setScrolledWindowMaxContentWidth obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "max-content-width" val

-- | Construct a `GValueConstruct` with valid value for the “@max-content-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowMaxContentWidth :: (IsScrolledWindow o) => Int32 -> IO (GValueConstruct o)
constructScrolledWindowMaxContentWidth val = B.Properties.constructObjectPropertyInt32 "max-content-width" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowMaxContentWidthPropertyInfo
instance AttrInfo ScrolledWindowMaxContentWidthPropertyInfo where
    type AttrAllowedOps ScrolledWindowMaxContentWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowMaxContentWidthPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowMaxContentWidthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ScrolledWindowMaxContentWidthPropertyInfo = (~) Int32
    type AttrTransferType ScrolledWindowMaxContentWidthPropertyInfo = Int32
    type AttrGetType ScrolledWindowMaxContentWidthPropertyInfo = Int32
    type AttrLabel ScrolledWindowMaxContentWidthPropertyInfo = "max-content-width"
    type AttrOrigin ScrolledWindowMaxContentWidthPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowMaxContentWidth
    attrSet = setScrolledWindowMaxContentWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowMaxContentWidth
    attrClear = undefined
#endif

-- VVV Prop "min-content-height"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@min-content-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #minContentHeight
-- @
getScrolledWindowMinContentHeight :: (MonadIO m, IsScrolledWindow o) => o -> m Int32
getScrolledWindowMinContentHeight obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "min-content-height"

-- | Set the value of the “@min-content-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #minContentHeight 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowMinContentHeight :: (MonadIO m, IsScrolledWindow o) => o -> Int32 -> m ()
setScrolledWindowMinContentHeight obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "min-content-height" val

-- | Construct a `GValueConstruct` with valid value for the “@min-content-height@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowMinContentHeight :: (IsScrolledWindow o) => Int32 -> IO (GValueConstruct o)
constructScrolledWindowMinContentHeight val = B.Properties.constructObjectPropertyInt32 "min-content-height" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowMinContentHeightPropertyInfo
instance AttrInfo ScrolledWindowMinContentHeightPropertyInfo where
    type AttrAllowedOps ScrolledWindowMinContentHeightPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowMinContentHeightPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowMinContentHeightPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ScrolledWindowMinContentHeightPropertyInfo = (~) Int32
    type AttrTransferType ScrolledWindowMinContentHeightPropertyInfo = Int32
    type AttrGetType ScrolledWindowMinContentHeightPropertyInfo = Int32
    type AttrLabel ScrolledWindowMinContentHeightPropertyInfo = "min-content-height"
    type AttrOrigin ScrolledWindowMinContentHeightPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowMinContentHeight
    attrSet = setScrolledWindowMinContentHeight
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowMinContentHeight
    attrClear = undefined
#endif

-- VVV Prop "min-content-width"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@min-content-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #minContentWidth
-- @
getScrolledWindowMinContentWidth :: (MonadIO m, IsScrolledWindow o) => o -> m Int32
getScrolledWindowMinContentWidth obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "min-content-width"

-- | Set the value of the “@min-content-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #minContentWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowMinContentWidth :: (MonadIO m, IsScrolledWindow o) => o -> Int32 -> m ()
setScrolledWindowMinContentWidth obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "min-content-width" val

-- | Construct a `GValueConstruct` with valid value for the “@min-content-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowMinContentWidth :: (IsScrolledWindow o) => Int32 -> IO (GValueConstruct o)
constructScrolledWindowMinContentWidth val = B.Properties.constructObjectPropertyInt32 "min-content-width" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowMinContentWidthPropertyInfo
instance AttrInfo ScrolledWindowMinContentWidthPropertyInfo where
    type AttrAllowedOps ScrolledWindowMinContentWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowMinContentWidthPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowMinContentWidthPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ScrolledWindowMinContentWidthPropertyInfo = (~) Int32
    type AttrTransferType ScrolledWindowMinContentWidthPropertyInfo = Int32
    type AttrGetType ScrolledWindowMinContentWidthPropertyInfo = Int32
    type AttrLabel ScrolledWindowMinContentWidthPropertyInfo = "min-content-width"
    type AttrOrigin ScrolledWindowMinContentWidthPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowMinContentWidth
    attrSet = setScrolledWindowMinContentWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowMinContentWidth
    attrClear = undefined
#endif

-- VVV Prop "overlay-scrolling"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@overlay-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #overlayScrolling
-- @
getScrolledWindowOverlayScrolling :: (MonadIO m, IsScrolledWindow o) => o -> m Bool
getScrolledWindowOverlayScrolling obj = liftIO $ B.Properties.getObjectPropertyBool obj "overlay-scrolling"

-- | Set the value of the “@overlay-scrolling@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #overlayScrolling 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowOverlayScrolling :: (MonadIO m, IsScrolledWindow o) => o -> Bool -> m ()
setScrolledWindowOverlayScrolling obj val = liftIO $ B.Properties.setObjectPropertyBool obj "overlay-scrolling" val

-- | Construct a `GValueConstruct` with valid value for the “@overlay-scrolling@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowOverlayScrolling :: (IsScrolledWindow o) => Bool -> IO (GValueConstruct o)
constructScrolledWindowOverlayScrolling val = B.Properties.constructObjectPropertyBool "overlay-scrolling" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowOverlayScrollingPropertyInfo
instance AttrInfo ScrolledWindowOverlayScrollingPropertyInfo where
    type AttrAllowedOps ScrolledWindowOverlayScrollingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowOverlayScrollingPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowOverlayScrollingPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ScrolledWindowOverlayScrollingPropertyInfo = (~) Bool
    type AttrTransferType ScrolledWindowOverlayScrollingPropertyInfo = Bool
    type AttrGetType ScrolledWindowOverlayScrollingPropertyInfo = Bool
    type AttrLabel ScrolledWindowOverlayScrollingPropertyInfo = "overlay-scrolling"
    type AttrOrigin ScrolledWindowOverlayScrollingPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowOverlayScrolling
    attrSet = setScrolledWindowOverlayScrolling
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowOverlayScrolling
    attrClear = undefined
#endif

-- VVV Prop "propagate-natural-height"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@propagate-natural-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #propagateNaturalHeight
-- @
getScrolledWindowPropagateNaturalHeight :: (MonadIO m, IsScrolledWindow o) => o -> m Bool
getScrolledWindowPropagateNaturalHeight obj = liftIO $ B.Properties.getObjectPropertyBool obj "propagate-natural-height"

-- | Set the value of the “@propagate-natural-height@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #propagateNaturalHeight 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowPropagateNaturalHeight :: (MonadIO m, IsScrolledWindow o) => o -> Bool -> m ()
setScrolledWindowPropagateNaturalHeight obj val = liftIO $ B.Properties.setObjectPropertyBool obj "propagate-natural-height" val

-- | Construct a `GValueConstruct` with valid value for the “@propagate-natural-height@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowPropagateNaturalHeight :: (IsScrolledWindow o) => Bool -> IO (GValueConstruct o)
constructScrolledWindowPropagateNaturalHeight val = B.Properties.constructObjectPropertyBool "propagate-natural-height" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowPropagateNaturalHeightPropertyInfo
instance AttrInfo ScrolledWindowPropagateNaturalHeightPropertyInfo where
    type AttrAllowedOps ScrolledWindowPropagateNaturalHeightPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowPropagateNaturalHeightPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowPropagateNaturalHeightPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ScrolledWindowPropagateNaturalHeightPropertyInfo = (~) Bool
    type AttrTransferType ScrolledWindowPropagateNaturalHeightPropertyInfo = Bool
    type AttrGetType ScrolledWindowPropagateNaturalHeightPropertyInfo = Bool
    type AttrLabel ScrolledWindowPropagateNaturalHeightPropertyInfo = "propagate-natural-height"
    type AttrOrigin ScrolledWindowPropagateNaturalHeightPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowPropagateNaturalHeight
    attrSet = setScrolledWindowPropagateNaturalHeight
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowPropagateNaturalHeight
    attrClear = undefined
#endif

-- VVV Prop "propagate-natural-width"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@propagate-natural-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #propagateNaturalWidth
-- @
getScrolledWindowPropagateNaturalWidth :: (MonadIO m, IsScrolledWindow o) => o -> m Bool
getScrolledWindowPropagateNaturalWidth obj = liftIO $ B.Properties.getObjectPropertyBool obj "propagate-natural-width"

-- | Set the value of the “@propagate-natural-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #propagateNaturalWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowPropagateNaturalWidth :: (MonadIO m, IsScrolledWindow o) => o -> Bool -> m ()
setScrolledWindowPropagateNaturalWidth obj val = liftIO $ B.Properties.setObjectPropertyBool obj "propagate-natural-width" val

-- | Construct a `GValueConstruct` with valid value for the “@propagate-natural-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowPropagateNaturalWidth :: (IsScrolledWindow o) => Bool -> IO (GValueConstruct o)
constructScrolledWindowPropagateNaturalWidth val = B.Properties.constructObjectPropertyBool "propagate-natural-width" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowPropagateNaturalWidthPropertyInfo
instance AttrInfo ScrolledWindowPropagateNaturalWidthPropertyInfo where
    type AttrAllowedOps ScrolledWindowPropagateNaturalWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowPropagateNaturalWidthPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowPropagateNaturalWidthPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ScrolledWindowPropagateNaturalWidthPropertyInfo = (~) Bool
    type AttrTransferType ScrolledWindowPropagateNaturalWidthPropertyInfo = Bool
    type AttrGetType ScrolledWindowPropagateNaturalWidthPropertyInfo = Bool
    type AttrLabel ScrolledWindowPropagateNaturalWidthPropertyInfo = "propagate-natural-width"
    type AttrOrigin ScrolledWindowPropagateNaturalWidthPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowPropagateNaturalWidth
    attrSet = setScrolledWindowPropagateNaturalWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowPropagateNaturalWidth
    attrClear = undefined
#endif

-- VVV Prop "shadow-type"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ShadowType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #shadowType
-- @
getScrolledWindowShadowType :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Enums.ShadowType
getScrolledWindowShadowType obj = liftIO $ B.Properties.getObjectPropertyEnum obj "shadow-type"

-- | Set the value of the “@shadow-type@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #shadowType 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowShadowType :: (MonadIO m, IsScrolledWindow o) => o -> Gtk.Enums.ShadowType -> m ()
setScrolledWindowShadowType obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "shadow-type" val

-- | Construct a `GValueConstruct` with valid value for the “@shadow-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowShadowType :: (IsScrolledWindow o) => Gtk.Enums.ShadowType -> IO (GValueConstruct o)
constructScrolledWindowShadowType val = B.Properties.constructObjectPropertyEnum "shadow-type" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowShadowTypePropertyInfo
instance AttrInfo ScrolledWindowShadowTypePropertyInfo where
    type AttrAllowedOps ScrolledWindowShadowTypePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowShadowTypePropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferTypeConstraint ScrolledWindowShadowTypePropertyInfo = (~) Gtk.Enums.ShadowType
    type AttrTransferType ScrolledWindowShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrGetType ScrolledWindowShadowTypePropertyInfo = Gtk.Enums.ShadowType
    type AttrLabel ScrolledWindowShadowTypePropertyInfo = "shadow-type"
    type AttrOrigin ScrolledWindowShadowTypePropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowShadowType
    attrSet = setScrolledWindowShadowType
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowShadowType
    attrClear = undefined
#endif

-- VVV Prop "vadjustment"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Adjustment"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@vadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #vadjustment
-- @
getScrolledWindowVadjustment :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Adjustment.Adjustment
getScrolledWindowVadjustment obj = liftIO $ checkUnexpectedNothing "getScrolledWindowVadjustment" $ B.Properties.getObjectPropertyObject obj "vadjustment" Gtk.Adjustment.Adjustment

-- | Set the value of the “@vadjustment@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #vadjustment 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowVadjustment :: (MonadIO m, IsScrolledWindow o, Gtk.Adjustment.IsAdjustment a) => o -> a -> m ()
setScrolledWindowVadjustment obj val = liftIO $ B.Properties.setObjectPropertyObject obj "vadjustment" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@vadjustment@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowVadjustment :: (IsScrolledWindow o, Gtk.Adjustment.IsAdjustment a) => a -> IO (GValueConstruct o)
constructScrolledWindowVadjustment val = B.Properties.constructObjectPropertyObject "vadjustment" (Just val)

-- | Set the value of the “@vadjustment@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #vadjustment
-- @
clearScrolledWindowVadjustment :: (MonadIO m, IsScrolledWindow o) => o -> m ()
clearScrolledWindowVadjustment obj = liftIO $ B.Properties.setObjectPropertyObject obj "vadjustment" (Nothing :: Maybe Gtk.Adjustment.Adjustment)

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowVadjustmentPropertyInfo
instance AttrInfo ScrolledWindowVadjustmentPropertyInfo where
    type AttrAllowedOps ScrolledWindowVadjustmentPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ScrolledWindowVadjustmentPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowVadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferTypeConstraint ScrolledWindowVadjustmentPropertyInfo = Gtk.Adjustment.IsAdjustment
    type AttrTransferType ScrolledWindowVadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrGetType ScrolledWindowVadjustmentPropertyInfo = Gtk.Adjustment.Adjustment
    type AttrLabel ScrolledWindowVadjustmentPropertyInfo = "vadjustment"
    type AttrOrigin ScrolledWindowVadjustmentPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowVadjustment
    attrSet = setScrolledWindowVadjustment
    attrTransfer _ v = do
        unsafeCastTo Gtk.Adjustment.Adjustment v
    attrConstruct = constructScrolledWindowVadjustment
    attrClear = clearScrolledWindowVadjustment
#endif

-- VVV Prop "vscrollbar-policy"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PolicyType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@vscrollbar-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #vscrollbarPolicy
-- @
getScrolledWindowVscrollbarPolicy :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Enums.PolicyType
getScrolledWindowVscrollbarPolicy obj = liftIO $ B.Properties.getObjectPropertyEnum obj "vscrollbar-policy"

-- | Set the value of the “@vscrollbar-policy@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #vscrollbarPolicy 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowVscrollbarPolicy :: (MonadIO m, IsScrolledWindow o) => o -> Gtk.Enums.PolicyType -> m ()
setScrolledWindowVscrollbarPolicy obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "vscrollbar-policy" val

-- | Construct a `GValueConstruct` with valid value for the “@vscrollbar-policy@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowVscrollbarPolicy :: (IsScrolledWindow o) => Gtk.Enums.PolicyType -> IO (GValueConstruct o)
constructScrolledWindowVscrollbarPolicy val = B.Properties.constructObjectPropertyEnum "vscrollbar-policy" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowVscrollbarPolicyPropertyInfo
instance AttrInfo ScrolledWindowVscrollbarPolicyPropertyInfo where
    type AttrAllowedOps ScrolledWindowVscrollbarPolicyPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowVscrollbarPolicyPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowVscrollbarPolicyPropertyInfo = (~) Gtk.Enums.PolicyType
    type AttrTransferTypeConstraint ScrolledWindowVscrollbarPolicyPropertyInfo = (~) Gtk.Enums.PolicyType
    type AttrTransferType ScrolledWindowVscrollbarPolicyPropertyInfo = Gtk.Enums.PolicyType
    type AttrGetType ScrolledWindowVscrollbarPolicyPropertyInfo = Gtk.Enums.PolicyType
    type AttrLabel ScrolledWindowVscrollbarPolicyPropertyInfo = "vscrollbar-policy"
    type AttrOrigin ScrolledWindowVscrollbarPolicyPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowVscrollbarPolicy
    attrSet = setScrolledWindowVscrollbarPolicy
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowVscrollbarPolicy
    attrClear = undefined
#endif

-- VVV Prop "window-placement"
   -- Type: TInterface (Name {namespace = "Gtk", name = "CornerType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@window-placement@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #windowPlacement
-- @
getScrolledWindowWindowPlacement :: (MonadIO m, IsScrolledWindow o) => o -> m Gtk.Enums.CornerType
getScrolledWindowWindowPlacement obj = liftIO $ B.Properties.getObjectPropertyEnum obj "window-placement"

-- | Set the value of the “@window-placement@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #windowPlacement 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowWindowPlacement :: (MonadIO m, IsScrolledWindow o) => o -> Gtk.Enums.CornerType -> m ()
setScrolledWindowWindowPlacement obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "window-placement" val

-- | Construct a `GValueConstruct` with valid value for the “@window-placement@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowWindowPlacement :: (IsScrolledWindow o) => Gtk.Enums.CornerType -> IO (GValueConstruct o)
constructScrolledWindowWindowPlacement val = B.Properties.constructObjectPropertyEnum "window-placement" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowWindowPlacementPropertyInfo
instance AttrInfo ScrolledWindowWindowPlacementPropertyInfo where
    type AttrAllowedOps ScrolledWindowWindowPlacementPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowWindowPlacementPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowWindowPlacementPropertyInfo = (~) Gtk.Enums.CornerType
    type AttrTransferTypeConstraint ScrolledWindowWindowPlacementPropertyInfo = (~) Gtk.Enums.CornerType
    type AttrTransferType ScrolledWindowWindowPlacementPropertyInfo = Gtk.Enums.CornerType
    type AttrGetType ScrolledWindowWindowPlacementPropertyInfo = Gtk.Enums.CornerType
    type AttrLabel ScrolledWindowWindowPlacementPropertyInfo = "window-placement"
    type AttrOrigin ScrolledWindowWindowPlacementPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowWindowPlacement
    attrSet = setScrolledWindowWindowPlacement
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowWindowPlacement
    attrClear = undefined
#endif

-- VVV Prop "window-placement-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@window-placement-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' scrolledWindow #windowPlacementSet
-- @
getScrolledWindowWindowPlacementSet :: (MonadIO m, IsScrolledWindow o) => o -> m Bool
getScrolledWindowWindowPlacementSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "window-placement-set"

-- | Set the value of the “@window-placement-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' scrolledWindow [ #windowPlacementSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setScrolledWindowWindowPlacementSet :: (MonadIO m, IsScrolledWindow o) => o -> Bool -> m ()
setScrolledWindowWindowPlacementSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "window-placement-set" val

-- | Construct a `GValueConstruct` with valid value for the “@window-placement-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructScrolledWindowWindowPlacementSet :: (IsScrolledWindow o) => Bool -> IO (GValueConstruct o)
constructScrolledWindowWindowPlacementSet val = B.Properties.constructObjectPropertyBool "window-placement-set" val

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowWindowPlacementSetPropertyInfo
instance AttrInfo ScrolledWindowWindowPlacementSetPropertyInfo where
    type AttrAllowedOps ScrolledWindowWindowPlacementSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ScrolledWindowWindowPlacementSetPropertyInfo = IsScrolledWindow
    type AttrSetTypeConstraint ScrolledWindowWindowPlacementSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ScrolledWindowWindowPlacementSetPropertyInfo = (~) Bool
    type AttrTransferType ScrolledWindowWindowPlacementSetPropertyInfo = Bool
    type AttrGetType ScrolledWindowWindowPlacementSetPropertyInfo = Bool
    type AttrLabel ScrolledWindowWindowPlacementSetPropertyInfo = "window-placement-set"
    type AttrOrigin ScrolledWindowWindowPlacementSetPropertyInfo = ScrolledWindow
    attrGet = getScrolledWindowWindowPlacementSet
    attrSet = setScrolledWindowWindowPlacementSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructScrolledWindowWindowPlacementSet
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ScrolledWindow
type instance O.AttributeList ScrolledWindow = ScrolledWindowAttributeList
type ScrolledWindowAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("hadjustment", ScrolledWindowHadjustmentPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("hscrollbarPolicy", ScrolledWindowHscrollbarPolicyPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("kineticScrolling", ScrolledWindowKineticScrollingPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxContentHeight", ScrolledWindowMaxContentHeightPropertyInfo), '("maxContentWidth", ScrolledWindowMaxContentWidthPropertyInfo), '("minContentHeight", ScrolledWindowMinContentHeightPropertyInfo), '("minContentWidth", ScrolledWindowMinContentWidthPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("overlayScrolling", ScrolledWindowOverlayScrollingPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("propagateNaturalHeight", ScrolledWindowPropagateNaturalHeightPropertyInfo), '("propagateNaturalWidth", ScrolledWindowPropagateNaturalWidthPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("shadowType", ScrolledWindowShadowTypePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("vadjustment", ScrolledWindowVadjustmentPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("vscrollbarPolicy", ScrolledWindowVscrollbarPolicyPropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo), '("windowPlacement", ScrolledWindowWindowPlacementPropertyInfo), '("windowPlacementSet", ScrolledWindowWindowPlacementSetPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
scrolledWindowHadjustment :: AttrLabelProxy "hadjustment"
scrolledWindowHadjustment = AttrLabelProxy

scrolledWindowHscrollbarPolicy :: AttrLabelProxy "hscrollbarPolicy"
scrolledWindowHscrollbarPolicy = AttrLabelProxy

scrolledWindowKineticScrolling :: AttrLabelProxy "kineticScrolling"
scrolledWindowKineticScrolling = AttrLabelProxy

scrolledWindowMaxContentHeight :: AttrLabelProxy "maxContentHeight"
scrolledWindowMaxContentHeight = AttrLabelProxy

scrolledWindowMaxContentWidth :: AttrLabelProxy "maxContentWidth"
scrolledWindowMaxContentWidth = AttrLabelProxy

scrolledWindowMinContentHeight :: AttrLabelProxy "minContentHeight"
scrolledWindowMinContentHeight = AttrLabelProxy

scrolledWindowMinContentWidth :: AttrLabelProxy "minContentWidth"
scrolledWindowMinContentWidth = AttrLabelProxy

scrolledWindowOverlayScrolling :: AttrLabelProxy "overlayScrolling"
scrolledWindowOverlayScrolling = AttrLabelProxy

scrolledWindowPropagateNaturalHeight :: AttrLabelProxy "propagateNaturalHeight"
scrolledWindowPropagateNaturalHeight = AttrLabelProxy

scrolledWindowPropagateNaturalWidth :: AttrLabelProxy "propagateNaturalWidth"
scrolledWindowPropagateNaturalWidth = AttrLabelProxy

scrolledWindowShadowType :: AttrLabelProxy "shadowType"
scrolledWindowShadowType = AttrLabelProxy

scrolledWindowVadjustment :: AttrLabelProxy "vadjustment"
scrolledWindowVadjustment = AttrLabelProxy

scrolledWindowVscrollbarPolicy :: AttrLabelProxy "vscrollbarPolicy"
scrolledWindowVscrollbarPolicy = AttrLabelProxy

scrolledWindowWindowPlacement :: AttrLabelProxy "windowPlacement"
scrolledWindowWindowPlacement = AttrLabelProxy

scrolledWindowWindowPlacementSet :: AttrLabelProxy "windowPlacementSet"
scrolledWindowWindowPlacementSet = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ScrolledWindow = ScrolledWindowSignalList
type ScrolledWindowSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("edgeOvershot", ScrolledWindowEdgeOvershotSignalInfo), '("edgeReached", ScrolledWindowEdgeReachedSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveFocusOut", ScrolledWindowMoveFocusOutSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollChild", ScrolledWindowScrollChildSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method ScrolledWindow::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "hadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "horizontal adjustment"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "vadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "vertical adjustment"
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
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrolled_window_new" gtk_scrolled_window_new :: 
    Ptr Gtk.Adjustment.Adjustment ->        -- hadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    Ptr Gtk.Adjustment.Adjustment ->        -- vadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO (Ptr ScrolledWindow)

-- | Creates a new scrolled window.
-- 
-- The two arguments are the scrolled window’s adjustments; these will be
-- shared with the scrollbars and the child widget to keep the bars in sync
-- with the child. Usually you want to pass 'P.Nothing' for the adjustments, which
-- will cause the scrolled window to create them for you.
scrolledWindowNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Adjustment.IsAdjustment a, Gtk.Adjustment.IsAdjustment b) =>
    Maybe (a)
    -- ^ /@hadjustment@/: horizontal adjustment
    -> Maybe (b)
    -- ^ /@vadjustment@/: vertical adjustment
    -> m ScrolledWindow
    -- ^ __Returns:__ a new scrolled window
scrolledWindowNew hadjustment vadjustment = liftIO $ do
    maybeHadjustment <- case hadjustment of
        Nothing -> return nullPtr
        Just jHadjustment -> do
            jHadjustment' <- unsafeManagedPtrCastPtr jHadjustment
            return jHadjustment'
    maybeVadjustment <- case vadjustment of
        Nothing -> return nullPtr
        Just jVadjustment -> do
            jVadjustment' <- unsafeManagedPtrCastPtr jVadjustment
            return jVadjustment'
    result <- gtk_scrolled_window_new maybeHadjustment maybeVadjustment
    checkUnexpectedReturnNULL "scrolledWindowNew" result
    result' <- (newObject ScrolledWindow) result
    whenJust hadjustment touchManagedPtr
    whenJust vadjustment touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ScrolledWindow::add_with_viewport
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "the widget you want to scroll"
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

foreign import ccall "gtk_scrolled_window_add_with_viewport" gtk_scrolled_window_add_with_viewport :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

{-# DEPRECATED scrolledWindowAddWithViewport ["(Since version 3.8)","'GI.Gtk.Objects.Container.containerAdd' will automatically add","a t'GI.Gtk.Objects.Viewport.Viewport' if the child doesn\8217t implement t'GI.Gtk.Interfaces.Scrollable.Scrollable'."] #-}
-- | Used to add children without native scrolling capabilities. This
-- is simply a convenience function; it is equivalent to adding the
-- unscrollable child to a viewport, then adding the viewport to the
-- scrolled window. If a child has native scrolling, use
-- 'GI.Gtk.Objects.Container.containerAdd' instead of this function.
-- 
-- The viewport scrolls the child by moving its t'GI.Gdk.Objects.Window.Window', and takes
-- the size of the child to be the size of its toplevel t'GI.Gdk.Objects.Window.Window'.
-- This will be very wrong for most widgets that support native scrolling;
-- for example, if you add a widget such as t'GI.Gtk.Objects.TreeView.TreeView' with a viewport,
-- the whole widget will scroll, including the column headings. Thus,
-- widgets with native scrolling support should not be used with the
-- t'GI.Gtk.Objects.Viewport.Viewport' proxy.
-- 
-- A widget supports scrolling natively if it implements the
-- t'GI.Gtk.Interfaces.Scrollable.Scrollable' interface.
scrolledWindowAddWithViewport ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> b
    -- ^ /@child@/: the widget you want to scroll
    -> m ()
scrolledWindowAddWithViewport scrolledWindow child = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    child' <- unsafeManagedPtrCastPtr child
    gtk_scrolled_window_add_with_viewport scrolledWindow' child'
    touchManagedPtr scrolledWindow
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowAddWithViewportMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsScrolledWindow a, Gtk.Widget.IsWidget b) => O.MethodInfo ScrolledWindowAddWithViewportMethodInfo a signature where
    overloadedMethod = scrolledWindowAddWithViewport

#endif

-- method ScrolledWindow::get_capture_button_press
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_capture_button_press" gtk_scrolled_window_get_capture_button_press :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CInt

-- | Return whether button presses are captured during kinetic
-- scrolling. See 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetCaptureButtonPress'.
-- 
-- /Since: 3.4/
scrolledWindowGetCaptureButtonPress ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if button presses are captured during kinetic scrolling
scrolledWindowGetCaptureButtonPress scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_capture_button_press scrolledWindow'
    let result' = (/= 0) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetCaptureButtonPressMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetCaptureButtonPressMethodInfo a signature where
    overloadedMethod = scrolledWindowGetCaptureButtonPress

#endif

-- method ScrolledWindow::get_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrolled_window_get_hadjustment" gtk_scrolled_window_get_hadjustment :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Returns the horizontal scrollbar’s adjustment, used to connect the
-- horizontal scrollbar to the child widget’s horizontal scroll
-- functionality.
scrolledWindowGetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ the horizontal t'GI.Gtk.Objects.Adjustment.Adjustment'
scrolledWindowGetHadjustment scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_hadjustment scrolledWindow'
    checkUnexpectedReturnNULL "scrolledWindowGetHadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetHadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetHadjustmentMethodInfo a signature where
    overloadedMethod = scrolledWindowGetHadjustment

#endif

-- method ScrolledWindow::get_hscrollbar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_hscrollbar" gtk_scrolled_window_get_hscrollbar :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the horizontal scrollbar of /@scrolledWindow@/.
-- 
-- /Since: 2.8/
scrolledWindowGetHscrollbar ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the horizontal scrollbar of the scrolled window.
scrolledWindowGetHscrollbar scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_hscrollbar scrolledWindow'
    checkUnexpectedReturnNULL "scrolledWindowGetHscrollbar" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetHscrollbarMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetHscrollbarMethodInfo a signature where
    overloadedMethod = scrolledWindowGetHscrollbar

#endif

-- method ScrolledWindow::get_kinetic_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_kinetic_scrolling" gtk_scrolled_window_get_kinetic_scrolling :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CInt

-- | Returns the specified kinetic scrolling behavior.
-- 
-- /Since: 3.4/
scrolledWindowGetKineticScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Bool
    -- ^ __Returns:__ the scrolling behavior flags.
scrolledWindowGetKineticScrolling scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_kinetic_scrolling scrolledWindow'
    let result' = (/= 0) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetKineticScrollingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetKineticScrollingMethodInfo a signature where
    overloadedMethod = scrolledWindowGetKineticScrolling

#endif

-- method ScrolledWindow::get_max_content_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_max_content_height" gtk_scrolled_window_get_max_content_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO Int32

-- | Returns the maximum content height set.
-- 
-- /Since: 3.22/
scrolledWindowGetMaxContentHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Int32
    -- ^ __Returns:__ the maximum content height, or -1
scrolledWindowGetMaxContentHeight scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_max_content_height scrolledWindow'
    touchManagedPtr scrolledWindow
    return result

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetMaxContentHeightMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetMaxContentHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowGetMaxContentHeight

#endif

-- method ScrolledWindow::get_max_content_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_max_content_width" gtk_scrolled_window_get_max_content_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO Int32

-- | Returns the maximum content width set.
-- 
-- /Since: 3.22/
scrolledWindowGetMaxContentWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Int32
    -- ^ __Returns:__ the maximum content width, or -1
scrolledWindowGetMaxContentWidth scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_max_content_width scrolledWindow'
    touchManagedPtr scrolledWindow
    return result

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetMaxContentWidthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetMaxContentWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowGetMaxContentWidth

#endif

-- method ScrolledWindow::get_min_content_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_min_content_height" gtk_scrolled_window_get_min_content_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO Int32

-- | Gets the minimal content height of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.0/
scrolledWindowGetMinContentHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Int32
    -- ^ __Returns:__ the minimal content height
scrolledWindowGetMinContentHeight scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_min_content_height scrolledWindow'
    touchManagedPtr scrolledWindow
    return result

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetMinContentHeightMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetMinContentHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowGetMinContentHeight

#endif

-- method ScrolledWindow::get_min_content_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_min_content_width" gtk_scrolled_window_get_min_content_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO Int32

-- | Gets the minimum content width of /@scrolledWindow@/, or -1 if not set.
-- 
-- /Since: 3.0/
scrolledWindowGetMinContentWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Int32
    -- ^ __Returns:__ the minimum content width
scrolledWindowGetMinContentWidth scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_min_content_width scrolledWindow'
    touchManagedPtr scrolledWindow
    return result

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetMinContentWidthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetMinContentWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowGetMinContentWidth

#endif

-- method ScrolledWindow::get_overlay_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_overlay_scrolling" gtk_scrolled_window_get_overlay_scrolling :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CInt

-- | Returns whether overlay scrolling is enabled for this scrolled window.
-- 
-- /Since: 3.16/
scrolledWindowGetOverlayScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if overlay scrolling is enabled
scrolledWindowGetOverlayScrolling scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_overlay_scrolling scrolledWindow'
    let result' = (/= 0) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetOverlayScrollingMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetOverlayScrollingMethodInfo a signature where
    overloadedMethod = scrolledWindowGetOverlayScrolling

#endif

-- method ScrolledWindow::get_placement
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "CornerType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrolled_window_get_placement" gtk_scrolled_window_get_placement :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CUInt

-- | Gets the placement of the contents with respect to the scrollbars
-- for the scrolled window. See 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetPlacement'.
scrolledWindowGetPlacement ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Enums.CornerType
    -- ^ __Returns:__ the current placement value.
    -- 
    -- See also 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetPlacement' and
    -- 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowUnsetPlacement'.
scrolledWindowGetPlacement scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_placement scrolledWindow'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetPlacementMethodInfo
instance (signature ~ (m Gtk.Enums.CornerType), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetPlacementMethodInfo a signature where
    overloadedMethod = scrolledWindowGetPlacement

#endif

-- method ScrolledWindow::get_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hscrollbar_policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PolicyType" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the policy\n    for the horizontal scrollbar, or %NULL"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       , Arg
--           { argCName = "vscrollbar_policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PolicyType" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location to store the policy\n    for the vertical scrollbar, or %NULL"
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

foreign import ccall "gtk_scrolled_window_get_policy" gtk_scrolled_window_get_policy :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Ptr CUInt ->                            -- hscrollbar_policy : TInterface (Name {namespace = "Gtk", name = "PolicyType"})
    Ptr CUInt ->                            -- vscrollbar_policy : TInterface (Name {namespace = "Gtk", name = "PolicyType"})
    IO ()

-- | Retrieves the current policy values for the horizontal and vertical
-- scrollbars. See 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetPolicy'.
scrolledWindowGetPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m ((Gtk.Enums.PolicyType, Gtk.Enums.PolicyType))
scrolledWindowGetPolicy scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    hscrollbarPolicy <- allocMem :: IO (Ptr CUInt)
    vscrollbarPolicy <- allocMem :: IO (Ptr CUInt)
    gtk_scrolled_window_get_policy scrolledWindow' hscrollbarPolicy vscrollbarPolicy
    hscrollbarPolicy' <- peek hscrollbarPolicy
    let hscrollbarPolicy'' = (toEnum . fromIntegral) hscrollbarPolicy'
    vscrollbarPolicy' <- peek vscrollbarPolicy
    let vscrollbarPolicy'' = (toEnum . fromIntegral) vscrollbarPolicy'
    touchManagedPtr scrolledWindow
    freeMem hscrollbarPolicy
    freeMem vscrollbarPolicy
    return (hscrollbarPolicy'', vscrollbarPolicy'')

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetPolicyMethodInfo
instance (signature ~ (m ((Gtk.Enums.PolicyType, Gtk.Enums.PolicyType))), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetPolicyMethodInfo a signature where
    overloadedMethod = scrolledWindowGetPolicy

#endif

-- method ScrolledWindow::get_propagate_natural_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_propagate_natural_height" gtk_scrolled_window_get_propagate_natural_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CInt

-- | Reports whether the natural height of the child will be calculated and propagated
-- through the scrolled window’s requested natural height.
-- 
-- /Since: 3.22/
scrolledWindowGetPropagateNaturalHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Bool
    -- ^ __Returns:__ whether natural height propagation is enabled.
scrolledWindowGetPropagateNaturalHeight scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_propagate_natural_height scrolledWindow'
    let result' = (/= 0) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetPropagateNaturalHeightMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetPropagateNaturalHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowGetPropagateNaturalHeight

#endif

-- method ScrolledWindow::get_propagate_natural_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_propagate_natural_width" gtk_scrolled_window_get_propagate_natural_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CInt

-- | Reports whether the natural width of the child will be calculated and propagated
-- through the scrolled window’s requested natural width.
-- 
-- /Since: 3.22/
scrolledWindowGetPropagateNaturalWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Bool
    -- ^ __Returns:__ whether natural width propagation is enabled.
scrolledWindowGetPropagateNaturalWidth scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_propagate_natural_width scrolledWindow'
    let result' = (/= 0) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetPropagateNaturalWidthMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetPropagateNaturalWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowGetPropagateNaturalWidth

#endif

-- method ScrolledWindow::get_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ShadowType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrolled_window_get_shadow_type" gtk_scrolled_window_get_shadow_type :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO CUInt

-- | Gets the shadow type of the scrolled window. See
-- 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetShadowType'.
scrolledWindowGetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Enums.ShadowType
    -- ^ __Returns:__ the current shadow type
scrolledWindowGetShadowType scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_shadow_type scrolledWindow'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetShadowTypeMethodInfo
instance (signature ~ (m Gtk.Enums.ShadowType), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetShadowTypeMethodInfo a signature where
    overloadedMethod = scrolledWindowGetShadowType

#endif

-- method ScrolledWindow::get_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Adjustment" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_scrolled_window_get_vadjustment" gtk_scrolled_window_get_vadjustment :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Returns the vertical scrollbar’s adjustment, used to connect the
-- vertical scrollbar to the child widget’s vertical scroll functionality.
scrolledWindowGetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Adjustment.Adjustment
    -- ^ __Returns:__ the vertical t'GI.Gtk.Objects.Adjustment.Adjustment'
scrolledWindowGetVadjustment scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_vadjustment scrolledWindow'
    checkUnexpectedReturnNULL "scrolledWindowGetVadjustment" result
    result' <- (newObject Gtk.Adjustment.Adjustment) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetVadjustmentMethodInfo
instance (signature ~ (m Gtk.Adjustment.Adjustment), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetVadjustmentMethodInfo a signature where
    overloadedMethod = scrolledWindowGetVadjustment

#endif

-- method ScrolledWindow::get_vscrollbar
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_get_vscrollbar" gtk_scrolled_window_get_vscrollbar :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the vertical scrollbar of /@scrolledWindow@/.
-- 
-- /Since: 2.8/
scrolledWindowGetVscrollbar ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ the vertical scrollbar of the scrolled window.
scrolledWindowGetVscrollbar scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    result <- gtk_scrolled_window_get_vscrollbar scrolledWindow'
    checkUnexpectedReturnNULL "scrolledWindowGetVscrollbar" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr scrolledWindow
    return result'

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowGetVscrollbarMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowGetVscrollbarMethodInfo a signature where
    overloadedMethod = scrolledWindowGetVscrollbar

#endif

-- method ScrolledWindow::set_capture_button_press
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "capture_button_press"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to capture button presses"
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

foreign import ccall "gtk_scrolled_window_set_capture_button_press" gtk_scrolled_window_set_capture_button_press :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CInt ->                                 -- capture_button_press : TBasicType TBoolean
    IO ()

-- | Changes the behaviour of /@scrolledWindow@/ with regard to the initial
-- event that possibly starts kinetic scrolling. When /@captureButtonPress@/
-- is set to 'P.True', the event is captured by the scrolled window, and
-- then later replayed if it is meant to go to the child widget.
-- 
-- This should be enabled if any child widgets perform non-reversible
-- actions on [buttonPressEvent]("GI.Gtk.Objects.Widget#signal:buttonPressEvent"). If they don\'t, and handle
-- additionally handle [grabBrokenEvent]("GI.Gtk.Objects.Widget#signal:grabBrokenEvent"), it might be better
-- to set /@captureButtonPress@/ to 'P.False'.
-- 
-- This setting only has an effect if kinetic scrolling is enabled.
-- 
-- /Since: 3.4/
scrolledWindowSetCaptureButtonPress ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Bool
    -- ^ /@captureButtonPress@/: 'P.True' to capture button presses
    -> m ()
scrolledWindowSetCaptureButtonPress scrolledWindow captureButtonPress = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let captureButtonPress' = (fromIntegral . fromEnum) captureButtonPress
    gtk_scrolled_window_set_capture_button_press scrolledWindow' captureButtonPress'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetCaptureButtonPressMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetCaptureButtonPressMethodInfo a signature where
    overloadedMethod = scrolledWindowSetCaptureButtonPress

#endif

-- method ScrolledWindow::set_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkAdjustment to use, or %NULL to create a new one"
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

foreign import ccall "gtk_scrolled_window_set_hadjustment" gtk_scrolled_window_set_hadjustment :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Ptr Gtk.Adjustment.Adjustment ->        -- hadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Adjustment.Adjustment' for the horizontal scrollbar.
scrolledWindowSetHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Maybe (b)
    -- ^ /@hadjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' to use, or 'P.Nothing' to create a new one
    -> m ()
scrolledWindowSetHadjustment scrolledWindow hadjustment = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    maybeHadjustment <- case hadjustment of
        Nothing -> return nullPtr
        Just jHadjustment -> do
            jHadjustment' <- unsafeManagedPtrCastPtr jHadjustment
            return jHadjustment'
    gtk_scrolled_window_set_hadjustment scrolledWindow' maybeHadjustment
    touchManagedPtr scrolledWindow
    whenJust hadjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetHadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsScrolledWindow a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ScrolledWindowSetHadjustmentMethodInfo a signature where
    overloadedMethod = scrolledWindowSetHadjustment

#endif

-- method ScrolledWindow::set_kinetic_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "kinetic_scrolling"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE to enable kinetic scrolling"
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

foreign import ccall "gtk_scrolled_window_set_kinetic_scrolling" gtk_scrolled_window_set_kinetic_scrolling :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CInt ->                                 -- kinetic_scrolling : TBasicType TBoolean
    IO ()

-- | Turns kinetic scrolling on or off.
-- Kinetic scrolling only applies to devices with source
-- 'GI.Gdk.Enums.InputSourceTouchscreen'.
-- 
-- /Since: 3.4/
scrolledWindowSetKineticScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Bool
    -- ^ /@kineticScrolling@/: 'P.True' to enable kinetic scrolling
    -> m ()
scrolledWindowSetKineticScrolling scrolledWindow kineticScrolling = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let kineticScrolling' = (fromIntegral . fromEnum) kineticScrolling
    gtk_scrolled_window_set_kinetic_scrolling scrolledWindow' kineticScrolling'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetKineticScrollingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetKineticScrollingMethodInfo a signature where
    overloadedMethod = scrolledWindowSetKineticScrolling

#endif

-- method ScrolledWindow::set_max_content_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the maximum content height"
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

foreign import ccall "gtk_scrolled_window_set_max_content_height" gtk_scrolled_window_set_max_content_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Int32 ->                                -- height : TBasicType TInt
    IO ()

-- | Sets the maximum height that /@scrolledWindow@/ should keep visible. The
-- /@scrolledWindow@/ will grow up to this height before it starts scrolling
-- the content.
-- 
-- It is a programming error to set the maximum content height to a value
-- smaller than t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/min-content-height/@.
-- 
-- /Since: 3.22/
scrolledWindowSetMaxContentHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Int32
    -- ^ /@height@/: the maximum content height
    -> m ()
scrolledWindowSetMaxContentHeight scrolledWindow height = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    gtk_scrolled_window_set_max_content_height scrolledWindow' height
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetMaxContentHeightMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetMaxContentHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowSetMaxContentHeight

#endif

-- method ScrolledWindow::set_max_content_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "the maximum content width"
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

foreign import ccall "gtk_scrolled_window_set_max_content_width" gtk_scrolled_window_set_max_content_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Int32 ->                                -- width : TBasicType TInt
    IO ()

-- | Sets the maximum width that /@scrolledWindow@/ should keep visible. The
-- /@scrolledWindow@/ will grow up to this width before it starts scrolling
-- the content.
-- 
-- It is a programming error to set the maximum content width to a value
-- smaller than t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/min-content-width/@.
-- 
-- /Since: 3.22/
scrolledWindowSetMaxContentWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Int32
    -- ^ /@width@/: the maximum content width
    -> m ()
scrolledWindowSetMaxContentWidth scrolledWindow width = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    gtk_scrolled_window_set_max_content_width scrolledWindow' width
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetMaxContentWidthMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetMaxContentWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowSetMaxContentWidth

#endif

-- method ScrolledWindow::set_min_content_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "height"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the minimal content height"
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

foreign import ccall "gtk_scrolled_window_set_min_content_height" gtk_scrolled_window_set_min_content_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Int32 ->                                -- height : TBasicType TInt
    IO ()

-- | Sets the minimum height that /@scrolledWindow@/ should keep visible.
-- Note that this can and (usually will) be smaller than the minimum
-- size of the content.
-- 
-- It is a programming error to set the minimum content height to a
-- value greater than t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/max-content-height/@.
-- 
-- /Since: 3.0/
scrolledWindowSetMinContentHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Int32
    -- ^ /@height@/: the minimal content height
    -> m ()
scrolledWindowSetMinContentHeight scrolledWindow height = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    gtk_scrolled_window_set_min_content_height scrolledWindow' height
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetMinContentHeightMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetMinContentHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowSetMinContentHeight

#endif

-- method ScrolledWindow::set_min_content_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
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
--                 { rawDocText = Just "the minimal content width"
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

foreign import ccall "gtk_scrolled_window_set_min_content_width" gtk_scrolled_window_set_min_content_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Int32 ->                                -- width : TBasicType TInt
    IO ()

-- | Sets the minimum width that /@scrolledWindow@/ should keep visible.
-- Note that this can and (usually will) be smaller than the minimum
-- size of the content.
-- 
-- It is a programming error to set the minimum content width to a
-- value greater than t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow':@/max-content-width/@.
-- 
-- /Since: 3.0/
scrolledWindowSetMinContentWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Int32
    -- ^ /@width@/: the minimal content width
    -> m ()
scrolledWindowSetMinContentWidth scrolledWindow width = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    gtk_scrolled_window_set_min_content_width scrolledWindow' width
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetMinContentWidthMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetMinContentWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowSetMinContentWidth

#endif

-- method ScrolledWindow::set_overlay_scrolling
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "overlay_scrolling"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to enable overlay scrolling"
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

foreign import ccall "gtk_scrolled_window_set_overlay_scrolling" gtk_scrolled_window_set_overlay_scrolling :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CInt ->                                 -- overlay_scrolling : TBasicType TBoolean
    IO ()

-- | Enables or disables overlay scrolling for this scrolled window.
-- 
-- /Since: 3.16/
scrolledWindowSetOverlayScrolling ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Bool
    -- ^ /@overlayScrolling@/: whether to enable overlay scrolling
    -> m ()
scrolledWindowSetOverlayScrolling scrolledWindow overlayScrolling = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let overlayScrolling' = (fromIntegral . fromEnum) overlayScrolling
    gtk_scrolled_window_set_overlay_scrolling scrolledWindow' overlayScrolling'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetOverlayScrollingMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetOverlayScrollingMethodInfo a signature where
    overloadedMethod = scrolledWindowSetOverlayScrolling

#endif

-- method ScrolledWindow::set_placement
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "window_placement"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "CornerType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "position of the child window"
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

foreign import ccall "gtk_scrolled_window_set_placement" gtk_scrolled_window_set_placement :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CUInt ->                                -- window_placement : TInterface (Name {namespace = "Gtk", name = "CornerType"})
    IO ()

-- | Sets the placement of the contents with respect to the scrollbars
-- for the scrolled window.
-- 
-- The default is 'GI.Gtk.Enums.CornerTypeTopLeft', meaning the child is
-- in the top left, with the scrollbars underneath and to the right.
-- Other values in t'GI.Gtk.Enums.CornerType' are 'GI.Gtk.Enums.CornerTypeTopRight',
-- 'GI.Gtk.Enums.CornerTypeBottomLeft', and 'GI.Gtk.Enums.CornerTypeBottomRight'.
-- 
-- See also 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowGetPlacement' and
-- 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowUnsetPlacement'.
scrolledWindowSetPlacement ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Gtk.Enums.CornerType
    -- ^ /@windowPlacement@/: position of the child window
    -> m ()
scrolledWindowSetPlacement scrolledWindow windowPlacement = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let windowPlacement' = (fromIntegral . fromEnum) windowPlacement
    gtk_scrolled_window_set_placement scrolledWindow' windowPlacement'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetPlacementMethodInfo
instance (signature ~ (Gtk.Enums.CornerType -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetPlacementMethodInfo a signature where
    overloadedMethod = scrolledWindowSetPlacement

#endif

-- method ScrolledWindow::set_policy
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "hscrollbar_policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PolicyType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "policy for horizontal bar"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "vscrollbar_policy"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PolicyType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "policy for vertical bar"
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

foreign import ccall "gtk_scrolled_window_set_policy" gtk_scrolled_window_set_policy :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CUInt ->                                -- hscrollbar_policy : TInterface (Name {namespace = "Gtk", name = "PolicyType"})
    CUInt ->                                -- vscrollbar_policy : TInterface (Name {namespace = "Gtk", name = "PolicyType"})
    IO ()

-- | Sets the scrollbar policy for the horizontal and vertical scrollbars.
-- 
-- The policy determines when the scrollbar should appear; it is a value
-- from the t'GI.Gtk.Enums.PolicyType' enumeration. If 'GI.Gtk.Enums.PolicyTypeAlways', the
-- scrollbar is always present; if 'GI.Gtk.Enums.PolicyTypeNever', the scrollbar is
-- never present; if 'GI.Gtk.Enums.PolicyTypeAutomatic', the scrollbar is present only
-- if needed (that is, if the slider part of the bar would be smaller
-- than the trough — the display is larger than the page size).
scrolledWindowSetPolicy ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Gtk.Enums.PolicyType
    -- ^ /@hscrollbarPolicy@/: policy for horizontal bar
    -> Gtk.Enums.PolicyType
    -- ^ /@vscrollbarPolicy@/: policy for vertical bar
    -> m ()
scrolledWindowSetPolicy scrolledWindow hscrollbarPolicy vscrollbarPolicy = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let hscrollbarPolicy' = (fromIntegral . fromEnum) hscrollbarPolicy
    let vscrollbarPolicy' = (fromIntegral . fromEnum) vscrollbarPolicy
    gtk_scrolled_window_set_policy scrolledWindow' hscrollbarPolicy' vscrollbarPolicy'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetPolicyMethodInfo
instance (signature ~ (Gtk.Enums.PolicyType -> Gtk.Enums.PolicyType -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetPolicyMethodInfo a signature where
    overloadedMethod = scrolledWindowSetPolicy

#endif

-- method ScrolledWindow::set_propagate_natural_height
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "propagate"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to propagate natural height"
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

foreign import ccall "gtk_scrolled_window_set_propagate_natural_height" gtk_scrolled_window_set_propagate_natural_height :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CInt ->                                 -- propagate : TBasicType TBoolean
    IO ()

-- | Sets whether the natural height of the child should be calculated and propagated
-- through the scrolled window’s requested natural height.
-- 
-- /Since: 3.22/
scrolledWindowSetPropagateNaturalHeight ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Bool
    -- ^ /@propagate@/: whether to propagate natural height
    -> m ()
scrolledWindowSetPropagateNaturalHeight scrolledWindow propagate = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let propagate' = (fromIntegral . fromEnum) propagate
    gtk_scrolled_window_set_propagate_natural_height scrolledWindow' propagate'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetPropagateNaturalHeightMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetPropagateNaturalHeightMethodInfo a signature where
    overloadedMethod = scrolledWindowSetPropagateNaturalHeight

#endif

-- method ScrolledWindow::set_propagate_natural_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "propagate"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to propagate natural width"
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

foreign import ccall "gtk_scrolled_window_set_propagate_natural_width" gtk_scrolled_window_set_propagate_natural_width :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CInt ->                                 -- propagate : TBasicType TBoolean
    IO ()

-- | Sets whether the natural width of the child should be calculated and propagated
-- through the scrolled window’s requested natural width.
-- 
-- /Since: 3.22/
scrolledWindowSetPropagateNaturalWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Bool
    -- ^ /@propagate@/: whether to propagate natural width
    -> m ()
scrolledWindowSetPropagateNaturalWidth scrolledWindow propagate = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let propagate' = (fromIntegral . fromEnum) propagate
    gtk_scrolled_window_set_propagate_natural_width scrolledWindow' propagate'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetPropagateNaturalWidthMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetPropagateNaturalWidthMethodInfo a signature where
    overloadedMethod = scrolledWindowSetPropagateNaturalWidth

#endif

-- method ScrolledWindow::set_shadow_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ShadowType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "kind of shadow to draw around scrolled window contents"
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

foreign import ccall "gtk_scrolled_window_set_shadow_type" gtk_scrolled_window_set_shadow_type :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    CUInt ->                                -- type : TInterface (Name {namespace = "Gtk", name = "ShadowType"})
    IO ()

-- | Changes the type of shadow drawn around the contents of
-- /@scrolledWindow@/.
scrolledWindowSetShadowType ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Gtk.Enums.ShadowType
    -- ^ /@type@/: kind of shadow to draw around scrolled window contents
    -> m ()
scrolledWindowSetShadowType scrolledWindow type_ = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    let type_' = (fromIntegral . fromEnum) type_
    gtk_scrolled_window_set_shadow_type scrolledWindow' type_'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetShadowTypeMethodInfo
instance (signature ~ (Gtk.Enums.ShadowType -> m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowSetShadowTypeMethodInfo a signature where
    overloadedMethod = scrolledWindowSetShadowType

#endif

-- method ScrolledWindow::set_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "vadjustment"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Adjustment" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GtkAdjustment to use, or %NULL to create a new one"
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

foreign import ccall "gtk_scrolled_window_set_vadjustment" gtk_scrolled_window_set_vadjustment :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    Ptr Gtk.Adjustment.Adjustment ->        -- vadjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Sets the t'GI.Gtk.Objects.Adjustment.Adjustment' for the vertical scrollbar.
scrolledWindowSetVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> Maybe (b)
    -- ^ /@vadjustment@/: the t'GI.Gtk.Objects.Adjustment.Adjustment' to use, or 'P.Nothing' to create a new one
    -> m ()
scrolledWindowSetVadjustment scrolledWindow vadjustment = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    maybeVadjustment <- case vadjustment of
        Nothing -> return nullPtr
        Just jVadjustment -> do
            jVadjustment' <- unsafeManagedPtrCastPtr jVadjustment
            return jVadjustment'
    gtk_scrolled_window_set_vadjustment scrolledWindow' maybeVadjustment
    touchManagedPtr scrolledWindow
    whenJust vadjustment touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowSetVadjustmentMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsScrolledWindow a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ScrolledWindowSetVadjustmentMethodInfo a signature where
    overloadedMethod = scrolledWindowSetVadjustment

#endif

-- method ScrolledWindow::unset_placement
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "scrolled_window"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ScrolledWindow" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkScrolledWindow"
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

foreign import ccall "gtk_scrolled_window_unset_placement" gtk_scrolled_window_unset_placement :: 
    Ptr ScrolledWindow ->                   -- scrolled_window : TInterface (Name {namespace = "Gtk", name = "ScrolledWindow"})
    IO ()

-- | Unsets the placement of the contents with respect to the scrollbars
-- for the scrolled window. If no window placement is set for a scrolled
-- window, it defaults to 'GI.Gtk.Enums.CornerTypeTopLeft'.
-- 
-- See also 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowSetPlacement' and
-- 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowGetPlacement'.
-- 
-- /Since: 2.10/
scrolledWindowUnsetPlacement ::
    (B.CallStack.HasCallStack, MonadIO m, IsScrolledWindow a) =>
    a
    -- ^ /@scrolledWindow@/: a t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow'
    -> m ()
scrolledWindowUnsetPlacement scrolledWindow = liftIO $ do
    scrolledWindow' <- unsafeManagedPtrCastPtr scrolledWindow
    gtk_scrolled_window_unset_placement scrolledWindow'
    touchManagedPtr scrolledWindow
    return ()

#if defined(ENABLE_OVERLOADING)
data ScrolledWindowUnsetPlacementMethodInfo
instance (signature ~ (m ()), MonadIO m, IsScrolledWindow a) => O.MethodInfo ScrolledWindowUnsetPlacementMethodInfo a signature where
    overloadedMethod = scrolledWindowUnsetPlacement

#endif

