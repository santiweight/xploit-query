{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- GtkPopover is a bubble-like context window, primarily meant to
-- provide context-dependent information or options. Popovers are
-- attached to a widget, passed at construction time on 'GI.Gtk.Objects.Popover.popoverNew',
-- or updated afterwards through 'GI.Gtk.Objects.Popover.popoverSetRelativeTo', by
-- default they will point to the whole widget area, although this
-- behavior can be changed through 'GI.Gtk.Objects.Popover.popoverSetPointingTo'.
-- 
-- The position of a popover relative to the widget it is attached to
-- can also be changed through 'GI.Gtk.Objects.Popover.popoverSetPosition'.
-- 
-- By default, t'GI.Gtk.Objects.Popover.Popover' performs a GTK+ grab, in order to ensure
-- input events get redirected to it while it is shown, and also so
-- the popover is dismissed in the expected situations (clicks outside
-- the popover, or the Esc key being pressed). If no such modal behavior
-- is desired on a popover, 'GI.Gtk.Objects.Popover.popoverSetModal' may be called on it
-- to tweak its behavior.
-- 
-- == GtkPopover as menu replacement
-- 
-- GtkPopover is often used to replace menus. To facilitate this, it
-- supports being populated from a t'GI.Gio.Objects.MenuModel.MenuModel', using
-- 'GI.Gtk.Objects.Popover.popoverNewFromModel'. In addition to all the regular menu
-- model features, this function supports rendering sections in the
-- model in a more compact form, as a row of icon buttons instead of
-- menu items.
-- 
-- To use this rendering, set the ”display-hint” attribute of the
-- section to ”horizontal-buttons” and set the icons of your items
-- with the ”verb-icon” attribute.
-- 
-- >
-- ><section>
-- >  <attribute name="display-hint">horizontal-buttons</attribute>
-- >  <item>
-- >    <attribute name="label">Cut</attribute>
-- >    <attribute name="action">app.cut</attribute>
-- >    <attribute name="verb-icon">edit-cut-symbolic</attribute>
-- >  </item>
-- >  <item>
-- >    <attribute name="label">Copy</attribute>
-- >    <attribute name="action">app.copy</attribute>
-- >    <attribute name="verb-icon">edit-copy-symbolic</attribute>
-- >  </item>
-- >  <item>
-- >    <attribute name="label">Paste</attribute>
-- >    <attribute name="action">app.paste</attribute>
-- >    <attribute name="verb-icon">edit-paste-symbolic</attribute>
-- >  </item>
-- ></section>
-- 
-- 
-- = CSS nodes
-- 
-- GtkPopover has a single css node called popover. It always gets the
-- .background style class and it gets the .menu style class if it is
-- menu-like (e.g. t'GI.Gtk.Objects.PopoverMenu.PopoverMenu' or created using 'GI.Gtk.Objects.Popover.popoverNewFromModel'.
-- 
-- Particular uses of GtkPopover, such as touch selection popups
-- or magnifiers in t'GI.Gtk.Objects.Entry.Entry' or t'GI.Gtk.Objects.TextView.TextView' get style classes
-- like .touch-selection or .magnifier to differentiate from
-- plain popovers.
-- 
-- /Since: 3.12/

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Popover
    ( 

-- * Exported types
    Popover(..)                             ,
    IsPopover                               ,
    toPopover                               ,
    noPopover                               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolvePopoverMethod                    ,
#endif


-- ** bindModel #method:bindModel#

#if defined(ENABLE_OVERLOADING)
    PopoverBindModelMethodInfo              ,
#endif
    popoverBindModel                        ,


-- ** getConstrainTo #method:getConstrainTo#

#if defined(ENABLE_OVERLOADING)
    PopoverGetConstrainToMethodInfo         ,
#endif
    popoverGetConstrainTo                   ,


-- ** getDefaultWidget #method:getDefaultWidget#

#if defined(ENABLE_OVERLOADING)
    PopoverGetDefaultWidgetMethodInfo       ,
#endif
    popoverGetDefaultWidget                 ,


-- ** getModal #method:getModal#

#if defined(ENABLE_OVERLOADING)
    PopoverGetModalMethodInfo               ,
#endif
    popoverGetModal                         ,


-- ** getPointingTo #method:getPointingTo#

#if defined(ENABLE_OVERLOADING)
    PopoverGetPointingToMethodInfo          ,
#endif
    popoverGetPointingTo                    ,


-- ** getPosition #method:getPosition#

#if defined(ENABLE_OVERLOADING)
    PopoverGetPositionMethodInfo            ,
#endif
    popoverGetPosition                      ,


-- ** getRelativeTo #method:getRelativeTo#

#if defined(ENABLE_OVERLOADING)
    PopoverGetRelativeToMethodInfo          ,
#endif
    popoverGetRelativeTo                    ,


-- ** getTransitionsEnabled #method:getTransitionsEnabled#

#if defined(ENABLE_OVERLOADING)
    PopoverGetTransitionsEnabledMethodInfo  ,
#endif
    popoverGetTransitionsEnabled            ,


-- ** new #method:new#

    popoverNew                              ,


-- ** newFromModel #method:newFromModel#

    popoverNewFromModel                     ,


-- ** popdown #method:popdown#

#if defined(ENABLE_OVERLOADING)
    PopoverPopdownMethodInfo                ,
#endif
    popoverPopdown                          ,


-- ** popup #method:popup#

#if defined(ENABLE_OVERLOADING)
    PopoverPopupMethodInfo                  ,
#endif
    popoverPopup                            ,


-- ** setConstrainTo #method:setConstrainTo#

#if defined(ENABLE_OVERLOADING)
    PopoverSetConstrainToMethodInfo         ,
#endif
    popoverSetConstrainTo                   ,


-- ** setDefaultWidget #method:setDefaultWidget#

#if defined(ENABLE_OVERLOADING)
    PopoverSetDefaultWidgetMethodInfo       ,
#endif
    popoverSetDefaultWidget                 ,


-- ** setModal #method:setModal#

#if defined(ENABLE_OVERLOADING)
    PopoverSetModalMethodInfo               ,
#endif
    popoverSetModal                         ,


-- ** setPointingTo #method:setPointingTo#

#if defined(ENABLE_OVERLOADING)
    PopoverSetPointingToMethodInfo          ,
#endif
    popoverSetPointingTo                    ,


-- ** setPosition #method:setPosition#

#if defined(ENABLE_OVERLOADING)
    PopoverSetPositionMethodInfo            ,
#endif
    popoverSetPosition                      ,


-- ** setRelativeTo #method:setRelativeTo#

#if defined(ENABLE_OVERLOADING)
    PopoverSetRelativeToMethodInfo          ,
#endif
    popoverSetRelativeTo                    ,


-- ** setTransitionsEnabled #method:setTransitionsEnabled#

#if defined(ENABLE_OVERLOADING)
    PopoverSetTransitionsEnabledMethodInfo  ,
#endif
    popoverSetTransitionsEnabled            ,




 -- * Properties
-- ** constrainTo #attr:constrainTo#
-- | Sets a constraint for the popover position.
-- 
-- /Since: 3.20/

#if defined(ENABLE_OVERLOADING)
    PopoverConstrainToPropertyInfo          ,
#endif
    constructPopoverConstrainTo             ,
    getPopoverConstrainTo                   ,
#if defined(ENABLE_OVERLOADING)
    popoverConstrainTo                      ,
#endif
    setPopoverConstrainTo                   ,


-- ** modal #attr:modal#
-- | Sets whether the popover is modal (so other elements in the window do not
-- receive input while the popover is visible).
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    PopoverModalPropertyInfo                ,
#endif
    constructPopoverModal                   ,
    getPopoverModal                         ,
#if defined(ENABLE_OVERLOADING)
    popoverModal                            ,
#endif
    setPopoverModal                         ,


-- ** pointingTo #attr:pointingTo#
-- | Marks a specific rectangle to be pointed.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    PopoverPointingToPropertyInfo           ,
#endif
    constructPopoverPointingTo              ,
    getPopoverPointingTo                    ,
#if defined(ENABLE_OVERLOADING)
    popoverPointingTo                       ,
#endif
    setPopoverPointingTo                    ,


-- ** position #attr:position#
-- | Sets the preferred position of the popover.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    PopoverPositionPropertyInfo             ,
#endif
    constructPopoverPosition                ,
    getPopoverPosition                      ,
#if defined(ENABLE_OVERLOADING)
    popoverPosition                         ,
#endif
    setPopoverPosition                      ,


-- ** relativeTo #attr:relativeTo#
-- | Sets the attached widget.
-- 
-- /Since: 3.12/

#if defined(ENABLE_OVERLOADING)
    PopoverRelativeToPropertyInfo           ,
#endif
    clearPopoverRelativeTo                  ,
    constructPopoverRelativeTo              ,
    getPopoverRelativeTo                    ,
#if defined(ENABLE_OVERLOADING)
    popoverRelativeTo                       ,
#endif
    setPopoverRelativeTo                    ,


-- ** transitionsEnabled #attr:transitionsEnabled#
-- | Whether show\/hide transitions are enabled for this popover.
-- 
-- /Since: 3.16/

#if defined(ENABLE_OVERLOADING)
    PopoverTransitionsEnabledPropertyInfo   ,
#endif
    constructPopoverTransitionsEnabled      ,
    getPopoverTransitionsEnabled            ,
#if defined(ENABLE_OVERLOADING)
    popoverTransitionsEnabled               ,
#endif
    setPopoverTransitionsEnabled            ,




 -- * Signals
-- ** closed #signal:closed#

    C_PopoverClosedCallback                 ,
    PopoverClosedCallback                   ,
#if defined(ENABLE_OVERLOADING)
    PopoverClosedSignalInfo                 ,
#endif
    afterPopoverClosed                      ,
    genClosure_PopoverClosed                ,
    mk_PopoverClosedCallback                ,
    noPopoverClosedCallback                 ,
    onPopoverClosed                         ,
    wrap_PopoverClosedCallback              ,




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
import qualified GI.Gdk.Structs.Rectangle as Gdk.Rectangle
import qualified GI.Gio.Objects.MenuModel as Gio.MenuModel
import {-# SOURCE #-} qualified GI.Gtk.Enums as Gtk.Enums
import {-# SOURCE #-} qualified GI.Gtk.Interfaces.Buildable as Gtk.Buildable
import {-# SOURCE #-} qualified GI.Gtk.Objects.Bin as Gtk.Bin
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Popover = Popover (ManagedPtr Popover)
    deriving (Eq)
foreign import ccall "gtk_popover_get_type"
    c_gtk_popover_get_type :: IO GType

instance GObject Popover where
    gobjectType = c_gtk_popover_get_type
    

-- | Convert 'Popover' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Popover where
    toGValue o = do
        gtype <- c_gtk_popover_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Popover)
        B.ManagedPtr.newObject Popover ptr
        
    

-- | Type class for types which can be safely cast to `Popover`, for instance with `toPopover`.
class (GObject o, O.IsDescendantOf Popover o) => IsPopover o
instance (GObject o, O.IsDescendantOf Popover o) => IsPopover o

instance O.HasParentTypes Popover
type instance O.ParentTypes Popover = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Popover`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPopover :: (MonadIO m, IsPopover o) => o -> m Popover
toPopover = liftIO . unsafeCastTo Popover

-- | A convenience alias for `Nothing` :: `Maybe` `Popover`.
noPopover :: Maybe Popover
noPopover = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolvePopoverMethod (t :: Symbol) (o :: *) :: * where
    ResolvePopoverMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolvePopoverMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolvePopoverMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolvePopoverMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolvePopoverMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolvePopoverMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolvePopoverMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolvePopoverMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolvePopoverMethod "bindModel" o = PopoverBindModelMethodInfo
    ResolvePopoverMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePopoverMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePopoverMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolvePopoverMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolvePopoverMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolvePopoverMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolvePopoverMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolvePopoverMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolvePopoverMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolvePopoverMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolvePopoverMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolvePopoverMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolvePopoverMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolvePopoverMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolvePopoverMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolvePopoverMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolvePopoverMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolvePopoverMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolvePopoverMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolvePopoverMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolvePopoverMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolvePopoverMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolvePopoverMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolvePopoverMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolvePopoverMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolvePopoverMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolvePopoverMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolvePopoverMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolvePopoverMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolvePopoverMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolvePopoverMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolvePopoverMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolvePopoverMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolvePopoverMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolvePopoverMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolvePopoverMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolvePopoverMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolvePopoverMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolvePopoverMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolvePopoverMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolvePopoverMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolvePopoverMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolvePopoverMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolvePopoverMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolvePopoverMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolvePopoverMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolvePopoverMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolvePopoverMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolvePopoverMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolvePopoverMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolvePopoverMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolvePopoverMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolvePopoverMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolvePopoverMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolvePopoverMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePopoverMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolvePopoverMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolvePopoverMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePopoverMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePopoverMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolvePopoverMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolvePopoverMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolvePopoverMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolvePopoverMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolvePopoverMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolvePopoverMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolvePopoverMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolvePopoverMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolvePopoverMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolvePopoverMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolvePopoverMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolvePopoverMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolvePopoverMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolvePopoverMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolvePopoverMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolvePopoverMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolvePopoverMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolvePopoverMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolvePopoverMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolvePopoverMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePopoverMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolvePopoverMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolvePopoverMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolvePopoverMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolvePopoverMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolvePopoverMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolvePopoverMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolvePopoverMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolvePopoverMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolvePopoverMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolvePopoverMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolvePopoverMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolvePopoverMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolvePopoverMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolvePopoverMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolvePopoverMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolvePopoverMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolvePopoverMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePopoverMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePopoverMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolvePopoverMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolvePopoverMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolvePopoverMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolvePopoverMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolvePopoverMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolvePopoverMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolvePopoverMethod "popdown" o = PopoverPopdownMethodInfo
    ResolvePopoverMethod "popup" o = PopoverPopupMethodInfo
    ResolvePopoverMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolvePopoverMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolvePopoverMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolvePopoverMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolvePopoverMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolvePopoverMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolvePopoverMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolvePopoverMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolvePopoverMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolvePopoverMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePopoverMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePopoverMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolvePopoverMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolvePopoverMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolvePopoverMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolvePopoverMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolvePopoverMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolvePopoverMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolvePopoverMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolvePopoverMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolvePopoverMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolvePopoverMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolvePopoverMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolvePopoverMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePopoverMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolvePopoverMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolvePopoverMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolvePopoverMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolvePopoverMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolvePopoverMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolvePopoverMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolvePopoverMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolvePopoverMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolvePopoverMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePopoverMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePopoverMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolvePopoverMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolvePopoverMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolvePopoverMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePopoverMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolvePopoverMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolvePopoverMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolvePopoverMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolvePopoverMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolvePopoverMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePopoverMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolvePopoverMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolvePopoverMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolvePopoverMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePopoverMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolvePopoverMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolvePopoverMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolvePopoverMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolvePopoverMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolvePopoverMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolvePopoverMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolvePopoverMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolvePopoverMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolvePopoverMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolvePopoverMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolvePopoverMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolvePopoverMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolvePopoverMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolvePopoverMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolvePopoverMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolvePopoverMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolvePopoverMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolvePopoverMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolvePopoverMethod "getConstrainTo" o = PopoverGetConstrainToMethodInfo
    ResolvePopoverMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePopoverMethod "getDefaultWidget" o = PopoverGetDefaultWidgetMethodInfo
    ResolvePopoverMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolvePopoverMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolvePopoverMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolvePopoverMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolvePopoverMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolvePopoverMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolvePopoverMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolvePopoverMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolvePopoverMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolvePopoverMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolvePopoverMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolvePopoverMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolvePopoverMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolvePopoverMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolvePopoverMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolvePopoverMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolvePopoverMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolvePopoverMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolvePopoverMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolvePopoverMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolvePopoverMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolvePopoverMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolvePopoverMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolvePopoverMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolvePopoverMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolvePopoverMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolvePopoverMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolvePopoverMethod "getModal" o = PopoverGetModalMethodInfo
    ResolvePopoverMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolvePopoverMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolvePopoverMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolvePopoverMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolvePopoverMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolvePopoverMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolvePopoverMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolvePopoverMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolvePopoverMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolvePopoverMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolvePopoverMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolvePopoverMethod "getPointingTo" o = PopoverGetPointingToMethodInfo
    ResolvePopoverMethod "getPosition" o = PopoverGetPositionMethodInfo
    ResolvePopoverMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolvePopoverMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolvePopoverMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolvePopoverMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolvePopoverMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolvePopoverMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolvePopoverMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePopoverMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePopoverMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolvePopoverMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolvePopoverMethod "getRelativeTo" o = PopoverGetRelativeToMethodInfo
    ResolvePopoverMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolvePopoverMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolvePopoverMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolvePopoverMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolvePopoverMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolvePopoverMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolvePopoverMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolvePopoverMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolvePopoverMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolvePopoverMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolvePopoverMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolvePopoverMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolvePopoverMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolvePopoverMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolvePopoverMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolvePopoverMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolvePopoverMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolvePopoverMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolvePopoverMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolvePopoverMethod "getTransitionsEnabled" o = PopoverGetTransitionsEnabledMethodInfo
    ResolvePopoverMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolvePopoverMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolvePopoverMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolvePopoverMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolvePopoverMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolvePopoverMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolvePopoverMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolvePopoverMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolvePopoverMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolvePopoverMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolvePopoverMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolvePopoverMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolvePopoverMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolvePopoverMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolvePopoverMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolvePopoverMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolvePopoverMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolvePopoverMethod "setConstrainTo" o = PopoverSetConstrainToMethodInfo
    ResolvePopoverMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePopoverMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolvePopoverMethod "setDefaultWidget" o = PopoverSetDefaultWidgetMethodInfo
    ResolvePopoverMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolvePopoverMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolvePopoverMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolvePopoverMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolvePopoverMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolvePopoverMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolvePopoverMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolvePopoverMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolvePopoverMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolvePopoverMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolvePopoverMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolvePopoverMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolvePopoverMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolvePopoverMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolvePopoverMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolvePopoverMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolvePopoverMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolvePopoverMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolvePopoverMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolvePopoverMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolvePopoverMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolvePopoverMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolvePopoverMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolvePopoverMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolvePopoverMethod "setModal" o = PopoverSetModalMethodInfo
    ResolvePopoverMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolvePopoverMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolvePopoverMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolvePopoverMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolvePopoverMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolvePopoverMethod "setPointingTo" o = PopoverSetPointingToMethodInfo
    ResolvePopoverMethod "setPosition" o = PopoverSetPositionMethodInfo
    ResolvePopoverMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePopoverMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolvePopoverMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolvePopoverMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolvePopoverMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolvePopoverMethod "setRelativeTo" o = PopoverSetRelativeToMethodInfo
    ResolvePopoverMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolvePopoverMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolvePopoverMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolvePopoverMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolvePopoverMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolvePopoverMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolvePopoverMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolvePopoverMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolvePopoverMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolvePopoverMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolvePopoverMethod "setTransitionsEnabled" o = PopoverSetTransitionsEnabledMethodInfo
    ResolvePopoverMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolvePopoverMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolvePopoverMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolvePopoverMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolvePopoverMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolvePopoverMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolvePopoverMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePopoverMethod t Popover, O.MethodInfo info Popover p) => OL.IsLabel t (Popover -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Popover::closed
-- | This signal is emitted when the popover is dismissed either through
-- API or user interaction.
-- 
-- /Since: 3.12/
type PopoverClosedCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `PopoverClosedCallback`@.
noPopoverClosedCallback :: Maybe PopoverClosedCallback
noPopoverClosedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_PopoverClosedCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_PopoverClosedCallback`.
foreign import ccall "wrapper"
    mk_PopoverClosedCallback :: C_PopoverClosedCallback -> IO (FunPtr C_PopoverClosedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_PopoverClosed :: MonadIO m => PopoverClosedCallback -> m (GClosure C_PopoverClosedCallback)
genClosure_PopoverClosed cb = liftIO $ do
    let cb' = wrap_PopoverClosedCallback cb
    mk_PopoverClosedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `PopoverClosedCallback` into a `C_PopoverClosedCallback`.
wrap_PopoverClosedCallback ::
    PopoverClosedCallback ->
    C_PopoverClosedCallback
wrap_PopoverClosedCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' popover #closed callback
-- @
-- 
-- 
onPopoverClosed :: (IsPopover a, MonadIO m) => a -> PopoverClosedCallback -> m SignalHandlerId
onPopoverClosed obj cb = liftIO $ do
    let cb' = wrap_PopoverClosedCallback cb
    cb'' <- mk_PopoverClosedCallback cb'
    connectSignalFunPtr obj "closed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [closed](#signal:closed) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' popover #closed callback
-- @
-- 
-- 
afterPopoverClosed :: (IsPopover a, MonadIO m) => a -> PopoverClosedCallback -> m SignalHandlerId
afterPopoverClosed obj cb = liftIO $ do
    let cb' = wrap_PopoverClosedCallback cb
    cb'' <- mk_PopoverClosedCallback cb'
    connectSignalFunPtr obj "closed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data PopoverClosedSignalInfo
instance SignalInfo PopoverClosedSignalInfo where
    type HaskellCallbackType PopoverClosedSignalInfo = PopoverClosedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_PopoverClosedCallback cb
        cb'' <- mk_PopoverClosedCallback cb'
        connectSignalFunPtr obj "closed" cb'' connectMode detail

#endif

-- VVV Prop "constrain-to"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PopoverConstraint"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@constrain-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #constrainTo
-- @
getPopoverConstrainTo :: (MonadIO m, IsPopover o) => o -> m Gtk.Enums.PopoverConstraint
getPopoverConstrainTo obj = liftIO $ B.Properties.getObjectPropertyEnum obj "constrain-to"

-- | Set the value of the “@constrain-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #constrainTo 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverConstrainTo :: (MonadIO m, IsPopover o) => o -> Gtk.Enums.PopoverConstraint -> m ()
setPopoverConstrainTo obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "constrain-to" val

-- | Construct a `GValueConstruct` with valid value for the “@constrain-to@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverConstrainTo :: (IsPopover o) => Gtk.Enums.PopoverConstraint -> IO (GValueConstruct o)
constructPopoverConstrainTo val = B.Properties.constructObjectPropertyEnum "constrain-to" val

#if defined(ENABLE_OVERLOADING)
data PopoverConstrainToPropertyInfo
instance AttrInfo PopoverConstrainToPropertyInfo where
    type AttrAllowedOps PopoverConstrainToPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PopoverConstrainToPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverConstrainToPropertyInfo = (~) Gtk.Enums.PopoverConstraint
    type AttrTransferTypeConstraint PopoverConstrainToPropertyInfo = (~) Gtk.Enums.PopoverConstraint
    type AttrTransferType PopoverConstrainToPropertyInfo = Gtk.Enums.PopoverConstraint
    type AttrGetType PopoverConstrainToPropertyInfo = Gtk.Enums.PopoverConstraint
    type AttrLabel PopoverConstrainToPropertyInfo = "constrain-to"
    type AttrOrigin PopoverConstrainToPropertyInfo = Popover
    attrGet = getPopoverConstrainTo
    attrSet = setPopoverConstrainTo
    attrTransfer _ v = do
        return v
    attrConstruct = constructPopoverConstrainTo
    attrClear = undefined
#endif

-- VVV Prop "modal"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@modal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #modal
-- @
getPopoverModal :: (MonadIO m, IsPopover o) => o -> m Bool
getPopoverModal obj = liftIO $ B.Properties.getObjectPropertyBool obj "modal"

-- | Set the value of the “@modal@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #modal 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverModal :: (MonadIO m, IsPopover o) => o -> Bool -> m ()
setPopoverModal obj val = liftIO $ B.Properties.setObjectPropertyBool obj "modal" val

-- | Construct a `GValueConstruct` with valid value for the “@modal@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverModal :: (IsPopover o) => Bool -> IO (GValueConstruct o)
constructPopoverModal val = B.Properties.constructObjectPropertyBool "modal" val

#if defined(ENABLE_OVERLOADING)
data PopoverModalPropertyInfo
instance AttrInfo PopoverModalPropertyInfo where
    type AttrAllowedOps PopoverModalPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PopoverModalPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverModalPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PopoverModalPropertyInfo = (~) Bool
    type AttrTransferType PopoverModalPropertyInfo = Bool
    type AttrGetType PopoverModalPropertyInfo = Bool
    type AttrLabel PopoverModalPropertyInfo = "modal"
    type AttrOrigin PopoverModalPropertyInfo = Popover
    attrGet = getPopoverModal
    attrSet = setPopoverModal
    attrTransfer _ v = do
        return v
    attrConstruct = constructPopoverModal
    attrClear = undefined
#endif

-- VVV Prop "pointing-to"
   -- Type: TInterface (Name {namespace = "Gdk", name = "Rectangle"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Just False)

-- | Get the value of the “@pointing-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #pointingTo
-- @
getPopoverPointingTo :: (MonadIO m, IsPopover o) => o -> m (Maybe Gdk.Rectangle.Rectangle)
getPopoverPointingTo obj = liftIO $ B.Properties.getObjectPropertyBoxed obj "pointing-to" Gdk.Rectangle.Rectangle

-- | Set the value of the “@pointing-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #pointingTo 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverPointingTo :: (MonadIO m, IsPopover o) => o -> Gdk.Rectangle.Rectangle -> m ()
setPopoverPointingTo obj val = liftIO $ B.Properties.setObjectPropertyBoxed obj "pointing-to" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@pointing-to@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverPointingTo :: (IsPopover o) => Gdk.Rectangle.Rectangle -> IO (GValueConstruct o)
constructPopoverPointingTo val = B.Properties.constructObjectPropertyBoxed "pointing-to" (Just val)

#if defined(ENABLE_OVERLOADING)
data PopoverPointingToPropertyInfo
instance AttrInfo PopoverPointingToPropertyInfo where
    type AttrAllowedOps PopoverPointingToPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PopoverPointingToPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverPointingToPropertyInfo = (~) Gdk.Rectangle.Rectangle
    type AttrTransferTypeConstraint PopoverPointingToPropertyInfo = (~) Gdk.Rectangle.Rectangle
    type AttrTransferType PopoverPointingToPropertyInfo = Gdk.Rectangle.Rectangle
    type AttrGetType PopoverPointingToPropertyInfo = (Maybe Gdk.Rectangle.Rectangle)
    type AttrLabel PopoverPointingToPropertyInfo = "pointing-to"
    type AttrOrigin PopoverPointingToPropertyInfo = Popover
    attrGet = getPopoverPointingTo
    attrSet = setPopoverPointingTo
    attrTransfer _ v = do
        return v
    attrConstruct = constructPopoverPointingTo
    attrClear = undefined
#endif

-- VVV Prop "position"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PositionType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #position
-- @
getPopoverPosition :: (MonadIO m, IsPopover o) => o -> m Gtk.Enums.PositionType
getPopoverPosition obj = liftIO $ B.Properties.getObjectPropertyEnum obj "position"

-- | Set the value of the “@position@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #position 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverPosition :: (MonadIO m, IsPopover o) => o -> Gtk.Enums.PositionType -> m ()
setPopoverPosition obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "position" val

-- | Construct a `GValueConstruct` with valid value for the “@position@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverPosition :: (IsPopover o) => Gtk.Enums.PositionType -> IO (GValueConstruct o)
constructPopoverPosition val = B.Properties.constructObjectPropertyEnum "position" val

#if defined(ENABLE_OVERLOADING)
data PopoverPositionPropertyInfo
instance AttrInfo PopoverPositionPropertyInfo where
    type AttrAllowedOps PopoverPositionPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PopoverPositionPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverPositionPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferTypeConstraint PopoverPositionPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferType PopoverPositionPropertyInfo = Gtk.Enums.PositionType
    type AttrGetType PopoverPositionPropertyInfo = Gtk.Enums.PositionType
    type AttrLabel PopoverPositionPropertyInfo = "position"
    type AttrOrigin PopoverPositionPropertyInfo = Popover
    attrGet = getPopoverPosition
    attrSet = setPopoverPosition
    attrTransfer _ v = do
        return v
    attrConstruct = constructPopoverPosition
    attrClear = undefined
#endif

-- VVV Prop "relative-to"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just True)

-- | Get the value of the “@relative-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #relativeTo
-- @
getPopoverRelativeTo :: (MonadIO m, IsPopover o) => o -> m Gtk.Widget.Widget
getPopoverRelativeTo obj = liftIO $ checkUnexpectedNothing "getPopoverRelativeTo" $ B.Properties.getObjectPropertyObject obj "relative-to" Gtk.Widget.Widget

-- | Set the value of the “@relative-to@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #relativeTo 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverRelativeTo :: (MonadIO m, IsPopover o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setPopoverRelativeTo obj val = liftIO $ B.Properties.setObjectPropertyObject obj "relative-to" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@relative-to@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverRelativeTo :: (IsPopover o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructPopoverRelativeTo val = B.Properties.constructObjectPropertyObject "relative-to" (Just val)

-- | Set the value of the “@relative-to@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #relativeTo
-- @
clearPopoverRelativeTo :: (MonadIO m, IsPopover o) => o -> m ()
clearPopoverRelativeTo obj = liftIO $ B.Properties.setObjectPropertyObject obj "relative-to" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data PopoverRelativeToPropertyInfo
instance AttrInfo PopoverRelativeToPropertyInfo where
    type AttrAllowedOps PopoverRelativeToPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint PopoverRelativeToPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverRelativeToPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint PopoverRelativeToPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType PopoverRelativeToPropertyInfo = Gtk.Widget.Widget
    type AttrGetType PopoverRelativeToPropertyInfo = Gtk.Widget.Widget
    type AttrLabel PopoverRelativeToPropertyInfo = "relative-to"
    type AttrOrigin PopoverRelativeToPropertyInfo = Popover
    attrGet = getPopoverRelativeTo
    attrSet = setPopoverRelativeTo
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructPopoverRelativeTo
    attrClear = clearPopoverRelativeTo
#endif

-- VVV Prop "transitions-enabled"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@transitions-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' popover #transitionsEnabled
-- @
getPopoverTransitionsEnabled :: (MonadIO m, IsPopover o) => o -> m Bool
getPopoverTransitionsEnabled obj = liftIO $ B.Properties.getObjectPropertyBool obj "transitions-enabled"

-- | Set the value of the “@transitions-enabled@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' popover [ #transitionsEnabled 'Data.GI.Base.Attributes.:=' value ]
-- @
setPopoverTransitionsEnabled :: (MonadIO m, IsPopover o) => o -> Bool -> m ()
setPopoverTransitionsEnabled obj val = liftIO $ B.Properties.setObjectPropertyBool obj "transitions-enabled" val

-- | Construct a `GValueConstruct` with valid value for the “@transitions-enabled@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructPopoverTransitionsEnabled :: (IsPopover o) => Bool -> IO (GValueConstruct o)
constructPopoverTransitionsEnabled val = B.Properties.constructObjectPropertyBool "transitions-enabled" val

#if defined(ENABLE_OVERLOADING)
data PopoverTransitionsEnabledPropertyInfo
instance AttrInfo PopoverTransitionsEnabledPropertyInfo where
    type AttrAllowedOps PopoverTransitionsEnabledPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint PopoverTransitionsEnabledPropertyInfo = IsPopover
    type AttrSetTypeConstraint PopoverTransitionsEnabledPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint PopoverTransitionsEnabledPropertyInfo = (~) Bool
    type AttrTransferType PopoverTransitionsEnabledPropertyInfo = Bool
    type AttrGetType PopoverTransitionsEnabledPropertyInfo = Bool
    type AttrLabel PopoverTransitionsEnabledPropertyInfo = "transitions-enabled"
    type AttrOrigin PopoverTransitionsEnabledPropertyInfo = Popover
    attrGet = getPopoverTransitionsEnabled
    attrSet = setPopoverTransitionsEnabled
    attrTransfer _ v = do
        return v
    attrConstruct = constructPopoverTransitionsEnabled
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Popover
type instance O.AttributeList Popover = PopoverAttributeList
type PopoverAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("constrainTo", PopoverConstrainToPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("modal", PopoverModalPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("pointingTo", PopoverPointingToPropertyInfo), '("position", PopoverPositionPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("relativeTo", PopoverRelativeToPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("transitionsEnabled", PopoverTransitionsEnabledPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
popoverConstrainTo :: AttrLabelProxy "constrainTo"
popoverConstrainTo = AttrLabelProxy

popoverModal :: AttrLabelProxy "modal"
popoverModal = AttrLabelProxy

popoverPointingTo :: AttrLabelProxy "pointingTo"
popoverPointingTo = AttrLabelProxy

popoverPosition :: AttrLabelProxy "position"
popoverPosition = AttrLabelProxy

popoverRelativeTo :: AttrLabelProxy "relativeTo"
popoverRelativeTo = AttrLabelProxy

popoverTransitionsEnabled :: AttrLabelProxy "transitionsEnabled"
popoverTransitionsEnabled = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Popover = PopoverSignalList
type PopoverSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("closed", PopoverClosedSignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Popover::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "relative_to"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GtkWidget the popover is related to"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Popover" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_popover_new" gtk_popover_new :: 
    Ptr Gtk.Widget.Widget ->                -- relative_to : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr Popover)

-- | Creates a new popover to point to /@relativeTo@/
-- 
-- /Since: 3.12/
popoverNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a) =>
    Maybe (a)
    -- ^ /@relativeTo@/: t'GI.Gtk.Objects.Widget.Widget' the popover is related to
    -> m Popover
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Popover.Popover'
popoverNew relativeTo = liftIO $ do
    maybeRelativeTo <- case relativeTo of
        Nothing -> return nullPtr
        Just jRelativeTo -> do
            jRelativeTo' <- unsafeManagedPtrCastPtr jRelativeTo
            return jRelativeTo'
    result <- gtk_popover_new maybeRelativeTo
    checkUnexpectedReturnNULL "popoverNew" result
    result' <- (newObject Popover) result
    whenJust relativeTo touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Popover::new_from_model
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "relative_to"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GtkWidget the popover is related to"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "MenuModel" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GMenuModel" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Popover" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_popover_new_from_model" gtk_popover_new_from_model :: 
    Ptr Gtk.Widget.Widget ->                -- relative_to : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gio.MenuModel.MenuModel ->          -- model : TInterface (Name {namespace = "Gio", name = "MenuModel"})
    IO (Ptr Popover)

-- | Creates a t'GI.Gtk.Objects.Popover.Popover' and populates it according to
-- /@model@/. The popover is pointed to the /@relativeTo@/ widget.
-- 
-- The created buttons are connected to actions found in the
-- t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow' to which the popover belongs - typically
-- by means of being attached to a widget that is contained within
-- the @/GtkApplicationWindows/@ widget hierarchy.
-- 
-- Actions can also be added using 'GI.Gtk.Objects.Widget.widgetInsertActionGroup'
-- on the menus attach widget or on any of its parent widgets.
-- 
-- /Since: 3.12/
popoverNewFromModel ::
    (B.CallStack.HasCallStack, MonadIO m, Gtk.Widget.IsWidget a, Gio.MenuModel.IsMenuModel b) =>
    Maybe (a)
    -- ^ /@relativeTo@/: t'GI.Gtk.Objects.Widget.Widget' the popover is related to
    -> b
    -- ^ /@model@/: a t'GI.Gio.Objects.MenuModel.MenuModel'
    -> m Popover
    -- ^ __Returns:__ the new t'GI.Gtk.Objects.Popover.Popover'
popoverNewFromModel relativeTo model = liftIO $ do
    maybeRelativeTo <- case relativeTo of
        Nothing -> return nullPtr
        Just jRelativeTo -> do
            jRelativeTo' <- unsafeManagedPtrCastPtr jRelativeTo
            return jRelativeTo'
    model' <- unsafeManagedPtrCastPtr model
    result <- gtk_popover_new_from_model maybeRelativeTo model'
    checkUnexpectedReturnNULL "popoverNewFromModel" result
    result' <- (newObject Popover) result
    whenJust relativeTo touchManagedPtr
    touchManagedPtr model
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Popover::bind_model
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "model"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "MenuModel" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the #GMenuModel to bind to or %NULL to remove\n  binding"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "action_namespace"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the namespace for actions in @model"
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

foreign import ccall "gtk_popover_bind_model" gtk_popover_bind_model :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    Ptr Gio.MenuModel.MenuModel ->          -- model : TInterface (Name {namespace = "Gio", name = "MenuModel"})
    CString ->                              -- action_namespace : TBasicType TUTF8
    IO ()

-- | Establishes a binding between a t'GI.Gtk.Objects.Popover.Popover' and a t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- The contents of /@popover@/ are removed and then refilled with menu items
-- according to /@model@/.  When /@model@/ changes, /@popover@/ is updated.
-- Calling this function twice on /@popover@/ with different /@model@/ will
-- cause the first binding to be replaced with a binding to the new
-- model. If /@model@/ is 'P.Nothing' then any previous binding is undone and
-- all children are removed.
-- 
-- If /@actionNamespace@/ is non-'P.Nothing' then the effect is as if all
-- actions mentioned in the /@model@/ have their names prefixed with the
-- namespace, plus a dot.  For example, if the action “quit” is
-- mentioned and /@actionNamespace@/ is “app” then the effective action
-- name is “app.quit”.
-- 
-- This function uses t'GI.Gtk.Interfaces.Actionable.Actionable' to define the action name and
-- target values on the created menu items.  If you want to use an
-- action group other than “app” and “win”, or if you want to use a
-- t'GI.Gtk.Objects.MenuShell.MenuShell' outside of a t'GI.Gtk.Objects.ApplicationWindow.ApplicationWindow', then you will need
-- to attach your own action group to the widget hierarchy using
-- 'GI.Gtk.Objects.Widget.widgetInsertActionGroup'.  As an example, if you created a
-- group with a “quit” action and inserted it with the name “mygroup”
-- then you would use the action name “mygroup.quit” in your
-- t'GI.Gio.Objects.MenuModel.MenuModel'.
-- 
-- /Since: 3.12/
popoverBindModel ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a, Gio.MenuModel.IsMenuModel b) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Maybe (b)
    -- ^ /@model@/: the t'GI.Gio.Objects.MenuModel.MenuModel' to bind to or 'P.Nothing' to remove
    --   binding
    -> Maybe (T.Text)
    -- ^ /@actionNamespace@/: the namespace for actions in /@model@/
    -> m ()
popoverBindModel popover model actionNamespace = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    maybeModel <- case model of
        Nothing -> return nullPtr
        Just jModel -> do
            jModel' <- unsafeManagedPtrCastPtr jModel
            return jModel'
    maybeActionNamespace <- case actionNamespace of
        Nothing -> return nullPtr
        Just jActionNamespace -> do
            jActionNamespace' <- textToCString jActionNamespace
            return jActionNamespace'
    gtk_popover_bind_model popover' maybeModel maybeActionNamespace
    touchManagedPtr popover
    whenJust model touchManagedPtr
    freeMem maybeActionNamespace
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverBindModelMethodInfo
instance (signature ~ (Maybe (b) -> Maybe (T.Text) -> m ()), MonadIO m, IsPopover a, Gio.MenuModel.IsMenuModel b) => O.MethodInfo PopoverBindModelMethodInfo a signature where
    overloadedMethod = popoverBindModel

#endif

-- method Popover::get_constrain_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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
--                  Name { namespace = "Gtk" , name = "PopoverConstraint" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_popover_get_constrain_to" gtk_popover_get_constrain_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO CUInt

-- | Returns the constraint for placing this popover.
-- See 'GI.Gtk.Objects.Popover.popoverSetConstrainTo'.
-- 
-- /Since: 3.20/
popoverGetConstrainTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m Gtk.Enums.PopoverConstraint
    -- ^ __Returns:__ the constraint for placing this popover.
popoverGetConstrainTo popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_constrain_to popover'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr popover
    return result'

#if defined(ENABLE_OVERLOADING)
data PopoverGetConstrainToMethodInfo
instance (signature ~ (m Gtk.Enums.PopoverConstraint), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetConstrainToMethodInfo a signature where
    overloadedMethod = popoverGetConstrainTo

#endif

-- method Popover::get_default_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_get_default_widget" gtk_popover_get_default_widget :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets the widget that should be set as the default while
-- the popover is shown.
-- 
-- /Since: 3.18/
popoverGetDefaultWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the default widget,
    -- or 'P.Nothing' if there is none
popoverGetDefaultWidget popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_default_widget popover'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr popover
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data PopoverGetDefaultWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetDefaultWidgetMethodInfo a signature where
    overloadedMethod = popoverGetDefaultWidget

#endif

-- method Popover::get_modal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_get_modal" gtk_popover_get_modal :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO CInt

-- | Returns whether the popover is modal, see gtk_popover_set_modal to
-- see the implications of this.
-- 
-- /Since: 3.12/
popoverGetModal ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m Bool
    -- ^ __Returns:__ @/TRUE/@ if /@popover@/ is modal
popoverGetModal popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_modal popover'
    let result' = (/= 0) result
    touchManagedPtr popover
    return result'

#if defined(ENABLE_OVERLOADING)
data PopoverGetModalMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetModalMethodInfo a signature where
    overloadedMethod = popoverGetModal

#endif

-- method Popover::get_pointing_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "location to store the rectangle"
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_popover_get_pointing_to" gtk_popover_get_pointing_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO CInt

-- | If a rectangle to point to has been set, this function will
-- return 'P.True' and fill in /@rect@/ with such rectangle, otherwise
-- it will return 'P.False' and fill in /@rect@/ with the attached
-- widget coordinates.
popoverGetPointingTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m ((Bool, Gdk.Rectangle.Rectangle))
    -- ^ __Returns:__ 'P.True' if a rectangle to point to was set.
popoverGetPointingTo popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    rect <- callocBoxedBytes 16 :: IO (Ptr Gdk.Rectangle.Rectangle)
    result <- gtk_popover_get_pointing_to popover' rect
    let result' = (/= 0) result
    rect' <- (wrapBoxed Gdk.Rectangle.Rectangle) rect
    touchManagedPtr popover
    return (result', rect')

#if defined(ENABLE_OVERLOADING)
data PopoverGetPointingToMethodInfo
instance (signature ~ (m ((Bool, Gdk.Rectangle.Rectangle))), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetPointingToMethodInfo a signature where
    overloadedMethod = popoverGetPointingTo

#endif

-- method Popover::get_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Gtk" , name = "PositionType" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_popover_get_position" gtk_popover_get_position :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO CUInt

-- | Returns the preferred position of /@popover@/.
popoverGetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m Gtk.Enums.PositionType
    -- ^ __Returns:__ The preferred position.
popoverGetPosition popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_position popover'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr popover
    return result'

#if defined(ENABLE_OVERLOADING)
data PopoverGetPositionMethodInfo
instance (signature ~ (m Gtk.Enums.PositionType), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetPositionMethodInfo a signature where
    overloadedMethod = popoverGetPosition

#endif

-- method Popover::get_relative_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_get_relative_to" gtk_popover_get_relative_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the widget /@popover@/ is currently attached to
-- 
-- /Since: 3.12/
popoverGetRelativeTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m Gtk.Widget.Widget
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Widget.Widget'
popoverGetRelativeTo popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_relative_to popover'
    checkUnexpectedReturnNULL "popoverGetRelativeTo" result
    result' <- (newObject Gtk.Widget.Widget) result
    touchManagedPtr popover
    return result'

#if defined(ENABLE_OVERLOADING)
data PopoverGetRelativeToMethodInfo
instance (signature ~ (m Gtk.Widget.Widget), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetRelativeToMethodInfo a signature where
    overloadedMethod = popoverGetRelativeTo

#endif

-- method Popover::get_transitions_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_get_transitions_enabled" gtk_popover_get_transitions_enabled :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO CInt

{-# DEPRECATED popoverGetTransitionsEnabled ["(Since version 3.22)","You can show or hide the popover without transitions","  using 'GI.Gtk.Objects.Widget.widgetShow' and 'GI.Gtk.Objects.Widget.widgetHide' while 'GI.Gtk.Objects.Popover.popoverPopup'","  and 'GI.Gtk.Objects.Popover.popoverPopdown' will use transitions."] #-}
-- | Returns whether show\/hide transitions are enabled on this popover.
-- 
-- /Since: 3.16/
popoverGetTransitionsEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m Bool
    -- ^ __Returns:__ @/TRUE/@ if the show and hide transitions of the given
    --          popover are enabled, @/FALSE/@ otherwise.
popoverGetTransitionsEnabled popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    result <- gtk_popover_get_transitions_enabled popover'
    let result' = (/= 0) result
    touchManagedPtr popover
    return result'

#if defined(ENABLE_OVERLOADING)
data PopoverGetTransitionsEnabledMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsPopover a) => O.MethodInfo PopoverGetTransitionsEnabledMethodInfo a signature where
    overloadedMethod = popoverGetTransitionsEnabled

#endif

-- method Popover::popdown
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_popdown" gtk_popover_popdown :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO ()

-- | Pops /@popover@/ down.This is different than a 'GI.Gtk.Objects.Widget.widgetHide' call
-- in that it shows the popover with a transition. If you want to hide
-- the popover without a transition, use 'GI.Gtk.Objects.Widget.widgetHide'.
-- 
-- /Since: 3.22/
popoverPopdown ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m ()
popoverPopdown popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    gtk_popover_popdown popover'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverPopdownMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverPopdownMethodInfo a signature where
    overloadedMethod = popoverPopdown

#endif

-- method Popover::popup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_popup" gtk_popover_popup :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    IO ()

-- | Pops /@popover@/ up. This is different than a 'GI.Gtk.Objects.Widget.widgetShow' call
-- in that it shows the popover with a transition. If you want to show
-- the popover without a transition, use 'GI.Gtk.Objects.Widget.widgetShow'.
-- 
-- /Since: 3.22/
popoverPopup ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> m ()
popoverPopup popover = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    gtk_popover_popup popover'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverPopupMethodInfo
instance (signature ~ (m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverPopupMethodInfo a signature where
    overloadedMethod = popoverPopup

#endif

-- method Popover::set_constrain_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "constraint"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PopoverConstraint" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new constraint" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_set_constrain_to" gtk_popover_set_constrain_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    CUInt ->                                -- constraint : TInterface (Name {namespace = "Gtk", name = "PopoverConstraint"})
    IO ()

-- | Sets a constraint for positioning this popover.
-- 
-- Note that not all platforms support placing popovers freely,
-- and may already impose constraints.
-- 
-- /Since: 3.20/
popoverSetConstrainTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Gtk.Enums.PopoverConstraint
    -- ^ /@constraint@/: the new constraint
    -> m ()
popoverSetConstrainTo popover constraint = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    let constraint' = (fromIntegral . fromEnum) constraint
    gtk_popover_set_constrain_to popover' constraint'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetConstrainToMethodInfo
instance (signature ~ (Gtk.Enums.PopoverConstraint -> m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverSetConstrainToMethodInfo a signature where
    overloadedMethod = popoverSetConstrainTo

#endif

-- method Popover::set_default_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new default widget, or %NULL"
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

foreign import ccall "gtk_popover_set_default_widget" gtk_popover_set_default_widget :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets the widget that should be set as default widget while
-- the popover is shown (see 'GI.Gtk.Objects.Window.windowSetDefault'). t'GI.Gtk.Objects.Popover.Popover'
-- remembers the previous default widget and reestablishes it
-- when the popover is dismissed.
-- 
-- /Since: 3.18/
popoverSetDefaultWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Maybe (b)
    -- ^ /@widget@/: the new default widget, or 'P.Nothing'
    -> m ()
popoverSetDefaultWidget popover widget = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    maybeWidget <- case widget of
        Nothing -> return nullPtr
        Just jWidget -> do
            jWidget' <- unsafeManagedPtrCastPtr jWidget
            return jWidget'
    gtk_popover_set_default_widget popover' maybeWidget
    touchManagedPtr popover
    whenJust widget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetDefaultWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsPopover a, Gtk.Widget.IsWidget b) => O.MethodInfo PopoverSetDefaultWidgetMethodInfo a signature where
    overloadedMethod = popoverSetDefaultWidget

#endif

-- method Popover::set_modal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "modal"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "#TRUE to make popover claim all input within the toplevel"
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

foreign import ccall "gtk_popover_set_modal" gtk_popover_set_modal :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    CInt ->                                 -- modal : TBasicType TBoolean
    IO ()

-- | Sets whether /@popover@/ is modal, a modal popover will grab all input
-- within the toplevel and grab the keyboard focus on it when being
-- displayed. Clicking outside the popover area or pressing Esc will
-- dismiss the popover and ungrab input.
-- 
-- /Since: 3.12/
popoverSetModal ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Bool
    -- ^ /@modal@/: @/TRUE/@ to make popover claim all input within the toplevel
    -> m ()
popoverSetModal popover modal = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    let modal' = (fromIntegral . fromEnum) modal
    gtk_popover_set_modal popover' modal'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetModalMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverSetModalMethodInfo a signature where
    overloadedMethod = popoverSetModal

#endif

-- method Popover::set_pointing_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "rect"
--           , argType =
--               TInterface Name { namespace = "Gdk" , name = "Rectangle" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "rectangle to point to"
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

foreign import ccall "gtk_popover_set_pointing_to" gtk_popover_set_pointing_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    Ptr Gdk.Rectangle.Rectangle ->          -- rect : TInterface (Name {namespace = "Gdk", name = "Rectangle"})
    IO ()

-- | Sets the rectangle that /@popover@/ will point to, in the
-- coordinate space of the widget /@popover@/ is attached to,
-- see 'GI.Gtk.Objects.Popover.popoverSetRelativeTo'.
-- 
-- /Since: 3.12/
popoverSetPointingTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Gdk.Rectangle.Rectangle
    -- ^ /@rect@/: rectangle to point to
    -> m ()
popoverSetPointingTo popover rect = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    rect' <- unsafeManagedPtrGetPtr rect
    gtk_popover_set_pointing_to popover' rect'
    touchManagedPtr popover
    touchManagedPtr rect
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetPointingToMethodInfo
instance (signature ~ (Gdk.Rectangle.Rectangle -> m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverSetPointingToMethodInfo a signature where
    overloadedMethod = popoverSetPointingTo

#endif

-- method Popover::set_position
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "preferred popover position"
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

foreign import ccall "gtk_popover_set_position" gtk_popover_set_position :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    CUInt ->                                -- position : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    IO ()

-- | Sets the preferred position for /@popover@/ to appear. If the /@popover@/
-- is currently visible, it will be immediately updated.
-- 
-- This preference will be respected where possible, although
-- on lack of space (eg. if close to the window edges), the
-- t'GI.Gtk.Objects.Popover.Popover' may choose to appear on the opposite side
-- 
-- /Since: 3.12/
popoverSetPosition ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Gtk.Enums.PositionType
    -- ^ /@position@/: preferred popover position
    -> m ()
popoverSetPosition popover position = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    let position' = (fromIntegral . fromEnum) position
    gtk_popover_set_position popover' position'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetPositionMethodInfo
instance (signature ~ (Gtk.Enums.PositionType -> m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverSetPositionMethodInfo a signature where
    overloadedMethod = popoverSetPosition

#endif

-- method Popover::set_relative_to
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "relative_to"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_popover_set_relative_to" gtk_popover_set_relative_to :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    Ptr Gtk.Widget.Widget ->                -- relative_to : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Sets a new widget to be attached to /@popover@/. If /@popover@/ is
-- visible, the position will be updated.
-- 
-- Note: the ownership of popovers is always given to their /@relativeTo@/
-- widget, so if /@relativeTo@/ is set to 'P.Nothing' on an attached /@popover@/, it
-- will be detached from its previous widget, and consequently destroyed
-- unless extra references are kept.
-- 
-- /Since: 3.12/
popoverSetRelativeTo ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Maybe (b)
    -- ^ /@relativeTo@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m ()
popoverSetRelativeTo popover relativeTo = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    maybeRelativeTo <- case relativeTo of
        Nothing -> return nullPtr
        Just jRelativeTo -> do
            jRelativeTo' <- unsafeManagedPtrCastPtr jRelativeTo
            return jRelativeTo'
    gtk_popover_set_relative_to popover' maybeRelativeTo
    touchManagedPtr popover
    whenJust relativeTo touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetRelativeToMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsPopover a, Gtk.Widget.IsWidget b) => O.MethodInfo PopoverSetRelativeToMethodInfo a signature where
    overloadedMethod = popoverSetRelativeTo

#endif

-- method Popover::set_transitions_enabled
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "popover"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Popover" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkPopover" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "transitions_enabled"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Whether transitions are enabled"
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

foreign import ccall "gtk_popover_set_transitions_enabled" gtk_popover_set_transitions_enabled :: 
    Ptr Popover ->                          -- popover : TInterface (Name {namespace = "Gtk", name = "Popover"})
    CInt ->                                 -- transitions_enabled : TBasicType TBoolean
    IO ()

{-# DEPRECATED popoverSetTransitionsEnabled ["(Since version 3.22)","You can show or hide the popover without transitions","  using 'GI.Gtk.Objects.Widget.widgetShow' and 'GI.Gtk.Objects.Widget.widgetHide' while 'GI.Gtk.Objects.Popover.popoverPopup'","  and 'GI.Gtk.Objects.Popover.popoverPopdown' will use transitions."] #-}
-- | Sets whether show\/hide transitions are enabled on this popover
-- 
-- /Since: 3.16/
popoverSetTransitionsEnabled ::
    (B.CallStack.HasCallStack, MonadIO m, IsPopover a) =>
    a
    -- ^ /@popover@/: a t'GI.Gtk.Objects.Popover.Popover'
    -> Bool
    -- ^ /@transitionsEnabled@/: Whether transitions are enabled
    -> m ()
popoverSetTransitionsEnabled popover transitionsEnabled = liftIO $ do
    popover' <- unsafeManagedPtrCastPtr popover
    let transitionsEnabled' = (fromIntegral . fromEnum) transitionsEnabled
    gtk_popover_set_transitions_enabled popover' transitionsEnabled'
    touchManagedPtr popover
    return ()

#if defined(ENABLE_OVERLOADING)
data PopoverSetTransitionsEnabledMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsPopover a) => O.MethodInfo PopoverSetTransitionsEnabledMethodInfo a signature where
    overloadedMethod = popoverSetTransitionsEnabled

#endif

