{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- The t'GI.Gtk.Objects.Notebook.Notebook' widget is a t'GI.Gtk.Objects.Container.Container' whose children are pages that
-- can be switched between using tab labels along one edge.
-- 
-- There are many configuration options for GtkNotebook. Among other
-- things, you can choose on which edge the tabs appear
-- (see 'GI.Gtk.Objects.Notebook.notebookSetTabPos'), whether, if there are too many
-- tabs to fit the notebook should be made bigger or scrolling
-- arrows added (see 'GI.Gtk.Objects.Notebook.notebookSetScrollable'), and whether there
-- will be a popup menu allowing the users to switch pages.
-- (see 'GI.Gtk.Objects.Notebook.notebookPopupEnable', 'GI.Gtk.Objects.Notebook.notebookPopupDisable')
-- 
-- = GtkNotebook as GtkBuildable
-- 
-- The GtkNotebook implementation of the t'GI.Gtk.Interfaces.Buildable.Buildable' interface
-- supports placing children into tabs by specifying “tab” as the
-- “type” attribute of a \<child> element. Note that the content
-- of the tab must be created before the tab can be filled.
-- A tab child can be specified without specifying a \<child>
-- type attribute.
-- 
-- To add a child widget in the notebooks action area, specify
-- \"action-start\" or “action-end” as the “type” attribute of the
-- \<child> element.
-- 
-- An example of a UI definition fragment with GtkNotebook:
-- >
-- ><object class="GtkNotebook">
-- >  <child>
-- >    <object class="GtkLabel" id="notebook-content">
-- >      <property name="label">Content</property>
-- >    </object>
-- >  </child>
-- >  <child type="tab">
-- >    <object class="GtkLabel" id="notebook-tab">
-- >      <property name="label">Tab</property>
-- >    </object>
-- >  </child>
-- ></object>
-- 
-- 
-- = CSS nodes
-- 
-- 
-- === /plain code/
-- >
-- >notebook
-- >├── header.top
-- >│   ├── [<action widget>]
-- >│   ├── tabs
-- >│   │   ├── [arrow]
-- >│   │   ├── tab
-- >│   │   │   ╰── <tab label>
-- >┊   ┊   ┊
-- >│   │   ├── tab[.reorderable-page]
-- >│   │   │   ╰── <tab label>
-- >│   │   ╰── [arrow]
-- >│   ╰── [<action widget>]
-- >│
-- >╰── stack
-- >    ├── <child>
-- >    ┊
-- >    ╰── <child>
-- 
-- 
-- GtkNotebook has a main CSS node with name notebook, a subnode
-- with name header and below that a subnode with name tabs which
-- contains one subnode per tab with name tab.
-- 
-- If action widgets are present, their CSS nodes are placed next
-- to the tabs node. If the notebook is scrollable, CSS nodes with
-- name arrow are placed as first and last child of the tabs node.
-- 
-- The main node gets the .frame style class when the notebook
-- has a border (see 'GI.Gtk.Objects.Notebook.notebookSetShowBorder').
-- 
-- The header node gets one of the style class .top, .bottom,
-- .left or .right, depending on where the tabs are placed. For
-- reorderable pages, the tab node gets the .reorderable-page class.
-- 
-- A tab node gets the .dnd style class while it is moved with drag-and-drop.
-- 
-- The nodes are always arranged from left-to-right, regarldess of text direction.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Gtk.Objects.Notebook
    ( 

-- * Exported types
    Notebook(..)                            ,
    IsNotebook                              ,
    toNotebook                              ,
    noNotebook                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNotebookMethod                   ,
#endif


-- ** appendPage #method:appendPage#

#if defined(ENABLE_OVERLOADING)
    NotebookAppendPageMethodInfo            ,
#endif
    notebookAppendPage                      ,


-- ** appendPageMenu #method:appendPageMenu#

#if defined(ENABLE_OVERLOADING)
    NotebookAppendPageMenuMethodInfo        ,
#endif
    notebookAppendPageMenu                  ,


-- ** detachTab #method:detachTab#

#if defined(ENABLE_OVERLOADING)
    NotebookDetachTabMethodInfo             ,
#endif
    notebookDetachTab                       ,


-- ** getActionWidget #method:getActionWidget#

#if defined(ENABLE_OVERLOADING)
    NotebookGetActionWidgetMethodInfo       ,
#endif
    notebookGetActionWidget                 ,


-- ** getCurrentPage #method:getCurrentPage#

#if defined(ENABLE_OVERLOADING)
    NotebookGetCurrentPageMethodInfo        ,
#endif
    notebookGetCurrentPage                  ,


-- ** getGroupName #method:getGroupName#

#if defined(ENABLE_OVERLOADING)
    NotebookGetGroupNameMethodInfo          ,
#endif
    notebookGetGroupName                    ,


-- ** getMenuLabel #method:getMenuLabel#

#if defined(ENABLE_OVERLOADING)
    NotebookGetMenuLabelMethodInfo          ,
#endif
    notebookGetMenuLabel                    ,


-- ** getMenuLabelText #method:getMenuLabelText#

#if defined(ENABLE_OVERLOADING)
    NotebookGetMenuLabelTextMethodInfo      ,
#endif
    notebookGetMenuLabelText                ,


-- ** getNPages #method:getNPages#

#if defined(ENABLE_OVERLOADING)
    NotebookGetNPagesMethodInfo             ,
#endif
    notebookGetNPages                       ,


-- ** getNthPage #method:getNthPage#

#if defined(ENABLE_OVERLOADING)
    NotebookGetNthPageMethodInfo            ,
#endif
    notebookGetNthPage                      ,


-- ** getScrollable #method:getScrollable#

#if defined(ENABLE_OVERLOADING)
    NotebookGetScrollableMethodInfo         ,
#endif
    notebookGetScrollable                   ,


-- ** getShowBorder #method:getShowBorder#

#if defined(ENABLE_OVERLOADING)
    NotebookGetShowBorderMethodInfo         ,
#endif
    notebookGetShowBorder                   ,


-- ** getShowTabs #method:getShowTabs#

#if defined(ENABLE_OVERLOADING)
    NotebookGetShowTabsMethodInfo           ,
#endif
    notebookGetShowTabs                     ,


-- ** getTabDetachable #method:getTabDetachable#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabDetachableMethodInfo      ,
#endif
    notebookGetTabDetachable                ,


-- ** getTabHborder #method:getTabHborder#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabHborderMethodInfo         ,
#endif
    notebookGetTabHborder                   ,


-- ** getTabLabel #method:getTabLabel#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabLabelMethodInfo           ,
#endif
    notebookGetTabLabel                     ,


-- ** getTabLabelText #method:getTabLabelText#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabLabelTextMethodInfo       ,
#endif
    notebookGetTabLabelText                 ,


-- ** getTabPos #method:getTabPos#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabPosMethodInfo             ,
#endif
    notebookGetTabPos                       ,


-- ** getTabReorderable #method:getTabReorderable#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabReorderableMethodInfo     ,
#endif
    notebookGetTabReorderable               ,


-- ** getTabVborder #method:getTabVborder#

#if defined(ENABLE_OVERLOADING)
    NotebookGetTabVborderMethodInfo         ,
#endif
    notebookGetTabVborder                   ,


-- ** insertPage #method:insertPage#

#if defined(ENABLE_OVERLOADING)
    NotebookInsertPageMethodInfo            ,
#endif
    notebookInsertPage                      ,


-- ** insertPageMenu #method:insertPageMenu#

#if defined(ENABLE_OVERLOADING)
    NotebookInsertPageMenuMethodInfo        ,
#endif
    notebookInsertPageMenu                  ,


-- ** new #method:new#

    notebookNew                             ,


-- ** nextPage #method:nextPage#

#if defined(ENABLE_OVERLOADING)
    NotebookNextPageMethodInfo              ,
#endif
    notebookNextPage                        ,


-- ** pageNum #method:pageNum#

#if defined(ENABLE_OVERLOADING)
    NotebookPageNumMethodInfo               ,
#endif
    notebookPageNum                         ,


-- ** popupDisable #method:popupDisable#

#if defined(ENABLE_OVERLOADING)
    NotebookPopupDisableMethodInfo          ,
#endif
    notebookPopupDisable                    ,


-- ** popupEnable #method:popupEnable#

#if defined(ENABLE_OVERLOADING)
    NotebookPopupEnableMethodInfo           ,
#endif
    notebookPopupEnable                     ,


-- ** prependPage #method:prependPage#

#if defined(ENABLE_OVERLOADING)
    NotebookPrependPageMethodInfo           ,
#endif
    notebookPrependPage                     ,


-- ** prependPageMenu #method:prependPageMenu#

#if defined(ENABLE_OVERLOADING)
    NotebookPrependPageMenuMethodInfo       ,
#endif
    notebookPrependPageMenu                 ,


-- ** prevPage #method:prevPage#

#if defined(ENABLE_OVERLOADING)
    NotebookPrevPageMethodInfo              ,
#endif
    notebookPrevPage                        ,


-- ** removePage #method:removePage#

#if defined(ENABLE_OVERLOADING)
    NotebookRemovePageMethodInfo            ,
#endif
    notebookRemovePage                      ,


-- ** reorderChild #method:reorderChild#

#if defined(ENABLE_OVERLOADING)
    NotebookReorderChildMethodInfo          ,
#endif
    notebookReorderChild                    ,


-- ** setActionWidget #method:setActionWidget#

#if defined(ENABLE_OVERLOADING)
    NotebookSetActionWidgetMethodInfo       ,
#endif
    notebookSetActionWidget                 ,


-- ** setCurrentPage #method:setCurrentPage#

#if defined(ENABLE_OVERLOADING)
    NotebookSetCurrentPageMethodInfo        ,
#endif
    notebookSetCurrentPage                  ,


-- ** setGroupName #method:setGroupName#

#if defined(ENABLE_OVERLOADING)
    NotebookSetGroupNameMethodInfo          ,
#endif
    notebookSetGroupName                    ,


-- ** setMenuLabel #method:setMenuLabel#

#if defined(ENABLE_OVERLOADING)
    NotebookSetMenuLabelMethodInfo          ,
#endif
    notebookSetMenuLabel                    ,


-- ** setMenuLabelText #method:setMenuLabelText#

#if defined(ENABLE_OVERLOADING)
    NotebookSetMenuLabelTextMethodInfo      ,
#endif
    notebookSetMenuLabelText                ,


-- ** setScrollable #method:setScrollable#

#if defined(ENABLE_OVERLOADING)
    NotebookSetScrollableMethodInfo         ,
#endif
    notebookSetScrollable                   ,


-- ** setShowBorder #method:setShowBorder#

#if defined(ENABLE_OVERLOADING)
    NotebookSetShowBorderMethodInfo         ,
#endif
    notebookSetShowBorder                   ,


-- ** setShowTabs #method:setShowTabs#

#if defined(ENABLE_OVERLOADING)
    NotebookSetShowTabsMethodInfo           ,
#endif
    notebookSetShowTabs                     ,


-- ** setTabDetachable #method:setTabDetachable#

#if defined(ENABLE_OVERLOADING)
    NotebookSetTabDetachableMethodInfo      ,
#endif
    notebookSetTabDetachable                ,


-- ** setTabLabel #method:setTabLabel#

#if defined(ENABLE_OVERLOADING)
    NotebookSetTabLabelMethodInfo           ,
#endif
    notebookSetTabLabel                     ,


-- ** setTabLabelText #method:setTabLabelText#

#if defined(ENABLE_OVERLOADING)
    NotebookSetTabLabelTextMethodInfo       ,
#endif
    notebookSetTabLabelText                 ,


-- ** setTabPos #method:setTabPos#

#if defined(ENABLE_OVERLOADING)
    NotebookSetTabPosMethodInfo             ,
#endif
    notebookSetTabPos                       ,


-- ** setTabReorderable #method:setTabReorderable#

#if defined(ENABLE_OVERLOADING)
    NotebookSetTabReorderableMethodInfo     ,
#endif
    notebookSetTabReorderable               ,




 -- * Properties
-- ** enablePopup #attr:enablePopup#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookEnablePopupPropertyInfo         ,
#endif
    constructNotebookEnablePopup            ,
    getNotebookEnablePopup                  ,
#if defined(ENABLE_OVERLOADING)
    notebookEnablePopup                     ,
#endif
    setNotebookEnablePopup                  ,


-- ** groupName #attr:groupName#
-- | Group name for tab drag and drop.
-- 
-- /Since: 2.24/

#if defined(ENABLE_OVERLOADING)
    NotebookGroupNamePropertyInfo           ,
#endif
    clearNotebookGroupName                  ,
    constructNotebookGroupName              ,
    getNotebookGroupName                    ,
#if defined(ENABLE_OVERLOADING)
    notebookGroupName                       ,
#endif
    setNotebookGroupName                    ,


-- ** page #attr:page#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookPagePropertyInfo                ,
#endif
    constructNotebookPage                   ,
    getNotebookPage                         ,
#if defined(ENABLE_OVERLOADING)
    notebookPage                            ,
#endif
    setNotebookPage                         ,


-- ** scrollable #attr:scrollable#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookScrollablePropertyInfo          ,
#endif
    constructNotebookScrollable             ,
    getNotebookScrollable                   ,
#if defined(ENABLE_OVERLOADING)
    notebookScrollable                      ,
#endif
    setNotebookScrollable                   ,


-- ** showBorder #attr:showBorder#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookShowBorderPropertyInfo          ,
#endif
    constructNotebookShowBorder             ,
    getNotebookShowBorder                   ,
#if defined(ENABLE_OVERLOADING)
    notebookShowBorder                      ,
#endif
    setNotebookShowBorder                   ,


-- ** showTabs #attr:showTabs#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookShowTabsPropertyInfo            ,
#endif
    constructNotebookShowTabs               ,
    getNotebookShowTabs                     ,
#if defined(ENABLE_OVERLOADING)
    notebookShowTabs                        ,
#endif
    setNotebookShowTabs                     ,


-- ** tabPos #attr:tabPos#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    NotebookTabPosPropertyInfo              ,
#endif
    constructNotebookTabPos                 ,
    getNotebookTabPos                       ,
#if defined(ENABLE_OVERLOADING)
    notebookTabPos                          ,
#endif
    setNotebookTabPos                       ,




 -- * Signals
-- ** changeCurrentPage #signal:changeCurrentPage#

    C_NotebookChangeCurrentPageCallback     ,
    NotebookChangeCurrentPageCallback       ,
#if defined(ENABLE_OVERLOADING)
    NotebookChangeCurrentPageSignalInfo     ,
#endif
    afterNotebookChangeCurrentPage          ,
    genClosure_NotebookChangeCurrentPage    ,
    mk_NotebookChangeCurrentPageCallback    ,
    noNotebookChangeCurrentPageCallback     ,
    onNotebookChangeCurrentPage             ,
    wrap_NotebookChangeCurrentPageCallback  ,


-- ** createWindow #signal:createWindow#

    C_NotebookCreateWindowCallback          ,
    NotebookCreateWindowCallback            ,
#if defined(ENABLE_OVERLOADING)
    NotebookCreateWindowSignalInfo          ,
#endif
    afterNotebookCreateWindow               ,
    genClosure_NotebookCreateWindow         ,
    mk_NotebookCreateWindowCallback         ,
    noNotebookCreateWindowCallback          ,
    onNotebookCreateWindow                  ,
    wrap_NotebookCreateWindowCallback       ,


-- ** focusTab #signal:focusTab#

    C_NotebookFocusTabCallback              ,
    NotebookFocusTabCallback                ,
#if defined(ENABLE_OVERLOADING)
    NotebookFocusTabSignalInfo              ,
#endif
    afterNotebookFocusTab                   ,
    genClosure_NotebookFocusTab             ,
    mk_NotebookFocusTabCallback             ,
    noNotebookFocusTabCallback              ,
    onNotebookFocusTab                      ,
    wrap_NotebookFocusTabCallback           ,


-- ** moveFocusOut #signal:moveFocusOut#

    C_NotebookMoveFocusOutCallback          ,
    NotebookMoveFocusOutCallback            ,
#if defined(ENABLE_OVERLOADING)
    NotebookMoveFocusOutSignalInfo          ,
#endif
    afterNotebookMoveFocusOut               ,
    genClosure_NotebookMoveFocusOut         ,
    mk_NotebookMoveFocusOutCallback         ,
    noNotebookMoveFocusOutCallback          ,
    onNotebookMoveFocusOut                  ,
    wrap_NotebookMoveFocusOutCallback       ,


-- ** pageAdded #signal:pageAdded#

    C_NotebookPageAddedCallback             ,
    NotebookPageAddedCallback               ,
#if defined(ENABLE_OVERLOADING)
    NotebookPageAddedSignalInfo             ,
#endif
    afterNotebookPageAdded                  ,
    genClosure_NotebookPageAdded            ,
    mk_NotebookPageAddedCallback            ,
    noNotebookPageAddedCallback             ,
    onNotebookPageAdded                     ,
    wrap_NotebookPageAddedCallback          ,


-- ** pageRemoved #signal:pageRemoved#

    C_NotebookPageRemovedCallback           ,
    NotebookPageRemovedCallback             ,
#if defined(ENABLE_OVERLOADING)
    NotebookPageRemovedSignalInfo           ,
#endif
    afterNotebookPageRemoved                ,
    genClosure_NotebookPageRemoved          ,
    mk_NotebookPageRemovedCallback          ,
    noNotebookPageRemovedCallback           ,
    onNotebookPageRemoved                   ,
    wrap_NotebookPageRemovedCallback        ,


-- ** pageReordered #signal:pageReordered#

    C_NotebookPageReorderedCallback         ,
    NotebookPageReorderedCallback           ,
#if defined(ENABLE_OVERLOADING)
    NotebookPageReorderedSignalInfo         ,
#endif
    afterNotebookPageReordered              ,
    genClosure_NotebookPageReordered        ,
    mk_NotebookPageReorderedCallback        ,
    noNotebookPageReorderedCallback         ,
    onNotebookPageReordered                 ,
    wrap_NotebookPageReorderedCallback      ,


-- ** reorderTab #signal:reorderTab#

    C_NotebookReorderTabCallback            ,
    NotebookReorderTabCallback              ,
#if defined(ENABLE_OVERLOADING)
    NotebookReorderTabSignalInfo            ,
#endif
    afterNotebookReorderTab                 ,
    genClosure_NotebookReorderTab           ,
    mk_NotebookReorderTabCallback           ,
    noNotebookReorderTabCallback            ,
    onNotebookReorderTab                    ,
    wrap_NotebookReorderTabCallback         ,


-- ** selectPage #signal:selectPage#

    C_NotebookSelectPageCallback            ,
    NotebookSelectPageCallback              ,
#if defined(ENABLE_OVERLOADING)
    NotebookSelectPageSignalInfo            ,
#endif
    afterNotebookSelectPage                 ,
    genClosure_NotebookSelectPage           ,
    mk_NotebookSelectPageCallback           ,
    noNotebookSelectPageCallback            ,
    onNotebookSelectPage                    ,
    wrap_NotebookSelectPageCallback         ,


-- ** switchPage #signal:switchPage#

    C_NotebookSwitchPageCallback            ,
    NotebookSwitchPageCallback              ,
#if defined(ENABLE_OVERLOADING)
    NotebookSwitchPageSignalInfo            ,
#endif
    afterNotebookSwitchPage                 ,
    genClosure_NotebookSwitchPage           ,
    mk_NotebookSwitchPageCallback           ,
    noNotebookSwitchPageCallback            ,
    onNotebookSwitchPage                    ,
    wrap_NotebookSwitchPageCallback         ,




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
import {-# SOURCE #-} qualified GI.Gtk.Objects.Container as Gtk.Container
import {-# SOURCE #-} qualified GI.Gtk.Objects.Widget as Gtk.Widget

-- | Memory-managed wrapper type.
newtype Notebook = Notebook (ManagedPtr Notebook)
    deriving (Eq)
foreign import ccall "gtk_notebook_get_type"
    c_gtk_notebook_get_type :: IO GType

instance GObject Notebook where
    gobjectType = c_gtk_notebook_get_type
    

-- | Convert 'Notebook' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Notebook where
    toGValue o = do
        gtype <- c_gtk_notebook_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Notebook)
        B.ManagedPtr.newObject Notebook ptr
        
    

-- | Type class for types which can be safely cast to `Notebook`, for instance with `toNotebook`.
class (GObject o, O.IsDescendantOf Notebook o) => IsNotebook o
instance (GObject o, O.IsDescendantOf Notebook o) => IsNotebook o

instance O.HasParentTypes Notebook
type instance O.ParentTypes Notebook = '[Gtk.Container.Container, Gtk.Widget.Widget, GObject.Object.Object, Atk.ImplementorIface.ImplementorIface, Gtk.Buildable.Buildable]

-- | Cast to `Notebook`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNotebook :: (MonadIO m, IsNotebook o) => o -> m Notebook
toNotebook = liftIO . unsafeCastTo Notebook

-- | A convenience alias for `Nothing` :: `Maybe` `Notebook`.
noNotebook :: Maybe Notebook
noNotebook = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNotebookMethod (t :: Symbol) (o :: *) :: * where
    ResolveNotebookMethod "activate" o = Gtk.Widget.WidgetActivateMethodInfo
    ResolveNotebookMethod "add" o = Gtk.Container.ContainerAddMethodInfo
    ResolveNotebookMethod "addAccelerator" o = Gtk.Widget.WidgetAddAcceleratorMethodInfo
    ResolveNotebookMethod "addChild" o = Gtk.Buildable.BuildableAddChildMethodInfo
    ResolveNotebookMethod "addDeviceEvents" o = Gtk.Widget.WidgetAddDeviceEventsMethodInfo
    ResolveNotebookMethod "addEvents" o = Gtk.Widget.WidgetAddEventsMethodInfo
    ResolveNotebookMethod "addMnemonicLabel" o = Gtk.Widget.WidgetAddMnemonicLabelMethodInfo
    ResolveNotebookMethod "addTickCallback" o = Gtk.Widget.WidgetAddTickCallbackMethodInfo
    ResolveNotebookMethod "appendPage" o = NotebookAppendPageMethodInfo
    ResolveNotebookMethod "appendPageMenu" o = NotebookAppendPageMenuMethodInfo
    ResolveNotebookMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNotebookMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNotebookMethod "canActivateAccel" o = Gtk.Widget.WidgetCanActivateAccelMethodInfo
    ResolveNotebookMethod "checkResize" o = Gtk.Container.ContainerCheckResizeMethodInfo
    ResolveNotebookMethod "childFocus" o = Gtk.Widget.WidgetChildFocusMethodInfo
    ResolveNotebookMethod "childGetProperty" o = Gtk.Container.ContainerChildGetPropertyMethodInfo
    ResolveNotebookMethod "childNotify" o = Gtk.Container.ContainerChildNotifyMethodInfo
    ResolveNotebookMethod "childNotifyByPspec" o = Gtk.Container.ContainerChildNotifyByPspecMethodInfo
    ResolveNotebookMethod "childSetProperty" o = Gtk.Container.ContainerChildSetPropertyMethodInfo
    ResolveNotebookMethod "childType" o = Gtk.Container.ContainerChildTypeMethodInfo
    ResolveNotebookMethod "classPath" o = Gtk.Widget.WidgetClassPathMethodInfo
    ResolveNotebookMethod "computeExpand" o = Gtk.Widget.WidgetComputeExpandMethodInfo
    ResolveNotebookMethod "constructChild" o = Gtk.Buildable.BuildableConstructChildMethodInfo
    ResolveNotebookMethod "createPangoContext" o = Gtk.Widget.WidgetCreatePangoContextMethodInfo
    ResolveNotebookMethod "createPangoLayout" o = Gtk.Widget.WidgetCreatePangoLayoutMethodInfo
    ResolveNotebookMethod "customFinished" o = Gtk.Buildable.BuildableCustomFinishedMethodInfo
    ResolveNotebookMethod "customTagEnd" o = Gtk.Buildable.BuildableCustomTagEndMethodInfo
    ResolveNotebookMethod "customTagStart" o = Gtk.Buildable.BuildableCustomTagStartMethodInfo
    ResolveNotebookMethod "destroy" o = Gtk.Widget.WidgetDestroyMethodInfo
    ResolveNotebookMethod "destroyed" o = Gtk.Widget.WidgetDestroyedMethodInfo
    ResolveNotebookMethod "detachTab" o = NotebookDetachTabMethodInfo
    ResolveNotebookMethod "deviceIsShadowed" o = Gtk.Widget.WidgetDeviceIsShadowedMethodInfo
    ResolveNotebookMethod "dragBegin" o = Gtk.Widget.WidgetDragBeginMethodInfo
    ResolveNotebookMethod "dragBeginWithCoordinates" o = Gtk.Widget.WidgetDragBeginWithCoordinatesMethodInfo
    ResolveNotebookMethod "dragCheckThreshold" o = Gtk.Widget.WidgetDragCheckThresholdMethodInfo
    ResolveNotebookMethod "dragDestAddImageTargets" o = Gtk.Widget.WidgetDragDestAddImageTargetsMethodInfo
    ResolveNotebookMethod "dragDestAddTextTargets" o = Gtk.Widget.WidgetDragDestAddTextTargetsMethodInfo
    ResolveNotebookMethod "dragDestAddUriTargets" o = Gtk.Widget.WidgetDragDestAddUriTargetsMethodInfo
    ResolveNotebookMethod "dragDestFindTarget" o = Gtk.Widget.WidgetDragDestFindTargetMethodInfo
    ResolveNotebookMethod "dragDestGetTargetList" o = Gtk.Widget.WidgetDragDestGetTargetListMethodInfo
    ResolveNotebookMethod "dragDestGetTrackMotion" o = Gtk.Widget.WidgetDragDestGetTrackMotionMethodInfo
    ResolveNotebookMethod "dragDestSet" o = Gtk.Widget.WidgetDragDestSetMethodInfo
    ResolveNotebookMethod "dragDestSetProxy" o = Gtk.Widget.WidgetDragDestSetProxyMethodInfo
    ResolveNotebookMethod "dragDestSetTargetList" o = Gtk.Widget.WidgetDragDestSetTargetListMethodInfo
    ResolveNotebookMethod "dragDestSetTrackMotion" o = Gtk.Widget.WidgetDragDestSetTrackMotionMethodInfo
    ResolveNotebookMethod "dragDestUnset" o = Gtk.Widget.WidgetDragDestUnsetMethodInfo
    ResolveNotebookMethod "dragGetData" o = Gtk.Widget.WidgetDragGetDataMethodInfo
    ResolveNotebookMethod "dragHighlight" o = Gtk.Widget.WidgetDragHighlightMethodInfo
    ResolveNotebookMethod "dragSourceAddImageTargets" o = Gtk.Widget.WidgetDragSourceAddImageTargetsMethodInfo
    ResolveNotebookMethod "dragSourceAddTextTargets" o = Gtk.Widget.WidgetDragSourceAddTextTargetsMethodInfo
    ResolveNotebookMethod "dragSourceAddUriTargets" o = Gtk.Widget.WidgetDragSourceAddUriTargetsMethodInfo
    ResolveNotebookMethod "dragSourceGetTargetList" o = Gtk.Widget.WidgetDragSourceGetTargetListMethodInfo
    ResolveNotebookMethod "dragSourceSet" o = Gtk.Widget.WidgetDragSourceSetMethodInfo
    ResolveNotebookMethod "dragSourceSetIconGicon" o = Gtk.Widget.WidgetDragSourceSetIconGiconMethodInfo
    ResolveNotebookMethod "dragSourceSetIconName" o = Gtk.Widget.WidgetDragSourceSetIconNameMethodInfo
    ResolveNotebookMethod "dragSourceSetIconPixbuf" o = Gtk.Widget.WidgetDragSourceSetIconPixbufMethodInfo
    ResolveNotebookMethod "dragSourceSetIconStock" o = Gtk.Widget.WidgetDragSourceSetIconStockMethodInfo
    ResolveNotebookMethod "dragSourceSetTargetList" o = Gtk.Widget.WidgetDragSourceSetTargetListMethodInfo
    ResolveNotebookMethod "dragSourceUnset" o = Gtk.Widget.WidgetDragSourceUnsetMethodInfo
    ResolveNotebookMethod "dragUnhighlight" o = Gtk.Widget.WidgetDragUnhighlightMethodInfo
    ResolveNotebookMethod "draw" o = Gtk.Widget.WidgetDrawMethodInfo
    ResolveNotebookMethod "ensureStyle" o = Gtk.Widget.WidgetEnsureStyleMethodInfo
    ResolveNotebookMethod "errorBell" o = Gtk.Widget.WidgetErrorBellMethodInfo
    ResolveNotebookMethod "event" o = Gtk.Widget.WidgetEventMethodInfo
    ResolveNotebookMethod "forall" o = Gtk.Container.ContainerForallMethodInfo
    ResolveNotebookMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNotebookMethod "foreach" o = Gtk.Container.ContainerForeachMethodInfo
    ResolveNotebookMethod "freezeChildNotify" o = Gtk.Widget.WidgetFreezeChildNotifyMethodInfo
    ResolveNotebookMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNotebookMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNotebookMethod "grabAdd" o = Gtk.Widget.WidgetGrabAddMethodInfo
    ResolveNotebookMethod "grabDefault" o = Gtk.Widget.WidgetGrabDefaultMethodInfo
    ResolveNotebookMethod "grabFocus" o = Gtk.Widget.WidgetGrabFocusMethodInfo
    ResolveNotebookMethod "grabRemove" o = Gtk.Widget.WidgetGrabRemoveMethodInfo
    ResolveNotebookMethod "hasDefault" o = Gtk.Widget.WidgetHasDefaultMethodInfo
    ResolveNotebookMethod "hasFocus" o = Gtk.Widget.WidgetHasFocusMethodInfo
    ResolveNotebookMethod "hasGrab" o = Gtk.Widget.WidgetHasGrabMethodInfo
    ResolveNotebookMethod "hasRcStyle" o = Gtk.Widget.WidgetHasRcStyleMethodInfo
    ResolveNotebookMethod "hasScreen" o = Gtk.Widget.WidgetHasScreenMethodInfo
    ResolveNotebookMethod "hasVisibleFocus" o = Gtk.Widget.WidgetHasVisibleFocusMethodInfo
    ResolveNotebookMethod "hide" o = Gtk.Widget.WidgetHideMethodInfo
    ResolveNotebookMethod "hideOnDelete" o = Gtk.Widget.WidgetHideOnDeleteMethodInfo
    ResolveNotebookMethod "inDestruction" o = Gtk.Widget.WidgetInDestructionMethodInfo
    ResolveNotebookMethod "initTemplate" o = Gtk.Widget.WidgetInitTemplateMethodInfo
    ResolveNotebookMethod "inputShapeCombineRegion" o = Gtk.Widget.WidgetInputShapeCombineRegionMethodInfo
    ResolveNotebookMethod "insertActionGroup" o = Gtk.Widget.WidgetInsertActionGroupMethodInfo
    ResolveNotebookMethod "insertPage" o = NotebookInsertPageMethodInfo
    ResolveNotebookMethod "insertPageMenu" o = NotebookInsertPageMenuMethodInfo
    ResolveNotebookMethod "intersect" o = Gtk.Widget.WidgetIntersectMethodInfo
    ResolveNotebookMethod "isAncestor" o = Gtk.Widget.WidgetIsAncestorMethodInfo
    ResolveNotebookMethod "isComposited" o = Gtk.Widget.WidgetIsCompositedMethodInfo
    ResolveNotebookMethod "isDrawable" o = Gtk.Widget.WidgetIsDrawableMethodInfo
    ResolveNotebookMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNotebookMethod "isFocus" o = Gtk.Widget.WidgetIsFocusMethodInfo
    ResolveNotebookMethod "isSensitive" o = Gtk.Widget.WidgetIsSensitiveMethodInfo
    ResolveNotebookMethod "isToplevel" o = Gtk.Widget.WidgetIsToplevelMethodInfo
    ResolveNotebookMethod "isVisible" o = Gtk.Widget.WidgetIsVisibleMethodInfo
    ResolveNotebookMethod "keynavFailed" o = Gtk.Widget.WidgetKeynavFailedMethodInfo
    ResolveNotebookMethod "listAccelClosures" o = Gtk.Widget.WidgetListAccelClosuresMethodInfo
    ResolveNotebookMethod "listActionPrefixes" o = Gtk.Widget.WidgetListActionPrefixesMethodInfo
    ResolveNotebookMethod "listMnemonicLabels" o = Gtk.Widget.WidgetListMnemonicLabelsMethodInfo
    ResolveNotebookMethod "map" o = Gtk.Widget.WidgetMapMethodInfo
    ResolveNotebookMethod "mnemonicActivate" o = Gtk.Widget.WidgetMnemonicActivateMethodInfo
    ResolveNotebookMethod "modifyBase" o = Gtk.Widget.WidgetModifyBaseMethodInfo
    ResolveNotebookMethod "modifyBg" o = Gtk.Widget.WidgetModifyBgMethodInfo
    ResolveNotebookMethod "modifyCursor" o = Gtk.Widget.WidgetModifyCursorMethodInfo
    ResolveNotebookMethod "modifyFg" o = Gtk.Widget.WidgetModifyFgMethodInfo
    ResolveNotebookMethod "modifyFont" o = Gtk.Widget.WidgetModifyFontMethodInfo
    ResolveNotebookMethod "modifyStyle" o = Gtk.Widget.WidgetModifyStyleMethodInfo
    ResolveNotebookMethod "modifyText" o = Gtk.Widget.WidgetModifyTextMethodInfo
    ResolveNotebookMethod "nextPage" o = NotebookNextPageMethodInfo
    ResolveNotebookMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNotebookMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNotebookMethod "overrideBackgroundColor" o = Gtk.Widget.WidgetOverrideBackgroundColorMethodInfo
    ResolveNotebookMethod "overrideColor" o = Gtk.Widget.WidgetOverrideColorMethodInfo
    ResolveNotebookMethod "overrideCursor" o = Gtk.Widget.WidgetOverrideCursorMethodInfo
    ResolveNotebookMethod "overrideFont" o = Gtk.Widget.WidgetOverrideFontMethodInfo
    ResolveNotebookMethod "overrideSymbolicColor" o = Gtk.Widget.WidgetOverrideSymbolicColorMethodInfo
    ResolveNotebookMethod "pageNum" o = NotebookPageNumMethodInfo
    ResolveNotebookMethod "parserFinished" o = Gtk.Buildable.BuildableParserFinishedMethodInfo
    ResolveNotebookMethod "path" o = Gtk.Widget.WidgetPathMethodInfo
    ResolveNotebookMethod "popupDisable" o = NotebookPopupDisableMethodInfo
    ResolveNotebookMethod "popupEnable" o = NotebookPopupEnableMethodInfo
    ResolveNotebookMethod "prependPage" o = NotebookPrependPageMethodInfo
    ResolveNotebookMethod "prependPageMenu" o = NotebookPrependPageMenuMethodInfo
    ResolveNotebookMethod "prevPage" o = NotebookPrevPageMethodInfo
    ResolveNotebookMethod "propagateDraw" o = Gtk.Container.ContainerPropagateDrawMethodInfo
    ResolveNotebookMethod "queueAllocate" o = Gtk.Widget.WidgetQueueAllocateMethodInfo
    ResolveNotebookMethod "queueComputeExpand" o = Gtk.Widget.WidgetQueueComputeExpandMethodInfo
    ResolveNotebookMethod "queueDraw" o = Gtk.Widget.WidgetQueueDrawMethodInfo
    ResolveNotebookMethod "queueDrawArea" o = Gtk.Widget.WidgetQueueDrawAreaMethodInfo
    ResolveNotebookMethod "queueDrawRegion" o = Gtk.Widget.WidgetQueueDrawRegionMethodInfo
    ResolveNotebookMethod "queueResize" o = Gtk.Widget.WidgetQueueResizeMethodInfo
    ResolveNotebookMethod "queueResizeNoRedraw" o = Gtk.Widget.WidgetQueueResizeNoRedrawMethodInfo
    ResolveNotebookMethod "realize" o = Gtk.Widget.WidgetRealizeMethodInfo
    ResolveNotebookMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNotebookMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNotebookMethod "regionIntersect" o = Gtk.Widget.WidgetRegionIntersectMethodInfo
    ResolveNotebookMethod "registerWindow" o = Gtk.Widget.WidgetRegisterWindowMethodInfo
    ResolveNotebookMethod "remove" o = Gtk.Container.ContainerRemoveMethodInfo
    ResolveNotebookMethod "removeAccelerator" o = Gtk.Widget.WidgetRemoveAcceleratorMethodInfo
    ResolveNotebookMethod "removeMnemonicLabel" o = Gtk.Widget.WidgetRemoveMnemonicLabelMethodInfo
    ResolveNotebookMethod "removePage" o = NotebookRemovePageMethodInfo
    ResolveNotebookMethod "removeTickCallback" o = Gtk.Widget.WidgetRemoveTickCallbackMethodInfo
    ResolveNotebookMethod "renderIcon" o = Gtk.Widget.WidgetRenderIconMethodInfo
    ResolveNotebookMethod "renderIconPixbuf" o = Gtk.Widget.WidgetRenderIconPixbufMethodInfo
    ResolveNotebookMethod "reorderChild" o = NotebookReorderChildMethodInfo
    ResolveNotebookMethod "reparent" o = Gtk.Widget.WidgetReparentMethodInfo
    ResolveNotebookMethod "resetRcStyles" o = Gtk.Widget.WidgetResetRcStylesMethodInfo
    ResolveNotebookMethod "resetStyle" o = Gtk.Widget.WidgetResetStyleMethodInfo
    ResolveNotebookMethod "resizeChildren" o = Gtk.Container.ContainerResizeChildrenMethodInfo
    ResolveNotebookMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNotebookMethod "sendExpose" o = Gtk.Widget.WidgetSendExposeMethodInfo
    ResolveNotebookMethod "sendFocusChange" o = Gtk.Widget.WidgetSendFocusChangeMethodInfo
    ResolveNotebookMethod "shapeCombineRegion" o = Gtk.Widget.WidgetShapeCombineRegionMethodInfo
    ResolveNotebookMethod "show" o = Gtk.Widget.WidgetShowMethodInfo
    ResolveNotebookMethod "showAll" o = Gtk.Widget.WidgetShowAllMethodInfo
    ResolveNotebookMethod "showNow" o = Gtk.Widget.WidgetShowNowMethodInfo
    ResolveNotebookMethod "sizeAllocate" o = Gtk.Widget.WidgetSizeAllocateMethodInfo
    ResolveNotebookMethod "sizeAllocateWithBaseline" o = Gtk.Widget.WidgetSizeAllocateWithBaselineMethodInfo
    ResolveNotebookMethod "sizeRequest" o = Gtk.Widget.WidgetSizeRequestMethodInfo
    ResolveNotebookMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNotebookMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNotebookMethod "styleAttach" o = Gtk.Widget.WidgetStyleAttachMethodInfo
    ResolveNotebookMethod "styleGetProperty" o = Gtk.Widget.WidgetStyleGetPropertyMethodInfo
    ResolveNotebookMethod "thawChildNotify" o = Gtk.Widget.WidgetThawChildNotifyMethodInfo
    ResolveNotebookMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNotebookMethod "translateCoordinates" o = Gtk.Widget.WidgetTranslateCoordinatesMethodInfo
    ResolveNotebookMethod "triggerTooltipQuery" o = Gtk.Widget.WidgetTriggerTooltipQueryMethodInfo
    ResolveNotebookMethod "unmap" o = Gtk.Widget.WidgetUnmapMethodInfo
    ResolveNotebookMethod "unparent" o = Gtk.Widget.WidgetUnparentMethodInfo
    ResolveNotebookMethod "unrealize" o = Gtk.Widget.WidgetUnrealizeMethodInfo
    ResolveNotebookMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNotebookMethod "unregisterWindow" o = Gtk.Widget.WidgetUnregisterWindowMethodInfo
    ResolveNotebookMethod "unsetFocusChain" o = Gtk.Container.ContainerUnsetFocusChainMethodInfo
    ResolveNotebookMethod "unsetStateFlags" o = Gtk.Widget.WidgetUnsetStateFlagsMethodInfo
    ResolveNotebookMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNotebookMethod "getAccessible" o = Gtk.Widget.WidgetGetAccessibleMethodInfo
    ResolveNotebookMethod "getActionGroup" o = Gtk.Widget.WidgetGetActionGroupMethodInfo
    ResolveNotebookMethod "getActionWidget" o = NotebookGetActionWidgetMethodInfo
    ResolveNotebookMethod "getAllocatedBaseline" o = Gtk.Widget.WidgetGetAllocatedBaselineMethodInfo
    ResolveNotebookMethod "getAllocatedHeight" o = Gtk.Widget.WidgetGetAllocatedHeightMethodInfo
    ResolveNotebookMethod "getAllocatedSize" o = Gtk.Widget.WidgetGetAllocatedSizeMethodInfo
    ResolveNotebookMethod "getAllocatedWidth" o = Gtk.Widget.WidgetGetAllocatedWidthMethodInfo
    ResolveNotebookMethod "getAllocation" o = Gtk.Widget.WidgetGetAllocationMethodInfo
    ResolveNotebookMethod "getAncestor" o = Gtk.Widget.WidgetGetAncestorMethodInfo
    ResolveNotebookMethod "getAppPaintable" o = Gtk.Widget.WidgetGetAppPaintableMethodInfo
    ResolveNotebookMethod "getBorderWidth" o = Gtk.Container.ContainerGetBorderWidthMethodInfo
    ResolveNotebookMethod "getCanDefault" o = Gtk.Widget.WidgetGetCanDefaultMethodInfo
    ResolveNotebookMethod "getCanFocus" o = Gtk.Widget.WidgetGetCanFocusMethodInfo
    ResolveNotebookMethod "getChildRequisition" o = Gtk.Widget.WidgetGetChildRequisitionMethodInfo
    ResolveNotebookMethod "getChildVisible" o = Gtk.Widget.WidgetGetChildVisibleMethodInfo
    ResolveNotebookMethod "getChildren" o = Gtk.Container.ContainerGetChildrenMethodInfo
    ResolveNotebookMethod "getClip" o = Gtk.Widget.WidgetGetClipMethodInfo
    ResolveNotebookMethod "getClipboard" o = Gtk.Widget.WidgetGetClipboardMethodInfo
    ResolveNotebookMethod "getCompositeName" o = Gtk.Widget.WidgetGetCompositeNameMethodInfo
    ResolveNotebookMethod "getCurrentPage" o = NotebookGetCurrentPageMethodInfo
    ResolveNotebookMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNotebookMethod "getDeviceEnabled" o = Gtk.Widget.WidgetGetDeviceEnabledMethodInfo
    ResolveNotebookMethod "getDeviceEvents" o = Gtk.Widget.WidgetGetDeviceEventsMethodInfo
    ResolveNotebookMethod "getDirection" o = Gtk.Widget.WidgetGetDirectionMethodInfo
    ResolveNotebookMethod "getDisplay" o = Gtk.Widget.WidgetGetDisplayMethodInfo
    ResolveNotebookMethod "getDoubleBuffered" o = Gtk.Widget.WidgetGetDoubleBufferedMethodInfo
    ResolveNotebookMethod "getEvents" o = Gtk.Widget.WidgetGetEventsMethodInfo
    ResolveNotebookMethod "getFocusChain" o = Gtk.Container.ContainerGetFocusChainMethodInfo
    ResolveNotebookMethod "getFocusChild" o = Gtk.Container.ContainerGetFocusChildMethodInfo
    ResolveNotebookMethod "getFocusHadjustment" o = Gtk.Container.ContainerGetFocusHadjustmentMethodInfo
    ResolveNotebookMethod "getFocusOnClick" o = Gtk.Widget.WidgetGetFocusOnClickMethodInfo
    ResolveNotebookMethod "getFocusVadjustment" o = Gtk.Container.ContainerGetFocusVadjustmentMethodInfo
    ResolveNotebookMethod "getFontMap" o = Gtk.Widget.WidgetGetFontMapMethodInfo
    ResolveNotebookMethod "getFontOptions" o = Gtk.Widget.WidgetGetFontOptionsMethodInfo
    ResolveNotebookMethod "getFrameClock" o = Gtk.Widget.WidgetGetFrameClockMethodInfo
    ResolveNotebookMethod "getGroupName" o = NotebookGetGroupNameMethodInfo
    ResolveNotebookMethod "getHalign" o = Gtk.Widget.WidgetGetHalignMethodInfo
    ResolveNotebookMethod "getHasTooltip" o = Gtk.Widget.WidgetGetHasTooltipMethodInfo
    ResolveNotebookMethod "getHasWindow" o = Gtk.Widget.WidgetGetHasWindowMethodInfo
    ResolveNotebookMethod "getHexpand" o = Gtk.Widget.WidgetGetHexpandMethodInfo
    ResolveNotebookMethod "getHexpandSet" o = Gtk.Widget.WidgetGetHexpandSetMethodInfo
    ResolveNotebookMethod "getInternalChild" o = Gtk.Buildable.BuildableGetInternalChildMethodInfo
    ResolveNotebookMethod "getMapped" o = Gtk.Widget.WidgetGetMappedMethodInfo
    ResolveNotebookMethod "getMarginBottom" o = Gtk.Widget.WidgetGetMarginBottomMethodInfo
    ResolveNotebookMethod "getMarginEnd" o = Gtk.Widget.WidgetGetMarginEndMethodInfo
    ResolveNotebookMethod "getMarginLeft" o = Gtk.Widget.WidgetGetMarginLeftMethodInfo
    ResolveNotebookMethod "getMarginRight" o = Gtk.Widget.WidgetGetMarginRightMethodInfo
    ResolveNotebookMethod "getMarginStart" o = Gtk.Widget.WidgetGetMarginStartMethodInfo
    ResolveNotebookMethod "getMarginTop" o = Gtk.Widget.WidgetGetMarginTopMethodInfo
    ResolveNotebookMethod "getMenuLabel" o = NotebookGetMenuLabelMethodInfo
    ResolveNotebookMethod "getMenuLabelText" o = NotebookGetMenuLabelTextMethodInfo
    ResolveNotebookMethod "getModifierMask" o = Gtk.Widget.WidgetGetModifierMaskMethodInfo
    ResolveNotebookMethod "getModifierStyle" o = Gtk.Widget.WidgetGetModifierStyleMethodInfo
    ResolveNotebookMethod "getNPages" o = NotebookGetNPagesMethodInfo
    ResolveNotebookMethod "getName" o = Gtk.Widget.WidgetGetNameMethodInfo
    ResolveNotebookMethod "getNoShowAll" o = Gtk.Widget.WidgetGetNoShowAllMethodInfo
    ResolveNotebookMethod "getNthPage" o = NotebookGetNthPageMethodInfo
    ResolveNotebookMethod "getOpacity" o = Gtk.Widget.WidgetGetOpacityMethodInfo
    ResolveNotebookMethod "getPangoContext" o = Gtk.Widget.WidgetGetPangoContextMethodInfo
    ResolveNotebookMethod "getParent" o = Gtk.Widget.WidgetGetParentMethodInfo
    ResolveNotebookMethod "getParentWindow" o = Gtk.Widget.WidgetGetParentWindowMethodInfo
    ResolveNotebookMethod "getPath" o = Gtk.Widget.WidgetGetPathMethodInfo
    ResolveNotebookMethod "getPathForChild" o = Gtk.Container.ContainerGetPathForChildMethodInfo
    ResolveNotebookMethod "getPointer" o = Gtk.Widget.WidgetGetPointerMethodInfo
    ResolveNotebookMethod "getPreferredHeight" o = Gtk.Widget.WidgetGetPreferredHeightMethodInfo
    ResolveNotebookMethod "getPreferredHeightAndBaselineForWidth" o = Gtk.Widget.WidgetGetPreferredHeightAndBaselineForWidthMethodInfo
    ResolveNotebookMethod "getPreferredHeightForWidth" o = Gtk.Widget.WidgetGetPreferredHeightForWidthMethodInfo
    ResolveNotebookMethod "getPreferredSize" o = Gtk.Widget.WidgetGetPreferredSizeMethodInfo
    ResolveNotebookMethod "getPreferredWidth" o = Gtk.Widget.WidgetGetPreferredWidthMethodInfo
    ResolveNotebookMethod "getPreferredWidthForHeight" o = Gtk.Widget.WidgetGetPreferredWidthForHeightMethodInfo
    ResolveNotebookMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNotebookMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNotebookMethod "getRealized" o = Gtk.Widget.WidgetGetRealizedMethodInfo
    ResolveNotebookMethod "getReceivesDefault" o = Gtk.Widget.WidgetGetReceivesDefaultMethodInfo
    ResolveNotebookMethod "getRequestMode" o = Gtk.Widget.WidgetGetRequestModeMethodInfo
    ResolveNotebookMethod "getRequisition" o = Gtk.Widget.WidgetGetRequisitionMethodInfo
    ResolveNotebookMethod "getResizeMode" o = Gtk.Container.ContainerGetResizeModeMethodInfo
    ResolveNotebookMethod "getRootWindow" o = Gtk.Widget.WidgetGetRootWindowMethodInfo
    ResolveNotebookMethod "getScaleFactor" o = Gtk.Widget.WidgetGetScaleFactorMethodInfo
    ResolveNotebookMethod "getScreen" o = Gtk.Widget.WidgetGetScreenMethodInfo
    ResolveNotebookMethod "getScrollable" o = NotebookGetScrollableMethodInfo
    ResolveNotebookMethod "getSensitive" o = Gtk.Widget.WidgetGetSensitiveMethodInfo
    ResolveNotebookMethod "getSettings" o = Gtk.Widget.WidgetGetSettingsMethodInfo
    ResolveNotebookMethod "getShowBorder" o = NotebookGetShowBorderMethodInfo
    ResolveNotebookMethod "getShowTabs" o = NotebookGetShowTabsMethodInfo
    ResolveNotebookMethod "getSizeRequest" o = Gtk.Widget.WidgetGetSizeRequestMethodInfo
    ResolveNotebookMethod "getState" o = Gtk.Widget.WidgetGetStateMethodInfo
    ResolveNotebookMethod "getStateFlags" o = Gtk.Widget.WidgetGetStateFlagsMethodInfo
    ResolveNotebookMethod "getStyle" o = Gtk.Widget.WidgetGetStyleMethodInfo
    ResolveNotebookMethod "getStyleContext" o = Gtk.Widget.WidgetGetStyleContextMethodInfo
    ResolveNotebookMethod "getSupportMultidevice" o = Gtk.Widget.WidgetGetSupportMultideviceMethodInfo
    ResolveNotebookMethod "getTabDetachable" o = NotebookGetTabDetachableMethodInfo
    ResolveNotebookMethod "getTabHborder" o = NotebookGetTabHborderMethodInfo
    ResolveNotebookMethod "getTabLabel" o = NotebookGetTabLabelMethodInfo
    ResolveNotebookMethod "getTabLabelText" o = NotebookGetTabLabelTextMethodInfo
    ResolveNotebookMethod "getTabPos" o = NotebookGetTabPosMethodInfo
    ResolveNotebookMethod "getTabReorderable" o = NotebookGetTabReorderableMethodInfo
    ResolveNotebookMethod "getTabVborder" o = NotebookGetTabVborderMethodInfo
    ResolveNotebookMethod "getTemplateChild" o = Gtk.Widget.WidgetGetTemplateChildMethodInfo
    ResolveNotebookMethod "getTooltipMarkup" o = Gtk.Widget.WidgetGetTooltipMarkupMethodInfo
    ResolveNotebookMethod "getTooltipText" o = Gtk.Widget.WidgetGetTooltipTextMethodInfo
    ResolveNotebookMethod "getTooltipWindow" o = Gtk.Widget.WidgetGetTooltipWindowMethodInfo
    ResolveNotebookMethod "getToplevel" o = Gtk.Widget.WidgetGetToplevelMethodInfo
    ResolveNotebookMethod "getValign" o = Gtk.Widget.WidgetGetValignMethodInfo
    ResolveNotebookMethod "getValignWithBaseline" o = Gtk.Widget.WidgetGetValignWithBaselineMethodInfo
    ResolveNotebookMethod "getVexpand" o = Gtk.Widget.WidgetGetVexpandMethodInfo
    ResolveNotebookMethod "getVexpandSet" o = Gtk.Widget.WidgetGetVexpandSetMethodInfo
    ResolveNotebookMethod "getVisible" o = Gtk.Widget.WidgetGetVisibleMethodInfo
    ResolveNotebookMethod "getVisual" o = Gtk.Widget.WidgetGetVisualMethodInfo
    ResolveNotebookMethod "getWindow" o = Gtk.Widget.WidgetGetWindowMethodInfo
    ResolveNotebookMethod "setAccelPath" o = Gtk.Widget.WidgetSetAccelPathMethodInfo
    ResolveNotebookMethod "setActionWidget" o = NotebookSetActionWidgetMethodInfo
    ResolveNotebookMethod "setAllocation" o = Gtk.Widget.WidgetSetAllocationMethodInfo
    ResolveNotebookMethod "setAppPaintable" o = Gtk.Widget.WidgetSetAppPaintableMethodInfo
    ResolveNotebookMethod "setBorderWidth" o = Gtk.Container.ContainerSetBorderWidthMethodInfo
    ResolveNotebookMethod "setBuildableProperty" o = Gtk.Buildable.BuildableSetBuildablePropertyMethodInfo
    ResolveNotebookMethod "setCanDefault" o = Gtk.Widget.WidgetSetCanDefaultMethodInfo
    ResolveNotebookMethod "setCanFocus" o = Gtk.Widget.WidgetSetCanFocusMethodInfo
    ResolveNotebookMethod "setChildVisible" o = Gtk.Widget.WidgetSetChildVisibleMethodInfo
    ResolveNotebookMethod "setClip" o = Gtk.Widget.WidgetSetClipMethodInfo
    ResolveNotebookMethod "setCompositeName" o = Gtk.Widget.WidgetSetCompositeNameMethodInfo
    ResolveNotebookMethod "setCurrentPage" o = NotebookSetCurrentPageMethodInfo
    ResolveNotebookMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNotebookMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNotebookMethod "setDeviceEnabled" o = Gtk.Widget.WidgetSetDeviceEnabledMethodInfo
    ResolveNotebookMethod "setDeviceEvents" o = Gtk.Widget.WidgetSetDeviceEventsMethodInfo
    ResolveNotebookMethod "setDirection" o = Gtk.Widget.WidgetSetDirectionMethodInfo
    ResolveNotebookMethod "setDoubleBuffered" o = Gtk.Widget.WidgetSetDoubleBufferedMethodInfo
    ResolveNotebookMethod "setEvents" o = Gtk.Widget.WidgetSetEventsMethodInfo
    ResolveNotebookMethod "setFocusChain" o = Gtk.Container.ContainerSetFocusChainMethodInfo
    ResolveNotebookMethod "setFocusChild" o = Gtk.Container.ContainerSetFocusChildMethodInfo
    ResolveNotebookMethod "setFocusHadjustment" o = Gtk.Container.ContainerSetFocusHadjustmentMethodInfo
    ResolveNotebookMethod "setFocusOnClick" o = Gtk.Widget.WidgetSetFocusOnClickMethodInfo
    ResolveNotebookMethod "setFocusVadjustment" o = Gtk.Container.ContainerSetFocusVadjustmentMethodInfo
    ResolveNotebookMethod "setFontMap" o = Gtk.Widget.WidgetSetFontMapMethodInfo
    ResolveNotebookMethod "setFontOptions" o = Gtk.Widget.WidgetSetFontOptionsMethodInfo
    ResolveNotebookMethod "setGroupName" o = NotebookSetGroupNameMethodInfo
    ResolveNotebookMethod "setHalign" o = Gtk.Widget.WidgetSetHalignMethodInfo
    ResolveNotebookMethod "setHasTooltip" o = Gtk.Widget.WidgetSetHasTooltipMethodInfo
    ResolveNotebookMethod "setHasWindow" o = Gtk.Widget.WidgetSetHasWindowMethodInfo
    ResolveNotebookMethod "setHexpand" o = Gtk.Widget.WidgetSetHexpandMethodInfo
    ResolveNotebookMethod "setHexpandSet" o = Gtk.Widget.WidgetSetHexpandSetMethodInfo
    ResolveNotebookMethod "setMapped" o = Gtk.Widget.WidgetSetMappedMethodInfo
    ResolveNotebookMethod "setMarginBottom" o = Gtk.Widget.WidgetSetMarginBottomMethodInfo
    ResolveNotebookMethod "setMarginEnd" o = Gtk.Widget.WidgetSetMarginEndMethodInfo
    ResolveNotebookMethod "setMarginLeft" o = Gtk.Widget.WidgetSetMarginLeftMethodInfo
    ResolveNotebookMethod "setMarginRight" o = Gtk.Widget.WidgetSetMarginRightMethodInfo
    ResolveNotebookMethod "setMarginStart" o = Gtk.Widget.WidgetSetMarginStartMethodInfo
    ResolveNotebookMethod "setMarginTop" o = Gtk.Widget.WidgetSetMarginTopMethodInfo
    ResolveNotebookMethod "setMenuLabel" o = NotebookSetMenuLabelMethodInfo
    ResolveNotebookMethod "setMenuLabelText" o = NotebookSetMenuLabelTextMethodInfo
    ResolveNotebookMethod "setName" o = Gtk.Widget.WidgetSetNameMethodInfo
    ResolveNotebookMethod "setNoShowAll" o = Gtk.Widget.WidgetSetNoShowAllMethodInfo
    ResolveNotebookMethod "setOpacity" o = Gtk.Widget.WidgetSetOpacityMethodInfo
    ResolveNotebookMethod "setParent" o = Gtk.Widget.WidgetSetParentMethodInfo
    ResolveNotebookMethod "setParentWindow" o = Gtk.Widget.WidgetSetParentWindowMethodInfo
    ResolveNotebookMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNotebookMethod "setRealized" o = Gtk.Widget.WidgetSetRealizedMethodInfo
    ResolveNotebookMethod "setReallocateRedraws" o = Gtk.Container.ContainerSetReallocateRedrawsMethodInfo
    ResolveNotebookMethod "setReceivesDefault" o = Gtk.Widget.WidgetSetReceivesDefaultMethodInfo
    ResolveNotebookMethod "setRedrawOnAllocate" o = Gtk.Widget.WidgetSetRedrawOnAllocateMethodInfo
    ResolveNotebookMethod "setResizeMode" o = Gtk.Container.ContainerSetResizeModeMethodInfo
    ResolveNotebookMethod "setScrollable" o = NotebookSetScrollableMethodInfo
    ResolveNotebookMethod "setSensitive" o = Gtk.Widget.WidgetSetSensitiveMethodInfo
    ResolveNotebookMethod "setShowBorder" o = NotebookSetShowBorderMethodInfo
    ResolveNotebookMethod "setShowTabs" o = NotebookSetShowTabsMethodInfo
    ResolveNotebookMethod "setSizeRequest" o = Gtk.Widget.WidgetSetSizeRequestMethodInfo
    ResolveNotebookMethod "setState" o = Gtk.Widget.WidgetSetStateMethodInfo
    ResolveNotebookMethod "setStateFlags" o = Gtk.Widget.WidgetSetStateFlagsMethodInfo
    ResolveNotebookMethod "setStyle" o = Gtk.Widget.WidgetSetStyleMethodInfo
    ResolveNotebookMethod "setSupportMultidevice" o = Gtk.Widget.WidgetSetSupportMultideviceMethodInfo
    ResolveNotebookMethod "setTabDetachable" o = NotebookSetTabDetachableMethodInfo
    ResolveNotebookMethod "setTabLabel" o = NotebookSetTabLabelMethodInfo
    ResolveNotebookMethod "setTabLabelText" o = NotebookSetTabLabelTextMethodInfo
    ResolveNotebookMethod "setTabPos" o = NotebookSetTabPosMethodInfo
    ResolveNotebookMethod "setTabReorderable" o = NotebookSetTabReorderableMethodInfo
    ResolveNotebookMethod "setTooltipMarkup" o = Gtk.Widget.WidgetSetTooltipMarkupMethodInfo
    ResolveNotebookMethod "setTooltipText" o = Gtk.Widget.WidgetSetTooltipTextMethodInfo
    ResolveNotebookMethod "setTooltipWindow" o = Gtk.Widget.WidgetSetTooltipWindowMethodInfo
    ResolveNotebookMethod "setValign" o = Gtk.Widget.WidgetSetValignMethodInfo
    ResolveNotebookMethod "setVexpand" o = Gtk.Widget.WidgetSetVexpandMethodInfo
    ResolveNotebookMethod "setVexpandSet" o = Gtk.Widget.WidgetSetVexpandSetMethodInfo
    ResolveNotebookMethod "setVisible" o = Gtk.Widget.WidgetSetVisibleMethodInfo
    ResolveNotebookMethod "setVisual" o = Gtk.Widget.WidgetSetVisualMethodInfo
    ResolveNotebookMethod "setWindow" o = Gtk.Widget.WidgetSetWindowMethodInfo
    ResolveNotebookMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNotebookMethod t Notebook, O.MethodInfo info Notebook p) => OL.IsLabel t (Notebook -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- signal Notebook::change-current-page
-- | /No description available in the introspection data./
type NotebookChangeCurrentPageCallback =
    Int32
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookChangeCurrentPageCallback`@.
noNotebookChangeCurrentPageCallback :: Maybe NotebookChangeCurrentPageCallback
noNotebookChangeCurrentPageCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookChangeCurrentPageCallback =
    Ptr () ->                               -- object
    Int32 ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_NotebookChangeCurrentPageCallback`.
foreign import ccall "wrapper"
    mk_NotebookChangeCurrentPageCallback :: C_NotebookChangeCurrentPageCallback -> IO (FunPtr C_NotebookChangeCurrentPageCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookChangeCurrentPage :: MonadIO m => NotebookChangeCurrentPageCallback -> m (GClosure C_NotebookChangeCurrentPageCallback)
genClosure_NotebookChangeCurrentPage cb = liftIO $ do
    let cb' = wrap_NotebookChangeCurrentPageCallback cb
    mk_NotebookChangeCurrentPageCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookChangeCurrentPageCallback` into a `C_NotebookChangeCurrentPageCallback`.
wrap_NotebookChangeCurrentPageCallback ::
    NotebookChangeCurrentPageCallback ->
    C_NotebookChangeCurrentPageCallback
wrap_NotebookChangeCurrentPageCallback _cb _ object _ = do
    result <- _cb  object
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [changeCurrentPage](#signal:changeCurrentPage) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #changeCurrentPage callback
-- @
-- 
-- 
onNotebookChangeCurrentPage :: (IsNotebook a, MonadIO m) => a -> NotebookChangeCurrentPageCallback -> m SignalHandlerId
onNotebookChangeCurrentPage obj cb = liftIO $ do
    let cb' = wrap_NotebookChangeCurrentPageCallback cb
    cb'' <- mk_NotebookChangeCurrentPageCallback cb'
    connectSignalFunPtr obj "change-current-page" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [changeCurrentPage](#signal:changeCurrentPage) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #changeCurrentPage callback
-- @
-- 
-- 
afterNotebookChangeCurrentPage :: (IsNotebook a, MonadIO m) => a -> NotebookChangeCurrentPageCallback -> m SignalHandlerId
afterNotebookChangeCurrentPage obj cb = liftIO $ do
    let cb' = wrap_NotebookChangeCurrentPageCallback cb
    cb'' <- mk_NotebookChangeCurrentPageCallback cb'
    connectSignalFunPtr obj "change-current-page" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookChangeCurrentPageSignalInfo
instance SignalInfo NotebookChangeCurrentPageSignalInfo where
    type HaskellCallbackType NotebookChangeCurrentPageSignalInfo = NotebookChangeCurrentPageCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookChangeCurrentPageCallback cb
        cb'' <- mk_NotebookChangeCurrentPageCallback cb'
        connectSignalFunPtr obj "change-current-page" cb'' connectMode detail

#endif

-- signal Notebook::create-window
-- | The [createWindow](#signal:createWindow) signal is emitted when a detachable
-- tab is dropped on the root window.
-- 
-- A handler for this signal can create a window containing
-- a notebook where the tab will be attached. It is also
-- responsible for moving\/resizing the window and adding the
-- necessary properties to the notebook (e.g. the
-- t'GI.Gtk.Objects.Notebook.Notebook':@/group-name/@ ).
-- 
-- /Since: 2.12/
type NotebookCreateWindowCallback =
    Gtk.Widget.Widget
    -- ^ /@page@/: the tab of /@notebook@/ that is being detached
    -> Int32
    -- ^ /@x@/: the X coordinate where the drop happens
    -> Int32
    -- ^ /@y@/: the Y coordinate where the drop happens
    -> IO Notebook
    -- ^ __Returns:__ a t'GI.Gtk.Objects.Notebook.Notebook' that /@page@/ should be
    --     added to, or 'P.Nothing'.

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookCreateWindowCallback`@.
noNotebookCreateWindowCallback :: Maybe NotebookCreateWindowCallback
noNotebookCreateWindowCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookCreateWindowCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Int32 ->
    Int32 ->
    Ptr () ->                               -- user_data
    IO (Ptr Notebook)

-- | Generate a function pointer callable from C code, from a `C_NotebookCreateWindowCallback`.
foreign import ccall "wrapper"
    mk_NotebookCreateWindowCallback :: C_NotebookCreateWindowCallback -> IO (FunPtr C_NotebookCreateWindowCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookCreateWindow :: MonadIO m => NotebookCreateWindowCallback -> m (GClosure C_NotebookCreateWindowCallback)
genClosure_NotebookCreateWindow cb = liftIO $ do
    let cb' = wrap_NotebookCreateWindowCallback cb
    mk_NotebookCreateWindowCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookCreateWindowCallback` into a `C_NotebookCreateWindowCallback`.
wrap_NotebookCreateWindowCallback ::
    NotebookCreateWindowCallback ->
    C_NotebookCreateWindowCallback
wrap_NotebookCreateWindowCallback _cb _ page x y _ = do
    page' <- (newObject Gtk.Widget.Widget) page
    result <- _cb  page' x y
    result' <- unsafeManagedPtrCastPtr result
    return result'


-- | Connect a signal handler for the [createWindow](#signal:createWindow) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #createWindow callback
-- @
-- 
-- 
onNotebookCreateWindow :: (IsNotebook a, MonadIO m) => a -> NotebookCreateWindowCallback -> m SignalHandlerId
onNotebookCreateWindow obj cb = liftIO $ do
    let cb' = wrap_NotebookCreateWindowCallback cb
    cb'' <- mk_NotebookCreateWindowCallback cb'
    connectSignalFunPtr obj "create-window" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [createWindow](#signal:createWindow) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #createWindow callback
-- @
-- 
-- 
afterNotebookCreateWindow :: (IsNotebook a, MonadIO m) => a -> NotebookCreateWindowCallback -> m SignalHandlerId
afterNotebookCreateWindow obj cb = liftIO $ do
    let cb' = wrap_NotebookCreateWindowCallback cb
    cb'' <- mk_NotebookCreateWindowCallback cb'
    connectSignalFunPtr obj "create-window" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookCreateWindowSignalInfo
instance SignalInfo NotebookCreateWindowSignalInfo where
    type HaskellCallbackType NotebookCreateWindowSignalInfo = NotebookCreateWindowCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookCreateWindowCallback cb
        cb'' <- mk_NotebookCreateWindowCallback cb'
        connectSignalFunPtr obj "create-window" cb'' connectMode detail

#endif

-- signal Notebook::focus-tab
-- | /No description available in the introspection data./
type NotebookFocusTabCallback =
    Gtk.Enums.NotebookTab
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookFocusTabCallback`@.
noNotebookFocusTabCallback :: Maybe NotebookFocusTabCallback
noNotebookFocusTabCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookFocusTabCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_NotebookFocusTabCallback`.
foreign import ccall "wrapper"
    mk_NotebookFocusTabCallback :: C_NotebookFocusTabCallback -> IO (FunPtr C_NotebookFocusTabCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookFocusTab :: MonadIO m => NotebookFocusTabCallback -> m (GClosure C_NotebookFocusTabCallback)
genClosure_NotebookFocusTab cb = liftIO $ do
    let cb' = wrap_NotebookFocusTabCallback cb
    mk_NotebookFocusTabCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookFocusTabCallback` into a `C_NotebookFocusTabCallback`.
wrap_NotebookFocusTabCallback ::
    NotebookFocusTabCallback ->
    C_NotebookFocusTabCallback
wrap_NotebookFocusTabCallback _cb _ object _ = do
    let object' = (toEnum . fromIntegral) object
    result <- _cb  object'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [focusTab](#signal:focusTab) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #focusTab callback
-- @
-- 
-- 
onNotebookFocusTab :: (IsNotebook a, MonadIO m) => a -> NotebookFocusTabCallback -> m SignalHandlerId
onNotebookFocusTab obj cb = liftIO $ do
    let cb' = wrap_NotebookFocusTabCallback cb
    cb'' <- mk_NotebookFocusTabCallback cb'
    connectSignalFunPtr obj "focus-tab" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [focusTab](#signal:focusTab) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #focusTab callback
-- @
-- 
-- 
afterNotebookFocusTab :: (IsNotebook a, MonadIO m) => a -> NotebookFocusTabCallback -> m SignalHandlerId
afterNotebookFocusTab obj cb = liftIO $ do
    let cb' = wrap_NotebookFocusTabCallback cb
    cb'' <- mk_NotebookFocusTabCallback cb'
    connectSignalFunPtr obj "focus-tab" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookFocusTabSignalInfo
instance SignalInfo NotebookFocusTabSignalInfo where
    type HaskellCallbackType NotebookFocusTabSignalInfo = NotebookFocusTabCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookFocusTabCallback cb
        cb'' <- mk_NotebookFocusTabCallback cb'
        connectSignalFunPtr obj "focus-tab" cb'' connectMode detail

#endif

-- signal Notebook::move-focus-out
-- | /No description available in the introspection data./
type NotebookMoveFocusOutCallback =
    Gtk.Enums.DirectionType
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookMoveFocusOutCallback`@.
noNotebookMoveFocusOutCallback :: Maybe NotebookMoveFocusOutCallback
noNotebookMoveFocusOutCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookMoveFocusOutCallback =
    Ptr () ->                               -- object
    CUInt ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotebookMoveFocusOutCallback`.
foreign import ccall "wrapper"
    mk_NotebookMoveFocusOutCallback :: C_NotebookMoveFocusOutCallback -> IO (FunPtr C_NotebookMoveFocusOutCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookMoveFocusOut :: MonadIO m => NotebookMoveFocusOutCallback -> m (GClosure C_NotebookMoveFocusOutCallback)
genClosure_NotebookMoveFocusOut cb = liftIO $ do
    let cb' = wrap_NotebookMoveFocusOutCallback cb
    mk_NotebookMoveFocusOutCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookMoveFocusOutCallback` into a `C_NotebookMoveFocusOutCallback`.
wrap_NotebookMoveFocusOutCallback ::
    NotebookMoveFocusOutCallback ->
    C_NotebookMoveFocusOutCallback
wrap_NotebookMoveFocusOutCallback _cb _ object _ = do
    let object' = (toEnum . fromIntegral) object
    _cb  object'


-- | Connect a signal handler for the [moveFocusOut](#signal:moveFocusOut) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #moveFocusOut callback
-- @
-- 
-- 
onNotebookMoveFocusOut :: (IsNotebook a, MonadIO m) => a -> NotebookMoveFocusOutCallback -> m SignalHandlerId
onNotebookMoveFocusOut obj cb = liftIO $ do
    let cb' = wrap_NotebookMoveFocusOutCallback cb
    cb'' <- mk_NotebookMoveFocusOutCallback cb'
    connectSignalFunPtr obj "move-focus-out" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [moveFocusOut](#signal:moveFocusOut) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #moveFocusOut callback
-- @
-- 
-- 
afterNotebookMoveFocusOut :: (IsNotebook a, MonadIO m) => a -> NotebookMoveFocusOutCallback -> m SignalHandlerId
afterNotebookMoveFocusOut obj cb = liftIO $ do
    let cb' = wrap_NotebookMoveFocusOutCallback cb
    cb'' <- mk_NotebookMoveFocusOutCallback cb'
    connectSignalFunPtr obj "move-focus-out" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookMoveFocusOutSignalInfo
instance SignalInfo NotebookMoveFocusOutSignalInfo where
    type HaskellCallbackType NotebookMoveFocusOutSignalInfo = NotebookMoveFocusOutCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookMoveFocusOutCallback cb
        cb'' <- mk_NotebookMoveFocusOutCallback cb'
        connectSignalFunPtr obj "move-focus-out" cb'' connectMode detail

#endif

-- signal Notebook::page-added
-- | the [pageAdded](#signal:pageAdded) signal is emitted in the notebook
-- right after a page is added to the notebook.
-- 
-- /Since: 2.10/
type NotebookPageAddedCallback =
    Gtk.Widget.Widget
    -- ^ /@child@/: the child t'GI.Gtk.Objects.Widget.Widget' affected
    -> Word32
    -- ^ /@pageNum@/: the new page number for /@child@/
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookPageAddedCallback`@.
noNotebookPageAddedCallback :: Maybe NotebookPageAddedCallback
noNotebookPageAddedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookPageAddedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotebookPageAddedCallback`.
foreign import ccall "wrapper"
    mk_NotebookPageAddedCallback :: C_NotebookPageAddedCallback -> IO (FunPtr C_NotebookPageAddedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookPageAdded :: MonadIO m => NotebookPageAddedCallback -> m (GClosure C_NotebookPageAddedCallback)
genClosure_NotebookPageAdded cb = liftIO $ do
    let cb' = wrap_NotebookPageAddedCallback cb
    mk_NotebookPageAddedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookPageAddedCallback` into a `C_NotebookPageAddedCallback`.
wrap_NotebookPageAddedCallback ::
    NotebookPageAddedCallback ->
    C_NotebookPageAddedCallback
wrap_NotebookPageAddedCallback _cb _ child pageNum _ = do
    child' <- (newObject Gtk.Widget.Widget) child
    _cb  child' pageNum


-- | Connect a signal handler for the [pageAdded](#signal:pageAdded) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #pageAdded callback
-- @
-- 
-- 
onNotebookPageAdded :: (IsNotebook a, MonadIO m) => a -> NotebookPageAddedCallback -> m SignalHandlerId
onNotebookPageAdded obj cb = liftIO $ do
    let cb' = wrap_NotebookPageAddedCallback cb
    cb'' <- mk_NotebookPageAddedCallback cb'
    connectSignalFunPtr obj "page-added" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pageAdded](#signal:pageAdded) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #pageAdded callback
-- @
-- 
-- 
afterNotebookPageAdded :: (IsNotebook a, MonadIO m) => a -> NotebookPageAddedCallback -> m SignalHandlerId
afterNotebookPageAdded obj cb = liftIO $ do
    let cb' = wrap_NotebookPageAddedCallback cb
    cb'' <- mk_NotebookPageAddedCallback cb'
    connectSignalFunPtr obj "page-added" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookPageAddedSignalInfo
instance SignalInfo NotebookPageAddedSignalInfo where
    type HaskellCallbackType NotebookPageAddedSignalInfo = NotebookPageAddedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookPageAddedCallback cb
        cb'' <- mk_NotebookPageAddedCallback cb'
        connectSignalFunPtr obj "page-added" cb'' connectMode detail

#endif

-- signal Notebook::page-removed
-- | the [pageRemoved](#signal:pageRemoved) signal is emitted in the notebook
-- right after a page is removed from the notebook.
-- 
-- /Since: 2.10/
type NotebookPageRemovedCallback =
    Gtk.Widget.Widget
    -- ^ /@child@/: the child t'GI.Gtk.Objects.Widget.Widget' affected
    -> Word32
    -- ^ /@pageNum@/: the /@child@/ page number
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookPageRemovedCallback`@.
noNotebookPageRemovedCallback :: Maybe NotebookPageRemovedCallback
noNotebookPageRemovedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookPageRemovedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotebookPageRemovedCallback`.
foreign import ccall "wrapper"
    mk_NotebookPageRemovedCallback :: C_NotebookPageRemovedCallback -> IO (FunPtr C_NotebookPageRemovedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookPageRemoved :: MonadIO m => NotebookPageRemovedCallback -> m (GClosure C_NotebookPageRemovedCallback)
genClosure_NotebookPageRemoved cb = liftIO $ do
    let cb' = wrap_NotebookPageRemovedCallback cb
    mk_NotebookPageRemovedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookPageRemovedCallback` into a `C_NotebookPageRemovedCallback`.
wrap_NotebookPageRemovedCallback ::
    NotebookPageRemovedCallback ->
    C_NotebookPageRemovedCallback
wrap_NotebookPageRemovedCallback _cb _ child pageNum _ = do
    child' <- (newObject Gtk.Widget.Widget) child
    _cb  child' pageNum


-- | Connect a signal handler for the [pageRemoved](#signal:pageRemoved) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #pageRemoved callback
-- @
-- 
-- 
onNotebookPageRemoved :: (IsNotebook a, MonadIO m) => a -> NotebookPageRemovedCallback -> m SignalHandlerId
onNotebookPageRemoved obj cb = liftIO $ do
    let cb' = wrap_NotebookPageRemovedCallback cb
    cb'' <- mk_NotebookPageRemovedCallback cb'
    connectSignalFunPtr obj "page-removed" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pageRemoved](#signal:pageRemoved) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #pageRemoved callback
-- @
-- 
-- 
afterNotebookPageRemoved :: (IsNotebook a, MonadIO m) => a -> NotebookPageRemovedCallback -> m SignalHandlerId
afterNotebookPageRemoved obj cb = liftIO $ do
    let cb' = wrap_NotebookPageRemovedCallback cb
    cb'' <- mk_NotebookPageRemovedCallback cb'
    connectSignalFunPtr obj "page-removed" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookPageRemovedSignalInfo
instance SignalInfo NotebookPageRemovedSignalInfo where
    type HaskellCallbackType NotebookPageRemovedSignalInfo = NotebookPageRemovedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookPageRemovedCallback cb
        cb'' <- mk_NotebookPageRemovedCallback cb'
        connectSignalFunPtr obj "page-removed" cb'' connectMode detail

#endif

-- signal Notebook::page-reordered
-- | the [pageReordered](#signal:pageReordered) signal is emitted in the notebook
-- right after a page has been reordered.
-- 
-- /Since: 2.10/
type NotebookPageReorderedCallback =
    Gtk.Widget.Widget
    -- ^ /@child@/: the child t'GI.Gtk.Objects.Widget.Widget' affected
    -> Word32
    -- ^ /@pageNum@/: the new page number for /@child@/
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookPageReorderedCallback`@.
noNotebookPageReorderedCallback :: Maybe NotebookPageReorderedCallback
noNotebookPageReorderedCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookPageReorderedCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotebookPageReorderedCallback`.
foreign import ccall "wrapper"
    mk_NotebookPageReorderedCallback :: C_NotebookPageReorderedCallback -> IO (FunPtr C_NotebookPageReorderedCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookPageReordered :: MonadIO m => NotebookPageReorderedCallback -> m (GClosure C_NotebookPageReorderedCallback)
genClosure_NotebookPageReordered cb = liftIO $ do
    let cb' = wrap_NotebookPageReorderedCallback cb
    mk_NotebookPageReorderedCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookPageReorderedCallback` into a `C_NotebookPageReorderedCallback`.
wrap_NotebookPageReorderedCallback ::
    NotebookPageReorderedCallback ->
    C_NotebookPageReorderedCallback
wrap_NotebookPageReorderedCallback _cb _ child pageNum _ = do
    child' <- (newObject Gtk.Widget.Widget) child
    _cb  child' pageNum


-- | Connect a signal handler for the [pageReordered](#signal:pageReordered) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #pageReordered callback
-- @
-- 
-- 
onNotebookPageReordered :: (IsNotebook a, MonadIO m) => a -> NotebookPageReorderedCallback -> m SignalHandlerId
onNotebookPageReordered obj cb = liftIO $ do
    let cb' = wrap_NotebookPageReorderedCallback cb
    cb'' <- mk_NotebookPageReorderedCallback cb'
    connectSignalFunPtr obj "page-reordered" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [pageReordered](#signal:pageReordered) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #pageReordered callback
-- @
-- 
-- 
afterNotebookPageReordered :: (IsNotebook a, MonadIO m) => a -> NotebookPageReorderedCallback -> m SignalHandlerId
afterNotebookPageReordered obj cb = liftIO $ do
    let cb' = wrap_NotebookPageReorderedCallback cb
    cb'' <- mk_NotebookPageReorderedCallback cb'
    connectSignalFunPtr obj "page-reordered" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookPageReorderedSignalInfo
instance SignalInfo NotebookPageReorderedSignalInfo where
    type HaskellCallbackType NotebookPageReorderedSignalInfo = NotebookPageReorderedCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookPageReorderedCallback cb
        cb'' <- mk_NotebookPageReorderedCallback cb'
        connectSignalFunPtr obj "page-reordered" cb'' connectMode detail

#endif

-- signal Notebook::reorder-tab
-- | /No description available in the introspection data./
type NotebookReorderTabCallback =
    Gtk.Enums.DirectionType
    -> Bool
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookReorderTabCallback`@.
noNotebookReorderTabCallback :: Maybe NotebookReorderTabCallback
noNotebookReorderTabCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookReorderTabCallback =
    Ptr () ->                               -- object
    CUInt ->
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_NotebookReorderTabCallback`.
foreign import ccall "wrapper"
    mk_NotebookReorderTabCallback :: C_NotebookReorderTabCallback -> IO (FunPtr C_NotebookReorderTabCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookReorderTab :: MonadIO m => NotebookReorderTabCallback -> m (GClosure C_NotebookReorderTabCallback)
genClosure_NotebookReorderTab cb = liftIO $ do
    let cb' = wrap_NotebookReorderTabCallback cb
    mk_NotebookReorderTabCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookReorderTabCallback` into a `C_NotebookReorderTabCallback`.
wrap_NotebookReorderTabCallback ::
    NotebookReorderTabCallback ->
    C_NotebookReorderTabCallback
wrap_NotebookReorderTabCallback _cb _ object p0 _ = do
    let object' = (toEnum . fromIntegral) object
    let p0' = (/= 0) p0
    result <- _cb  object' p0'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [reorderTab](#signal:reorderTab) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #reorderTab callback
-- @
-- 
-- 
onNotebookReorderTab :: (IsNotebook a, MonadIO m) => a -> NotebookReorderTabCallback -> m SignalHandlerId
onNotebookReorderTab obj cb = liftIO $ do
    let cb' = wrap_NotebookReorderTabCallback cb
    cb'' <- mk_NotebookReorderTabCallback cb'
    connectSignalFunPtr obj "reorder-tab" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [reorderTab](#signal:reorderTab) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #reorderTab callback
-- @
-- 
-- 
afterNotebookReorderTab :: (IsNotebook a, MonadIO m) => a -> NotebookReorderTabCallback -> m SignalHandlerId
afterNotebookReorderTab obj cb = liftIO $ do
    let cb' = wrap_NotebookReorderTabCallback cb
    cb'' <- mk_NotebookReorderTabCallback cb'
    connectSignalFunPtr obj "reorder-tab" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookReorderTabSignalInfo
instance SignalInfo NotebookReorderTabSignalInfo where
    type HaskellCallbackType NotebookReorderTabSignalInfo = NotebookReorderTabCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookReorderTabCallback cb
        cb'' <- mk_NotebookReorderTabCallback cb'
        connectSignalFunPtr obj "reorder-tab" cb'' connectMode detail

#endif

-- signal Notebook::select-page
-- | /No description available in the introspection data./
type NotebookSelectPageCallback =
    Bool
    -> IO Bool

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookSelectPageCallback`@.
noNotebookSelectPageCallback :: Maybe NotebookSelectPageCallback
noNotebookSelectPageCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookSelectPageCallback =
    Ptr () ->                               -- object
    CInt ->
    Ptr () ->                               -- user_data
    IO CInt

-- | Generate a function pointer callable from C code, from a `C_NotebookSelectPageCallback`.
foreign import ccall "wrapper"
    mk_NotebookSelectPageCallback :: C_NotebookSelectPageCallback -> IO (FunPtr C_NotebookSelectPageCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookSelectPage :: MonadIO m => NotebookSelectPageCallback -> m (GClosure C_NotebookSelectPageCallback)
genClosure_NotebookSelectPage cb = liftIO $ do
    let cb' = wrap_NotebookSelectPageCallback cb
    mk_NotebookSelectPageCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookSelectPageCallback` into a `C_NotebookSelectPageCallback`.
wrap_NotebookSelectPageCallback ::
    NotebookSelectPageCallback ->
    C_NotebookSelectPageCallback
wrap_NotebookSelectPageCallback _cb _ object _ = do
    let object' = (/= 0) object
    result <- _cb  object'
    let result' = (fromIntegral . fromEnum) result
    return result'


-- | Connect a signal handler for the [selectPage](#signal:selectPage) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #selectPage callback
-- @
-- 
-- 
onNotebookSelectPage :: (IsNotebook a, MonadIO m) => a -> NotebookSelectPageCallback -> m SignalHandlerId
onNotebookSelectPage obj cb = liftIO $ do
    let cb' = wrap_NotebookSelectPageCallback cb
    cb'' <- mk_NotebookSelectPageCallback cb'
    connectSignalFunPtr obj "select-page" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [selectPage](#signal:selectPage) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #selectPage callback
-- @
-- 
-- 
afterNotebookSelectPage :: (IsNotebook a, MonadIO m) => a -> NotebookSelectPageCallback -> m SignalHandlerId
afterNotebookSelectPage obj cb = liftIO $ do
    let cb' = wrap_NotebookSelectPageCallback cb
    cb'' <- mk_NotebookSelectPageCallback cb'
    connectSignalFunPtr obj "select-page" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookSelectPageSignalInfo
instance SignalInfo NotebookSelectPageSignalInfo where
    type HaskellCallbackType NotebookSelectPageSignalInfo = NotebookSelectPageCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookSelectPageCallback cb
        cb'' <- mk_NotebookSelectPageCallback cb'
        connectSignalFunPtr obj "select-page" cb'' connectMode detail

#endif

-- signal Notebook::switch-page
-- | Emitted when the user or a function changes the current page.
type NotebookSwitchPageCallback =
    Gtk.Widget.Widget
    -- ^ /@page@/: the new current page
    -> Word32
    -- ^ /@pageNum@/: the index of the page
    -> IO ()

-- | A convenience synonym for @`Nothing` :: `Maybe` `NotebookSwitchPageCallback`@.
noNotebookSwitchPageCallback :: Maybe NotebookSwitchPageCallback
noNotebookSwitchPageCallback = Nothing

-- | Type for the callback on the (unwrapped) C side.
type C_NotebookSwitchPageCallback =
    Ptr () ->                               -- object
    Ptr Gtk.Widget.Widget ->
    Word32 ->
    Ptr () ->                               -- user_data
    IO ()

-- | Generate a function pointer callable from C code, from a `C_NotebookSwitchPageCallback`.
foreign import ccall "wrapper"
    mk_NotebookSwitchPageCallback :: C_NotebookSwitchPageCallback -> IO (FunPtr C_NotebookSwitchPageCallback)

-- | Wrap the callback into a `GClosure`.
genClosure_NotebookSwitchPage :: MonadIO m => NotebookSwitchPageCallback -> m (GClosure C_NotebookSwitchPageCallback)
genClosure_NotebookSwitchPage cb = liftIO $ do
    let cb' = wrap_NotebookSwitchPageCallback cb
    mk_NotebookSwitchPageCallback cb' >>= B.GClosure.newGClosure


-- | Wrap a `NotebookSwitchPageCallback` into a `C_NotebookSwitchPageCallback`.
wrap_NotebookSwitchPageCallback ::
    NotebookSwitchPageCallback ->
    C_NotebookSwitchPageCallback
wrap_NotebookSwitchPageCallback _cb _ page pageNum _ = do
    page' <- (newObject Gtk.Widget.Widget) page
    _cb  page' pageNum


-- | Connect a signal handler for the [switchPage](#signal:switchPage) signal, to be run before the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.on' notebook #switchPage callback
-- @
-- 
-- 
onNotebookSwitchPage :: (IsNotebook a, MonadIO m) => a -> NotebookSwitchPageCallback -> m SignalHandlerId
onNotebookSwitchPage obj cb = liftIO $ do
    let cb' = wrap_NotebookSwitchPageCallback cb
    cb'' <- mk_NotebookSwitchPageCallback cb'
    connectSignalFunPtr obj "switch-page" cb'' SignalConnectBefore Nothing

-- | Connect a signal handler for the [switchPage](#signal:switchPage) signal, to be run after the default handler.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Signals.after' notebook #switchPage callback
-- @
-- 
-- 
afterNotebookSwitchPage :: (IsNotebook a, MonadIO m) => a -> NotebookSwitchPageCallback -> m SignalHandlerId
afterNotebookSwitchPage obj cb = liftIO $ do
    let cb' = wrap_NotebookSwitchPageCallback cb
    cb'' <- mk_NotebookSwitchPageCallback cb'
    connectSignalFunPtr obj "switch-page" cb'' SignalConnectAfter Nothing


#if defined(ENABLE_OVERLOADING)
data NotebookSwitchPageSignalInfo
instance SignalInfo NotebookSwitchPageSignalInfo where
    type HaskellCallbackType NotebookSwitchPageSignalInfo = NotebookSwitchPageCallback
    connectSignal obj cb connectMode detail = do
        let cb' = wrap_NotebookSwitchPageCallback cb
        cb'' <- mk_NotebookSwitchPageCallback cb'
        connectSignalFunPtr obj "switch-page" cb'' connectMode detail

#endif

-- VVV Prop "enable-popup"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@enable-popup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #enablePopup
-- @
getNotebookEnablePopup :: (MonadIO m, IsNotebook o) => o -> m Bool
getNotebookEnablePopup obj = liftIO $ B.Properties.getObjectPropertyBool obj "enable-popup"

-- | Set the value of the “@enable-popup@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #enablePopup 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookEnablePopup :: (MonadIO m, IsNotebook o) => o -> Bool -> m ()
setNotebookEnablePopup obj val = liftIO $ B.Properties.setObjectPropertyBool obj "enable-popup" val

-- | Construct a `GValueConstruct` with valid value for the “@enable-popup@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookEnablePopup :: (IsNotebook o) => Bool -> IO (GValueConstruct o)
constructNotebookEnablePopup val = B.Properties.constructObjectPropertyBool "enable-popup" val

#if defined(ENABLE_OVERLOADING)
data NotebookEnablePopupPropertyInfo
instance AttrInfo NotebookEnablePopupPropertyInfo where
    type AttrAllowedOps NotebookEnablePopupPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookEnablePopupPropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookEnablePopupPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint NotebookEnablePopupPropertyInfo = (~) Bool
    type AttrTransferType NotebookEnablePopupPropertyInfo = Bool
    type AttrGetType NotebookEnablePopupPropertyInfo = Bool
    type AttrLabel NotebookEnablePopupPropertyInfo = "enable-popup"
    type AttrOrigin NotebookEnablePopupPropertyInfo = Notebook
    attrGet = getNotebookEnablePopup
    attrSet = setNotebookEnablePopup
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookEnablePopup
    attrClear = undefined
#endif

-- VVV Prop "group-name"
   -- Type: TBasicType TUTF8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just True,Just True)

-- | Get the value of the “@group-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #groupName
-- @
getNotebookGroupName :: (MonadIO m, IsNotebook o) => o -> m (Maybe T.Text)
getNotebookGroupName obj = liftIO $ B.Properties.getObjectPropertyString obj "group-name"

-- | Set the value of the “@group-name@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #groupName 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookGroupName :: (MonadIO m, IsNotebook o) => o -> T.Text -> m ()
setNotebookGroupName obj val = liftIO $ B.Properties.setObjectPropertyString obj "group-name" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@group-name@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookGroupName :: (IsNotebook o) => T.Text -> IO (GValueConstruct o)
constructNotebookGroupName val = B.Properties.constructObjectPropertyString "group-name" (Just val)

-- | Set the value of the “@group-name@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #groupName
-- @
clearNotebookGroupName :: (MonadIO m, IsNotebook o) => o -> m ()
clearNotebookGroupName obj = liftIO $ B.Properties.setObjectPropertyString obj "group-name" (Nothing :: Maybe T.Text)

#if defined(ENABLE_OVERLOADING)
data NotebookGroupNamePropertyInfo
instance AttrInfo NotebookGroupNamePropertyInfo where
    type AttrAllowedOps NotebookGroupNamePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint NotebookGroupNamePropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookGroupNamePropertyInfo = (~) T.Text
    type AttrTransferTypeConstraint NotebookGroupNamePropertyInfo = (~) T.Text
    type AttrTransferType NotebookGroupNamePropertyInfo = T.Text
    type AttrGetType NotebookGroupNamePropertyInfo = (Maybe T.Text)
    type AttrLabel NotebookGroupNamePropertyInfo = "group-name"
    type AttrOrigin NotebookGroupNamePropertyInfo = Notebook
    attrGet = getNotebookGroupName
    attrSet = setNotebookGroupName
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookGroupName
    attrClear = clearNotebookGroupName
#endif

-- VVV Prop "page"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@page@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #page
-- @
getNotebookPage :: (MonadIO m, IsNotebook o) => o -> m Int32
getNotebookPage obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "page"

-- | Set the value of the “@page@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #page 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookPage :: (MonadIO m, IsNotebook o) => o -> Int32 -> m ()
setNotebookPage obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "page" val

-- | Construct a `GValueConstruct` with valid value for the “@page@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookPage :: (IsNotebook o) => Int32 -> IO (GValueConstruct o)
constructNotebookPage val = B.Properties.constructObjectPropertyInt32 "page" val

#if defined(ENABLE_OVERLOADING)
data NotebookPagePropertyInfo
instance AttrInfo NotebookPagePropertyInfo where
    type AttrAllowedOps NotebookPagePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookPagePropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookPagePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint NotebookPagePropertyInfo = (~) Int32
    type AttrTransferType NotebookPagePropertyInfo = Int32
    type AttrGetType NotebookPagePropertyInfo = Int32
    type AttrLabel NotebookPagePropertyInfo = "page"
    type AttrOrigin NotebookPagePropertyInfo = Notebook
    attrGet = getNotebookPage
    attrSet = setNotebookPage
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookPage
    attrClear = undefined
#endif

-- VVV Prop "scrollable"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@scrollable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #scrollable
-- @
getNotebookScrollable :: (MonadIO m, IsNotebook o) => o -> m Bool
getNotebookScrollable obj = liftIO $ B.Properties.getObjectPropertyBool obj "scrollable"

-- | Set the value of the “@scrollable@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #scrollable 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookScrollable :: (MonadIO m, IsNotebook o) => o -> Bool -> m ()
setNotebookScrollable obj val = liftIO $ B.Properties.setObjectPropertyBool obj "scrollable" val

-- | Construct a `GValueConstruct` with valid value for the “@scrollable@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookScrollable :: (IsNotebook o) => Bool -> IO (GValueConstruct o)
constructNotebookScrollable val = B.Properties.constructObjectPropertyBool "scrollable" val

#if defined(ENABLE_OVERLOADING)
data NotebookScrollablePropertyInfo
instance AttrInfo NotebookScrollablePropertyInfo where
    type AttrAllowedOps NotebookScrollablePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookScrollablePropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookScrollablePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint NotebookScrollablePropertyInfo = (~) Bool
    type AttrTransferType NotebookScrollablePropertyInfo = Bool
    type AttrGetType NotebookScrollablePropertyInfo = Bool
    type AttrLabel NotebookScrollablePropertyInfo = "scrollable"
    type AttrOrigin NotebookScrollablePropertyInfo = Notebook
    attrGet = getNotebookScrollable
    attrSet = setNotebookScrollable
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookScrollable
    attrClear = undefined
#endif

-- VVV Prop "show-border"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-border@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #showBorder
-- @
getNotebookShowBorder :: (MonadIO m, IsNotebook o) => o -> m Bool
getNotebookShowBorder obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-border"

-- | Set the value of the “@show-border@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #showBorder 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookShowBorder :: (MonadIO m, IsNotebook o) => o -> Bool -> m ()
setNotebookShowBorder obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-border" val

-- | Construct a `GValueConstruct` with valid value for the “@show-border@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookShowBorder :: (IsNotebook o) => Bool -> IO (GValueConstruct o)
constructNotebookShowBorder val = B.Properties.constructObjectPropertyBool "show-border" val

#if defined(ENABLE_OVERLOADING)
data NotebookShowBorderPropertyInfo
instance AttrInfo NotebookShowBorderPropertyInfo where
    type AttrAllowedOps NotebookShowBorderPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookShowBorderPropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookShowBorderPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint NotebookShowBorderPropertyInfo = (~) Bool
    type AttrTransferType NotebookShowBorderPropertyInfo = Bool
    type AttrGetType NotebookShowBorderPropertyInfo = Bool
    type AttrLabel NotebookShowBorderPropertyInfo = "show-border"
    type AttrOrigin NotebookShowBorderPropertyInfo = Notebook
    attrGet = getNotebookShowBorder
    attrSet = setNotebookShowBorder
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookShowBorder
    attrClear = undefined
#endif

-- VVV Prop "show-tabs"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@show-tabs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #showTabs
-- @
getNotebookShowTabs :: (MonadIO m, IsNotebook o) => o -> m Bool
getNotebookShowTabs obj = liftIO $ B.Properties.getObjectPropertyBool obj "show-tabs"

-- | Set the value of the “@show-tabs@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #showTabs 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookShowTabs :: (MonadIO m, IsNotebook o) => o -> Bool -> m ()
setNotebookShowTabs obj val = liftIO $ B.Properties.setObjectPropertyBool obj "show-tabs" val

-- | Construct a `GValueConstruct` with valid value for the “@show-tabs@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookShowTabs :: (IsNotebook o) => Bool -> IO (GValueConstruct o)
constructNotebookShowTabs val = B.Properties.constructObjectPropertyBool "show-tabs" val

#if defined(ENABLE_OVERLOADING)
data NotebookShowTabsPropertyInfo
instance AttrInfo NotebookShowTabsPropertyInfo where
    type AttrAllowedOps NotebookShowTabsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookShowTabsPropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookShowTabsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint NotebookShowTabsPropertyInfo = (~) Bool
    type AttrTransferType NotebookShowTabsPropertyInfo = Bool
    type AttrGetType NotebookShowTabsPropertyInfo = Bool
    type AttrLabel NotebookShowTabsPropertyInfo = "show-tabs"
    type AttrOrigin NotebookShowTabsPropertyInfo = Notebook
    attrGet = getNotebookShowTabs
    attrSet = setNotebookShowTabs
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookShowTabs
    attrClear = undefined
#endif

-- VVV Prop "tab-pos"
   -- Type: TInterface (Name {namespace = "Gtk", name = "PositionType"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Just False,Just False)

-- | Get the value of the “@tab-pos@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' notebook #tabPos
-- @
getNotebookTabPos :: (MonadIO m, IsNotebook o) => o -> m Gtk.Enums.PositionType
getNotebookTabPos obj = liftIO $ B.Properties.getObjectPropertyEnum obj "tab-pos"

-- | Set the value of the “@tab-pos@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' notebook [ #tabPos 'Data.GI.Base.Attributes.:=' value ]
-- @
setNotebookTabPos :: (MonadIO m, IsNotebook o) => o -> Gtk.Enums.PositionType -> m ()
setNotebookTabPos obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "tab-pos" val

-- | Construct a `GValueConstruct` with valid value for the “@tab-pos@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructNotebookTabPos :: (IsNotebook o) => Gtk.Enums.PositionType -> IO (GValueConstruct o)
constructNotebookTabPos val = B.Properties.constructObjectPropertyEnum "tab-pos" val

#if defined(ENABLE_OVERLOADING)
data NotebookTabPosPropertyInfo
instance AttrInfo NotebookTabPosPropertyInfo where
    type AttrAllowedOps NotebookTabPosPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint NotebookTabPosPropertyInfo = IsNotebook
    type AttrSetTypeConstraint NotebookTabPosPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferTypeConstraint NotebookTabPosPropertyInfo = (~) Gtk.Enums.PositionType
    type AttrTransferType NotebookTabPosPropertyInfo = Gtk.Enums.PositionType
    type AttrGetType NotebookTabPosPropertyInfo = Gtk.Enums.PositionType
    type AttrLabel NotebookTabPosPropertyInfo = "tab-pos"
    type AttrOrigin NotebookTabPosPropertyInfo = Notebook
    attrGet = getNotebookTabPos
    attrSet = setNotebookTabPos
    attrTransfer _ v = do
        return v
    attrConstruct = constructNotebookTabPos
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Notebook
type instance O.AttributeList Notebook = NotebookAttributeList
type NotebookAttributeList = ('[ '("appPaintable", Gtk.Widget.WidgetAppPaintablePropertyInfo), '("borderWidth", Gtk.Container.ContainerBorderWidthPropertyInfo), '("canDefault", Gtk.Widget.WidgetCanDefaultPropertyInfo), '("canFocus", Gtk.Widget.WidgetCanFocusPropertyInfo), '("child", Gtk.Container.ContainerChildPropertyInfo), '("compositeChild", Gtk.Widget.WidgetCompositeChildPropertyInfo), '("doubleBuffered", Gtk.Widget.WidgetDoubleBufferedPropertyInfo), '("enablePopup", NotebookEnablePopupPropertyInfo), '("events", Gtk.Widget.WidgetEventsPropertyInfo), '("expand", Gtk.Widget.WidgetExpandPropertyInfo), '("focusOnClick", Gtk.Widget.WidgetFocusOnClickPropertyInfo), '("groupName", NotebookGroupNamePropertyInfo), '("halign", Gtk.Widget.WidgetHalignPropertyInfo), '("hasDefault", Gtk.Widget.WidgetHasDefaultPropertyInfo), '("hasFocus", Gtk.Widget.WidgetHasFocusPropertyInfo), '("hasTooltip", Gtk.Widget.WidgetHasTooltipPropertyInfo), '("heightRequest", Gtk.Widget.WidgetHeightRequestPropertyInfo), '("hexpand", Gtk.Widget.WidgetHexpandPropertyInfo), '("hexpandSet", Gtk.Widget.WidgetHexpandSetPropertyInfo), '("isFocus", Gtk.Widget.WidgetIsFocusPropertyInfo), '("margin", Gtk.Widget.WidgetMarginPropertyInfo), '("marginBottom", Gtk.Widget.WidgetMarginBottomPropertyInfo), '("marginEnd", Gtk.Widget.WidgetMarginEndPropertyInfo), '("marginLeft", Gtk.Widget.WidgetMarginLeftPropertyInfo), '("marginRight", Gtk.Widget.WidgetMarginRightPropertyInfo), '("marginStart", Gtk.Widget.WidgetMarginStartPropertyInfo), '("marginTop", Gtk.Widget.WidgetMarginTopPropertyInfo), '("name", Gtk.Widget.WidgetNamePropertyInfo), '("noShowAll", Gtk.Widget.WidgetNoShowAllPropertyInfo), '("opacity", Gtk.Widget.WidgetOpacityPropertyInfo), '("page", NotebookPagePropertyInfo), '("parent", Gtk.Widget.WidgetParentPropertyInfo), '("receivesDefault", Gtk.Widget.WidgetReceivesDefaultPropertyInfo), '("resizeMode", Gtk.Container.ContainerResizeModePropertyInfo), '("scaleFactor", Gtk.Widget.WidgetScaleFactorPropertyInfo), '("scrollable", NotebookScrollablePropertyInfo), '("sensitive", Gtk.Widget.WidgetSensitivePropertyInfo), '("showBorder", NotebookShowBorderPropertyInfo), '("showTabs", NotebookShowTabsPropertyInfo), '("style", Gtk.Widget.WidgetStylePropertyInfo), '("tabPos", NotebookTabPosPropertyInfo), '("tooltipMarkup", Gtk.Widget.WidgetTooltipMarkupPropertyInfo), '("tooltipText", Gtk.Widget.WidgetTooltipTextPropertyInfo), '("valign", Gtk.Widget.WidgetValignPropertyInfo), '("vexpand", Gtk.Widget.WidgetVexpandPropertyInfo), '("vexpandSet", Gtk.Widget.WidgetVexpandSetPropertyInfo), '("visible", Gtk.Widget.WidgetVisiblePropertyInfo), '("widthRequest", Gtk.Widget.WidgetWidthRequestPropertyInfo), '("window", Gtk.Widget.WidgetWindowPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
notebookEnablePopup :: AttrLabelProxy "enablePopup"
notebookEnablePopup = AttrLabelProxy

notebookGroupName :: AttrLabelProxy "groupName"
notebookGroupName = AttrLabelProxy

notebookPage :: AttrLabelProxy "page"
notebookPage = AttrLabelProxy

notebookScrollable :: AttrLabelProxy "scrollable"
notebookScrollable = AttrLabelProxy

notebookShowBorder :: AttrLabelProxy "showBorder"
notebookShowBorder = AttrLabelProxy

notebookShowTabs :: AttrLabelProxy "showTabs"
notebookShowTabs = AttrLabelProxy

notebookTabPos :: AttrLabelProxy "tabPos"
notebookTabPos = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Notebook = NotebookSignalList
type NotebookSignalList = ('[ '("accelClosuresChanged", Gtk.Widget.WidgetAccelClosuresChangedSignalInfo), '("add", Gtk.Container.ContainerAddSignalInfo), '("buttonPressEvent", Gtk.Widget.WidgetButtonPressEventSignalInfo), '("buttonReleaseEvent", Gtk.Widget.WidgetButtonReleaseEventSignalInfo), '("canActivateAccel", Gtk.Widget.WidgetCanActivateAccelSignalInfo), '("changeCurrentPage", NotebookChangeCurrentPageSignalInfo), '("checkResize", Gtk.Container.ContainerCheckResizeSignalInfo), '("childNotify", Gtk.Widget.WidgetChildNotifySignalInfo), '("compositedChanged", Gtk.Widget.WidgetCompositedChangedSignalInfo), '("configureEvent", Gtk.Widget.WidgetConfigureEventSignalInfo), '("createWindow", NotebookCreateWindowSignalInfo), '("damageEvent", Gtk.Widget.WidgetDamageEventSignalInfo), '("deleteEvent", Gtk.Widget.WidgetDeleteEventSignalInfo), '("destroy", Gtk.Widget.WidgetDestroySignalInfo), '("destroyEvent", Gtk.Widget.WidgetDestroyEventSignalInfo), '("directionChanged", Gtk.Widget.WidgetDirectionChangedSignalInfo), '("dragBegin", Gtk.Widget.WidgetDragBeginSignalInfo), '("dragDataDelete", Gtk.Widget.WidgetDragDataDeleteSignalInfo), '("dragDataGet", Gtk.Widget.WidgetDragDataGetSignalInfo), '("dragDataReceived", Gtk.Widget.WidgetDragDataReceivedSignalInfo), '("dragDrop", Gtk.Widget.WidgetDragDropSignalInfo), '("dragEnd", Gtk.Widget.WidgetDragEndSignalInfo), '("dragFailed", Gtk.Widget.WidgetDragFailedSignalInfo), '("dragLeave", Gtk.Widget.WidgetDragLeaveSignalInfo), '("dragMotion", Gtk.Widget.WidgetDragMotionSignalInfo), '("draw", Gtk.Widget.WidgetDrawSignalInfo), '("enterNotifyEvent", Gtk.Widget.WidgetEnterNotifyEventSignalInfo), '("event", Gtk.Widget.WidgetEventSignalInfo), '("eventAfter", Gtk.Widget.WidgetEventAfterSignalInfo), '("focus", Gtk.Widget.WidgetFocusSignalInfo), '("focusInEvent", Gtk.Widget.WidgetFocusInEventSignalInfo), '("focusOutEvent", Gtk.Widget.WidgetFocusOutEventSignalInfo), '("focusTab", NotebookFocusTabSignalInfo), '("grabBrokenEvent", Gtk.Widget.WidgetGrabBrokenEventSignalInfo), '("grabFocus", Gtk.Widget.WidgetGrabFocusSignalInfo), '("grabNotify", Gtk.Widget.WidgetGrabNotifySignalInfo), '("hide", Gtk.Widget.WidgetHideSignalInfo), '("hierarchyChanged", Gtk.Widget.WidgetHierarchyChangedSignalInfo), '("keyPressEvent", Gtk.Widget.WidgetKeyPressEventSignalInfo), '("keyReleaseEvent", Gtk.Widget.WidgetKeyReleaseEventSignalInfo), '("keynavFailed", Gtk.Widget.WidgetKeynavFailedSignalInfo), '("leaveNotifyEvent", Gtk.Widget.WidgetLeaveNotifyEventSignalInfo), '("map", Gtk.Widget.WidgetMapSignalInfo), '("mapEvent", Gtk.Widget.WidgetMapEventSignalInfo), '("mnemonicActivate", Gtk.Widget.WidgetMnemonicActivateSignalInfo), '("motionNotifyEvent", Gtk.Widget.WidgetMotionNotifyEventSignalInfo), '("moveFocus", Gtk.Widget.WidgetMoveFocusSignalInfo), '("moveFocusOut", NotebookMoveFocusOutSignalInfo), '("notify", GObject.Object.ObjectNotifySignalInfo), '("pageAdded", NotebookPageAddedSignalInfo), '("pageRemoved", NotebookPageRemovedSignalInfo), '("pageReordered", NotebookPageReorderedSignalInfo), '("parentSet", Gtk.Widget.WidgetParentSetSignalInfo), '("popupMenu", Gtk.Widget.WidgetPopupMenuSignalInfo), '("propertyNotifyEvent", Gtk.Widget.WidgetPropertyNotifyEventSignalInfo), '("proximityInEvent", Gtk.Widget.WidgetProximityInEventSignalInfo), '("proximityOutEvent", Gtk.Widget.WidgetProximityOutEventSignalInfo), '("queryTooltip", Gtk.Widget.WidgetQueryTooltipSignalInfo), '("realize", Gtk.Widget.WidgetRealizeSignalInfo), '("remove", Gtk.Container.ContainerRemoveSignalInfo), '("reorderTab", NotebookReorderTabSignalInfo), '("screenChanged", Gtk.Widget.WidgetScreenChangedSignalInfo), '("scrollEvent", Gtk.Widget.WidgetScrollEventSignalInfo), '("selectPage", NotebookSelectPageSignalInfo), '("selectionClearEvent", Gtk.Widget.WidgetSelectionClearEventSignalInfo), '("selectionGet", Gtk.Widget.WidgetSelectionGetSignalInfo), '("selectionNotifyEvent", Gtk.Widget.WidgetSelectionNotifyEventSignalInfo), '("selectionReceived", Gtk.Widget.WidgetSelectionReceivedSignalInfo), '("selectionRequestEvent", Gtk.Widget.WidgetSelectionRequestEventSignalInfo), '("setFocusChild", Gtk.Container.ContainerSetFocusChildSignalInfo), '("show", Gtk.Widget.WidgetShowSignalInfo), '("showHelp", Gtk.Widget.WidgetShowHelpSignalInfo), '("sizeAllocate", Gtk.Widget.WidgetSizeAllocateSignalInfo), '("stateChanged", Gtk.Widget.WidgetStateChangedSignalInfo), '("stateFlagsChanged", Gtk.Widget.WidgetStateFlagsChangedSignalInfo), '("styleSet", Gtk.Widget.WidgetStyleSetSignalInfo), '("styleUpdated", Gtk.Widget.WidgetStyleUpdatedSignalInfo), '("switchPage", NotebookSwitchPageSignalInfo), '("touchEvent", Gtk.Widget.WidgetTouchEventSignalInfo), '("unmap", Gtk.Widget.WidgetUnmapSignalInfo), '("unmapEvent", Gtk.Widget.WidgetUnmapEventSignalInfo), '("unrealize", Gtk.Widget.WidgetUnrealizeSignalInfo), '("visibilityNotifyEvent", Gtk.Widget.WidgetVisibilityNotifyEventSignalInfo), '("windowStateEvent", Gtk.Widget.WidgetWindowStateEventSignalInfo)] :: [(Symbol, *)])

#endif

-- method Notebook::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Gtk" , name = "Notebook" })
-- throws : False
-- Skip return : False

foreign import ccall "gtk_notebook_new" gtk_notebook_new :: 
    IO (Ptr Notebook)

-- | Creates a new t'GI.Gtk.Objects.Notebook.Notebook' widget with no pages.
notebookNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Notebook
    -- ^ __Returns:__ the newly created t'GI.Gtk.Objects.Notebook.Notebook'
notebookNew  = liftIO $ do
    result <- gtk_notebook_new
    checkUnexpectedReturnNULL "notebookNew" result
    result' <- (newObject Notebook) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Notebook::append_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
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

foreign import ccall "gtk_notebook_append_page" gtk_notebook_append_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Appends a page to /@notebook@/.
notebookAppendPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the appended
    --     page in the notebook, or -1 if function fails
notebookAppendPage notebook child tabLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    result <- gtk_notebook_append_page notebook' child' maybeTabLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookAppendPageMethodInfo
instance (signature ~ (b -> Maybe (c) -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo NotebookAppendPageMethodInfo a signature where
    overloadedMethod = notebookAppendPage

#endif

-- method Notebook::append_page_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the widget to use as a label for the\n    page-switch menu, if that is enabled. If %NULL, and @tab_label\n    is a #GtkLabel or %NULL, then the menu label will be a newly\n    created label with the same text as @tab_label; if @tab_label\n    is not a #GtkLabel, @menu_label must be specified if the\n    page-switch menu is to be used."
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

foreign import ccall "gtk_notebook_append_page_menu" gtk_notebook_append_page_menu :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- menu_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Appends a page to /@notebook@/, specifying the widget to use as the
-- label in the popup menu.
notebookAppendPageMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> Maybe (d)
    -- ^ /@menuLabel@/: the widget to use as a label for the
    --     page-switch menu, if that is enabled. If 'P.Nothing', and /@tabLabel@/
    --     is a t'GI.Gtk.Objects.Label.Label' or 'P.Nothing', then the menu label will be a newly
    --     created label with the same text as /@tabLabel@/; if /@tabLabel@/
    --     is not a t'GI.Gtk.Objects.Label.Label', /@menuLabel@/ must be specified if the
    --     page-switch menu is to be used.
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the appended
    --     page in the notebook, or -1 if function fails
notebookAppendPageMenu notebook child tabLabel menuLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    maybeMenuLabel <- case menuLabel of
        Nothing -> return nullPtr
        Just jMenuLabel -> do
            jMenuLabel' <- unsafeManagedPtrCastPtr jMenuLabel
            return jMenuLabel'
    result <- gtk_notebook_append_page_menu notebook' child' maybeTabLabel maybeMenuLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    whenJust menuLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookAppendPageMenuMethodInfo
instance (signature ~ (b -> Maybe (c) -> Maybe (d) -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) => O.MethodInfo NotebookAppendPageMenuMethodInfo a signature where
    overloadedMethod = notebookAppendPageMenu

#endif

-- method Notebook::detach_tab
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_detach_tab" gtk_notebook_detach_tab :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Removes the child from the notebook.
-- 
-- This function is very similar to 'GI.Gtk.Objects.Container.containerRemove',
-- but additionally informs the notebook that the removal
-- is happening as part of a tab DND operation, which should
-- not be cancelled.
-- 
-- /Since: 3.16/
notebookDetachTab ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a child
    -> m ()
notebookDetachTab notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    gtk_notebook_detach_tab notebook' child'
    touchManagedPtr notebook
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookDetachTabMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookDetachTabMethodInfo a signature where
    overloadedMethod = notebookDetachTab

#endif

-- method Notebook::get_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pack_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "pack type of the action widget to receive"
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

foreign import ccall "gtk_notebook_get_action_widget" gtk_notebook_get_action_widget :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CUInt ->                                -- pack_type : TInterface (Name {namespace = "Gtk", name = "PackType"})
    IO (Ptr Gtk.Widget.Widget)

-- | Gets one of the action widgets. See 'GI.Gtk.Objects.Notebook.notebookSetActionWidget'.
-- 
-- /Since: 2.20/
notebookGetActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Gtk.Enums.PackType
    -- ^ /@packType@/: pack type of the action widget to receive
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ The action widget with the given
    -- /@packType@/ or 'P.Nothing' when this action widget has not been set
notebookGetActionWidget notebook packType = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    let packType' = (fromIntegral . fromEnum) packType
    result <- gtk_notebook_get_action_widget notebook' packType'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr notebook
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetActionWidgetMethodInfo
instance (signature ~ (Gtk.Enums.PackType -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetActionWidgetMethodInfo a signature where
    overloadedMethod = notebookGetActionWidget

#endif

-- method Notebook::get_current_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_current_page" gtk_notebook_get_current_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO Int32

-- | Returns the page number of the current page.
notebookGetCurrentPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the current
    --     page in the notebook. If the notebook has no pages,
    --     then -1 will be returned.
notebookGetCurrentPage notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_current_page notebook'
    touchManagedPtr notebook
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookGetCurrentPageMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetCurrentPageMethodInfo a signature where
    overloadedMethod = notebookGetCurrentPage

#endif

-- method Notebook::get_group_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_group_name" gtk_notebook_get_group_name :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO CString

-- | Gets the current group name for /@notebook@/.
-- 
-- /Since: 2.24/
notebookGetGroupName ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the group name, or 'P.Nothing' if none is set
notebookGetGroupName notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_group_name notebook'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr notebook
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetGroupNameMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetGroupNameMethodInfo a signature where
    overloadedMethod = notebookGetGroupName

#endif

-- method Notebook::get_menu_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a widget contained in a page of @notebook"
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

foreign import ccall "gtk_notebook_get_menu_label" gtk_notebook_get_menu_label :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr Gtk.Widget.Widget)

-- | Retrieves the menu label widget of the page containing /@child@/.
notebookGetMenuLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a widget contained in a page of /@notebook@/
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the menu label, or 'P.Nothing' if the
    -- notebook page does not have a menu label other than the default (the tab
    -- label).
notebookGetMenuLabel notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_menu_label notebook' child'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr notebook
    touchManagedPtr child
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetMenuLabelMethodInfo
instance (signature ~ (b -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetMenuLabelMethodInfo a signature where
    overloadedMethod = notebookGetMenuLabel

#endif

-- method Notebook::get_menu_label_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child widget of a page of the notebook."
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_notebook_get_menu_label_text" gtk_notebook_get_menu_label_text :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CString

-- | Retrieves the text of the menu label for the page containing
-- /@child@/.
notebookGetMenuLabelText ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the child widget of a page of the notebook.
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the text of the tab label, or 'P.Nothing' if the widget does
    -- not have a menu label other than the default menu label, or the menu label
    -- widget is not a t'GI.Gtk.Objects.Label.Label'. The string is owned by the widget and must not be
    -- freed.
notebookGetMenuLabelText notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_menu_label_text notebook' child'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr notebook
    touchManagedPtr child
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetMenuLabelTextMethodInfo
instance (signature ~ (b -> m (Maybe T.Text)), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetMenuLabelTextMethodInfo a signature where
    overloadedMethod = notebookGetMenuLabelText

#endif

-- method Notebook::get_n_pages
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_n_pages" gtk_notebook_get_n_pages :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO Int32

-- | Gets the number of pages in a notebook.
-- 
-- /Since: 2.2/
notebookGetNPages ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Int32
    -- ^ __Returns:__ the number of pages in the notebook
notebookGetNPages notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_n_pages notebook'
    touchManagedPtr notebook
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookGetNPagesMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetNPagesMethodInfo a signature where
    overloadedMethod = notebookGetNPages

#endif

-- method Notebook::get_nth_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the index of a page in the notebook, or -1\n    to get the last page"
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

foreign import ccall "gtk_notebook_get_nth_page" gtk_notebook_get_nth_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the child widget contained in page number /@pageNum@/.
notebookGetNthPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Int32
    -- ^ /@pageNum@/: the index of a page in the notebook, or -1
    --     to get the last page
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the child widget, or 'P.Nothing' if /@pageNum@/
    -- is out of bounds
notebookGetNthPage notebook pageNum = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_nth_page notebook' pageNum
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr notebook
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetNthPageMethodInfo
instance (signature ~ (Int32 -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetNthPageMethodInfo a signature where
    overloadedMethod = notebookGetNthPage

#endif

-- method Notebook::get_scrollable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_scrollable" gtk_notebook_get_scrollable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO CInt

-- | Returns whether the tab label area has arrows for scrolling.
-- See 'GI.Gtk.Objects.Notebook.notebookSetScrollable'.
notebookGetScrollable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if arrows for scrolling are present
notebookGetScrollable notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_scrollable notebook'
    let result' = (/= 0) result
    touchManagedPtr notebook
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetScrollableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetScrollableMethodInfo a signature where
    overloadedMethod = notebookGetScrollable

#endif

-- method Notebook::get_show_border
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_show_border" gtk_notebook_get_show_border :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO CInt

-- | Returns whether a bevel will be drawn around the notebook pages.
-- See 'GI.Gtk.Objects.Notebook.notebookSetShowBorder'.
notebookGetShowBorder ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the bevel is drawn
notebookGetShowBorder notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_show_border notebook'
    let result' = (/= 0) result
    touchManagedPtr notebook
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetShowBorderMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetShowBorderMethodInfo a signature where
    overloadedMethod = notebookGetShowBorder

#endif

-- method Notebook::get_show_tabs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_show_tabs" gtk_notebook_get_show_tabs :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO CInt

-- | Returns whether the tabs of the notebook are shown.
-- See 'GI.Gtk.Objects.Notebook.notebookSetShowTabs'.
notebookGetShowTabs ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the tabs are shown
notebookGetShowTabs notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_show_tabs notebook'
    let result' = (/= 0) result
    touchManagedPtr notebook
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetShowTabsMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetShowTabsMethodInfo a signature where
    overloadedMethod = notebookGetShowTabs

#endif

-- method Notebook::get_tab_detachable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child #GtkWidget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_tab_detachable" gtk_notebook_get_tab_detachable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Returns whether the tab contents can be detached from /@notebook@/.
-- 
-- /Since: 2.10/
notebookGetTabDetachable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a child t'GI.Gtk.Objects.Widget.Widget'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the tab is detachable.
notebookGetTabDetachable notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_tab_detachable notebook' child'
    let result' = (/= 0) result
    touchManagedPtr notebook
    touchManagedPtr child
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabDetachableMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetTabDetachableMethodInfo a signature where
    overloadedMethod = notebookGetTabDetachable

#endif

-- method Notebook::get_tab_hborder
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_notebook_get_tab_hborder" gtk_notebook_get_tab_hborder :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO Word16

{-# DEPRECATED notebookGetTabHborder ["(Since version 3.4)","this function returns zero"] #-}
-- | Returns the horizontal width of a tab border.
-- 
-- /Since: 2.22/
notebookGetTabHborder ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Word16
    -- ^ __Returns:__ horizontal width of a tab border
notebookGetTabHborder notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_tab_hborder notebook'
    touchManagedPtr notebook
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabHborderMethodInfo
instance (signature ~ (m Word16), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetTabHborderMethodInfo a signature where
    overloadedMethod = notebookGetTabHborder

#endif

-- method Notebook::get_tab_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the page" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_tab_label" gtk_notebook_get_tab_label :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO (Ptr Gtk.Widget.Widget)

-- | Returns the tab label widget for the page /@child@/.
-- 'P.Nothing' is returned if /@child@/ is not in /@notebook@/ or
-- if no tab label has specifically been set for /@child@/.
notebookGetTabLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the page
    -> m (Maybe Gtk.Widget.Widget)
    -- ^ __Returns:__ the tab label
notebookGetTabLabel notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_tab_label notebook' child'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Gtk.Widget.Widget) result'
        return result''
    touchManagedPtr notebook
    touchManagedPtr child
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabLabelMethodInfo
instance (signature ~ (b -> m (Maybe Gtk.Widget.Widget)), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetTabLabelMethodInfo a signature where
    overloadedMethod = notebookGetTabLabel

#endif

-- method Notebook::get_tab_label_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a widget contained in a page of @notebook"
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_notebook_get_tab_label_text" gtk_notebook_get_tab_label_text :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CString

-- | Retrieves the text of the tab label for the page containing
-- /@child@/.
notebookGetTabLabelText ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a widget contained in a page of /@notebook@/
    -> m (Maybe T.Text)
    -- ^ __Returns:__ the text of the tab label, or 'P.Nothing' if the tab label
    -- widget is not a t'GI.Gtk.Objects.Label.Label'. The string is owned by the widget and must not be
    -- freed.
notebookGetTabLabelText notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_tab_label_text notebook' child'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr notebook
    touchManagedPtr child
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabLabelTextMethodInfo
instance (signature ~ (b -> m (Maybe T.Text)), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetTabLabelTextMethodInfo a signature where
    overloadedMethod = notebookGetTabLabelText

#endif

-- method Notebook::get_tab_pos
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_tab_pos" gtk_notebook_get_tab_pos :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO CUInt

-- | Gets the edge at which the tabs for switching pages in the
-- notebook are drawn.
notebookGetTabPos ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Gtk.Enums.PositionType
    -- ^ __Returns:__ the edge at which the tabs are drawn
notebookGetTabPos notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_tab_pos notebook'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr notebook
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabPosMethodInfo
instance (signature ~ (m Gtk.Enums.PositionType), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetTabPosMethodInfo a signature where
    overloadedMethod = notebookGetTabPos

#endif

-- method Notebook::get_tab_reorderable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child #GtkWidget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_get_tab_reorderable" gtk_notebook_get_tab_reorderable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO CInt

-- | Gets whether the tab can be reordered via drag and drop or not.
-- 
-- /Since: 2.10/
notebookGetTabReorderable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a child t'GI.Gtk.Objects.Widget.Widget'
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the tab is reorderable.
notebookGetTabReorderable notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_get_tab_reorderable notebook' child'
    let result' = (/= 0) result
    touchManagedPtr notebook
    touchManagedPtr child
    return result'

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabReorderableMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookGetTabReorderableMethodInfo a signature where
    overloadedMethod = notebookGetTabReorderable

#endif

-- method Notebook::get_tab_vborder
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "gtk_notebook_get_tab_vborder" gtk_notebook_get_tab_vborder :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO Word16

{-# DEPRECATED notebookGetTabVborder ["(Since version 3.4)","this function returns zero"] #-}
-- | Returns the vertical width of a tab border.
-- 
-- /Since: 2.22/
notebookGetTabVborder ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m Word16
    -- ^ __Returns:__ vertical width of a tab border
notebookGetTabVborder notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    result <- gtk_notebook_get_tab_vborder notebook'
    touchManagedPtr notebook
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookGetTabVborderMethodInfo
instance (signature ~ (m Word16), MonadIO m, IsNotebook a) => O.MethodInfo NotebookGetTabVborderMethodInfo a signature where
    overloadedMethod = notebookGetTabVborder

#endif

-- method Notebook::insert_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
--                 , sinceVersion = Nothing
--                 }
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
--                       "the index (starting at 0) at which to insert the page,\n    or -1 to append the page after all other pages"
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

foreign import ccall "gtk_notebook_insert_page" gtk_notebook_insert_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO Int32

-- | Insert a page into /@notebook@/ at the given position.
notebookInsertPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> Int32
    -- ^ /@position@/: the index (starting at 0) at which to insert the page,
    --     or -1 to append the page after all other pages
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the inserted
    --     page in the notebook, or -1 if function fails
notebookInsertPage notebook child tabLabel position = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    result <- gtk_notebook_insert_page notebook' child' maybeTabLabel position
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookInsertPageMethodInfo
instance (signature ~ (b -> Maybe (c) -> Int32 -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo NotebookInsertPageMethodInfo a signature where
    overloadedMethod = notebookInsertPage

#endif

-- method Notebook::insert_page_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the widget to use as a label for the\n    page-switch menu, if that is enabled. If %NULL, and @tab_label\n    is a #GtkLabel or %NULL, then the menu label will be a newly\n    created label with the same text as @tab_label; if @tab_label\n    is not a #GtkLabel, @menu_label must be specified if the\n    page-switch menu is to be used."
--                 , sinceVersion = Nothing
--                 }
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
--                       "the index (starting at 0) at which to insert the page,\n    or -1 to append the page after all other pages."
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

foreign import ccall "gtk_notebook_insert_page_menu" gtk_notebook_insert_page_menu :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- menu_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO Int32

-- | Insert a page into /@notebook@/ at the given position, specifying
-- the widget to use as the label in the popup menu.
notebookInsertPageMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> Maybe (d)
    -- ^ /@menuLabel@/: the widget to use as a label for the
    --     page-switch menu, if that is enabled. If 'P.Nothing', and /@tabLabel@/
    --     is a t'GI.Gtk.Objects.Label.Label' or 'P.Nothing', then the menu label will be a newly
    --     created label with the same text as /@tabLabel@/; if /@tabLabel@/
    --     is not a t'GI.Gtk.Objects.Label.Label', /@menuLabel@/ must be specified if the
    --     page-switch menu is to be used.
    -> Int32
    -- ^ /@position@/: the index (starting at 0) at which to insert the page,
    --     or -1 to append the page after all other pages.
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the inserted
    --     page in the notebook
notebookInsertPageMenu notebook child tabLabel menuLabel position = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    maybeMenuLabel <- case menuLabel of
        Nothing -> return nullPtr
        Just jMenuLabel -> do
            jMenuLabel' <- unsafeManagedPtrCastPtr jMenuLabel
            return jMenuLabel'
    result <- gtk_notebook_insert_page_menu notebook' child' maybeTabLabel maybeMenuLabel position
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    whenJust menuLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookInsertPageMenuMethodInfo
instance (signature ~ (b -> Maybe (c) -> Maybe (d) -> Int32 -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) => O.MethodInfo NotebookInsertPageMenuMethodInfo a signature where
    overloadedMethod = notebookInsertPageMenu

#endif

-- method Notebook::next_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_next_page" gtk_notebook_next_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO ()

-- | Switches to the next page. Nothing happens if the current page is
-- the last page.
notebookNextPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m ()
notebookNextPage notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_next_page notebook'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookNextPageMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookNextPageMethodInfo a signature where
    overloadedMethod = notebookNextPage

#endif

-- method Notebook::page_num
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_page_num" gtk_notebook_page_num :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Finds the index of the page which contains the given child
-- widget.
notebookPageNum ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> m Int32
    -- ^ __Returns:__ the index of the page containing /@child@/, or
    --     -1 if /@child@/ is not in the notebook
notebookPageNum notebook child = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    result <- gtk_notebook_page_num notebook' child'
    touchManagedPtr notebook
    touchManagedPtr child
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookPageNumMethodInfo
instance (signature ~ (b -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookPageNumMethodInfo a signature where
    overloadedMethod = notebookPageNum

#endif

-- method Notebook::popup_disable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_popup_disable" gtk_notebook_popup_disable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO ()

-- | Disables the popup menu.
notebookPopupDisable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m ()
notebookPopupDisable notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_popup_disable notebook'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookPopupDisableMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookPopupDisableMethodInfo a signature where
    overloadedMethod = notebookPopupDisable

#endif

-- method Notebook::popup_enable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_popup_enable" gtk_notebook_popup_enable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO ()

-- | Enables the popup menu: if the user clicks with the right
-- mouse button on the tab labels, a menu with all the pages
-- will be popped up.
notebookPopupEnable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m ()
notebookPopupEnable notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_popup_enable notebook'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookPopupEnableMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookPopupEnableMethodInfo a signature where
    overloadedMethod = notebookPopupEnable

#endif

-- method Notebook::prepend_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
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

foreign import ccall "gtk_notebook_prepend_page" gtk_notebook_prepend_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Prepends a page to /@notebook@/.
notebookPrependPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the prepended
    --     page in the notebook, or -1 if function fails
notebookPrependPage notebook child tabLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    result <- gtk_notebook_prepend_page notebook' child' maybeTabLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookPrependPageMethodInfo
instance (signature ~ (b -> Maybe (c) -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo NotebookPrependPageMethodInfo a signature where
    overloadedMethod = notebookPrependPage

#endif

-- method Notebook::prepend_page_menu
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText =
--                     Just "the #GtkWidget to use as the contents of the page"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the #GtkWidget to be used as the label\n    for the page, or %NULL to use the default label, \8220page N\8221"
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "menu_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the widget to use as a label for the\n    page-switch menu, if that is enabled. If %NULL, and @tab_label\n    is a #GtkLabel or %NULL, then the menu label will be a newly\n    created label with the same text as @tab_label; if @tab_label\n    is not a #GtkLabel, @menu_label must be specified if the\n    page-switch menu is to be used."
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

foreign import ccall "gtk_notebook_prepend_page_menu" gtk_notebook_prepend_page_menu :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- menu_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO Int32

-- | Prepends a page to /@notebook@/, specifying the widget to use as the
-- label in the popup menu.
notebookPrependPageMenu ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the t'GI.Gtk.Objects.Widget.Widget' to use as the contents of the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the t'GI.Gtk.Objects.Widget.Widget' to be used as the label
    --     for the page, or 'P.Nothing' to use the default label, “page N”
    -> Maybe (d)
    -- ^ /@menuLabel@/: the widget to use as a label for the
    --     page-switch menu, if that is enabled. If 'P.Nothing', and /@tabLabel@/
    --     is a t'GI.Gtk.Objects.Label.Label' or 'P.Nothing', then the menu label will be a newly
    --     created label with the same text as /@tabLabel@/; if /@tabLabel@/
    --     is not a t'GI.Gtk.Objects.Label.Label', /@menuLabel@/ must be specified if the
    --     page-switch menu is to be used.
    -> m Int32
    -- ^ __Returns:__ the index (starting from 0) of the prepended
    --     page in the notebook, or -1 if function fails
notebookPrependPageMenu notebook child tabLabel menuLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    maybeMenuLabel <- case menuLabel of
        Nothing -> return nullPtr
        Just jMenuLabel -> do
            jMenuLabel' <- unsafeManagedPtrCastPtr jMenuLabel
            return jMenuLabel'
    result <- gtk_notebook_prepend_page_menu notebook' child' maybeTabLabel maybeMenuLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    whenJust menuLabel touchManagedPtr
    return result

#if defined(ENABLE_OVERLOADING)
data NotebookPrependPageMenuMethodInfo
instance (signature ~ (b -> Maybe (c) -> Maybe (d) -> m Int32), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c, Gtk.Widget.IsWidget d) => O.MethodInfo NotebookPrependPageMenuMethodInfo a signature where
    overloadedMethod = notebookPrependPageMenu

#endif

-- method Notebook::prev_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_prev_page" gtk_notebook_prev_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    IO ()

-- | Switches to the previous page. Nothing happens if the current page
-- is the first page.
notebookPrevPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> m ()
notebookPrevPage notebook = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_prev_page notebook'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookPrevPageMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookPrevPageMethodInfo a signature where
    overloadedMethod = notebookPrevPage

#endif

-- method Notebook::remove_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the index of a notebook page, starting\n    from 0. If -1, the last page will be removed."
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

foreign import ccall "gtk_notebook_remove_page" gtk_notebook_remove_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO ()

-- | Removes a page from the notebook given its index
-- in the notebook.
notebookRemovePage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Int32
    -- ^ /@pageNum@/: the index of a notebook page, starting
    --     from 0. If -1, the last page will be removed.
    -> m ()
notebookRemovePage notebook pageNum = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_remove_page notebook' pageNum
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookRemovePageMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookRemovePageMethodInfo a signature where
    overloadedMethod = notebookRemovePage

#endif

-- method Notebook::reorder_child
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the child to move" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the new position, or -1 to move to the end"
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

foreign import ccall "gtk_notebook_reorder_child" gtk_notebook_reorder_child :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Int32 ->                                -- position : TBasicType TInt
    IO ()

-- | Reorders the page containing /@child@/, so that it appears in position
-- /@position@/. If /@position@/ is greater than or equal to the number of
-- children in the list or negative, /@child@/ will be moved to the end
-- of the list.
notebookReorderChild ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the child to move
    -> Int32
    -- ^ /@position@/: the new position, or -1 to move to the end
    -> m ()
notebookReorderChild notebook child position = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    gtk_notebook_reorder_child notebook' child' position
    touchManagedPtr notebook
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookReorderChildMethodInfo
instance (signature ~ (b -> Int32 -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookReorderChildMethodInfo a signature where
    overloadedMethod = notebookReorderChild

#endif

-- method Notebook::set_action_widget
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pack_type"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PackType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "pack type of the action widget"
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

foreign import ccall "gtk_notebook_set_action_widget" gtk_notebook_set_action_widget :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- widget : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CUInt ->                                -- pack_type : TInterface (Name {namespace = "Gtk", name = "PackType"})
    IO ()

-- | Sets /@widget@/ as one of the action widgets. Depending on the pack type
-- the widget will be placed before or after the tabs. You can use
-- a t'GI.Gtk.Objects.Box.Box' if you need to pack more than one widget on the same side.
-- 
-- Note that action widgets are “internal” children of the notebook and thus
-- not included in the list returned from 'GI.Gtk.Objects.Container.containerForeach'.
-- 
-- /Since: 2.20/
notebookSetActionWidget ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@widget@/: a t'GI.Gtk.Objects.Widget.Widget'
    -> Gtk.Enums.PackType
    -- ^ /@packType@/: pack type of the action widget
    -> m ()
notebookSetActionWidget notebook widget packType = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    widget' <- unsafeManagedPtrCastPtr widget
    let packType' = (fromIntegral . fromEnum) packType
    gtk_notebook_set_action_widget notebook' widget' packType'
    touchManagedPtr notebook
    touchManagedPtr widget
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetActionWidgetMethodInfo
instance (signature ~ (b -> Gtk.Enums.PackType -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookSetActionWidgetMethodInfo a signature where
    overloadedMethod = notebookSetActionWidget

#endif

-- method Notebook::set_current_page
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "page_num"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "index of the page to switch to, starting from 0.\n    If negative, the last page will be used. If greater\n    than the number of pages in the notebook, nothing\n    will be done."
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

foreign import ccall "gtk_notebook_set_current_page" gtk_notebook_set_current_page :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Int32 ->                                -- page_num : TBasicType TInt
    IO ()

-- | Switches to the page number /@pageNum@/.
-- 
-- Note that due to historical reasons, GtkNotebook refuses
-- to switch to a page unless the child widget is visible.
-- Therefore, it is recommended to show child widgets before
-- adding them to a notebook.
notebookSetCurrentPage ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Int32
    -- ^ /@pageNum@/: index of the page to switch to, starting from 0.
    --     If negative, the last page will be used. If greater
    --     than the number of pages in the notebook, nothing
    --     will be done.
    -> m ()
notebookSetCurrentPage notebook pageNum = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    gtk_notebook_set_current_page notebook' pageNum
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetCurrentPageMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetCurrentPageMethodInfo a signature where
    overloadedMethod = notebookSetCurrentPage

#endif

-- method Notebook::set_group_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "group_name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "the name of the notebook group,\n    or %NULL to unset it"
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

foreign import ccall "gtk_notebook_set_group_name" gtk_notebook_set_group_name :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CString ->                              -- group_name : TBasicType TUTF8
    IO ()

-- | Sets a group name for /@notebook@/.
-- 
-- Notebooks with the same name will be able to exchange tabs
-- via drag and drop. A notebook with a 'P.Nothing' group name will
-- not be able to exchange tabs with any other notebook.
-- 
-- /Since: 2.24/
notebookSetGroupName ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Maybe (T.Text)
    -- ^ /@groupName@/: the name of the notebook group,
    --     or 'P.Nothing' to unset it
    -> m ()
notebookSetGroupName notebook groupName = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    maybeGroupName <- case groupName of
        Nothing -> return nullPtr
        Just jGroupName -> do
            jGroupName' <- textToCString jGroupName
            return jGroupName'
    gtk_notebook_set_group_name notebook' maybeGroupName
    touchManagedPtr notebook
    freeMem maybeGroupName
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetGroupNameMethodInfo
instance (signature ~ (Maybe (T.Text) -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetGroupNameMethodInfo a signature where
    overloadedMethod = notebookSetGroupName

#endif

-- method Notebook::set_menu_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--           { argCName = "menu_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the menu label, or %NULL for default"
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

foreign import ccall "gtk_notebook_set_menu_label" gtk_notebook_set_menu_label :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- menu_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Changes the menu label for the page containing /@child@/.
notebookSetMenuLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the child widget
    -> Maybe (c)
    -- ^ /@menuLabel@/: the menu label, or 'P.Nothing' for default
    -> m ()
notebookSetMenuLabel notebook child menuLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeMenuLabel <- case menuLabel of
        Nothing -> return nullPtr
        Just jMenuLabel -> do
            jMenuLabel' <- unsafeManagedPtrCastPtr jMenuLabel
            return jMenuLabel'
    gtk_notebook_set_menu_label notebook' child' maybeMenuLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust menuLabel touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetMenuLabelMethodInfo
instance (signature ~ (b -> Maybe (c) -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo NotebookSetMenuLabelMethodInfo a signature where
    overloadedMethod = notebookSetMenuLabel

#endif

-- method Notebook::set_menu_label_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--           { argCName = "menu_text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label text" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_set_menu_label_text" gtk_notebook_set_menu_label_text :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- menu_text : TBasicType TUTF8
    IO ()

-- | Creates a new label and sets it as the menu label of /@child@/.
notebookSetMenuLabelText ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the child widget
    -> T.Text
    -- ^ /@menuText@/: the label text
    -> m ()
notebookSetMenuLabelText notebook child menuText = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    menuText' <- textToCString menuText
    gtk_notebook_set_menu_label_text notebook' child' menuText'
    touchManagedPtr notebook
    touchManagedPtr child
    freeMem menuText'
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetMenuLabelTextMethodInfo
instance (signature ~ (b -> T.Text -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookSetMenuLabelTextMethodInfo a signature where
    overloadedMethod = notebookSetMenuLabelText

#endif

-- method Notebook::set_scrollable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "scrollable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE if scroll arrows should be added"
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

foreign import ccall "gtk_notebook_set_scrollable" gtk_notebook_set_scrollable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CInt ->                                 -- scrollable : TBasicType TBoolean
    IO ()

-- | Sets whether the tab label area will have arrows for
-- scrolling if there are too many tabs to fit in the area.
notebookSetScrollable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Bool
    -- ^ /@scrollable@/: 'P.True' if scroll arrows should be added
    -> m ()
notebookSetScrollable notebook scrollable = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    let scrollable' = (fromIntegral . fromEnum) scrollable
    gtk_notebook_set_scrollable notebook' scrollable'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetScrollableMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetScrollableMethodInfo a signature where
    overloadedMethod = notebookSetScrollable

#endif

-- method Notebook::set_show_border
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_border"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%TRUE if a bevel should be drawn around the notebook"
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

foreign import ccall "gtk_notebook_set_show_border" gtk_notebook_set_show_border :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CInt ->                                 -- show_border : TBasicType TBoolean
    IO ()

-- | Sets whether a bevel will be drawn around the notebook pages.
-- This only has a visual effect when the tabs are not shown.
-- See 'GI.Gtk.Objects.Notebook.notebookSetShowTabs'.
notebookSetShowBorder ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Bool
    -- ^ /@showBorder@/: 'P.True' if a bevel should be drawn around the notebook
    -> m ()
notebookSetShowBorder notebook showBorder = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    let showBorder' = (fromIntegral . fromEnum) showBorder
    gtk_notebook_set_show_border notebook' showBorder'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetShowBorderMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetShowBorderMethodInfo a signature where
    overloadedMethod = notebookSetShowBorder

#endif

-- method Notebook::set_show_tabs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "show_tabs"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "%TRUE if the tabs should be shown"
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

foreign import ccall "gtk_notebook_set_show_tabs" gtk_notebook_set_show_tabs :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CInt ->                                 -- show_tabs : TBasicType TBoolean
    IO ()

-- | Sets whether to show the tabs for the notebook or not.
notebookSetShowTabs ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> Bool
    -- ^ /@showTabs@/: 'P.True' if the tabs should be shown
    -> m ()
notebookSetShowTabs notebook showTabs = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    let showTabs' = (fromIntegral . fromEnum) showTabs
    gtk_notebook_set_show_tabs notebook' showTabs'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetShowTabsMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetShowTabsMethodInfo a signature where
    overloadedMethod = notebookSetShowTabs

#endif

-- method Notebook::set_tab_detachable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "detachable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the tab is detachable or not"
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

foreign import ccall "gtk_notebook_set_tab_detachable" gtk_notebook_set_tab_detachable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- detachable : TBasicType TBoolean
    IO ()

-- | Sets whether the tab can be detached from /@notebook@/ to another
-- notebook or widget.
-- 
-- Note that 2 notebooks must share a common group identificator
-- (see 'GI.Gtk.Objects.Notebook.notebookSetGroupName') to allow automatic tabs
-- interchange between them.
-- 
-- If you want a widget to interact with a notebook through DnD
-- (i.e.: accept dragged tabs from it) it must be set as a drop
-- destination and accept the target “GTK_NOTEBOOK_TAB”. The notebook
-- will fill the selection with a GtkWidget** pointing to the child
-- widget that corresponds to the dropped tab.
-- 
-- Note that you should use 'GI.Gtk.Objects.Notebook.notebookDetachTab' instead
-- of 'GI.Gtk.Objects.Container.containerRemove' if you want to remove the tab from
-- the source notebook as part of accepting a drop. Otherwise,
-- the source notebook will think that the dragged tab was
-- removed from underneath the ongoing drag operation, and
-- will initiate a drag cancel animation.
-- 
-- 
-- === /C code/
-- >
-- > static void
-- > on_drag_data_received (GtkWidget        *widget,
-- >                        GdkDragContext   *context,
-- >                        gint              x,
-- >                        gint              y,
-- >                        GtkSelectionData *data,
-- >                        guint             info,
-- >                        guint             time,
-- >                        gpointer          user_data)
-- > {
-- >   GtkWidget *notebook;
-- >   GtkWidget **child;
-- >
-- >   notebook = gtk_drag_get_source_widget (context);
-- >   child = (void*) gtk_selection_data_get_data (data);
-- >
-- >   // process_widget (*child);
-- >
-- >   gtk_notebook_detach_tab (GTK_NOTEBOOK (notebook), *child);
-- > }
-- 
-- 
-- If you want a notebook to accept drags from other widgets,
-- you will have to set your own DnD code to do it.
-- 
-- /Since: 2.10/
notebookSetTabDetachable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a child t'GI.Gtk.Objects.Widget.Widget'
    -> Bool
    -- ^ /@detachable@/: whether the tab is detachable or not
    -> m ()
notebookSetTabDetachable notebook child detachable = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    let detachable' = (fromIntegral . fromEnum) detachable
    gtk_notebook_set_tab_detachable notebook' child' detachable'
    touchManagedPtr notebook
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetTabDetachableMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookSetTabDetachableMethodInfo a signature where
    overloadedMethod = notebookSetTabDetachable

#endif

-- method Notebook::set_tab_label
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the page" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_label"
--           , argType = TInterface Name { namespace = "Gtk" , name = "Widget" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "the tab label widget to use, or %NULL\n    for default tab label"
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

foreign import ccall "gtk_notebook_set_tab_label" gtk_notebook_set_tab_label :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    Ptr Gtk.Widget.Widget ->                -- tab_label : TInterface (Name {namespace = "Gtk", name = "Widget"})
    IO ()

-- | Changes the tab label for /@child@/.
-- If 'P.Nothing' is specified for /@tabLabel@/, then the page will
-- have the label “page N”.
notebookSetTabLabel ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the page
    -> Maybe (c)
    -- ^ /@tabLabel@/: the tab label widget to use, or 'P.Nothing'
    --     for default tab label
    -> m ()
notebookSetTabLabel notebook child tabLabel = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    maybeTabLabel <- case tabLabel of
        Nothing -> return nullPtr
        Just jTabLabel -> do
            jTabLabel' <- unsafeManagedPtrCastPtr jTabLabel
            return jTabLabel'
    gtk_notebook_set_tab_label notebook' child' maybeTabLabel
    touchManagedPtr notebook
    touchManagedPtr child
    whenJust tabLabel touchManagedPtr
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetTabLabelMethodInfo
instance (signature ~ (b -> Maybe (c) -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b, Gtk.Widget.IsWidget c) => O.MethodInfo NotebookSetTabLabelMethodInfo a signature where
    overloadedMethod = notebookSetTabLabel

#endif

-- method Notebook::set_tab_label_text
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "the page" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tab_text"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the label text" , sinceVersion = Nothing }
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

foreign import ccall "gtk_notebook_set_tab_label_text" gtk_notebook_set_tab_label_text :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CString ->                              -- tab_text : TBasicType TUTF8
    IO ()

-- | Creates a new label and sets it as the tab label for the page
-- containing /@child@/.
notebookSetTabLabelText ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: the page
    -> T.Text
    -- ^ /@tabText@/: the label text
    -> m ()
notebookSetTabLabelText notebook child tabText = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    tabText' <- textToCString tabText
    gtk_notebook_set_tab_label_text notebook' child' tabText'
    touchManagedPtr notebook
    touchManagedPtr child
    freeMem tabText'
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetTabLabelTextMethodInfo
instance (signature ~ (b -> T.Text -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookSetTabLabelTextMethodInfo a signature where
    overloadedMethod = notebookSetTabLabelText

#endif

-- method Notebook::set_tab_pos
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "pos"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "PositionType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "the edge to draw the tabs at"
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

foreign import ccall "gtk_notebook_set_tab_pos" gtk_notebook_set_tab_pos :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    CUInt ->                                -- pos : TInterface (Name {namespace = "Gtk", name = "PositionType"})
    IO ()

-- | Sets the edge at which the tabs for switching pages in the
-- notebook are drawn.
notebookSetTabPos ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'.
    -> Gtk.Enums.PositionType
    -- ^ /@pos@/: the edge to draw the tabs at
    -> m ()
notebookSetTabPos notebook pos = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    let pos' = (fromIntegral . fromEnum) pos
    gtk_notebook_set_tab_pos notebook' pos'
    touchManagedPtr notebook
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetTabPosMethodInfo
instance (signature ~ (Gtk.Enums.PositionType -> m ()), MonadIO m, IsNotebook a) => O.MethodInfo NotebookSetTabPosMethodInfo a signature where
    overloadedMethod = notebookSetTabPos

#endif

-- method Notebook::set_tab_reorderable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "notebook"
--           , argType =
--               TInterface Name { namespace = "Gtk" , name = "Notebook" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "a #GtkNotebook" , sinceVersion = Nothing }
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
--                 { rawDocText = Just "a child #GtkWidget" , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "reorderable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "whether the tab is reorderable or not"
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

foreign import ccall "gtk_notebook_set_tab_reorderable" gtk_notebook_set_tab_reorderable :: 
    Ptr Notebook ->                         -- notebook : TInterface (Name {namespace = "Gtk", name = "Notebook"})
    Ptr Gtk.Widget.Widget ->                -- child : TInterface (Name {namespace = "Gtk", name = "Widget"})
    CInt ->                                 -- reorderable : TBasicType TBoolean
    IO ()

-- | Sets whether the notebook tab can be reordered
-- via drag and drop or not.
-- 
-- /Since: 2.10/
notebookSetTabReorderable ::
    (B.CallStack.HasCallStack, MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) =>
    a
    -- ^ /@notebook@/: a t'GI.Gtk.Objects.Notebook.Notebook'
    -> b
    -- ^ /@child@/: a child t'GI.Gtk.Objects.Widget.Widget'
    -> Bool
    -- ^ /@reorderable@/: whether the tab is reorderable or not
    -> m ()
notebookSetTabReorderable notebook child reorderable = liftIO $ do
    notebook' <- unsafeManagedPtrCastPtr notebook
    child' <- unsafeManagedPtrCastPtr child
    let reorderable' = (fromIntegral . fromEnum) reorderable
    gtk_notebook_set_tab_reorderable notebook' child' reorderable'
    touchManagedPtr notebook
    touchManagedPtr child
    return ()

#if defined(ENABLE_OVERLOADING)
data NotebookSetTabReorderableMethodInfo
instance (signature ~ (b -> Bool -> m ()), MonadIO m, IsNotebook a, Gtk.Widget.IsWidget b) => O.MethodInfo NotebookSetTabReorderableMethodInfo a signature where
    overloadedMethod = notebookSetTabReorderable

#endif

