{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- A t'GI.Gtk.Objects.Expander.Expander' allows the user to hide or show its child by clicking
-- on an expander triangle similar to the triangles used in a t'GI.Gtk.Objects.TreeView.TreeView'.
-- 
-- Normally you use an expander as you would use any other descendant
-- of t'GI.Gtk.Objects.Bin.Bin'; you create the child widget and use 'GI.Gtk.Objects.Container.containerAdd'
-- to add it to the expander. When the expander is toggled, it will take
-- care of showing and hiding the child automatically.
-- 
-- = Special Usage
-- 
-- There are situations in which you may prefer to show and hide the
-- expanded widget yourself, such as when you want to actually create
-- the widget at expansion time. In this case, create a t'GI.Gtk.Objects.Expander.Expander'
-- but do not add a child to it. The expander widget has an
-- t'GI.Gtk.Objects.Expander.Expander':@/expanded/@ property which can be used to monitor
-- its expansion state. You should watch this property with a signal
-- connection as follows:
-- 
-- 
-- === /C code/
-- >
-- >static void
-- >expander_callback (GObject    *object,
-- >                   GParamSpec *param_spec,
-- >                   gpointer    user_data)
-- >{
-- >  GtkExpander *expander;
-- >
-- >  expander = GTK_EXPANDER (object);
-- >
-- >  if (gtk_expander_get_expanded (expander))
-- >    {
-- >      // Show or create widgets
-- >    }
-- >  else
-- >    {
-- >      // Hide or destroy widgets
-- >    }
-- >}
-- >
-- >static void
-- >create_expander (void)
-- >{
-- >  GtkWidget *expander = gtk_expander_new_with_mnemonic ("_More Options");
-- >  g_signal_connect (expander, "notify::expanded",
-- >                    G_CALLBACK (expander_callback), NULL);
-- >
-- >  // ...
-- >}
-- 
-- 
-- = GtkExpander as GtkBuildable
-- 
-- The GtkExpander implementation of the GtkBuildable interface supports
-- placing a child in the label position by specifying “label” as the
-- “type” attribute of a \<child> element. A normal content child can be
-- specified without specifying a \<child> type attribute.
-- 
-- An example of a UI definition fragment with GtkExpander:
-- >
-- ><object class="GtkExpander">
-- >  <child type="label">
-- >    <object class="GtkLabel" id="expander-label"/>
-- >  </child>
-- >  <child>
-- >    <object class="GtkEntry" id="expander-content"/>
-- >  </child>
-- ></object>
-- 
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >expander
-- >├── title
-- >│   ├── arrow
-- >│   ╰── <label widget>
-- >╰── <child>
-- 
-- 
-- GtkExpander has three CSS nodes, the main node with the name expander,
-- a subnode with name title and node below it with name arrow. The arrow of an
-- expander that is showing its child gets the :checked pseudoclass added to it.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Expander
    ( 

-- * Exported types
    Expander(..)                            ,
    IsExpander                              ,
    toExpander                              ,
    noExpander                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveExpanderMethod                   ,
#endif


-- ** getExpanded #method:getExpanded#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetExpandedMethodInfo           ,
#endif
    expanderGetExpanded                     ,


-- ** getLabel #method:getLabel#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetLabelMethodInfo              ,
#endif
    expanderGetLabel                        ,


-- ** getLabelFill #method:getLabelFill#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetLabelFillMethodInfo          ,
#endif
    expanderGetLabelFill                    ,


-- ** getLabelWidget #method:getLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetLabelWidgetMethodInfo        ,
#endif
    expanderGetLabelWidget                  ,


-- ** getResizeToplevel #method:getResizeToplevel#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetResizeToplevelMethodInfo     ,
#endif
    expanderGetResizeToplevel               ,


-- ** getSpacing #method:getSpacing#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetSpacingMethodInfo            ,
#endif
    expanderGetSpacing                      ,


-- ** getUseMarkup #method:getUseMarkup#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetUseMarkupMethodInfo          ,
#endif
    expanderGetUseMarkup                    ,


-- ** getUseUnderline #method:getUseUnderline#

#if defined(ENABLE_OVERLOADING)
    ExpanderGetUseUnderlineMethodInfo       ,
#endif
    expanderGetUseUnderline                 ,


-- ** new #method:new#

    expanderNew                             ,


-- ** newWithMnemonic #method:newWithMnemonic#

    expanderNewWithMnemonic                 ,


-- ** setExpanded #method:setExpanded#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetExpandedMethodInfo           ,
#endif
    expanderSetExpanded                     ,


-- ** setLabel #method:setLabel#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetLabelMethodInfo              ,
#endif
    expanderSetLabel                        ,


-- ** setLabelFill #method:setLabelFill#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetLabelFillMethodInfo          ,
#endif
    expanderSetLabelFill                    ,


-- ** setLabelWidget #method:setLabelWidget#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetLabelWidgetMethodInfo        ,
#endif
    expanderSetLabelWidget                  ,


-- ** setResizeToplevel #method:setResizeToplevel#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetResizeToplevelMethodInfo     ,
#endif
    expanderSetResizeToplevel               ,


-- ** setSpacing #method:setSpacing#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetSpacingMethodInfo            ,
#endif
    expanderSetSpacing                      ,


-- ** setUseMarkup #method:setUseMarkup#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetUseMarkupMethodInfo          ,
#endif
    expanderSetUseMarkup                    ,


-- ** setUseUnderline #method:setUseUnderline#

#if defined(ENABLE_OVERLOADING)
    ExpanderSetUseUnderlineMethodInfo       ,
#endif
    expanderSetUseUnderline                 ,




 -- * Properties
-- ** expanded #attr:expanded#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderExpandedPropertyInfo            ,
#endif
    constructExpanderExpanded               ,
#if defined(ENABLE_OVERLOADING)
    expanderExpanded                        ,
#endif
    getExpanderExpanded                     ,
    setExpanderExpanded                     ,


-- ** label #attr:label#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderLabelPropertyInfo               ,
#endif
    clearExpanderLabel                      ,
    constructExpanderLabel                  ,
#if defined(ENABLE_OVERLOADING)
    expanderLabel                           ,
#endif
    getExpanderLabel                        ,
    setExpanderLabel                        ,


-- ** labelFill #attr:labelFill#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderLabelFillPropertyInfo           ,
#endif
    constructExpanderLabelFill              ,
#if defined(ENABLE_OVERLOADING)
    expanderLabelFill                       ,
#endif
    getExpanderLabelFill                    ,
    setExpanderLabelFill                    ,


-- ** labelWidget #attr:labelWidget#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderLabelWidgetPropertyInfo         ,
#endif
    clearExpanderLabelWidget                ,
    constructExpanderLabelWidget            ,
#if defined(ENABLE_OVERLOADING)
    expanderLabelWidget                     ,
#endif
    getExpanderLabelWidget                  ,
    setExpanderLabelWidget                  ,


-- ** resizeToplevel #attr:resizeToplevel#
-- | When this property is 'P.True', the expander will resize the toplevel
-- widget containing the expander upon expanding and collapsing.
-- 
-- /Since: 3.2/

#if defined(ENABLE_OVERLOADING)
    ExpanderResizeToplevelPropertyInfo      ,
#endif
    constructExpanderResizeToplevel         ,
#if defined(ENABLE_OVERLOADING)
    expanderResizeToplevel                  ,
#endif
    getExpanderResizeToplevel               ,
    setExpanderResizeToplevel               ,


-- ** spacing #attr:spacing#
-- | Space to put between the label and the child when the
-- expander is expanded.

#if defined(ENABLE_OVERLOADING)
    ExpanderSpacingPropertyInfo             ,
#endif
    constructExpanderSpacing                ,
#if defined(ENABLE_OVERLOADING)
    expanderSpacing                         ,
#endif
    getExpanderSpacing                      ,
    setExpanderSpacing                      ,


-- ** useMarkup #attr:useMarkup#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderUseMarkupPropertyInfo           ,
#endif
    constructExpanderUseMarkup              ,
#if defined(ENABLE_OVERLOADING)
    expanderUseMarkup                       ,
#endif
    getExpanderUseMarkup                    ,
    setExpanderUseMarkup                    ,


-- ** useUnderline #attr:useUnderline#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ExpanderUseUnderlinePropertyInfo        ,
#endif
    constructExpanderUseUnderline           ,
#if defined(ENABLE_OVERLOADING)
    expanderUseUnderline                    ,
#endif
    getExpanderUseUnderline                 ,
    setExpanderUseUnderline                 ,




 -- * Signals
-- ** activate #signal:activate#

    C_ExpanderActivateCallback              ,
    ExpanderActivateCallback                ,
#if defined(ENABLE_OVERLOADING)
    ExpanderActivateSignalInfo              ,
#endif
    afterExpanderActivate                   ,
    genClosure_ExpanderActivate             ,
    mk_ExpanderActivateCallback             ,
    noExpanderActivateCallback              ,
    onExpanderActivate                      ,
    wrap_ExpanderActivateCallback           ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Expander = Expander (ManagedPtr Expander)
    deriving (Eq)
foreign import ccall "gtk_expander_get_type"
    c_gtk_expander_get_type :: IO GType

instance GObject Expander where
    gobjectType = c_gtk_expander_get_type
    

-- | Convert 'Expander' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Expander where
    toGValue o = do
        gtype <- c_gtk_expander_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Expander)
        B.ManagedPtr.newObject Expander ptr
        
    

-- | Type class for types which can be safely cast to `Expander`, for instance with `toExpander`.
class (GObject o, O.IsDescendantOf Expander o) => IsExpander o
instance (GObject o, O.IsDescendantOf Expander o) => IsExpander o

instance O.HasParentTypes Expander
type instance O.ParentTypes Expander = '[Gtk.Bin.Bin, Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Expander`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toExpander :: (MonadIO m, IsExpander o) => o -> m Expander
toExpander = liftIO . unsafeCastTo Expander

-- | A convenience alias for `Nothing` :: `Maybe` `Expander`.
noExpander :: Maybe Expander
noExpander = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveExpanderMethod (t :: Symbol) (o :: *) :: * where
    ResolveExpanderMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveExpanderMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveExpanderMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveExpanderMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveExpanderMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveExpanderMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveExpanderMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveExpanderMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveExpanderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveExpanderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveExpanderMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveExpanderMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveExpanderMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveExpanderMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveExpanderMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveExpanderMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveExpanderMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveExpanderMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveExpanderMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveExpanderMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveExpanderMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveExpanderMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveExpanderMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveExpanderMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveExpanderMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveExpanderMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveExpanderMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveExpanderMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveExpanderMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveExpanderMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveExpanderMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveExpanderMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveExpanderMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveExpanderMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveExpanderMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveExpanderMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveExpanderMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveExpanderMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveExpanderMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveExpanderMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveExpanderMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveExpanderMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveExpanderMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveExpanderMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveExpanderMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveExpanderMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveExpanderMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveExpanderMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveExpanderMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveExpanderMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveExpanderMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveExpanderMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveExpanderMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveExpanderMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveExpanderMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveExpanderMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveExpanderMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveExpanderMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveExpanderMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveExpanderMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveExpanderMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveExpanderMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveExpanderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveExpanderMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveExpanderMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveExpanderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveExpanderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveExpanderMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveExpanderMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveExpanderMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveExpanderMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveExpanderMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveExpanderMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveExpanderMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveExpanderMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveExpanderMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveExpanderMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveExpanderMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveExpanderMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveExpanderMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveExpanderMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveExpanderMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveExpanderMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveExpanderMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveExpanderMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveExpanderMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveExpanderMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveExpanderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveExpanderMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveExpanderMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveExpanderMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveExpanderMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveExpanderMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveExpanderMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveExpanderMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveExpanderMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveExpanderMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveExpanderMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveExpanderMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveExpanderMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveExpanderMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveExpanderMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveExpanderMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveExpanderMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveExpanderMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveExpanderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveExpanderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveExpanderMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveExpanderMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveExpanderMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveExpanderMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveExpanderMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveExpanderMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveExpanderMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveExpanderMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveExpanderMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveExpanderMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveExpanderMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveExpanderMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveExpanderMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveExpanderMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveExpanderMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveExpanderMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveExpanderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveExpanderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveExpanderMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveExpanderMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveExpanderMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveExpanderMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveExpanderMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveExpanderMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveExpanderMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveExpanderMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveExpanderMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveExpanderMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveExpanderMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveExpanderMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveExpanderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveExpanderMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveExpanderMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveExpanderMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveExpanderMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveExpanderMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveExpanderMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveExpanderMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveExpanderMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveExpanderMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveExpanderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveExpanderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveExpanderMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveExpanderMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveExpanderMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveExpanderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveExpanderMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveExpanderMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveExpanderMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveExpanderMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveExpanderMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveExpanderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveExpanderMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveExpanderMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveExpanderMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveExpanderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveExpanderMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveExpanderMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveExpanderMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveExpanderMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveExpanderMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveExpanderMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveExpanderMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveExpanderMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveExpanderMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveExpanderMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveExpanderMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveExpanderMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveExpanderMethod "getChild" o = Gtk.Bin.BinGetChildMethodInfo
    ResolveExpanderMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveExpanderMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveExpanderMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveExpanderMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveExpanderMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveExpanderMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveExpanderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveExpanderMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveExpanderMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveExpanderMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveExpanderMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveExpanderMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveExpanderMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveExpanderMethod "getExpanded" o = ExpanderGetExpandedMethodInfo
    ResolveExpanderMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveExpanderMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveExpanderMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveExpanderMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveExpanderMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveExpanderMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveExpanderMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveExpanderMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveExpanderMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveExpanderMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveExpanderMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveExpanderMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveExpanderMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveExpanderMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveExpanderMethod "getLabel" o = ExpanderGetLabelMethodInfo
    ResolveExpanderMethod "getLabelFill" o = ExpanderGetLabelFillMethodInfo
    ResolveExpanderMethod "getLabelWidget" o = ExpanderGetLabelWidgetMethodInfo
    ResolveExpanderMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveExpanderMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveExpanderMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveExpanderMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveExpanderMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveExpanderMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveExpanderMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveExpanderMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveExpanderMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveExpanderMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveExpanderMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveExpanderMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveExpanderMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveExpanderMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveExpanderMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveExpanderMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveExpanderMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveExpanderMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveExpanderMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveExpanderMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveExpanderMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveExpanderMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveExpanderMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveExpanderMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveExpanderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveExpanderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveExpanderMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveExpanderMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveExpanderMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveExpanderMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveExpanderMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveExpanderMethod "getResizeToplevel" o = ExpanderGetResizeToplevelMethodInfo
    ResolveExpanderMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveExpanderMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveExpanderMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveExpanderMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveExpanderMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveExpanderMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveExpanderMethod "getSpacing" o = ExpanderGetSpacingMethodInfo
    ResolveExpanderMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveExpanderMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveExpanderMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveExpanderMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveExpanderMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveExpanderMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveExpanderMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveExpanderMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveExpanderMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveExpanderMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveExpanderMethod "getUseMarkup" o = ExpanderGetUseMarkupMethodInfo
    ResolveExpanderMethod "getUseUnderline" o = ExpanderGetUseUnderlineMethodInfo
    ResolveExpanderMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveExpanderMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveExpanderMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveExpanderMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveExpanderMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveExpanderMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveExpanderMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveExpanderMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveExpanderMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveExpanderMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveExpanderMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveExpanderMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveExpanderMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveExpanderMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveExpanderMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveExpanderMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveExpanderMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveExpanderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveExpanderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveExpanderMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveExpanderMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveExpanderMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveExpanderMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveExpanderMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveExpanderMethod "setExpanded" o = ExpanderSetExpandedMethodInfo
    ResolveExpanderMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveExpanderMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveExpanderMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveExpanderMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveExpanderMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveExpanderMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveExpanderMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveExpanderMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveExpanderMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveExpanderMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveExpanderMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveExpanderMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveExpanderMethod "setLabel" o = ExpanderSetLabelMethodInfo
    ResolveExpanderMethod "setLabelFill" o = ExpanderSetLabelFillMethodInfo
    ResolveExpanderMethod "setLabelWidget" o = ExpanderSetLabelWidgetMethodInfo
    ResolveExpanderMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveExpanderMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveExpanderMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveExpanderMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveExpanderMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveExpanderMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveExpanderMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveExpanderMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveExpanderMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveExpanderMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveExpanderMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveExpanderMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveExpanderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveExpanderMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveExpanderMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveExpanderMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveExpanderMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveExpanderMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveExpanderMethod "setResizeToplevel" o = ExpanderSetResizeToplevelMethodInfo
    ResolveExpanderMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveExpanderMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveExpanderMethod "setSpacing" o = ExpanderSetSpacingMethodInfo
    ResolveExpanderMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveExpanderMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveExpanderMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveExpanderMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveExpanderMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveExpanderMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveExpanderMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveExpanderMethod "setUseMarkup" o = ExpanderSetUseMarkupMethodInfo
    ResolveExpanderMethod "setUseUnderline" o = ExpanderSetUseUnderlineMethodInfo
    ResolveExpanderMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveExpanderMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveExpanderMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveExpanderMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveExpanderMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveExpanderMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveExpanderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveExpanderMethod t Expander, O.MethodInfo info Expander p) => OL.IsLabel t (Expander -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Expander::activate
-- | /No description available in the introspection data./
type ExpanderActivateCallback =
    IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `ExpanderActivateCallback`@.
noExpanderActivateCallback :: Maybe ExpanderActivateCallback
noExpanderActivateCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_ExpanderActivateCallback =
    Ptr () ->                               -- object
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_ExpanderActivateCallback`.
foreign import ccall "wrapper"
    mk_ExpanderActivateCallback :: C_ExpanderActivateCallback -> IO (FunPtr C_ExpanderActivateCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_ExpanderActivate :: MonadIO m => ExpanderActivateCallback -> m (GClosure C_ExpanderActivateCallback)
genClosure_ExpanderActivate cb = liftIO $ do
    let cb' = wrap_ExpanderActivateCallback cb
    mk_ExpanderActivateCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `ExpanderActivateCallback` into a `C_ExpanderActivateCallback`.
wrap_ExpanderActivateCallback ::
    ExpanderActivateCallback ->
    C_ExpanderActivateCallback
wrap_ExpanderActivateCallback _cb _ _ = do
    _cb 


-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' expander #activate callback
-- @
-- 
-- 
onExpanderActivate :: (IsExpander a, MonadIO m) => a -> ExpanderActivateCallback -> m SignalHandlerId
onExpanderActivate obj cb = liftIO $ do
    let cb' = wrap_ExpanderActivateCallback cb
    cb'' <- mk_ExpanderActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [activate](#signal:activate) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' expander #activate callback
-- @
-- 
-- 
afterExpanderActivate :: (IsExpander a, MonadIO m) => a -> ExpanderActivateCallback -> m SignalHandlerId
afterExpanderActivate obj cb = liftIO $ do
    let cb' = wrap_ExpanderActivateCallback cb
    cb'' <- mk_ExpanderActivateCallback cb'
    connectSignalFunPtr obj "activate" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data ExpanderActivateSignalInfo
instance SignalInfo ExpanderActivateSignalInfo where
    type HaskellCallbackType ExpanderActivateSignalInfo = ExpanderActivateCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_ExpanderActivateCallback cb
        cb'' <- mk_ExpanderActivateCallback cb'
        connectSignalFunPtr obj "activate" cb'' connectMode detail

#endif

-- VVV Prop "expanded"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@expanded@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #expanded
-- @
getExpanderExpanded :: (MonadIO m, IsExpander o) => o -> m Bool
getExpanderExpanded obj = liftIO $ B.Properties.getObjectPropertyBool obj "expanded"

-- | Set the value of the “@expanded@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #expanded 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderExpanded :: (MonadIO m, IsExpander o) => o -> Bool -> m ()
setExpanderExpanded obj val = liftIO $ B.Properties.setObjectPropertyBool obj "expanded" val

-- | Construct a `GValueConstruct` with valid value for the “@expanded@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderExpanded :: (IsExpander o) => Bool -> IO (GValueConstruct o)
constructExpanderExpanded val = B.Properties.constructObjectPropertyBool "expanded" val

#if defined(ENABLE_OVERLOADING)
data ExpanderExpandedPropertyInfo
instance AttrInfo ExpanderExpandedPropertyInfo where
    type AttrAllowedOps ExpanderExpandedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderExpandedPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderExpandedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ExpanderExpandedPropertyInfo = (~) Bool
    type AttrTransferType ExpanderExpandedPropertyInfo = Bool
    type AttrGetType ExpanderExpandedPropertyInfo = Bool
    type AttrLabel ExpanderExpandedPropertyInfo = "expanded"
    type AttrOrigin ExpanderExpandedPropertyInfo = Expander
    attrGet = getExpanderExpanded
    attrSet = setExpanderExpanded
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderExpanded
    attrClear = undefined
#endif

-- VVV Prop "label"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #label
-- @
getExpanderLabel :: (MonadIO m, IsExpander o) => o -> m (Maybe T.Text)
getExpanderLabel obj = liftIO $ B.Properties.getObjectPropertyString obj "label"

-- | Set the value of the “@label@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #label 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderLabel :: (MonadIO m, IsExpander o) => o -> T.Text -> m ()
setExpanderLabel obj val = liftIO $ B.Properties.setObjectPropertyString obj "label" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderLabel :: (IsExpander o) => T.Text -> IO (GValueConstruct o)
constructExpanderLabel val = B.Properties.constructObjectPropertyString "label" (Just val)

-- | Set the value of the “@label@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #label
-- @
clearExpanderLabel :: (MonadIO m, IsExpander o) => o -> m ()
clearExpanderLabel obj = liftIO $ B.Properties.setObjectPropertyString obj "label" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data ExpanderLabelPropertyInfo
instance AttrInfo ExpanderLabelPropertyInfo where
    type AttrAllowedOps ExpanderLabelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ExpanderLabelPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderLabelPropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint ExpanderLabelPropertyInfo = (~) T.Text
    type AttrTransferType ExpanderLabelPropertyInfo = T.Text
    type AttrGetType ExpanderLabelPropertyInfo = (Maybe T.Text)
    type AttrLabel ExpanderLabelPropertyInfo = "label"
    type AttrOrigin ExpanderLabelPropertyInfo = Expander
    attrGet = getExpanderLabel
    attrSet = setExpanderLabel
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderLabel
    attrClear = clearExpanderLabel
#endif

-- VVV Prop "label-fill"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@label-fill@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #labelFill
-- @
getExpanderLabelFill :: (MonadIO m, IsExpander o) => o -> m Bool
getExpanderLabelFill obj = liftIO $ B.Properties.getObjectPropertyBool obj "label-fill"

-- | Set the value of the “@label-fill@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #labelFill 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderLabelFill :: (MonadIO m, IsExpander o) => o -> Bool -> m ()
setExpanderLabelFill obj val = liftIO $ B.Properties.setObjectPropertyBool obj "label-fill" val

-- | Construct a `GValueConstruct` with valid value for the “@label-fill@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderLabelFill :: (IsExpander o) => Bool -> IO (GValueConstruct o)
constructExpanderLabelFill val = B.Properties.constructObjectPropertyBool "label-fill" val

#if defined(ENABLE_OVERLOADING)
data ExpanderLabelFillPropertyInfo
instance AttrInfo ExpanderLabelFillPropertyInfo where
    type AttrAllowedOps ExpanderLabelFillPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderLabelFillPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderLabelFillPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ExpanderLabelFillPropertyInfo = (~) Bool
    type AttrTransferType ExpanderLabelFillPropertyInfo = Bool
    type AttrGetType ExpanderLabelFillPropertyInfo = Bool
    type AttrLabel ExpanderLabelFillPropertyInfo = "label-fill"
    type AttrOrigin ExpanderLabelFillPropertyInfo = Expander
    attrGet = getExpanderLabelFill
    attrSet = setExpanderLabelFill
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderLabelFill
    attrClear = undefined
#endif

-- VVV Prop "label-widget"
   -- Type: TInterface (Name {namespace = "Gtk", name = "Widget"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #labelWidget
-- @
getExpanderLabelWidget :: (MonadIO m, IsExpander o) => o -> m (Maybe Gtk.Widget.Widget)
getExpanderLabelWidget obj = liftIO $ B.Properties.getObjectPropertyObject obj "label-widget" Gtk.Widget.Widget

-- | Set the value of the “@label-widget@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #labelWidget 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderLabelWidget :: (MonadIO m, IsExpander o, Gtk.Widget.IsWidget a) => o -> a -> m ()
setExpanderLabelWidget obj val = liftIO $ B.Properties.setObjectPropertyObject obj "label-widget" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@label-widget@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderLabelWidget :: (IsExpander o, Gtk.Widget.IsWidget a) => a -> IO (GValueConstruct o)
constructExpanderLabelWidget val = B.Properties.constructObjectPropertyObject "label-widget" (Just val)

-- | Set the value of the “@label-widget@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #labelWidget
-- @
clearExpanderLabelWidget :: (MonadIO m, IsExpander o) => o -> m ()
clearExpanderLabelWidget obj = liftIO $ B.Properties.setObjectPropertyObject obj "label-widget" (Nothing :: Maybe Gtk.Widget.Widget)

#if defined(ENABLE_OVERLOADING)
data ExpanderLabelWidgetPropertyInfo
instance AttrInfo ExpanderLabelWidgetPropertyInfo where
    type AttrAllowedOps ExpanderLabelWidgetPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ExpanderLabelWidgetPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferTypeConstraint ExpanderLabelWidgetPropertyInfo = Gtk.Widget.IsWidget
    type AttrTransferType ExpanderLabelWidgetPropertyInfo = Gtk.Widget.Widget
    type AttrGetType ExpanderLabelWidgetPropertyInfo = (Maybe Gtk.Widget.Widget)
    type AttrLabel ExpanderLabelWidgetPropertyInfo = "label-widget"
    type AttrOrigin ExpanderLabelWidgetPropertyInfo = Expander
    attrGet = getExpanderLabelWidget
    attrSet = setExpanderLabelWidget
    attrTransfer _ v = do
        unsafeCastTo Gtk.Widget.Widget v
    attrConstruct = constructExpanderLabelWidget
    attrClear = clearExpanderLabelWidget
#endif

-- VVV Prop "resize-toplevel"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@resize-toplevel@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #resizeToplevel
-- @
getExpanderResizeToplevel :: (MonadIO m, IsExpander o) => o -> m Bool
getExpanderResizeToplevel obj = liftIO $ B.Properties.getObjectPropertyBool obj "resize-toplevel"

-- | Set the value of the “@resize-toplevel@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #resizeToplevel 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderResizeToplevel :: (MonadIO m, IsExpander o) => o -> Bool -> m ()
setExpanderResizeToplevel obj val = liftIO $ B.Properties.setObjectPropertyBool obj "resize-toplevel" val

-- | Construct a `GValueConstruct` with valid value for the “@resize-toplevel@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderResizeToplevel :: (IsExpander o) => Bool -> IO (GValueConstruct o)
constructExpanderResizeToplevel val = B.Properties.constructObjectPropertyBool "resize-toplevel" val

#if defined(ENABLE_OVERLOADING)
data ExpanderResizeToplevelPropertyInfo
instance AttrInfo ExpanderResizeToplevelPropertyInfo where
    type AttrAllowedOps ExpanderResizeToplevelPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderResizeToplevelPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderResizeToplevelPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ExpanderResizeToplevelPropertyInfo = (~) Bool
    type AttrTransferType ExpanderResizeToplevelPropertyInfo = Bool
    type AttrGetType ExpanderResizeToplevelPropertyInfo = Bool
    type AttrLabel ExpanderResizeToplevelPropertyInfo = "resize-toplevel"
    type AttrOrigin ExpanderResizeToplevelPropertyInfo = Expander
    attrGet = getExpanderResizeToplevel
    attrSet = setExpanderResizeToplevel
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderResizeToplevel
    attrClear = undefined
#endif

-- VVV Prop "spacing"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #spacing
-- @
getExpanderSpacing :: (MonadIO m, IsExpander o) => o -> m Int32
getExpanderSpacing obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "spacing"

-- | Set the value of the “@spacing@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #spacing 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderSpacing :: (MonadIO m, IsExpander o) => o -> Int32 -> m ()
setExpanderSpacing obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "spacing" val

-- | Construct a `GValueConstruct` with valid value for the “@spacing@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderSpacing :: (IsExpander o) => Int32 -> IO (GValueConstruct o)
constructExpanderSpacing val = B.Properties.constructObjectPropertyInt32 "spacing" val

#if defined(ENABLE_OVERLOADING)
data ExpanderSpacingPropertyInfo
instance AttrInfo ExpanderSpacingPropertyInfo where
    type AttrAllowedOps ExpanderSpacingPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderSpacingPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderSpacingPropertyInfo = (~) Int32
    type AttrTransferTypeConstraint ExpanderSpacingPropertyInfo = (~) Int32
    type AttrTransferType ExpanderSpacingPropertyInfo = Int32
    type AttrGetType ExpanderSpacingPropertyInfo = Int32
    type AttrLabel ExpanderSpacingPropertyInfo = "spacing"
    type AttrOrigin ExpanderSpacingPropertyInfo = Expander
    attrGet = getExpanderSpacing
    attrSet = setExpanderSpacing
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderSpacing
    attrClear = undefined
#endif

-- VVV Prop "use-markup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #useMarkup
-- @
getExpanderUseMarkup :: (MonadIO m, IsExpander o) => o -> m Bool
getExpanderUseMarkup obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-markup"

-- | Set the value of the “@use-markup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #useMarkup 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderUseMarkup :: (MonadIO m, IsExpander o) => o -> Bool -> m ()
setExpanderUseMarkup obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-markup" val

-- | Construct a `GValueConstruct` with valid value for the “@use-markup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderUseMarkup :: (IsExpander o) => Bool -> IO (GValueConstruct o)
constructExpanderUseMarkup val = B.Properties.constructObjectPropertyBool "use-markup" val

#if defined(ENABLE_OVERLOADING)
data ExpanderUseMarkupPropertyInfo
instance AttrInfo ExpanderUseMarkupPropertyInfo where
    type AttrAllowedOps ExpanderUseMarkupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderUseMarkupPropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderUseMarkupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ExpanderUseMarkupPropertyInfo = (~) Bool
    type AttrTransferType ExpanderUseMarkupPropertyInfo = Bool
    type AttrGetType ExpanderUseMarkupPropertyInfo = Bool
    type AttrLabel ExpanderUseMarkupPropertyInfo = "use-markup"
    type AttrOrigin ExpanderUseMarkupPropertyInfo = Expander
    attrGet = getExpanderUseMarkup
    attrSet = setExpanderUseMarkup
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderUseMarkup
    attrClear = undefined
#endif

-- VVV Prop "use-underline"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstruct]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@use-underline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' expander #useUnderline
-- @
getExpanderUseUnderline :: (MonadIO m, IsExpander o) => o -> m Bool
getExpanderUseUnderline obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-underline"

-- | Set the value of the “@use-underline@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' expander [ #useUnderline 'Data.GI.Base.Attributes.:=' value ]
-- @
setExpanderUseUnderline :: (MonadIO m, IsExpander o) => o -> Bool -> m ()
setExpanderUseUnderline obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-underline" val

-- | Construct a `GValueConstruct` with valid value for the “@use-underline@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructExpanderUseUnderline :: (IsExpander o) => Bool -> IO (GValueConstruct o)
constructExpanderUseUnderline val = B.Properties.constructObjectPropertyBool "use-underline" val

#if defined(ENABLE_OVERLOADING)
data ExpanderUseUnderlinePropertyInfo
instance AttrInfo ExpanderUseUnderlinePropertyInfo where
    type AttrAllowedOps ExpanderUseUnderlinePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint ExpanderUseUnderlinePropertyInfo = IsExpander
    type AttrSetTypeConstraint ExpanderUseUnderlinePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint ExpanderUseUnderlinePropertyInfo = (~) Bool
    type AttrTransferType ExpanderUseUnderlinePropertyInfo = Bool
    type AttrGetType ExpanderUseUnderlinePropertyInfo = Bool
    type AttrLabel ExpanderUseUnderlinePropertyInfo = "use-underline"
    type AttrOrigin ExpanderUseUnderlinePropertyInfo = Expander
    attrGet = getExpanderUseUnderline
    attrSet = setExpanderUseUnderline
    attrTransfer _ v = do
        return v
    attrConstruct = constructExpanderUseUnderline
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Expander
type instance O.AttributeList Expander = ExpanderAttributeList
type ExpanderAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("expanded", ExpanderExpandedPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("label", ExpanderLabelPropertyInfo), '("labelFill", ExpanderLabelFillPropertyInfo), '("labelWidget", ExpanderLabelWidgetPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("resizeToplevel", ExpanderResizeToplevelPropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("spacing", ExpanderSpacingPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("useMarkup", ExpanderUseMarkupPropertyInfo), '("useUnderline", ExpanderUseUnderlinePropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
expanderExpanded :: AttrLabelProxy "expanded"
expanderExpanded = AttrLabelProxy

expanderLabel :: AttrLabelProxy "label"
expanderLabel = AttrLabelProxy

expanderLabelFill :: AttrLabelProxy "labelFill"
expanderLabelFill = AttrLabelProxy

expanderLabelWidget :: AttrLabelProxy "labelWidget"
expanderLabelWidget = AttrLabelProxy

expanderResizeToplevel :: AttrLabelProxy "resizeToplevel"
expanderResizeToplevel = AttrLabelProxy

expanderSpacing :: AttrLabelProxy "spacing"
expanderSpacing = AttrLabelProxy

expanderUseMarkup :: AttrLabelProxy "useMarkup"
expanderUseMarkup = AttrLabelProxy

expanderUseUnderline :: AttrLabelProxy "useUnderline"
expanderUseUnderline = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Expander = ExpanderSignalList
type ExpanderSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("activate", ExpanderActivateSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Expander::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the text of the label"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Expander" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_expander_new" gtk_expander_new :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr Expander)

-- | Creates a new expander using /@label@/ as the text of the label.
-- 
-- /Since: 2.4/
expanderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe (T.Text)
    -- ^ /@label@/: the text of the label
    -> m Expander
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Expander.Expander' widget.
expanderNew label = liftIO $ do
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_expander_new maybeLabel
    checkUnexpectedReturnNULL "expanderNew" result
    result' <- (newObject Expander) result
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Expander::new_with_mnemonic
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "label"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the text of the label with an underscore\n    in front of the mnemonic character"
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
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Expander" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_expander_new_with_mnemonic" gtk_expander_new_with_mnemonic :: 
    CString ->                              -- label : TBasicType TUTF8
    IO (Ptr Expander)

-- | Creates a new expander using /@label@/ as the text of the label.
-- If characters in /@label@/ are preceded by an underscore, they are underlined.
-- If you need a literal underscore character in a label, use “__” (two
-- underscores). The first underlined character represents a keyboard
-- accelerator called a mnemonic.
-- Pressing Alt and that key activates the button.
-- 
-- /Since: 2.4/
expanderNewWithMnemonic ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Maybe (T.Text)
    -- ^ /@label@/: the text of the label with an underscore
    --     in front of the mnemonic character
    -> m Expander
    -- ^ __Returns:__ a new t'GI.Gtk.Objects.Expander.Expander' widget.
expanderNewWithMnemonic label = liftIO $ do
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    result <- gtk_expander_new_with_mnemonic maybeLabel
    checkUnexpectedReturnNULL "expanderNewWithMnemonic" result
    result' <- (newObject Expander) result
    freeMem maybeLabel
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Expander::get_expanded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_expanded" gtk_expander_get_expanded :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CInt

-- | Queries a t'GI.Gtk.Objects.Expander.Expander' and returns its current state. Returns 'P.True'
-- if the child widget is revealed.
-- 
-- See 'GI.Gtk.Objects.Expander.expanderSetExpanded'.
-- 
-- /Since: 2.4/
expanderGetExpanded ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Bool
    -- ^ __Returns:__ the current state of the expander
expanderGetExpanded expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_expanded expander'
    let result' = (/= 0) result
    touchManagedPtr expander
    return result'

#if defined(ENABLE_OVERLOADING)
data ExpanderGetExpandedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetExpandedMethodInfo a signature where
    overloadedMethod = expanderGetExpanded

#endif

-- method Expander::get_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_label" gtk_expander_get_label :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CString

-- | Fetches the text from a label widget including any embedded
-- underlines indicating mnemonics and Pango markup, as set by
-- 'GI.Gtk.Objects.Expander.expanderSetLabel'. If the label text has not been set the
-- return value will be 'P.Nothing'. This will be the case if you create an
-- empty button with 'GI.Gtk.Objects.Button.buttonNew' to use as a container.
-- 
-- Note that this function behaved differently in versions prior to
-- 2.14 and used to return the label text stripped of embedded
-- underlines indicating mnemonics and Pango markup. This problem can
-- be avoided by fetching the label text directly from the label
-- widget.
-- 
-- /Since: 2.4/
expanderGetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ The text of the label widget. This string is owned
    --     by the widget and must not be modified or freed.
expanderGetLabel expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_label expander'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr expander
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ExpanderGetLabelMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetLabelMethodInfo a signature where
    overloadedMethod = expanderGetLabel

#endif

-- method Expander::get_label_fill
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_label_fill" gtk_expander_get_label_fill :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CInt

-- | Returns whether the label widget will fill all available
-- horizontal space allocated to /@expander@/.
-- 
-- /Since: 2.22/
expanderGetLabelFill ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the label widget will fill all
    --     available horizontal space
expanderGetLabelFill expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_label_fill expander'
    let result' = (/= 0) result
    touchManagedPtr expander
    return result'

#if defined(ENABLE_OVERLOADING)
data ExpanderGetLabelFillMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetLabelFillMethodInfo a signature where
    overloadedMethod = expanderGetLabelFill

#endif

-- method Expander::get_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_label_widget" gtk_expander_get_label_widget :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the label widget for the frame. See
-- 'GI.Gtk.Objects.Expander.expanderSetLabelWidget'.
-- 
-- /Since: 2.4/
expanderGetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the label widget,
    --     or 'P.Nothing' if there is none
expanderGetLabelWidget expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_label_widget expander'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr expander
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data ExpanderGetLabelWidgetMethodInfo
instance (signature ~ (m (Maybe Gtk.Widget.Widget)), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetLabelWidgetMethodInfo a signature where
    overloadedMethod = expanderGetLabelWidget

#endif

-- method Expander::get_resize_toplevel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_resize_toplevel" gtk_expander_get_resize_toplevel :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CInt

-- | Returns whether the expander will resize the toplevel widget
-- containing the expander upon resizing and collpasing.
-- 
-- /Since: 3.2/
expanderGetResizeToplevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Bool
    -- ^ __Returns:__ the “resize toplevel” setting.
expanderGetResizeToplevel expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_resize_toplevel expander'
    let result' = (/= 0) result
    touchManagedPtr expander
    return result'

#if defined(ENABLE_OVERLOADING)
data ExpanderGetResizeToplevelMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetResizeToplevelMethodInfo a signature where
    overloadedMethod = expanderGetResizeToplevel

#endif

-- method Expander::get_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_spacing" gtk_expander_get_spacing :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO Int32

{-# DEPRECATED expanderGetSpacing ["(Since version 3.20)","Use margins on the child instead."] #-}
-- | Gets the value set by 'GI.Gtk.Objects.Expander.expanderSetSpacing'.
-- 
-- /Since: 2.4/
expanderGetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Int32
    -- ^ __Returns:__ spacing between the expander and child
expanderGetSpacing expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_spacing expander'
    touchManagedPtr expander
    return result

#if defined(ENABLE_OVERLOADING)
data ExpanderGetSpacingMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetSpacingMethodInfo a signature where
    overloadedMethod = expanderGetSpacing

#endif

-- method Expander::get_use_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_use_markup" gtk_expander_get_use_markup :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CInt

-- | Returns whether the label’s text is interpreted as marked up with
-- the [Pango text markup language][PangoMarkupFormat].
-- See 'GI.Gtk.Objects.Expander.expanderSetUseMarkup'.
-- 
-- /Since: 2.4/
expanderGetUseMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the label’s text will be parsed for markup
expanderGetUseMarkup expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_use_markup expander'
    let result' = (/= 0) result
    touchManagedPtr expander
    return result'

#if defined(ENABLE_OVERLOADING)
data ExpanderGetUseMarkupMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetUseMarkupMethodInfo a signature where
    overloadedMethod = expanderGetUseMarkup

#endif

-- method Expander::get_use_underline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_get_use_underline" gtk_expander_get_use_underline :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    IO CInt

-- | Returns whether an embedded underline in the expander label
-- indicates a mnemonic. See 'GI.Gtk.Objects.Expander.expanderSetUseUnderline'.
-- 
-- /Since: 2.4/
expanderGetUseUnderline ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if an embedded underline in the expander
    --     label indicates the mnemonic accelerator keys
expanderGetUseUnderline expander = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    result <- gtk_expander_get_use_underline expander'
    let result' = (/= 0) result
    touchManagedPtr expander
    return result'

#if defined(ENABLE_OVERLOADING)
data ExpanderGetUseUnderlineMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsExpander a) => O.MethodInfo ExpanderGetUseUnderlineMethodInfo a signature where
    overloadedMethod = expanderGetUseUnderline

#endif

-- method Expander::set_expanded
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "expanded"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the child widget is revealed"
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

foreign import ccall "gtk_expander_set_expanded" gtk_expander_set_expanded :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CInt ->                                 -- expanded : TBasicType TBoolean
    IO ()

-- | Sets the state of the expander. Set to 'P.True', if you want
-- the child widget to be revealed, and 'P.False' if you want the
-- child widget to be hidden.
-- 
-- /Since: 2.4/
expanderSetExpanded ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Bool
    -- ^ /@expanded@/: whether the child widget is revealed
    -> m ()
expanderSetExpanded expander expanded = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    let expanded' = (fromIntegral . fromEnum) expanded
    gtk_expander_set_expanded expander' expanded'
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetExpandedMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetExpandedMethodInfo a signature where
    overloadedMethod = expanderSetExpanded

#endif

-- method Expander::set_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
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
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a string" , sinceVersion = Nothing }
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

foreign import ccall "gtk_expander_set_label" gtk_expander_set_label :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CString ->                              -- label : TBasicType TUTF8
    IO ()

-- | Sets the text of the label of the expander to /@label@/.
-- 
-- This will also clear any previously set labels.
-- 
-- /Since: 2.4/
expanderSetLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Maybe (T.Text)
    -- ^ /@label@/: a string
    -> m ()
expanderSetLabel expander label = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    maybeLabel <- case label of
        Nothing -> return nullPtr
        Just jLabel -> do
            jLabel' <- textToCString jLabel
            return jLabel'
    gtk_expander_set_label expander' maybeLabel
    touchManagedPtr expander
    freeMem maybeLabel
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetLabelMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetLabelMethodInfo a signature where
    overloadedMethod = expanderSetLabel

#endif

-- method Expander::set_label_fill
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label_fill"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "%TRUE if the label should should fill\n    all available horizontal space"
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

foreign import ccall "gtk_expander_set_label_fill" gtk_expander_set_label_fill :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CInt ->                                 -- label_fill : TBasicType TBoolean
    IO ()

-- | Sets whether the label widget should fill all available
-- horizontal space allocated to /@expander@/.
-- 
-- /Since: 2.22/
expanderSetLabelFill ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Bool
    -- ^ /@labelFill@/: 'P.True' if the label should should fill
    --     all available horizontal space
    -> m ()
expanderSetLabelFill expander labelFill = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    let labelFill' = (fromIntegral . fromEnum) labelFill
    gtk_expander_set_label_fill expander' labelFill'
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetLabelFillMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetLabelFillMethodInfo a signature where
    overloadedMethod = expanderSetLabelFill

#endif

-- method Expander::set_label_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "label_widget"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the new label widget"
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

foreign import ccall "gtk_expander_set_label_widget" gtk_expander_set_label_widget :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    Ptr Gtk.Widget.Widget ->                -- label_widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Set the label widget for the expander. This is the widget
-- that will appear embedded alongside the expander arrow.
-- 
-- /Since: 2.4/
expanderSetLabelWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Maybe (b)
    -- ^ /@labelWidget@/: the new label widget
    -> m ()
expanderSetLabelWidget expander labelWidget = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    maybeLabelWidget <- case labelWidget of
        Nothing -> return nullPtr
        Just jLabelWidget -> do
            jLabelWidget' <- unsafeManagedPtrCastPtr jLabelWidget
            return jLabelWidget'
    gtk_expander_set_label_widget expander' maybeLabelWidget
    touchManagedPtr expander
    whenJust labelWidget touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetLabelWidgetMethodInfo
instance (signature ~ (Maybe (b) -> m ()), MonadIO m, IsExpander a, Gtk.Widget.IsWidget b) => O.MethodInfo ExpanderSetLabelWidgetMethodInfo a signature where
    overloadedMethod = expanderSetLabelWidget

#endif

-- method Expander::set_resize_toplevel
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "resize_toplevel"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether to resize the toplevel"
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

foreign import ccall "gtk_expander_set_resize_toplevel" gtk_expander_set_resize_toplevel :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CInt ->                                 -- resize_toplevel : TBasicType TBoolean
    IO ()

-- | Sets whether the expander will resize the toplevel widget
-- containing the expander upon resizing and collpasing.
-- 
-- /Since: 3.2/
expanderSetResizeToplevel ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Bool
    -- ^ /@resizeToplevel@/: whether to resize the toplevel
    -> m ()
expanderSetResizeToplevel expander resizeToplevel = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    let resizeToplevel' = (fromIntegral . fromEnum) resizeToplevel
    gtk_expander_set_resize_toplevel expander' resizeToplevel'
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetResizeToplevelMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetResizeToplevelMethodInfo a signature where
    overloadedMethod = expanderSetResizeToplevel

#endif

-- method Expander::set_spacing
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "spacing"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "distance between the expander and child in pixels"
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

foreign import ccall "gtk_expander_set_spacing" gtk_expander_set_spacing :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    Int32 ->                                -- spacing : TBasicType TInt
    IO ()

{-# DEPRECATED expanderSetSpacing ["(Since version 3.20)","Use margins on the child instead."] #-}
-- | Sets the spacing field of /@expander@/, which is the number of
-- pixels to place between expander and the child.
-- 
-- /Since: 2.4/
expanderSetSpacing ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Int32
    -- ^ /@spacing@/: distance between the expander and child in pixels
    -> m ()
expanderSetSpacing expander spacing = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    gtk_expander_set_spacing expander' spacing
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetSpacingMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetSpacingMethodInfo a signature where
    overloadedMethod = expanderSetSpacing

#endif

-- method Expander::set_use_markup
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_markup"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if the label\8217s text should be parsed for markup"
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

foreign import ccall "gtk_expander_set_use_markup" gtk_expander_set_use_markup :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CInt ->                                 -- use_markup : TBasicType TBoolean
    IO ()

-- | Sets whether the text of the label contains markup in
-- [Pango’s text markup language][PangoMarkupFormat].
-- See 'GI.Gtk.Objects.Label.labelSetMarkup'.
-- 
-- /Since: 2.4/
expanderSetUseMarkup ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Bool
    -- ^ /@useMarkup@/: 'P.True' if the label’s text should be parsed for markup
    -> m ()
expanderSetUseMarkup expander useMarkup = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    let useMarkup' = (fromIntegral . fromEnum) useMarkup
    gtk_expander_set_use_markup expander' useMarkup'
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetUseMarkupMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetUseMarkupMethodInfo a signature where
    overloadedMethod = expanderSetUseMarkup

#endif

-- method Expander::set_use_underline
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "expander"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Expander" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkExpander" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "use_underline"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if underlines in the text indicate mnemonics"
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

foreign import ccall "gtk_expander_set_use_underline" gtk_expander_set_use_underline :: 
    Ptr Expander ->                         -- expander : TInterface (Name {namespace = "Gtk", name = "Expander"})
    CInt ->                                 -- use_underline : TBasicType TBoolean
    IO ()

-- | If true, an underline in the text of the expander label indicates
-- the next character should be used for the mnemonic accelerator key.
-- 
-- /Since: 2.4/
expanderSetUseUnderline ::
    (B.CallStack.HasCallStack, MonadIO m, IsExpander a) =>
    a
    -- ^ /@expander@/: a t'GI.Gtk.Objects.Expander.Expander'
    -> Bool
    -- ^ /@useUnderline@/: 'P.True' if underlines in the text indicate mnemonics
    -> m ()
expanderSetUseUnderline expander useUnderline = liftIO $ do
    expander' <- unsafeManagedPtrCastPtr expander
    let useUnderline' = (fromIntegral . fromEnum) useUnderline
    gtk_expander_set_use_underline expander' useUnderline'
    touchManagedPtr expander
    return ()

#if defined(ENABLE_OVERLOADING)
data ExpanderSetUseUnderlineMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsExpander a) => O.MethodInfo ExpanderSetUseUnderlineMethodInfo a signature where
    overloadedMethod = expanderSetUseUnderline

#endif

