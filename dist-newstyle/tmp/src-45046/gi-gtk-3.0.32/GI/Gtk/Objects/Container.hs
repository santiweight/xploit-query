{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A GTK+ user interface is constructed by nesting widgets inside widgets.
-- Container widgets are the inner nodes in the resulting tree of widgets:
-- they contain other widgets. So, for example, you might have a t'GI.Gtk.Objects.Window.Window'
-- containing a t'GI.Gtk.Objects.Frame.Frame' containing a t'GI.Gtk.Objects.Label.Label'. If you wanted an image instead
-- of a textual label inside the frame, you might replace the t'GI.Gtk.Objects.Label.Label' widget
-- with a t'GI.Gtk.Objects.Image.Image' widget.
-- 
-- There are two major kinds of container widgets in GTK+. Both are subclasses
-- of the abstract GtkContainer base class.
-- 
-- The first type of container widget has a single child widget and derives
-- from t'GI.Gtk.Objects.Bin.Bin'. These containers are decorators, which
-- add some kind of functionality to the child. For example, a t'GI.Gtk.Objects.Button.Button' makes
-- its child into a clickable button; a t'GI.Gtk.Objects.Frame.Frame' draws a frame around its child
-- and a t'GI.Gtk.Objects.Window.Window' places its child widget inside a top-level window.
-- 
-- The second type of container can have more than one child; its purpose is to
-- manage layout. This means that these containers assign
-- sizes and positions to their children. For example, a t'GI.Gtk.Objects.HBox.HBox' arranges its
-- children in a horizontal row, and a t'GI.Gtk.Objects.Grid.Grid' arranges the widgets it contains
-- in a two-dimensional grid.
-- 
-- For implementations of t'GI.Gtk.Objects.Container.Container' the virtual method t'GI.Gtk.Structs.ContainerClass.ContainerClass'.@/forall/@()
-- is always required, since it\'s used for drawing and other internal operations
-- on the children.
-- If the t'GI.Gtk.Objects.Container.Container' implementation expect to have non internal children
-- it\'s needed to implement both t'GI.Gtk.Structs.ContainerClass.ContainerClass'.@/add/@() and t'GI.Gtk.Structs.ContainerClass.ContainerClass'.@/remove/@().
-- If the GtkContainer implementation has internal children, they should be added
-- with 'GI.Gtk.Objects.Widget.widgetSetParent' on @/init()/@ and removed with 'GI.Gtk.Objects.Widget.widgetUnparent'
-- in the t'GI.Gtk.Structs.WidgetClass.WidgetClass'.@/destroy/@() implementation.
-- See more about implementing custom widgets at https:\/\/wiki.gnome.org\/HowDoI\/CustomWidgets
-- 
-- = Height for width geometry management
-- 
-- GTK+ uses a height-for-width (and width-for-height) geometry management system.
-- Height-for-width means that a widget can change how much vertical space it needs,
-- depending on the amount of horizontal space that it is given (and similar for
-- width-for-height).
-- 
-- There are some things to keep in mind when implementing container widgets
-- that make use of GTK+’s height for width geometry management system. First,
-- it’s important to note that a container must prioritize one of its
-- dimensions, that is to say that a widget or container can only have a
-- t'GI.Gtk.Enums.SizeRequestMode' that is 'GI.Gtk.Enums.SizeRequestModeHeightForWidth' or
-- 'GI.Gtk.Enums.SizeRequestModeWidthForHeight'. However, every widget and container
-- must be able to respond to the APIs for both dimensions, i.e. even if a
-- widget has a request mode that is height-for-width, it is possible that
-- its parent will request its sizes using the width-for-height APIs.
-- 
-- To ensure that everything works properly, here are some guidelines to follow
-- when implementing height-for-width (or width-for-height) containers.
-- 
-- Each request mode involves 2 virtual methods. Height-for-width apis run
-- through 'GI.Gtk.Objects.Widget.widgetGetPreferredWidth' and then through 'GI.Gtk.Objects.Widget.widgetGetPreferredHeightForWidth'.
-- When handling requests in the opposite t'GI.Gtk.Enums.SizeRequestMode' it is important that
-- every widget request at least enough space to display all of its content at all times.
-- 
-- When 'GI.Gtk.Objects.Widget.widgetGetPreferredHeight' is called on a container that is height-for-width,
-- the container must return the height for its minimum width. This is easily achieved by
-- simply calling the reverse apis implemented for itself as follows:
-- 
-- 
-- === /C code/
-- >
-- >static void
-- >foo_container_get_preferred_height (GtkWidget *widget,
-- >                                    gint *min_height,
-- >                                    gint *nat_height)
-- >{
-- >   if (i_am_in_height_for_width_mode)
-- >     {
-- >       gint min_width;
-- >
-- >       GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
-- >                                                           &min_width,
-- >                                                           NULL);
-- >       GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width
-- >                                                          (widget,
-- >                                                           min_width,
-- >                                                           min_height,
-- >                                                           nat_height);
-- >     }
-- >   else
-- >     {
-- >       ... many containers support both request modes, execute the
-- >       real width-for-height request here by returning the
-- >       collective heights of all widgets that are stacked
-- >       vertically (or whatever is appropriate for this container)
-- >       ...
-- >     }
-- >}
-- 
-- 
-- Similarly, when 'GI.Gtk.Objects.Widget.widgetGetPreferredWidthForHeight' is called for a container or widget
-- that is height-for-width, it then only needs to return the base minimum width like so:
-- 
-- 
-- === /C code/
-- >
-- >static void
-- >foo_container_get_preferred_width_for_height (GtkWidget *widget,
-- >                                              gint for_height,
-- >                                              gint *min_width,
-- >                                              gint *nat_width)
-- >{
-- >   if (i_am_in_height_for_width_mode)
-- >     {
-- >       GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
-- >                                                           min_width,
-- >                                                           nat_width);
-- >     }
-- >   else
-- >     {
-- >       ... execute the real width-for-height request here based on
-- >       the required width of the children collectively if the
-- >       container were to be allocated the said height ...
-- >     }
-- >}
-- 
-- 
-- Height for width requests are generally implemented in terms of a virtual allocation
-- of widgets in the input orientation. Assuming an height-for-width request mode, a container
-- would implement the @/get_preferred_height_for_width()/@ virtual function by first calling
-- 'GI.Gtk.Objects.Widget.widgetGetPreferredWidth' for each of its children.
-- 
-- For each potential group of children that are lined up horizontally, the values returned by
-- 'GI.Gtk.Objects.Widget.widgetGetPreferredWidth' should be collected in an array of t'GI.Gtk.Structs.RequestedSize.RequestedSize' structures.
-- Any child spacing should be removed from the input /@forWidth@/ and then the collective size should be
-- allocated using the 'GI.Gtk.Functions.distributeNaturalAllocation' convenience function.
-- 
-- The container will then move on to request the preferred height for each child by using
-- 'GI.Gtk.Objects.Widget.widgetGetPreferredHeightForWidth' and using the sizes stored in the t'GI.Gtk.Structs.RequestedSize.RequestedSize' array.
-- 
-- To allocate a height-for-width container, it’s again important
-- to consider that a container must prioritize one dimension over the other. So if
-- a container is a height-for-width container it must first allocate all widgets horizontally
-- using a t'GI.Gtk.Structs.RequestedSize.RequestedSize' array and 'GI.Gtk.Functions.distributeNaturalAllocation' and then add any
-- extra space (if and where appropriate) for the widget to expand.
-- 
-- After adding all the expand space, the container assumes it was allocated sufficient
-- height to fit all of its content. At this time, the container must use the total horizontal sizes
-- of each widget to request the height-for-width of each of its children and store the requests in a
-- t'GI.Gtk.Structs.RequestedSize.RequestedSize' array for any widgets that stack vertically (for tabular containers this can
-- be generalized into the heights and widths of rows and columns).
-- The vertical space must then again be distributed using 'GI.Gtk.Functions.distributeNaturalAllocation'
-- while this time considering the allocated height of the widget minus any vertical spacing
-- that the container adds. Then vertical expand space should be added where appropriate and available
-- and the container should go on to actually allocating the child widgets.
-- 
-- See [GtkWidget’s geometry management section][geometry-management]
-- to learn more about implementing height-for-width geometry management for widgets.
-- 
-- = Child properties
-- 
-- GtkContainer introduces child properties.
-- These are object properties that are not specific
-- to either the container or the contained widget, but rather to their relation.
-- Typical examples of child properties are the position or pack-type of a widget
-- which is contained in a t'GI.Gtk.Objects.Box.Box'.
-- 
-- Use 'GI.Gtk.Structs.ContainerClass.containerClassInstallChildProperty' to install child properties
-- for a container class and 'GI.Gtk.Structs.ContainerClass.containerClassFindChildProperty' or
-- 'GI.Gtk.Structs.ContainerClass.containerClassListChildProperties' to get information about existing
-- child properties.
-- 
-- To set the value of a child property, use 'GI.Gtk.Objects.Container.containerChildSetProperty',
-- @/gtk_container_child_set()/@ or @/gtk_container_child_set_valist()/@.
-- To obtain the value of a child property, use
-- 'GI.Gtk.Objects.Container.containerChildGetProperty', @/gtk_container_child_get()/@ or
-- @/gtk_container_child_get_valist()/@. To emit notification about child property
-- changes, use 'GI.Gtk.Objects.Widget.widgetChildNotify'.
-- 
-- = GtkContainer as GtkBuildable
-- 
-- The GtkContainer implementation of the GtkBuildable interface supports
-- a \<packing> element for children, which can contain multiple \<property>
-- elements that specify child properties for the child.
-- 
-- Since 2.16, child properties can also be marked as translatable using
-- the same “translatable”, “comments” and “context” attributes that are used
-- for regular properties.
-- 
-- Since 3.16, containers can have a \<focus-chain> element containing multiple
-- \<widget> elements, one for each child that should be added to the focus
-- chain. The ”name” attribute gives the id of the widget.
-- 
-- An example of these properties in UI definitions:
-- >
-- ><object class="GtkBox">
-- >  <child>
-- >    <object class="GtkEntry" id="entry1"/>
-- >    <packing>
-- >      <property name="pack-type">start</property>
-- >    </packing>
-- >  </child>
-- >  <child>
-- >    <object class="GtkEntry" id="entry2"/>
-- >  </child>
-- >  <focus-chain>
-- >    <widget name="entry1"/>
-- >    <widget name="entry2"/>
-- >  </focus-chain>
-- ></object>
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Container
    ( 

-- * Exported types
    Container(..)                           ,
    IsContainer                             ,
    toContainer                             ,
    noContainer                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveContainerMethod                  ,
#endif


-- ** add #method:add#

#if defined(ENABLE_OVERLOADING)
    ContainerAddMethodInfo                  ,
#endif
    containerAdd                            ,


-- ** checkResize #method:checkResize#

#if defined(ENABLE_OVERLOADING)
    ContainerCheckResizeMethodInfo          ,
#endif
    containerCheckResize                    ,


-- ** childGetProperty #method:childGetProperty#

#if defined(ENABLE_OVERLOADING)
    ContainerChildGetPropertyMethodInfo     ,
#endif
    containerChildGetProperty               ,


-- ** childNotify #method:childNotify#

#if defined(ENABLE_OVERLOADING)
    ContainerChildNotifyMethodInfo          ,
#endif
    containerChildNotify                    ,


-- ** childNotifyByPspec #method:childNotifyByPspec#

#if defined(ENABLE_OVERLOADING)
    ContainerChildNotifyByPspecMethodInfo   ,
#endif
    containerChildNotifyByPspec             ,


-- ** childSetProperty #method:childSetProperty#

#if defined(ENABLE_OVERLOADING)
    ContainerChildSetPropertyMethodInfo     ,
#endif
    containerChildSetProperty               ,


-- ** childType #method:childType#

#if defined(ENABLE_OVERLOADING)
    ContainerChildTypeMethodInfo            ,
#endif
    containerChildType                      ,


-- ** forall #method:forall#

#if defined(ENABLE_OVERLOADING)
    ContainerForallMethodInfo               ,
#endif
    containerForall                         ,


-- ** foreach #method:foreach#

#if defined(ENABLE_OVERLOADING)
    ContainerForeachMethodInfo              ,
#endif
    containerForeach                        ,


-- ** getBorderWidth #method:getBorderWidth#

#if defined(ENABLE_OVERLOADING)
    ContainerGetBorderWidthMethodInfo       ,
#endif
    containerGetBorderWidth                 ,


-- ** getChildren #method:getChildren#

#if defined(ENABLE_OVERLOADING)
    ContainerGetChildrenMethodInfo          ,
#endif
    containerGetChildren                    ,


-- ** getFocusChain #method:getFocusChain#

#if defined(ENABLE_OVERLOADING)
    ContainerGetFocusChainMethodInfo        ,
#endif
    containerGetFocusChain                  ,


-- ** getFocusChild #method:getFocusChild#

#if defined(ENABLE_OVERLOADING)
    ContainerGetFocusChildMethodInfo        ,
#endif
    containerGetFocusChild                  ,


-- ** getFocusHadjustment #method:getFocusHadjustment#

#if defined(ENABLE_OVERLOADING)
    ContainerGetFocusHadjustmentMethodInfo  ,
#endif
    containerGetFocusHadjustment            ,


-- ** getFocusVadjustment #method:getFocusVadjustment#

#if defined(ENABLE_OVERLOADING)
    ContainerGetFocusVadjustmentMethodInfo  ,
#endif
    containerGetFocusVadjustment            ,


-- ** getPathForChild #method:getPathForChild#

#if defined(ENABLE_OVERLOADING)
    ContainerGetPathForChildMethodInfo      ,
#endif
    containerGetPathForChild                ,


-- ** getResizeMode #method:getResizeMode#

#if defined(ENABLE_OVERLOADING)
    ContainerGetResizeModeMethodInfo        ,
#endif
    containerGetResizeMode                  ,


-- ** propagateDraw #method:propagateDraw#

#if defined(ENABLE_OVERLOADING)
    ContainerPropagateDrawMethodInfo        ,
#endif
    containerPropagateDraw                  ,


-- ** remove #method:remove#

#if defined(ENABLE_OVERLOADING)
    ContainerRemoveMethodInfo               ,
#endif
    containerRemove                         ,


-- ** resizeChildren #method:resizeChildren#

#if defined(ENABLE_OVERLOADING)
    ContainerResizeChildrenMethodInfo       ,
#endif
    containerResizeChildren                 ,


-- ** setBorderWidth #method:setBorderWidth#

#if defined(ENABLE_OVERLOADING)
    ContainerSetBorderWidthMethodInfo       ,
#endif
    containerSetBorderWidth                 ,


-- ** setFocusChain #method:setFocusChain#

#if defined(ENABLE_OVERLOADING)
    ContainerSetFocusChainMethodInfo        ,
#endif
    containerSetFocusChain                  ,


-- ** setFocusChild #method:setFocusChild#

#if defined(ENABLE_OVERLOADING)
    ContainerSetFocusChildMethodInfo        ,
#endif
    containerSetFocusChild                  ,


-- ** setFocusHadjustment #method:setFocusHadjustment#

#if defined(ENABLE_OVERLOADING)
    ContainerSetFocusHadjustmentMethodInfo  ,
#endif
    containerSetFocusHadjustment            ,


-- ** setFocusVadjustment #method:setFocusVadjustment#

#if defined(ENABLE_OVERLOADING)
    ContainerSetFocusVadjustmentMethodInfo  ,
#endif
    containerSetFocusVadjustment            ,


-- ** setReallocateRedraws #method:setReallocateRedraws#

#if defined(ENABLE_OVERLOADING)
    ContainerSetReallocateRedrawsMethodInfo ,
#endif
    containerSetReallocateRedraws           ,


-- ** setResizeMode #method:setResizeMode#

#if defined(ENABLE_OVERLOADING)
    ContainerSetResizeModeMethodInfo        ,
#endif
    containerSetResizeMode                  ,


-- ** unsetFocusChain #method:unsetFocusChain#

#if defined(ENABLE_OVERLOADING)
    ContainerUnsetFocusChainMethodInfo      ,
#endif
    containerUnsetFocusChain                ,




 -- * Properties
-- ** borderWidth #attr:borderWidth#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ContainerBorderWidthPropertyInfo        ,
#endif
    constructContainerBorderWidth           ,
#if defined(ENABLE_OVERLOADING)
    containerBorderWidth                    ,
#endif
    getContainerBorderWidth                 ,
    setContainerBorderWidth                 ,


-- ** child #attr:child#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ContainerChildPropertyInfo              ,
#endif
    clearContainerChild                     ,
    constructContainerChild                 ,
#if defined(ENABLE_OVERLOADING)
    containerChild                          ,
#endif
    setContainerChild                       ,


-- ** resizeMode #attr:resizeMode#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ContainerResizeModePropertyInfo         ,
#endif
    constructContainerResizeMode            ,
#if defined(ENABLE_OVERLOADING)
    containerResizeMode                     ,
#endif
    getContainerResizeMode                  ,
    setContainerResizeMode                  ,




 -- * Signals
-- ** add #signal:add#

    C_ContainerAddCallback                  ,
    ContainerAddCallback                    ,
#if defined(ENABLE_OVERLOADING)
    ContainerAddSignalInfo                  ,
#endif
    afterContainerAdd                       ,
    genClosure_ContainerAdd                 ,
    mk_ContainerAddCallback                 ,
    noContainerAddCallback                  ,
    onContainerAdd                          ,
    wrap_ContainerAddCallback               ,


-- ** checkResize #signal:checkResize#

    C_ContainerCheckResizeCallback          ,
    ContainerCheckResizeCallback            ,
#if defined(ENABLE_OVERLOADING)
    ContainerCheckResizeSignalInfo          ,
#endif
    afterContainerCheckResize               ,
    genClosure_ContainerCheckResize         ,
    mk_ContainerCheckResizeCallback         ,
    noContainerCheckResizeCallback          ,
    onContainerCheckResize                  ,
    wrap_ContainerCheckResizeCallback       ,


-- ** remove #signal:remove#

    C_ContainerRemoveCallback               ,
    ContainerRemoveCallback                 ,
#if defined(ENABLE_OVERLOADING)
    ContainerRemoveSignalInfo               ,
#endif
    afterContainerRemove                    ,
    genClosure_ContainerRemove              ,
    mk_ContainerRemoveCallback              ,
    noContainerRemoveCallback               ,
    onContainerRemove                       ,
    wrap_ContainerRemoveCallback            ,


-- ** setFocusChild #signal:setFocusChild#

    C_ContainerSetFocusChildCallback        ,
    ContainerSetFocusChildCallback          ,
#if defined(ENABLE_OVERLOADING)
    ContainerSetFocusChildSignalInfo        ,
#endif
    afterContainerSetFocusChild             ,
    genClosure_ContainerSetFocusChild       ,
    mk_ContainerSetFocusChildCallback       ,
    noContainerSetFocusChildCallback        ,
    onContainerSetFocusChild                ,
    wrap_ContainerSetFocusChildCallback     ,




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
import qualified GI.Cairo.Structs.Context as Cairo.Context
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gtk.Callbacks as Gtk.Callbacks
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Adjustment as Gtk.Adjustment
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget
import {-# SOURCE #-} qualified GI.Gtk.Structs.WidgetPath as Gtk.WidgetPath

-- | Memory-managed wrapper type.
newtype Container = Container (ManagedPtr Container)
    deriving (Eq)
foreign import ccall "gtk_container_get_type"
    c_gtk_container_get_type :: IO GType

instance GObject Container where
    gobjectType = c_gtk_container_get_type
    

-- | Convert 'Container' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Container where
    toGValue o = do
        gtype <- c_gtk_container_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Container)
        B.ManagedPtr.newObject Container ptr
        
    

-- | Type class for types which can be safely cast to `Container`, for instance with `toContainer`.
class (GObject o, O.IsDescendantOf Container o) => IsContainer o
instance (GObject o, O.IsDescendantOf Container o) => IsContainer o

instance O.HasParentTypes Container
type instance O.ParentTypes Container = '[Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Container`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toContainer :: (MonadIO m, IsContainer o) => o -> m Container
toContainer = liftIO . unsafeCastTo Container

-- | A convenience alias for `Nothing` :: `Maybe` `Container`.
noContainer :: Maybe Container
noContainer = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveContainerMethod (t :: Symbol) (o :: *) :: * where
    ResolveContainerMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveContainerMethod "add" o = ContainerAddMethodInfo
    ResolveContainerMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveContainerMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveContainerMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveContainerMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveContainerMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveContainerMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveContainerMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveContainerMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveContainerMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveContainerMethod "checkResize" o = ContainerCheckResizeMethodInfo
    ResolveContainerMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveContainerMethod "childGetProperty" o = ContainerChildGetPropertyMethodInfo
    ResolveContainerMethod "childNotify" o = ContainerChildNotifyMethodInfo
    ResolveContainerMethod "childNotifyByPspec" o = ContainerChildNotifyByPspecMethodInfo
    ResolveContainerMethod "childSetProperty" o = ContainerChildSetPropertyMethodInfo
    ResolveContainerMethod "childType" o = ContainerChildTypeMethodInfo
    ResolveContainerMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveContainerMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveContainerMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveContainerMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveContainerMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveContainerMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveContainerMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveContainerMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveContainerMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveContainerMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveContainerMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveContainerMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveContainerMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveContainerMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveContainerMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveContainerMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveContainerMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveContainerMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveContainerMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveContainerMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveContainerMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveContainerMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveContainerMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveContainerMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveContainerMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveContainerMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveContainerMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveContainerMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveContainerMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveContainerMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveContainerMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveContainerMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveContainerMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveContainerMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveContainerMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveContainerMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveContainerMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveContainerMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveContainerMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveContainerMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveContainerMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveContainerMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveContainerMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveContainerMethod "forall" o = ContainerForallMethodInfo
    ResolveContainerMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveContainerMethod "foreach" o = ContainerForeachMethodInfo
    ResolveContainerMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveContainerMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveContainerMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveContainerMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveContainerMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveContainerMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveContainerMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveContainerMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveContainerMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveContainerMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveContainerMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveContainerMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveContainerMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveContainerMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveContainerMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveContainerMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveContainerMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveContainerMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveContainerMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveContainerMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveContainerMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveContainerMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveContainerMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveContainerMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveContainerMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveContainerMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveContainerMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveContainerMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveContainerMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveContainerMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveContainerMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveContainerMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveContainerMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveContainerMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveContainerMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveContainerMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveContainerMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveContainerMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveContainerMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveContainerMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveContainerMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveContainerMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveContainerMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveContainerMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveContainerMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveContainerMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveContainerMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveContainerMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveContainerMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveContainerMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveContainerMethod "propagateDraw" o = ContainerPropagateDrawMethodInfo
    ResolveContainerMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveContainerMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveContainerMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveContainerMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveContainerMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveContainerMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveContainerMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveContainerMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveContainerMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveContainerMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveContainerMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveContainerMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveContainerMethod "remove" o = ContainerRemoveMethodInfo
    ResolveContainerMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveContainerMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveContainerMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveContainerMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveContainerMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveContainerMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveContainerMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveContainerMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveContainerMethod "resizeChildren" o = ContainerResizeChildrenMethodInfo
    ResolveContainerMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveContainerMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveContainerMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveContainerMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveContainerMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveContainerMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveContainerMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveContainerMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveContainerMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveContainerMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveContainerMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveContainerMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveContainerMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveContainerMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveContainerMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveContainerMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveContainerMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveContainerMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveContainerMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveContainerMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveContainerMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveContainerMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveContainerMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveContainerMethod "unsetFocusChain" o = ContainerUnsetFocusChainMethodInfo
    ResolveContainerMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveContainerMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveContainerMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveContainerMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveContainerMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveContainerMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveContainerMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveContainerMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveContainerMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveContainerMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveContainerMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveContainerMethod "getBorderWidth" o = ContainerGetBorderWidthMethodInfo
    ResolveContainerMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveContainerMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveContainerMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveContainerMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveContainerMethod "getChildren" o = ContainerGetChildrenMethodInfo
    ResolveContainerMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveContainerMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveContainerMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveContainerMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveContainerMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveContainerMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveContainerMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveContainerMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveContainerMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveContainerMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveContainerMethod "getFocusChain" o = ContainerGetFocusChainMethodInfo
    ResolveContainerMethod "getFocusChild" o = ContainerGetFocusChildMethodInfo
    ResolveContainerMethod "getFocusHadjustment" o = ContainerGetFocusHadjustmentMethodInfo
    ResolveContainerMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveContainerMethod "getFocusVadjustment" o = ContainerGetFocusVadjustmentMethodInfo
    ResolveContainerMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveContainerMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveContainerMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveContainerMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveContainerMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveContainerMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveContainerMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveContainerMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveContainerMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveContainerMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveContainerMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveContainerMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveContainerMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveContainerMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveContainerMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveContainerMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveContainerMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveContainerMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveContainerMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveContainerMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveContainerMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveContainerMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveContainerMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveContainerMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveContainerMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveContainerMethod "getPathForChild" o = ContainerGetPathForChildMethodInfo
    ResolveContainerMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveContainerMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveContainerMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveContainerMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveContainerMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveContainerMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveContainerMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveContainerMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveContainerMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveContainerMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveContainerMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveContainerMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveContainerMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveContainerMethod "getResizeMode" o = ContainerGetResizeModeMethodInfo
    ResolveContainerMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveContainerMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveContainerMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveContainerMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveContainerMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveContainerMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveContainerMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveContainerMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveContainerMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveContainerMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveContainerMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveContainerMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveContainerMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveContainerMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveContainerMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveContainerMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveContainerMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveContainerMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveContainerMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveContainerMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveContainerMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveContainerMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveContainerMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveContainerMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveContainerMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveContainerMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveContainerMethod "setBorderWidth" o = ContainerSetBorderWidthMethodInfo
    ResolveContainerMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveContainerMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveContainerMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveContainerMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveContainerMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveContainerMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveContainerMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveContainerMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveContainerMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveContainerMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveContainerMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveContainerMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveContainerMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveContainerMethod "setFocusChain" o = ContainerSetFocusChainMethodInfo
    ResolveContainerMethod "setFocusChild" o = ContainerSetFocusChildMethodInfo
    ResolveContainerMethod "setFocusHadjustment" o = ContainerSetFocusHadjustmentMethodInfo
    ResolveContainerMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveContainerMethod "setFocusVadjustment" o = ContainerSetFocusVadjustmentMethodInfo
    ResolveContainerMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveContainerMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveContainerMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveContainerMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveContainerMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveContainerMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveContainerMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveContainerMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveContainerMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveContainerMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveContainerMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveContainerMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveContainerMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveContainerMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveContainerMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveContainerMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveContainerMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveContainerMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveContainerMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveContainerMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveContainerMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveContainerMethod "setReallocateRedraws" o = ContainerSetReallocateRedrawsMethodInfo
    ResolveContainerMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveContainerMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveContainerMethod "setResizeMode" o = ContainerSetResizeModeMethodInfo
    ResolveContainerMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveContainerMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveContainerMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveContainerMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveContainerMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveContainerMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveContainerMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveContainerMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveContainerMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveContainerMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveContainerMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveContainerMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveContainerMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveContainerMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveContainerMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveContainerMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveContainerMethod t Container, O.MethodInfo info Container p) => OL.IsLabel t (Container -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Container::add
-- | /No description available in the introspection data./
type ContainerAddCallback =
    Gtk.Widget.Widget
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ContainerAddCallback`@.
noContainerAddCallback :: Maybe ContainerAddCallback
noContainerAddCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ContainerAddCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ContainerAddCallback`.
foreign import ccall "wrapper"
    mk_ContainerAddCallback :: C_ContainerAddCallback -> IO (FunPtr C_ContainerAddCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ContainerAdd :: MonadIO m => ContainerAddCallback -> m (GClosure C_ContainerAddCallback)
genClosure_ContainerAdd cb = liftIO $ do
    let cb' = wrap_ContainerAddCallback cb
    mk_ContainerAddCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ContainerAddCallback` into a `C_ContainerAddCallback`.
wrap_ContainerAddCallback ::
    ContainerAddCallback ->
    C_ContainerAddCallback
wrap_ContainerAddCallback _cb _ object _ = do
    object' <- (newObject Gtk.Widget.Widget) object
    _cb  object'


-- | Connect a signal handler for the [add](#signal:add) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' container #add callback
-- @
-- 
-- 
onContainerAdd :: (IsContainer a, MonadIO m) => a -> ContainerAddCallback -> m SignalHandlerId
onContainerAdd obj cb = liftIO $ do
    let cb' = wrap_ContainerAddCallback cb
    cb'' <- mk_ContainerAddCallback cb'
    connectSignalFunPtr obj "add" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [add](#signal:add) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' container #add callback
-- @
-- 
-- 
afterContainerAdd :: (IsContainer a, MonadIO m) => a -> ContainerAddCallback -> m SignalHandlerId
afterContainerAdd obj cb = liftIO $ do
    let cb' = wrap_ContainerAddCallback cb
    cb'' <- mk_ContainerAddCallback cb'
    connectSignalFunPtr obj "add" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ContainerAddSignalInfo
instance SignalInfo ContainerAddSignalInfo where
    type HaskellCallbackType ContainerAddSignalInfo = ContainerAddCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ContainerAddCallback cb
        cb'' <- mk_ContainerAddCallback cb'
        connectSignalFunPtr obj "add" cb'' connectMode detail

#endif

-- signal Container::check-resize
-- | /No description available in the introspection data./
type ContainerCheckResizeCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ContainerCheckResizeCallback`@.
noContainerCheckResizeCallback :: Maybe ContainerCheckResizeCallback
noContainerCheckResizeCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ContainerCheckResizeCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ContainerCheckResizeCallback`.
foreign import ccall "wrapper"
    mk_ContainerCheckResizeCallback :: C_ContainerCheckResizeCallback -> IO (FunPtr C_ContainerCheckResizeCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ContainerCheckResize :: MonadIO m => ContainerCheckResizeCallback -> m (GClosure C_ContainerCheckResizeCallback)
genClosure_ContainerCheckResize cb = liftIO $ do
    let cb' = wrap_ContainerCheckResizeCallback cb
    mk_ContainerCheckResizeCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ContainerCheckResizeCallback` into a `C_ContainerCheckResizeCallback`.
wrap_ContainerCheckResizeCallback ::
    ContainerCheckResizeCallback ->
    C_ContainerCheckResizeCallback
wrap_ContainerCheckResizeCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [checkResize](#signal:checkResize) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' container #checkResize callback
-- @
-- 
-- 
onContainerCheckResize :: (IsContainer a, MonadIO m) => a -> ContainerCheckResizeCallback -> m SignalHandlerId
onContainerCheckResize obj cb = liftIO $ do
    let cb' = wrap_ContainerCheckResizeCallback cb
    cb'' <- mk_ContainerCheckResizeCallback cb'
    connectSignalFunPtr obj "check-resize" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [checkResize](#signal:checkResize) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' container #checkResize callback
-- @
-- 
-- 
afterContainerCheckResize :: (IsContainer a, MonadIO m) => a -> ContainerCheckResizeCallback -> m SignalHandlerId
afterContainerCheckResize obj cb = liftIO $ do
    let cb' = wrap_ContainerCheckResizeCallback cb
    cb'' <- mk_ContainerCheckResizeCallback cb'
    connectSignalFunPtr obj "check-resize" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ContainerCheckResizeSignalInfo
instance SignalInfo ContainerCheckResizeSignalInfo where
    type HaskellCallbackType ContainerCheckResizeSignalInfo = ContainerCheckResizeCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ContainerCheckResizeCallback cb
        cb'' <- mk_ContainerCheckResizeCallback cb'
        connectSignalFunPtr obj "check-resize" cb'' connectMode detail

#endif

-- signal Container::remove
-- | /No description available in the introspection data./
type ContainerRemoveCallback =
    Gtk.Widget.Widget
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ContainerRemoveCallback`@.
noContainerRemoveCallback :: Maybe ContainerRemoveCallback
noContainerRemoveCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ContainerRemoveCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ContainerRemoveCallback`.
foreign import ccall "wrapper"
    mk_ContainerRemoveCallback :: C_ContainerRemoveCallback -> IO (FunPtr C_ContainerRemoveCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ContainerRemove :: MonadIO m => ContainerRemoveCallback -> m (GClosure C_ContainerRemoveCallback)
genClosure_ContainerRemove cb = liftIO $ do
    let cb' = wrap_ContainerRemoveCallback cb
    mk_ContainerRemoveCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ContainerRemoveCallback` into a `C_ContainerRemoveCallback`.
wrap_ContainerRemoveCallback ::
    ContainerRemoveCallback ->
    C_ContainerRemoveCallback
wrap_ContainerRemoveCallback _cb _ object _ = do
    object' <- (newObject Gtk.Widget.Widget) object
    _cb  object'


-- | Connect a signal handler for the [remove](#signal:remove) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' container #remove callback
-- @
-- 
-- 
onContainerRemove :: (IsContainer a, MonadIO m) => a -> ContainerRemoveCallback -> m SignalHandlerId
onContainerRemove obj cb = liftIO $ do
    let cb' = wrap_ContainerRemoveCallback cb
    cb'' <- mk_ContainerRemoveCallback cb'
    connectSignalFunPtr obj "remove" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [remove](#signal:remove) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' container #remove callback
-- @
-- 
-- 
afterContainerRemove :: (IsContainer a, MonadIO m) => a -> ContainerRemoveCallback -> m SignalHandlerId
afterContainerRemove obj cb = liftIO $ do
    let cb' = wrap_ContainerRemoveCallback cb
    cb'' <- mk_ContainerRemoveCallback cb'
    connectSignalFunPtr obj "remove" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ContainerRemoveSignalInfo
instance SignalInfo ContainerRemoveSignalInfo where
    type HaskellCallbackType ContainerRemoveSignalInfo = ContainerRemoveCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ContainerRemoveCallback cb
        cb'' <- mk_ContainerRemoveCallback cb'
        connectSignalFunPtr obj "remove" cb'' connectMode detail

#endif

-- signal Container::set-focus-child
-- | /No description available in the introspection data./
type ContainerSetFocusChildCallback =
    Gtk.Widget.Widget
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ContainerSetFocusChildCallback`@.
noContainerSetFocusChildCallback :: Maybe ContainerSetFocusChildCallback
noContainerSetFocusChildCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ContainerSetFocusChildCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ContainerSetFocusChildCallback`.
foreign import ccall "wrapper"
    mk_ContainerSetFocusChildCallback :: C_ContainerSetFocusChildCallback -> IO (FunPtr C_ContainerSetFocusChildCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ContainerSetFocusChild :: MonadIO m => ContainerSetFocusChildCallback -> m (GClosure C_ContainerSetFocusChildCallback)
genClosure_ContainerSetFocusChild cb = liftIO $ do
    let cb' = wrap_ContainerSetFocusChildCallback cb
    mk_ContainerSetFocusChildCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ContainerSetFocusChildCallback` into a `C_ContainerSetFocusChildCallback`.
wrap_ContainerSetFocusChildCallback ::
    ContainerSetFocusChildCallback ->
    C_ContainerSetFocusChildCallback
wrap_ContainerSetFocusChildCallback _cb _ object _ = do
    object' <- (newObject Gtk.Widget.Widget) object
    _cb  object'


-- | Connect a signal handler for the [setFocusChild](#signal:setFocusChild) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' container #setFocusChild callback
-- @
-- 
-- 
onContainerSetFocusChild :: (IsContainer a, MonadIO m) => a -> ContainerSetFocusChildCallback -> m SignalHandlerId
onContainerSetFocusChild obj cb = liftIO $ do
    let cb' = wrap_ContainerSetFocusChildCallback cb
    cb'' <- mk_ContainerSetFocusChildCallback cb'
    connectSignalFunPtr obj "set-focus-child" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [setFocusChild](#signal:setFocusChild) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' container #setFocusChild callback
-- @
-- 
-- 
afterContainerSetFocusChild :: (IsContainer a, MonadIO m) => a -> ContainerSetFocusChildCallback -> m SignalHandlerId
afterContainerSetFocusChild obj cb = liftIO $ do
    let cb' = wrap_ContainerSetFocusChildCallback cb
    cb'' <- mk_ContainerSetFocusChildCallback cb'
    connectSignalFunPtr obj "set-focus-child" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ContainerSetFocusChildSignalInfo
instance SignalInfo ContainerSetFocusChildSignalInfo where
    type HaskellCallbackType ContainerSetFocusChildSignalInfo = ContainerSetFocusChildCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ContainerSetFocusChildCallback cb
        cb'' <- mk_ContainerSetFocusChildCallback cb'
        connectSignalFunPtr obj "set-focus-child" cb'' connectMode detail

#endif

-- VVV Prop "border-width"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@border-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' container #borderWidth
-- @
getContainerBorderWidth :: (MonadIO m, IsContainer o) => o -> m Word32
getContainerBorderWidth obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "border-width"

-- | Set the value of the “@border-width@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' container [ #borderWidth 'Data.GI.Base.Attributes.:=' value ]
-- @
setContainerBorderWidth :: (MonadIO m, IsContainer o) => o -> Word32 -> m ()
setContainerBorderWidth obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "border-width" val

-- | Construct a `GValueConstruct` with valid value for the “@border-width@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructContainerBorderWidth :: (IsContainer o) => Word32 -> IO (GValueConstruct o)
constructContainerBorderWidth val = B.Properties.constructObjectPropertyUInt32 "border-width" val

#if defined(ENABLE_OVERLOADING)
data ContainerBorderWidthPropertyInfo
instance AttrInfo ContainerBorderWidthPropertyInfo where
    type AttrAllowedOps ContainerBorderWidthPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ContainerBorderWidthPropertyInfo = IsContainer
    type AttrSetTypeConstraint ContainerBorderWidthPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint ContainerBorderWidthPropertyInfo = (~) Word32
    type AttrTransferType ContainerBorderWidthPropertyInfo = Word32
    type AttrGetType ContainerBorderWidthPropertyInfo = Word32
    type AttrLabel ContainerBorderWidthPropertyInfo = "border-width"
    type AttrOrigin ContainerBorderWidthPropertyInfo = Container
    attrGet = getContainerBorderWidth
    attrSet = setContainerBorderWidth
    attrTransfer _ v = do
        return v
    attrConstruct = constructContainerBorderWidth
    attrClear = undefined
#endif

-- VVV Prop "child"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Set the value of the “@child@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' container [ #child 'Data.GI.Base.Attributes.:=' value ]
-- @
setContainerChild :: (MonadIO m, IsContainer o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setContainerChild obj val = liftIO $ B.Properties.setObjectPropertyObject obj "child" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@child@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructContainerChild :: (IsContainer o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructContainerChild val = B.Properties.constructObjectPropertyObject "child" (Just val)

-- | Set the value of the “@child@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #child
-- @
clearContainerChild :: (MonadIO m, IsContainer o) => o -> m ()
clearContainerChild obj = liftIO $ B.Properties.setObjectPropertyObject obj "child" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data ContainerChildPropertyInfo
instance AttrInfo ContainerChildPropertyInfo where
    type AttrAllowedOps ContainerChildPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint ContainerChildPropertyInfo = IsContainer
    type AttrSetTypeConstraint ContainerChildPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ContainerChildPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ContainerChildPropertyInfo = Gtk.Widget.Widget
    type AttrGetType ContainerChildPropertyInfo = ()
    type AttrLabel ContainerChildPropertyInfo = "child"
    type AttrOrigin ContainerChildPropertyInfo = Container
    attrGet = undefined
    attrSet = setContainerChild
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructContainerChild
    attrClear = clearContainerChild
#endif

-- VVV Prop "resize-mode"
   -- Type: TInterface (Name {namespace = "Gtk", name = "ResizeMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@resize-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' container #resizeMode
-- @
getContainerResizeMode :: (MonadIO m, IsContainer o) => o -> m Gtk.Enums.ResizeMode
getContainerResizeMode obj = liftIO $ B.Properties.getObjectPropertyEnum obj "resize-mode"

-- | Set the value of the “@resize-mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' container [ #resizeMode 'Data.GI.Base.Attributes.:=' value ]
-- @
setContainerResizeMode :: (MonadIO m, IsContainer o) => o -> Gtk.Enums.ResizeMode -> m ()
setContainerResizeMode obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "resize-mode" val

-- | Construct a `GValueConstruct` with valid value for the “@resize-mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructContainerResizeMode :: (IsContainer o) => Gtk.Enums.ResizeMode -> IO (GValueConstruct o)
constructContainerResizeMode val = B.Properties.constructObjectPropertyEnum "resize-mode" val

#if defined(ENABLE_OVERLOADING)
data ContainerResizeModePropertyInfo
instance AttrInfo ContainerResizeModePropertyInfo where
    type AttrAllowedOps ContainerResizeModePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ContainerResizeModePropertyInfo = IsContainer
    type AttrSetTypeConstraint ContainerResizeModePropertyInfo = (~) Gtk.Enums.ResizeMode
    type AttrTransferTypeConstraint ContainerResizeModePropertyInfo = (~) Gtk.Enums.ResizeMode
    type AttrTransferType ContainerResizeModePropertyInfo = Gtk.Enums.ResizeMode
    type AttrGetType ContainerResizeModePropertyInfo = Gtk.Enums.ResizeMode
    type AttrLabel ContainerResizeModePropertyInfo = "resize-mode"
    type AttrOrigin ContainerResizeModePropertyInfo = Container
    attrGet = getContainerResizeMode
    attrSet = setContainerResizeMode
    attrTransfer _ v = do
        return v
    attrConstruct = constructContainerResizeMode
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Container
type instance O.AttributeList Container = ContainerAttributeList
type ContainerAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
containerBorderWidth :: AttrLabelProxy "borderWidth"
containerBorderWidth = AttrLabelProxy

containerChild :: AttrLabelProxy "child"
containerChild = AttrLabelProxy

containerResizeMode :: AttrLabelProxy "resizeMode"
containerResizeMode = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Container = ContainerSignalList
type ContainerSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Container::add
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a widget to be placed inside @container"
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

foreign import ccall "gtk_container_add" gtk_container_add :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds /@widget@/ to /@container@/. Typically used for simple containers
-- such as t'GI.Gtk.Objects.Window.Window', t'GI.Gtk.Objects.Frame.Frame', or t'GI.Gtk.Objects.Button.Button'; for more complicated
-- layout containers such as t'GI.Gtk.Objects.Box.Box' or t'GI.Gtk.Objects.Grid.Grid', this function will
-- pick default packing parameters that may not be correct.  So
-- consider functions such as 'GI.Gtk.Objects.Box.boxPackStart' and
-- 'GI.Gtk.Objects.Grid.gridAttach' as an alternative to 'GI.Gtk.Objects.Container.containerAdd' in
-- those cases. A widget may be added to only one container at a time;
-- you can’t place the same widget inside two different containers.
-- 
-- Note that some containers, such as t'GI.Gtk.Objects.ScrolledWindow.ScrolledWindow' or t'GI.Gtk.Objects.ListBox.ListBox',
-- may add intermediate children between the added widget and the
-- container.
containerAdd ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@widget@/: a widget to be placed inside /@container@/
    -> m ()
containerAdd container widget = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_container_add container' widget'
    touchManagedPtr container
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerAddMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerAddMethodInfo a signature where
    overloadedMethod = containerAdd

#endif

-- method Container::check_resize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_check_resize" gtk_container_check_resize :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO ()

-- | /No description available in the introspection data./
containerCheckResize ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -> m ()
containerCheckResize container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    gtk_container_check_resize container'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerCheckResizeMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerCheckResizeMethodInfo a signature where
    overloadedMethod = containerCheckResize

#endif

-- method Container::child_get_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a widget which is a child of @container"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the property to get"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Value" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a location to return the value"
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

foreign import ccall "gtk_container_child_get_property" gtk_container_child_get_property :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- property_name : TBasicType TUTF8
    Ptr GValue ->                           -- value : TInterface (Name {namespace = "GObject", name = "Value"})
    IO ()

-- | Gets the value of a child property for /@child@/ and /@container@/.
containerChildGetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: a widget which is a child of /@container@/
    -> T.Text
    -- ^ /@propertyName@/: the name of the property to get
    -> GValue
    -- ^ /@value@/: a location to return the value
    -> m ()
containerChildGetProperty container child propertyName value = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    propertyName' <- textToCString propertyName
    value' <- unsafeManagedPtrGetPtr value
    gtk_container_child_get_property container' child' propertyName' value'
    touchManagedPtr container
    touchManagedPtr child
    touchManagedPtr value
    freeMem propertyName'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerChildGetPropertyMethodInfo
instance (signature ~ (b -> T.Text -> GValue -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerChildGetPropertyMethodInfo a signature where
    overloadedMethod = containerChildGetProperty

#endif

-- method Container::child_notify
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child widget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "child_property"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the name of a child property installed on\n    the class of @container"
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

foreign import ccall "gtk_container_child_notify" gtk_container_child_notify :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- child_property : TBasicType TUTF8
    IO ()

-- | Emits a [childNotify]("GI.Gtk.Objects.Widget#signal:childNotify") signal for the
-- [child property][child-properties]
-- /@childProperty@/ on the child.
-- 
-- This is an analogue of 'GI.GObject.Objects.Object.objectNotify' for child properties.
-- 
-- Also see 'GI.Gtk.Objects.Widget.widgetChildNotify'.
-- 
-- /Since: 3.2/
containerChildNotify ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: the t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: the child widget
    -> T.Text
    -- ^ /@childProperty@/: the name of a child property installed on
    --     the class of /@container@/
    -> m ()
containerChildNotify container child childProperty = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    childProperty' <- textToCString childProperty
    gtk_container_child_notify container' child' childProperty'
    touchManagedPtr container
    touchManagedPtr child
    freeMem childProperty'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerChildNotifyMethodInfo
instance (signature ~ (b -> T.Text -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerChildNotifyMethodInfo a signature where
    overloadedMethod = containerChildNotify

#endif

-- method Container::child_notify_by_pspec
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child widget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pspec"
--           , argType = TParamSpec
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GParamSpec of a child property instealled on\n    the class of @container"
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

foreign import ccall "gtk_container_child_notify_by_pspec" gtk_container_child_notify_by_pspec :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr GParamSpec ->                       -- pspec : TParamSpec
    IO ()

-- | Emits a [childNotify]("GI.Gtk.Objects.Widget#signal:childNotify") signal for the
-- [child property][child-properties] specified by
-- /@pspec@/ on the child.
-- 
-- This is an analogue of 'GI.GObject.Objects.Object.objectNotifyByPspec' for child properties.
-- 
-- /Since: 3.18/
containerChildNotifyByPspec ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: the t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: the child widget
    -> GParamSpec
    -- ^ /@pspec@/: the t'GI.GObject.Objects.ParamSpec.ParamSpec' of a child property instealled on
    --     the class of /@container@/
    -> m ()
containerChildNotifyByPspec container child pspec = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    pspec' <- unsafeManagedPtrGetPtr pspec
    gtk_container_child_notify_by_pspec container' child' pspec'
    touchManagedPtr container
    touchManagedPtr child
    touchManagedPtr pspec
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerChildNotifyByPspecMethodInfo
instance (signature ~ (b -> GParamSpec -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerChildNotifyByPspecMethodInfo a signature where
    overloadedMethod = containerChildNotifyByPspec

#endif

-- method Container::child_set_property
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a widget which is a child of @container"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "property_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the name of the property to set"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType =
--               TInterface Name { namespace = "GObject" , name = "Value" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the value to set the property to"
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

foreign import ccall "gtk_container_child_set_property" gtk_container_child_set_property :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- property_name : TBasicType TUTF8
    Ptr GValue ->                           -- value : TInterface (Name {namespace = "GObject", name = "Value"})
    IO ()

-- | Sets a child property for /@child@/ and /@container@/.
containerChildSetProperty ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: a widget which is a child of /@container@/
    -> T.Text
    -- ^ /@propertyName@/: the name of the property to set
    -> GValue
    -- ^ /@value@/: the value to set the property to
    -> m ()
containerChildSetProperty container child propertyName value = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    propertyName' <- textToCString propertyName
    value' <- unsafeManagedPtrGetPtr value
    gtk_container_child_set_property container' child' propertyName' value'
    touchManagedPtr container
    touchManagedPtr child
    touchManagedPtr value
    freeMem propertyName'
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerChildSetPropertyMethodInfo
instance (signature ~ (b -> T.Text -> GValue -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerChildSetPropertyMethodInfo a signature where
    overloadedMethod = containerChildSetProperty

#endif

-- method Container::child_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TGType)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_child_type" gtk_container_child_type :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO CGType

-- | Returns the type of the children supported by the container.
-- 
-- Note that this may return @/G_TYPE_NONE/@ to indicate that no more
-- children can be added, e.g. for a t'GI.Gtk.Objects.Paned.Paned' which already has two
-- children.
containerChildType ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m GType
    -- ^ __Returns:__ a t'GType'.
containerChildType container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_child_type container'
    let result' = GType result
    touchManagedPtr container
    return result'

#if defined(ENABLE_OVERLOADING)
data ContainerChildTypeMethodInfo
instance (signature ~ (m GType), MonadIO m, IsContainer a) => O.MethodInfo ContainerChildTypeMethodInfo a signature where
    overloadedMethod = containerChildType

#endif

-- method Container::forall
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Callback" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a callback" , sinceVersion = Nothing }
--           , argScope = ScopeTypeCall
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "callback user data" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_forall" gtk_container_forall :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    FunPtr Gtk.Callbacks.C_Callback ->      -- callback : TInterface (Name {namespace = "Gtk", name = "Callback"})
    Ptr () ->                               -- callback_data : TBasicType TPtr
    IO ()

-- | Invokes /@callback@/ on each direct child of /@container@/, including
-- children that are considered “internal” (implementation details
-- of the container). “Internal” children generally weren’t added
-- by the user of the container, but were added by the container
-- implementation itself.
-- 
-- Most applications should use 'GI.Gtk.Objects.Container.containerForeach', rather
-- than 'GI.Gtk.Objects.Container.containerForall'.
containerForall ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Gtk.Callbacks.Callback
    -- ^ /@callback@/: a callback
    -> m ()
containerForall container callback = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    callback' <- Gtk.Callbacks.mk_Callback (Gtk.Callbacks.wrap_Callback Nothing (Gtk.Callbacks.drop_closures_Callback callback))
    let callbackData = nullPtr
    gtk_container_forall container' callback' callbackData
    safeFreeFunPtr $ castFunPtrToPtr callback'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerForallMethodInfo
instance (signature ~ (Gtk.Callbacks.Callback -> m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerForallMethodInfo a signature where
    overloadedMethod = containerForall

#endif

-- method Container::foreach
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Callback" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a callback" , sinceVersion = Nothing }
--           , argScope = ScopeTypeCall
--           , argClosure = 2
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "callback_data"
--           , argType = TBasicType TPtr
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "callback user data" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_foreach" gtk_container_foreach :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    FunPtr Gtk.Callbacks.C_Callback ->      -- callback : TInterface (Name {namespace = "Gtk", name = "Callback"})
    Ptr () ->                               -- callback_data : TBasicType TPtr
    IO ()

-- | Invokes /@callback@/ on each non-internal child of /@container@/.
-- See 'GI.Gtk.Objects.Container.containerForall' for details on what constitutes
-- an “internal” child. For all practical purposes, this function
-- should iterate over precisely those child widgets that were
-- added to the container by the application with explicit @/add()/@
-- calls.
-- 
-- It is permissible to remove the child from the /@callback@/ handler.
-- 
-- Most applications should use 'GI.Gtk.Objects.Container.containerForeach',
-- rather than 'GI.Gtk.Objects.Container.containerForall'.
containerForeach ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Gtk.Callbacks.Callback
    -- ^ /@callback@/: a callback
    -> m ()
containerForeach container callback = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    callback' <- Gtk.Callbacks.mk_Callback (Gtk.Callbacks.wrap_Callback Nothing (Gtk.Callbacks.drop_closures_Callback callback))
    let callbackData = nullPtr
    gtk_container_foreach container' callback' callbackData
    safeFreeFunPtr $ castFunPtrToPtr callback'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerForeachMethodInfo
instance (signature ~ (Gtk.Callbacks.Callback -> m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerForeachMethodInfo a signature where
    overloadedMethod = containerForeach

#endif

-- method Container::get_border_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_get_border_width" gtk_container_get_border_width :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO Word32

-- | Retrieves the border width of the container. See
-- 'GI.Gtk.Objects.Container.containerSetBorderWidth'.
containerGetBorderWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m Word32
    -- ^ __Returns:__ the current border width
containerGetBorderWidth container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_border_width container'
    touchManagedPtr container
    return result

#if defined(ENABLE_OVERLOADING)
data ContainerGetBorderWidthMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetBorderWidthMethodInfo a signature where
    overloadedMethod = containerGetBorderWidth

#endif

-- method Container::get_children
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TGList (TInterface Name { namespace = "Gtk" , name = "Widget" }))
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_get_children" gtk_container_get_children :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO (Ptr (GList (Ptr Gtk.Widget.Widget)))

-- | Returns the container’s non-internal children. See
-- 'GI.Gtk.Objects.Container.containerForall' for details on what constitutes an \"internal\" child.
containerGetChildren ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m [Gtk.Widget.Widget]
    -- ^ __Returns:__ a newly-allocated list of the container’s non-internal children.
containerGetChildren container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_children container'
    result' <- unpackGList result
    result'' <- mapM (newObject Gtk.Widget.Widget) result'
    g_list_free result
    touchManagedPtr container
    return result''

#if defined(ENABLE_OVERLOADING)
data ContainerGetChildrenMethodInfo
instance (signature ~ (m [Gtk.Widget.Widget]), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetChildrenMethodInfo a signature where
    overloadedMethod = containerGetChildren

#endif

-- method Container::get_focus_chain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "focusable_widgets"
--           , argType =
--               TGList (TInterface Name { namespace = "Gtk" , name = "Widget" })
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "location\n                    to store the focus chain of the\n                    container, or %NULL. You should free this list\n                    using g_list_free() when you are done with it, however\n                    no additional reference count is added to the\n                    individual widgets in the focus chain."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferContainer
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_get_focus_chain" gtk_container_get_focus_chain :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr (Ptr (GList (Ptr Gtk.Widget.Widget))) -> -- focusable_widgets : TGList (TInterface (Name {namespace = "Gtk", name = "Widget"}))
    IO CInt

{-# DEPRECATED containerGetFocusChain ["(Since version 3.24)","For overriding focus behavior, use the","    GtkWidgetClass[focus](#signal:focus) signal."] #-}
-- | Retrieves the focus chain of the container, if one has been
-- set explicitly. If no focus chain has been explicitly
-- set, GTK+ computes the focus chain based on the positions
-- of the children. In that case, GTK+ stores 'P.Nothing' in
-- /@focusableWidgets@/ and returns 'P.False'.
containerGetFocusChain ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m ((Bool, [Gtk.Widget.Widget]))
    -- ^ __Returns:__ 'P.True' if the focus chain of the container
    -- has been set explicitly.
containerGetFocusChain container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    focusableWidgets <- allocMem :: IO (Ptr (Ptr (GList (Ptr Gtk.Widget.Widget))))
    result <- gtk_container_get_focus_chain container' focusableWidgets
    let result' = (/= 0) result
    focusableWidgets' <- peek focusableWidgets
    focusableWidgets'' <- unpackGList focusableWidgets'
    focusableWidgets''' <- mapM (newObject Gtk.Widget.Widget) focusableWidgets''
    g_list_free focusableWidgets'
    touchManagedPtr container
    freeMem focusableWidgets
    return (result', focusableWidgets''')

#if defined(ENABLE_OVERLOADING)
data ContainerGetFocusChainMethodInfo
instance (signature ~ (m ((Bool, [Gtk.Widget.Widget]))), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetFocusChainMethodInfo a signature where
    overloadedMethod = containerGetFocusChain

#endif

-- method Container::get_focus_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_get_focus_child" gtk_container_get_focus_child :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the current focus child widget inside /@container@/. This is not the
-- currently focused widget. That can be obtained by calling
-- 'GI.Gtk.Objects.Window.windowGetFocus'.
-- 
-- /Since: 2.14/
containerGetFocusChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ The child widget which will receive the
    --          focus inside /@container@/ when the /@container@/ is focused,
    --          or 'P.Nothing' if none is set.
containerGetFocusChild container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_focus_child container'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr container
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContainerGetFocusChildMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetFocusChildMethodInfo a signature where
    overloadedMethod = containerGetFocusChild

#endif

-- method Container::get_focus_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_get_focus_hadjustment" gtk_container_get_focus_hadjustment :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Retrieves the horizontal focus adjustment for the container. See
-- gtk_container_set_focus_hadjustment ().
containerGetFocusHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m (Maybe Gtk.Adjustment.Adjustment)
    -- ^ __Returns:__ the horizontal focus adjustment, or 'P.Nothing' if
    --   none has been set.
containerGetFocusHadjustment container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_focus_hadjustment container'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Adjustment.Adjustment) result'
        return result''
    touchManagedPtr container
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContainerGetFocusHadjustmentMethodInfo
instance (signature ~ (m (Maybe Gtk.Adjustment.Adjustment)), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetFocusHadjustmentMethodInfo a signature where
    overloadedMethod = containerGetFocusHadjustment

#endif

-- method Container::get_focus_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_get_focus_vadjustment" gtk_container_get_focus_vadjustment :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO (Ptr Gtk.Adjustment.Adjustment)

-- | Retrieves the vertical focus adjustment for the container. See
-- 'GI.Gtk.Objects.Container.containerSetFocusVadjustment'.
containerGetFocusVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m (Maybe Gtk.Adjustment.Adjustment)
    -- ^ __Returns:__ the vertical focus adjustment, or
    --   'P.Nothing' if none has been set.
containerGetFocusVadjustment container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_focus_vadjustment container'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Adjustment.Adjustment) result'
        return result''
    touchManagedPtr container
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ContainerGetFocusVadjustmentMethodInfo
instance (signature ~ (m (Maybe Gtk.Adjustment.Adjustment)), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetFocusVadjustmentMethodInfo a signature where
    overloadedMethod = containerGetFocusVadjustment

#endif

-- method Container::get_path_for_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child of @container"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "WidgetPath" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_get_path_for_child" gtk_container_get_path_for_child :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr Gtk.WidgetPath.WidgetPath)

-- | Returns a newly created widget path representing all the widget hierarchy
-- from the toplevel down to and including /@child@/.
containerGetPathForChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: a child of /@container@/
    -> m Gtk.WidgetPath.WidgetPath
    -- ^ __Returns:__ A newly created t'GI.Gtk.Structs.WidgetPath.WidgetPath'
containerGetPathForChild container child = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_container_get_path_for_child container' child'
    checkUnexpectedReturnNULL "containerGetPathForChild" result
    result' <- (wrapBoxed Gtk.WidgetPath.WidgetPath) result
    touchManagedPtr container
    touchManagedPtr child
    return result'

#if defined(ENABLE_OVERLOADING)
data ContainerGetPathForChildMethodInfo
instance (signature ~ (b -> m Gtk.WidgetPath.WidgetPath), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerGetPathForChildMethodInfo a signature where
    overloadedMethod = containerGetPathForChild

#endif

-- method Container::get_resize_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "ResizeMode" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_container_get_resize_mode" gtk_container_get_resize_mode :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO CUInt

{-# DEPRECATED containerGetResizeMode ["(Since version 3.12)","Resize modes are deprecated. They aren\8217t necessary","    anymore since frame clocks and might introduce obscure bugs if","    used."] #-}
-- | Returns the resize mode for the container. See
-- gtk_container_set_resize_mode ().
containerGetResizeMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m Gtk.Enums.ResizeMode
    -- ^ __Returns:__ the current resize mode
containerGetResizeMode container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    result <- gtk_container_get_resize_mode container'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr container
    return result'

#if defined(ENABLE_OVERLOADING)
data ContainerGetResizeModeMethodInfo
instance (signature ~ (m Gtk.Enums.ResizeMode), MonadIO m, IsContainer a) => O.MethodInfo ContainerGetResizeModeMethodInfo a signature where
    overloadedMethod = containerGetResizeMode

#endif

-- method Container::propagate_draw
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child of @container"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "cr"
--           , argType =
--               TInterface Name { namespace = "cairo" , name = "Context" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "Cairo context as passed to the container. If you want to use @cr\n  in container\8217s draw function, consider using cairo_save() and\n  cairo_restore() before calling this function."
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

foreign import ccall "gtk_container_propagate_draw" gtk_container_propagate_draw :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Cairo.Context.Context ->            -- cr : TInterface (Name {namespace = "cairo", name = "Context"})
    IO ()

-- | When a container receives a call to the draw function, it must send
-- synthetic [draw]("GI.Gtk.Objects.Widget#signal:draw") calls to all children that don’t have their
-- own @/GdkWindows/@. This function provides a convenient way of doing this.
-- A container, when it receives a call to its [draw]("GI.Gtk.Objects.Widget#signal:draw") function,
-- calls 'GI.Gtk.Objects.Container.containerPropagateDraw' once for each child, passing in
-- the /@cr@/ the container received.
-- 
-- 'GI.Gtk.Objects.Container.containerPropagateDraw' takes care of translating the origin of /@cr@/,
-- and deciding whether the draw needs to be sent to the child. It is a
-- convenient and optimized way of getting the same effect as calling
-- 'GI.Gtk.Objects.Widget.widgetDraw' on the child directly.
-- 
-- In most cases, a container can simply either inherit the
-- [draw]("GI.Gtk.Objects.Widget#signal:draw") implementation from t'GI.Gtk.Objects.Container.Container', or do some drawing
-- and then chain to the [draw](#signal:draw) implementation from t'GI.Gtk.Objects.Container.Container'.
containerPropagateDraw ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@child@/: a child of /@container@/
    -> Cairo.Context.Context
    -- ^ /@cr@/: Cairo context as passed to the container. If you want to use /@cr@/
    --   in container’s draw function, consider using @/cairo_save()/@ and
    --   @/cairo_restore()/@ before calling this function.
    -> m ()
containerPropagateDraw container child cr = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    child' <- unsafeManagedPtrCastPtr child
    cr' <- unsafeManagedPtrGetPtr cr
    gtk_container_propagate_draw container' child' cr'
    touchManagedPtr container
    touchManagedPtr child
    touchManagedPtr cr
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerPropagateDrawMethodInfo
instance (signature ~ (b -> Cairo.Context.Context -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerPropagateDrawMethodInfo a signature where
    overloadedMethod = containerPropagateDraw

#endif

-- method Container::remove
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a current child of @container"
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

foreign import ccall "gtk_container_remove" gtk_container_remove :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Removes /@widget@/ from /@container@/. /@widget@/ must be inside /@container@/.
-- Note that /@container@/ will own a reference to /@widget@/, and that this
-- may be the last reference held; so removing a widget from its
-- container can destroy that widget. If you want to use /@widget@/
-- again, you need to add a reference to it before removing it from
-- a container, using 'GI.GObject.Objects.Object.objectRef'. If you don’t want to use /@widget@/
-- again it’s usually more efficient to simply destroy it directly
-- using 'GI.Gtk.Objects.Widget.widgetDestroy' since this will remove it from the
-- container and help break any circular reference count cycles.
containerRemove ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@widget@/: a current child of /@container@/
    -> m ()
containerRemove container widget = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    widget' <- unsafeManagedPtrCastPtr widget
    gtk_container_remove container' widget'
    touchManagedPtr container
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerRemoveMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerRemoveMethodInfo a signature where
    overloadedMethod = containerRemove

#endif

-- method Container::resize_children
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_resize_children" gtk_container_resize_children :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO ()

{-# DEPRECATED containerResizeChildren ["(Since version 3.10)"] #-}
-- | /No description available in the introspection data./
containerResizeChildren ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m ()
containerResizeChildren container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    gtk_container_resize_children container'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerResizeChildrenMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerResizeChildrenMethodInfo a signature where
    overloadedMethod = containerResizeChildren

#endif

-- method Container::set_border_width
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "border_width"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "amount of blank space to leave outside\n  the container. Valid values are in the range 0-65535 pixels."
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

foreign import ccall "gtk_container_set_border_width" gtk_container_set_border_width :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Word32 ->                               -- border_width : TBasicType TUInt
    IO ()

-- | Sets the border width of the container.
-- 
-- The border width of a container is the amount of space to leave
-- around the outside of the container. The only exception to this is
-- t'GI.Gtk.Objects.Window.Window'; because toplevel windows can’t leave space outside,
-- they leave the space inside. The border is added on all sides of
-- the container. To add space to only one side, use a specific
-- t'GI.Gtk.Objects.Widget.Widget':@/margin/@ property on the child widget, for example
-- t'GI.Gtk.Objects.Widget.Widget':@/margin-top/@.
containerSetBorderWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Word32
    -- ^ /@borderWidth@/: amount of blank space to leave outside
    --   the container. Valid values are in the range 0-65535 pixels.
    -> m ()
containerSetBorderWidth container borderWidth = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    gtk_container_set_border_width container' borderWidth
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetBorderWidthMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerSetBorderWidthMethodInfo a signature where
    overloadedMethod = containerSetBorderWidth

#endif

-- method Container::set_focus_chain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "focusable_widgets"
--           , argType =
--               TGList (TInterface Name { namespace = "Gtk" , name = "Widget" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n    the new focus chain"
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

foreign import ccall "gtk_container_set_focus_chain" gtk_container_set_focus_chain :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr (GList (Ptr Gtk.Widget.Widget)) ->  -- focusable_widgets : TGList (TInterface (Name {namespace = "Gtk", name = "Widget"}))
    IO ()

{-# DEPRECATED containerSetFocusChain ["(Since version 3.24)","For overriding focus behavior, use the","    GtkWidgetClass[focus](#signal:focus) signal."] #-}
-- | Sets a focus chain, overriding the one computed automatically by GTK+.
-- 
-- In principle each widget in the chain should be a descendant of the
-- container, but this is not enforced by this method, since it’s allowed
-- to set the focus chain before you pack the widgets, or have a widget
-- in the chain that isn’t always packed. The necessary checks are done
-- when the focus chain is actually traversed.
containerSetFocusChain ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> [b]
    -- ^ /@focusableWidgets@/: 
    --     the new focus chain
    -> m ()
containerSetFocusChain container focusableWidgets = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    focusableWidgets' <- mapM unsafeManagedPtrCastPtr focusableWidgets
    focusableWidgets'' <- packGList focusableWidgets'
    gtk_container_set_focus_chain container' focusableWidgets''
    touchManagedPtr container
    mapM_ touchManagedPtr focusableWidgets
    g_list_free focusableWidgets''
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetFocusChainMethodInfo
instance (signature ~ ([b] -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerSetFocusChainMethodInfo a signature where
    overloadedMethod = containerSetFocusChain

#endif

-- method Container::set_focus_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget, or %NULL"
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

foreign import ccall "gtk_container_set_focus_child" gtk_container_set_focus_child :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets, or unsets if /@child@/ is 'P.Nothing', the focused child of /@container@/.
-- 
-- This function emits the GtkContainer[set_focus_child](#signal:set_focus_child) signal of
-- /@container@/. Implementations of t'GI.Gtk.Objects.Container.Container' can override the
-- default behaviour by overriding the class closure of this signal.
-- 
-- This is function is mostly meant to be used by widgets. Applications can use
-- 'GI.Gtk.Objects.Widget.widgetGrabFocus' to manually set the focus to a specific widget.
containerSetFocusChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Maybe (b)
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget', or 'P.Nothing'
    -> m ()
containerSetFocusChild container child = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    maybeChild <- case child of
        Nothing -> return nullPtr
        Just jChild -> do
            jChild' <- unsafeManagedPtrCastPtr jChild
            return jChild'
    gtk_container_set_focus_child container' maybeChild
    touchManagedPtr container
    whenJust child touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetFocusChildMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsContainer a, Gtk.Widget.IsWidget b) => O.MethodInfo ContainerSetFocusChildMethodInfo a signature where
    overloadedMethod = containerSetFocusChild

#endif

-- method Container::set_focus_hadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                     Just
--                       "an adjustment which should be adjusted when the focus is\n  moved among the descendents of @container"
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

foreign import ccall "gtk_container_set_focus_hadjustment" gtk_container_set_focus_hadjustment :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Hooks up an adjustment to focus handling in a container, so when a child
-- of the container is focused, the adjustment is scrolled to show that
-- widget. This function sets the horizontal alignment.
-- See 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowGetHadjustment' for a typical way of obtaining
-- the adjustment and 'GI.Gtk.Objects.Container.containerSetFocusVadjustment' for setting
-- the vertical adjustment.
-- 
-- The adjustments have to be in pixel units and in the same coordinate
-- system as the allocation for immediate children of the container.
containerSetFocusHadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@adjustment@/: an adjustment which should be adjusted when the focus is
    --   moved among the descendents of /@container@/
    -> m ()
containerSetFocusHadjustment container adjustment = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_container_set_focus_hadjustment container' adjustment'
    touchManagedPtr container
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetFocusHadjustmentMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainer a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ContainerSetFocusHadjustmentMethodInfo a signature where
    overloadedMethod = containerSetFocusHadjustment

#endif

-- method Container::set_focus_vadjustment
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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
--                     Just
--                       "an adjustment which should be adjusted when the focus\n  is moved among the descendents of @container"
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

foreign import ccall "gtk_container_set_focus_vadjustment" gtk_container_set_focus_vadjustment :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    Ptr Gtk.Adjustment.Adjustment ->        -- adjustment : TInterface (Name {namespace = "Gtk", name = "Adjustment"})
    IO ()

-- | Hooks up an adjustment to focus handling in a container, so when a
-- child of the container is focused, the adjustment is scrolled to
-- show that widget. This function sets the vertical alignment. See
-- 'GI.Gtk.Objects.ScrolledWindow.scrolledWindowGetVadjustment' for a typical way of obtaining
-- the adjustment and 'GI.Gtk.Objects.Container.containerSetFocusHadjustment' for setting
-- the horizontal adjustment.
-- 
-- The adjustments have to be in pixel units and in the same coordinate
-- system as the allocation for immediate children of the container.
containerSetFocusVadjustment ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a, Gtk.Adjustment.IsAdjustment b) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> b
    -- ^ /@adjustment@/: an adjustment which should be adjusted when the focus
    --   is moved among the descendents of /@container@/
    -> m ()
containerSetFocusVadjustment container adjustment = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    adjustment' <- unsafeManagedPtrCastPtr adjustment
    gtk_container_set_focus_vadjustment container' adjustment'
    touchManagedPtr container
    touchManagedPtr adjustment
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetFocusVadjustmentMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsContainer a, Gtk.Adjustment.IsAdjustment b) => O.MethodInfo ContainerSetFocusVadjustmentMethodInfo a signature where
    overloadedMethod = containerSetFocusVadjustment

#endif

-- method Container::set_reallocate_redraws
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "needs_redraws"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the new value for the container\8217s @reallocate_redraws flag"
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

foreign import ccall "gtk_container_set_reallocate_redraws" gtk_container_set_reallocate_redraws :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    CInt ->                                 -- needs_redraws : TBasicType TBoolean
    IO ()

{-# DEPRECATED containerSetReallocateRedraws ["(Since version 3.14)","Call 'GI.Gtk.Objects.Widget.widgetQueueDraw' in your size_allocate handler."] #-}
-- | Sets the /@reallocateRedraws@/ flag of the container to the given value.
-- 
-- Containers requesting reallocation redraws get automatically
-- redrawn if any of their children changed allocation.
containerSetReallocateRedraws ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Bool
    -- ^ /@needsRedraws@/: the new value for the container’s /@reallocateRedraws@/ flag
    -> m ()
containerSetReallocateRedraws container needsRedraws = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    let needsRedraws' = (fromIntegral . fromEnum) needsRedraws
    gtk_container_set_reallocate_redraws container' needsRedraws'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetReallocateRedrawsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerSetReallocateRedrawsMethodInfo a signature where
    overloadedMethod = containerSetReallocateRedraws

#endif

-- method Container::set_resize_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resize_mode"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "ResizeMode" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new resize mode"
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

foreign import ccall "gtk_container_set_resize_mode" gtk_container_set_resize_mode :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    CUInt ->                                -- resize_mode : TInterface (Name {namespace = "Gtk", name = "ResizeMode"})
    IO ()

{-# DEPRECATED containerSetResizeMode ["(Since version 3.12)","Resize modes are deprecated. They aren\8217t necessary","    anymore since frame clocks and might introduce obscure bugs if","    used."] #-}
-- | Sets the resize mode for the container.
-- 
-- The resize mode of a container determines whether a resize request
-- will be passed to the container’s parent, queued for later execution
-- or executed immediately.
containerSetResizeMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> Gtk.Enums.ResizeMode
    -- ^ /@resizeMode@/: the new resize mode
    -> m ()
containerSetResizeMode container resizeMode = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    let resizeMode' = (fromIntegral . fromEnum) resizeMode
    gtk_container_set_resize_mode container' resizeMode'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerSetResizeModeMethodInfo
instance (signature ~ (Gtk.Enums.ResizeMode -> m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerSetResizeModeMethodInfo a signature where
    overloadedMethod = containerSetResizeMode

#endif

-- method Container::unset_focus_chain
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "container"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Container" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkContainer" , sinceVersion = Nothing }
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

foreign import ccall "gtk_container_unset_focus_chain" gtk_container_unset_focus_chain :: 
    Ptr Container ->                        -- container : TInterface (Name {namespace = "Gtk", name = "Container"})
    IO ()

{-# DEPRECATED containerUnsetFocusChain ["(Since version 3.24)","For overriding focus behavior, use the","    GtkWidgetClass[focus](#signal:focus) signal."] #-}
-- | Removes a focus chain explicitly set with 'GI.Gtk.Objects.Container.containerSetFocusChain'.
containerUnsetFocusChain ::
    (B.CallStack.HasCallStack, MonadIO m, IsContainer a) =>
    a
    -- ^ /@container@/: a t'GI.Gtk.Objects.Container.Container'
    -> m ()
containerUnsetFocusChain container = liftIO $ do
    container' <- unsafeManagedPtrCastPtr container
    gtk_container_unset_focus_chain container'
    touchManagedPtr container
    return ()

#if defined(ENABLE_OVERLOADING)
data ContainerUnsetFocusChainMethodInfo
instance (signature ~ (m ()), MonadIO m, IsContainer a) => O.MethodInfo ContainerUnsetFocusChainMethodInfo a signature where
    overloadedMethod = containerUnsetFocusChain

#endif

