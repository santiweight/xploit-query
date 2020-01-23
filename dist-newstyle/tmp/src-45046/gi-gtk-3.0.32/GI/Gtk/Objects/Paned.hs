{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- t'GI.Gtk.Objects.Paned.Paned' has two panes, arranged either
-- horizontally or vertically. The division between
-- the two panes is adjustable by the user by dragging
-- a handle.
-- 
-- Child widgets are
-- added to the panes of the widget with 'GI.Gtk.Objects.Paned.panedPack1' and
-- 'GI.Gtk.Objects.Paned.panedPack2'. The division between the two children is set by default
-- from the size requests of the children, but it can be adjusted by the
-- user.
-- 
-- A paned widget draws a separator between the two child widgets and a
-- small handle that the user can drag to adjust the division. It does not
-- draw any relief around the children or around the separator. (The space
-- in which the separator is called the gutter.) Often, it is useful to put
-- each child inside a t'GI.Gtk.Objects.Frame.Frame' with the shadow type set to 'GI.Gtk.Enums.ShadowTypeIn'
-- so that the gutter appears as a ridge. No separator is drawn if one of
-- the children is missing.
-- 
-- Each child has two options that can be set, /@resize@/ and /@shrink@/. If
-- /@resize@/ is true, then when the t'GI.Gtk.Objects.Paned.Paned' is resized, that child will
-- expand or shrink along with the paned widget. If /@shrink@/ is true, then
-- that child can be made smaller than its requisition by the user.
-- Setting /@shrink@/ to 'P.False' allows the application to set a minimum size.
-- If /@resize@/ is false for both children, then this is treated as if
-- /@resize@/ is true for both children.
-- 
-- The application can set the position of the slider as if it were set
-- by the user, by calling 'GI.Gtk.Objects.Paned.panedSetPosition'.
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >paned
-- >├── <child>
-- >├── separator[.wide]
-- >╰── <child>
-- 
-- 
-- GtkPaned has a main CSS node with name paned, and a subnode for
-- the separator with name separator. The subnode gets a .wide style
-- class when the paned is supposed to be wide.
-- 
-- In horizontal orientation, the nodes of the children are always arranged
-- from left to right. So :first-child will always select the leftmost child,
-- regardless of text direction.
-- 
-- == Creating a paned widget with minimum sizes.
-- 
-- 
-- === /C code/
-- >
-- >GtkWidget *hpaned = gtk_paned_new (GTK_ORIENTATION_HORIZONTAL);
-- >GtkWidget *frame1 = gtk_frame_new (NULL);
-- >GtkWidget *frame2 = gtk_frame_new (NULL);
-- >gtk_frame_set_shadow_type (GTK_FRAME (frame1), GTK_SHADOW_IN);
-- >gtk_frame_set_shadow_type (GTK_FRAME (frame2), GTK_SHADOW_IN);
-- >
-- >gtk_widget_set_size_request (hpaned, 200, -1);
-- >
-- >gtk_paned_pack1 (GTK_PANED (hpaned), frame1, TRUE, FALSE);
-- >gtk_widget_set_size_request (frame1, 50, -1);
-- >
-- >gtk_paned_pack2 (GTK_PANED (hpaned), frame2, FALSE, FALSE);
-- >gtk_widget_set_size_request (frame2, 50, -1);
-- 

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Paned
    ( 

-- * Exported types
    Paned(..)                               ,
    IsPaned                                 ,
    toPaned                                 ,
    noPaned                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePanedMethod                      ,
#endif


-- ** add1 #method:add1#

#if defined(ENABLE_OVERLOADING)
    PanedAdd1MethodInfo                     ,
#endif
    panedAdd1                               ,


-- ** add2 #method:add2#

#if defined(ENABLE_OVERLOADING)
    PanedAdd2MethodInfo                     ,
#endif
    panedAdd2                               ,


-- ** getChild1 #method:getChild1#

#if defined(ENABLE_OVERLOADING)
    PanedGetChild1MethodInfo                ,
#endif
    panedGetChild1                          ,


-- ** getChild2 #method:getChild2#

#if defined(ENABLE_OVERLOADING)
    PanedGetChild2MethodInfo                ,
#endif
    panedGetChild2                          ,


-- ** getHandleWindow #method:getHandleWindow#

#if defined(ENABLE_OVERLOADING)
    PanedGetHandleWindowMethodInfo          ,
#endif
    panedGetHandleWindow                    ,


-- ** getPosition #method:getPosition#

#if defined(ENABLE_OVERLOADING)
    PanedGetPositionMethodInfo              ,
#endif
    panedGetPosition                        ,


-- ** getWideHandle #method:getWideHandle#

#if defined(ENABLE_OVERLOADING)
    PanedGetWideHandleMethodInfo            ,
#endif
    panedGetWideHandle                      ,


-- ** new #method:new#

    panedNew                                ,


-- ** pack1 #method:pack1#

#if defined(ENABLE_OVERLOADING)
    PanedPack1MethodInfo                    ,
#endif
    panedPack1                              ,


-- ** pack2 #method:pack2#

#if defined(ENABLE_OVERLOADING)
    PanedPack2MethodInfo                    ,
#endif
    panedPack2                              ,


-- ** setPosition #method:setPosition#

#if defined(ENABLE_OVERLOADING)
    PanedSetPositionMethodInfo              ,
#endif
    panedSetPosition                        ,


-- ** setWideHandle #method:setWideHandle#

#if defined(ENABLE_OVERLOADING)
    PanedSetWideHandleMethodInfo            ,
#endif
    panedSetWideHandle                      ,




 -- * Properties
-- ** maxPosition #attr:maxPosition#
-- | The largest possible value for the position property.
-- This property is derived from the size and shrinkability
-- of the widget\'s children.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    PanedMaxPositionPropertyInfo            ,
#endif
    getPanedMaxPosition                     ,
#if defined(ENABLE_OVERLOADING)
    panedMaxPosition                        ,
#endif


-- ** minPosition #attr:minPosition#
-- | The smallest possible value for the position property.
-- This property is derived from the size and shrinkability
-- of the widget\'s children.
-- 
-- /Since: 2.4/

#if defined(ENABLE_OVERLOADING)
    PanedMinPositionPropertyInfo            ,
#endif
    getPanedMinPosition                     ,
#if defined(ENABLE_OVERLOADING)
    panedMinPosition                        ,
#endif


-- ** position #attr:position#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PanedPositionPropertyInfo               ,
#endif
    constructPanedPosition                  ,
    getPanedPosition                        ,
#if defined(ENABLE_OVERLOADING)
    panedPosition                           ,
#endif
    setPanedPosition                        ,


-- ** positionSet #attr:positionSet#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    PanedPositionSetPropertyInfo            ,
#endif
    constructPanedPositionSet               ,
    getPanedPositionSet                     ,
#if defined(ENABLE_OVERLOADING)
    panedPositionSet                        ,
#endif
    setPanedPositionSet                     ,


-- ** wideHandle #attr:wideHandle#
-- | Setting this property to 'P.True' indicates that the paned needs
-- to provide stronger visual separation (e.g. because it separates
-- between two notebooks, whose tab rows would otherwise merge visually).
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    PanedWideHandlePropertyInfo             ,
#endif
    constructPanedWideHandle                ,
    getPanedWideHandle                      ,
#if defined(ENABLE_OVERLOADING)
    panedWideHandle                         ,
#endif
    setPanedWideHandle                      ,




 -- * Signals
-- ** acceptPosition #signal:acceptPosition#

    C_PanedAcceptPositionCallback           ,
    PanedAcceptPositionCallback             ,
#if defined(ENABLE_OVERLOADING)
    PanedAcceptPositionSignalInfo           ,
#endif
    afterPanedAcceptPosition                ,
    genClosure_PanedAcceptPosition          ,
    mk_PanedAcceptPositionCallback          ,
    noPanedAcceptPositionCallback           ,
    onPanedAcceptPosition                   ,
    wrap_PanedAcceptPositionCallback        ,


-- ** cancelPosition #signal:cancelPosition#

    C_PanedCancelPositionCallback           ,
    PanedCancelPositionCallback             ,
#if defined(ENABLE_OVERLOADING)
    PanedCancelPositionSignalInfo           ,
#endif
    afterPanedCancelPosition                ,
    genClosure_PanedCancelPosition          ,
    mk_PanedCancelPositionCallback          ,
    noPanedCancelPositionCallback           ,
    onPanedCancelPosition                   ,
    wrap_PanedCancelPositionCallback        ,


-- ** cycleChildFocus #signal:cycleChildFocus#

    C_PanedCycleChildFocusCallback          ,
    PanedCycleChildFocusCallback            ,
#if defined(ENABLE_OVERLOADING)
    PanedCycleChildFocusSignalInfo          ,
#endif
    afterPanedCycleChildFocus               ,
    genClosure_PanedCycleChildFocus         ,
    mk_PanedCycleChildFocusCallback         ,
    noPanedCycleChildFocusCallback          ,
    onPanedCycleChildFocus                  ,
    wrap_PanedCycleChildFocusCallback       ,


-- ** cycleHandleFocus #signal:cycleHandleFocus#

    C_PanedCycleHandleFocusCallback         ,
    PanedCycleHandleFocusCallback           ,
#if defined(ENABLE_OVERLOADING)
    PanedCycleHandleFocusSignalInfo         ,
#endif
    afterPanedCycleHandleFocus              ,
    genClosure_PanedCycleHandleFocus        ,
    mk_PanedCycleHandleFocusCallback        ,
    noPanedCycleHandleFocusCallback         ,
    onPanedCycleHandleFocus                 ,
    wrap_PanedCycleHandleFocusCallback      ,


-- ** moveHandle #signal:moveHandle#

    C_PanedMoveHandleCallback               ,
    PanedMoveHandleCallback                 ,
#if defined(ENABLE_OVERLOADING)
    PanedMoveHandleSignalInfo               ,
#endif
    afterPanedMoveHandle                    ,
    genClosure_PanedMoveHandle              ,
    mk_PanedMoveHandleCallback              ,
    noPanedMoveHandleCallback               ,
    onPanedMoveHandle                       ,
    wrap_PanedMoveHandleCallback            ,


-- ** toggleHandleFocus #signal:toggleHandleFocus#

    C_PanedToggleHandleFocusCallback        ,
    PanedToggleHandleFocusCallback          ,
#if defined(ENABLE_OVERLOADING)
    PanedToggleHandleFocusSignalInfo        ,
#endif
    afterPanedToggleHandleFocus             ,
    genClosure_PanedToggleHandleFocus       ,
    mk_PanedToggleHandleFocusCallback       ,
    noPanedToggleHandleFocusCallback        ,
    onPanedToggleHandleFocus                ,
    wrap_PanedToggleHandleFocusCallback     ,




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
import qualified GI.Gdk.Objects.Window as Gdk.Window
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Orientable as Gtk.Orientable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Paned = Paned (ManagedPtr Paned)
    deriving (Eq)
foreign import ccall "gtk_paned_get_type"
    c_gtk_paned_get_type :: IO GType

instance GObject Paned where
    gobjectType = c_gtk_paned_get_type
    

-- | Convert 'Paned' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Paned where
    toGValue o = do
        gtype <- c_gtk_paned_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Paned)
        B.ManagedPtr.newObject Paned ptr
        
    

-- | Type class for types which can be safely cast to `Paned`, for instance with `toPaned`.
class (GObject o, O.IsDescendantOf Paned o) => IsPaned o
instance (GObject o, O.IsDescendantOf Paned o) => IsPaned o

instance O.HasParentTypes Paned
type instance O.ParentTypes Paned = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable, Gtk.Orientable.Orientable]

-- | Cast to `Paned`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPaned :: (MonadIO m, IsPaned o) => o -> m Paned
toPaned = liftIO . unsafeCastTo Paned

-- | A convenience alias for `Nothing` :: `Maybe` `Paned`.
noPaned :: Maybe Paned
noPaned = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolvePanedMethod (t :: Symbol) (o :: *) :: * where
    ResolvePanedMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolvePanedMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolvePanedMethod "add1" o = PanedAdd1MethodInfo
    ResolvePanedMethod "add2" o = PanedAdd2MethodInfo
    ResolvePanedMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolvePanedMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolvePanedMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolvePanedMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolvePanedMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolvePanedMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolvePanedMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePanedMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePanedMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolvePanedMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolvePanedMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolvePanedMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolvePanedMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolvePanedMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolvePanedMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolvePanedMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolvePanedMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolvePanedMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolvePanedMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolvePanedMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolvePanedMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolvePanedMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolvePanedMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolvePanedMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolvePanedMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolvePanedMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolvePanedMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolvePanedMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolvePanedMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolvePanedMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolvePanedMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolvePanedMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolvePanedMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolvePanedMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolvePanedMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolvePanedMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolvePanedMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolvePanedMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolvePanedMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolvePanedMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolvePanedMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolvePanedMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolvePanedMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolvePanedMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolvePanedMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolvePanedMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolvePanedMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolvePanedMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolvePanedMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolvePanedMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolvePanedMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolvePanedMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolvePanedMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolvePanedMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolvePanedMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolvePanedMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolvePanedMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolvePanedMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolvePanedMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolvePanedMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolvePanedMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePanedMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolvePanedMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolvePanedMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePanedMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePanedMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolvePanedMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolvePanedMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolvePanedMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolvePanedMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolvePanedMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolvePanedMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolvePanedMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolvePanedMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolvePanedMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolvePanedMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolvePanedMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolvePanedMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolvePanedMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolvePanedMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolvePanedMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolvePanedMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolvePanedMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolvePanedMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolvePanedMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolvePanedMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePanedMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolvePanedMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolvePanedMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolvePanedMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolvePanedMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolvePanedMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolvePanedMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolvePanedMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolvePanedMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolvePanedMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolvePanedMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolvePanedMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolvePanedMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolvePanedMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolvePanedMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolvePanedMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolvePanedMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolvePanedMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePanedMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePanedMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolvePanedMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolvePanedMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolvePanedMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolvePanedMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolvePanedMethod "pack1" o = PanedPack1MethodInfo
    ResolvePanedMethod "pack2" o = PanedPack2MethodInfo
    ResolvePanedMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolvePanedMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolvePanedMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolvePanedMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolvePanedMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolvePanedMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolvePanedMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolvePanedMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolvePanedMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolvePanedMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolvePanedMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolvePanedMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePanedMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePanedMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolvePanedMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolvePanedMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolvePanedMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolvePanedMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolvePanedMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolvePanedMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolvePanedMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolvePanedMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolvePanedMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolvePanedMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolvePanedMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolvePanedMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePanedMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolvePanedMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolvePanedMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolvePanedMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolvePanedMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolvePanedMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolvePanedMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolvePanedMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolvePanedMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolvePanedMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePanedMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePanedMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolvePanedMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolvePanedMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolvePanedMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePanedMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolvePanedMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolvePanedMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolvePanedMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolvePanedMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolvePanedMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePanedMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolvePanedMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolvePanedMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolvePanedMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePanedMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolvePanedMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolvePanedMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolvePanedMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolvePanedMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolvePanedMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolvePanedMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolvePanedMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolvePanedMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolvePanedMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolvePanedMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolvePanedMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolvePanedMethod "getChild1" o = PanedGetChild1MethodInfo
    ResolvePanedMethod "getChild2" o = PanedGetChild2MethodInfo
    ResolvePanedMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolvePanedMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolvePanedMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolvePanedMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolvePanedMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolvePanedMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolvePanedMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePanedMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolvePanedMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolvePanedMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolvePanedMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolvePanedMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolvePanedMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolvePanedMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolvePanedMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolvePanedMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolvePanedMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolvePanedMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolvePanedMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolvePanedMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolvePanedMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolvePanedMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolvePanedMethod "getHandleWindow" o = PanedGetHandleWindowMethodInfo
    ResolvePanedMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolvePanedMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolvePanedMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolvePanedMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolvePanedMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolvePanedMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolvePanedMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolvePanedMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolvePanedMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolvePanedMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolvePanedMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolvePanedMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolvePanedMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolvePanedMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolvePanedMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolvePanedMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolvePanedMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolvePanedMethod "getOrientation" o = Gtk.Orientable.OrientableGetOrientationMethodInfo
    ResolvePanedMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolvePanedMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolvePanedMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolvePanedMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolvePanedMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolvePanedMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolvePanedMethod "getPosition" o = PanedGetPositionMethodInfo
    ResolvePanedMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolvePanedMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolvePanedMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolvePanedMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolvePanedMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolvePanedMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolvePanedMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePanedMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePanedMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolvePanedMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolvePanedMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolvePanedMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolvePanedMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolvePanedMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolvePanedMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolvePanedMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolvePanedMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolvePanedMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolvePanedMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolvePanedMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolvePanedMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolvePanedMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolvePanedMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolvePanedMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolvePanedMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolvePanedMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolvePanedMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolvePanedMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolvePanedMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolvePanedMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolvePanedMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolvePanedMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolvePanedMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolvePanedMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolvePanedMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolvePanedMethod "getWideHandle" o = PanedGetWideHandleMethodInfo
    ResolvePanedMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolvePanedMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolvePanedMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolvePanedMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolvePanedMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolvePanedMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolvePanedMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolvePanedMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolvePanedMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolvePanedMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolvePanedMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolvePanedMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePanedMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePanedMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolvePanedMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolvePanedMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolvePanedMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolvePanedMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolvePanedMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolvePanedMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolvePanedMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolvePanedMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolvePanedMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolvePanedMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolvePanedMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolvePanedMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolvePanedMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolvePanedMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolvePanedMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolvePanedMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolvePanedMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolvePanedMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolvePanedMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolvePanedMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolvePanedMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolvePanedMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolvePanedMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolvePanedMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolvePanedMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolvePanedMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolvePanedMethod "setOrientation" o = Gtk.Orientable.OrientableSetOrientationMethodInfo
    ResolvePanedMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolvePanedMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolvePanedMethod "setPosition" o = PanedSetPositionMethodInfo
    ResolvePanedMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePanedMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolvePanedMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolvePanedMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolvePanedMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolvePanedMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolvePanedMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolvePanedMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolvePanedMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolvePanedMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolvePanedMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolvePanedMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolvePanedMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolvePanedMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolvePanedMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolvePanedMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolvePanedMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolvePanedMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolvePanedMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolvePanedMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolvePanedMethod "setWideHandle" o = PanedSetWideHandleMethodInfo
    ResolvePanedMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolvePanedMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePanedMethod t Paned, O.MethodInfo info Paned p) => OL.IsLabel t (Paned -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Paned::accept-position
-- | The [acceptPosition](#signal:acceptPosition) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to accept the current position of the handle when
-- moving it using key bindings.
-- 
-- The default binding for this signal is Return or Space.
-- 
-- /Since: 2.0/
type PanedAcceptPositionCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedAcceptPositionCallback`@.
noPanedAcceptPositionCallback :: Maybe PanedAcceptPositionCallback
noPanedAcceptPositionCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedAcceptPositionCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedAcceptPositionCallback`.
foreign import ccall "wrapper"
    mk_PanedAcceptPositionCallback :: C_PanedAcceptPositionCallback -> IO (FunPtr C_PanedAcceptPositionCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedAcceptPosition :: MonadIO m => PanedAcceptPositionCallback -> m (GClosure C_PanedAcceptPositionCallback)
genClosure_PanedAcceptPosition cb = liftIO $ do
    let cb' = wrap_PanedAcceptPositionCallback cb
    mk_PanedAcceptPositionCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedAcceptPositionCallback` into a `C_PanedAcceptPositionCallback`.
wrap_PanedAcceptPositionCallback ::
    PanedAcceptPositionCallback ->
    C_PanedAcceptPositionCallback
wrap_PanedAcceptPositionCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [acceptPosition](#signal:acceptPosition) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #acceptPosition callback
-- @
-- 
-- 
onPanedAcceptPosition :: (IsPaned a, MonadIO m) => a -> PanedAcceptPositionCallback -> m SignalHandlerId
onPanedAcceptPosition obj cb = liftIO $ do
    let cb' = wrap_PanedAcceptPositionCallback cb
    cb'' <- mk_PanedAcceptPositionCallback cb'
    connectSignalFunPtr obj "accept-position" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [acceptPosition](#signal:acceptPosition) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #acceptPosition callback
-- @
-- 
-- 
afterPanedAcceptPosition :: (IsPaned a, MonadIO m) => a -> PanedAcceptPositionCallback -> m SignalHandlerId
afterPanedAcceptPosition obj cb = liftIO $ do
    let cb' = wrap_PanedAcceptPositionCallback cb
    cb'' <- mk_PanedAcceptPositionCallback cb'
    connectSignalFunPtr obj "accept-position" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedAcceptPositionSignalInfo
instance SignalInfo PanedAcceptPositionSignalInfo where
    type HaskellCallbackType PanedAcceptPositionSignalInfo = PanedAcceptPositionCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedAcceptPositionCallback cb
        cb'' <- mk_PanedAcceptPositionCallback cb'
        connectSignalFunPtr obj "accept-position" cb'' connectMode detail

#endif

-- signal Paned::cancel-position
-- | The [cancelPosition](#signal:cancelPosition) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to cancel moving the position of the handle using key
-- bindings. The position of the handle will be reset to the value prior to
-- moving it.
-- 
-- The default binding for this signal is Escape.
-- 
-- /Since: 2.0/
type PanedCancelPositionCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedCancelPositionCallback`@.
noPanedCancelPositionCallback :: Maybe PanedCancelPositionCallback
noPanedCancelPositionCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedCancelPositionCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedCancelPositionCallback`.
foreign import ccall "wrapper"
    mk_PanedCancelPositionCallback :: C_PanedCancelPositionCallback -> IO (FunPtr C_PanedCancelPositionCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedCancelPosition :: MonadIO m => PanedCancelPositionCallback -> m (GClosure C_PanedCancelPositionCallback)
genClosure_PanedCancelPosition cb = liftIO $ do
    let cb' = wrap_PanedCancelPositionCallback cb
    mk_PanedCancelPositionCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedCancelPositionCallback` into a `C_PanedCancelPositionCallback`.
wrap_PanedCancelPositionCallback ::
    PanedCancelPositionCallback ->
    C_PanedCancelPositionCallback
wrap_PanedCancelPositionCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [cancelPosition](#signal:cancelPosition) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #cancelPosition callback
-- @
-- 
-- 
onPanedCancelPosition :: (IsPaned a, MonadIO m) => a -> PanedCancelPositionCallback -> m SignalHandlerId
onPanedCancelPosition obj cb = liftIO $ do
    let cb' = wrap_PanedCancelPositionCallback cb
    cb'' <- mk_PanedCancelPositionCallback cb'
    connectSignalFunPtr obj "cancel-position" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cancelPosition](#signal:cancelPosition) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #cancelPosition callback
-- @
-- 
-- 
afterPanedCancelPosition :: (IsPaned a, MonadIO m) => a -> PanedCancelPositionCallback -> m SignalHandlerId
afterPanedCancelPosition obj cb = liftIO $ do
    let cb' = wrap_PanedCancelPositionCallback cb
    cb'' <- mk_PanedCancelPositionCallback cb'
    connectSignalFunPtr obj "cancel-position" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedCancelPositionSignalInfo
instance SignalInfo PanedCancelPositionSignalInfo where
    type HaskellCallbackType PanedCancelPositionSignalInfo = PanedCancelPositionCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedCancelPositionCallback cb
        cb'' <- mk_PanedCancelPositionCallback cb'
        connectSignalFunPtr obj "cancel-position" cb'' connectMode detail

#endif

-- signal Paned::cycle-child-focus
-- | The [cycleChildFocus](#signal:cycleChildFocus) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to cycle the focus between the children of the paned.
-- 
-- The default binding is f6.
-- 
-- /Since: 2.0/
type PanedCycleChildFocusCallback =
    Bool
    -- ^ /@reversed@/: whether cycling backward or forward
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedCycleChildFocusCallback`@.
noPanedCycleChildFocusCallback :: Maybe PanedCycleChildFocusCallback
noPanedCycleChildFocusCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedCycleChildFocusCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedCycleChildFocusCallback`.
foreign import ccall "wrapper"
    mk_PanedCycleChildFocusCallback :: C_PanedCycleChildFocusCallback -> IO (FunPtr C_PanedCycleChildFocusCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedCycleChildFocus :: MonadIO m => PanedCycleChildFocusCallback -> m (GClosure C_PanedCycleChildFocusCallback)
genClosure_PanedCycleChildFocus cb = liftIO $ do
    let cb' = wrap_PanedCycleChildFocusCallback cb
    mk_PanedCycleChildFocusCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedCycleChildFocusCallback` into a `C_PanedCycleChildFocusCallback`.
wrap_PanedCycleChildFocusCallback ::
    PanedCycleChildFocusCallback ->
    C_PanedCycleChildFocusCallback
wrap_PanedCycleChildFocusCallback _cb _ reversed _ = do
    let reversed' = (/= 0) reversed
    result <- _cb  reversed'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [cycleChildFocus](#signal:cycleChildFocus) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #cycleChildFocus callback
-- @
-- 
-- 
onPanedCycleChildFocus :: (IsPaned a, MonadIO m) => a -> PanedCycleChildFocusCallback -> m SignalHandlerId
onPanedCycleChildFocus obj cb = liftIO $ do
    let cb' = wrap_PanedCycleChildFocusCallback cb
    cb'' <- mk_PanedCycleChildFocusCallback cb'
    connectSignalFunPtr obj "cycle-child-focus" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cycleChildFocus](#signal:cycleChildFocus) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #cycleChildFocus callback
-- @
-- 
-- 
afterPanedCycleChildFocus :: (IsPaned a, MonadIO m) => a -> PanedCycleChildFocusCallback -> m SignalHandlerId
afterPanedCycleChildFocus obj cb = liftIO $ do
    let cb' = wrap_PanedCycleChildFocusCallback cb
    cb'' <- mk_PanedCycleChildFocusCallback cb'
    connectSignalFunPtr obj "cycle-child-focus" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedCycleChildFocusSignalInfo
instance SignalInfo PanedCycleChildFocusSignalInfo where
    type HaskellCallbackType PanedCycleChildFocusSignalInfo = PanedCycleChildFocusCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedCycleChildFocusCallback cb
        cb'' <- mk_PanedCycleChildFocusCallback cb'
        connectSignalFunPtr obj "cycle-child-focus" cb'' connectMode detail

#endif

-- signal Paned::cycle-handle-focus
-- | The [cycleHandleFocus](#signal:cycleHandleFocus) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to cycle whether the paned should grab focus to allow
-- the user to change position of the handle by using key bindings.
-- 
-- The default binding for this signal is f8.
-- 
-- /Since: 2.0/
type PanedCycleHandleFocusCallback =
    Bool
    -- ^ /@reversed@/: whether cycling backward or forward
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedCycleHandleFocusCallback`@.
noPanedCycleHandleFocusCallback :: Maybe PanedCycleHandleFocusCallback
noPanedCycleHandleFocusCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedCycleHandleFocusCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedCycleHandleFocusCallback`.
foreign import ccall "wrapper"
    mk_PanedCycleHandleFocusCallback :: C_PanedCycleHandleFocusCallback -> IO (FunPtr C_PanedCycleHandleFocusCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedCycleHandleFocus :: MonadIO m => PanedCycleHandleFocusCallback -> m (GClosure C_PanedCycleHandleFocusCallback)
genClosure_PanedCycleHandleFocus cb = liftIO $ do
    let cb' = wrap_PanedCycleHandleFocusCallback cb
    mk_PanedCycleHandleFocusCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedCycleHandleFocusCallback` into a `C_PanedCycleHandleFocusCallback`.
wrap_PanedCycleHandleFocusCallback ::
    PanedCycleHandleFocusCallback ->
    C_PanedCycleHandleFocusCallback
wrap_PanedCycleHandleFocusCallback _cb _ reversed _ = do
    let reversed' = (/= 0) reversed
    result <- _cb  reversed'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [cycleHandleFocus](#signal:cycleHandleFocus) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #cycleHandleFocus callback
-- @
-- 
-- 
onPanedCycleHandleFocus :: (IsPaned a, MonadIO m) => a -> PanedCycleHandleFocusCallback -> m SignalHandlerId
onPanedCycleHandleFocus obj cb = liftIO $ do
    let cb' = wrap_PanedCycleHandleFocusCallback cb
    cb'' <- mk_PanedCycleHandleFocusCallback cb'
    connectSignalFunPtr obj "cycle-handle-focus" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [cycleHandleFocus](#signal:cycleHandleFocus) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #cycleHandleFocus callback
-- @
-- 
-- 
afterPanedCycleHandleFocus :: (IsPaned a, MonadIO m) => a -> PanedCycleHandleFocusCallback -> m SignalHandlerId
afterPanedCycleHandleFocus obj cb = liftIO $ do
    let cb' = wrap_PanedCycleHandleFocusCallback cb
    cb'' <- mk_PanedCycleHandleFocusCallback cb'
    connectSignalFunPtr obj "cycle-handle-focus" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedCycleHandleFocusSignalInfo
instance SignalInfo PanedCycleHandleFocusSignalInfo where
    type HaskellCallbackType PanedCycleHandleFocusSignalInfo = PanedCycleHandleFocusCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedCycleHandleFocusCallback cb
        cb'' <- mk_PanedCycleHandleFocusCallback cb'
        connectSignalFunPtr obj "cycle-handle-focus" cb'' connectMode detail

#endif

-- signal Paned::move-handle
-- | The [moveHandle](#signal:moveHandle) signal is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to move the handle when the user is using key bindings
-- to move it.
-- 
-- /Since: 2.0/
type PanedMoveHandleCallback =
    Gtk.Enums.ScrollType
    -- ^ /@scrollType@/: a t'GI.Gtk.Enums.ScrollType'
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedMoveHandleCallback`@.
noPanedMoveHandleCallback :: Maybe PanedMoveHandleCallback
noPanedMoveHandleCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedMoveHandleCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedMoveHandleCallback`.
foreign import ccall "wrapper"
    mk_PanedMoveHandleCallback :: C_PanedMoveHandleCallback -> IO (FunPtr C_PanedMoveHandleCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedMoveHandle :: MonadIO m => PanedMoveHandleCallback -> m (GClosure C_PanedMoveHandleCallback)
genClosure_PanedMoveHandle cb = liftIO $ do
    let cb' = wrap_PanedMoveHandleCallback cb
    mk_PanedMoveHandleCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedMoveHandleCallback` into a `C_PanedMoveHandleCallback`.
wrap_PanedMoveHandleCallback ::
    PanedMoveHandleCallback ->
    C_PanedMoveHandleCallback
wrap_PanedMoveHandleCallback _cb _ scrollType _ = do
    let scrollType' = (toEnum . fromIntegral) scrollType
    result <- _cb  scrollType'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [moveHandle](#signal:moveHandle) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #moveHandle callback
-- @
-- 
-- 
onPanedMoveHandle :: (IsPaned a, MonadIO m) => a -> PanedMoveHandleCallback -> m SignalHandlerId
onPanedMoveHandle obj cb = liftIO $ do
    let cb' = wrap_PanedMoveHandleCallback cb
    cb'' <- mk_PanedMoveHandleCallback cb'
    connectSignalFunPtr obj "move-handle" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveHandle](#signal:moveHandle) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #moveHandle callback
-- @
-- 
-- 
afterPanedMoveHandle :: (IsPaned a, MonadIO m) => a -> PanedMoveHandleCallback -> m SignalHandlerId
afterPanedMoveHandle obj cb = liftIO $ do
    let cb' = wrap_PanedMoveHandleCallback cb
    cb'' <- mk_PanedMoveHandleCallback cb'
    connectSignalFunPtr obj "move-handle" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedMoveHandleSignalInfo
instance SignalInfo PanedMoveHandleSignalInfo where
    type HaskellCallbackType PanedMoveHandleSignalInfo = PanedMoveHandleCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedMoveHandleCallback cb
        cb'' <- mk_PanedMoveHandleCallback cb'
        connectSignalFunPtr obj "move-handle" cb'' connectMode detail

#endif

-- signal Paned::toggle-handle-focus
-- | The [toggleHandleFocus](#signal:toggleHandleFocus) is a
-- [keybinding signal][GtkBindingSignal]
-- which gets emitted to accept the current position of the handle and then
-- move focus to the next widget in the focus chain.
-- 
-- The default binding is Tab.
-- 
-- /Since: 2.0/
type PanedToggleHandleFocusCallback =
    IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `PanedToggleHandleFocusCallback`@.
noPanedToggleHandleFocusCallback :: Maybe PanedToggleHandleFocusCallback
noPanedToggleHandleFocusCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PanedToggleHandleFocusCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_PanedToggleHandleFocusCallback`.
foreign import ccall "wrapper"
    mk_PanedToggleHandleFocusCallback :: C_PanedToggleHandleFocusCallback -> IO (FunPtr C_PanedToggleHandleFocusCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PanedToggleHandleFocus :: MonadIO m => PanedToggleHandleFocusCallback -> m (GClosure C_PanedToggleHandleFocusCallback)
genClosure_PanedToggleHandleFocus cb = liftIO $ do
    let cb' = wrap_PanedToggleHandleFocusCallback cb
    mk_PanedToggleHandleFocusCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PanedToggleHandleFocusCallback` into a `C_PanedToggleHandleFocusCallback`.
wrap_PanedToggleHandleFocusCallback ::
    PanedToggleHandleFocusCallback ->
    C_PanedToggleHandleFocusCallback
wrap_PanedToggleHandleFocusCallback _cb _ _ = do
    result <- _cb 
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [toggleHandleFocus](#signal:toggleHandleFocus) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' paned #toggleHandleFocus callback
-- @
-- 
-- 
onPanedToggleHandleFocus :: (IsPaned a, MonadIO m) => a -> PanedToggleHandleFocusCallback -> m SignalHandlerId
onPanedToggleHandleFocus obj cb = liftIO $ do
    let cb' = wrap_PanedToggleHandleFocusCallback cb
    cb'' <- mk_PanedToggleHandleFocusCallback cb'
    connectSignalFunPtr obj "toggle-handle-focus" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [toggleHandleFocus](#signal:toggleHandleFocus) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' paned #toggleHandleFocus callback
-- @
-- 
-- 
afterPanedToggleHandleFocus :: (IsPaned a, MonadIO m) => a -> PanedToggleHandleFocusCallback -> m SignalHandlerId
afterPanedToggleHandleFocus obj cb = liftIO $ do
    let cb' = wrap_PanedToggleHandleFocusCallback cb
    cb'' <- mk_PanedToggleHandleFocusCallback cb'
    connectSignalFunPtr obj "toggle-handle-focus" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PanedToggleHandleFocusSignalInfo
instance SignalInfo PanedToggleHandleFocusSignalInfo where
    type HaskellCallbackType PanedToggleHandleFocusSignalInfo = PanedToggleHandleFocusCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PanedToggleHandleFocusCallback cb
        cb'' <- mk_PanedToggleHandleFocusCallback cb'
        connectSignalFunPtr obj "toggle-handle-focus" cb'' connectMode detail

#endif

-- VVV Prop "max-position"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@max-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' paned #maxPosition
-- @
getPanedMaxPosition :: (MonadIO m, IsPaned o) => o -> m Int32
getPanedMaxPosition obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "max-position"

#if defined(ENABLE_OVERLOADING)
data PanedMaxPositionPropertyInfo
instance AttrInfo PanedMaxPositionPropertyInfo where
    type AttrAllowedOps PanedMaxPositionPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint PanedMaxPositionPropertyInfo = IsPaned
    type AttrSetTypeConstraint PanedMaxPositionPropertyInfo = (~) ()
    type AttrTransferTypeConstraint PanedMaxPositionPropertyInfo = (~) ()
    type AttrTransferType PanedMaxPositionPropertyInfo = ()
    type AttrGetType PanedMaxPositionPropertyInfo = Int32
    type AttrLabel PanedMaxPositionPropertyInfo = "max-position"
    type AttrOrigin PanedMaxPositionPropertyInfo = Paned
    attrGet = getPanedMaxPosition
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "min-position"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@min-position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' paned #minPosition
-- @
getPanedMinPosition :: (MonadIO m, IsPaned o) => o -> m Int32
getPanedMinPosition obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "min-position"

#if defined(ENABLE_OVERLOADING)
data PanedMinPositionPropertyInfo
instance AttrInfo PanedMinPositionPropertyInfo where
    type AttrAllowedOps PanedMinPositionPropertyInfo = '[ 'AttrGet]
    type AttrBaseTypeConstraint PanedMinPositionPropertyInfo = IsPaned
    type AttrSetTypeConstraint PanedMinPositionPropertyInfo = (~) ()
    type AttrTransferTypeConstraint PanedMinPositionPropertyInfo = (~) ()
    type AttrTransferType PanedMinPositionPropertyInfo = ()
    type AttrGetType PanedMinPositionPropertyInfo = Int32
    type AttrLabel PanedMinPositionPropertyInfo = "min-position"
    type AttrOrigin PanedMinPositionPropertyInfo = Paned
    attrGet = getPanedMinPosition
    attrSet = undefined
    attrTransfer _ = undefined
    attrConstruct = undefined
    attrClear = undefined
#endif

-- VVV Prop "position"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' paned #position
-- @
getPanedPosition :: (MonadIO m, IsPaned o) => o -> m Int32
getPanedPosition obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "position"

-- | Set the value of the “@position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' paned [ #position 'Data.GI.Base.Attributes.:=' value ]
-- @
setPanedPosition :: (MonadIO m, IsPaned o) => o -> Int32 -> m ()
setPanedPosition obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "position" val

-- | Construct a `GValueConstruct` with valid value for the “@position@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPanedPosition :: (IsPaned o) => Int32 -> IO (GValueConstruct o)
constructPanedPosition val = B.Properties.constructObjectPropertyInt32 "position" val

#if defined(ENABLE_OVERLOADING)
data PanedPositionPropertyInfo
instance AttrInfo PanedPositionPropertyInfo where
    type AttrAllowedOps PanedPositionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PanedPositionPropertyInfo = IsPaned
    type AttrSetTypeConstraint PanedPositionPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint PanedPositionPropertyInfo = (~) Int32
    type AttrTransferType PanedPositionPropertyInfo = Int32
    type AttrGetType PanedPositionPropertyInfo = Int32
    type AttrLabel PanedPositionPropertyInfo = "position"
    type AttrOrigin PanedPositionPropertyInfo = Paned
    attrGet = getPanedPosition
    attrSet = setPanedPosition
    attrTransfer _ v = do
        return v
    attrConstruct = constructPanedPosition
    attrClear = undefined
#endif

-- VVV Prop "position-set"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@position-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' paned #positionSet
-- @
getPanedPositionSet :: (MonadIO m, IsPaned o) => o -> m Bool
getPanedPositionSet obj = liftIO $ B.Properties.getObjectPropertyBool obj "position-set"

-- | Set the value of the “@position-set@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' paned [ #positionSet 'Data.GI.Base.Attributes.:=' value ]
-- @
setPanedPositionSet :: (MonadIO m, IsPaned o) => o -> Bool -> m ()
setPanedPositionSet obj val = liftIO $ B.Properties.setObjectPropertyBool obj "position-set" val

-- | Construct a `GValueConstruct` with valid value for the “@position-set@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPanedPositionSet :: (IsPaned o) => Bool -> IO (GValueConstruct o)
constructPanedPositionSet val = B.Properties.constructObjectPropertyBool "position-set" val

#if defined(ENABLE_OVERLOADING)
data PanedPositionSetPropertyInfo
instance AttrInfo PanedPositionSetPropertyInfo where
    type AttrAllowedOps PanedPositionSetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PanedPositionSetPropertyInfo = IsPaned
    type AttrSetTypeConstraint PanedPositionSetPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PanedPositionSetPropertyInfo = (~) Bool
    type AttrTransferType PanedPositionSetPropertyInfo = Bool
    type AttrGetType PanedPositionSetPropertyInfo = Bool
    type AttrLabel PanedPositionSetPropertyInfo = "position-set"
    type AttrOrigin PanedPositionSetPropertyInfo = Paned
    attrGet = getPanedPositionSet
    attrSet = setPanedPositionSet
    attrTransfer _ v = do
        return v
    attrConstruct = constructPanedPositionSet
    attrClear = undefined
#endif

-- VVV Prop "wide-handle"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@wide-handle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' paned #wideHandle
-- @
getPanedWideHandle :: (MonadIO m, IsPaned o) => o -> m Bool
getPanedWideHandle obj = liftIO $ B.Properties.getObjectPropertyBool obj "wide-handle"

-- | Set the value of the “@wide-handle@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' paned [ #wideHandle 'Data.GI.Base.Attributes.:=' value ]
-- @
setPanedWideHandle :: (MonadIO m, IsPaned o) => o -> Bool -> m ()
setPanedWideHandle obj val = liftIO $ B.Properties.setObjectPropertyBool obj "wide-handle" val

-- | Construct a `GValueConstruct` with valid value for the “@wide-handle@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPanedWideHandle :: (IsPaned o) => Bool -> IO (GValueConstruct o)
constructPanedWideHandle val = B.Properties.constructObjectPropertyBool "wide-handle" val

#if defined(ENABLE_OVERLOADING)
data PanedWideHandlePropertyInfo
instance AttrInfo PanedWideHandlePropertyInfo where
    type AttrAllowedOps PanedWideHandlePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PanedWideHandlePropertyInfo = IsPaned
    type AttrSetTypeConstraint PanedWideHandlePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PanedWideHandlePropertyInfo = (~) Bool
    type AttrTransferType PanedWideHandlePropertyInfo = Bool
    type AttrGetType PanedWideHandlePropertyInfo = Bool
    type AttrLabel PanedWideHandlePropertyInfo = "wide-handle"
    type AttrOrigin PanedWideHandlePropertyInfo = Paned
    attrGet = getPanedWideHandle
    attrSet = setPanedWideHandle
    attrTransfer _ v = do
        return v
    attrConstruct = constructPanedWideHandle
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Paned
type instance O.AttributeList Paned = PanedAttributeList
type PanedAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("maxPosition", PanedMaxPositionPropertyInfo), '("minPosition", PanedMinPositionPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("orientation", Gtk.Orientable.OrientableOrientationPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("position", PanedPositionPropertyInfo), '("positionSet", PanedPositionSetPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("wideHandle", PanedWideHandlePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
panedMaxPosition :: AttrLabelProxy "maxPosition"
panedMaxPosition = AttrLabelProxy

panedMinPosition :: AttrLabelProxy "minPosition"
panedMinPosition = AttrLabelProxy

panedPosition :: AttrLabelProxy "position"
panedPosition = AttrLabelProxy

panedPositionSet :: AttrLabelProxy "positionSet"
panedPositionSet = AttrLabelProxy

panedWideHandle :: AttrLabelProxy "wideHandle"
panedWideHandle = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Paned = PanedSignalList
type PanedSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("acceptPosition", PanedAcceptPositionSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("cancelPosition", PanedCancelPositionSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("cycleChildFocus", PanedCycleChildFocusSignalInfo), '("cycleHandleFocus", PanedCycleHandleFocusSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveHandle", PanedMoveHandleSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("toggleHandleFocus", PanedToggleHandleFocusSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Paned::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "orientation"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Orientation" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the paned\8217s orientation."
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Paned" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paned_new" gtk_paned_new :: 
    CUInt ->                                -- orientation : TInterface (Name {namespace = "Gtk", name = "Orientation"})
    IO (Ptr Paned)

-- | Creates a new t'GI.Gtk.Objects.Paned.Paned' widget.
-- 
-- /Since: 3.0/
panedNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Gtk.Enums.Orientation
    -- ^ /@orientation@/: the paned’s orientation.
    -> m Paned
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Paned.Paned'.
panedNew orientation = liftIO $ do
    let orientation' = (fromIntegral . fromEnum) orientation
    result <- gtk_paned_new orientation'
    checkUnexpectedReturnNULL "panedNew" result
    result' <- (newObject Paned) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Paned::add1
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a paned widget" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child to add" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_add1" gtk_paned_add1 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds a child to the top or left pane with default parameters. This is
-- equivalent to
-- @gtk_paned_pack1 (paned, child, FALSE, TRUE)@.
panedAdd1 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@paned@/: a paned widget
    -> b
    -- ^ /@child@/: the child to add
    -> m ()
panedAdd1 paned child = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    child' <- unsafeManagedPtrCastPtr child
    gtk_paned_add1 paned' child'
    touchManagedPtr paned
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedAdd1MethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) => O.MethodInfo PanedAdd1MethodInfo a signature where
    overloadedMethod = panedAdd1

#endif

-- method Paned::add2
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a paned widget" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child to add" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_add2" gtk_paned_add2 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Adds a child to the bottom or right pane with default parameters. This
-- is equivalent to
-- @gtk_paned_pack2 (paned, child, TRUE, TRUE)@.
panedAdd2 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@paned@/: a paned widget
    -> b
    -- ^ /@child@/: the child to add
    -> m ()
panedAdd2 paned child = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    child' <- unsafeManagedPtrCastPtr child
    gtk_paned_add2 paned' child'
    touchManagedPtr paned
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedAdd2MethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) => O.MethodInfo PanedAdd2MethodInfo a signature where
    overloadedMethod = panedAdd2

#endif

-- method Paned::get_child1
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned widget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_get_child1" gtk_paned_get_child1 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    IO (Ptr Gtk.Widget.Widget)

-- | Obtains the first child of the paned widget.
-- 
-- /Since: 2.4/
panedGetChild1 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned' widget
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ first child, or 'P.Nothing' if it is not set.
panedGetChild1 paned = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    result <- gtk_paned_get_child1 paned'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr paned
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PanedGetChild1MethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsPaned a) => O.MethodInfo PanedGetChild1MethodInfo a signature where
    overloadedMethod = panedGetChild1

#endif

-- method Paned::get_child2
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned widget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_get_child2" gtk_paned_get_child2 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    IO (Ptr Gtk.Widget.Widget)

-- | Obtains the second child of the paned widget.
-- 
-- /Since: 2.4/
panedGetChild2 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned' widget
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ second child, or 'P.Nothing' if it is not set.
panedGetChild2 paned = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    result <- gtk_paned_get_child2 paned'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr paned
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PanedGetChild2MethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsPaned a) => O.MethodInfo PanedGetChild2MethodInfo a signature where
    overloadedMethod = panedGetChild2

#endif

-- method Paned::get_handle_window
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gdk" , name = "Window" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_paned_get_handle_window" gtk_paned_get_handle_window :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    IO (Ptr Gdk.Window.Window)

-- | Returns the t'GI.Gdk.Objects.Window.Window' of the handle. This function is
-- useful when handling button or motion events because it
-- enables the callback to distinguish between the window
-- of the paned, a child and the handle.
-- 
-- /Since: 2.20/
panedGetHandleWindow ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned'
    -> m Gdk.Window.Window
    -- ^ __Returns:__ the paned’s handle window.
panedGetHandleWindow paned = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    result <- gtk_paned_get_handle_window paned'
    checkUnexpectedReturnNULL "panedGetHandleWindow" result
    result' <- (newObject Gdk.Window.Window) result
    touchManagedPtr paned
    return result'

#if defined(ENABLE_OVERLOADING)
data PanedGetHandleWindowMethodInfo
instance (signature ~ (m Gdk.Window.Window), MonadIO m, IsPaned a) => O.MethodInfo PanedGetHandleWindowMethodInfo a signature where
    overloadedMethod = panedGetHandleWindow

#endif

-- method Paned::get_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned widget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_get_position" gtk_paned_get_position :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    IO Int32

-- | Obtains the position of the divider between the two panes.
panedGetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned' widget
    -> m Int32
    -- ^ __Returns:__ position of the divider
panedGetPosition paned = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    result <- gtk_paned_get_position paned'
    touchManagedPtr paned
    return result

#if defined(ENABLE_OVERLOADING)
data PanedGetPositionMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsPaned a) => O.MethodInfo PanedGetPositionMethodInfo a signature where
    overloadedMethod = panedGetPosition

#endif

-- method Paned::get_wide_handle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned" , sinceVersion = Nothing }
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

foreign import ccall "gtk_paned_get_wide_handle" gtk_paned_get_wide_handle :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    IO CInt

-- | Gets the t'GI.Gtk.Objects.Paned.Paned':@/wide-handle/@ property.
-- 
-- /Since: 3.16/
panedGetWideHandle ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the paned should have a wide handle
panedGetWideHandle paned = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    result <- gtk_paned_get_wide_handle paned'
    let result' = (/= 0) result
    touchManagedPtr paned
    return result'

#if defined(ENABLE_OVERLOADING)
data PanedGetWideHandleMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPaned a) => O.MethodInfo PanedGetWideHandleMethodInfo a signature where
    overloadedMethod = panedGetWideHandle

#endif

-- method Paned::pack1
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a paned widget" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child to add" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resize"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "should this child expand when the paned widget is resized."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "shrink"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "can this child be made smaller than its requisition."
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

foreign import ccall "gtk_paned_pack1" gtk_paned_pack1 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- resize : TBasicType TBoolean
    CInt ->                                 -- shrink : TBasicType TBoolean
    IO ()

-- | Adds a child to the top or left pane.
panedPack1 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@paned@/: a paned widget
    -> b
    -- ^ /@child@/: the child to add
    -> Bool
    -- ^ /@resize@/: should this child expand when the paned widget is resized.
    -> Bool
    -- ^ /@shrink@/: can this child be made smaller than its requisition.
    -> m ()
panedPack1 paned child resize shrink = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    child' <- unsafeManagedPtrCastPtr child
    let resize' = (fromIntegral . fromEnum) resize
    let shrink' = (fromIntegral . fromEnum) shrink
    gtk_paned_pack1 paned' child' resize' shrink'
    touchManagedPtr paned
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedPack1MethodInfo
instance (signature ~ (b -> Bool -> Bool -> m ()), MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) => O.MethodInfo PanedPack1MethodInfo a signature where
    overloadedMethod = panedPack1

#endif

-- method Paned::pack2
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a paned widget" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child to add" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resize"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "should this child expand when the paned widget is resized."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "shrink"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "can this child be made smaller than its requisition."
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

foreign import ccall "gtk_paned_pack2" gtk_paned_pack2 :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- resize : TBasicType TBoolean
    CInt ->                                 -- shrink : TBasicType TBoolean
    IO ()

-- | Adds a child to the bottom or right pane.
panedPack2 ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@paned@/: a paned widget
    -> b
    -- ^ /@child@/: the child to add
    -> Bool
    -- ^ /@resize@/: should this child expand when the paned widget is resized.
    -> Bool
    -- ^ /@shrink@/: can this child be made smaller than its requisition.
    -> m ()
panedPack2 paned child resize shrink = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    child' <- unsafeManagedPtrCastPtr child
    let resize' = (fromIntegral . fromEnum) resize
    let shrink' = (fromIntegral . fromEnum) shrink
    gtk_paned_pack2 paned' child' resize' shrink'
    touchManagedPtr paned
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedPack2MethodInfo
instance (signature ~ (b -> Bool -> Bool -> m ()), MonadIO m, IsPaned a, Gtk.Widget.IsWidget b) => O.MethodInfo PanedPack2MethodInfo a signature where
    overloadedMethod = panedPack2

#endif

-- method Paned::set_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned widget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "pixel position of divider, a negative value means that the position\n           is unset."
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

foreign import ccall "gtk_paned_set_position" gtk_paned_set_position :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Sets the position of the divider between the two panes.
panedSetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned' widget
    -> Int32
    -- ^ /@position@/: pixel position of divider, a negative value means that the position
    --            is unset.
    -> m ()
panedSetPosition paned position = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    gtk_paned_set_position paned' position
    touchManagedPtr paned
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedSetPositionMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsPaned a) => O.MethodInfo PanedSetPositionMethodInfo a signature where
    overloadedMethod = panedSetPosition

#endif

-- method Paned::set_wide_handle
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "paned"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Paned" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPaned" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "wide"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the new value for the #GtkPaned:wide-handle property"
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

foreign import ccall "gtk_paned_set_wide_handle" gtk_paned_set_wide_handle :: 
    Ptr Paned ->                            -- paned : TInterface (Name {namespace = "Gtk", name = "Paned"})
    CInt ->                                 -- wide : TBasicType TBoolean
    IO ()

-- | Sets the t'GI.Gtk.Objects.Paned.Paned':@/wide-handle/@ property.
-- 
-- /Since: 3.16/
panedSetWideHandle ::
    (B.CallStack.HasCallStack, MonadIO m, IsPaned a) =>
    a
    -- ^ /@paned@/: a t'GI.Gtk.Objects.Paned.Paned'
    -> Bool
    -- ^ /@wide@/: the new value for the t'GI.Gtk.Objects.Paned.Paned':@/wide-handle/@ property
    -> m ()
panedSetWideHandle paned wide = liftIO $ do
    paned' <- unsafeManagedPtrCastPtr paned
    let wide' = (fromIntegral . fromEnum) wide
    gtk_paned_set_wide_handle paned' wide'
    touchManagedPtr paned
    return ()

#if defined(ENABLE_OVERLOADING)
data PanedSetWideHandleMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPaned a) => O.MethodInfo PanedSetWideHandleMethodInfo a signature where
    overloadedMethod = panedSetWideHandle

#endif

